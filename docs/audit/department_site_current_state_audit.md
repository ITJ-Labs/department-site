# Department Site — Current State Audit

**Audit ID:** SF-SLICE-087A-DEPARTMENT-SITE-CURRENT-STATE-AUDIT  
**Date:** 2026-06-24  
**Auditor:** Claude Code (read-only, no implementation changes applied)  
**Repo:** https://github.com/ITJ-Labs/department-site.git  
**Local path:** `/home/mike/projects/department-site`  
**Branch inspected:** `audit-local-home-page` (tracks `origin/feature/local-home-page`)  
**Baseline branch:** `develop`  
**Hugo version:** 0.147.6 (`.hugo-version` + `deploy.yml`)

---

## 1. Repo Diagnosis

### Branch State

| Branch | SHA (HEAD) | Status vs develop |
|---|---|---|
| `develop` | `927ade2` | 4 commits BEHIND feature/local-home-page |
| `origin/feature/local-home-page` | `e257f68` | 4 commits AHEAD of develop, 0 behind |
| `origin/gh-pages` | `ba77d42` | Deployed output (2 orphan commits) |
| `main` | (local only) | Not actively used |

**Finding:** `feature/local-home-page` is strictly ahead of `develop`. `develop` has zero unique commits. `feature/local-home-page` is the de facto current development baseline.

### Commits Ahead of Develop (feature/local-home-page)

```
e257f68  refactor: separate Why ITJ Labs styles into own CSS file
7767fc7  refactor(home): extracted CTA styles into separate home-cta.css
51846bd  wip: ongoing layout tweaks and CSS adjustments
696158f  style: Improve visibility of featured service card border
```

All 4 commits are CSS modularization refactors, not feature or content changes.

### Remote Branches of Interest

```
remotes/origin/feature/local-home-page     ← current development tip
remotes/origin/develop                     ← 4 commits stale
remotes/origin/gh-pages                    ← live deployed output
remotes/origin/codex/*                     ← AI-generated experimental branches (5 total)
remotes/origin/feature/*                   ← merged feature history
remotes/origin/fix/baseurl-ghpages         ← baseURL fix (merged)
remotes/origin/wip/nav-css-troubleshooting ← nav CSS work (status: WIP)
```

---

## 2. Architecture Summary

### Stack

| Component | Technology | File |
|---|---|---|
| Static site generator | Hugo 0.147.6 Extended | `.hugo-version` |
| Theme | PaperMod (git submodule) | `.gitmodules`, `themes/PaperMod` |
| CSS pipeline | Hugo Pipes (minify + fingerprint) | `layouts/partials/extend_head.html` |
| JS | Vanilla JS (2 files) | `static/js/navbar.js`, `static/js/services-tilt.js` |
| Deployment | GitHub Actions → `gh-pages` branch | `.github/workflows/deploy.yml` |
| Hosting | GitHub Pages | `baseURL = https://itj-labs.github.io/department-site/` |
| Forms | None (form present, no backend) | `content/contact/_index.md` |
| Task runner | GNU Make | `Makefile` |

### Directory Layout

```
/
├── .github/workflows/deploy.yml   ← CI/CD (triggers on develop push)
├── .gitmodules                    ← PaperMod submodule declaration
├── .hugo-version                  ← Pinned to 0.147.6
├── Makefile                       ← debug/serve/build/preview/deploy targets
├── config.toml                    ← Hugo config (baseURL, theme, menus, params)
├── archetypes/                    ← Content templates (default.md, publication.md)
├── assets/
│   ├── css/                       ← 11 CSS files (Hugo Pipes processed)
│   ├── scss/custom.scss           ← Vestigial SCSS (only imports services.css)
│   └── icons/                     ← SVG icons (email, linkedin, whatsapp)
├── content/
│   ├── about/_index.md            ← About page (HTML + Markdown mixed)
│   ├── contact/_index.md          ← Contact page (HTML form, no backend)
│   ├── events/                    ← 11 event posts + _index.md
│   ├── publications/              ← 1 publication + _index.md (body is placeholder)
│   └── services/                  ← _index.md + 3 service detail pages
├── layouts/
│   ├── index.html                 ← Custom homepage (NOT PaperMod template)
│   ├── _default/single.html       ← Custom single-page template
│   ├── _default/_markup/          ← render-image hook
│   ├── events/list.html           ← Custom events list template
│   ├── publications/              ← Custom list + single templates
│   └── partials/                  ← header, footer, hero, home_* (5 partials)
├── scripts/
│   ├── serve.sh                   ← Dev server (clean + hugo server)
│   └── deploy.sh                  ← Production build + rename public→department-site
├── static/
│   ├── favicon.png
│   ├── images/                    ← Events, hero, icons, logos, partners, services, team
│   └── js/                        ← navbar.js, services-tilt.js
└── themes/PaperMod                ← Git submodule pointer (must be initialized)
```

---

## 3. Hugo Configuration Diagnosis

**File:** `config.toml`

```toml
baseURL = "https://itj-labs.github.io/department-site/"
languageCode = "en-us"
title = "ITJ Labs Department"
theme = "PaperMod"
relativeURLs = false
canonifyURLs = true
```

### Config Issues

| Issue | Severity | Detail |
|---|---|---|
| `canonifyURLs = true` | Medium | Deprecated in Hugo. Forces all relative URLs to absolute using baseURL. Masks URL bugs rather than fixing them. Should be removed and paths corrected explicitly. |
| `relativeURLs = false` + `canonifyURLs = true` | Medium | Redundant combination. `canonifyURLs` processes output HTML post-build; `relativeURLs` affects template function behavior. Having both can cause double-canonicalization for some URL patterns. |
| Non-standard `[params]` | Low | `primaryHue`, `primarySaturation`, `primaryLightness`, `accentHue`, `accentSaturation`, `accentLightness`, `disableDarkMode` are NOT standard PaperMod params. PaperMod uses `colorScheme`, `ShowBreadCrumbs`, etc. These params are defined but may be silently ignored by PaperMod's templates. |

### Menu Configuration

Menu is fully defined (`config.toml` lines 24–61): Home, About, Services, Publications, Events, Contact. All six sections are wired to correct paths.

---

## 4. PaperMod / Theme Setup Diagnosis

**File:** `.gitmodules`

```
[submodule "themes/PaperMod"]
    path = themes/PaperMod
    url = https://github.com/adityatelange/hugo-PaperMod.git
```

### Theme Architecture

The site uses PaperMod as a **git submodule**, not as a vendored copy. This means:

1. The theme is NOT included in the git tree — only a pointer commit SHA is stored
2. `git clone` alone will produce an empty `themes/PaperMod/` directory
3. Hugo build will fail with "theme not found" unless `git submodule update --init --recursive` is run first

### Theme Override Strategy

The site overrides PaperMod at the layout level:

| Override | File | Replaces |
|---|---|---|
| Homepage | `layouts/index.html` | PaperMod's entire homepage template |
| Single page | `layouts/_default/single.html` | PaperMod's `single.html` |
| CSS injection | `layouts/partials/extend_head.html` | PaperMod's head partial extension point |
| Image render | `layouts/_default/_markup/render-image.html` | Markdown image rendering |

The site **does not use PaperMod for page rendering** on any major template. PaperMod's primary contribution at runtime is its **CSS variables** (`--primary`, `--background`, `--text`, `--content`, `--entry`, `--border`, `--muted`, `--accent`, `--secondary`) which are referenced throughout all 11 custom CSS files but never defined in the custom CSS. These variables come from PaperMod's theme CSS.

**Risk:** If PaperMod's CSS is not loaded (e.g., submodule missing, theme path broken), all CSS color variables collapse to `unset`, making the site unstyled.

### PaperMod Param Mismatch

`config.toml` defines:
```toml
[params]
  primaryHue       = 220
  primarySaturation = 80
  primaryLightness = 50
  accentHue        = 220
  accentSaturation = 80
  accentLightness = 60
  disableDarkMode  = false
```

None of these are recognized PaperMod params. PaperMod does not dynamically generate CSS variables from `primaryHue` etc. These params are defined but have no effect on the rendered output.

---

## 5. Theme / Submodule Risks

| Risk | Impact | Evidence |
|---|---|---|
| Submodule not initialized locally | **HIGH — build fails** | `themes/PaperMod` is a submodule pointer; empty without `git submodule update --init --recursive` |
| PaperMod CSS vars depended on but not owned | **HIGH — unstyled on theme break** | All 11 CSS files use `var(--primary)`, `var(--background)` etc. without fallback declarations |
| PaperMod upstream drift | Medium | Submodule points to HEAD of PaperMod main; a breaking upstream change could affect the build |
| `disableDarkMode = false` but dark mode uses PaperMod vars | Low | Dark mode toggling (if it exists) depends entirely on PaperMod's color scheme logic |
| CI correctly handles submodule | Low risk in CI | `deploy.yml` line 23: `git submodule update --init --recursive` ✓ |

---

## 6. Build Workflow Diagnosis

**Files:** `Makefile`, `scripts/serve.sh`, `scripts/deploy.sh`

### Makefile Targets

```makefile
debug:    rm -rf resources public
serve:    debug → ./scripts/serve.sh
build:    hugo --minify
preview:  build → ./scripts/test-deploy.sh serve   ← BROKEN
deploy:   build → ./scripts/test-deploy.sh          ← BROKEN
```

### Critical Bug: Missing `scripts/test-deploy.sh`

`make preview` and `make deploy` both call `./scripts/test-deploy.sh`, which **does not exist** in the tracked file list (`git ls-files` confirms only `scripts/deploy.sh` and `scripts/serve.sh`).

Per `CHANGELOG.md`:
> `chore(deploy): rename test-deploy.sh to deploy.sh with port override support`

The Makefile was not updated when `test-deploy.sh` was renamed to `deploy.sh`. Both `preview` and `deploy` Make targets are broken.

**Working targets:** `make debug` (clean), `make serve` (dev server), `make build` (production build).

### `scripts/serve.sh`

```bash
hugo server --bind ${BIND_ADDR} --port ${PORT} --disableFastRender \
  --buildDrafts --noHTTPCache --enableGitInfo --openBrowser
```

Functional. Cleans `resources/` and `public/` before serving. Respects `HUGO_BIND` and `HUGO_PORT` env vars.

### `scripts/deploy.sh`

```bash
hugo --minify
mv public department-site
# optional: python3 -m http.server --directory department-site
```

Functional standalone but unreachable via `make preview`/`make deploy` due to the Makefile bug above.

---

## 7. Deployment Workflow Diagnosis

**File:** `.github/workflows/deploy.yml`

```yaml
on:
  push:
    branches: [develop]

steps:
  - uses: actions/checkout@v4
  - uses: peaceiris/actions-hugo@v2
    with:
      hugo-version: '0.147.6'
  - run: git submodule update --init --recursive
  - run: hugo --minify --baseURL=https://itj-labs.github.io/department-site/
  - uses: peaceiris/actions-gh-pages@v3
    with:
      publish_dir: ./public
      publish_branch: gh-pages
      force_orphan: true
```

### Assessment

| Item | Status | Note |
|---|---|---|
| Trigger branch | `develop` only | Feature branches do NOT trigger deploy |
| Hugo version pinned | ✅ `0.147.6` | Matches `.hugo-version` |
| Submodule init | ✅ Explicit `git submodule update` step | |
| Build command | ✅ `--minify --baseURL` explicitly set | Overrides `config.toml` baseURL (idempotent) |
| Deploy target | `gh-pages` branch | Separate from source branches |
| `force_orphan: true` | ⚠️ No gh-pages history | Every deploy squashes all previous gh-pages commits |
| `permissions: contents: write` | ✅ Required for push | Correct |
| No CNAME file | ⚠️ Custom domain not configured | Site only works at `itj-labs.github.io/department-site/` |

**Deploy pipeline is functionally correct** but only triggered by `develop`. Since `develop` is 4 commits behind `feature/local-home-page`, the currently deployed site is STALE relative to local development state.

---

## 8. GitHub Pages Configuration / Path Risks

### URL Handling

| Setting | Value | Risk |
|---|---|---|
| `baseURL` | `https://itj-labs.github.io/department-site/` | Correct — includes repo subpath |
| `canonifyURLs = true` | Enabled | Post-processes all output HTML to prepend baseURL to relative paths |
| `relativeURLs = false` | Disabled | Template URL functions use absolute URLs |

### Path Risk Inventory

| File | Location | Risk |
|---|---|---|
| `layouts/partials/home_quicklinks.html:4` | `href="{{ "services/" | absURL }}"` | Uses `absURL` — correct for GitHub Pages |
| `layouts/partials/home_quicklinks.html:7,11,15` | Uses `relURL` | Inconsistent; relURL + canonifyURLs = OK but fragile |
| `layouts/partials/home_cta.html:6` | `href="/contact/"` | Hardcoded root-relative path; `canonifyURLs=true` saves this, but risky without it |
| `layouts/partials/hero.html:4` | `src="{{ "images/hero-banner.png" | relURL }}"` | relURL on image — OK with canonifyURLs |
| `content/about/_index.md` (all image `src`) | `/images/...` absolute paths | Safe for GitHub Pages (canonifyURLs handles the subpath) |
| `static/js/navbar.js`, `services-tilt.js` | `relURL` in footer.html:25 | Uses relURL — OK |

**Conclusion:** The site depends on `canonifyURLs = true` to paper over mixed URL approaches. This is fragile — if `canonifyURLs` is ever removed, at least 3 URL patterns will break.

---

## 9. Missing or Broken Scripts

| Script | Status | Issue |
|---|---|---|
| `scripts/serve.sh` | ✅ Functional | `make serve` works |
| `scripts/deploy.sh` | ✅ Exists but unreachable | `make deploy` and `make preview` call non-existent `test-deploy.sh` |
| `scripts/test-deploy.sh` | ❌ MISSING | Referenced in Makefile; file does not exist in tracked tree |

**Fix required:** Update `Makefile` `preview` and `deploy` targets to call `./scripts/deploy.sh` instead of `./scripts/test-deploy.sh`.

---

## 10. CSS Structure Diagnosis

### CSS File Inventory

| File | Lines | Purpose |
|---|---|---|
| `nav.css` | 113 | Sidebar drawer nav, desktop sidebar layout, `.site-container` desktop offset |
| `main.css` | 178 | `.site-header` (partial), `.main-nav` (dropdown), hero, quick-links, `.site-container` |
| `about.css` | 329 | Mission/vision cards, flip cards, team leaders, partners grid, social links |
| `contact.css` | 154 | Two-column contact grid, form card, contact info card |
| `events.css` | 99 | Event grid, event cards, image slideshow |
| `publications.css` | 212 | Flash cards, single paper layout, action buttons |
| `services.css` | 640 | Service cards, tech stack grid, intro blocks, animated bullets |
| `featured-service.css` | 78 | Featured service card (extracted from main.css in feature/local-home-page) |
| `home-cta.css` | 52 | CTA "Let's Talk" section (extracted from main.css) |
| `why-itj.css` | 64 | Why ITJ Labs section (extracted from main.css) |
| `button-brand.css` | 29 | Shared `.button` base, `.primary`, `.success` variants |

**Total: 11 CSS files, ~1,948 lines**

All are loaded unconditionally on every page via `layouts/partials/extend_head.html`.

### Critical CSS Conflict: `nav.css` vs `main.css`

Both files define the same selectors with incompatible implementations. `extend_head.html` loads `nav.css` first, then `main.css`. CSS cascade: last loaded wins for conflicting properties.

**`.site-header` conflict:**

| Property | `nav.css` | `main.css` | Winner |
|---|---|---|---|
| `position` | `relative` | `relative` | Tie (same value) |
| `background-color` | `var(--background)` | `var(--background)` | Tie |
| `z-index` | `1000` | `1000` | Tie |
| `padding` | `0.5rem 1rem` | _(not set)_ | `nav.css` ✓ |
| `display` | `flex` | _(not set)_ | `nav.css` ✓ |
| `align-items` | `center` | _(not set)_ | `nav.css` ✓ |
| `justify-content` | `space-between` | _(not set)_ | `nav.css` ✓ |

The `.site-header` conflict is low-impact — `main.css` doesn't override the flex layout properties.

**`.main-nav` conflict — CRITICAL:**

| Property | `nav.css` (sidebar drawer) | `main.css` (dropdown) | Winner |
|---|---|---|---|
| `position` | `fixed` | `absolute` | **`main.css` wins → sidebar breaks** |
| `top` | `0` | `100%` | **`main.css` wins** |
| `left` | `0` | `0` | Same |
| `width` | `250px` | `100%` | **`main.css` wins** |
| `height` | `100vh` | _(not set)_ | `nav.css` ✓ |
| `transform` | `translateX(-100%)` | _(not set, uses opacity)_ | `nav.css` ✓ |
| `opacity` | _(not set)_ | `0` | `main.css` adds opacity |
| `visibility` | _(not set)_ | `hidden` | `main.css` adds visibility |

**Result:** `main.css` overrides `nav.css`'s fixed-position sidebar drawer with an absolute-position dropdown. The nav will render as a dropdown below the header, not a slide-in sidebar. The `nav.css` sidebar behavior is effectively dead.

**`.site-container` conflict — CRITICAL desktop layout bug:**

| Property | `nav.css` @media≥768px | `main.css` (global) | Winner |
|---|---|---|---|
| `margin-left` | `220px` (sidebar offset) | `auto` (via `margin: 0 auto`) | **`main.css` wins** |
| `max-width` | `calc(960px - 220px)` | `960px` | **`main.css` wins** |

**Result:** On desktop (≥768px), the sidebar is `position: fixed` (from `nav.css`, since `main.css` overrides `main-nav` position to `absolute` which removes the fixed sidebar from desktop flow). The `.site-container` `margin-left: 220px` offset that compensates for the sidebar is overridden by `main.css`'s `margin: 0 auto`. **Content will overlap the sidebar on desktop.**

### CSS Load Order (from `extend_head.html`)

```
1. nav.css         ← sidebar architecture
2. about.css
3. button-brand.css
4. contact.css
5. events.css
6. main.css        ← overrides nav.css's .main-nav and .site-container
7. featured-service.css
8. home-cta.css
9. why-itj.css
10. publications.css
11. services.css
```

### Additional CSS Issues

| Issue | File | Detail |
|---|---|---|
| `custom.scss` is vestigial | `assets/scss/custom.scss` | Only contains `@import "../css/services.css"`. Not loaded by `extend_head.html`. Dead file. |
| All CSS loaded on all pages | `extend_head.html` | `contact.css`, `events.css`, `publications.css` etc. are loaded even on the homepage. Performance overhead. |
| CSS vars not defined in custom CSS | All 11 files | `--primary`, `--background`, `--text`, `--content`, `--entry`, `--border`, `--muted`, `--accent` all depend on PaperMod's CSS to define them. |
| Duplicate `.section-subtitle` | `events.css:8`, `services.css:188` | Both define `.section-subtitle` with different properties; services.css loads last and wins |
| `.nav-overlay` HTML missing | `nav.css` defines `.nav-overlay` styles | No `.nav-overlay` div exists in `layouts/partials/header.html`; JS does not create one |

---

## 11. Homepage Implementation Diagnosis

### Template Structure

**File:** `layouts/index.html`

```html
<!DOCTYPE html>
<html lang="en">
<head>
  {{ partial "extend_head.html" . }}
</head>
<body>
  {{ partial "header.html" . }}
  <div class="site-container">     ← OPENS second site-container
    {{ partial "hero.html" . }}
    {{ partial "home_quicklinks.html" . }}
    {{ partial "home_featured_service.html" . }}
    {{ partial "home_why.html" . }}
    {{ partial "home_cta.html" . }}
  </div>
  {{ partial "footer.html" . }}
</body>
</html>
```

### Double `site-container` Wrapper Bug

`layouts/partials/header.html` (line 29) opens an extra wrapper:
```html
<!-- Begin site-container wrapper -->
<div class="site-container">
```

`layouts/partials/footer.html` (line 4) closes it:
```html
</div>
```

`layouts/index.html` (lines 13–19) wraps the homepage content in its OWN `<div class="site-container">`.

**Result on homepage:**
```html
<div class="site-container">   ← from header.html
  <div class="site-container"> ← from index.html
    [hero, quicklinks, featured, why, cta]
  </div>
</div>                         ← from footer.html
```

`.site-container` is doubly nested on the homepage. The inner container inherits the constrained max-width and padding, but the outer one also applies `margin: 0 auto` (from `main.css`). This results in double padding/margin stacking.

Non-homepage pages (`_default/single.html`, events list, publications list) use `{{ define "main" }}` and are rendered within PaperMod's base template, which does NOT inject `index.html`'s outer site-container. The header/footer site-container wraps those pages correctly.

### Homepage Partial Inventory

| Partial | File | Content | Issues |
|---|---|---|---|
| `hero.html` | `layouts/partials/hero.html` | Banner image, site title, tagline, quote | `src` uses `relURL` (canonifyURLs saves it) |
| `home_quicklinks.html` | `layouts/partials/home_quicklinks.html` | 4 cards: Services/Publications/Events/Contact | Line 4 uses `absURL`, lines 7/11/15 use `relURL` — inconsistent |
| `home_featured_service.html` | `layouts/partials/home_featured_service.html` | CV Extractor promotion card | Link uses `relURL` ✓; service is hardcoded (not data-driven) |
| `home_why.html` | `layouts/partials/home_why.html` | 5-bullet "Why ITJ Labs" list | No emoji class in HTML vs CSS expects `.emoji` class on elements |
| `home_cta.html` | `layouts/partials/home_cta.html` | "Let's Talk" CTA section | `href="/contact/"` hardcoded; no `relURL`/`absURL` wrapper |

### JS Issues

**`static/js/navbar.js`:**
```js
toggleButton.addEventListener("click", () => {
  const isOpen = header.classList.toggle("nav-open");
});
```

Toggles `.nav-open` on `.site-header`. This aligns with the `nav-open` CSS selector in both `nav.css` and `main.css`. However, `nav.css` also expects a `.nav-overlay` element to exist in the DOM (for the dim background when the drawer opens). No overlay `<div>` exists in `header.html`. On mobile, there will be no backdrop behind the open menu.

**`static/js/services-tilt.js`:** Loaded globally via `footer.html` but only used on the Services page (`.interactive-card` selector). No harm but unnecessary on other pages.

---

## 12. Content Readiness Matrix

| Section | Content File(s) | Template | Images | Status | Exec-Ready? |
|---|---|---|---|---|---|
| **Home** | (layout-only) | `layouts/index.html` | `static/images/hero-banner.png` ✓ | Implemented | ✅ Yes (with CSS bugs) |
| **About** | `content/about/_index.md` | `_default/single.html` | team (4 photos) ✓, partners (4 logos) ✓, icons ✓ | Full content | ✅ Yes |
| **Services** | `content/services/_index.md` + 3 detail pages | `_default/single.html` | `ai-sandbox-banner.png` ✓, logos ✓ | Full content, 3 services with detail pages | ✅ Yes |
| **Events** | 11 markdown files | `layouts/events/list.html` | 11 event photo sets ✓ | Complete — 2024 and 2025 coverage | ✅ Yes |
| **Publications** | 1 file: `2025-multiclass-evaluation-vision-transformers.md` | `layouts/publications/single.html` + `list.html` | None (links only) | **Body is placeholder** (`<!-- your body here… -->`) | ⚠️ Thin |
| **Contact** | `content/contact/_index.md` | `_default/single.html` | SVG icons ✓ | Form present but no backend; shortcode unused | ⚠️ Non-functional form |

### Publications Detail

The single publication entry (`2025-multiclass-evaluation-vision-transformers.md`) has:
- Valid front matter (title, authors, date, summary, journal, externalURL, pdf, tags)
- Body: `<!-- your body here… -->` — placeholder, not rendered
- The `publications/single.html` template renders only `summary`, `journal`, PDF link, and external URL — the placeholder body has no impact on rendering

**Verdict:** Publications list renders with 1 card. Single publication page shows summary and action buttons. Content is thin but functional for a single-paper showcase.

### Contact Form Detail

`content/contact/_index.md` uses a plain `<form>` with no `action` attribute:
```html
<form>
  ...
  <button type="submit">Send Message</button>
</form>
```

A shortcode `layouts/shortcodes/contact-form.html` exists with Netlify form handling (`data-netlify="true"`), but it is **not used** in the contact content. The plain form submits to the current page URL with GET — messages are NOT delivered anywhere.

This is non-functional for executive demo purposes if form submission is expected to work.

---

## 13. GitHub Pages Risk Assessment

| Risk | Severity | Detail |
|---|---|---|
| Deploy trigger is `develop`, not `feature/local-home-page` | **HIGH** | Current CSS modularization work (4 commits) is not deployed. Live site is stale. |
| `force_orphan: true` on gh-pages | Low | No history retention on gh-pages. Not a bug but limits rollback visibility. |
| No custom domain (CNAME) | Low | Site only at `itj-labs.github.io/department-site/`. Fine for executive review if URL is shared. |
| Submodule must exist for CI build | Medium | If PaperMod upstream breaks or is deleted, CI build fails. Consider vendoring. |
| Stale gh-pages | **HIGH** | `origin/gh-pages` shows only 2 total commits. Last deploy referenced commit `9eaffeba`. Confirm this matches `develop` HEAD (`927ade2`). |
| `canonifyURLs = true` masking URL bugs | Medium | Removing this setting in the future will expose hardcoded paths. |
| Desktop sidebar CSS conflict | **HIGH** | `main.css` overrides `nav.css` sidebar layout — sidebar likely overlaps content on desktop in live deployed version. |

---

## 14. Recommended Branch Baseline

**Recommendation: `feature/local-home-page` should become the new `develop` baseline.**

**Evidence:**
1. `develop` has 0 commits not already in `feature/local-home-page`
2. `feature/local-home-page` has 4 CSS-only commits ahead of `develop`
3. The 4 commits are pure improvements (CSS modularization, not risky features)
4. All CI deployment logic triggers on `develop` — once merged, deploy becomes current

**Merge path:** Fast-forward merge of `feature/local-home-page` → `develop` (no conflicts; linear history).

---

## 15. Should `feature/local-home-page` Be Merged?

**Yes. Merge is safe and recommended.**

The diff (`develop..feature/local-home-page`) is:

```
assets/css/featured-service.css  |  77 +++   (extracted from main.css)
assets/css/home-cta.css          |  51 +++   (extracted from main.css)
assets/css/why-itj.css           |  63 +++   (extracted from main.css)
assets/css/main.css              | 178 ---   (content moved to above 3 files)
layouts/partials/extend_head.html|  27 ++-   (loads the 3 new CSS files)
layouts/partials/home_why.html   |  14 ++-   (updated CSS class references)
```

This is a clean CSS decomposition. No HTML structure changes, no content changes, no config changes. The individual CSS files already exist and are loaded. The merge brings `develop` up to the current working state.

**After merge:** `develop` HEAD = `feature/local-home-page` HEAD. The next push to `develop` will trigger CI and deploy the current state to GitHub Pages.

---

## 16. Critical Issues (Prioritized)

### C1 — BLOCKER: `make preview` / `make deploy` broken

- **File:** `Makefile` lines 14–17
- **Cause:** Calls `./scripts/test-deploy.sh` which was renamed to `scripts/deploy.sh` (per CHANGELOG) but Makefile was not updated
- **Impact:** Developers cannot run a local production preview; `make deploy` silently fails
- **Fix:** Change `test-deploy.sh` → `deploy.sh` in Makefile's `preview` and `deploy` targets

### C2 — BLOCKER: Desktop nav/content layout CSS conflict

- **Files:** `assets/css/nav.css` (sidebar, `@media ≥768px`), `assets/css/main.css` (global `.site-container`)
- **Cause:** `main.css` loads after `nav.css` and overrides `.main-nav` (from fixed sidebar to absolute dropdown) and `.site-container` `margin-left: 220px` → `auto`
- **Impact:** On desktop, the fixed sidebar overlaps the content area (content not offset by 220px). Nav renders as a dropdown not a sidebar drawer. The `wip/nav-css-troubleshooting` branch suggests this was known.
- **Fix:** Either (a) merge `main.css` and `nav.css` into a single authoritative file, or (b) move all nav/layout rules exclusively into `nav.css` and remove duplicates from `main.css`

### C3 — BLOCKER: Develop is stale; deployed site not current

- **Cause:** 4 CSS commits exist only on `feature/local-home-page`
- **Impact:** Live GitHub Pages site reflects an older CSS state; executive review would show stale content
- **Fix:** Merge `feature/local-home-page` → `develop`, push to trigger CI deploy

### C4 — HIGH: Double `<div class="site-container">` on homepage

- **Files:** `layouts/partials/header.html:29`, `layouts/index.html:13`
- **Cause:** Header partial opens a `.site-container` div; homepage template opens another
- **Impact:** Double-nested container causes double padding/margin; layout may be compressed or misaligned
- **Fix:** Remove the `.site-container` wrapper from `layouts/index.html` (let the header/footer pair handle it) or remove it from `header.html` for homepage only

### C5 — HIGH: Contact form non-functional

- **File:** `content/contact/_index.md`
- **Cause:** Plain `<form>` with no `action` attribute; shortcode with Netlify handling exists but is unused; site is not on Netlify
- **Impact:** Executive demo: clicking "Send Message" reloads the page; no email is sent
- **Fix (MVP):** Add a third-party form provider (Formspree, FormSubmit) or document as "coming soon"

### C6 — MEDIUM: `.nav-overlay` HTML element missing

- **File:** `layouts/partials/header.html`, `assets/css/nav.css`
- **Cause:** `nav.css` defines `.nav-overlay` with backdrop styles; no `<div class="nav-overlay">` exists in the HTML
- **Impact:** No dim backdrop behind mobile menu drawer when open
- **Fix:** Add `<div class="nav-overlay"></div>` to `header.html`

### C7 — MEDIUM: `canonifyURLs = true` masking URL inconsistency

- **File:** `config.toml`, multiple layout/content files
- **Impact:** Not a current bug but a maintenance risk; mixed URL strategies across templates
- **Fix:** Standardize on `relURL` or `absURL` throughout, then remove `canonifyURLs`

### C8 — LOW: Non-standard PaperMod params in `config.toml`

- **File:** `config.toml` `[params]` block
- **Cause:** `primaryHue`, `primarySaturation` etc. are not PaperMod params
- **Impact:** Params are silently ignored; no actual color customization effect
- **Fix:** Remove or replace with actual PaperMod params; define CSS variable overrides in custom CSS

### C9 — LOW: `assets/scss/custom.scss` is vestigial

- **File:** `assets/scss/custom.scss` (1 import line)
- **Cause:** Not loaded by `extend_head.html`; only imports `services.css` (already loaded separately)
- **Fix:** Delete file or convert to actual shared variable definitions

---

## 17. Risks Blocking Executive Review

The following issues, if unresolved, will degrade or embarrass the site during an executive walkthrough:

| Issue | Visible to GM? | Severity |
|---|---|---|
| Desktop sidebar overlaps content (C2) | **Yes** — desktop layout broken | Critical |
| Deploy is stale (C3) | **Yes** — if CSS changes visible locally | Critical |
| Contact form sends nothing (C5) | **Yes** — if GM clicks "Send Message" | High |
| Double container on homepage (C4) | Maybe — depends on actual pixel impact | Medium |
| Publications section has 1 entry, placeholder body | **Yes** — thin content | Low-Medium |
| No custom domain — URL exposes `itj-labs.github.io` | Depends on GM perception | Low |

---

## 18. Recommended Next Strategic Slice

### SF-SLICE-087B — DEPARTMENT-SITE-STABILIZATION

**Goal:** Resolve all Critical and High blockers so the site is stable and representative for executive review.

**Scope:**

1. Merge `feature/local-home-page` → `develop` (fast-forward, no conflict)
2. Fix Makefile: `test-deploy.sh` → `deploy.sh` in `preview` and `deploy` targets
3. Resolve `nav.css` vs `main.css` CSS conflict:
   - Consolidate `.main-nav`, `.mobile-menu-toggle`, `.site-header`, and `.site-container` rules into `nav.css`
   - Strip duplicate/conflicting rules from `main.css`
   - Decide final nav style: sidebar drawer OR dropdown (not both)
4. Fix double `<div class="site-container">` on homepage:
   - Remove the inner wrapper from `layouts/index.html` (keep header/footer pair)
5. Add `.nav-overlay` div to `header.html`
6. Contact form: replace plain `<form>` with FormSubmit or Formspree integration (no Netlify)
7. Push to `develop` to trigger CI deploy and verify live site

**Non-goals for 087B:** Do not redesign the site, do not add new pages, do not change content, do not add publications.

**Acceptance Criteria:**

- `make serve` starts dev server without errors
- `make build` produces `public/` without Hugo errors or warnings
- Desktop (≥768px): sidebar is visible, content is offset, no overlap
- Mobile (<768px): hamburger toggles drawer correctly, overlay dims background
- Homepage renders without double-padding artifacts
- Contact form submits successfully (message received by a real endpoint)
- `develop` branch is current with `feature/local-home-page`
- CI deploys successfully to GitHub Pages

**Implementation Checklist:**

- [ ] Merge `feature/local-home-page` into `develop`
- [ ] Fix `Makefile`: lines 14–17 → `./scripts/deploy.sh`
- [ ] Consolidate nav CSS: single authoritative `.main-nav`, `.site-container`, `.site-header` in `nav.css`
- [ ] Remove conflicting rules from `main.css`
- [ ] Remove inner `<div class="site-container">` from `layouts/index.html`
- [ ] Add `<div class="nav-overlay"></div>` before `</header>` in `header.html`
- [ ] Replace plain `<form>` in `content/contact/_index.md` with FormSubmit/Formspree action URL
- [ ] Verify `make serve` locally: no 404s on all 6 nav sections
- [ ] Verify `make build` produces no Hugo warnings
- [ ] Push to `develop` and confirm GitHub Actions CI passes
- [ ] Verify live GitHub Pages URL renders correctly on desktop and mobile
- [ ] Optional: Remove or fix `assets/scss/custom.scss` (dead file)
- [ ] Optional: Remove non-standard params from `config.toml` `[params]`

---

## Appendix A: File Evidence Reference

| Claim | Evidence File | Line(s) |
|---|---|---|
| develop is 4 commits behind | `git log develop..origin/feature/local-home-page` | — |
| PaperMod is a submodule | `.gitmodules` | 1–3 |
| `canonifyURLs` setting | `config.toml` | 6 |
| Non-standard params | `config.toml` | 8–17 |
| Deploy triggers on develop | `.github/workflows/deploy.yml` | 5 |
| Submodule init in CI | `.github/workflows/deploy.yml` | 23 |
| Makefile broken targets | `Makefile` | 14–17 |
| `test-deploy.sh` renamed | `CHANGELOG.md` | 7 |
| header.html opens site-container | `layouts/partials/header.html` | 29 |
| footer.html closes it | `layouts/partials/footer.html` | 4 |
| index.html opens its own | `layouts/index.html` | 13–19 |
| nav.css sidebar + desktop offset | `assets/css/nav.css` | 29–39, 86–113 |
| main.css overrides .main-nav | `assets/css/main.css` | 23–46 |
| main.css overrides .site-container | `assets/css/main.css` | 173–177 |
| Load order nav before main | `layouts/partials/extend_head.html` | 7, 23 |
| No overlay div in header | `layouts/partials/header.html` | (full file) |
| Contact form no action | `content/contact/_index.md` | 37 |
| Netlify shortcode unused | `layouts/shortcodes/contact-form.html`, `content/contact/_index.md` | — |
| Publication body placeholder | `content/publications/2025-multiclass...md` | 22 |
| home_cta hardcoded path | `layouts/partials/home_cta.html` | 6 |
| absURL/relURL inconsistency | `layouts/partials/home_quicklinks.html` | 4, 7, 11, 15 |
| custom.scss is vestigial | `assets/scss/custom.scss` | 1–2 |
