#!/usr/bin/env bash
# scripts/workflow.sh
# A small orchestrator for debugging, applying CSS overrides, and serving your site.

set -euo pipefail

# Helpers
debug() {
  echo "🧹 Cleaning Hugo caches..."
  rm -rf resources public
  echo "✅ Caches cleared."
}

apply_css() {
  echo "🎨 Applying custom CSS overrides..."
  ./scripts/apply-custom-css.sh
  echo "✅ Custom CSS applied."
}

serve() {
  echo "🚀 Launching Hugo dev server..."
  ./scripts/serve.sh
}

usage() {
  cat <<EOF
Usage: $0 <command>

Commands:
  debug       Clear Hugo caches (resources/, public/)
  apply-css   Copy custom CSS & regenerate head partial
  serve       Start the Hugo dev server (via serve.sh)
  all         Run debug → apply-css → serve in sequence
  help        Show this message
EOF
  exit 1
}

# Entry point
if [[ $# -ne 1 ]]; then
  usage
fi

case "$1" in
  debug)     debug ;;
  apply-css) apply_css ;;
  serve)     serve ;;
  all)       debug; apply_css; serve ;;
  help|*)    usage ;;
esac
