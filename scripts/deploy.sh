#!/usr/bin/env bash
# scripts/deploy.sh
# Usage:
#   ./scripts/deploy.sh          # build for production (uses baseURL in config.toml)
#   ./scripts/deploy.sh serve    # build + serve locally at http://localhost:8000/

set -euo pipefail

# Project root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

# Clean old outputs
echo "🧹 Cleaning old builds..."
rm -rf public department-site

# Build
echo "🛠 Building site (prod URLs)…"
hugo --minify

# Rename for GitHub Pages
echo "📂 Preparing for GitHub Pages (public → department-site)…"
mv public department-site

# Optional preview
if [[ "${1-}" == "serve" ]]; then
  PORT="${PORT:-8000}"
  echo "🌐 Serving department-site/ at http://localhost:${PORT}/"
  # Kill any existing server on that port
  pkill -f "python3 -m http.server ${PORT}" 2>/dev/null || true
  python3 -m http.server "${PORT}" --directory department-site
fi
