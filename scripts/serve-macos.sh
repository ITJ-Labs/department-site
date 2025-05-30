#!/bin/bash
# scripts/serve.sh
# macOS-compatible script to start the Hugo dev server

set -e

# Resolve script's directory to ensure consistent behavior
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

# Check if Hugo is installed
if ! command -v hugo >/dev/null 2>&1; then
  echo "❌ Hugo is not installed. Please install Hugo first: https://gohugo.io/getting-started/installing/"
  exit 1
fi

echo "🔄 Cleaning generated resources..."
rm -rf resources public

echo "🚀 Starting Hugo dev server..."
hugo server \
  --disableFastRender \
  --theme=PaperMod \
  --baseURL http://localhost:1313/ \
  --buildDrafts \
  --watch
