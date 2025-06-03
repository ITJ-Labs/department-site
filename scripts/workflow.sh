#!/usr/bin/env bash
# scripts/workflow.sh
# Orchestrator for Hugo: clean build, generate CSS head partial, and serve.

set -euo pipefail

debug() {
  echo "🧹 Cleaning Hugo caches..."
  rm -rf resources public
  echo "✅ Caches cleared."
}

generate_head() {
  echo "🎨 Regenerating head partial using Hugo Pipes..."
  ./scripts/apply-custom-css.sh
  echo "✅ Head partial updated with dynamic CSS links."
}

serve() {
  echo "🚀 Launching Hugo dev server..."
  ./scripts/serve.sh
}

usage() {
  cat <<EOF
Usage: $0 <command>

Commands:
  debug          Clear Hugo caches (resources/, public/)
  generate-head  Regenerate CSS <link> tags using Hugo Pipes
  serve          Start the Hugo dev server (via serve.sh)
  all            Run debug → generate-head → serve
  help           Show this message
EOF
  exit 1
}

# Entry point
if [[ $# -ne 1 ]]; then
  usage
fi

case "$1" in
  debug)         debug ;;
  generate-head) generate_head ;;
  serve)         serve ;;
  all)           debug; generate_head; serve ;;
  help|*)        usage ;;
esac
