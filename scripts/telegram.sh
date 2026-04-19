#!/usr/bin/env bash
# Telegram notification wrapper. Posts to a Telegram chat via bot.
# Usage: bash scripts/telegram.sh "<message>"
# If credentials are unset, appends to a local fallback file.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"
FALLBACK="$ROOT/DAILY-SUMMARY.md"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

if [[ $# -gt 0 ]]; then
  msg="$*"
else
  msg="$(cat)"
fi

if [[ -z "${msg// /}" ]]; then
  echo "usage: bash scripts/telegram.sh \"<message>\"" >&2
  exit 1
fi

stamp="$(date '+%Y-%m-%d %H:%M %Z')"

if [[ -z "${TELEGRAM_BOT_TOKEN:-}" || -z "${TELEGRAM_CHAT_ID:-}" ]]; then
  printf "\n---\n## %s (fallback - Telegram not configured)\n%s\n" "$stamp" "$msg" >> "$FALLBACK"
  echo "[telegram fallback] appended to DAILY-SUMMARY.md"
  echo "$msg"
  exit 0
fi

# Telegram has a 4096 char limit per message. Truncate if needed.
if [[ ${#msg} -gt 4000 ]]; then
  msg="${msg:0:3990}...[truncated]"
fi

# Use Python to build JSON safely (handles escapes, newlines, special chars).
payload="$(python3 -c "
import json, sys, os
print(json.dumps({
    'chat_id': os.environ['TELEGRAM_CHAT_ID'],
    'text': sys.argv[1],
    'parse_mode': 'Markdown',
    'disable_web_page_preview': True,
}))
" "$msg")"

# Try Markdown first; if Telegram rejects due to bad formatting, retry as plain text.
response="$(curl -fsS -X POST \
  "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
  -H "Content-Type: application/json" \
  -d "$payload" 2>&1)" || {
  # Fallback: strip Markdown, retry as plain text
  plain_payload="$(python3 -c "
import json, sys, os
print(json.dumps({
    'chat_id': os.environ['TELEGRAM_CHAT_ID'],
    'text': sys.argv[1],
    'disable_web_page_preview': True,
}))
" "$msg")"
  curl -fsS -X POST \
    "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
    -H "Content-Type: application/json" \
    -d "$plain_payload"
  echo
  exit 0
}

echo "$response"
echo
