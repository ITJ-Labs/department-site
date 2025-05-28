#!/usr/bin/env bash
# scripts/serve.sh

# Exit on first error
set -e

# Move to the script’s parent directory (your site root)
cd "$(dirname "$0")/.."

echo "🔄 Cleaning generated resources..."
rm -rf resources public

echo "🚀 Starting Hugo dev server..."
hugo server \
  --disableFastRender \
  --theme=PaperMod \
  --baseURL http://localhost:1313/ \
  --buildDrafts \
  --watch
