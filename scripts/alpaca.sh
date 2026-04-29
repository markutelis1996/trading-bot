#!/usr/bin/env bash
# Alpaca wrapper — proxies through Vercel to bypass Anthropic cloud IP block.
# Usage: bash scripts/alpaca.sh <subcommand> [args...]

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

: "${BOT_AUTH_TOKEN:?BOT_AUTH_TOKEN not set in environment}"

PROXY="${ALPACA_PROXY:-https://trading-bot-two-pi.vercel.app/api/alpaca}"
AUTH_HDR="x-bot-auth: $BOT_AUTH_TOKEN"

cmd="${1:-}"
shift || true

encode() { python3 -c "import urllib.parse,sys; print(urllib.parse.quote(sys.argv[1], safe=''))" "$1"; }

case "$cmd" in
  account)
    curl -fsS -H "$AUTH_HDR" "$PROXY?path=/v2/account"
    ;;
  positions)
    curl -fsS -H "$AUTH_HDR" "$PROXY?path=/v2/positions"
    ;;
  position)
    sym="${1:?usage: position SYM}"
    curl -fsS -H "$AUTH_HDR" "$PROXY?path=/v2/positions/$(encode "$sym")"
    ;;
  quote)
    sym="${1:?usage: quote SYM}"
    # Detect crypto (contains /) vs stock
    if [[ "$sym" == *"/"* ]]; then
      curl -fsS -H "$AUTH_HDR" "$PROXY?data=1&path=/v1beta3/crypto/us/latest/quotes?symbols=$(encode "$sym")"
    else
      curl -fsS -H "$AUTH_HDR" "$PROXY?data=1&path=/v2/stocks/$sym/quotes/latest?feed=iex"
    fi
    ;;
  orders)
    status="${1:-open}"
    curl -fsS -H "$AUTH_HDR" "$PROXY?path=/v2/orders?status=$status"
    ;;
  order)
    body="${1:?usage: order '<json>'}"
    curl -fsS -H "$AUTH_HDR" -H "Content-Type: application/json" \
      -X POST -d "$body" "$PROXY?path=/v2/orders"
    ;;
  cancel)
    oid="${1:?usage: cancel ORDER_ID}"
    curl -fsS -H "$AUTH_HDR" -X DELETE "$PROXY?path=/v2/orders/$oid"
    ;;
  cancel-all)
    curl -fsS -H "$AUTH_HDR" -X DELETE "$PROXY?path=/v2/orders"
    ;;
  close)
    sym="${1:?usage: close SYM}"
    curl -fsS -H "$AUTH_HDR" -X DELETE "$PROXY?path=/v2/positions/$(encode "$sym")"
    ;;
  close-all)
    curl -fsS -H "$AUTH_HDR" -X DELETE "$PROXY?path=/v2/positions"
    ;;
  *)
    echo "Usage: bash scripts/alpaca.sh <account|positions|position|quote|orders|order|cancel|cancel-all|close|close-all> [args]" >&2
    exit 1
    ;;
esac
echo
