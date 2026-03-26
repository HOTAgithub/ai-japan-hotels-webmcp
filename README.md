<div align="center">

# 🇯🇵 AI Japan Hotels

### The world's first **WebMCP-native** hotel booking site.
### Ask any AI to book your Japan trip — it just works.

[![Live Demo](https://img.shields.io/badge/🌐-Live_Demo-blue?style=for-the-badge&logo=cloudflare&logoColor=white)](https://ai-japan-hotels.pages.dev/)
[![WebMCP](https://img.shields.io/badge/WebMCP-Chrome_146+-9cf?style=flat-square&logo=googlechrome)](https://developer.chrome.com/docs/web-apis/model-context)
[![323 Hotels](https://img.shields.io/badge/🏨-323_Hotels-orange?style=flat-square)](#-covered-regions)
[![4 Languages](https://img.shields.io/badge/🗣️-EN_JA_KO_ZH--TW-green?style=flat-square)](#-supported-languages)

<img src="https://images.unsplash.com/photo-1528164344705-47542687000d?w=800&h=400&fit=crop" alt="Okinawa Beach" width="800">

**Try it now** → Open [ai-japan-hotels.pages.dev](https://ai-japan-hotels.pages.dev/) and ask Claude:
> *"Find me a hotel in Kyoto under ¥30,000 for 2 guests"*

</div>

---

## 🤯 What is this?

A single HTML file. No build step. No backend. No API key needed.

Just open the page and **any AI agent that supports WebMCP** (Chrome 146+) can:
- 🔍 Search 323 hotels across 10 regions
- 💰 Compare prices in JPY & USD
- 🌏 Return results in the visitor's language
- 🔗 Provide direct booking links

This is what the **AI-native web** looks like.

## 🎮 How it works

```
You:  "Find cheap hotels in Osaka"
  ↓
AI:  [Discovers searchJapaneseHotels tool via WebMCP]
  ↓
AI:  [Calls tool with location="Osaka", maxPrice=10000]
  ↓
AI:  "Found 8 budget hotels in Osaka:
      Hotel Business Mercury Inn — ¥6,475/night ⭐3.5
      Confesta Inn — ¥5,940/night ⭐3.5
      ..."
  ↓
You:  "Book the first one!" → [Clicks booking link]
```

No API integration. No OAuth. The AI agent reads the page, discovers the tool, and executes it — all client-side.

## 🗾 Covered Regions

| Region | Vibe | Hotels |
|--------|------|--------|
| 🗼 **Tokyo** | Neon streets, Shibuya crossing, ancient temples | 30 |
| ⛩️ **Kyoto** | Golden pavilion, bamboo groves, geisha district | 30 |
| 🏯 **Osaka** | Street food capital, Dotonbori neon, castle | 30 |
| ❄️ **Hokkaido** | Powder snow, blue ponds, hot springs | 30 |
| 🏖️ **Okinawa** | Crystal waters, coral reefs, tropical islands | 30 |
| 🌉 **Yokohama** | Chinatown, port skyline, ramen street | 30 |
| ☮️ **Hiroshima** | Peace Memorial, Miyajima floating torii | 30 |
| 🍜 **Fukuoka** | Yatai stalls, Canal City, Hakata tower | 30 |
| 🏰 **Nagoya** | Castle, central hub, hidden gems | 30 |
| 🗻 **Mount Fuji** | Kawaguchiko, ryokans, luxury onsen resorts | 53 |

## 🌏 Supported Languages

| Language | Speakers | Coverage |
|----------|----------|----------|
| 🇺🇸 English | 1.5B | Full UI + hotel names/descriptions |
| 🇯🇵 日本語 | 125M | Full UI + hotel names/descriptions |
| 🇰🇷 한국어 | 80M | Full UI + hotel names/descriptions |
| 🇹🇼 繁體中文 | 50M | Full UI + hotel names/descriptions |

Language detection is automatic. Hotels are shown in the visitor's language with proper translations — not machine-translated on the fly, but pre-translated for accuracy.

## 🛠️ Tech Stack

```
index.html    → 2200 lines. Zero dependencies. One file.
hotels.json   → 323 hotels, 4 languages, affiliate links
```

- **WebMCP** — `navigator.modelContext.registerTool()` for AI agent discovery
- **Tailwind CSS** — Utility-first styling
- **Leaflet.js** — Interactive map
- **Vanilla JS** — No React, no build, no node_modules
- **Google Fonts** — Lazy-loaded CJK fonts (~200KB saved)

## 📁 File Structure

```
ai-japan-hotels-webmcp/
├── index.html          # Everything (HTML + CSS + JS + i18n + WebMCP)
├── hotels.json         # 323 hotels, 4 languages, affiliate links
├── images/             # Region images (hokkaido.jpg, okinawa.jpg)
├── robots.txt          # Crawler rules
├── sitemap.xml         # SEO sitemap
├── _headers            # Cloudflare Pages headers
├── README.md           # This file
└── SETUP-GUIDE.md      # Setup instructions
```

## 🚀 Run Locally

```bash
git clone https://github.com/HOTAgithub/ai-japan-hotels-webmcp.git
cd ai-japan-hotels-webmcp
python -m http.server 8080
# → http://localhost:8080
```

That's it. No `npm install`. No `docker compose up`. Just open it.

## 🔧 WebMCP Tool Schema

```json
{
  "name": "searchJapaneseHotels",
  "description": "Search 323+ hotels across Japan by location, price, dates, and guests. Returns hotel names, prices (JPY & USD), ratings, and direct booking links in the user's language.",
  "inputSchema": {
    "type": "object",
    "properties": {
      "location": { "type": "string", "description": "City or region: Tokyo, Kyoto, Osaka, Hokkaido, Okinawa, Yokohama, Hiroshima, Fukuoka, Nagoya, Mt. Fuji" },
      "priceRange": { "type": "string" },
      "checkin": { "type": "string", "format": "date" },
      "checkout": { "type": "string", "format": "date" },
      "guests": { "type": "integer" }
    },
    "required": ["location"]
  }
}
```

## 📊 Why This Matters

<details>
<summary>📊 The WebMCP opportunity (click to expand)</summary>

- **Chrome 146** is bringing WebMCP to stable — the first browser-native AI tool protocol
- **Forbes** called early WebMCP adopters "the next wave of AI-native websites"
- **Rakuten Travel** launched an MCP server, but doesn't target foreign tourists
- **No one else** combines WebMCP + multilingual + Japan hotel affiliate in one page
- First-mover advantage is real — this is the empty stadium moment
</details>

<details>
<summary>💰 Revenue model</summary>

- ValueCommerce affiliate links on every hotel → commission per booking
- 323 hotels × 4 languages = 1,292 affiliate entry points
- Average commission: ~3-5% of booking price
- Target: international tourists spending ¥15,000-¥150,000/night
</details>

## ⚠️ Disclaimer

- Prices are estimates and may vary by season and availability
- Affiliate links are used — we may earn commissions from bookings
- Independent project, not affiliated with any hotel chain or booking platform

## 📄 License

MIT — use it, fork it, build on it.

---

<div align="center">

**Built with ❤️ for the AI-native web**

*The future of the web isn't websites — it's tools.*

</div>
