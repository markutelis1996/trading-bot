# Trading Strategy

## Mission
Beat the S&P 500 over the challenge window. Stocks only - no options, ever.

## Capital & Constraints
- Starting capital: ~$10,000
- Platform: Alpaca
- Instruments: Stocks ONLY
- PDT limit: 3 day trades per 5 rolling days (account < $25k)

## Mode: LEARNING (paper only)
Aggressive cadence to gather statistically meaningful trade samples in 4 weeks.
BEFORE switching to live, REVERT to original conservative rules (commented below).

## Core Rules (LEARNING MODE)
1. NO OPTIONS - ever
2. 75-85% deployed
3. 6-8 positions at a time, max 15% each
4. 10% trailing stop on every position as a real GTC order
5. Cut losers at -7% manually
6. Tighten trail: 7% at +15%, 5% at +20%
7. Never within 3% of current price; never move a stop down
8. Max 7 new trades per week (was 3 in conservative mode)
9. Follow sector momentum
10. Exit a sector after 2 consecutive failed trades
11. Bias to trade when valid setup exists (was patience > activity)

## Original Conservative Rules (use when going live)
- 5-6 positions at a time, max 20% each
- Max 3 new trades per week
- Patience > activity

## Entry Checklist
- Specific catalyst?
- Sector in momentum?
- Stop level (7-10% below entry)
- Target (min 2:1 R:R)

## Catalyst Sources (in priority order)
1. Earnings before market open (today/this week)
2. FDA approvals, M&A, major contracts
3. Sector momentum + macro tailwind
4. Politician buys (Capitol Trades) - WHITELIST ONLY: Pelosi, McCaul,
   Crenshaw, Tuberville, Khanna, Gottheimer, Green, Mast. LEARNING MODE
   thresholds: min $25k trade size; 1 whitelist politician + sector momentum
   = primary catalyst eligible; 2+ whitelist politicians = strong signal.
   30-45 day disclosure lag, so use for swing setups not day trades. Update
   list quarterly based on YTD returns vs S&P. Conservative mode (live):
   min $50k, require 2+ for primary.
5. Insider buying / unusual options flow (when MCP added)
