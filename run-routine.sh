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

# --- Stale-instance protection -------------------------------------------------
# Kill any orphaned run-routine.sh / claude processes from this routine that
# survived a previous run (e.g. Mac slept mid-execution and the API call
# never resumed cleanly). PID file is used as a soft lock.
LOCKFILE="$ROOT/.tmp/$ROUTINE.lock"

cleanup_lock() {
  rm -f "$LOCKFILE"
}

# If a previous run left a lock, check whether that PID is still alive.
if [[ -f "$LOCKFILE" ]]; then
  OLD_PID="$(cat "$LOCKFILE" 2>/dev/null || echo "")"
  if [[ -n "$OLD_PID" ]] && kill -0 "$OLD_PID" 2>/dev/null; then
    AGE_SEC=$(( $(date +%s) - $(stat -f %m "$LOCKFILE" 2>/dev/null || echo 0) ))
    # If older than 20 minutes, assume hung — kill the whole process group.
    if [[ $AGE_SEC -gt 1200 ]]; then
      log "Killing stale $ROUTINE pid=$OLD_PID (age=${AGE_SEC}s)"
      pkill -9 -P "$OLD_PID" 2>/dev/null || true
      kill -9 "$OLD_PID" 2>/dev/null || true
      cleanup_lock
    else
      log "Previous $ROUTINE still running (pid=$OLD_PID, age=${AGE_SEC}s) — skipping this fire"
      exit 0
    fi
  else
    cleanup_lock
  fi
fi

echo $$ > "$LOCKFILE"
trap cleanup_lock EXIT INT TERM

# --- Network readiness probe ---------------------------------------------------
# Mac just woke up may not have DNS yet. Probe Anthropic + Alpaca,
# retry up to 12 * 5s = 60s.
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

# --- Timeout-wrapped claude call (no GNU coreutils dependency) -----------------
# Run claude in background, kill it after $1 seconds if not done.
run_claude_with_timeout() {
  local timeout_sec="$1"
  local out_file="$2"

  echo "$PROMPT" | claude --print --dangerously-skip-permissions \
    --model claude-sonnet-4-6 \
    --add-dir "$ROOT" >"$out_file" 2>&1 &
  local claude_pid=$!

  local elapsed=0
  while kill -0 "$claude_pid" 2>/dev/null; do
    if [[ $elapsed -ge $timeout_sec ]]; then
      log "claude exceeded ${timeout_sec}s timeout — killing pid=$claude_pid"
      kill -9 "$claude_pid" 2>/dev/null || true
      pkill -9 -P "$claude_pid" 2>/dev/null || true
      wait "$claude_pid" 2>/dev/null || true
      return 124
    fi
    sleep 5
    elapsed=$(( elapsed + 5 ))
  done
  wait "$claude_pid"
  return $?
}

# --- Main ---------------------------------------------------------------------
log "Running $ROUTINE routine (pid=$$)..."
wait_for_network || true

# Pull latest repo state (best-effort, do not fail run on git issues)
git pull origin main --rebase >/dev/null 2>&1 || log "git pull failed (non-fatal)"

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

# Hard ceiling: 15 minutes per claude attempt.
CLAUDE_TIMEOUT=900
TMPOUT="$ROOT/.tmp/claude-$ROUTINE-$$.out"

CLAUDE_OK=0
for attempt in 1 2 3; do
  log "claude attempt $attempt/3 (timeout=${CLAUDE_TIMEOUT}s)..."
  run_claude_with_timeout "$CLAUDE_TIMEOUT" "$TMPOUT"
  RC=$?
  cat "$TMPOUT" | tee -a "$LOGFILE"
  if [[ $RC -eq 0 ]] && ! grep -qE "API Error|ENOTFOUND|Unable to connect" "$TMPOUT"; then
    CLAUDE_OK=1
    break
  fi
  if [[ $RC -eq 124 ]]; then
    log "claude attempt $attempt timed out"
  else
    log "claude attempt $attempt failed (rc=$RC)"
  fi
  sleep $((attempt * 10))
done

rm -f "$TMPOUT"

if [[ $CLAUDE_OK -eq 0 ]]; then
  log "ERROR: $ROUTINE failed after 3 attempts"
  python3 "$ROOT/scripts/notify_failure.py" "$ROUTINE" "$LOGFILE" >>"$LOGFILE" 2>&1 || true
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

[[ $CLAUDE_OK -eq 1 ]] || exit 2
exit 0
