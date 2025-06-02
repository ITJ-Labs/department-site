#!/usr/bin/env python3
import os
import sys
import requests
from dotenv import load_dotenv
import subprocess

# 1) Load variables from .env
load_dotenv()

CONFLUENCE_BASE = os.getenv("CONFLUENCE_BASE")
USER = os.getenv("CONFLUENCE_USER")
API_TOKEN = os.getenv("CONFLUENCE_API_TOKEN")
PAGE_ID = os.getenv("CONFLUENCE_PAGE_ID")

# 2) Validate that all variables are set
missing = [k for k in ("CONFLUENCE_BASE", "CONFLUENCE_USER", "CONFLUENCE_API_TOKEN", "CONFLUENCE_PAGE_ID")
           if not os.getenv(k)]
if missing:
    print(f"Error: missing environment variables: {', '.join(missing)}", file=sys.stderr)
    sys.exit(1)

# 3) Fetch the page storage (HTML) from Confluence
url = f"{CONFLUENCE_BASE}/rest/api/content/{PAGE_ID}?expand=body.storage"
resp = requests.get(url, auth=(USER, API_TOKEN))

if resp.status_code != 200:
    print(f"❌ Failed to fetch page (status {resp.status_code})", file=sys.stderr)
    try:
        print("Response JSON:", resp.json(), file=sys.stderr)
    except Exception:
        print("Response text:", resp.text, file=sys.stderr)
    sys.exit(1)

# 4) Extract the storage value (HTML)
storage_html = resp.json()["body"]["storage"]["value"]

# 5) Prepare Hugo front matter
front_matter = f"""---
title: "CV Extractor Tool"
date: {os.getenv('CV_DATE', '2025-06-04T09:00:00-07:00')}
draft: false
---


"""

# 6) Use Pandoc to convert HTML to Markdown
#    Ensure Pandoc is installed in your environment
pandoc = subprocess.Popen(
    ["pandoc", "--from=html", "--to=markdown", "--wrap=none"],
    stdin=subprocess.PIPE,
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
    text=True
)
md_content, err = pandoc.communicate(storage_html)
if pandoc.returncode != 0:
    print("❌ Pandoc conversion failed:", err, file=sys.stderr)
    sys.exit(1)

# 7) Write the combined front matter + markdown to the Hugo content file
output_path = "content/services/cv-extractor/_index.md"
os.makedirs(os.path.dirname(output_path), exist_ok=True)
with open(output_path, "w") as f:
    f.write(front_matter)
    f.write(md_content)

print(f"✅ Confluence page converted and saved to {output_path}")
