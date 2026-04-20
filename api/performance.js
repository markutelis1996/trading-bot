// Vercel serverless function: returns portfolio equity history + SPY benchmark.
// GET /api/performance?period=1M (or 1W, 1M, 3M, 6M, 1Y, ALL)

const ALPACA_BASE = 'https://paper-api.alpaca.markets/v2';
const ALPACA_DATA = 'https://data.alpaca.markets/v2';

export default async function handler(req, res) {
  res.setHeader('Cache-Control', 'public, max-age=60');

  const period = req.query.period || '1M';
  const timeframe = period === '1W' ? '1H' : '1D';

  const headers = {
    'APCA-API-KEY-ID': process.env.ALPACA_API_KEY,
    'APCA-API-SECRET-KEY': process.env.ALPACA_SECRET_KEY,
  };

  if (!process.env.ALPACA_API_KEY || !process.env.ALPACA_SECRET_KEY) {
    return res.status(500).json({
      error: 'Missing Alpaca credentials in Vercel env vars (ALPACA_API_KEY, ALPACA_SECRET_KEY)',
    });
  }

  try {
    const portfolioRes = await fetch(
      `${ALPACA_BASE}/account/portfolio/history?period=${period}&timeframe=${timeframe}`,
      { headers },
    );
    if (!portfolioRes.ok) {
      const text = await portfolioRes.text();
      return res.status(portfolioRes.status).json({ error: 'Alpaca portfolio error', detail: text });
    }
    const portfolio = await portfolioRes.json();

    const accountRes = await fetch(`${ALPACA_BASE}/account`, { headers });
    const account = accountRes.ok ? await accountRes.json() : null;

    const positionsRes = await fetch(`${ALPACA_BASE}/positions`, { headers });
    const positions = positionsRes.ok ? await positionsRes.json() : [];

    const start = portfolio.timestamp?.[0]
      ? new Date(portfolio.timestamp[0] * 1000).toISOString()
      : null;
    const end = new Date().toISOString();

    let spy = null;
    if (start) {
      const tf = timeframe === '1H' ? '1Hour' : '1Day';
      const spyRes = await fetch(
        `${ALPACA_DATA}/stocks/SPY/bars?timeframe=${tf}&start=${start}&end=${end}&limit=10000&adjustment=all`,
        { headers },
      );
      if (spyRes.ok) {
        const spyJson = await spyRes.json();
        spy = (spyJson.bars || []).map((b) => ({ t: b.t, c: b.c }));
      }
    }

    return res.status(200).json({
      portfolio: {
        timestamps: portfolio.timestamp || [],
        equity: portfolio.equity || [],
        profit_loss: portfolio.profit_loss || [],
        profit_loss_pct: portfolio.profit_loss_pct || [],
        base_value: portfolio.base_value || null,
      },
      spy: spy,
      account: account
        ? {
            equity: account.equity,
            cash: account.cash,
            buying_power: account.buying_power,
            status: account.status,
            daytrade_count: account.daytrade_count,
          }
        : null,
      positions: positions.map((p) => ({
        symbol: p.symbol,
        qty: p.qty,
        avg_entry_price: p.avg_entry_price,
        current_price: p.current_price,
        market_value: p.market_value,
        unrealized_pl: p.unrealized_pl,
        unrealized_plpc: p.unrealized_plpc,
      })),
      period,
      generated_at: end,
    });
  } catch (err) {
    return res.status(500).json({ error: 'Server error', detail: String(err) });
  }
}
