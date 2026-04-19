# Cloud Routines

Paste each `*.md` prompt verbatim into its Claude Code cloud routine. Do not paraphrase. The env-var check block and commit-and-push step are load-bearing.

## Schedule (America/Chicago)

| Routine        | Cron         | Time                   | File                |
|----------------|--------------|------------------------|---------------------|
| pre-market     | 0 6 * * 1-5  | 6:00 AM weekdays       | pre-market.md       |
| market-open    | 30 8 * * 1-5 | 8:30 AM weekdays       | market-open.md      |
| midday         | 0 12 * * 1-5 | Noon weekdays          | midday.md           |
| daily-summary  | 0 15 * * 1-5 | 3:00 PM weekdays       | daily-summary.md    |
| weekly-review  | 0 16 * * 5   | 4:00 PM Fridays only   | weekly-review.md    |

## Setup Checklist (per routine)

1. Claude Code cloud → Routines → New Routine.
2. Name the routine (e.g. "Trading bot pre-market").
3. Select this repo. Branch: main.
4. Add all environment variables (see `../env.template`).
5. Toggle ON "Allow unrestricted branch pushes".
6. Set the cron + timezone (America/Chicago).
7. Paste the corresponding `*.md` file's code block VERBATIM into the prompt field.
8. Save. Click "Run now" to test. Don't wait until tomorrow to find out it's broken.

## Pre-requisites (one-time, before any routine)

- Install the Claude GitHub App on this repo (least-privilege: only this repo).
- Ensure Alpaca, Perplexity, ClickUp credentials are valid.
- Ensure memory files have Day 0 baseline seeded (see memory/TRADE-LOG.md).

## Failure Mode #1

If a routine's memory changes aren't persisting across runs: check "Allow unrestricted branch pushes" is enabled. Without it, `git push origin main` silently fails via a proxy error. This is the number-one reason first-time setups break.
