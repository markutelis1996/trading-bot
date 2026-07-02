# Trading Strategy

## Mission
Beat the S&P 500 over the challenge window. Stocks + crypto - no options, ever.

## Capital & Constraints
- Starting capital: ~$10,000
- Platform: Alpaca (paper)
- Instruments: Stocks + Crypto (NO options ever)
- PDT limit applies to stocks: 3 day trades per 5 rolling days (account < $25k)
- Crypto has no PDT limit (24/7 market)

## ⚠ CRYPTO SLEEVE — SEPARATE, DO NOT TOUCH
Crypto is managed by a SEPARATE deterministic DCA sleeve (`tools/crypto_dca.py`,
launchd `lt.trading-bot.crypto-dca`, runs 3x/week Mon/Wed/Fri). It is DCA +
dip-buying, HODL ONLY, targeting ~$55k (50% BTC / 25% ETH / 15% SOL / 10% LINK).

The stock routines (pre-market, market-open, midday, daily-summary, weekly-review)
MUST treat every crypto position as UNTOUCHABLE:
- A crypto symbol is any symbol containing "/" (e.g. BTC/USD, ETH/USD, SOL/USD, LINK/USD).
- NEVER sell, close, stop-loss, cut, take-profit, tighten-stop, or reconcile-away crypto.
- In EVERY step that iterates `alpaca.sh positions`, FILTER OUT all "/"-symbols FIRST.
- The "-7% cut losers" rule, trailing stops, and partial-profit rules apply to STOCKS ONLY.
- Crypto drawdowns are EXPECTED and handled by the sleeve buying MORE, never selling.
Stock and crypto sleeves share the same cash but operate independently.

## Mode: LEARNING (paper only)
Aggressive cadence to gather statistically meaningful trade samples in 4 weeks.
BEFORE switching to live, REVERT to original conservative rules (commented below).

## Core Rules (LEARNING MODE)
1. NO OPTIONS - ever
2. 75-85% deployed
3. 6-8 positions at a time, max 15% each
4. 10% trailing stop on every position as a real GTC order — covering INTEGER qty only (Alpaca limitation; see rule 14)
5. Cut losers at -7% manually
6. Tighten trail: 7% at +15%, 5% at +20% — UNLESS 14-day ATR > 4% of price, then STAY at 7% (high-vol stocks like memory/AI semis whipsaw on 5%)
7. Never within 3% of current price; never move a stop down
8. Max 7 new trades per week (was 3 in conservative mode)
9. Follow sector momentum
10. Exit a sector after 2 consecutive failed trades
11. Bias to trade when valid setup exists (was patience > activity)
12. **Sector concentration cap: max 60%** of portfolio in any single sector. New entry that pushes sector > 60% → SKIP. (Prevents single-sector selloff from wiping the book.)
13. **Partial profit-taking** on big winners:
    - At +25% from entry: sell 1/3 of position (lock partial gain)
    - At +40% from entry: sell another 1/3
    - Final 1/3 = runner with 5%/7% trail per rule 6
    - Trigger only on STOCKS, not crypto (crypto vol too high — rules 1-5 of crypto block apply instead)
14. **Integer-qty discipline**: When sizing position by notional, round share count DOWN to integer. Reason: Alpaca trailing-stop orders require integer qty, so any fractional remainder sits unprotected. Plan for whole-share lots only.
15. **Broker reconciliation every session**: Before trading or analysis, run `bash scripts/alpaca.sh positions` and compare to last `trade-log.md` "Open Positions" snapshot. If qty differs → log RECONCILED entry showing realized P&L before proceeding.
16. **Quarter-end blackout (5 trading days)**: No new entries in the last 5 trading days of each quarter (approx Mar 25–31, Jun 25–30, Sep 25–30, Dec 25–31). Q-end fund rebalancing creates forced selling that overwhelms thesis catalysts even on strong beats. Hold existing positions; do not add. Confirmed by Jun 22–26 2026: MRVL and MU both stopped out in 1 day despite strong theses during Q2 Q-end window. Rule added: Week ending 2026-06-27.

## Original Conservative Rules (use when going live)
- 5-6 positions at a time, max 20% each
- Max 3 new trades per week
- Patience > activity

## Crypto Rules (LEARNING MODE - paper)
1. Allowed pairs: BTC/USD, ETH/USD, SOL/USD, AVAX/USD, LINK/USD, plus 1-2 momentum picks per week
2. Position size: 10% per crypto (smaller than stocks due to volatility)
3. Trailing stop: 15% (wider than stocks due to volatility)
4. Max 3 crypto positions concurrently
5. Total crypto allocation cap: 30% of portfolio
6. Combined cap: stocks (max 6 positions @ 15%) + crypto (max 3 @ 10%) ≤ 100% deployed
7. Crypto research signals:
   - 20/50 day MA crossover
   - RSI <30 (oversold) for entries, RSI >70 (overbought) for exits
   - On-chain whale activity (search "Bitcoin whale alerts last 7 days")
   - Fundamental catalysts (ETF flows, regulation, halvings, hard forks)
8. NO crypto copy-trading from politicians (no disclosure framework exists)
9. Crypto can trade weekends (routines still only run M-F, but positions held through weekend)

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
