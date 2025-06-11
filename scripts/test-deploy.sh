#!/usr/bin/env bash
set -e

# usage:
#   ./test-deploy.sh         # build only (prod URLs)
#   ./test-deploy.sh serve   # build + serve locally (prod URLs)

# 0) Clean up any existing output
rm -rf public department-site

# 1) Build with Hugo (uses prod baseURL in config.toml)
echo "🛠  Building site…"
hugo --minify

# 2) Rename public/ → department-site/
echo "📂  Moving public → department-site…"
mv public department-site

# 3) If “serve”, launch a local server, rooted at department-site/
if [[ "$1" == "serve" ]]; then
  echo
  echo "Serving department-site/ at http://localhost:8000/  (Ctrl+C to stop)"
  # kill any prior
  pkill -f "python3 -m http.server" 2>/dev/null || true
  # serve department-site/ as the web root
  python3 -m http.server 8000 --directory department-site
fi
