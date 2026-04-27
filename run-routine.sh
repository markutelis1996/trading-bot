#!/usr/bin/env bash
# Runs a trading bot routine via Claude Code CLI on this Mac.
# Usage: run-routine.sh <pre-market|market-open|midday|daily-summary|weekly-review>

set -uo pipefail

ROUTINE="${1:?usage: run-routine.sh <routine-name>}"
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

export PATH="/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Source env
set -a
# shellcheck disable=SC1091
source "$ROOT/.env"
set +a

LOGFILE="$ROOT/.tmp/run-$ROUTINE-$(date +%Y%m%d-%H%M%S).log"
mkdir -p "$ROOT/.tmp"

log() { echo "[$(date)] $*" | tee -a "$LOGFILE"; }

# Wait for network — Mac just woke up may not have DNS yet.
# Probe both Anthropic and Alpaca with a short timeout, retry up to 12 * 5s = 60s.
wait_for_network() {
  for i in $(seq 1 12); do
    if curl -sS -o /dev/null -m 5 https://api.anthropic.com/ 2>/dev/null \
       && curl -sS -o /dev/null -m 5 https://paper-api.alpaca.markets/v2/clock 2>/dev/null; then
      log "Network ready (attempt $i)"
      return 0
    fi
    log "Network not ready (attempt $i/12), sleeping 5s..."
    sleep 5
  done
  log "WARNING: network probe never succeeded — proceeding anyway"
  return 1
}

log "Running $ROUTINE routine..."
wait_for_network || true

# Pull latest repo state (best-effort)
git pull origin main --rebase >/dev/null 2>&1 || log "git pull failed (non-fatal)"

# Prompt file per routine
PROMPT_FILE="$ROOT/routines/$ROUTINE.md"
if [[ ! -f "$PROMPT_FILE" ]]; then
  log "No prompt file: $PROMPT_FILE"
  exit 1
fi

# Extract fenced code block from markdown. Fallback to whole file.
PROMPT="$(awk '/^```$/{p=0} p; /^```/{p=1}' "$PROMPT_FILE")"
if [[ -z "$PROMPT" ]]; then
  PROMPT="$(cat "$PROMPT_FILE")"
fi

# Run claude with up to 3 retries on network/transient errors.
run_claude() {
  echo "$PROMPT" | claude --print --dangerously-skip-permissions \
    --model claude-sonnet-4-6 \
    --add-dir "$ROOT" 2>&1
}

CLAUDE_OK=0
for attempt in 1 2 3; do
  log "claude attempt $attempt/3..."
  OUTPUT="$(run_claude)"
  RC=$?
  echo "$OUTPUT" | tee -a "$LOGFILE"
  if [[ $RC -eq 0 ]] && ! echo "$OUTPUT" | grep -qE "API Error|ENOTFOUND|Unable to connect"; then
    CLAUDE_OK=1
    break
  fi
  log "claude failed (rc=$RC), backing off ${attempt}0s before retry..."
  sleep $((attempt * 10))
done

if [[ $CLAUDE_OK -eq 0 ]]; then
  log "ERROR: $ROUTINE failed after 3 attempts"
fi

log "$ROUTINE routine claude session ended."

# Safety: commit and push any unpushed memory changes
cd "$ROOT"
git add memory/ >/dev/null 2>&1 || true
if ! git diff --cached --quiet; then
  git commit -m "$ROUTINE $(date +%Y-%m-%d) [local cron]" >/dev/null 2>&1 || true
  git push origin main >/dev/null 2>&1 || log "git push failed (non-fatal)"
fi

log "$ROUTINE completed. Log: $LOGFILE"

# Exit non-zero if claude itself never succeeded — surfaces in launchctl list.
[[ $CLAUDE_OK -eq 1 ]] || exit 2
exit 0
