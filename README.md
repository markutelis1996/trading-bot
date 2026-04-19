# Bull — 24/7 AI Trading Agent

Autonomous trading agent built on Claude Code routines + Alpaca API. Runs 5 scheduled routines Monday-Friday, researches the market, places trades, manages stops, and sends daily/weekly summaries.

## Status
- **Mode:** Paper trading (Alpaca paper account)
- **Starting balance:** $100,000 paper
- **Goal:** Beat S&P 500 long-term

## Routines
| Routine | Schedule | Purpose |
|---------|----------|---------|
| pre-market | 6:00 ET Mon-Fri | Research overnight catalysts, draft trade ideas |
| market-open | 9:30 ET Mon-Fri | Execute planned trades, set trailing stops |
| midday | 12:00 ET Mon-Fri | Cut -7% losers, tighten winners |
| market-close | 15:55 ET Mon-Fri | End-of-day summary + trade log |
| weekly-review | 16:00 ET Fri | Performance review, strategy critique |

## Folder Structure
```
/memory/         - persistent context (read first, update last)
/routines/       - prompts for each cron-triggered run
/scripts/        - helper scripts (optional)
CLAUDE.md        - core rules and guardrails
README.md        - this file
```

## Setup
1. Clone this repo
2. Create Claude Cloud Environment `trading` with env vars:
   - `ALPACA_KEY`, `ALPACA_SECRET`, `ALPACA_BASE_URL`
   - `PERPLEXITY_API_KEY`
   - `CLICKUP_TOKEN`, `CLICKUP_LIST_ID`
3. Create 5 remote routines in Claude Desktop, paste prompts from `/routines/`
4. Enable "Allow unrestricted branch pushes" in each routine's permissions
5. Run each routine manually once to verify

## Moving to Live
Only after 2+ weeks of clean paper trading:
1. Update `ALPACA_BASE_URL` to `https://api.alpaca.markets`
2. Swap to live Alpaca keys
3. Update CLAUDE.md rule #1
4. Start with small capital ($500-1000) before scaling
