#!/usr/bin/env bash
# Pre-flight auth check — verify `claude --print` can authenticate before a
# routine spends 15+ minutes timing out 3x on 401 errors.
#
# Returns 0 on success, 1 on auth failure (silent), 2 on transient/unknown
# error. Routine wrapper should treat any nonzero as halt.

set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

# Run a 1-token ping with a 30s ceiling. claude --print emits the 401 error
# string to stdout/stderr when auth fails. macOS doesn't ship `timeout`, so
# we use a background+wait pattern instead.
TMP=$(mktemp -t auth_check.XXXXXX)
echo "ping" | claude --print --dangerously-skip-permissions \
    --model claude-haiku-4-5-20251001 >"$TMP" 2>&1 &
pid=$!
elapsed=0
while kill -0 "$pid" 2>/dev/null; do
    if [ "$elapsed" -ge 30 ]; then
        kill -9 "$pid" 2>/dev/null || true
        echo "TIMEOUT: claude --print took >30s" >&2
        cat "$TMP" >&2
        rm -f "$TMP"
        exit 2
    fi
    sleep 1
    elapsed=$((elapsed + 1))
done
wait "$pid" 2>/dev/null || true
out=$(cat "$TMP")
rm -f "$TMP"

if echo "$out" | grep -qE "401|Invalid authentication|Failed to authenticate|Not logged in|Please run /login"; then
    echo "AUTH_FAIL: claude credentials rejected (401)" >&2
    echo "$out" | head -5 >&2
    exit 1
fi

if echo "$out" | grep -qE "API Error|ENOTFOUND|Unable to connect|timeout"; then
    echo "TRANSIENT: claude API unreachable" >&2
    exit 2
fi

# Anything else with reasonable stdout is good enough.
if [ -n "$out" ]; then
    exit 0
fi

echo "UNKNOWN: empty response" >&2
exit 2
