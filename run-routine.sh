#!/usr/bin/env bash
# Runs a trading bot routine via Claude Code CLI on this Mac.
# Usage: run-routine.sh <pre-market|market-open|midday|daily-summary|weekly-review>

set -euo pipefail

ROUTINE="${1:?usage: run-routine.sh <routine-name>}"
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

export PATH="/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Source env
set -a
source "$ROOT/.env"
set +a

# Pull latest repo state
git pull origin main --rebase >/dev/null 2>&1 || true

# Prompt file per routine
PROMPT_FILE="$ROOT/routines/$ROUTINE.md"
if [[ ! -f "$PROMPT_FILE" ]]; then
  echo "No prompt file: $PROMPT_FILE" >&2
  exit 1
fi

# Extract the fenced code block (prompt body) from the markdown
PROMPT="$(awk '/^```$/{p=0} p; /^```/{p=1}' "$PROMPT_FILE")"

if [[ -z "$PROMPT" ]]; then
  PROMPT="$(cat "$PROMPT_FILE")"
fi

LOGFILE="$ROOT/.tmp/run-$ROUTINE-$(date +%Y%m%d-%H%M%S).log"
mkdir -p "$ROOT/.tmp"

echo "[$(date)] Running $ROUTINE routine..." | tee -a "$LOGFILE"

claude --print --dangerously-skip-permissions --model claude-sonnet-4-6 \
  --add-dir "$ROOT" \
  "$PROMPT" 2>&1 | tee -a "$LOGFILE"

# Safety: commit and push any unpushed memory changes
cd "$ROOT"
git add memory/ >/dev/null 2>&1 || true
if ! git diff --cached --quiet; then
  git commit -m "$ROUTINE $(date +%Y-%m-%d) [local cron]" >/dev/null 2>&1 || true
  git push origin main >/dev/null 2>&1 || true
fi

echo "[$(date)] $ROUTINE routine completed. Log: $LOGFILE" | tee -a "$LOGFILE"
