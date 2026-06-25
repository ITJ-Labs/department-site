# Production Readiness v1 — AI Solutions Digital Platform

**Slice:** SF-SLICE-087C — Platform Stabilization  
**Date:** 2026-06-25  
**Author:** AI Delivery OS / SliceForge  
**Branch:** `develop`  
**Commit:** `bfb8d1c` (087C tip)

---

## Status

| Gate | Status |
|---|---|
| **Production Ready** | ❌ NO |
| Local build validated | ❌ BLOCKED — BUILD_ENV_HUGO_NOT_ON_PATH_GAP |
| CI build validated | ⏳ PENDING — push not yet made |
| Live site verified | ⏳ PENDING — CI not yet run |
| Contact form verified | ⏳ PENDING — FormSubmit email verification required |

---

## Blockers

### B-1 — BUILD_ENV_HUGO_NOT_ON_PATH_GAP (Critical)

Hugo is not available on PATH in the local development environment. `which hugo`, `command -v hugo`, and `hugo version` all fail.

Local build validation (`make preview`, `make deploy`) cannot be executed until this is resolved.

**Resolution options:**

- **Option A (local):** Install Hugo Extended 0.147.6 and add to PATH → run `make preview` → verify rendered layout → resolve this blocker
- **Option B (CI):** Push `develop` to `origin/develop` → GitHub Actions builds with `hugo 0.147.6 extended` → confirm CI pass → resolve B-1 and B-3 together

### B-2 — FormSubmit Email Verification Pending

The contact form now POSTs to `https://formsubmit.co/labs@itj.com`. FormSubmit requires email confirmation on the **first submission**: a verification link is sent to `labs@itj.com`.

**Resolution:** Submit the contact form on the live site once → check `labs@itj.com` inbox → click confirmation link → all future submissions will be delivered automatically.

### B-3 — CI Build Not Yet Validated

`develop` is 5 commits ahead of `origin/develop`. The GitHub Actions deploy pipeline has not run against the 087C changes.

**Resolution:** Push `develop` → confirm the `Deploy Hugo site to GitHub Pages` workflow completes (green) → resolve this blocker.

### B-4 — Live Site Not Yet Verified

The live site at `https://itj-labs.github.io/department-site/` has not been inspected post-merge.

**Resolution:** After B-3 resolves, open the live site → confirm sidebar nav renders on desktop → confirm mobile drawer opens → confirm homepage layout has no double-container artifacts → resolve this blocker.

---

## What Was Delivered in 087C

### 1. GitOps — Feature Branch Merge

Fast-forward merged `feature/local-home-page` → `develop`. Linear history preserved. 5 commits landed:

| Commit | Description |
|---|---|
| `696158f` | style: Improve visibility of featured service card border |
| `51846bd` | wip: ongoing layout tweaks and CSS adjustments |
| `7767fc7` | refactor(home): extracted CTA styles into separate home-cta.css |
| `e257f68` | refactor: separate Why ITJ Labs styles into own CSS file |
| `bfb8d1c` | feat(087C): CSS stabilization, nav overlay, layout, Makefile, contact form; audit docs |

### 2. Build System — Makefile Fix

`preview` and `deploy` targets corrected. `test-deploy.sh` (non-existent) replaced with `deploy.sh` (tracked in `scripts/`).

```
Before: ./scripts/test-deploy.sh serve  →  After: ./scripts/deploy.sh serve
Before: ./scripts/test-deploy.sh        →  After: ./scripts/deploy.sh
```

### 3. CSS Stabilization — nav.css / main.css Conflict Resolved

Root cause: `main.css` (loaded after `nav.css`) defined a parallel, conflicting nav architecture:
- `.main-nav { position: absolute; ... opacity: 0; }` — dropdown, not sidebar
- `.site-container { max-width: 960px; margin: 0 auto; }` — overrode sidebar offset

Fix: Removed the entire nav section (74 lines) from `main.css`. Removed `max-width` and `margin: 0 auto` from `.site-container` in `main.css` (reduced to `padding: 2rem 1rem` only).

`nav.css` is now the single authoritative source for all navigation CSS and the desktop sidebar offset (`margin-left: 220px` in `@media (min-width: 768px)`).

### 4. Layout Fix — Double site-container Removed

`layouts/index.html` wrapped homepage partials in a second `<div class="site-container">` nested inside the one already opened by `header.html`. Removed the inner wrapper.

Structure after fix:
```
header.html → opens <div class="site-container">
  hero.html, home_quicklinks.html, home_featured_service.html, home_why.html, home_cta.html
footer.html → closes </div>
```

### 5. Navigation — nav-overlay Element Added

`nav.css` defines `.nav-overlay` (the dim backdrop behind the mobile drawer) and toggles its `opacity` and `visibility` when `.nav-open` is set by `navbar.js`. The HTML element was missing from `header.html`.

Added: `<div class="nav-overlay"></div>` inside `<header class="site-header">` — the correct ancestor for the `.nav-open .nav-overlay` CSS selector.

### 6. Contact Form — Functional Endpoint Wired

`content/contact/_index.md` form had no `action` attribute — submissions were silently discarded (GET to current URL).

Fixed: POSTs to `https://formsubmit.co/labs@itj.com` with:
- `_subject`: "New message from AI Solutions website"
- `_captcha`: false (bot protection disabled for v1)
- `_next`: redirects to homepage after submission
- `required` attributes added to all fields

**Pending:** First submission triggers FormSubmit email verification to `labs@itj.com` (see B-2).

### 7. CI Pipeline — deploy.yml Hardened

Three improvements applied to `.github/workflows/deploy.yml`:

| Setting | Before | After |
|---|---|---|
| `workflow_dispatch` | Missing | Added — enables manual trigger from GitHub UI |
| `extended` | Missing (standard Hugo) | `extended: true` — enables Hugo Pipes for all CSS |
| `force_orphan` | `true` — wipes gh-pages history on each deploy | `false` — preserves rollback history |

### 8. Documentation — Audit Reports and Platform Roadmap

Committed three documents:
- `docs/audit/department_site_current_state_audit.md` — 087A full audit (CSS issues, layout bugs, content gaps)
- `docs/audit/department_site_gitops_and_research_benchmark.md` — 087B GitOps strategy, MIT HAN Lab + Amazon Science benchmark
- `docs/roadmap/ai_solutions_platform_roadmap.md` — 5-phase platform roadmap (087A → 093)

---

## Non-Build Validations (All Pass)

| Check | Result | Evidence |
|---|---|---|
| `scripts/deploy.sh` is tracked | ✅ PASS | `git ls-files scripts/` |
| `main.css` starts with `.quick-links` (nav section removed) | ✅ PASS | Read tool |
| `main.css` `.site-container` has only `padding` | ✅ PASS | Read tool — line 99-101 |
| `nav.css` `@media` owns `margin-left: 220px` | ✅ PASS | Read tool — lines 109-112 |
| `header.html` has `<div class="nav-overlay"></div>` | ✅ PASS | Read tool — line 26 |
| `index.html` has no inner `.site-container` | ✅ PASS | Read tool |
| Contact form has `action=formsubmit.co` and `method=POST` | ✅ PASS | Read tool |
| `deploy.yml` has `extended: true`, `workflow_dispatch`, `force_orphan: false` | ✅ PASS | Read tool |
| Fast-forward merge: linear history, 5 commits on develop | ✅ PASS | `git log` |
| `deploy.sh` and `serve.sh` both tracked in `scripts/` | ✅ PASS | `git ls-files` |

---

## Remaining Unstaged Changes

`.github/workflows/deploy.yml` was modified as part of this slice but not yet committed. It will be staged and committed with this report in the next commit.

---

## Resolution Path to Production Ready = YES

**Fastest path (CI gate):**

1. Commit `deploy.yml` + this report → push `develop`
2. Monitor GitHub Actions: `Deploy Hugo site to GitHub Pages`
3. Confirm green → open live site → verify sidebar + mobile nav + homepage layout
4. Submit a test contact form → confirm `labs@itj.com` receives the FormSubmit verification email → click verification link
5. Update this document: set all gates to ✅ → Production Ready = **YES**

**Alternative path (local gate):**

1. Run `! which hugo` to find Hugo binary path
2. Add to PATH or add absolute path to settings allow list
3. Run `make preview` from `/home/mike/projects/department-site`
4. Verify rendered layout in browser
5. Resolve B-1 independently of push

---

## Next Slice

**SF-SLICE-087D — Corporate Brand Alignment**

Prerequisites: All four blockers above resolved (Production Ready = YES).

Scope: Typography, color palette, button styles, brand components, spacing system, hero style — aligned to ITJ Solutions brand guidelines.
