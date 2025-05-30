#!/bin/bash
# scripts/apply-custom-css-macos.sh
# macOS-compatible version to copy CSS files and generate extend_head.html

set -euo pipefail

SRC_DIR="assets/css"
DST_DIR="static/css"
PARTIAL="layouts/partials/extend_head.html"

# Create target folders
mkdir -p "$DST_DIR"
mkdir -p "$(dirname "$PARTIAL")"

echo "🔧 Copying custom CSS files from $SRC_DIR to $DST_DIR..."

found_css=0
for cssfile in "$SRC_DIR"/*.css; do
  if [ -e "$cssfile" ]; then
    filename=$(basename "$cssfile")
    cp "$cssfile" "$DST_DIR/$filename"
    echo "  - $filename"
    found_css=1
  fi
done

if [ $found_css -eq 0 ]; then
  echo "⚠️ No CSS files found in $SRC_DIR. Skipping link generation."
  exit 0
fi

echo "🔧 Generating $PARTIAL..."
echo '{{/* layouts/partials/extend_head.html */}}' > "$PARTIAL"

for cssfile in "$SRC_DIR"/*.css; do
  if [ -e "$cssfile" ]; then
    filename=$(basename "$cssfile")
    echo "<link rel=\"stylesheet\" href=\"{{ \"/css/$filename\" | relURL }}\">" >> "$PARTIAL"
  fi
done

echo "✅ $PARTIAL generated with links to all custom CSS files."
