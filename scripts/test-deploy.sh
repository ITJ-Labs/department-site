#!/usr/bin/env bash
set -e

# usage:
#   ./test-deploy.sh         # build only (prod URLs)
#   ./test-deploy.sh serve   # build + serve locally (root URLs)

# 0) Clean up any existing output
rm -rf public department-site

# 1) Build
if [[ "$1" == "serve" ]]; then
  echo "🛠  Building for LOCAL preview (root URLs)…"
  hugo --minify --baseURL=http://localhost:8000/
else
  echo "🛠  Building for PRODUCTION (GitHub Pages URLs)…"
  hugo --minify
fi

# 2) Rename public/ → department-site/
echo "📂  Moving public → department-site…"
mv public department-site

# 3) If “serve”, kill any old server & launch a new one
if [[ "$1" == "serve" ]]; then
  echo
  echo "🔄  Stopping any previous local server on port 8000…"
  pkill -f "python3 -m http.server 8000" 2>/dev/null || true

  echo "🌐  Serving at http://localhost:8000/department-site/  (Ctrl+C to stop)"
  # Stay in the repo root; now /department-site/* maps to ./department-site/*
  python3 -m http.server 8000
fi
