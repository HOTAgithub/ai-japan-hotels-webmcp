# 🏨 AI Japan Hotels — WebMCP Enabled

> The world's first **WebMCP-enabled** Japan hotel search tool for international travelers. AI agents (Claude, Gemini, OpenAI) can search directly via structured tool calls.

![WebMCP](https://img.shields.io/badge/WebMCP-Enabled-blue)
![Multilingual](https://img.shields.io/badge/Languages-EN%20%7C%20JA%20%7C%20ZH--TW-green)
![Hotels](https://img.shields.io/badge/Hotels-175%2B-orange)

## ✨ Features

- **WebMCP Native** — AI agents discover `searchJapaneseHotels` tool automatically via `navigator.modelContext`
- **Multilingual UI** — English, Japanese (日本語), Traditional Chinese (繁體中文) with one-click language switcher
- **175+ Curated Hotels** — Budget to luxury, covering 10 regions across Japan
- **Interactive Map** — Leaflet.js map with region-based hotel filtering
- **Smart Search** — Filter by location, price range, check-in date, and guest count
- **Dual Currency** — JPY and USD price display
- **Responsive Design** — Mobile-first with Tailwind CSS
- **AI-Friendly** — Structured tool schema with multilingual descriptions for AI agent discovery

## 🤖 How AI Agents Use This

When an AI agent (e.g., Claude with browser access) visits this page, it automatically discovers the WebMCP tool:

```javascript
// Tool auto-registered via navigator.modelContext
searchJapaneseHotels({
  location: "Tokyo",      // Tokyo, Kyoto, Osaka, Hokkaido, Okinawa, etc.
  checkin: "2026-04-01",  // Optional: YYYY-MM-DD
  guests: 2,             // Optional: 1-5
  maxPrice: 30000,       // Optional: Max price in JPY
  minRating: 9.0         // Optional: Minimum rating 0-10
})

// Returns:
{
  success: true,
  hotels: [
    { name: "Aman Tokyo", price: 120000, rating: 9.6, bookingLink: "..." },
    ...
  ],
  totalFound: 15,
  showing: 15
}
```

**Natural language example:**
> "Search Kyoto hotels under ¥50,000 for 2 guests"

AI automatically calls the tool and returns structured results with direct booking links.

## 🌏 Supported Languages

| Language | Code | Audience |
|----------|------|----------|
| English | `en` | Global travelers |
| Japanese | `ja` | Domestic users |
| Traditional Chinese | `zh-TW` | Taiwan travelers |

The language preference is saved in `localStorage` and persists across sessions.

## 🗾 Covered Regions

- **Tokyo** — Shinjuku, Shibuya, Ginza, Otemachi
- **Kyoto** — Historic temples, traditional ryokans
- **Osaka** — Dotonbori, Namba, Umeda
- **Hokkaido** — Sapporo, Niseko, ski resorts
- **Okinawa** — Beach resorts, coral reefs
- **Yokohama** — Minato Mirai, Chinatown
- **Hiroshima** — Peace Memorial, Miyajima
- **Fukuoka** — Hakata, Canal City
- **Nagoya** — Central Japan hub
- **Mount Fuji** — Hakone, Fuji Five Lakes

## 🚀 Quick Start

### Local Development

```bash
# Clone the repository
git clone https://github.com/HOTAgithub/ai-japan-hotels-webmcp.git
cd ai-japan-hotels-webmcp

# Start a local server
python -m http.server 8080
# Open http://localhost:8080
```

### GitHub Pages Deployment

1. Go to **Settings → Pages**
2. Source: **Deploy from a branch**
3. Branch: `main` / `/ (root)`
4. Save — your site will be live at `https://HOTAgithub.github.io/ai-japan-hotels-webmcp/`

## 📁 File Structure

```
ai-japan-hotels-webmcp/
├── index.html          # Main application (single file, multilingual)
├── hotels.json         # Hotel data (175+ entries with affiliate links)
├── README.md           # This file
└── SETUP-GUIDE.md      # Setup instructions
```

## 🔧 Tech Stack

- **WebMCP** — `navigator.modelContext.registerTool()` for AI agent integration
- **Tailwind CSS** — Utility-first styling via CDN
- **Leaflet.js** — Interactive map with CartoDB tiles
- **Vanilla JavaScript** — No build step, zero dependencies
- **Google Fonts** — Cormorant Garamond, Inter, Noto Sans JP/TC

## 📋 WebMCP Tool Schema

```json
{
  "name": "searchJapaneseHotels",
  "description": "Search top Japan hotels popular with international tourists",
  "inputSchema": {
    "type": "object",
    "properties": {
      "location": { "type": "string" },
      "checkin": { "type": "string" },
      "guests": { "type": "integer" },
      "maxPrice": { "type": "integer" },
      "minRating": { "type": "number" }
    },
    "required": ["location"]
  }
}
```

## ⚠️ Disclaimer

- All prices are estimates and may vary by season and availability
- Affiliate links are used — we may earn commissions from bookings
- This is an independent project and is not affiliated with any hotel chain or booking platform

## 📄 License

MIT

---

**Built with ❤️ for the AI-native web**
