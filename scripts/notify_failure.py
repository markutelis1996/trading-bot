#!/usr/bin/env python3
"""Send an email alert when a trading-bot routine fails 3x in a row.

Called by run-routine.sh when CLAUDE_OK=0.

Usage: notify_failure.py <routine-name> <log-file-path>
"""

import os
import sys
import smtplib
import socket
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from datetime import datetime

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Load .env
env_path = os.path.join(ROOT, '.env')
if os.path.exists(env_path):
    with open(env_path) as f:
        for line in f:
            line = line.strip()
            if '=' in line and not line.startswith('#'):
                k, v = line.split('=', 1)
                os.environ.setdefault(k, v.strip().strip('"'))

# Fallback to AI Evoliucija .env (where SMTP creds live)
fallback_env = '/Users/dziugas/Documents/AI Evoliucija/.env'
if os.path.exists(fallback_env):
    with open(fallback_env) as f:
        for line in f:
            line = line.strip()
            if '=' in line and not line.startswith('#'):
                k, v = line.split('=', 1)
                os.environ.setdefault(k, v.strip().strip('"'))

SMTP_EMAIL = os.environ.get('SMTP_EMAIL', '')
SMTP_PASSWORD = os.environ.get('SMTP_PASSWORD', '')
RECIPIENT = os.environ.get('RECIPIENT_EMAIL', 'markutelis1996@gmail.com')


def main():
    if len(sys.argv) < 3:
        print("usage: notify_failure.py <routine-name> <log-file>", file=sys.stderr)
        sys.exit(2)

    routine = sys.argv[1]
    log_path = sys.argv[2]

    if not SMTP_EMAIL or not SMTP_PASSWORD:
        print("SMTP credentials missing — cannot send notification", file=sys.stderr)
        sys.exit(1)

    log_tail = ""
    if os.path.exists(log_path):
        try:
            with open(log_path) as f:
                lines = f.readlines()
                log_tail = "".join(lines[-50:])
        except Exception as e:
            log_tail = f"(could not read log: {e})"

    subject = f"⚠️ Trading bot: {routine} FAILED 3x"
    body = f"""Trading bot routine failed.

Routine: {routine}
Host: {socket.gethostname()}
Time: {datetime.now().isoformat()}
Log: {log_path}

--- Last 50 lines of log ---
{log_tail}

— Mac launchd
"""

    msg = MIMEMultipart()
    msg['From'] = SMTP_EMAIL
    msg['To'] = RECIPIENT
    msg['Subject'] = subject
    msg.attach(MIMEText(body, 'plain'))

    try:
        with smtplib.SMTP_SSL('smtp.gmail.com', 465, timeout=30) as s:
            s.login(SMTP_EMAIL, SMTP_PASSWORD)
            s.send_message(msg)
        print(f"Notification sent to {RECIPIENT}")
    except Exception as e:
        print(f"Failed to send notification: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == '__main__':
    main()
