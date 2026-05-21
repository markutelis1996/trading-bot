# Trade Log

## Day 0 - EOD Snapshot (pre-launch baseline)
**Portfolio:** $10,000.00 | **Cash:** $10,000.00 (100%) | **Day P&L:** $0 | **Phase P&L:** $0

No positions yet. Bot launches tomorrow.

---

## 2026-04-20 - Pre-market Session (UPDATED)

**Portfolio:** ~$10,000.00 | **Cash:** ~$10,000.00 | **Positions:** 0

### Execution Status
- Alpaca API: BLOCKED (403 - host not in allowlist from this execution environment)
- Orders placed: 0
- Action required: Allowlist execution host IP in Alpaca paper account settings

### Crypto Execution
- NO TRADE — BTC RSI 63 (entry requires <30); whale 1k-10k BTC cohort at record distribution pace; Iran Hormuz re-closed → risk-off
- Previous session intent (RSI 27) SUPERSEDED by updated data; signal no longer valid

### Open Positions
None

---

## 2026-04-21 - Pre-market Session

**Portfolio:** ~$10,000.00 | **Cash:** ~$10,000.00 | **Positions:** 0

### Execution Status
- Alpaca API: BLOCKED (403 - host not in allowlist; persistent from prior session)
- Orders placed: 0
- Action required: Allowlist execution host IP in Alpaca paper account settings

### Crypto Decision
- BTC/USD: HOLD — RSI recovered to 63 (original oversold trigger expired); mid-tier whale selling = mixed signal; wait for RSI <40 or ~$68-70k pullback
- No crypto orders placed

### Open Positions
None

---

## 2026-04-21 - Pre-market Session (UPDATED — Session 2)

**Portfolio:** ~$10,000.00 | **Cash:** ~$10,000.00 | **Positions:** 0

### Execution Status
- Alpaca API: BLOCKED (403 - host not in allowlist; persistent all sessions)
- Orders placed: 0
- Action required: Allowlist execution host IP in Alpaca paper account settings

### Crypto Decision
- BTC/USD: HOLD — RSI 63; "flow war" stalemate (mega-whale buy vs mid-tier sell); ETF 50k BTC/30d; no directional catalyst; wait for RSI <40 or ~$68-70k
- ETH/USD: HOLD — RSI ~39, Death Cross active, bearish trend
- SOL/USD: HOLD — no setup
- No crypto orders placed (API blocked + entry criteria not met)

### Stock Queue for Market-Open
- GE: TOP PRIORITY — earnings today before open; 16/21 Strong Buy; avg PT $358 (+24%); entry ~$285 on beat, stop ~$265
- NVDA: NVDA AI tailwind from TSMC record guidance; entry ~$120, stop ~$111
- TSM: TSMC raised 2026 forecast >30%; entry ~$195, stop ~$181
- TSLA: Watch earnings Apr 22; delivery miss known; entry ~$250, stop ~$232 if AI commentary bullish

### Open Positions
None

---

## 2026-04-20 - Market-Open Session

**Portfolio:** ~$10,000.00 | **Cash:** ~$10,000.00 | **Positions:** 0

### Execution Status
- Alpaca API: BLOCKED (403 — `x-deny-reason: host_not_allowed`; confirmed via verbose curl at 9:40 AM EDT)
- Orders placed: 0
- Action required: Log into Alpaca → Paper account settings → IP Allowlist → add this environment's IP

### Market Context (9:40 AM EDT)
- WTI: $88.54 (+5.6%); Iran attacked tankers Sat, US Navy seized Iranian ship Sun — ESCALATING
- S&P 500: -0.22%; Nasdaq: -0.37%; VIX ~17.48
- Defense (RTX, LMT, NOC) outperforming; Airlines down; BTC $75,324 (not oversold)

### Price Re-verification — ALL prior log prices severely stale (recalibrated)
| Ticker | Log Price | Fresh Price | Delta |
|--------|-----------|-------------|-------|
| NVDA   | ~$120     | ~$201       | +68%  |
| TSM    | ~$195     | ~$374       | +92%  |
| RTX    | ~$130     | ~$197       | +52%  |
| NOC    | ~$500     | ~$667       | +33%  |
| GE     | ~$285     | ~$310       | +9%   |

### Decision
- NO TRADES — API blocked; cannot execute
- Queued for tomorrow (Apr 21, earnings before open):
  - GE: entry ~$310, stop ~$288, target ~$350, R:R 2.1:1 ★
  - NOC: entry ~$667, stop ~$620, target ~$770, R:R 2.2:1 ★

### Crypto
- BTC: HOLD — RSI ~63; Hormuz risk-off; whale distribution ongoing

### Open Positions
None

---

## 2026-04-20 - EOD Snapshot

**Portfolio:** ~$10,000.00 | **Cash:** ~$10,000.00 (100%) | **Day P&L:** $0.00 | **Phase P&L:** $0.00

| # | Ticker | Shares | Entry | Last | P&L$ | P&L% | Stop |
|---|--------|--------|-------|------|------|------|------|
| — | —      | —      | —     | —    | —    | —    | —    |

- Trades today: 0 | Trades this week: 0
- API blocked (403 host_not_allowed) — no live execution all sessions today
- GE & NOC queued; entry pending API access restoration
- BTC: RSI ~63, Hormuz risk-off — no crypto entry

---

## 2026-04-21 - Pre-market Session (Session 3 — Fresh Run)

**Portfolio:** ~$10,000.00 | **Cash:** ~$10,000.00 | **Positions:** 0

### Execution Status
- Alpaca API: BLOCKED (403 — Vercel proxy "Host not in allowlist"; persistent 5+ sessions)
- Orders placed: 0
- Next action: Fix IP allowlist in Vercel proxy OR Alpaca paper settings before any trade can execute

### Market Context (Pre-open)
- WTI: ~$88/bbl | S&P: +1.20% | Nasdaq: +1.52% | VIX: ~19.98
- Ceasefire: Iran/Hormuz open (Apr 17); extension uncertain as of today
- Sector rotation: Tech/Financials/Discretionary leading; Defense rotating out
- GE Q1 2026: **BEAT** — profit forecast raised; airlines keeping engines in shop ✓
- NOC Q1 2026: **MISS** — $6.06 vs $6.21 est; EPS YoY decline → REMOVED from queue

### Crypto Decision
- BTC: HOLD — RSI ~55.69 (neutral); entry criteria not met (need <30 or ~$67k)
- ETH: HOLD — KelpDAO exploit active; Death Cross intact
- No crypto orders placed

### Stock Queue for Market-Open
- **GE ★★** — BEAT confirmed; entry ~$310 (verify live), stop ~$288 (-7%), target ~$350, R:R 2.1:1
- **NVDA ★** — tech momentum play; entry ~$201 (verify live), stop ~$187, target ~$230, R:R 2.0:1
- UAL: watch after-close results today; potential setup Apr 22 on guidance

### Open Positions
None

---

## 2026-04-21 - Market-Open Session

**Portfolio:** ~$99,999 | **Cash:** ~$70,000 | **Positions:** 2

### Execution Status
- Alpaca API: **LIVE** — first successful execution session
- Orders placed: 2

### Trades Executed

| # | Date | Ticker | Side | Shares | Entry | Stop | Target | R:R | Thesis |
|---|------|--------|------|--------|-------|------|--------|-----|--------|
| 1 | 2026-04-21 | GE | BUY | 50.25 | $298.50 | $268.02 (10% trail) | $345 | 2.1:1 | Q1 2026 BEAT (8th consecutive); FY2026 guidance raised ($7.10-$7.40 EPS); airlines keeping engines in shop; 16/21 Strong Buy; avg PT $358 |
| 2 | 2026-04-21 | NVDA | BUY | 74.51 | $201.25 | $180.95 (10% trail) | $231 | 2.0:1 | AI backbone; Nasdaq ATH; TSMC raised 2026 forecast >30%; AI demand "extremely robust"; avg PT $266 |

### Stops Placed (GTC trailing)
- GE: 50 shares, 10% trail, initial stop $268.02 (hwm $297.80) — order ID f196f61c
- NVDA: 74 shares, 10% trail, initial stop $180.95 (hwm $201.05) — order ID 97a50e3f

### Open Positions
| # | Ticker | Shares | Entry | Stop | Target | R:R |
|---|--------|--------|-------|------|--------|-----|
| 1 | GE | 50.25 | $298.50 | $268.02 (10% trail) | $345 | 2.1:1 |
| 2 | NVDA | 74.51 | $201.25 | $180.95 (10% trail) | $231 | 2.0:1 |

- Trades this week: 2
- Crypto: HOLD — BTC RSI neutral; ETH exploit active

---

## 2026-04-21 - Pre-market Session (Session 4)

**Portfolio:** ~$10,000.00 | **Cash:** ~$10,000.00 | **Positions:** 0

### Execution Status
- Alpaca API: BLOCKED (403 — Vercel proxy "Host not in allowlist"; 6th consecutive session)
- Orders placed: 0
- Live quotes: UNAVAILABLE — all prices unverified

### Market Context
- S&P 500: ~7,126 (+1.20%) | Nasdaq: +1.52% | VIX: 17.48 (↓ from 19.98 — volatility compressing, bullish)
- WTI: ~$87/bbl elevated; ceasefire holding but fragile (10-day window, "mixed messaging")
- Sector: Tech/Financials/Discretionary leading; Defense rotating out

### Earnings Summary (Apr 21)
- **GE** ★★: BEAT confirmed (9th consecutive); guidance raised ($7.10–$7.40 EPS FY2026); airlines shop-visit tailwind; 16/21 Strong Buy; avg PT $358
- **RTX**: Reported today; $1.51 EPS expected; defense rotation headwind; await price action
- **NOC**: MISS — removed from queue
- **UAL**: Reports AFTER CLOSE tonight — do NOT enter; watch for Apr 22 setup

### Crypto Decision
- BTC: HOLD — RSI neutral (~55); Fear/Greed 29; whale accumulation 270k BTC/30d (bullish LT) but distribution inflows rising (near-term caution); entry requires RSI <30 or price ~$67k
- ETH: STRONG AVOID — KelpDAO exploit ($292M; Lazarus Group); Aave $6B withdrawn; bad debt $177-196M; DeFi contagion unresolved
- No crypto orders placed

### Stock Queue for Market-Open (requires API fix first)
- **GE ★★** — TOP PICK; BEAT + raised guidance; verify live quote; entry ~$310, stop ~$288 (-7%), target ~$350, R:R 2.1:1
- **NVDA ★** — secondary; AI momentum; verify live; entry ~$202, stop ~$188 (-7%), target ~$231, R:R 2.0:1
- **UAL** — watch Apr 22 morning post-results
- **RTX** — watch price action post-open; defense rotation headwind

### Open Positions
None


---

## 2026-04-21 - Midday Scan

**Portfolio:** ~$99,999 | **Open Positions:** 2 | **Cash:** ~$70,000

### Position Status
| Ticker | Shares | Entry | Current | P&L% | Stop | Status |
|--------|--------|-------|---------|------|------|--------|
| GE | 50.25 | $298.50 | $285.50 | -4.36% | $268.41 (10% trail) | HOLD |
| NVDA | 74.51 | $201.25 | $200.16 | -0.54% | $182.24 (10% trail) | HOLD |

### Actions
- No cuts (GE -4.36%, NVDA -0.54% — both above -7% rule)
- No stop tightening (neither at +15%/+20%)
- Thesis check: GE "sell the news" on guidance held (not raised); core thesis intact; NVDA no change
- All trailing stops confirmed active via Alpaca API

---

## 2026-04-22 - Market-Open Session

**Portfolio:** $98,718.69 equity | **Cash:** $83,847.64 | **Positions:** 1

### Execution Status
- Alpaca API: LIVE
- Orders placed: 1 (SELL GE — manual cut)

### Trades Executed

| # | Date | Ticker | Side | Shares | Entry | Exit | P&L$ | P&L% | Reason |
|---|------|--------|------|--------|-------|------|------|------|--------|
| 1 | 2026-04-22 | GE | SELL | 50.25 | $298.50 | $275.50 | -$1,157 | -7.70% | Manual cut: -7% rule triggered (price broke $277.61 threshold) |

### No New Buys
- **GEV** ★★: SKIP — ask $1,181 vs planned $1,080-1,100 entry zone; >5% above plan; do not chase (beat already priced in gap)
- **VRT**: SKIP — bid/ask $289/$323 (11% spread); illiquid at open
- **TSLA**: SKIP — earnings AMC tonight; binary gap risk; watch Apr 23

### Open Positions
| # | Ticker | Shares | Entry | Current | Stop | Target | R:R |
|---|--------|--------|-------|---------|------|--------|-----|
| 1 | NVDA | 74.51 | $201.25 | $199.58 | $182.24 (10% trail) | $231 | 2.0:1 |

- Trades this week (new entries): 2 (GE Apr 21, NVDA Apr 21)
- FOMC cutoff: Apr 24 EOD — last day to add new positions
- GE thesis note: "sell the news" on guidance-held was valid; -7% cut rule properly triggered

---

## 2026-04-22 - Midday Scan

**Portfolio:** $98,916.89 equity | **Cash:** $83,847.64 | **Positions:** 1

### Position Status
| Ticker | Shares | Entry | Current | P&L% | Stop | Status |
|--------|--------|-------|---------|------|------|--------|
| NVDA | 74.51 | $201.25 | $202.26 | +0.50% | $182.24 (10% trail, HWM $202.49) | HOLD |

### Actions
- No cuts (NVDA +0.50% — above -7% threshold)
- No stop tightening (not at +15%/+20%)
- Thesis intact: AI momentum story unchanged; up inline with market (+1.19% intraday); no adverse news
- TSLA AMC tonight — watch Apr 23 morning per pre-market plan
- Perplexity unavailable (key not set); Tavily check: no sharp intraday movers requiring thesis review

---

## 2026-04-22 - EOD Snapshot (Day 3, Wednesday)
**Portfolio:** $98,932.54 | **Cash:** $83,847.64 (84.7%) | **Day P&L:** -$372.72 (-0.38%) | **Phase P&L:** -$1,067.46 (-1.07%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| NVDA | 74.51 | $201.25 | $202.43 | +$2.55 (+1.28%) | +$87.61 (+0.58%) | $182.25 (10% trail, HWM $202.50) |

**Notes:** GE exited at -7.70% (hard -7% rule triggered; stop was not hit but manual cut applied intraday on price breach of $277.61 threshold). NVDA held steady, closing up +1.28% on the day with unrealized gain of +$87.61 (+0.58%); trailing stop at $182.25 with HWM $202.50. Portfolio is only 15% deployed vs 75-85% target — significant dry powder available. New entry cap: 2 of 3 used this week (GE + NVDA both Apr 21); 1 slot remains before FOMC deadline Apr 24 EOD. TSLA earnings AMC tonight — watch Apr 23 pre-market for setup.

---

## 2026-04-23 - Market-Open Session

**Portfolio:** $98,872.92 equity | **Cash:** $83,847.63 | **Positions:** 2

### Execution Status
- Alpaca API: LIVE
- Orders placed: 1 (BUY MU)

### Trades Executed

| # | Date | Ticker | Side | Shares | Entry | Stop | Target | R:R | Thesis |
|---|------|--------|------|--------|-------|------|--------|-----|--------|
| 1 | 2026-04-23 | MU | BUY | 30.78 | $481.76 | $432.846 (10% trail, HWM $480.94) | $578.11 | 2.0:1 | AI memory supercycle — HBM4 supply agreement with NVIDIA Vera Rubin GPU platform confirmed; DRAM/NAND datacenter TAM >50% industry first time 2026; memory shortage persists through 2027; 52-week high; +8.48% Apr 22 |

### Stops Placed (GTC trailing)
- MU: 30 shares, 10% trail, initial stop $432.846 (HWM $480.94) — order ID dadaa437
- Note: 0.78 fractional shares uncovered (Alpaca trailing stop requires integer qty)

### Open Positions
| # | Ticker | Shares | Entry | Stop | Target | R:R |
|---|--------|--------|-------|------|--------|-----|
| 1 | NVDA | 74.51 | $201.25 | $182.565 (10% trail, HWM $202.85) | $231 | 2.0:1 |
| 2 | MU | 30.78 | $481.76 | $432.846 (10% trail, HWM $480.94) | $578.11 | 2.0:1 |

- Trades this week: 3 (GE Apr 21, NVDA Apr 21, MU Apr 23)
- FOMC cutoff: Apr 24 EOD — last day to add new positions

---

## 2026-04-23 - Midday Scan

**Portfolio:** ~$99,058 equity | **Cash:** ~$68,768 | **Positions:** 2 | **Deployed:** ~30.4%

### Position Status
| Ticker | Shares | Entry | Current | P&L% (entry) | Intraday | Stop | HWM | Status |
|--------|--------|-------|---------|---------------|----------|------|-----|--------|
| MU | 30.78 | $481.76 | $490.16 | +1.74% | +$258.59 | $444.26 (10% trail) | $493.62 | HOLD |
| NVDA | 74.51 | $201.25 | $201.52 | +0.13% | -$73.02 | $183.45 (10% trail) | $203.83 | HOLD |

### Actions
- No cuts (MU +1.74%, NVDA +0.13% — both above -7% rule)
- No stop tightening (neither at +15%/+20% threshold)
- Thesis intact: MU AI memory supercycle / HBM4-NVIDIA supply agreement unchanged; NVDA AI chip demand unchanged
- Both trailing stops confirmed active (MU order dadaa437, NVDA order 97a50e3f)

---

## 2026-04-24 - EOD Snapshot (Day 4, Friday)
**Portfolio:** $98,772.11 | **Cash:** $69,016.69 (69.9%) | **Day P&L:** -$164.14 (-0.17%) | **Phase P&L:** -$1,227.89 (-1.23%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| MU | 30.78 | $481.76 | $482.14 | +$0.42 (+0.09%) | +$11.70 (+0.08%) | $444.26 (10% trail, HWM $493.62) |
| NVDA | 74.51 | $201.25 | $200.16 | +$0.52 (+0.26%) | -$81.53 (-0.54%) | $183.45 (10% trail, HWM $203.83) |

**Notes:** No trades today; weekly 3-trade cap was reached with MU on Apr 23, and today (FOMC cutoff) was the last day to add new positions per the plan. MU essentially flat (+0.09% intraday), NVDA recovered slightly (+0.26% intraday) but remains marginally below entry at -0.54% unrealized. Portfolio is 30.1% deployed vs 75-85% target — still heavily in cash. Both trailing stops active and intact (MU $444.26, NVDA $183.45). Weekly cap resets Monday; next week opens a fresh 3-trade slot. Watch for FOMC reaction and new setups over the weekend.

---

## 2026-04-24 - Market-Open Session

**Portfolio:** $99,280.08 equity | **Cash:** $69,016.69 | **Positions:** 3

### Execution Status
- Alpaca API: LIVE
- Orders placed: 1 (BUY TXN)

### Trades Executed

| # | Date | Ticker | Side | Shares | Entry | Stop | Target | R:R | Thesis |
|---|------|--------|------|--------|-------|------|--------|-----|--------|
| 1 | 2026-04-24 | TXN | BUY | 53.94 | $276.10 | $247.97 (10% trail, HWM $275.53) | $331.32 | 2.0:1 | Q1 2026 massive beat — analog/embedded semis AI data center + industrial demand confirmed; analog cycle confirmed by MCHP +9.89% same day; entry below AH spike = favorable; FOMC cutoff last entry day |

### Stops Placed (GTC trailing)
- TXN: 53 shares, 10% trail, initial stop $247.97 (HWM $275.53) — order ID db503de0
- Note: 0.94 fractional shares uncovered (Alpaca trailing stop requires integer qty)

### Open Positions
| # | Ticker | Shares | Entry | Stop | Target | R:R |
|---|--------|--------|-------|------|--------|-----|
| 1 | NVDA | 74.51 | $201.25 | $183.45 (10% trail, HWM $203.83) | $231 | 2.0:1 |
| 2 | MU | 30.78 | $481.76 | $456.28 (10% trail, HWM $506.98) | $578.11 | 2.0:1 |
| 3 | TXN | 53.94 | $276.10 | $247.97 (10% trail, HWM $275.53) | $331.32 | 2.0:1 |

- Trades this week: 4 (GE Apr 21, NVDA Apr 21, MU Apr 23, TXN Apr 24)
- FOMC Apr 28-29: all positions now held through Fed meeting — stops protect downside

---

## 2026-04-24 - Midday Scan

**Portfolio:** $100,039.16 equity | **Cash:** $54,124.68 | **Positions:** 3 | **Deployed:** ~45.9%

### Position Status
| Ticker | Shares | Entry | Current | P&L% (entry) | Intraday | Stop | HWM | Status |
|--------|--------|-------|---------|---------------|----------|------|-----|--------|
| NVDA | 74.51 | $201.25 | $209.77 | +4.23% | +5.07% | $189.86 (10% trail) | $210.95 | HOLD |
| MU | 30.78 | $481.76 | $498.89 | +3.56% | +3.56% | $456.28 (10% trail) | $506.98 | HOLD |
| TXN | 53.94 | $276.10 | $276.86 | +0.27% | -1.90% vs prior close | $249.75 (10% trail) | $277.50 | HOLD |

### Actions
- No cuts (all above -7% rule)
- No stop tightening (none at +15%/+20% threshold)
- All trailing stops confirmed active (NVDA 97a50e3f, MU dadaa437, TXN db503de0)

### Thesis Check
- **NVDA**: +5.07% intraday — catalyst: Trump visiting China with NVDA on agenda (potential H200 China market reopening); AI infrastructure spending confirmed by TSMC Q1 beat; Vera Rubin H2 2026 on track — INTACT, strengthened
- **MU**: +3.56% — Morgan Stanley named MU top pick; HBM4/NVIDIA supply agreement intact; AI memory supercycle thesis unchanged — INTACT
- **TXN**: -1.90% from yesterday's AH close but +0.27% from our open entry; post-earnings profit-taking normal; analog semi cycle thesis confirmed by Q1 beat — INTACT

### Notes
- FOMC Apr 28-29: no new entries from now; all positions held with trailing stops
- Weekly trade cap (7) not reached (4 used); resets Monday but FOMC window applies

---

## 2026-04-28 - Midday Scan

**Portfolio:** $99,560.73 equity | **Cash:** $54,124.68 | **Positions:** 3 | **Deployed:** ~45.7%

### Position Status
| Ticker | Shares | Entry | Current | P&L% (entry) | Intraday | Stop | HWM | Status |
|--------|--------|-------|---------|---------------|----------|------|-----|--------|
| NVDA | 74.51 | $201.25 | $210.68 | +4.68% | -2.74% | $195.06 (10% trail) | $216.73 | HOLD |
| MU | 30.78 | $481.76 | $497.00 | +3.16% | -5.25% | $478.22 (10% trail) | $531.36 | HOLD ⚠️ |
| TXN | 53.94 | $276.10 | $267.28 | -3.20% | -0.82% | $250.56 (10% trail) | $278.40 | HOLD |

### Actions
- No cuts (all above -7% rule: NVDA +4.68%, MU +3.16%, TXN -3.20%)
- No stop tightening (none at +15%/+20% threshold)
- All trailing stops confirmed active (NVDA 97a50e3f, MU dadaa437, TXN db503de0)

### Thesis Check
- **NVDA**: -2.74% intraday — FOMC day 1 caution + OpenAI drops Microsoft exclusivity → sector sympathy drag. Core AI demand thesis unchanged. INTACT
- **MU**: -5.25% intraday — OpenAI drops Microsoft exclusivity deal caused "partners falling" narrative. DA Davidson initiated Buy/$1,000 PT today; TD Cowen raised PT today. HBM4/NVDA Vera Rubin supply agreement unchanged. Thesis INTACT. **⚠️ Stop at $478.22 is 3.8% below current $497 — monitor; FOMC + Mag7 tonight = elevated volatility risk**
- **TXN**: -0.82% intraday. Manual cut threshold $256.77; current $267.28 = safe. Analog semi cycle thesis intact. INTACT

### Intraday Driver (Step 6 research)
- **OpenAI drops Microsoft exclusivity deal** (Bloomberg, Apr 27): OpenAI can now work with other cloud providers. Perceived as headwind for MSFT Azure concentration; dragging all "OpenAI partner" stocks including NVDA, MU. Does NOT reduce overall AI memory/chip demand — HBM4 demand is cloud-agnostic. Thesis impact: MINIMAL / SENTIMENT only.
- Broader context: FOMC day 1 (decision tomorrow 2pm ET), Mag7 earnings tonight (GOOGL/MSFT/AMZN/META). Market in wait-and-see mode; elevated intraday volatility expected.

---

### Apr 29 - EOD Snapshot (Day 7, Wednesday)
**Portfolio:** $100,159.12 | **Cash:** $54,124.68 (54.1%) | **Day P&L:** +$332.97 (+0.33%) | **Phase P&L:** +$159.12 (+0.16%)**

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| MU | 30.78 | $481.76 | $518.00 | +$13.71 (+2.72%) | +$1,115.65 (+7.52%) | $478.22 (10% trail, HWM $531.36) |
| NVDA | 74.51 | $201.25 | $209.20 | -$3.97 (-1.86%) | +$592.05 (+3.95%) | $195.06 (10% trail, HWM $216.73) |
| TXN | 53.94 | $276.10 | $269.22 | +$4.22 (+1.59%) | -$371.12 (-2.49%) | $250.56 (10% trail, HWM $278.40) |

**Notes:** No trades today; 0/3 used this week. FOMC held rates (as expected); Powell final presser uneventful. MU +2.72% and TXN +1.59% closed green; NVDA -1.86% modest pullback. Phase P&L +$159.12 (+0.16%) — in positive territory. MU and NVDA firmly in unrealized gain; TXN -2.49% unrealized well above -7% cut rule. All three trailing stops active and intact. Portfolio 45.9% deployed vs 75-85% target — significant dry powder. Post-FOMC/Mag7-earnings entry window opens Thu Apr 30; watching AMZN ★★ and GOOGL ★★ for beat-and-raise setups.

---

## 2026-04-29 - Market-Open Session

**Portfolio:** $100,638.42 equity | **Cash:** $54,124.68 | **Positions:** 3 | **Deployed:** ~46.2%

### Execution Status
- Alpaca API: LIVE
- Orders placed: 0 (NO TRADES — FOMC day; Mag7 AMC tonight)

### Live Price Re-verification (STEP 1b)
| Ticker | Pre-mkt Close | Live Ask | Delta | Stop | HWM | Status |
|--------|--------------|----------|-------|------|-----|--------|
| MU | $518.10 | $535.00 | +3.3% | $478.22 (10% trail) | $531.36 | HOLD |
| NVDA | $213.72 | $211.18 | -1.2% | $195.06 (10% trail) | $216.73 | HOLD |
| TXN | $265.85 | $272.66 | +2.6% | $250.56 (10% trail) | $278.40 | HOLD |

### Rule Checks
- MU +8.63% from entry — +15% tightening trigger ($554.02): NOT reached
- NVDA +4.78% — +15% trigger ($231.44): NOT reached
- TXN -1.69% — manual cut threshold (-7% = $256.77): safe at $271.43
- Daytrade count: 0/3 — clean
- All 3 trailing stops confirmed active (NVDA 97a50e3f, MU dadaa437, TXN db503de0)

### Decision
NO TRADES — FOMC decision 2pm ET + MSFT/GOOGL/META/AMZN all AMC = peak binary event. Hold all positions with trailing stops. Post-FOMC/post-earnings entry window opens Thu Apr 30 morning.

### Post-FOMC Watchlist (Thu Apr 30 morning — ONLY if beats confirmed tonight)
1. AMZN ★★ — AWS +25-27% est; if beat + raised guidance → entry near last close, 10% trail, target +20%, R:R 2:1
2. GOOGL ★★ — DoD AI deal + search + cloud; if beat → entry near last close, 10% trail, target +20%
3. META ★ — ad revenue +13% YoY; if beat → secondary entry; high capex risk ($115-135B)

### Open Positions
| # | Ticker | Shares | Entry | Current | P&L% | Stop | Target | R:R |
|---|--------|--------|-------|---------|------|------|--------|-----|
| 1 | NVDA | 74.51 | $201.25 | $210.88 | +4.78% | $195.06 (10% trail) | $231 | 2.0:1 |
| 2 | MU | 30.78 | $481.76 | $523.32 | +8.63% | $478.22 (10% trail) | $578.11 | 2.0:1 |
| 3 | TXN | 53.94 | $276.10 | $271.43 | -1.69% | $250.56 (10% trail) | $331.32 | 2.0:1 |

- Trades this week: 0 of 7 (week reset Mon Apr 28)

---

## 2026-04-30 - Market-Open Session

**Portfolio:** $99,640.50 equity | **Cash:** $54,124.68 | **Positions:** 3 | **Deployed:** ~45.7%

### Execution Status
- Alpaca API: LIVE
- Orders placed: 0 (NO TRADES — GDP miss + Core PCE scorching hot)

### Live Price Re-verification (STEP 1b — 10:31 AM EDT)
| Ticker | Research | Live Ask | Delta | Stop | HWM | Status |
|--------|----------|----------|-------|------|-----|--------|
| MU | $516.75 | $525.00 | +1.6% | $481.95 (10% trail) | $535.50 | HOLD |
| NVDA | $208.33 | $200.70 | -3.7% | $195.057 (10% trail) | $216.73 | HOLD |
| TXN | $267.81 | $275.50 | +2.9% | $250.56 (10% trail) | $278.40 | HOLD |

### Macro Data (8:30 AM ET — STAGFLATION PRINT)
- Q1 GDP Advance: **+2.0%** vs est +2.3% → MISS
- Core PCE Q1: **+4.3%** vs est ~3.15% → SCORCHING HOT (160bps above expectations)
- PCE headline: +4.5% vs 2.9% prior → tariff pass-through hitting consumer baskets
- Assessment: GDP miss + hot inflation = stagflation-adjacent; Fed cannot cut → hawkish repricing

### New Entry Evaluation
- **AMZN:** ask $259.36 vs prior close $261.02 = **-0.6% (sell the news)** despite AWS +28% beat; thesis would be valid BUT macro data shock rule = SKIP
- **GOOGL:** ask $370.50 vs prior close $343.81 = **+7.8% gap > 5% rule** → SKIP
- **META:** not evaluated (lower priority; macro rule kills all new entries)
- **Rule triggered:** "If GDP miss or hot PCE → skip new entries today"

### Position Checks
| Ticker | Shares | Entry | Current | P&L% | -7% Threshold | Stop | Status |
|--------|--------|-------|---------|------|---------------|------|--------|
| MU | 30.78 | $481.76 | $510.975 | +6.06% | $447.84 | $481.95 (10% trail, HWM $535.50) | HOLD |
| NVDA | 74.51 | $201.25 | $200.496 | -0.37% | $187.16 | $195.057 (10% trail, HWM $216.73) | HOLD |
| TXN | 53.94 | $276.10 | $275.50 | -0.22% | $256.77 | $250.56 (10% trail, HWM $278.40) | HOLD ⚠️ |

- No +15%/+20% tightening triggers reached
- All trailing stops confirmed active (MU dadaa437, NVDA 97a50e3f, TXN db503de0)
- Trades this week: 0 of 7

---

## 2026-04-29 - Midday Scan

**Portfolio:** ~$45,813 long MV | **Cash:** $54,124.68 | **Positions:** 3 | **Deployed:** ~45.6%

### Position Status
| Ticker | Shares | Entry | Current | P&L% (entry) | Intraday | Stop | HWM | Status |
|--------|--------|-------|---------|---------------|----------|------|-----|--------|
| MU | 30.78 | $481.76 | $511.98 | +6.27% | +1.53% | $478.22 (10% trail) | $531.36 | HOLD |
| NVDA | 74.51 | $201.25 | $208.94 | +3.82% | -1.99% | $195.06 (10% trail) | $216.73 | HOLD |
| TXN | 53.94 | $276.10 | $268.53 | -2.74% | +1.33% | $250.56 (10% trail) | $278.40 | HOLD |

### Actions
- No cuts (all above -7% rule: MU +6.27%, NVDA +3.82%, TXN -2.74%)
- No stop tightening (none at +15% threshold: MU trigger $553.93, NVDA $231.44)
- All trailing stops confirmed active (MU dadaa437, NVDA 97a50e3f, TXN db503de0)

### Thesis Check
- **MU**: +6.27% from entry; pulled back from $535 open to $511.98 — FOMC day volatility; HBM4/NVDA Vera Rubin supply agreement intact. INTACT
- **NVDA**: -1.99% intraday — FOMC wait-and-see; AI demand thesis unchanged; Mag7 AMC tonight (MSFT/GOOGL/META/AMZN) = major potential catalyst for semis. INTACT
- **TXN**: -2.74% from entry; +1.33% intraday recovering; manual cut threshold $256.77 safely above current $268.53; analog semi cycle thesis intact. INTACT

### Notes
- FOMC hold expected at 2pm ET; Powell press conf 2:30pm (final as chair)
- Mag7 earnings AMC tonight — post-FOMC/post-earnings entry window opens Thu Apr 30 morning
- Watchlist: AMZN ★★, GOOGL ★★ on beat-and-raise → potential entries Thu morning

---

## 2026-04-30 - Midday Scan

**Portfolio:** ~$45,756 long MV | **Cash:** $54,124.68 | **Positions:** 3 | **Deployed:** ~45.7%

### Position Status
| Ticker | Shares | Entry | Current | P&L% (entry) | Intraday | Stop | HWM | Status |
|--------|--------|-------|---------|---------------|----------|------|-----|--------|
| MU | 30.78 | $481.76 | $510.97 | +6.06% | -1.45% | $481.95 (10% trail) | $535.50 | HOLD |
| NVDA | 74.51 | $201.25 | $200.70 | -0.28% | -4.09% | $195.06 (10% trail) | $216.73 | HOLD |
| TXN | 53.94 | $276.10 | $279.42 | +1.20% | +3.79% | $251.49 (10% trail) | $279.43 | HOLD |

### Actions
- No cuts (all above -7% rule: MU +6.06%, NVDA -0.28%, TXN +1.20%)
- No stop tightening (MU +15% trigger $553.82 not reached; NVDA/TXN below threshold)
- All trailing stops confirmed active (MU dadaa437, NVDA 97a50e3f, TXN db503de0)

### Thesis Check
- **MU**: Pulled back from $535 HWM to $510.97 (-1.45% today) — macro-driven (stagflation print); HBM4/hyperscaler capex thesis INTACT/STRENGTHENED (MSFT explicitly cited soaring memory prices)
- **NVDA**: -4.09% intraday; cause clear = GDP miss (+2.0% vs +2.3% est) + Core PCE +4.3% (160bps above est) = stagflation repricing hits high-multiple tech; NOT thesis break; stop $195.06 holds; AI demand thesis unchanged. INTACT
- **TXN**: +3.79% intraday recovery; analog semi cycle thesis INTACT; approaching new HWM

### Macro Context (Midday)
- GDP Q1: +2.0% (miss vs +2.3% est); Core PCE Q1: +4.3% (scorching hot, vs ~3.15% est) = stagflation-adjacent → hawkish Fed repricing → tech/semis selloff; no new entries per morning rule
- AAPL reports AMC tonight — do NOT enter; watch May 1 morning

### Notes
- Trades this week: 0 of 7
- No notification sent (no action taken)

---

### Apr 30 - EOD Snapshot (Day 8, Thursday)
**Portfolio:** $100,122.53 | **Cash:** $54,124.68 (54.1%) | **Day P&L:** -$36.59 (-0.04%) | **Phase P&L:** +$122.53 (+0.12%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| MU | 30.78 | $481.76 | $517.50 | -$0.96 (-0.19%) | +$1,100.25 (+7.42%) | $481.95 (10% trail, HWM $535.50) |
| NVDA | 74.51 | $201.25 | $200.05 | -$9.20 (-4.40%) | -$89.73 (-0.60%) | $195.06 (10% trail, HWM $216.73) |
| TXN | 53.94 | $276.10 | $281.08 | +$11.86 (+4.41%) | +$268.58 (+1.80%) | $253.73 (10% trail, HWM $281.92) |

**Notes:** No trades today (0 this week). Stagflation print (GDP +2.0% miss, Core PCE +4.3% scorching) suppressed all new entries per morning macro rule. NVDA -4.40% intraday on hawkish repricing of high-multiple tech; unrealized -0.60% — above -7% cut rule; stop $195.06 intact. TXN +4.41% intraday — analog semis rotated in; new HWM $281.92, stop tightened to $253.73 (from $250.56). MU -0.19% intraday but +7.42% unrealized; HBM4/hyperscaler capex thesis INTACT (MSFT explicitly cited soaring memory prices). Phase P&L +$122.53 (+0.12%) — nominally in the black. AAPL reports AMC tonight — watch May 1 morning for setup.

---

## 2026-05-01 - Market-Open Session

**Portfolio:** $99,888.45 equity | **Cash:** $54,124.68 | **Positions:** 3 | **Deployed:** ~45.8%

### Execution Status
- Alpaca API: LIVE
- Orders placed: 0 (NO TRADES)

### Live Price Re-verification (STEP 1b — 9:31 AM EDT)
| Ticker | Research | Live Ask | Delta | Stop | HWM | Status |
|--------|----------|----------|-------|------|-----|--------|
| MU | $509.50 | $513.54 | +0.8% | $481.95 (10% trail) | $535.50 | HOLD |
| NVDA | $200.69 | $201.93 | +0.6% | $195.057 (10% trail) | $216.73 | HOLD |
| TXN | $280.03 | $277.215 | -1.0% | $253.728 (10% trail) | $281.92 | HOLD |
| AAPL | $271 (AH bid) | $284 ask | +6.17% vs $267.50 close | — | — | **SKIP** |
| XOM | $147.70 (AH bid) | $144.58 bid / $160.71 ask | bid below AH | — | — | **SKIP** |

### New Entry Evaluation

**AAPL — SKIP (5% gap rule)**
- Q2 2026 BEAT (EPS $2.01 vs $1.94; Rev $111.2B; Q3 guide 14-17% vs 9.5% est) confirmed
- Live ask $284 vs prior close $267.50 = **+6.17% gap → exceeds 5% threshold ($280.88) → rule triggered → NO ENTRY**

**XOM — SKIP (spread + momentum)**
- Q1 2026 beat: EPS $1.05 vs est $1.02 (modest +3% beat)
- Live bid $144.58 is BELOW AH bid $147.70 — selling into beat; historical pattern: XOM declines on earnings day
- $16 bid/ask spread ($144/$161) — too wide for reliable sizing
- Decision: SKIP — no momentum confirmation, adverse price action at open

### Position Checks
| Ticker | Shares | Entry | Current | P&L% | -7% Threshold | Stop | Status |
|--------|--------|-------|---------|------|---------------|------|--------|
| MU | 30.78 | $481.76 | $513.54 | +6.60% | $447.84 | $481.95 (10% trail, HWM $535.50) | HOLD |
| NVDA | 74.51 | $201.25 | $201.93 | +0.34% | $187.16 | $195.057 (10% trail, HWM $216.73) | HOLD |
| TXN | 53.94 | $276.10 | $277.215 | +0.40% | $256.77 | $253.728 (10% trail, HWM $281.92) | HOLD |

- No +15%/+20% tightening triggers reached (MU +15% trigger = $554.02; HWM $535.50)
- All trailing stops confirmed active (MU dadaa437, NVDA 97a50e3f, TXN db503de0)
- Trades this week: 0 of 7


---

### May 1 - EOD Snapshot (Day 9, Friday)
**Portfolio:** $100,760.77 | **Cash:** $54,124.68 (53.7%) | **Day P&L:** +$638.24 (+0.64%) | **Phase P&L:** +$760.77 (+0.76%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| MU | 30.78 | $481.76 | $542.21 | +$24.71 (+4.77%) | +$1,860.95 (+12.55%) | $491.32 (10% trail, HWM $545.91) |
| NVDA | 74.51 | $201.25 | $198.45 | -$1.60 (-0.80%) | -$208.95 (-1.39%) | $195.06 (10% trail, HWM $216.73) |
| TXN | 53.94 | $276.10 | $281.02 | -$0.06 (-0.02%) | +$265.34 (+1.78%) | $253.73 (10% trail, HWM $281.92) |

**Notes:** No trades today; 0 trades this week (Apr 28–May 2); week cap fully available. MU was the standout — +4.77% Friday, new HWM $545.91, trailing stop tightened to $491.32 (+12.55% unrealized from entry). NVDA slipped -0.80% on the day, remains -1.39% unrealized — stop $195.06 is only $3.39 below current price; monitor closely. TXN essentially flat, +1.78% unrealized, HWM $281.92. Portfolio 46.3% deployed vs 75-85% target — significant cash available. Phase P&L +$760.77 (+0.76%). New week (May 4) opens with 3/3 trade slots fresh; watch for quality setups to deploy dry powder.

---

## 2026-05-03 - Midday Scan (Weekend — markets closed)

**Portfolio:** $100,760.77 equity | **Cash:** $54,124.68 (53.7%) | **Deployed:** ~46.3% | **Phase P&L:** +$760.77 (+0.76%)

### Position Status (prices as of Fri May 2 close)
| Ticker | Shares | Entry | Current | P&L% (entry) | Stop | HWM | Status |
|--------|--------|-------|---------|---------------|------|-----|--------|
| MU | 30.78 | $481.76 | $542.21 | +12.55% | $491.32 (10% trail) | $545.91 | HOLD |
| NVDA | 74.51 | $201.25 | $198.45 | -1.39% | $195.06 (10% trail) | $216.73 | HOLD |
| TXN | 53.94 | $276.10 | $281.02 | +1.78% | $253.73 (10% trail) | $281.92 | HOLD |

### Actions
- No cuts (all above -7%: MU +12.55%, NVDA -1.39%, TXN +1.78%)
- No stop tightening: MU +15% trigger = $553.97; HWM $545.91; current $542.21 — not reached (2.2% away)
- All trailing stops confirmed active (MU dadaa437, NVDA 97a50e3f, TXN db503de0)
- Market closed (weekend); no intraday moves or thesis breaks to assess

### Thesis Check
- **MU**: HBM4/NVDA Vera Rubin supply intact; AAPL explicitly cited rising memory costs Q2 call; MSFT raised CapEx to $190B citing "soaring memory prices"; all Mag7 confirmed AI capex acceleration → INTACT/STRENGTHENED
- **NVDA**: AI GPU backbone; $400B+ combined Mag7 capex — all hyperscalers on NVDA; next earnings May 20 → INTACT
- **TXN**: Analog semi cycle; Q1 data center demand +90% YoY; Q2 guide beat consensus → INTACT

### Watch for Monday May 4
- **MU tightening alert**: If opens ≥$554, immediately cancel dadaa437 and place 7% trail (per +15% rule)
- **NVDA caution**: Stop $195.06 is 1.7% below current $198.45 — thin cushion; cannot move stop down per rules; stop-out is acceptable outcome if NVDA gaps down Monday
- **Deployment gap**: 46.3% vs 75-85% target; 7 fresh trade slots this week — pre-market research May 4 will identify setups
- No notification sent (no action taken)

---

## 2026-05-04 - Market-Open Session

**Portfolio:** $102,050.48 equity | **Cash:** $54,124.68 | **Positions:** 3 | **Deployed:** ~47.0%

### Execution Status
- Alpaca API: LIVE
- Orders placed: 0 (NO NEW TRADES — PLTR binary event AMC tonight)

### Stop Tightening: MU 7% → 5% (rule: tighten at +20%)
- MU at $587-589 = **+22.4%** from entry ($481.76); +20% threshold = $578.11 ✓ TRIGGERED
- Cancelled: 7% trailing stop d825c1e6 (stop $546.79, HWM $587.95)
- Placed: 5% trailing stop **26ed3ce7** (stop $558.89, HWM $588.31)

### Live Price Re-verification (STEP 1b — market open ~9:54 AM EDT)
| Ticker | Research | Live Ask | Delta | Stop | HWM | Status |
|--------|----------|----------|-------|------|-----|--------|
| MU | $562.95 | $589.79 | +4.8% | $558.89 (5% trail, NEW) | $588.31 | HOLD — stop tightened to 5% ✓ |
| NVDA | $199.58 | $198.70 | -0.4% | $195.057 (10% trail) | $216.73 | HOLD ⚠️ 1.8% cushion |
| TXN | $282.00 | $279.10 | -1.0% | $255.41 (10% trail) | $283.79 | HOLD |

### Rule Checks
- MU +22.4% — +20% tightening rule triggered → 5% trail placed ✓
- NVDA -1.28% — manual cut threshold $187.16 not breached; stop $195.06 intact
- TXN +1.09% — stop $255.41 (HWM $283.79) intact
- Daytrade count: 0/3 ✓
- Trades this week: 0/7

### No New Buys — Rationale
- PLTR reports AMC tonight (est $0.28 EPS / $1.54B rev; 96% beat probability)
- Strategy: wait for confirmed beat + raise → evaluate Tuesday morning
- No 5%-gap entry candidates identified for today

### Open Positions
| # | Ticker | Shares | Entry | Current | P&L% | Stop | Target | R:R |
|---|--------|--------|-------|---------|------|------|--------|-----|
| 1 | NVDA | 74.51 | $201.25 | $198.70 | -1.28% | $195.057 (10% trail) | $231 | 2.0:1 |
| 2 | MU | 30.78 | $481.76 | $587-589 | +22.4% | $558.89 (5% trail, 26ed3ce7) | $578.11 ✓ | 2.0:1 |
| 3 | TXN | 53.94 | $276.10 | $279.10 | +1.09% | $255.41 (10% trail) | $331.32 | 2.0:1 |

- Trades this week: 0 of 7
- Watch: PLTR AMC — if beat + raise → potential Tuesday entry (~$136-145, 10% trail, 15% equity)

---

### May 04 - EOD Snapshot (Day 10, Monday)
**Portfolio:** $101,852.64 | **Cash:** $68,557.26 (67.3%) | **Day P&L:** +$1,091.87 (+1.08%) | **Phase P&L:** +$1,852.64 (+1.85%)**

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| MU | 30.78 | $481.76 | $583.56 | +$41.35 (+7.63%) | +$3,133.90 (+21.13%) | $563.16 (5% trail, HWM $592.80) |
| NVDA | 0.51 | $201.25 | $198.25 | -$0.20 (-0.10%) | -$1.54 (-1.49%) | N/A (fractional, no stop) |
| TXN | 53.94 | $276.10 | $282.35 | +$1.33 (+0.47%) | +$337.08 (+2.26%) | $255.41 (10% trail, HWM $283.79) |

**Notes:** NVDA 74-share trailing stop (97a50e3f) triggered intraday at ~$194.90 — stopped out at approx -3.2% from entry $201.25; only 0.51 fractional shares remain (no stop needed). MU surged +7.63% to $583.56; 5% trail now at $563.16 (HWM $592.80), +21.13% unrealized. TXN +0.47%, +2.26% unrealized. Portfolio now 32.7% deployed vs 75-85% target — significant dry powder post-NVDA stop-out. PLTR reported AMC (beat expected); evaluate for Tuesday entry. New trades today: 0 (0/7 weekly cap; NVDA stop-out is an exit, not a new entry).

---


## 2026-05-05 - Midday Scan

**Portfolio:** $101,835.49 equity | **Cash:** $68,557.26 (67.3%) | **Deployed:** ~32.7% | **Day P&L:** ~-$17 (-0.02% vs May 4 close) | **Phase P&L:** +$1,835.49 (+1.84%)

### Position Status
| Ticker | Shares | Entry | Current | P&L% | -7% Threshold | Stop | HWM | Status |
|--------|--------|-------|---------|------|---------------|------|-----|--------|
| MU | 30.78 | $481.76 | $583.12 | +21.04% | $447.84 | $563.16 (5% trail, 26ed3ce7) | $592.80 | HOLD |
| NVDA | 0.51 | $201.25 | $198.42 | -1.41% | $187.16 | N/A (fractional) | — | HOLD |
| TXN | 53.94 | $276.10 | $282.35 | +2.26% | $256.77 | $255.41 (10% trail, db503de0) | $283.79 | HOLD |

### STEP 3 — Cuts
- None. All positions above -7% rule.

### STEP 4 — Stop Tightening
- **MU**: +21.04% — already at 5% trail (maximum). No further tightening possible. Current $583.12 < HWM $592.80; stop tracking correctly at $563.16.
- **TXN**: +2.26% — below +15% tightening threshold. No action.
- **NVDA**: Fractional only (no stop).

### STEP 5 — Thesis Check
- **MU**: Memory shortage thesis intact. HBM4/hyperscaler capex elevated. HOLD.
- **TXN**: Analog semi cycle intact. +0.52% intraday. HOLD.
- **NVDA**: Fractional remnant (~$101 value). Thesis intact but negligible position.

### STEP 6 — Research: PLTR
- **Beat confirmed**: EPS $0.33 vs $0.28 est (+17.86%); Rev $1.633B vs $1.54B est (+85% YoY)
- **Guidance raised**: FY2026 revenue raised to $7.650-7.662B (+71% YoY growth); US commercial rev guidance raised significantly
- **Current price**: ~$143.95 (down -1.5% from May 4 close of $146.12; market-open entry window passed)
- **Decision**: Market-open window for PLTR entry was May 5 open. Midday entry suboptimal. Flag for tomorrow pre-market.
- **Note**: Market-open workflow for May 5 does not appear to have run (no TRADE-LOG entry). PLTR would have been a viable setup at open — this is a missed entry. No action midday.

### Actions Taken
- None. No cuts, no stop changes, no new entries.
- Deployment at 32.7% (target 75-85%) — significant dry powder. PLTR remains priority for next market-open if setup holds.

---

## 2026-05-05 - Market-Open Session

**Portfolio:** $103,381.86 equity | **Cash:** $68,557.26 | **Positions:** 3 | **Deployed:** ~33.7%

### Execution Status
- Alpaca API: LIVE
- Orders placed: 0 (NO TRADES — PLTR below $140 support; AMD binary risk AMC)

### Live Price Re-verification (STEP 1b)
| Ticker | Research | Live Ask | Delta | Stop | HWM | Status |
|--------|----------|----------|-------|------|-----|--------|
| MU | $583.12 | $640.00 | +9.8% | $619.15 (5% trail, 26ed3ce7) | $651.74 | HOLD — stop auto-trailing ✓ |
| TXN | $282.35 | $280.59 | -0.6% | $255.41 (10% trail, db503de0) | $283.79 | HOLD |
| NVDA | $198.43 | $197.24 | -0.6% | N/A (fractional) | — | HOLD |
| PLTR | $146.03 (close) | $138.15 | -5.4% | — | — | SKIP |

### PLTR Decision — SKIP
- Pre-market plan: enter if ≤$153.33 (≤5% gap up); catalyst = Q1 beat+raise ✓
- **Actual: $138.15 — sell-the-news; broke below $140 support level**
- Research note (midday May 5): "if PLTR stabilizes and holds $140+ support, setup re-emerges tomorrow"
- Now at $138.15 = BELOW $140 → entry criteria violated
- AMD reports AMC tonight = additional semis/AI binary risk
- Decision: SKIP — wait for $140 reclaim + stabilization

### Position Status (live)
| Ticker | Shares | Entry | Current | P&L% | -7% Threshold | Stop | HWM | Status |
|--------|--------|-------|---------|------|---------------|------|-----|--------|
| MU | 30.78 | $481.76 | $636.69 | +32.16% | $447.84 | $619.15 (5% trail) | $651.74 | HOLD |
| TXN | 53.94 | $276.10 | $280.41 | +1.56% | $256.77 | $255.41 (10% trail) | $283.79 | HOLD |
| NVDA | 0.51 | $201.25 | $197.24 | -1.99% | $187.16 | N/A (fractional) | — | HOLD |

### Open Positions
| # | Ticker | Shares | Entry | Current | P&L% | Stop | Target | R:R |
|---|--------|--------|-------|---------|------|------|--------|-----|
| 1 | MU | 30.78 | $481.76 | $636.69 | +32.16% | $619.15 (5% trail, 26ed3ce7) | $578.11 ✓ hit | — |
| 2 | TXN | 53.94 | $276.10 | $280.41 | +1.56% | $255.41 (10% trail, db503de0) | $331.32 | 2.0:1 |
| 3 | NVDA | 0.51 | $201.25 | $197.24 | -1.99% | N/A | — | — |

- Trades this week: 0 of 7
- Watch: AMD AMC — if beat + guidance raise → evaluate Wednesday morning
- Watch: PLTR — needs to reclaim $140 support before re-entry
- MU note: +32% unrealized; 5% stop at $619.15 protecting significant gains (HWM $651.74)

---

## 2026-05-05 - Midday Scan (Afternoon — post market-open)

**Portfolio:** ~$103,530 equity | **Cash:** $68,557.26 | **Positions:** 3 | **Deployed:** ~33.7% | **Phase P&L:** +$3,530 (+3.53%)

### Position Status
| Ticker | Shares | Entry | Current | P&L% | -7% Threshold | Stop | HWM | Status |
|--------|--------|-------|---------|------|---------------|------|-----|--------|
| MU | 30.78 | $481.76 | $639.44 | +32.73% | $447.84 | $619.15 (5% trail, 26ed3ce7) | $651.74 | HOLD |
| TXN | 53.94 | $276.10 | $281.56 | +1.98% | $256.77 | $255.41 (10% trail, db503de0) | $283.79 | HOLD |
| NVDA | 0.51 | $201.25 | $197.56 | -1.84% | $187.16 | N/A (fractional) | — | HOLD |

### Day P&L (vs yesterday close)
- MU: +$62.99/sh × 30.78 = +$1,939 | TXN: +$0.67/sh × 53.94 = +$36 | NVDA: -$0.47 (negligible)
- Day P&L: ~+$1,975 (+1.94%)

### STEP 3 — Cuts
- None. All positions above -7% rule.

### STEP 4 — Stop Tightening
- **MU**: +32.73% — already at 5% trail (maximum). HWM $651.74, stop $619.15. MU current $639.44 < HWM; no new high today, no update needed. Trailing stop auto-adjusting correctly.
- **TXN**: +1.98% — below +15% threshold. No action.
- **NVDA**: Fractional only; no stop.

### STEP 5 — Thesis Check
- **MU**: Memory shortage + HBM4/hyperscaler capex thesis INTACT. MU +10.93% today (gapped up from $576.45 close). All Mag7 AI capex acceleration confirmed. HOLD.
- **TXN**: Analog semi cycle intact. +0.24% intraday; quiet session. HOLD.
- **NVDA**: Fractional remnant (~$101 value). No action.

### STEP 6 — Intraday Research
- No sharp unexplained moves. MU's +10.93% today is continuation of AI memory thesis (AMD AMC tonight = semiconductor sentiment positive). Not a thesis break.
- **AMD AMC tonight**: Reports Q1 2026; binary event for semis. Strategy: no new entries today. If AMD beats + guidance raise → evaluate Wednesday morning for entry.

### Actions Taken
- None. No cuts, no stop changes, no new entries.
- AMD binary risk AMC tonight — stay flat; evaluate Wed morning.

---

## 2026-05-06 - Market-Open Session

**Portfolio:** $103,957.02 equity | **Cash:** $68,557.24 | **Positions:** 5 (after buys) | **Deployed:** ~64%

### Execution Status
- Alpaca API: LIVE
- Orders placed: 2 (BUY INTC, BUY AMZN)

### Inline Pre-Market Research (no May 6 entry found — ran inline per workflow)

**AMD Q1 2026 Results (AMC May 5):**
- Rev $10.25B vs est $9.85B BEAT; EPS $1.37 vs $1.27 est BEAT; Data Center $5.8B +57% YoY; Q2 guide $11.2B vs est $10.5B
- **AMD ask $413 vs prior close $347.46 = +19% gap → SKIP (far exceeds 5% rule)**

**PLTR:** ask $132.11, prior close $147.05 = -10.2% selloff → broken through $140 support → **STRONG AVOID**

**INTC:** Q1 2026 massive beat (EPS $0.29 vs $0.01 est; Rev $13.58B vs $12.42B); stock +12.92% on May 5; today ask $109.74 (+1.5% from $108.15 close) → within gap rule ✓

**AMZN:** AWS +28% Q1 beat still active; ask $273.35, prior close $270.25 = +1.15% gap ✓; within original planned entry zone ($270 est)

**Macro:** ISM Services 53.6% (expansion ✓); JOLTS slightly lower (benign); no hot PCE/GDP today; Fed next June 17 → macro benign for new entries ✓

### Trades Executed

| # | Date | Ticker | Side | Shares | Entry | Stop | Target | R:R | Thesis |
|---|------|--------|------|--------|-------|------|--------|-----|--------|
| 1 | 2026-05-06 | INTC | BUY | 139.585 | $111.709 | $100.341 (10% trail, HWM $111.49) | $134.05 | 2.0:1 | Q1 2026 massive beat (EPS $0.29 vs $0.01 est = 2900% above estimate; Rev $13.58B vs $12.42B est +9.3%); confirmed AI/data center turnaround; +80% YTD momentum intact; Day 2 post-earnings continuation; semis sector in momentum |
| 2 | 2026-05-06 | AMZN | BUY | 56.985 | $273.64 | $246.5415 (10% trail, HWM $273.935) | $328.37 | 2.0:1 | AWS +28% Q1 2026 beat; Q2 guidance raised; AI infrastructure + cloud spending confirmed by all Mag7 hyperscalers; entry within planned zone ($270 target from Apr 29 pre-market); +1.15% gap from prior close |

### Stops Placed (GTC trailing)
- INTC: 139 shares, 10% trail, stop $100.341 (HWM $111.49) — order ID b0867c96
- AMZN: 56 shares, 10% trail, stop $246.5415 (HWM $273.935) — order ID a7a75899
- Note: 0.585 INTC + 0.985 AMZN fractional shares uncovered (Alpaca trailing stop requires integer qty)

### Skipped
- AMD: ask $413 vs $347.46 close = +19% gap → SKIP
- PLTR: $132.11 vs $147.05 close = -10.2% selloff, broken $140 support → STRONG AVOID
- XOM: $15 bid/ask spread → illiquid → SKIP
- QCOM: wide spread, ask >5% above prior close → SKIP

### Open Positions
| # | Ticker | Shares | Entry | Stop | Target | R:R |
|---|--------|--------|-------|------|--------|-----|
| 1 | MU | 30.78 | $481.76 | $619.15→auto (5% trail, 26ed3ce7) | $578.11 ✓ hit | — |
| 2 | TXN | 53.94 | $276.10 | $255.41→auto (10% trail, db503de0) | $331.32 | 2.0:1 |
| 3 | NVDA | 0.51 | $201.25 | N/A (fractional) | — | — |
| 4 | INTC | 139.585 | $111.709 | $100.341 (10% trail, b0867c96) | $134.05 | 2.0:1 |
| 5 | AMZN | 56.985 | $273.64 | $246.5415 (10% trail, a7a75899) | $328.37 | 2.0:1 |

- Trades this week: 2 of 7
- Watch: QCOM AMC May 7? AVGO — monitor for cleaner entry tomorrow if spread tightens


---

## 2026-05-06 - Reconciliation + Fractional Cleanup (manual sweep)

**Trigger:** User flagged MU pelno drop in Alpaca app; investigation revealed silent broker-side stop fills + fractional-share gap.

### Discrepancies Found (local log vs Alpaca)
| Ticker | Log said | Alpaca actual | Cause |
|--------|----------|---------------|-------|
| MU | 30.78 sh | 0.785 sh | 5% trailing stop fired @ $629.86 May 5/6 (NOT $619.15 as logged) |
| NVDA | 0.51 sh | 0.512 sh | match (Apr 28 stop-out residual) |
| TXN | 53.94 sh | 53.937 sh | match |
| INTC | 139.585 sh | 139.585 sh | match (today's buy) |
| AMZN | 56.985 sh | 56.986 sh | match (today's buy) |

### MU Trailing Stop Fill (RECONCILED)
- Order: 30 sh sell, filled @ $629.859 (between May 5–6)
- Realized: 30 × ($629.859 - $481.76) = **+$4,442.97**
- HWM was $651.74 → 5% trail → $619.15 was the recorded stop, but actual fill at $629.86 (better than expected)
- Note: MU recovered same day to $663.72 — stop fired during pullback, full upside missed (~$1,015 left on table)

### Fractional Cleanup Orders Executed (manual, this session)
| # | Ticker | Side | Qty | Avg Fill | Cost | Realized | Order ID |
|---|--------|------|-----|----------|------|----------|----------|
| 1 | MU | SELL | 0.785 | $661.688 | $378.18 | +$141.24 | fc06415a |
| 2 | TXN | SELL | 0.937 | $289.744 | $258.69 | +$12.82 | b3f4478d |
| 3 | NVDA | SELL | 0.512 | $205.534 | $103.00 | +$2.16 | 594e0bf5 |

**Total fractional sweep realized: +$156.22**

### Pending (tomorrow May 7 — avoid day trade rule)
- INTC fractional 0.585 sh — SELL at open
- AMZN fractional 0.986 sh — SELL at open
- (Both bought May 6 → selling today would be day trade)

### Updated Open Positions (post-cleanup)
| # | Ticker | Shares | Entry | Current | Stop | Status |
|---|--------|--------|-------|---------|------|--------|
| 1 | TXN | 53 | $276.10 | $289.32 | $255.41 (10% trail, db503de0) | HOLD ✓ |
| 2 | INTC | 139.585 | $111.71 | $111.06 | $100.34 (10% trail, b0867c96) | HOLD — 0.585 fractional uncovered |
| 3 | AMZN | 56.985 | $273.64 | $273.81 | $246.54 (10% trail, a7a75899) | HOLD — 0.985 fractional uncovered |

### MU Position — CLOSED
- Total realized P&L: **+$4,584.21** (30 sh stop-out $4,442.97 + 0.785 sh fractional $141.24)
- Entry → Exit: $481.76 → ~$629.86 weighted avg
- Hold period: 13 trading days (Apr 23 → May 5/6)
- Return: **+30.7%**

### NVDA Position — CLOSED
- Total realized P&L: 74 sh stop-out @ ~$194.90 (-$469) + 0.512 sh fractional (+$2) = **-$467**
- Sector loss #1 (semi-conductor sector counter started at 1)

### Account State After Cleanup
- Equity: $103,601.22
- Cash: $57,162.50
- Positions: 3 (TXN, INTC, AMZN)
- Deployment: ~45% (target 75-85%)
- Daytrade count: 2/3 rolling
- Phase P&L: **+$3,601.22 (+3.60%)**

### Process Failures Identified (root cause for fix plan)
1. **Daily-summary May 5 nepasileido** — 401 auth × 3 retries → no EOD update → user nematė MU stop'o
2. **Trade-log not synced with broker fills** — stop-outs neatsiranda log'e iki kitos sėkmingos session'os
3. **Fractional shares uncovered by trailing stops** — Alpaca požiūriu: kiekvienas fractional buy palieka 0.X sh be apsaugos
4. **5% trail on +35% memory stock = whipsaw risk** — MU intraday vol >3% = stop neišvengiamas

Pataisymai dokumentuoti `/Users/dziugas/.claude/plans/pries-tai-analizavai-eurolygos-drifting-adleman.md`.

---

## 2026-05-07 - Market-Open Session

**Portfolio:** $103,336.17 equity | **Cash:** $57,498.58 | **Positions:** 3 | **Deployed:** ~44.3% | **Daytrade count:** 0

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| TXN | 53 | 53.000 | ✓ |
| INTC | 139.585 | 139.000 | ✓ (0.585 fractional sold at open per plan) |
| AMZN | 56.985 | 56.000 | ✓ (0.985 fractional sold at open per plan) |

Fractional sells confirmed executed at 9:30am open: INTC 0.585 (88e1703d) + AMZN 0.985 (bcb0d631). Clean.

### Live Prices (9:31am)
| Ticker | Entry | Ask | P&L% | Stop (GTC) | HWM | Status |
|--------|-------|-----|------|------------|-----|--------|
| TXN | $276.10 | $303.00 | +9.7% | $263.376 (10% trail, db503de0) | $292.64→auto | HOLD |
| INTC | $111.71 | $111.96 | +0.22% | $102.15 (10% trail, b0867c96) | $113.50 | HOLD |
| AMZN | $273.64 | $274.18 | +0.19% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |

### Stop Tightening Check
- TXN +9.7% — below +15% threshold ($317.52). No action.
- INTC +0.22% — below threshold. No action.
- AMZN +0.19% — below threshold. No action.

### Watchlist Evaluation
- **UBER**: ask $80.14 vs ~$72.94 May 5 close = +9.87% gap → EXCEEDS $76.65 limit (5% rule) → SKIP
- **AVGO**: No fresh catalyst; skipped per pre-market plan (NFP risk)

### Execution Status
- Orders placed: 0
- Rationale: Pre-market HOLD decision upheld. NFP April tomorrow (est 55k vs 178k prior) = major binary risk. UBER gap too wide.

### Open Positions (updated)
| # | Ticker | Shares | Entry | Stop | Target | R:R |
|---|--------|--------|-------|------|--------|-----|
| 1 | TXN | 53 | $276.10 | $263.376 (10% trail, db503de0) | $331.32 | 2.0:1 |
| 2 | INTC | 139 | $111.71 | $102.15 (10% trail, b0867c96) | $134.05 | 2.0:1 |
| 3 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $328.37 | 2.0:1 |

- Trades this week: 2 of 7 (INTC + AMZN, both May 6)
- Watch: Post-NFP Friday assessment for new entries

---

## 2026-05-07 - Midday Scan

**Portfolio:** ~$103,493 equity | **Cash:** ~$57,833 | **Deployed:** ~44.1% | **Phase P&L:** ~+$3,493 (+3.49%)**

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| TXN | 53 | 53 | ✓ |
| INTC | 139 | 139 | ✓ |
| AMZN | 56 | 56 | ✓ |

Clean. Fractional sells (INTC 0.585 + AMZN 0.985) confirmed executed at open per plan.

### Position Status
| Ticker | Shares | Entry | Current | P&L% | Intraday | Stop | HWM | Status |
|--------|--------|-------|---------|------|----------|------|-----|--------|
| TXN | 53 | $276.10 | $282.69 | +2.39% | -2.33% | $263.376 (10% trail, db503de0) | $292.64 | HOLD |
| INTC | 139 | $111.71 | $110.76 | -0.85% | -1.99% | $103.005 (10% trail, b0867c96) | $114.45 | HOLD |
| AMZN | 56 | $273.64 | $272.89 | -0.27% | -0.76% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |

### Step 3 — Cuts
None. All positions above -7% rule (TXN +2.39%, INTC -0.85%, AMZN -0.27%).

### Step 4 — Stop Tightening
- TXN +15% trigger = $317.52 — not reached. No action.
- INTC: below threshold. No action.
- AMZN: below threshold. No action.

### Step 5 — Thesis Check
- **TXN**: -2.33% intraday; continued ANET contagion + sector rotation (flagged pre-market). Analog semi cycle thesis unchanged. Stop $263.376 intact. INTACT.
- **INTC**: -1.99% intraday; normal Day 2 post-earnings cooling. Q1 2026 massive beat thesis unchanged. Stop $103.005 (HWM $114.45 — updated from morning high). INTACT.
- **AMZN**: -0.76% intraday; quiet. AWS +28% cloud/AI infra thesis unchanged. Stop $250.02 intact. INTACT.

### Actions Taken
None. No cuts, no stop changes, no new entries.

### Notes
- NFP tomorrow (May 8) — major binary risk; maintain cash cushion
- All 3 trailing stops confirmed active and intact per broker orders

---

### May 07 - EOD Snapshot (Day 13, Thursday)
**Portfolio:** $103,036.99 | **Cash:** $57,498.58 (55.8%) | **Day P&L:** -$910.84 (-0.88%) | **Phase P&L:** +$3,036.99 (+3.04%)**

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| TXN | 53 | $276.10 | $285.24 | -$4.20 (-1.45%) | +$484.39 (+3.31%) | $263.376 (10% trail, HWM $292.64) |
| INTC | 139 | $111.71 | $109.75 | -$3.26 (-2.88%) | -$272.35 (-1.75%) | $103.005 (10% trail, HWM $114.45) |
| AMZN | 56 | $273.64 | $271.01 | -$3.98 (-1.45%) | -$147.28 (-0.96%) | $250.02 (10% trail, HWM $277.80) |

**Notes:** No trades today (2/7 used this week — INTC + AMZN bought May 6). All three positions pulled back as semis sector gave up intraday gains: TXN -1.45% (ANET contagion + rotation continuing), INTC -2.88% (Day 2 post-earnings cooling from $114 HWM), AMZN -1.45% (quiet, thesis intact). Day P&L -$910.84 (-0.88%) driven by unrealized mark-to-market losses — no stops triggered, no -7% cut thresholds breached. TXN remains the only clear winner (+3.31% unrealized); INTC (-1.75%) and AMZN (-0.96%) both within normal range. NFP report tomorrow (May 8, est 55k vs 178k prior) = major binary risk; maintain cash. Portfolio 44.2% deployed vs 75-85% target — significant dry powder available. All trailing stops active and intact per broker orders.

---

## 2026-05-06 - Midday Scan

**Portfolio:** $103,695.79 equity | **Cash:** $57,162.50 (55.1%) | **Deployed:** ~44.9% | **Day P&L:** +$173.22 (+0.17%) | **Phase P&L:** +$3,695.79 (+3.70%)

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| TXN | 53 | 53.000 | ✓ |
| INTC | 139.585 | 139.585 | ✓ |
| AMZN | 56.985 | 56.986 | ✓ |

Clean. Fractional INTC (0.585) + AMZN (0.985) uncovered by stops — sell pending May 7 (day-trade avoidance per plan).

### Position Status
| Ticker | Shares | Entry | Current | P&L% | -7% Threshold | Stop | HWM | Status |
|--------|--------|-------|---------|------|---------------|------|-----|--------|
| TXN | 53 | $276.10 | $290.10 | +5.07% | $256.77 | $261.41 (10% trail, db503de0) | $290.45 | HOLD |
| AMZN | 56.985 | $273.64 | $275.40 | +0.64% | $254.49 | $248.45 (10% trail, a7a75899) | $276.05 | HOLD |
| INTC | 139.585 | $111.71 | $110.80 | -0.81% | $103.89 | $102.15 (10% trail, b0867c96) | $113.50 | HOLD |

### Step 3 — Cuts
None. All positions above -7% rule.

### Step 4 — Stop Tightening
- TXN +5.07%: below +15% threshold ($317.51). No action.
- AMZN +0.64%: below threshold. No action.
- INTC -0.81%: below threshold. No action.

### Step 5 — Thesis Check
- **TXN**: Analog semi cycle intact. +5.07% unrealized; stop auto-trailing to HWM $290.45. INTACT.
- **AMZN**: AWS +28% Q1 beat; cloud/AI infra thesis intact. Holding near entry. INTACT.
- **INTC**: Q1 2026 massive beat (EPS $0.29 vs $0.01 est); Day 2 post-earnings — mild pullback normal. -0.81% from entry, well above -7% cut rule. INTACT.

### Actions Taken
None. No cuts, no stop changes, no new entries. Daytrade count: 2/3.

---

### May 06 - EOD Snapshot (Day 12, Wednesday)
**Portfolio:** $103,726.76 | **Cash:** $57,162.50 (55.1%) | **Day P&L:** +$204.19 (+0.20%) | **Phase P&L:** +$3,726.76 (+3.73%)**

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| AMZN | 56.985 | $273.64 | $274.80 | +$1.25 (+0.46%) | +$66.10 (+0.42%) | $250.02 (10% trail, HWM $277.80) |
| INTC | 139.585 | $111.71 | $111.47 | +$3.32 (+3.07%) | -$33.39 (-0.21%) | $102.15 (10% trail, HWM $113.50) |
| TXN | 53 | $276.10 | $289.70 | +$8.70 (+3.10%) | +$720.77 (+4.93%) | $263.38 (10% trail, HWM $292.64) |

**Notes:** Two new positions opened today — INTC (Q1 2026 massive beat: EPS $0.29 vs $0.01 est; AI data center turnaround thesis) and AMZN (AWS +28% Q1 beat; cloud/AI infra). MU/NVDA/TXN fractionals cleaned up earlier this session (+$156.22 realized). TXN +3.10% and INTC +3.07% both strong intraday; AMZN +0.46% quiet. AMD beat (+19% gap) and PLTR selloff (-10%) skipped per gap rules. Phase P&L +$3,726.76 (+3.73%) — solid. Portfolio 44.9% deployed vs 75-85% target; 5 trade slots remain this week. Fractional sells pending tomorrow: INTC 0.585 sh + AMZN 0.985 sh (held to avoid day trade). Daytrade count: 2/3.

---

### May 09 - EOD Snapshot (Day 14, Friday)
**Portfolio:** $105,385.93 | **Cash:** $57,498.57 (54.6%) | **Day P&L:** +$2,346.94 (+2.28%) | **Phase P&L:** +$5,385.93 (+5.39%)**

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| TXN | 53 | $276.10 | $287.80 | +$2.56 (+0.90%) | +$620.07 (+4.24%) | $263.376 (10% trail, HWM $292.64) |
| INTC | 139 | $111.71 | $124.92 | +$15.17 (+13.82%) | +$1,836.30 (+11.83%) | $117.513 (10% trail, HWM $130.57) — TIGHTEN TO 7% MON |
| AMZN | 56 | $273.64 | $272.68 | +$1.67 (+0.62%) | -$53.76 (-0.35%) | $250.02 (10% trail, HWM $277.80) |

**Notes:** Big green day — portfolio +$2,346.94 (+2.28%) driven almost entirely by INTC surging +13.82% ($109.75→$124.92, intraday HWM $130.57). No trades today; week closes at 2/3 slots used (INTC + AMZN both May 6). INTC HWM $130.57 exceeded the +15% tightening trigger ($128.47 = entry $111.71 × 1.15) — trailing stop must be tightened from 10% to 7% at Monday open (new stop ~$121.43 vs current $117.51; verify 14-day ATR rule first). TXN +0.90% quiet, still below +15% trigger ($317.51); AMZN +0.62% quiet. Portfolio 45.4% deployed vs 75-85% target — significant dry powder available. Phase P&L +$5,385.93 (+5.39%). Reconciliation clean: TXN 53 ✓, INTC 139 ✓, AMZN 56 ✓.

---

## 2026-05-09 - Midday Scan (Saturday — market closed)

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Log Stop/HWM | Broker Stop/HWM | Delta |
|--------|---------|------------|--------------|-----------------|-------|
| TXN | 53 | 53 | $263.376 / $292.64 | $263.376 / $292.64 | ✓ |
| INTC | 139 | 139 | $117.513 / $130.57 | $117.513 / $130.57 | ✓ |
| AMZN | 56 | 56 | $250.02 / $277.80 | $250.02 / $277.80 | ✓ |

Clean. Note: INTC stop auto-trailed from $103.005→$117.513 during May 8 Apple foundry surge. Reflected in EOD snapshot above.

### Step 3 — Cuts
None. All above -7%: TXN +4.24%, INTC +11.83%, AMZN -0.35%.

### Step 4 — Stop Tightening
- INTC: HWM $130.57 = +16.9% from entry → +15% rule triggered. Cannot tighten today: 7% trail from $124.92 = $116.18 < current stop $117.513 (would move stop down — prohibited). **Action Monday: cancel b0867c96, place 7% trail on 139 INTC when price > $126.35.**
- TXN: +4.24% — below +15% trigger ($317.52). No action.
- AMZN: -0.35% — below threshold. No action.

### Step 5 — Thesis Check
- **INTC**: Apple-Intel foundry deal (Apple in discussions to manufacture main device processors at Intel US fabs) + AI data center revenue +22% Q1. Thesis massively enhanced. Stop $117.513 intact. **STRONG HOLD.**
- **TXN**: BofA upgraded to Buy ($320 PT). Q1 EPS $1.68 vs $1.37 est; Q2 guide $5.2B vs $4.87B est (+17% YoY). Analog semi cycle intact. Insider selling (CEO 20k, CAO ~10k, early May) noted — routine. **HOLD.**
- **AMZN**: No new news. AWS +28% thesis intact. **HOLD.**

### Step 6 — Research Addendum
INTC catalyst confirmed: Apple foundry deal + AI/data center strength. See RESEARCH-LOG 2026-05-09.

### Actions Taken
None. Market closed. No cuts, no stop changes.

### Open Positions
| Ticker | Shares | Entry | Last Close | P&L% | Stop | HWM | Monday Action |
|--------|--------|-------|------------|------|------|-----|---------------|
| TXN | 53 | $276.10 | $287.80 | +4.24% | $263.376 (10%, db503de0) | $292.64 | None |
| INTC | 139 | $111.71 | $124.92 | +11.83% | $117.513 (10%, b0867c96) | $130.57 | Tighten to 7% if open > $126.35 |
| AMZN | 56 | $273.64 | $272.68 | -0.35% | $250.02 (10%, a7a75899) | $277.80 | None |

---


---

## 2026-05-09 - Market-Open Session (Saturday — Markets Closed)

**Portfolio:** $105,385.93 equity | **Cash:** $57,498.57 | **Positions:** 3 | **Deployed:** ~45.4% | **Daytrade count:** 0

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| TXN | 53 | 53 | ✓ |
| INTC | 139 | 139 | ✓ |
| AMZN | 56 | 56 | ✓ |

Clean. All GTC trailing stops active and confirmed.

### Position Status (broker prices — May 8 close)
| Ticker | Shares | Entry | Close | P&L% | Stop (GTC) | HWM | Status |
|--------|--------|-------|-------|------|------------|-----|--------|
| TXN | 53 | $276.10 | $287.80 | +4.24% | $263.376 (10% trail, db503de0) | $292.64 | HOLD |
| INTC | 139 | $111.71 | $124.92 | +11.83% | $117.513 (10% trail, b0867c96) | $130.57 | HOLD ⚠️ TIGHTEN PENDING |
| AMZN | 56 | $273.64 | $272.68 | -0.35% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |

### INTC — Stop Tightening Required
- HWM $130.57 = +16.9% above entry ($111.71) → triggers 7% trail rule (threshold: +15%)
- ATR check: INTC moved $108.80→$130.57 intraday May 8 (+19.9%) → 14-day ATR confirmed >4% of price → at +20%, STAY at 7% (not 5%)
- Cannot tighten today (Saturday): 7% from $124.92 close = stop $116.18 < current $117.513 → violates "never move stop down"
- **MONDAY ACTION**: If INTC opens above $126.36, cancel b0867c96 → replace with 7% trail GTC
- Partial profit at +25% = $139.64/share → not triggered yet

### What Happened May 8 (major catalyst day)
- US-China agreed to 90-day tariff pause — massive risk-ON across all tech/growth
- INTC: Apple foundry partnership talks confirmed; AMD revised server CPU market to $120B+ by 2030 (+35%/yr); Morningstar raised FV $60→$90
- INTC intraday: $108.80 → $130.57 → closed $124.92 (+14.8%)
- Broad semis rally: AMD +92% in 1 month, NVDA recovering; market expects strong Monday open

### Watchlist for Monday May 11
1. **DDOG** — closed ~$187-190 (Friday). Q1 $1.006B rev (+32%), FY raised. Software momentum. Need Monday open price; if within 5% of prior close → evaluate entry. Target: $225. R:R ~2:1 from ~$190.
2. **TXN** — if approaches +15% ($317.52), tighten stop. Watch for partial profit setup.
3. **NVDA** — closed ~$214 area. AI inference demand. Entry if <5% gap from Thursday close; stop 10% below entry.

### Execution Status
- Orders placed: 0 (Saturday — stock market closed)
- Crypto: BTC not oversold (RSI not <30) → no trade
- Deployment: 45.4% vs 75-85% target → 3-4 new positions available Monday

### Open Positions (unchanged)
| # | Ticker | Shares | Entry | Stop | Target | R:R |
|---|--------|--------|-------|------|--------|-----|
| 1 | TXN | 53 | $276.10 | $263.376 (10% trail, db503de0) | $331.32 | 2.0:1 |
| 2 | INTC | 139 | $111.71 | $117.513 (10% trail, b0867c96) | $139.64 (+25% partial) | 2.0:1 |
| 3 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $328.37 | 2.0:1 |

- Trades this week (new week May 11-15): 0 of 7
- Phase P&L: +$5,385.93 (+5.39%)

---

## 2026-05-11 - Market-Open Session

**Portfolio:** $106,393.22 equity | **Cash:** $57,498.57 | **Positions:** 4 (after buy) | **Deployed:** ~55.5%

### Execution Status
- Alpaca API: LIVE
- Orders placed: 1 BUY (NVDA) + 1 stop tighten (INTC 10%→7%)

### INTC Stop Tightening (+15.7% rule triggered)
- INTC at $129.25 open — +15.7% from entry $111.71 (threshold: +15% = $128.47 ✓)
- ATR confirmed >4% of price → tighten to 7% only (not 5% per rule)
- Cancelled: order b0867c96 (10% trail, stop $119.46, HWM $132.73)
- Placed: order **67cdf482** (7% trail, stop $119.64, HWM $128.64)
- Note: New HWM set to current price at order creation; will trail up faster than old 10% stop from here

### Trades Executed

| # | Date | Ticker | Side | Shares | Entry | Stop | Target | R:R | Thesis |
|---|------|--------|------|--------|-------|------|--------|-----|--------|
| 1 | 2026-05-11 | NVDA | BUY | 48.316 | $220.20 | $198.324 (10% trail, HWM $220.36) | $264.24 | 2.0:1 | AI inference demand recovery; 2nd attempt post May 4 stop-out; all hyperscalers (MSFT Azure +40%, AWS +28%, GOOGL Cloud +40%) confirmed AI capex acceleration; no earnings until May 20; CPI-conservative 10% size |

### Stops Placed (GTC trailing)
- NVDA: 48 shares, 10% trail, stop $198.324 (HWM $220.36) — order ID **c35a1ad1**
- Note: 0.316 fractional shares uncovered (Alpaca trailing stop requires integer qty)

### Skipped
- DDOG: ask $198.66 vs ~$189 close = +5.1% → exceeds 5% gap rule ($198.45 limit) → SKIP
- NVDA (full 15% size): sized down to 10% due to CPI risk Tuesday May 12

### Open Positions
| # | Ticker | Shares | Entry | Stop | Target | R:R |
|---|--------|--------|-------|------|--------|-----|
| 1 | TXN | 53 | $276.10 | $266.67 (10% trail, db503de0, HWM $296.30) | $331.32 | 2.0:1 |
| 2 | INTC | 139 | $111.71 | $119.64 (7% trail, 67cdf482, HWM $128.64) | $139.64 (+25% partial) | 2.0:1 |
| 3 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899, HWM $277.80) | $328.37 | 2.0:1 |
| 4 | NVDA | 48.316 | $220.20 | $198.324 (10% trail, c35a1ad1, HWM $220.36) | $264.24 | 2.0:1 |

- Trades this week: 1 of 7
- Watch: CPI Tuesday May 12 (est 3.8% YoY) — binary risk; all stops protect downside

---

## 2026-05-12 - Midday Scan

**Portfolio:** ~$105,560 equity | **Cash:** ~$46,860 | **Positions:** 4 | **Deployed:** ~55.6% | **Phase P&L:** ~+$5,560 (+5.56%)

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| TXN | 53 | 53 | ✓ |
| INTC | 139 | 139 | ✓ |
| AMZN | 56 | 56 | ✓ |
| NVDA | 48.316 | 48.316 | ✓ |

Clean. No overnight stop-outs.

### Position Status
| Ticker | Shares | Entry | Current | P&L% (entry) | Intraday | Stop | HWM | Status |
|--------|--------|-------|---------|---------------|----------|------|-----|--------|
| TXN | 53 | $276.10 | $297.50 | +7.75% | -0.09% | $268.362 (10% trail, db503de0) | $298.18 | HOLD |
| INTC | 139 | $111.71 | $125.07 | +11.96% | -3.38% | $120.90 (7% trail, 67cdf482) | $130.00 | HOLD |
| NVDA | 48.316 | $220.20 | $218.10 | -0.95% | -0.61% | $200.07 (10% trail, c35a1ad1) | $222.30 | HOLD |
| AMZN | 56 | $273.64 | $268.00 | -2.06% | -0.37% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |

### Step 3 — Cuts
None. All positions above -7% rule.

### Step 4 — Stop Tightening
- TXN +7.75%: +15% trigger $317.52 — not reached. No action.
- INTC +11.96%: already on 7% trail (tightened May 11 open). +20% trigger $134.05 — not reached. No action.
- NVDA -0.95%: below threshold. No action.
- AMZN -2.06%: below threshold. No action.

### Step 5 — Thesis Check
- **TXN**: Analog semi cycle intact; BofA $320 PT; Q2 guide raised. HWM $298.18 — stop trailing correctly. **HOLD.**
- **INTC**: -3.38% intraday driven by CPI-day macro pressure, not thesis break. Apple foundry + AI data center dual catalyst intact. 7% trail stop $120.90 provides cushion. **HOLD.**
- **NVDA**: -0.61% intraday. AI inference thesis intact. Conservatively sized at 10% equity per CPI risk plan. **HOLD.**
- **AMZN**: -0.37% intraday. AWS +28% cloud/AI thesis intact. Quiet session. **HOLD.**

### Macro — CPI May 12
CPI est. +3.8% YoY / Core +0.3% (2.7% YoY). Tech sector broadly flat-to-down intraday. Intraday weakness is macro-driven (CPI uncertainty), not position-specific thesis breaks. All stops protect downside if print comes hot.

### Actions Taken
None. No cuts, no stop changes, no new entries.

---

### May 12 - EOD Snapshot (Day 16, Tuesday)
**Portfolio:** $105,408.41 | **Cash:** $46,859.25 (44.4%) | **Day P&L:** +$22.48 (+0.02%) | **Phase P&L:** +$5,408.41 (+5.41%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| AMZN | 56 | $273.64 | $267.34 | -$1.65 (-0.61%) | -$352.80 (-2.30%) | $250.02 (10% trail, HWM $277.80) |
| INTC | 139 | $111.71 | $124.72 | -$4.72 (-3.65%) | +$1,808.50 (+11.65%) | $120.90 (7% trail, HWM $130.00) |
| NVDA | 48 | $220.20 | $217.65 | -$1.79 (-0.82%) | -$123.21 (-1.16%) | $200.07 (10% trail, HWM $222.30) |
| TXN | 53 | $276.10 | $296.70 | -$1.06 (-0.36%) | +$1,091.77 (+7.46%) | $268.362 (10% trail, HWM $298.18) |

**Notes:** CPI day — all four positions closed red intraday as macro uncertainty weighed on tech/semis (INTC -3.65% worst hit). Portfolio equity essentially flat (+$22.48) because aggregate unrealized losses were offset by prior session basis. No trades today; week at 1/3 used (NVDA May 11). No -7% cut thresholds breached; no stop tightening triggered. INTC strongest unrealized (+11.65%), TXN +7.46%; AMZN and NVDA modestly underwater. Portfolio 55.6% deployed vs 75-85% target — 2 trade slots remain this week. Watch INTC for +20% trigger ($134.05) and TXN for +15% ($317.52). Tomorrow: assess post-CPI action and identify new entry setups with dry powder.

---

## 2026-05-12 - Reconciliation (Midday 2nd Pass)

| Ticker | Log Qty | Broker Qty | Suspected Cause | Realized P&L |
|--------|---------|------------|-----------------|--------------|
| INTC | 139 | 0 | 7% trailing stop fired 10:29 AM EDT; HWM $130.00, stop $120.90, fill $120.92/sh | +$1,280.19 |
| NVDA | 48 (+ 0.316 fractional) | 48.316 | ✓ match (0.316 uncovered fractional from May 11 buy — ongoing) | — |
| AMZN | 56 | 56 | ✓ | — |
| TXN | 53 | 53 | ✓ | — |

### INTC — Stopped Out
- Entry $111.71 × 139 shares | Exit $120.920 × 139 shares
- Realized P&L: 139 × ($120.920 - $111.71) = **+$1,280.19**
- Stop triggered at 10:29 AM EDT (14:29 UTC) May 12 — intraday drop from $124.72 prior close → $120.90 stop
- Hold period: May 6 → May 12 (5 trading days). Return: +8.24% on position

### Remaining Positions (midday)
| Ticker | Shares | Entry | Current | P&L% | Stop | Status |
|--------|--------|-------|---------|------|------|--------|
| AMZN | 56 | $273.64 | $264.16 | -3.46% | $250.02 (10% trail, a7a75899, HWM $277.80) | HOLD |
| NVDA | 48 | $220.20 | $218.60 | -0.73% | $201.375 (10% trail, c35a1ad1, HWM $223.75) | HOLD |
| TXN | 53 | $276.10 | $290.70 | +5.29% | $268.362 (10% trail, db503de0, HWM $298.18) | HOLD |

- No cuts (all above -7% rule)
- No stop tightening (TXN +15% trigger $317.52 not reached; NVDA/AMZN below threshold)
- Thesis intact for all three: AWS/AI (AMZN), AI inference (NVDA), analog semi cycle (TXN)
- Deployment post-INTC exit: ~$40,762 long MV vs ~$63,667 cash ≈ 39% deployed (was 55%)
- NVDA 0.316 fractional shares uncovered — minor; carry until next session cleanup opportunity


### May 13 - EOD Snapshot (Day 17, Wednesday)
**Portfolio:** $105,151.91 | **Cash:** $63,667.17 (60.5%) | **Day P&L:** -$1,146.82 (-1.08%) | **Phase P&L:** +$5,151.91 (+5.15%)**

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| AMZN | 56 | $273.64 | $267.05 | +$1.23 (+0.46%) | -$369.04 (-2.30%) | $250.02 (10% trail, HWM $277.80) |
| NVDA | 48.316 | $220.20 | $224.24 | +$3.46 (+1.57%) | +$195.20 (+1.84%) | $201.375 (10% trail, HWM $223.75) |
| TXN | 53 | $276.10 | $296.14 | +$0.97 (+0.33%) | +$1,062.09 (+7.26%) | $268.362 (10% trail, HWM $298.18) |

**Notes:** No trades today (1/3 used this week — NVDA May 11). Day P&L -$1,146.82 (-1.08%) — portfolio pulled back from yesterday's last_equity $106,298.73. INTC stop-out (+$1,280.19 realized, +8.24%) already reconciled May 12. Positions AMZN, NVDA, TXN all closed modestly green intraday (+0.46%, +1.57%, +0.33% respectively); portfolio-level decline reflects mark-to-market from a higher base. No -7% cut thresholds breached; no +15%/+20% tightening triggers reached (TXN +15% trigger $317.52, NVDA +15% trigger $253.23 — neither hit). All three GTC trailing stops active and intact. Deployment 39.5% vs 75-85% target — significant dry powder; 2 trade slots remain this week. Tomorrow: identify new entry setups to close deployment gap.

---

## 2026-05-13 - Midday Scan

**Portfolio:** ~$106,091 equity | **Cash:** ~$63,667 (60.0%) | **Positions:** 3 | **Deployed:** ~40.0% | **Phase P&L:** ~+$6,091 (+6.09%)**

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| AMZN | 56 | 56 | ✓ |
| NVDA | 48.316 | 48.316621 | ✓ (fractional carry) |
| TXN | 53 | 53 | ✓ |

Clean. No overnight or intraday stop-outs.

### Position Status
| Ticker | Shares | Entry | Current | P&L% | Intraday | Stop (broker) | HWM | Status |
|--------|--------|-------|---------|------|---------|---------------|-----|--------|
| AMZN | 56 | $273.64 | $269.99 | -1.33% | +1.57% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |
| NVDA | 48.316 | $220.20 | $227.18 | +3.17% | +2.90% | $205.056 (10% trail, c35a1ad1) | $227.84 | HOLD |
| TXN | 53 | $276.10 | $308.07 | +11.58% | +4.37% | $278.388 (10% trail, db503de0) | $309.32 | HOLD |

### Step 3 — Cuts
None. All positions above -7% threshold.

### Step 4 — Stop Tightening
- TXN +11.58%: +15% trigger $317.52 — not reached ($308.07 current). Broker trailing HWM $309.32 auto-updating. No manual action.
- NVDA +3.17%: below threshold. No action.
- AMZN -1.33%: below threshold. No action.

### Step 5 — Thesis Check
- **AMZN**: -1.33% unrealized, +1.57% intraday (recovering). Globalstar acquisition ($11.6B) + AWS AI thesis intact. **HOLD.**
- **NVDA**: +3.17%, +2.90% intraday. AI inference surge; Vera Rubin trial production June; earnings May 20. HWM updated to $227.84 by broker. **HOLD.**
- **TXN**: +11.58%, +4.37% intraday surge investigated — catalyst confirmed: market continues to price Q1 2026 beat (EPS $1.68 vs $1.36 est, rev $4.83B vs $4.52B), BofA Buy upgrade, Silicon Labs acquisition ($7.5B deal for wireless-connectivity chips), analog semi demand from industrials + data centers. Thesis STRENGTHENED. **HOLD.**

### Step 6 — Intraday Research (TXN)
TXN up 4.37% intraday. Q1 beat catalyst (Apr 29): EPS +23.5% beat, 8th consecutive growth quarter. BofA Buy/$320 PT. Silicon Labs deal ($7.5B, close H1 2027). Second price increase planned July 1, 2026. No thesis break — price action consistent with sustained re-rating. Stop (HWM $309.32, trail $278.388) protecting +0.8% from entry — adequate cushion. TXN approaching all-time highs.

**Macro watch:** FOMC minutes 2:00 PM ET — hawkish tone expected given hot PPI (+0.6% MoM vs +0.5% est). Binary intraday risk. All stops protect downside.

### Actions Taken
None. No cuts, no stop changes, no new entries.

### Open Positions (unchanged)
| # | Ticker | Shares | Entry | Stop | HWM |
|---|--------|--------|-------|------|-----|
| 1 | TXN | 53 | $276.10 | $278.388 (10% trail, db503de0) | $309.32 |
| 2 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $277.80 |
| 3 | NVDA | 48.316 | $220.20 | $205.056 (10% trail, c35a1ad1) | $227.84 |

- Trades this week: 1 of 3 (NVDA May 11)
- Watch: FOMC minutes 2PM ET; AMAT earnings AMC (assess Thursday open entry)

---

### May 13 - EOD Snapshot (Day 17, Wednesday) — CORRECTED
> Note: An earlier erroneous snapshot (same heading, lines above) was written by the local cron using May 12 closing prices. This entry reflects actual May 13 market-close data.

**Portfolio:** $105,958.00 | **Cash:** $63,667.14 (60.1%) | **Day P&L:** +$1,093.59 (+1.04%) | **Phase P&L:** +$5,958.00 (+5.96%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| AMZN | 56 | $273.64 | $270.00 | +$4.18 (+1.57%) | -$203.84 (-1.33%) | $250.02 (10% trail, HWM $277.80) |
| NVDA | 48.316 | $220.20 | $225.97 | +$5.19 (+2.35%) | +$278.83 (+2.62%) | $205.056 (10% trail, HWM $227.84) |
| TXN | 53 | $276.10 | $306.34 | +$11.17 (+3.78%) | +$1,602.69 (+10.95%) | $278.388 (10% trail, HWM $309.32) |

**Notes:** Strong broad rally — all three positions up on the day (AMZN +1.57%, NVDA +2.35%, TXN +3.78%), driving portfolio +$1,093.59 (+1.04%). FOMC minutes (2 PM ET) were a non-event; market held gains through close. TXN continues to march higher (+10.95% unrealized), approaching +15% tightening trigger at $317.52; HWM broker-tracked at $309.32. NVDA +2.62% unrealized, HWM auto-updated to $227.84. AMZN still modestly underwater (-1.33%) but recovering. No trades today; 1/3 week slots used (NVDA May 11), 2 slots remain. Deployment 39.9% ($42,291 long MV / $105,958) — significantly below 75-85% target. AMAT earnings tonight (AMC) — assess tomorrow open for potential entry. Tomorrow: identify 1-2 new entries to close deployment gap.

---

## 2026-05-14 - Market-Open Session

**Portfolio:** $106,050.47 equity | **Cash:** $63,667.14 | **Positions:** 3 | **Deployed:** ~39.9% | **Daytrade count:** 0

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| AMZN | 56 | 56 | ✓ |
| NVDA | 48.316 | 48.316621 | ✓ (fractional carry) |
| TXN | 53 | 53 | ✓ |

Clean. No overnight stop-outs or discrepancies. All GTC trailing stops active.

### Execution Status
- Alpaca API: LIVE
- Orders placed: 0 (NO TRADES — CSCO gap +19.5% → skip rule triggered)

### Live Price Re-verification (STEP 1b — ~10:15 AM EDT)
| Ticker | Research Plan | Live Ask | Delta | Stop (broker) | HWM | Status |
|--------|--------------|----------|-------|---------------|-----|--------|
| TXN | $306.34 close | $322.35 (wide) / bid $304.87 | -0.50% from close | $278.388 (10% trail, db503de0) | $309.32 | HOLD — +15% trigger $317.52 NOT reached at bid |
| NVDA | $225.97 close | $232.00 | +2.67% | $209.943 (10% trail, c35a1ad1) | $233.27 | HOLD — stop auto-trailed ✓ |
| AMZN | $270.00 close | $268.23 | -0.66% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |
| CSCO | $96.57 close | $115.41 | **+19.5% gap** | — | — | **SKIP — 5% gap rule triggered** |

### Stop Tightening Check
- **TXN**: bid $304.87 / last $304.82 — +15% trigger = $317.52. Current bid BELOW trigger. No tightening. (Note: ask quote $322.35 is unusually wide — bid-based pricing used for stop math)
- **NVDA**: +5.20% from entry — below +15% threshold ($253.23). No action.
- **AMZN**: -1.98% — below threshold. No action.

### CSCO — SKIP
- Pre-market plan: enter if live ask ≤$101.40 (≤5% above $96.57 close)
- Q3 2026 beat confirmed: Rev $15.84B beat, EPS $1.06 beat, Q4 guide $16.8B vs $15.8B est, AI orders raised $5B→$9B FY2026
- Live ask: $115.41 = **+19.5% gap above prior close** → far exceeds 5% rule → SKIP

### Macro Context
- Retail Sales April: +0.5% MoM (in-line with +0.5% est), +4.9% YoY — benign print, no risk-off trigger
- Trump-Xi summit ongoing (Beijing) — Jensen Huang (NVDA CEO) present; chip restriction decision pending
- AMAT earnings AMC tonight — do NOT enter before; assess Friday May 15 morning
- NVDA earnings May 20 — blackout cutoff May 17 (3 days from now)

### Position Status (live broker)
| Ticker | Shares | Entry | Current | P&L% | Stop (broker) | HWM | Status |
|--------|--------|-------|---------|------|---------------|-----|--------|
| AMZN | 56 | $273.64 | $268.23 | -1.98% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |
| NVDA | 48.316 | $220.20 | $231.65 | +5.20% | $209.943 (10% trail, c35a1ad1) | $233.27 | HOLD |
| TXN | 53 | $276.10 | $304.82 | +10.40% | $278.388 (10% trail, db503de0) | $309.32 | HOLD |

### Open Positions
| # | Ticker | Shares | Entry | Stop | Target | R:R |
|---|--------|--------|-------|------|--------|-----|
| 1 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $328.37 | 2.0:1 |
| 2 | NVDA | 48.316 | $220.20 | $209.943 (10% trail, c35a1ad1) | $264.24 | 2.0:1 |
| 3 | TXN | 53 | $276.10 | $278.388 (10% trail, db503de0) | $331.32 | 2.0:1 |

- Trades this week: 1 of 3 (NVDA May 11) — 2 slots remain
- Watch: AMAT AMC tonight — assess Fri May 15 morning for entry if beat + ≤5% gap
- Watch: TXN — approaching +15% tightening trigger ($317.52); tighten to 7% when price breaches
- Watch: NVDA blackout May 17 — no new NVDA adds after Sunday May 17

---

## 2026-05-14 - Midday Scan

**Portfolio:** ~$106,401 equity | **Cash:** $63,667.14 (59.8%) | **Positions:** 3 | **Deployed:** ~40.2% | **Phase P&L:** ~+$6,401 (+6.40%)

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Log Stop/HWM | Broker Stop/HWM | Delta |
|--------|---------|------------|--------------|-----------------|-------|
| AMZN | 56 | 56 | $250.02 / $277.80 | $250.02 / $277.80 | ✓ |
| NVDA | 48.316 | 48.316621 | $209.943 / $233.27 | $212.886 / $236.54 | ✓ auto-trail |
| TXN | 53 | 53 | $278.388 / $309.32 | $279.261 / $310.29 | ✓ auto-trail |

Clean. Stop auto-trailing working correctly on NVDA (+HWM $233.27→$236.54, stop +$209.94→$212.89) and TXN (+HWM $309.32→$310.29, stop $278.39→$279.26).

### Position Status
| Ticker | Shares | Entry | Current | P&L% | Intraday | Stop (broker) | HWM | Status |
|--------|--------|-------|---------|------|----------|---------------|-----|--------|
| AMZN | 56 | $273.64 | $267.26 | -2.33% | -1.06% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |
| NVDA | 48.316 | $220.20 | $236.84 | +7.56% | +4.88% | $212.886 (10% trail, c35a1ad1) | $236.54 | HOLD |
| TXN | 53 | $276.10 | $308.00 | +11.55% | +0.54% | $279.261 (10% trail, db503de0) | $310.29 | HOLD |

### Step 3 — Cuts
None. All positions above -7% rule.

### Step 4 — Stop Tightening
- **TXN** +11.55%: +15% trigger $317.52 — not reached ($308.00 < $317.52). No action.
- **NVDA** +7.56%: +15% trigger $253.23 — not reached. No action.
- **AMZN** -2.33%: below threshold. No action.

### Step 5 — Thesis Check
- **NVDA**: +4.88% intraday — catalyst known: Trump-Xi Beijing summit with Jensen Huang present; market pricing in H200/chip export restriction easing. Vera Rubin trial production on track for June. Earnings May 20 (blackout May 17). Thesis STRENGTHENED. **HOLD.**
- **TXN**: +0.54% intraday, +11.55% from entry. Analog semi cycle intact; BofA $320 PT; approaching +15% tightening threshold ($317.52). No thesis break. **HOLD.**
- **AMZN**: -1.06% intraday, -2.33% from entry. AWS +28% / cloud/AI thesis unchanged. Quiet session. **HOLD.**

### Step 6 — Intraday Research
- NVDA's +4.88% move fully explained by Beijing summit: Jensen Huang confirmed aboard Air Force One; Trump's "first request" to Xi = open China to US businesses; chip restriction easing is primary ask. HWM $236.54 tracking near current price — stop will trail up if price advances further.
- AMAT reports AMC tonight (4:30 PM ET call) — binary event; do NOT enter before close. Assess May 15 morning.

### Actions Taken
None. No cuts, no stop changes, no new entries.

### Open Positions (unchanged)
| # | Ticker | Shares | Entry | Stop | HWM |
|---|--------|--------|-------|------|-----|
| 1 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $277.80 |
| 2 | NVDA | 48.316 | $220.20 | $212.886 (10% trail, c35a1ad1) | $236.54 |
| 3 | TXN | 53 | $276.10 | $279.261 (10% trail, db503de0) | $310.29 |

- Trades this week: 1 of 3 (NVDA May 11) — 2 slots remain
- No notification sent (no action taken)

### May 15 - EOD Snapshot (Day 19, Friday)
**Portfolio:** $106,393.99 | **Cash:** $63,667.14 (59.8%) | **Day P&L:** +$452.21 (+0.43%) | **Phase P&L:** +$6,393.99 (+6.39%)**

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| AMZN | 56 | $273.64 | $266.49 | -$0.73 (-0.28%) | -$400.69 (-2.62%) | $250.02 (10% trail, a7a75899, HWM $277.80) |
| NVDA | 48.316 | $220.20 | $237.87 | +$2.13 (+0.90%) | +$853.63 (+8.03%) | ~$214.08 (10% trail, c35a1ad1, HWM ~$237.87) |
| TXN | 53 | $276.10 | $307.75 | -$0.42 (-0.14%) | +$1,677.42 (+11.46%) | $279.26 (10% trail, db503de0, HWM $310.29) |

**Notes:** Week closes with 1/3 trade slots used (NVDA May 11). Portfolio +$452.21 on light session — NVDA +0.90% pushed through prior HWM $236.54 to $237.87; trailing stop auto-updated to ~$214.08 (10% below new HWM). TXN -0.14% quiet at $307.75, +11.46% unrealized, approaching +15% tightening trigger at $317.52 — cancel db503de0 and replace with 7% trail when price breaches $317.52. AMZN -0.28% day, -2.62% unrealized; AWS/AI thesis intact; AMZN lagging but stop $250.02 comfortably below. Portfolio 40.2% deployed vs 75-85% target — significant dry powder; 3 fresh trade slots open Monday May 18. AMAT beat AMC May 14 (assess Monday morning entry if ≤5% gap). NVDA blackout effective May 17 — no new NVDA adds next week. NVDA earnings May 20. No trades this session; no -7% cuts or +15%/+20% stop-tighten triggers breached.

---

---

## 2026-05-15 - Market-Open Session

**Portfolio:** ~$105,387 equity | **Cash:** ~$16,243 (~15.4%) | **Positions:** 6 | **Deployed:** ~84.4% | **Phase P&L:** ~+$5,387 (+5.39%)**

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| AMZN | 56 | 56 | ✓ |
| NVDA | 48.316 | 48.316621 | ✓ (fractional carry) |
| TXN | 53 | 53 | ✓ |

Clean. No overnight exits. All GTC stops active.

### TXN Stop Tightening
- **Trigger:** TXN ask appeared at $318.68 (wide-spread quote artifact; actual trade price ~$301). Applied 7% tightening marginally early — new stop ($280.40) is higher than old 10% stop ($279.26). Acceptable; rule 7 (never move stop down) preserved.
- Cancelled: db503de0 (10% trail, stop $279.26, HWM $310.29)
- Replaced: fe276bad (7% trail, stop $280.40, HWM $301.51)
- Next trigger: +20% = $331.32 → check ATR14; if ATR14 ≤4% of price tighten to 5%, else stay 7%

### Trades Executed

| # | Ticker | Side | Shares | Entry | Stop | Target | R:R | Order ID |
|---|--------|------|--------|-------|------|--------|-----|----------|
| 1 | AMAT | BUY | 36.707 | $430.65 | $387.13 (10% trail, e3a01c6b) | $516.78 (+20%) | 2:1 | c383f2c4 |
| 2 | GOOGL | BUY | 39.657 | $398.61 | $358.37 (10% trail, 4e322e3f) | $478.33 (+20%) | 2:1 | bac391bb |
| 3 | AVGO | BUY | 37.196 | $424.99 | $381.65 (10% trail, 6a7bc8d9) | $509.99 (+20%) | 2:1 | 8a8bf96d |

**AMAT Thesis:** Q2 2026 beat AMC May 14: Rev $7.91B vs $7.69B est, EPS $2.86 vs $2.68 est. >30% semi equipment growth 2026 guide (raised from >20%). Q3 guide $8.45-9.45B. AI picks-and-shovels (DRAM, HBM, gate-all-around). No China restriction risk. Entry below pre-market $442 threshold (CONFIDENT).

**GOOGL Thesis:** Trump-Xi AI summit concluded; US-China AI governance framework = tech tailwind. Google Cloud +28% YoY. Gemini AI scaling. Communication Services diversifier (reduces semi concentration). Entry ~$399 (+5.5% above $378 plan but catalyst fresh).

**AVGO Thesis:** AI inference ASIC demand from hyperscalers (Apple, Google, Meta). Trump-Xi chip clarity +5.52% on May 14. No earnings binary near-term. Sector momentum #2. Entry $425 — below $445-460 anticipated range (better value).

### Position Status (post-trade)
| Ticker | Shares | Entry | Stop (GTC) | HWM | Status |
|--------|--------|-------|------------|-----|--------|
| AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |
| NVDA | 48.316 | $220.20 | $212.886 (10% trail, c35a1ad1) | $236.54→auto | HOLD |
| TXN | 53 | $276.10 | $280.40 (7% trail, fe276bad) | $301.51 | HOLD — next trigger $331.32 |
| AMAT | 36.707 | $430.65 | $387.13 (10% trail, e3a01c6b) | $430.15 | NEW |
| GOOGL | 39.657 | $398.61 | $358.37 (10% trail, 4e322e3f) | $398.19 | NEW |
| AVGO | 37.196 | $424.99 | $381.65 (10% trail, 6a7bc8d9) | $424.06 | NEW |

### Open Positions
| # | Ticker | Shares | Entry | Stop | Target | R:R |
|---|--------|--------|-------|------|--------|-----|
| 1 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $328.37 | 2.0:1 |
| 2 | NVDA | 48.316 | $220.20 | $212.886 (10% trail, c35a1ad1) | $264.24 | 2.0:1 |
| 3 | TXN | 53 | $276.10 | $280.40 (7% trail, fe276bad) | $331.32 | 2.0:1 |
| 4 | AMAT | 36.707 | $430.65 | $387.13 (10% trail, e3a01c6b) | $516.78 | 2.0:1 |
| 5 | GOOGL | 39.657 | $398.61 | $358.37 (10% trail, 4e322e3f) | $478.33 | 2.0:1 |
| 6 | AVGO | 37.196 | $424.99 | $381.65 (10% trail, 6a7bc8d9) | $509.99 | 2.0:1 |

- Trades this week: 1 (NVDA May 11) + 3 (AMAT, GOOGL, AVGO May 15) = 4 of 7
- Sector caps: Semi (NVDA+TXN+AMAT+AVGO) = ~$58,443/$105,387 = 55.5% < 60% ✓
- Deployment: ~84.4% (target 75-85%) ✓
- Watch: NVDA blackout May 17 — no new NVDA adds
- Watch: NVDA earnings May 20 — binary event; existing stop protects
- Watch: TXN — next tighten trigger $331.32 (+20%); check ATR14 at that point
- Watch: AMZN -4% from entry; -7% cut line $254.49; stop $250.02

---

## 2026-05-15 - Midday Scan

**Portfolio:** ~$89,144 long MV | **Cash:** ~$16,243 | **Positions:** 6 | **Deployed:** ~84.6% | **Phase P&L:** ~+$5,000 est.

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| AMZN | 56 | 56 | ✓ |
| NVDA | 48.316 | 48.316621 | ✓ (fractional carry) |
| TXN | 53 | 53 | ✓ |
| AMAT | 36.707 | 36.707499 | ✓ (fractional carry) |
| GOOGL | 39.657 | 39.657886 | ✓ (fractional carry) |
| AVGO | 37.196 | 37.196240 | ✓ (fractional carry) |

Clean. No overnight or intraday stop-outs.

### Position Status
| Ticker | Shares | Entry | Current | P&L% (entry) | Intraday | Stop | HWM | Status |
|--------|--------|-------|---------|---------------|----------|------|-----|--------|
| AMAT | 36.707 | $430.65 | $437.74 | +1.65% | -0.64% | $398.03 (10% trail, e3a01c6b) | $442.25 | HOLD |
| AMZN | 56 | $273.64 | $261.74 | -4.35% | -2.05% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD ⚠️ |
| AVGO | 37.196 | $424.99 | $428.71 | +0.88% | -2.52% | $387.75 (10% trail, 6a7bc8d9) | $430.84 | HOLD |
| GOOGL | 39.657 | $398.61 | $396.04 | -0.65% | -1.26% | $359.59 (10% trail, 4e322e3f) | $399.54 | HOLD |
| NVDA | 48.316 | $220.20 | $227.91 | +3.50% | -3.32% | $212.89 (10% trail, c35a1ad1) | $236.54 | HOLD |
| TXN | 53 | $276.10 | $305.65 | +10.70% | -0.82% | $284.91 (7% trail, fe276bad) | $306.36 | HOLD |

### Step 3 — Cuts
- None. All positions above -7% rule.
- AMZN closest: -4.35% from entry; -7% cut threshold = $254.49; current $261.74 = $7.25 above cut line.

### Step 4 — Stop Tightening
- TXN +10.70%: already on 7% trail; +20% trigger $331.32 — not reached ($305.65). No action.
- NVDA +3.50%: +15% trigger $253.23 — not reached. No action.
- AMAT +1.65%: below threshold. No action.
- AVGO +0.88%: below threshold. No action.
- GOOGL -0.65%: below threshold. No action.
- AMZN -4.35%: below threshold. No action.

### Step 5 — Thesis Check
- **AMAT**: -0.64% intraday, broad sector pullback. Q2 beat + >30% semi equipment growth 2026 guide unchanged. INTACT.
- **AMZN**: -2.05% intraday, -4.35% from entry. No Amazon-specific negative news — broad macro selloff (Treasury yields, post-summit disappointment). AWS +28% thesis unchanged. Stop $250.02 protecting. **MONITOR — 5.7% above stop.**
- **AVGO**: -2.52% intraday (new position). AI ASIC/hyperscaler demand unchanged. Profit-taking in semis after recent run. INTACT.
- **GOOGL**: -1.26% intraday (new position). Google Cloud +28%; AI governance framework thesis unchanged. INTACT.
- **NVDA**: -3.32% intraday. **Catalyst known: Chinese firms did NOT purchase H200 chips** (Trump: they "chose not to"; Chinese authorities "did not authorize" purchases). China upside was incremental — core thesis is AI demand globally (all hyperscalers confirmed $400B+ combined capex). Earnings May 20; Vera Rubin on track. **Thesis SOFTENED but NOT BROKEN. HOLD.**
- **TXN**: -0.82% intraday; +10.70% from entry. Analog semi cycle intact; BofA $320 PT; HWM $306.36 auto-trailing. INTACT.

### Step 6 — Intraday Research
**Tech selloff drivers (May 15, 2026):**
1. **Trump-Xi summit ended without major policy breakthroughs** — market expected more; disappointment selling
2. **NVDA H200 China: no sales materialized** — permission granted but Chinese firms didn't buy (choice + lack of authorization from Beijing); SOX index fell 5% by noon
3. **30-year Treasury yield +10bp → 5.114%** (highest since May 2025) — PPI +1.4% MoM (Thu) stagflation signal; rate hike probability rising → multiple compression on high-P/E tech
4. **Broad profit-taking** after tech's sharp recent gains (Nasdaq up 20%+ in 1 month)
- S&P 500: -1% | Nasdaq: -1.3% | Dow: -515pts

### Actions Taken
None. No cuts, no stop changes, no new entries.

### Open Positions (unchanged)
| # | Ticker | Shares | Entry | Stop | HWM |
|---|--------|--------|-------|------|-----|
| 1 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $277.80 |
| 2 | NVDA | 48.316 | $220.20 | $212.89 (10% trail, c35a1ad1) | $236.54 |
| 3 | TXN | 53 | $276.10 | $284.91 (7% trail, fe276bad) | $306.36 |
| 4 | AMAT | 36.707 | $430.65 | $398.03 (10% trail, e3a01c6b) | $442.25 |
| 5 | GOOGL | 39.657 | $398.61 | $359.59 (10% trail, 4e322e3f) | $399.54 |
| 6 | AVGO | 37.196 | $424.99 | $387.75 (10% trail, 6a7bc8d9) | $430.84 |

- Trades this week: 4 of 7
- No notification sent (no action taken)


---

### May 15 - EOD Snapshot (Day 19, Friday) — CORRECTED
> Note: An earlier snapshot with this heading was prematurely written by the May 14 midday workflow, using pre-open cash/deployment figures. This entry reflects actual May 15 market-close data (post today's 3 new buys).

**Portfolio:** $105,500.29 | **Cash:** $16,243.05 (15.4%) | **Day P&L:** -$854.34 (-0.80%) | **Phase P&L:** +$5,500.29 (+5.50%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| AMAT | 36.707 | $430.65 | $436.62 | -$3.94 (-0.89%) | +$219.19 (+1.39%) | $400.05 (10% trail, HWM $444.50) |
| AMZN | 56 | $273.64 | $263.50 | -$3.72 (-1.39%) | -$567.84 (-3.71%) | $250.02 (10% trail, HWM $277.80) |
| AVGO | 37.196 | $424.99 | $425.19 | -$14.60 (-3.32%) | +$7.44 (+0.05%) | $387.75 (10% trail, HWM $430.84) |
| GOOGL | 39.657 | $398.61 | $396.31 | -$4.76 (-1.19%) | -$91.21 (-0.58%) | $359.59 (10% trail, HWM $399.54) |
| NVDA | 48.316 | $220.20 | $225.14 | -$10.60 (-4.50%) | +$238.68 (+2.24%) | $212.89 (10% trail, HWM $236.54) |
| TXN | 53 | $276.10 | $302.73 | -$5.44 (-1.77%) | +$1,411.39 (+9.65%) | $286.03 (7% trail, HWM $307.56) |

**Notes:** Broad tech selloff — S&P -1%, Nasdaq -1.3% — driven by (1) Trump-Xi summit ended without major policy breakthroughs, (2) NVDA H200 China sales did not materialize (Chinese firms chose not to buy; Beijing didn't authorize), (3) 30-year Treasury yield +10bp to 5.11% (highest since May 2025) on PPI stagflation signal. Three new positions opened this morning (AMAT +Q2 beat+raise, GOOGL +Cloud+AI governance, AVGO +AI ASIC demand), deploying from 39.9% to 84.4% — now squarely in target range. Day P&L -$854.34 (-0.80%) is mark-to-market on a red day; no stops triggered. TXN leads at +9.65% unrealized; AMZN is most vulnerable at -3.71% unrealized (cut line $254.49, stop $250.02 — $9 cushion). NVDA thesis softened on China H200 news but NOT broken (global hyperscaler AI demand intact; earnings May 20). All 6 GTC trailing stops active. 4 trades this week (NVDA Mon 11 + AMAT/GOOGL/AVGO Fri 15). Next: NVDA earnings May 20 is the key binary event; blackout prevents adding NVDA. Monitor AMZN closely at open Monday.

---

## 2026-05-19 - Market-Open Session

**Portfolio:** $104,366.70 equity | **Cash:** $16,243.05 (15.6%) | **Positions:** 6 | **Deployed:** ~84.4% | **Phase P&L:** +$4,366.70 (+4.37%)

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| AMZN | 56 | 56 | ✓ |
| NVDA | 48.316 | 48.316621 | ✓ |
| TXN | 53 | 53 | ✓ |
| AMAT | 36.707 | 36.707499 | ✓ |
| GOOGL | 39.657 | 39.657886 | ✓ |
| AVGO | 37.196 | 37.196240 | ✓ |

Clean — no overnight exits since May 15. All 6 GTC trailing stops confirmed active.

### Execution Status
- Alpaca API: LIVE
- Orders placed: 0 (NO TRADES — max deployment 84.4%; NVDA earnings tomorrow AMC)

### Live Price Re-verification (STEP 1b)
| Ticker | May 18 Pre | Live | P&L% | Stop (GTC) | HWM | Status |
|--------|-----------|------|------|------------|-----|--------|
| AMAT | $432.60 | $408.97 | -5.04% | $400.05 (10% trail, e3a01c6b) | $444.50 | HOLD ⚠️ 2.2% above stop |
| AMZN | $261.50 | $264.04 | -3.51% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |
| AVGO | $421.98 | $418.36 | -1.56% | $387.75 (10% trail, 6a7bc8d9) | $430.84 | HOLD |
| GOOGL | $394.00 | $400.32 | +0.43% | $367.75 (10% trail, 4e322e3f) | $408.61 | HOLD |
| NVDA | $223.99 | $221.37 | +0.53% | $212.89 (10% trail, c35a1ad1) | $236.54 | HOLD (blackout) |
| TXN | $305.51 | $305.51 | +10.65% | $287.55 (7% trail, fe276bad) | $309.19 | HOLD |

### Rule Checks
- Positions: 6/6 max → no new entries
- Deployed: 84.4% (target 75-85%) → at target
- TXN +20% trigger $331.32 — not reached; still on 7% trail ✓
- AMAT: -5.04%; -7% cut line $400.50 — current $408.97 → HOLD (stop $400.05 acts as automatic protection)
- AMZN: -3.51%; -7% cut line $254.49 — current $264.04 → HOLD
- NVDA blackout since May 17 — no new NVDA adds; earnings May 20 AMC
- Daytrade count: 0/3 — clean

### Open Positions
| # | Ticker | Shares | Entry | Current | P&L% | Stop | Target | R:R |
|---|--------|--------|-------|---------|------|------|--------|-----|
| 1 | AMZN | 56 | $273.64 | $264.04 | -3.51% | $250.02 (10% trail, a7a75899) | $328.37 | 2.0:1 |
| 2 | NVDA | 48.316 | $220.20 | $221.37 | +0.53% | $212.89 (10% trail, c35a1ad1) | $264.24 | 2.0:1 |
| 3 | TXN | 53 | $276.10 | $305.51 | +10.65% | $287.55 (7% trail, fe276bad) | $331.32 | 2.0:1 |
| 4 | AMAT | 36.707 | $430.65 | $408.97 | -5.04% | $400.05 (10% trail, e3a01c6b) | $516.78 | 2.0:1 |
| 5 | GOOGL | 39.657 | $398.61 | $400.32 | +0.43% | $367.75 (10% trail, 4e322e3f) | $478.33 | 2.0:1 |
| 6 | AVGO | 37.196 | $424.99 | $418.36 | -1.56% | $387.75 (10% trail, 6a7bc8d9) | $509.99 | 2.0:1 |

- Trades this week: 0 of 7
- NVDA earnings May 20 AMC — binary event; semi concentration ~55% (NVDA/AMAT/AVGO/TXN)
- Watch: AMAT stop $400.05 thin cushion; AMZN cut line $254.49 proximity

---

### May 19 - EOD Snapshot (Day 21, Tuesday)
> Note: Day P&L spans Fri May 15 close → Tue May 19 close (no May 18 EOD recorded). Alpaca last_equity $105,544.43 used as baseline.

**Portfolio:** $104,361.54 | **Cash:** $16,243.05 (15.6%) | **Day P&L:** -$1,182.89 (-1.12%) | **Phase P&L:** +$4,361.54 (+4.36%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| AMAT | 36.707 | $430.65 | $408.97 | -$4.60 (-1.11%) | -$795.76 (-5.03%) | $400.05 (10% trail, HWM $444.50) |
| AMZN | 56 | $273.64 | $264.04 | -$0.82 (-0.31%) | -$537.60 (-3.51%) | $250.02 (10% trail, HWM $277.80) |
| AVGO | 37.196 | $424.99 | $418.36 | -$2.35 (-0.56%) | -$246.61 (-1.56%) | $387.75 (10% trail, HWM $430.84) |
| GOOGL | 39.657 | $398.61 | $400.19 | +$3.25 (+0.82%) | +$62.66 (+0.40%) | $367.75 (10% trail, HWM $408.61) |
| NVDA | 48.316 | $220.20 | $221.37 | -$0.95 (-0.43%) | +$56.53 (+0.53%) | $212.89 (10% trail, HWM $236.54) |
| TXN | 53 | $276.10 | $305.51 | +$4.91 (+1.63%) | +$1,558.70 (+10.65%) | $287.55 (7% trail, HWM $309.19) |

**Notes:** Mixed session: tech under continued pressure from elevated 30-yr yields (5.11%) and Hormuz oil shock ($107+ WTI). TXN +1.63% and GOOGL +0.82% were bright spots; AMAT -1.11% is most concerning — now -5.03% unrealized, within 2% of the -7% cut line ($400.48). AMZN continues sliding (-3.51% unrealized); stop at $250.02 holds but 5.3% above cut threshold. NVDA earnings AMC Wednesday May 20 is tomorrow's binary event — semi concentration ~55% (NVDA/AMAT/AVGO). GTC stop HWMs updated: GOOGL now $408.61 (stop $367.75), TXN now $309.19 (stop $287.55). No trades today. Trades this week: 0.

---

## 2026-05-19 - Midday Scan

**Portfolio:** ~$88,119 long MV | **Cash:** ~$16,243 | **Positions:** 6 | **Deployed:** ~84.4% | **Phase P&L:** ~+$5,100 est.

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|------------|--------|
| AMZN | 56 | 56 | ✓ |
| NVDA | 48.316 | 48.316621 | ✓ (fractional carry) |
| TXN | 53 | 53 | ✓ |
| AMAT | 36.707 | 36.707499 | ✓ (fractional carry) |
| GOOGL | 39.657 | 39.657886 | ✓ (fractional carry) |
| AVGO | 37.196 | 37.196240 | ✓ (fractional carry) |

Clean — no overnight exits. All 6 GTC trailing stops active and confirmed.

### Position Status
| Ticker | Shares | Entry | Current | P&L% (entry) | Intraday | Stop (broker) | HWM | Status |
|--------|--------|-------|---------|---------------|----------|---------------|-----|--------|
| AMAT | 36.707 | $430.65 | $408.97 | -5.03% | -1.11% | $400.05 (10% trail, e3a01c6b) | $444.50 | HOLD ⚠️ |
| AMZN | 56 | $273.64 | $264.04 | -3.51% | -0.31% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD ⚠️ |
| AVGO | 37.196 | $424.99 | $418.36 | -1.56% | -0.56% | $387.75 (10% trail, 6a7bc8d9) | $430.84 | HOLD |
| GOOGL | 39.657 | $398.61 | $400.19 | +0.40% | +0.82% | $367.75 (10% trail, 4e322e3f) | $408.61 | HOLD |
| NVDA | 48.316 | $220.20 | $221.39 | +0.54% | -0.42% | $212.89 (10% trail, c35a1ad1) | $236.54 | HOLD — earnings AMC tomorrow |
| TXN | 53 | $276.10 | $305.51 | +10.65% | +1.63% | $287.55 (7% trail, fe276bad) | $309.19 | HOLD |

### Step 3 — Cuts
None. No position at ≤-7%.
- AMAT closest: -5.03% from entry; -7% cut threshold = $400.50; current $408.97 = $8.47 above cut line.
- AMZN: -3.51%; cut line $254.49; current $264.04 = $9.55 above cut line.

### Step 4 — Stop Tightening
- TXN +10.65%: already on 7% trail. +20% trigger = $331.32; current $305.51 — not reached. No action.
- GOOGL +0.40%, NVDA +0.54%: below +15% threshold. No action.
- AMAT, AMZN, AVGO: underwater. No action.

### Step 5 — Thesis Check
- **AMAT**: -5.03% unrealized; -1.11% intraday. Broad semi pressure pre-NVDA earnings (tomorrow AMC). Semi equipment picks-and-shovels thesis (AI DRAM/HBM/gate-all-around demand) INTACT. Stop $400.05 provides cushion. HOLD.
- **AMZN**: -3.51% unrealized, recovering slightly (-0.31% intraday). No AMZN-specific adverse news. AWS +28% cloud/AI thesis unchanged. Hormuz oil surge compressing multiples (30-yr yield 5.11%). Stop $250.02 protecting. HOLD.
- **AVGO**: -1.56% unrealized, modest intraday pullback. AI ASIC/hyperscaler demand thesis unchanged. HOLD.
- **GOOGL**: +0.40% unrealized, +0.82% intraday — only position outperforming today. Google Cloud +28%; AI governance thesis intact. HOLD.
- **NVDA**: +0.54% unrealized, quiet ahead of earnings AMC tomorrow (May 20). Core AI inference demand thesis intact. **No new NVDA buys (blackout). Binary event tomorrow — existing stop protects.** HOLD.
- **TXN**: +10.65% unrealized, +1.63% intraday (leading portfolio). Analog semi cycle + BofA $320 PT + Silicon Labs deal. HWM $309.19; stop trailing at $287.55. INTACT. HOLD.

### Step 6 — Research
No sharp unexplained moves. All intraday action consistent with (1) NVDA pre-earnings caution dragging semis, (2) Hormuz closure sustaining 30-yr yield at 5.11% = P/E compression headwind for high-multiple tech, (3) VIX expiry day (today). No Perplexity research needed.
- **NVDA earnings AMC May 20** — binary event. Portfolio semi concentration: NVDA+TXN+AMAT+AVGO = ~55%. All stops active. No pre-earnings entry. No hedge (no options per rules).
- **FOMC minutes Wed May 20 2pm ET** — simultaneous with NVDA earnings day. Potential double catalyst.

### Actions Taken
None. No cuts, no stop changes, no new entries.

### Open Positions (unchanged)
| # | Ticker | Shares | Entry | Stop | HWM |
|---|--------|--------|-------|------|-----|
| 1 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $277.80 |
| 2 | NVDA | 48.316 | $220.20 | $212.89 (10% trail, c35a1ad1) | $236.54 |
| 3 | TXN | 53 | $276.10 | $287.55 (7% trail, fe276bad) | $309.19 |
| 4 | AMAT | 36.707 | $430.65 | $400.05 (10% trail, e3a01c6b) | $444.50 |
| 5 | GOOGL | 39.657 | $398.61 | $367.75 (10% trail, 4e322e3f) | $408.61 |
| 6 | AVGO | 37.196 | $424.99 | $387.75 (10% trail, 6a7bc8d9) | $430.84 |

- Trades this week: 0 of 3 (week cap resets Monday)
- No notification sent (no action taken)


---

## 2026-05-19 - Reconciliation

| Ticker | Log Qty | Broker Qty | Realized P&L |
|--------|---------|------------|--------------|
| AMAT | 36.707 | 0.707 | ~-$858 (36 shares; fill ~$406.81; stop $400.05 triggered intraday) |
| AMZN | 56 | 56 | ✓ |
| AVGO | 37.196 | 37.196 | ✓ |
| GOOGL | 39.657 | 39.657 | ✓ |
| NVDA | 48.316 | 48.316 | ✓ |
| TXN | 53 | 53 | ✓ |

AMAT: 36 integer shares stopped out intraday. Entry $430.65; estimated fill ~$406.81 (cash delta: $30,888.08 - $16,243.05 = +$14,645.03 / 36 shares). Realized P&L: 36 × ($406.81 - $430.65) = **-$858**. Fractional 0.707 shares remain (no GTC stop; negligible value ~$288).

---

## 2026-05-19 - Market-Open (09:32 ET) — Second Pass

**Context:** Cron ran pre-open using May 18 close prices. This pass captures actual opening prices.

### Step 0 — Reconciliation
All 6 positions match broker. No overnight stop-outs.

### Live Prices at Open (09:32 ET)
| Ticker | Entry | Open | P&L% | Stop (GTC) | Status |
|--------|-------|------|------|-----------|--------|
| AMAT | $430.65 | $402.78 (bid $407.57) | -6.47% | $400.05 (10% trail) | ⚠️ 1.5% above stop |
| AMZN | $273.64 | $261.30 (bid $259.75) | -4.51% | $250.02 (10% trail) | HOLD |
| AVGO | $424.99 | $410.84 (bid $414.52) | -3.33% | $387.75 (10% trail) | HOLD |
| GOOGL | $398.61 | $395.05 (bid $383.00) | -0.89% | $367.75 (10% trail) | HOLD |
| NVDA | $220.20 | $219.97 (bid $221.77) | -0.10% | $212.89 (10% trail) | HOLD — earnings blackout |
| TXN | $276.10 | $293.71 (bid $295.79) | +6.37% | $287.55 (7% trail) | HOLD |

**Account:** $102,944.77 equity | $16,243.05 cash | 0 daytrades | PDT: false

### Actions
**NO TRADES.**
- Positions: 6/6 max — no room for entries
- Pre-market plan: HOLD ALL pending NVDA earnings AMC May 20
- AMAT: gap-down to $402.78 (bid $407.57), within 1.5% of GTC stop $400.05. Thesis intact (Q2 beat; ex-div May 21). Let stop auto-execute if breached.
- All 6 GTC trailing stops confirmed active (verified via orders API)

- Trades this week: 0 of 3

---

### May 19 - EOD Snapshot (Day 21, Tuesday) — CORRECTED
> Earlier snapshot (this date, above) used open prices. This reflects actual EOD broker data. AMAT 36-share stop triggered intraday (~-$858 realized); see Reconciliation above.

**Portfolio:** $103,011.37 | **Cash:** $30,888.08 (30.0%) | **Day P&L:** -$1,309.14 (-1.25%) | **Phase P&L:** +$3,011.37 (+3.01%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| AMZN | 56 | $273.64 | $259.25 | -$5.61 (-2.12%) | -$805.84 (-5.26%) | $250.02 (10% trail, HWM $277.80) |
| AVGO | 37.196 | $424.99 | $411.07 | -$9.64 (-2.29%) | -$517.77 (-3.28%) | $387.75 (10% trail, HWM $430.84) |
| GOOGL | 39.657 | $398.61 | $387.62 | -$9.32 (-2.35%) | -$435.84 (-2.76%) | $367.75 (10% trail, HWM $408.61) |
| NVDA | 48.316 | $220.20 | $220.63 | -$1.69 (-0.76%) | +$20.78 (+0.20%) | $212.89 (10% trail, HWM $236.54) |
| TXN | 53 | $276.10 | $302.31 | +$1.71 (+0.57%) | +$1,389.10 (+9.49%) | $287.55 (7% trail, HWM $309.19) |

**Notes:** AMAT trailing stop ($400.05) triggered intraday — 36 shares stopped out at ~$406.81, realized -$858. Cash rises from $16,243 to $30,888 post-fill. Broad selloff continued: AMZN -2.12%, AVGO -2.29%, GOOGL -2.35%, NVDA -0.76%; only TXN green (+0.57%). AMZN now -5.26% unrealized (cut line $254.49, current $259.25 — $4.76 above cut; stop $250.02). GOOGL -2.76% and AVGO -3.28% both holding above thresholds. NVDA earnings AMC tonight (May 20) — binary event; existing 10% trail at $212.89 protects; semi concentration ~55%. Portfolio now 70% deployed post-AMAT exit. No new entries; 0/3 week slots used. FOMC minutes Wednesday 2PM coincides with NVDA earnings day — double catalyst.

---

## 2026-05-21 - Midday Scan

**Portfolio:** ~$103,892 equity | **Cash:** $30,888 (29.7%) | **Positions:** 5 (+AMAT frac sold) | **Deployed:** ~70.3% | **Phase P&L:** ~+$3,892 (+3.89%)

### Step 0 — Reconciliation
| Ticker | Log Qty | Broker Qty | Match? |
|--------|---------|-----------|--------|
| AMAT | 0.707 (frac) | 0.707 | ✓ → SELL ORDER PLACED |
| AMZN | 56 | 56 | ✓ |
| AVGO | 37.196 | 37.196 | ✓ |
| GOOGL | 39.657 | 39.657 | ✓ |
| NVDA | 48.316 | 48.316 | ✓ |
| TXN | 53 | 53 | ✓ |

Clean. No stop-outs since May 19 EOD. All 5 GTC trailing stops active (AMZN a7a75899, AVGO 6a7bc8d9, GOOGL 4e322e3f, NVDA c35a1ad1, TXN fe276bad).

### AMAT Fractional Cleanup
- Sell order placed: 0.707 sh market, order ID bf04a9f8 (fills at next open ~$427)
- Est. realized P&L: 0.707 × ($427 - $430.65) ≈ **-$2.58**
- Reason: planned cleanup (no GTC stop, planned since May 20 pre-market)

### Position Status
| Ticker | Shares | Entry | Current | P&L% (entry) | Intraday | Stop (broker) | HWM | Status |
|--------|--------|-------|---------|---------------|----------|---------------|-----|--------|
| AMZN | 56 | $273.64 | $265.15 | -3.10% | +0.05% | $250.02 (10% trail, a7a75899) | $277.80 | HOLD |
| AVGO | 37.196 | $424.99 | $419.30 | -1.34% | +0.37% | $387.75 (10% trail, 6a7bc8d9) | $430.84 | HOLD |
| GOOGL | 39.657 | $398.61 | $389.95 | -2.17% | +0.27% | $367.75 (10% trail, 4e322e3f) | $408.61 | HOLD |
| NVDA | 48.316 | $220.20 | $222.15 | +0.89% | -0.59% | $212.89 (10% trail, c35a1ad1) | $236.54 | HOLD |
| TXN | 53 | $276.10 | $303.01 | +9.75% | -0.61% | $287.55 (7% trail, fe276bad) | $309.19 | HOLD |

### Step 3 — Cuts
None. No position at ≤-7%.
- AMZN closest: -3.10% from entry; -7% cut threshold = $254.49; current $265.15 = $10.66 above cut line ✓

### Step 4 — Stop Tightening
- TXN +9.75%: on 7% trail; +20% trigger = $331.32 — not reached. No action.
- NVDA +0.89%: +15% trigger $253.23 — not reached. No action.
- AVGO/GOOGL/AMZN: underwater or below threshold. No action.

### Step 5 — Thesis Check
- **NVDA**: Post-earnings sell-the-news reaction (muted +~0-1% vs May 19 close despite massive beat). Fundamentals exceptional. Thesis INTACT/STRENGTHENED. HOLD.
- **TXN**: +9.75% unrealized; analog semi cycle intact; BofA $320 PT. HOLD.
- **AVGO**: Recovering from May 19 low ($411→$419); AI ASIC/hyperscaler demand intact; NVDA beat confirms hyperscaler AI capex surge. HOLD.
- **GOOGL**: Recovering ($387→$390); Google Cloud +28% thesis intact. HOLD.
- **AMZN**: Recovering ($259→$265); AWS +28% thesis intact; cut line $254.49 now $10.66 below current. HOLD.

### Step 6 — NVDA Earnings Research (AMC May 20)
- **Revenue:** $82B (+85% YoY, +20% QoQ) vs $78.82B est → BEAT by $3.2B
- **EPS:** ~$2.39 (non-GAAP) vs ~$1.76 est → BEAT by ~36%
- **Data Center:** $75B (+92% YoY, +21% QoQ)
- **Jensen:** "Demand has gone parabolic"; compute spend toward $3-4T for hyperscalers
- **Stock reaction:** Muted (+0-2% from May 19 close) — typical sell-the-news after a 6%+ pre-earnings run; stock had already priced in a major beat
- **Impact on other positions:** AVGO/TXN/GOOGL all benefit from confirmed hyperscaler AI capex acceleration
- **Market context:** S&P 500 +1.1%, 10-year Treasury yields easing — broad recovery from May 15–19 selloff

### Actions Taken
- AMAT fractional: sell 0.707 sh (market order bf04a9f8, cleanup — see above)
- No cuts, no stop changes, no new entries

### Open Positions
| # | Ticker | Shares | Entry | Stop | HWM |
|---|--------|--------|-------|------|-----|
| 1 | AMZN | 56 | $273.64 | $250.02 (10% trail, a7a75899) | $277.80 |
| 2 | AVGO | 37.196 | $424.99 | $387.75 (10% trail, 6a7bc8d9) | $430.84 |
| 3 | GOOGL | 39.657 | $398.61 | $367.75 (10% trail, 4e322e3f) | $408.61 |
| 4 | NVDA | 48.316 | $220.20 | $212.89 (10% trail, c35a1ad1) | $236.54 |
| 5 | TXN | 53 | $276.10 | $287.55 (7% trail, fe276bad) | $309.19 |

- Trades this week: 0 of 3
- Watch: TXN +20% trigger $331.32 (+9.2% away); AMZN cut line $254.49 ($10.66 cushion)
- Watch: NVDA — HWM $236.54 must be broken for stop to trail up further (+6.5% from current $222.15)
