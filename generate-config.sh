#!/bin/sh
# Generate config.js from Cloudflare Pages environment variables
# Set VC_SID and VC_PID in Cloudflare Pages > Settings > Environment variables
echo "const AFFILIATE_CONFIG = {" > config.js
echo "  sid: '${VC_SID}'," >> config.js
echo "  pid: '${VC_PID}'," >> config.js
echo "  baseUrl: 'https://ck.jp.ap.valuecommerce.com/servlet/referral'" >> config.js
echo "};" >> config.js
echo "config.js generated successfully"
