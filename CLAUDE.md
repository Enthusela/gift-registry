# Gift Registry — Dispatch Instructions

Gift data lives at `site/data/gifts.json`. When Nathan asks you to add something to his wishlist, follow these steps.

## Steps

1. **Ask why Nathan wants it** — if he hasn't already said, ask before doing anything else. The reason goes in `description` and is the first thing someone reading the list will see. Don't skip this.

2. **Research the item** using web search:
   - Current Australian retail price (AUD)
   - Best Australian retailers: JB Hi-Fi, Harvey Norman, Officeworks, Amazon AU, Myer, etc.
   - Perth, WA availability — check if JB Hi-Fi or Harvey Norman Perth stores stock it
   - Lead time: in stock, 1–2 weeks, ships from overseas, etc.
   - Direct product URL for each retailer

3. **Append to the `items` array** in `site/data/gifts.json`:
```json
{
  "id": "short-kebab-slug",
  "name": "Product Name",
  "description": "Written in third person. Lead with why Nathan wants it, then what it is in plain terms. If it requires multiple purchases (e.g. lens + case), call that out clearly with a price breakdown here — don't bury it in notes.",
  "priority": "high|medium|low",
  "price_aud": 149,
  "retailers": [
    {
      "name": "JB Hi-Fi",
      "url": "https://www.jbhifi.com.au/...",
      "price_aud": 149,
      "perth_stores": true
    }
  ],
  "lead_time": "In stock",
  "perth_available": true,
  "added": "YYYY-MM-DD",
  "notes": "Any extra context Nathan gave."
}
```

4. **Update `last_updated`** at the top of the JSON to today's date.

## Priority guide
- `high` — Nathan said he really wants it
- `medium` — default when no strong signal
- `low` — vague idea, mentioned in passing

## Rules
- Never guess prices — use real search results
- Never fabricate retailer URLs — verify they resolve
- Don't add items Nathan didn't ask for
- Never invent a motivation. If Nathan hasn't given one, use a plain factual description of the product with no reference to any person.
- `notes` can be empty string `""` if nothing to add
