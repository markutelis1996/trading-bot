#!/usr/bin/env python3
"""Position watchdog — detects between-routine position changes.

Compares current Alpaca positions to a saved snapshot. If a ticker disappears
or its qty drops (trailing stop fired, manual sell, etc.), sends an email
alert via SMTP and updates the snapshot. Runs every 15 minutes during US
market hours via launchd.

Why this exists: trailing stops fire intraday on the broker side, but the
trade-log only updates on the next routine run (every 3+ hours). A user
checking Alpaca app sees state that the local system doesn't know about
yet — leading to confusion and missed reconciliation.

Usage: python3 tools/position_watchdog.py
Exit codes: 0 = no change, 1 = change detected and alert sent, 2 = error.
"""

import json
import os
import smtplib
import socket
import subprocess
import sys
from datetime import datetime
from email.mime.text import MIMEText
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
STATE_FILE = ROOT / ".tmp" / "watchdog_positions.json"
ENV_FILE = ROOT / ".env"


def load_env():
    if not ENV_FILE.exists():
        return
    for line in ENV_FILE.read_text().splitlines():
        line = line.strip()
        if "=" in line and not line.startswith("#"):
            k, v = line.split("=", 1)
            os.environ.setdefault(k, v.strip().strip('"'))


def fetch_positions():
    """Returns a dict {symbol: {qty: float, avg_entry: float, current: float}}."""
    proc = subprocess.run(
        ["bash", str(ROOT / "scripts" / "alpaca.sh"), "positions"],
        capture_output=True, text=True, timeout=30,
    )
    if proc.returncode != 0:
        raise RuntimeError(f"alpaca.sh positions failed: {proc.stderr}")
    data = json.loads(proc.stdout)
    return {
        p["symbol"]: {
            "qty": float(p["qty"]),
            "avg_entry": float(p["avg_entry_price"]),
            "current": float(p["current_price"]),
        }
        for p in data
    }


def load_state():
    if not STATE_FILE.exists():
        return None
    try:
        return json.loads(STATE_FILE.read_text())
    except (json.JSONDecodeError, OSError):
        return None


def save_state(positions):
    STATE_FILE.parent.mkdir(parents=True, exist_ok=True)
    STATE_FILE.write_text(json.dumps({
        "ts": datetime.now().isoformat(),
        "positions": positions,
    }, indent=2))


def diff_positions(prev, curr):
    """Returns list of change descriptions (empty if no change worth alerting)."""
    changes = []
    prev_pos = prev.get("positions", {}) if prev else {}

    for sym, p in prev_pos.items():
        if sym not in curr:
            realized = (p["current"] - p["avg_entry"]) * p["qty"]
            changes.append({
                "type": "EXITED",
                "symbol": sym,
                "qty_was": p["qty"],
                "avg_entry": p["avg_entry"],
                "last_price": p["current"],
                "est_realized": realized,
            })
        elif curr[sym]["qty"] < p["qty"] - 0.0001:
            qty_diff = p["qty"] - curr[sym]["qty"]
            realized = (curr[sym]["current"] - p["avg_entry"]) * qty_diff
            changes.append({
                "type": "PARTIAL_REDUCED",
                "symbol": sym,
                "qty_was": p["qty"],
                "qty_now": curr[sym]["qty"],
                "qty_diff": qty_diff,
                "avg_entry": p["avg_entry"],
                "last_price": curr[sym]["current"],
                "est_realized": realized,
            })

    return changes


def send_alert(changes):
    smtp_email = os.environ.get("SMTP_EMAIL", "")
    smtp_password = os.environ.get("SMTP_PASSWORD", "")
    recipient = os.environ.get("RECIPIENT_EMAIL", "markutelis1996@gmail.com")
    if not smtp_email or not smtp_password:
        print("SMTP creds missing — cannot alert", file=sys.stderr)
        return False

    lines = [f"Position change detected at {datetime.now().isoformat()}", ""]
    for c in changes:
        if c["type"] == "EXITED":
            lines.append(
                f"❌ {c['symbol']} EXITED — was {c['qty_was']:.4f} sh @ ${c['avg_entry']:.2f}, "
                f"last ${c['last_price']:.2f} → estimated realized ${c['est_realized']:+.2f}"
            )
        else:
            lines.append(
                f"⚠️ {c['symbol']} REDUCED — {c['qty_was']:.4f} → {c['qty_now']:.4f} "
                f"(-{c['qty_diff']:.4f}); est realized on diff ${c['est_realized']:+.2f}"
            )
    lines += ["", "Run a reconciliation (mark in trade-log.md) before next routine.",
              f"Host: {socket.gethostname()}"]
    body = "\n".join(lines)

    msg = MIMEText(body, "plain")
    msg["From"] = smtp_email
    msg["To"] = recipient
    msg["Subject"] = f"⚠️ Trading bot: {len(changes)} position change(s) detected"

    try:
        with smtplib.SMTP_SSL("smtp.gmail.com", 465, timeout=30) as s:
            s.login(smtp_email, smtp_password)
            s.send_message(msg)
        print(f"Alert sent to {recipient} for {len(changes)} change(s)")
        return True
    except Exception as e:
        print(f"Alert send failed: {e}", file=sys.stderr)
        return False


def main():
    load_env()
    try:
        curr = fetch_positions()
    except Exception as e:
        print(f"Watchdog fetch error: {e}", file=sys.stderr)
        sys.exit(2)

    prev = load_state()
    if prev is None:
        save_state(curr)
        print(f"Initialized snapshot with {len(curr)} positions")
        sys.exit(0)

    changes = diff_positions(prev, curr)
    if not changes:
        save_state(curr)
        sys.exit(0)

    print(f"DETECTED {len(changes)} change(s):")
    for c in changes:
        print(f"  {c}")
    send_alert(changes)
    save_state(curr)
    sys.exit(1)


if __name__ == "__main__":
    main()
