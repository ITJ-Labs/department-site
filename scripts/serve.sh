#!/usr/bin/env bash
# scripts/serve.sh

set -euo pipefail

cd "$(dirname "$0")/.."

echo "🔄 Cleaning Hugo build resources..."
rm -rf resources/ public/

echo "🚀 Starting Hugo development server with Hugo Pipes support..."
hugo server \
  --disableFastRender \
  --noHTTPCache \
  --buildDrafts \
  --watch
