# Trading Bot - Opus 4.7 + Claude Code Routines

Fully autonomous AI trading agent. Five cron jobs fire every weekday, each spinning up a fresh Claude Code cloud container that clones this repo, reads memory, pulls live account state, decides, places real orders, writes memory, commits everything back to Git, and sends a Telegram message.

No Python bot process. Claude is the bot. Each scheduled run is a fresh LLM invocation reading a well-defined prompt.

Built from Nate Herk's "Opus 4.7 Trading Bot - Setup Guide" 1:1.

## Repository Layout

```
trading-bot/
├── CLAUDE.md              # Agent rulebook (auto-loaded every session)
├── README.md              # This file
├── env.template           # Template for local .env file
├── .gitignore             # Must exclude .env
├── .claude/
│   └── commands/          # Ad-hoc slash commands for local use
│       ├── portfolio.md
│       ├── trade.md
│       ├── pre-market.md
│       ├── market-open.md
│       ├── midday.md
│       ├── daily-summary.md
│       └── weekly-review.md
├── routines/              # Cloud routine prompts (the prod path)
│   ├── README.md
│   ├── pre-market.md
│   ├── market-open.md
│   ├── midday.md
│   ├── daily-summary.md
│   └── weekly-review.md
├── scripts/               # API wrappers (the only way to touch the outside world)
│   ├── alpaca.sh
│   ├── perplexity.sh
│   └── telegram.sh
└── memory/                # Agent's persistent state (committed to main)
    ├── TRADING-STRATEGY.md
    ├── TRADE-LOG.md
    ├── RESEARCH-LOG.md
    ├── WEEKLY-REVIEW.md
    └── PROJECT-CONTEXT.md
```

## Two Execution Modes

- **Local:** `/pre-market` etc. inside Claude Code. Credentials from `.env`. For testing.
- **Cloud (production):** Routines fire on cron. Credentials from routine env vars. No `.env` file.

## Quickstart

1. Fork or clone this repo.
2. Sign up for Alpaca (paper to start), Perplexity, Telegram.
3. Create a Telegram chat channel for bot notifications. Note workspace ID + channel ID.
4. Local smoke test: `cp env.template .env`, fill credentials, open repo in Claude Code, run `/portfolio`.
5. Install Claude GitHub App on this repo.
6. Create five cloud routines per `routines/*.md` with schedules from `routines/README.md`.
7. In each routine env, add credentials from Section 7 of the guide (below) and toggle ON "Allow unrestricted branch pushes".
8. Hit Run Now on each routine and watch logs.

## Five Cron Schedules (America/Chicago)

| Routine         | Cron         | Notes                              |
|-----------------|--------------|------------------------------------|
| pre-market      | 0 6 * * 1-5  | 6:00 AM weekdays                   |
| market-open     | 30 8 * * 1-5 | 8:30 AM (NYSE open in CT)          |
| midday          | 0 12 * * 1-5 | Noon weekdays                      |
| daily-summary   | 0 15 * * 1-5 | 3:00 PM (NYSE close in CT)         |
| weekly-review   | 0 16 * * 5   | 4:00 PM Fridays only               |

## Required Environment Variables (set on routine, NOT in .env for cloud)

```
ALPACA_API_KEY
ALPACA_SECRET_KEY
ALPACA_ENDPOINT          (optional; defaults to live trading URL)
ALPACA_DATA_ENDPOINT     (optional; defaults to data URL)
PERPLEXITY_API_KEY
PERPLEXITY_MODEL         (optional; defaults to 'sonar')
TELEGRAM_BOT_TOKEN
TELEGRAM_CHAT_ID
```

## Notification Philosophy

- Pre-market: silent unless urgent.
- Market-open: only if a trade was placed.
- Midday: only if action was taken.
- Daily-summary: always, one message, under 15 lines.
- Weekly-review: always, one message, headline numbers.

## Hard Rules (see memory/TRADING-STRATEGY.md)

Stocks only. Max 5-6 positions, max 20% each. Max 3 new trades/week. 10% trailing stops GTC. Cut -7% manually. Tighten 7% at +15%, 5% at +20%. Never within 3% of current. Never move a stop down.
