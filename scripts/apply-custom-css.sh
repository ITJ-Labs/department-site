#!/usr/bin/env bash
# Updated: uses Hugo Pipes, generates valid Go template syntax

set -euo pipefail

echo "🎨 Skipping CSS copy — Hugo Pipes is now handling style injection."

PARTIAL="layouts/partials/extend_head.html"
SRC_DIR="assets/css"

if [ -d "static/css" ] && [ "$(ls -A static/css 2>/dev/null)" ]; then
  echo "⚠️  static/css is not empty. Please delete any old files to avoid conflicts:"
  ls -1 static/css
  exit 1
fi

echo "🔧 Generating $PARTIAL using Hugo Pipes references..."
mkdir -p "$(dirname "$PARTIAL")"

# Write the partial header
cat > "$PARTIAL" <<'EOF'
{{/* layouts/partials/extend_head.html */}}
EOF

# Append each CSS file using Hugo Pipes syntax
for cssfile in "$SRC_DIR"/*.css; do
  filename=$(basename "$cssfile")
  varname=$(echo "$filename" | cut -d'.' -f1 | tr '-' '_')
  echo "{{ \$${varname} := resources.Get \"css/${filename}\" | minify | fingerprint }}" >> "$PARTIAL"
  echo "<link rel=\"stylesheet\" href=\"{{ \$${varname}.RelPermalink }}\">" >> "$PARTIAL"
done

echo "✅ $PARTIAL generated with Hugo Pipes <link> tags."
