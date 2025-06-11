#!/usr/bin/env bash
# scripts/serve.sh

set -euo pipefail

# Ensure we're in the repo root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

# Check Hugo is installed
if ! command -v hugo >/dev/null 2>&1; then
  echo "❌ Hugo is not installed. Please install Hugo: https://gohugo.io/getting-started/installing/"
  exit 1
fi

echo "🔄 Cleaning generated resources..."
rm -rf resources public

echo "🚀 Starting Hugo dev server..."
hugo server \
  --disableFastRender \
  --buildDrafts \
  --noHTTPCache \
  --baseURL http://localhost:1313/ \
  --watch
