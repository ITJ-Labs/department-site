#!/usr/bin/env bash
# scripts/serve.sh

set -euo pipefail

# Move to the repo root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

# Ensure Hugo is installed
if ! command -v hugo >/dev/null 2>&1; then
  echo "❌ Hugo is not installed. Install it: https://gohugo.io/getting-started/installing/"
  exit 1
fi

# Allow overriding the bind address and port
BIND_ADDR="${HUGO_BIND:-127.0.0.1}"
PORT="${HUGO_PORT:-1313}"

echo "🔄 Cleaning generated resources..."
rm -rf resources public

echo "🚀 Starting Hugo dev server on ${BIND_ADDR}:${PORT}…"
hugo server \
  --bind "${BIND_ADDR}" \
  --port "${PORT}" \
  --disableFastRender \
  --buildDrafts \
  --noHTTPCache \
  --enableGitInfo \
  --openBrowser
