# Black Body Dress - Quick Start Guide

## Live URLs

**Production Site**: https://reilly-dress.netlify.app
**GitHub Repo**: https://github.com/blinds123/bodydress

## Product Details

- **Product**: Black Body Dress - Sculpting Bodycon Dress
- **Price**: $59 (was $89) - 34% OFF
- **Pre-order**: $19 - 68% OFF
- **Order Bump**: Gold Chain Necklace - $10

## Key Features

- TikTok Pixel: D3CVHNBC77U2RE92M7O0
- SimpleSwap Pool: https://simpleswap-automation-1.onrender.com
- 30 unique testimonials (TikTok, Instagram, Facebook, Trustpilot, Google)
- 5 product images + 18 testimonial avatars
- Mobile responsive design
- Order bump system

## Design Colors

- Primary: Black (#000000)
- Accent: Rose Gold (#C9A688)
- CTA: Gold (#D4AF37)

## Update Product Images

Replace placeholder images in `/images/product/` with actual dress photos:
- product-01.jpeg (800x1066) - Hero image
- product-02.jpeg to product-05.jpeg (800x1066)

## Update Testimonial Avatars

Replace placeholder images in `/images/testimonials/` with real photos:
- testimonial-01.jpeg to testimonial-18.jpeg (400x400)

## Deploy Changes

```bash
cd /Users/nelsonchan/Downloads/bodydress
git add .
git commit -m "Update images"
git push
netlify deploy --prod --dir=.
```

## Verify Pool API

```bash
curl -X POST https://simpleswap-automation-1.onrender.com/buy-now \
  -H "Content-Type: application/json" \
  -d '{"amountUSD": 59}'
```

Expected response:
```json
{
  "success": true,
  "exchangeUrl": "https://simpleswap.io/exchange?id=...",
  "poolStatus": "instant"
}
```

## Monitor

- TikTok Events: https://ads.tiktok.com/events-manager
- Netlify Dashboard: https://app.netlify.com/projects/reilly-dress
- GitHub: https://github.com/blinds123/bodydress

## Support

See DEPLOYMENT-REPORT.md for full technical details.
