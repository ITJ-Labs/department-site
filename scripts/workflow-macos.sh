#!/bin/bash
# scripts/workflow.sh
# macOS-compatible orchestrator for debugging, CSS, and Hugo dev server

set -euo pipefail

# Resolve script base directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$SCRIPT_DIR/.."

debug() {
  echo "🧹 Cleaning Hugo caches..."
  rm -rf "$PROJECT_ROOT/resources" "$PROJECT_ROOT/public"
  echo "✅ Caches cleared."
}

apply_css() {
  echo "🎨 Applying custom CSS overrides (macOS version)..."
  "$SCRIPT_DIR/apply-custom-css-macos.sh"
  echo "✅ Custom CSS applied."
}

serve() {
  echo "🚀 Launching Hugo dev server..."
  "$SCRIPT_DIR/serve.sh"
}

usage() {
  cat <<EOF
Usage: $0 <command>

Commands:
  debug       Clear Hugo caches (resources/, public/)
  apply-css   Copy custom CSS & regenerate head partial (macOS version)
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
