// Vercel serverless proxy for Alpaca API — bypass Anthropic cloud IP block.
// Called by scripts/alpaca.sh from trading bot cloud routines.
// Auth via shared secret (BOT_AUTH_TOKEN env var).

const ALPACA_BASE = 'https://paper-api.alpaca.markets';
const ALPACA_DATA = 'https://data.alpaca.markets';

export default async function handler(req, res) {
  const authHeader = req.headers['x-bot-auth'] || '';
  if (!process.env.BOT_AUTH_TOKEN || authHeader !== process.env.BOT_AUTH_TOKEN) {
    return res.status(401).json({ error: 'unauthorized' });
  }

  if (!process.env.ALPACA_API_KEY || !process.env.ALPACA_SECRET_KEY) {
    return res.status(500).json({ error: 'Missing Alpaca credentials in Vercel env' });
  }

  const path = req.query.path || '';
  const isData = req.query.data === '1';
  const base = isData ? ALPACA_DATA : ALPACA_BASE;
  const url = `${base}${path.startsWith('/') ? path : '/' + path}`;

  const headers = {
    'APCA-API-KEY-ID': process.env.ALPACA_API_KEY,
    'APCA-API-SECRET-KEY': process.env.ALPACA_SECRET_KEY,
  };

  try {
    const fetchOpts = { method: req.method, headers };
    if (req.method === 'POST' || req.method === 'PATCH' || req.method === 'PUT') {
      headers['Content-Type'] = 'application/json';
      fetchOpts.body = typeof req.body === 'string' ? req.body : JSON.stringify(req.body);
    }
    const r = await fetch(url, fetchOpts);
    const text = await r.text();
    res.status(r.status);
    try {
      return res.json(JSON.parse(text));
    } catch {
      return res.send(text);
    }
  } catch (err) {
    return res.status(500).json({ error: 'proxy_error', detail: String(err) });
  }
}
