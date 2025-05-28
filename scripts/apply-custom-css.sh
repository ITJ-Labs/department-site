#!/usr/bin/env bash
# scripts/apply-custom-css.sh
# This script patches your site to include custom CSS overrides for PaperMod.

set -euo pipefail

echo "🔧 Copying custom CSS to static/css…"
mkdir -p static/css
cp assets/css/button-brand.css static/css/
cp assets/css/services.css   static/css/

echo "🔧 Writing extend_head.html partial…"
mkdir -p layouts/partials
cat > layouts/partials/extend_head.html << 'EOF'
{{/* layouts/partials/extend_head.html */}}
<link rel="stylesheet" href="{{ "/css/button-brand.css" | relURL }}">
<link rel="stylesheet" href="{{ "/css/services.css"     | relURL }}">
EOF

echo "✅ Custom CSS patch applied!"
