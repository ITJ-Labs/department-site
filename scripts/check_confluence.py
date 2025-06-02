#!/usr/bin/env python3
import os
import sys
import requests
from dotenv import load_dotenv

# 1) Load variables from .env
load_dotenv()  # looks for a .env in the current directory (or parent)

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

# 3) Construct the URL to fetch page metadata
url = f"{CONFLUENCE_BASE}/rest/api/content/{PAGE_ID}"

# 4) Call Confluence with Basic Auth
resp = requests.get(url, auth=(USER, API_TOKEN))

# 5) Check status and print results
if resp.status_code == 200:
    data = resp.json()
    title = data.get("title", "<no title>")
    print(f"✅ Successfully fetched page {PAGE_ID}")
    print(f"   Title: {title}")
    print(f"   Type: {data.get('type')}")
    print(f"   Status: {data.get('status')}")
else:
    print(f"❌ Failed to fetch page (status {resp.status_code})", file=sys.stderr)
    try:
        print("Response JSON:", resp.json(), file=sys.stderr)
    except Exception:
        print("Response text:", resp.text, file=sys.stderr)
    sys.exit(1)
