# Cloud Migration Checklist

Migracija iš lokalaus macOS `launchd` į Claude.com Cloud Routines. Tikslas: Mac gali būti išjungtas, viskas vykdoma Anthropic infrastructure'oje.

## Pre-requisites (vienkartiniai)

### 1. Claude GitHub App įdiegimas

Patikrink ar jau įdiegta:
- Eik į https://github.com/settings/installations
- Ieškok "Claude" tarp installed apps
- Jei nematai → eik į https://github.com/apps/claude → "Install" → pasirink TIK `markutelis1996/trading-bot` repo (least-privilege)

### 2. Verify memory baseline

```bash
cd ~/trading-agent && tail -5 memory/TRADE-LOG.md
```
Turi matyti naujausią EOD snapshot (Apr 29 turėtų būti). Jei tuščia — bot turės baseline'o problemų.

---

## 5 routines setup (Claude.com dashboard)

Eik į claude.com → Settings → Routines (arba Scheduled Agents) → New Routine.

### Bendri nustatymai KIEKVIENAI routine

- **Repo:** `markutelis1996/trading-bot`
- **Branch:** `main`
- **Timezone:** `America/Chicago`
- **Allow unrestricted branch pushes:** ✅ TURI BŪTI ON
  - Be šito `git push` SILENTLY FAILS proxy errore
  - Tai #1 priežastis kodėl pirmieji setups neveikia
- **Env vars:** žr. žemiau (visi 9 raktai — kopijuoti reikšmes iš `.env` failo)

### Routine 1 — pre-market

| Field | Value |
|-------|-------|
| Name | `Trading bot — pre-market` |
| Cron | `0 6 * * 1-5` |
| Prompt | Paste verbatim iš `routines/pre-market.md` (tik fenced code block) |

### Routine 2 — market-open

| Field | Value |
|-------|-------|
| Name | `Trading bot — market-open` |
| Cron | `30 8 * * 1-5` |
| Prompt | Paste verbatim iš `routines/market-open.md` |

### Routine 3 — midday

| Field | Value |
|-------|-------|
| Name | `Trading bot — midday` |
| Cron | `0 12 * * 1-5` |
| Prompt | Paste verbatim iš `routines/midday.md` |

### Routine 4 — daily-summary

| Field | Value |
|-------|-------|
| Name | `Trading bot — daily-summary` |
| Cron | `0 15 * * 1-5` |
| Prompt | Paste verbatim iš `routines/daily-summary.md` |

### Routine 5 — weekly-review

| Field | Value |
|-------|-------|
| Name | `Trading bot — weekly-review` |
| Cron | `0 16 * * 5` |
| Prompt | Paste verbatim iš `routines/weekly-review.md` |

---

## Env vars (kiekvienai routine — 9 raktai)

Kopijuoti reikšmes iš `~/trading-agent/.env`:

| Key | Notes |
|-----|-------|
| `ALPACA_API_KEY` | Required |
| `ALPACA_SECRET_KEY` | Required |
| `ALPACA_ENDPOINT` | `https://paper-api.alpaca.markets/v2` (paper trading) |
| `ALPACA_DATA_ENDPOINT` | `https://data.alpaca.markets/v2` |
| `CLICKUP_API_KEY` | Required (notifications) |
| `CLICKUP_WORKSPACE_ID` | Required |
| `CLICKUP_CHANNEL_ID` | Required |
| `TAVILY_API_KEY` | Required (research) |
| `PERPLEXITY_API_KEY` | Optional (paliek tuščią — fallback į Tavily/WebSearch) |

Pro tip: Claude.com dashboard'e dažniausiai galima sukurti env vars "preset" arba "shared secrets" — sukuri vieną kartą, prijungi prie visų 5 routines. Jei nėra — kopijuoji 5x.

---

## Smoke test (po setup'o)

Kiekvienai routine spausti **Run Now** (NE laukti cron):

1. Stebėti routine logs dashboard'e — turi pasibaigti success
2. Patikrinti Git po ~2 min:
   ```bash
   cd ~/trading-agent && git pull && git log --oneline -3
   ```
   Turėtų pasirodyti naujas commit (pvz. `pre-market research 2026-04-29`)
3. Patikrinti memory file content:
   ```bash
   tail -50 memory/RESEARCH-LOG.md
   ```
4. ClickUp kanale — atėjo notification (jei routine reikalavo siųsti)

### Jei routine fail'ina

Dažniausi gedimai:
- **Missing env var** → patikrink ar visi 9 raktai pridėti šiai routine
- **Git push fails** → "Allow unrestricted branch pushes" YRA toggle ON?
- **Claude GitHub App nepasiekia repo** → eik į github.com/settings/installations → patikrink kad `trading-bot` yra repository access'e
- **Cron neveikia** → patikrink TZ pasirinktas `America/Chicago` (ne UTC)

---

## Po sėkmingo setup'o

### Šiandien Apr 29

- ✅ Visos 5 routines sukurtos
- ✅ Visos sėkmingai įvykdytos per "Run Now"
- ✅ Visi commit'ai sėkmingai push'inti į `main`

### Apr 30 - May 1 (observation period)

Lokalus `launchd` LIEKA aktyvus paralelai. Stebim ar cloud routines pačios šaudo pagal cron:

```bash
cd ~/trading-agent && git log --since="2026-04-29" --pretty=format:"%ai %s"
```

Tikimasi commit'ai (Vilnius EEST laiku, vasara = UTC+3, CT = UTC-5):
- Pre-market: ~14:00 EEST (6:00 CT)
- Market-open: ~16:30 EEST (8:30 CT)
- Midday: ~20:00 EEST (12:00 CT)
- Daily-summary: ~23:00 EEST (15:00 CT)
- Weekly-review: Penkt ~24:00 EEST (16:00 CT)

### May 4+ (cutover — kai cloud routines patikrintos)

Disable lokalus launchd:

```bash
launchctl unload ~/Library/LaunchAgents/lt.trading-bot.pre-market.plist
launchctl unload ~/Library/LaunchAgents/lt.trading-bot.market-open.plist
launchctl unload ~/Library/LaunchAgents/lt.trading-bot.midday.plist
launchctl unload ~/Library/LaunchAgents/lt.trading-bot.daily-summary.plist
launchctl unload ~/Library/LaunchAgents/lt.trading-bot.weekly-review.plist
launchctl unload ~/Library/LaunchAgents/lt.trading-bot.caffeinate.plist
```

Verify:
```bash
launchctl list | grep trading-bot
# Tuščias output = disabled
```

`.plist` failai LIEKA disko (backup). Re-enable kada nori per `launchctl load`.

---

## Rollback

Jei cloud routines fail'ina ir reikia greitai grįžti į lokalų:

```bash
launchctl load ~/Library/LaunchAgents/lt.trading-bot.caffeinate.plist
launchctl load ~/Library/LaunchAgents/lt.trading-bot.pre-market.plist
launchctl load ~/Library/LaunchAgents/lt.trading-bot.market-open.plist
launchctl load ~/Library/LaunchAgents/lt.trading-bot.midday.plist
launchctl load ~/Library/LaunchAgents/lt.trading-bot.daily-summary.plist
launchctl load ~/Library/LaunchAgents/lt.trading-bot.weekly-review.plist
```

Ir cloud routines dashboard'e — pause arba delete.
