#!/usr/bin/env bash
# Research wrapper using Tavily AI Search API.
# Usage: bash scripts/tavily.sh "<query>"
# Exits with code 3 if TAVILY_API_KEY is unset so callers can fall back to WebSearch.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

query="${1:-}"
if [[ -z "$query" ]]; then
  echo "usage: bash scripts/tavily.sh \"<query>\"" >&2
  exit 1
fi

if [[ -z "${TAVILY_API_KEY:-}" ]]; then
  echo "WARNING: TAVILY_API_KEY not set. Fall back to WebSearch." >&2
  exit 3
fi

payload="$(python3 -c "
import json, sys
print(json.dumps({
    'api_key': sys.argv[1],
    'query': sys.argv[2],
    'search_depth': 'advanced',
    'include_answer': True,
    'max_results': 8,
    'include_raw_content': False,
}))
" "$TAVILY_API_KEY" "$query")"

curl -fsS https://api.tavily.com/search \
  -H "Content-Type: application/json" \
  -d "$payload"
echo
