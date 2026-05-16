# Gift Registry

A personal birthday wishlist website. Nathan adds items via Claude dispatch; mum visits the public site to browse.

## Stack
- **Data:** `site/data/gifts.json` — all gift data, edited by Claude dispatch
- **Frontend:** `site/index.html` — static page, fetches and renders the JSON, no build step
- **Server:** Python HTTP server on MacBook, exposed via Tailscale Funnel

## Running locally
```bash
chmod +x serve.sh
./serve.sh
```
Visit http://localhost:8080

## Public access via Tailscale Funnel
```bash
tailscale funnel 8080
```
This gives a stable public HTTPS URL (`https://<machine>.<tailnet>.ts.net`) you can point a custom domain at. Keep `serve.sh` running alongside it.

## Adding items
Use Claude dispatch on Android. Describe what you want — Claude researches Australian retailers, price in AUD, Perth availability, lead time — and writes the entry to `site/data/gifts.json`. See `CLAUDE.md` for the full dispatch prompt.

## Future: GitHub Pages
Push to GitHub, enable Pages from the `site/` folder, point domain at it. Claude dispatch would then commit + push instead of editing files directly. Better uptime, good for CV visibility.

## CV angle
Demonstrates: AI-assisted data entry workflow, JSON-driven static site, Tailscale networking, Claude dispatch integration.
