#!/usr/bin/env bash
# scripts/apply-custom-css.sh
# This script patches your site to include all CSS files from assets/css into static/css,
# and regenerates extend_head.html with the correct <link> tags.

set -euo pipefail

SRC_DIR="assets/css"
DST_DIR="static/css"
PARTIAL="layouts/partials/extend_head.html"

echo "🔧 Copying custom CSS files from $SRC_DIR to $DST_DIR…"
mkdir -p "$DST_DIR"
for cssfile in "$SRC_DIR"/*.css; do
  filename=$(basename "$cssfile")
  cp "$cssfile" "$DST_DIR/$filename"
  echo "  - $filename"
done

echo "🔧 Generating $PARTIAL…"
mkdir -p "$(dirname "$PARTIAL")"

# Start partial
cat > "$PARTIAL" << 'EOF'
{{/* layouts/partials/extend_head.html */}}
EOF

# Append each <link> for the copied .css files
for cssfile in "$SRC_DIR"/*.css; do
  filename=$(basename "$cssfile")
  echo "<link rel=\"stylesheet\" href=\"{{ \"/css/$filename\" | relURL }}\">" >> "$PARTIAL"
done

echo "✅ $PARTIAL generated with links to all custom CSS files."
