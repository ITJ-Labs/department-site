#!/usr/bin/env bash
set -e

# 1) Build with Hugo (production baseURL is already in config.toml).
echo "Building site…"
hugo --minify

# 2) If a previous department-site/ exists, remove it.
if [ -d "department-site" ]; then
  echo "Removing old department-site/…"
  rm -rf department-site
fi

# 3) Rename public/ → department-site/
echo "Moving public/ → department-site/…"
mv public department-site

# 4) Define a cleanup function to restore public/ on exit.
cleanup() {
  echo
  echo "Stopping server and restoring public/…"
  pkill -f "python3 -m http.server 8000" 2>/dev/null || true
  rm -rf public
  mv department-site public
  echo "Done."
}
# When the script receives SIGINT (Ctrl+C) or exits, run cleanup()
trap cleanup EXIT

# 5) Serve the department-site/ folder at port 8000
echo "Serving department-site/ at http://localhost:8000/department-site/  (Ctrl+C to stop)…"
cd .
python3 -m http.server 8000

# Note: script will pause here until you hit Ctrl+C, then cleanup() runs.
