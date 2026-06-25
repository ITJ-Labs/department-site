# ITJ Solutions — AI Solutions Design System

**Slice:** SF-SLICE-087D.0 — Corporate Brand Discovery  
**Date:** 2026-06-25  
**Status:** DRAFT — Pending executive brand alignment  
**Scope:** AI Solutions at ITJ Solutions — department-site  

---

## Brand Overview

### Mission

AI Solutions at ITJ Solutions delivers production-grade AI systems — not prototypes. The department exists to take enterprise organizations from "AI interest" to "AI deployed" across Healthcare, Life Sciences, HR, and Operations.

### Visual Identity

**Corporate parent (ITJ Solutions):**
- Logo: Blue-to-purple gradient, SVG, horizontal lockup
- Navigation: Dark horizontal top nav with dropdowns
- Hero style: Large headline over background image, dual CTA buttons
- Tone: Professional, credibility-first, healthcare/life sciences enterprise

**Current AI Solutions site:**
- Inherited PaperMod theme with CSS variable layer
- Predominantly blue (`hsl(220, 80%, 50%)`) with green secondary accents
- Sidebar navigation (desktop) + drawer (mobile) — different architecture from corporate
- No formal logo — uses site title text only
- No consistent font — uses system fonts

**Gap:** The department site has no visual connection to the ITJ Solutions corporate brand. Typography, colors, and component patterns are independently invented, not derived from a parent design system.

### Brand Personality

| Dimension | Direction | Current State |
|---|---|---|
| **Professional** | Enterprise-grade, formal | Moderate — some pages feel developer-informal |
| **Modern** | Clean, purposeful, current | Moderate — strong in card components, weak in typography |
| **Enterprise** | Trustworthy, structured | Low — mixed color systems, no consistent scale |
| **Innovation** | Forward-looking, technical depth | Low — hero and copy are generic |

### Innovation Positioning

Target: "The AI engineering team that ships production AI where others deliver slide decks."

The design system must support this positioning by conveying depth, precision, and delivery — not just visual polish. Density of information matters. Components should feel information-rich, not decorative.

---

## Design Tokens

### Primary Colors

| Token | Current Values Found | Config / Source | Notes |
|---|---|---|---|
| `color.brand.primary` | `#0057ff`, `hsl(220,80%,50%)`, `#0366d6`, `#337aff` | `config.toml: primaryHue=220, S=80, L=50` | 6 different blues exist; canonical = `hsl(220,80%,50%)` ≈ `#1a5ee6` |
| `color.brand.primary.hover` | `#1d5edb`, `#0059c0`, `#0256b3` | Derived | Consistent with ~10% darker primary |
| `color.brand.primary.light` | `hsl(220,80%,60%)` | `config.toml: accentLightness=60` | Used for hover accent states |

### Secondary Colors

| Token | Current Values Found | Notes |
|---|---|---|
| `color.brand.secondary` | `#28a745`, `#2e7d32`, `#1E9D59`, `#4ADE80` | 4 different greens; used for CTA, success, learn-more, hover accents |
| `color.brand.secondary.hover` | `#218838`, `#256329`, `#1e7e34`, `#167D47` | Multiple darker-green hover states |

**Note:** The green secondary (`#28a745`) comes from GitHub's color system, not from ITJ Solutions branding. It should be replaced with a brand-aligned accent. Whether green is appropriate as the CTA color or whether the CTA should shift to primary blue is a business decision for brand alignment.

### Accent Colors

| Token | Current Values Found | Notes |
|---|---|---|
| `color.accent.blue` | `#007acc` (services/contact), `#007bff` (publications) | Lighter blues used for quotes, links |
| `color.accent.hover` | `#005fa3`, `#0056b3` | Darker versions of accent |

### Background Colors

| Token | Current Values Found | Source |
|---|---|---|
| `color.bg.page` | PaperMod `--background` | Theme variable — white in light mode |
| `color.bg.surface` | `#fff`, `#fdfdfd`, PaperMod `--entry` | Card backgrounds |
| `color.bg.alt` | `#f5f5f5` (why-itj), `#f9f9f9` (home-cta) | Alternating section backgrounds |
| `color.bg.overlay` | `rgba(0,0,0,0.4)` | Mobile nav overlay |

### Semantic Colors

| Token | Current Values Found | Notes |
|---|---|---|
| `color.success` | `#28a745`, `#2e7d32`, `#1E9D59` | Inconsistent |
| `color.warning` | Not defined | Gap |
| `color.danger` | `#dc3545`, `#c82333` (publications hover) | Appears only in pub-card hover — likely unintentional brand use |
| `color.info` | Not defined | Gap |

### Text Colors

| Token | Current Values Found | Notes |
|---|---|---|
| `color.text.primary` | `#111`, `#1a1a1a`, `#222` | Dark text — 3 near-identical values |
| `color.text.secondary` | `#333`, `#444`, `#555` | Mid-gray — 3 values |
| `color.text.muted` | `#666`, PaperMod `--secondary` | Light/placeholder text |
| `color.text.on-dark` | `#fff`, `#e0e0e0`, `#eeeeee` | Text on dark backgrounds (services.css) |

### Border Colors

| Token | Current Values Found | Notes |
|---|---|---|
| `color.border` | `#ccc`, `#e1e1e1`, PaperMod `--border`, `rgba(0,0,0,0.15)` | 4 variants — no token |

---

## Typography

### Font Family

**Current state:** No custom font defined. Inherits PaperMod theme default: system font stack.

PaperMod system stack: `-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif`

**Gap:** No enterprise typeface. ITJ corporate site font not identified (page did not expose font declarations). Requires brand decision: stay on system fonts or introduce a webfont (Inter, IBM Plex Sans, Source Sans Pro are common enterprise choices).

### Heading Scale (extracted from CSS)

| Level | Current Size | Location |
|---|---|---|
| `h1` — Page title | `2.5rem` | hero.html |
| `h1` — Section | `2.2rem` | events section-title |
| `h2` — Major section | `2rem` | why-itj, cta, featured-service |
| `h2` — Card | `1.75rem` | about mv-card |
| `h3` — Subsection | `1.6rem` | intro-block |
| `h3` — Featured | `1.5rem` | contact, featured-content |
| `h2` — Publication card | `1.35rem` | pub-card |
| `h3` — Service card | `1.3rem` | service-card__title |
| `h2` — Event card | `1.25rem` | event-info |
| `body` | `1rem` | base |
| `small` | `0.95rem`, `0.9rem`, `0.85rem` | meta, subtitles |

**Issue:** No formal type scale. Sizes are ad hoc per component.

### Body Scale

- Base: `1rem` (16px)
- Line height: `1.6` (most common), `1.4` (compact), `1.5` (services)
- Font weight: `400` (body), `500` (nav, medium), `600` (buttons, labels), `700` (headings)

---

## Spacing Scale

Spacing found in CSS (not a defined scale — ad hoc):

| Usage | Values Found |
|---|---|
| Container padding | `2rem 1rem`, `2rem 1.5rem`, `1.5rem 1rem` |
| Section padding | `3rem 1rem`, `4rem 1.5rem`, `5rem 1.5rem` |
| Card padding | `2rem`, `2rem 1.5rem`, `1.5rem`, `1.2rem` |
| Grid gap | `1.5rem`, `2rem` |
| Component gap | `0.5rem`, `0.75rem`, `1rem` |

**Note:** No defined spacing scale (e.g., 4px base). All values are author-intuition. This creates minor inconsistencies in padding between components.

---

## Border Radius

| Usage | Value |
|---|---|
| Cards (standard) | `12px` — most common |
| Cards (alternative) | `10px`, `16px` — inconsistent |
| Buttons | `6px` — consistent across most |
| Inputs | `6px` |
| Publication pills | `9999px` (full pill) |
| Badges | `8px` |

**Recommended canonical:** `12px` for cards, `6px` for interactive elements (buttons, inputs).

---

## Shadow System

| Level | Value | Usage |
|---|---|---|
| `shadow.xs` | `0 1px 3px rgba(0,0,0,0.05)` | Subtle borders |
| `shadow.sm` | `0 2px 8px rgba(0,0,0,0.06-0.08)` | Cards resting |
| `shadow.md` | `0 2px 12px rgba(0,0,0,0.05)`, `0 4px 20px rgba(0,0,0,0.08)` | Contact/featured cards |
| `shadow.lg` | `0 8px 24px rgba(0,0,0,0.12)`, `0 8px 32px rgba(0,0,0,0.08)` | CTA card, lifted cards |
| `shadow.xl` | `0 12px 40px rgba(0,0,0,0.06)` | Featured service box |
| `shadow.button` | `0 4px 12px rgba(29,94,219,0.3)` | Blue button hover |
| `shadow.button.green` | `0 4px 12px rgba(22,125,71,0.4)` | Green button hover |

---

## Container Widths

| Token | Value | Usage |
|---|---|---|
| `container.page` | `calc(960px - 220px)` = `740px` | Main content (desktop with sidebar) |
| `container.xl` | `1080px` | Quick-links grid |
| `container.lg` | `960px` | Featured service, hero |
| `container.md` | `900px` | Services intro |
| `container.sm` | `800px` | About, publications |
| `container.xs` | `600px` | Featured content, hero quote |

---

## Breakpoints

| Token | Value | Usage |
|---|---|---|
| `breakpoint.desktop` | `768px` | Sidebar activates, nav changes |
| `breakpoint.tablet` | `600px` | Team grid collapses |
| `breakpoint.mobile` | `400px` | Button full-width |

---

## Z-Index

| Layer | Value | Usage |
|---|---|---|
| Nav overlay | `999` | Mobile nav backdrop |
| Nav drawer | `1000` | `.main-nav` drawer |
| Nav toggle | `1001` | Hamburger button |

---

## Transitions

| Token | Value | Usage |
|---|---|---|
| `transition.fast` | `0.2s ease` | Buttons, cards hover (standard) |
| `transition.medium` | `0.3s ease` | Nav drawer, partner logos |
| `transition.slow` | `0.6s ease` | Fade-in card animations |

---

## Components

### Navigation

- **Desktop:** Fixed left sidebar, 200px wide, `position: fixed`, offset content by `margin-left: 220px`
- **Mobile:** Off-canvas left drawer, `transform: translateX(-100%)` → `(0)` on open, `.nav-overlay` backdrop
- **Toggle:** Hamburger button `☰`, hidden on desktop, triggers `.nav-open` class on `.site-header`
- **JS:** `static/js/navbar.js`
- **CSS:** `assets/css/nav.css` (authoritative since 087C)
- **Links:** Home, About, Services, Publications, Events, Contact
- **Brand gap:** No logo image — uses text "ITJ Labs Department". No brand color applied.

### Hero

- **File:** `layouts/partials/hero.html`
- **Structure:** `<section.hero>` → `.container` → `<img.hero-banner>` + `<h1>` + `<p>` + `<blockquote.hero-quote>`
- **Content:** hero-banner.png (static), site title, tagline "AI & Data Science at ITJ Labs", quote "The future isn't coming. We're building it."
- **CSS:** `assets/css/main.css` — `background-color: var(--background); padding: 3rem 1rem; text-align: center`
- **Brand gap:** Old name ("ITJ Labs"), generic tagline, no brand color — inherits PaperMod `--background`

### Cards

Multiple card patterns exist with inconsistent styling:

| Card Type | File | Radius | Shadow | Border | Title Color |
|---|---|---|---|---|---|
| Quick-link card | `main.css` | `12px` | `0 2px 8px 0.04` | `rgba(0,0,0,0.15)` | `var(--primary)` |
| Service card | `services.css` | `12px` | `0 1px 3px 0.05` | `var(--border)` + top blue | `var(--primary)` |
| Event card | `events.css` | `12px` | `0 2px 8px 0.08` | `#ccc` | `#111111` |
| Publication card | `publications.css` | `12px` | `0 8px 24px 0.2` | `var(--border)` | `var(--primary)` |
| Contact card | `contact.css` | `10px` | `0 2px 12px 0.05` | `#e1e1e1` | `#222` |
| Featured card | `featured-service.css` | `16px` | `0 12px 40px 0.06` | `rgba(0,0,0,0.15)` | `#0057ff` (hardcoded) |
| CTA card | `home-cta.css` | `12px` | `0 8px 32px 0.08` | `var(--muted)` | `#222` |
| Mission/Vision | `about.css` | `12px` | `0 2px 8px 0.1` | `var(--border)` | `var(--primary)` |

**Observation:** All cards use 12px radius except contact (10px) and featured (16px). Radius is nearly aligned. Shadow depths are inconsistent. Border color is inconsistent (3 different approaches).

### Buttons

**Critical debt: 4+ parallel button systems.**

| System | Class | Color | Location |
|---|---|---|---|
| 1. Brand buttons | `a.button.primary`, `a.button.success` | `#0366d6`, `#28a745` | `button-brand.css` |
| 2. CTA buttons | `.cta-button`, `.cta-button.cta-green` | `#337aff`, `#28a745` | `main.css`, `featured-service.css`, `home-cta.css` |
| 3. Publication buttons | `.btn-primary`, `.btn-secondary` | `#007bff`, `#28a745` | `publications.css` |
| 4. Service buttons | `.button.primary`, `.button.learn-more` | `var(--primary)` ghost, `#1E9D59` | `services.css` |

**Shapes:**
- Standard: `border-radius: 6px` (most common)
- Pill: `border-radius: 9999px` (publications only)

**States:** All have hover states. Focus states inconsistent — only publications.css defines `:focus` with outline.

**Accessibility gap:** No `:focus-visible` usage. No disabled state defined.

### Forms

- **Contact form:** `content/contact/_index.md` + `contact.css`
- **Input style:** `border: 1px solid #ccc; border-radius: 6px; padding: 0.85rem 1rem`
- **Focus:** `border-color: #2e7d32; box-shadow: 0 0 0 3px rgba(46,125,50,0.15)` — GREEN focus ring, inconsistent with blue primary
- **Submit button:** `background-color: #2e7d32` — hardcoded green, not using brand primary
- **Shortcode:** `layouts/shortcodes/contact-form.html` exists but unused (contact page uses raw HTML)

### Tables

Not formally styled. PaperMod base styles apply. No custom table CSS defined.

### Alerts

No alert component defined. `industry-quote`, `industry-note`, `support-note` in `services.css` serve as informal alerts with left-border pattern, but they are not a reusable system.

### Footer

- **File:** `layouts/partials/footer.html`
- **Content:** Closes `.site-container` div, contains console.log debug statements, loads `services-tilt.js` and `navbar.js`
- **Brand gap:** No footer content — no links, copyright, or brand attribution. The footer is purely structural.
- **Technical debt:** `console.log('🪝 footer.html loaded')` in production

### Icons

**Custom SVG icons** in `static/images/icons/`:
- `ai-capabilities.svg`, `ai-knowledge.svg`, `ai-products.svg` — used in About page
- `mission.svg`, `vision.svg` — used in About page
- `google-scholar.svg`, `linkedin.svg`, `orcid.svg`, `scopus.svg` — academic social icons

**CSS emoji icons** in `services.css`:
- `⚠️` — "Why AI PoCs Often Fail"
- `🚀` — "How We Help"
- `🔬` — "How We Build Reliable AI PoCs"
- `💻` — "Our Tech Stack"
- `🏆` — "Why Choose Us?"

**Brand gap:** Emoji icons are not brand-aligned and render differently across OS. No unified icon system.

### Links

Inconsistent link treatment across pages:
- PaperMod default: underline + `var(--primary)` color
- Services tech links: `text-decoration: none !important` (force-removed)
- Contact list: `text-decoration: none !important; border: none !important` (multiple overrides)
- Partner logos: multiple `!important` decorations removed

**Pattern:** Custom CSS frequently uses `!important` to override PaperMod link styles, indicating style-layer conflict.

### Code Blocks

PaperMod default styling. No customization.

### Publication Cards

- **File:** `publications.css` — `.pub-card`
- **Notable:** Gradient stripe top (blue by default, swaps to RED on hover). This red-on-hover is brand-inconsistent.
- **Grid:** `repeat(auto-fit, minmax(320px, 1fr))`

### Case Study Cards

Not yet defined. No case studies content section exists.

### Event Cards

- **File:** `events.css` — `.event-card`
- **Notable:** Image slideshow component (JS in `footer.html`), but slideshow logic is a stub: "your existing slideshow code" comment placeholder.

---

## Website Inventory

### Current Implementation

| Section | URL | Template | Status |
|---|---|---|---|
| Homepage | `/` | `layouts/index.html` | ✅ Live — 6 partials |
| About | `/about/` | `_default/single.html` + PaperMod | ✅ Live — custom CSS |
| Services | `/services/` | `_default/single.html` | ✅ Live — rich custom CSS |
| Services / CV Extractor | `/services/cv-extractor/` | `_default/single.html` | ✅ Live |
| Services / NeuroDocs | `/services/neurodocs/` | `_default/single.html` | ✅ Live |
| Services / TalentBot | `/services/talentbot/` | `_default/single.html` | ✅ Live |
| Publications | `/publications/` | `layouts/publications/list.html` | ✅ Live — 1 publication |
| Publications / single | `/publications/*/` | `layouts/publications/single.html` | ✅ Live |
| Events | `/events/` | `layouts/events/list.html` | ✅ Live — 12 events |
| Contact | `/contact/` | `_default/single.html` | ✅ Live — FormSubmit placeholder |
| 404 | `/404.html` | PaperMod default | ✅ Built |

### Reusable Components (Partials)

| Partial | File | Used By |
|---|---|---|
| Header + nav | `header.html` | All pages |
| Footer + scripts | `footer.html` | All pages |
| CSS loader | `extend_head.html` | All pages |
| Hero | `hero.html` | Homepage |
| Quick links | `home_quicklinks.html` | Homepage |
| Featured service | `home_featured_service.html` | Homepage |
| Why ITJ | `home_why.html` | Homepage |
| CTA | `home_cta.html` | Homepage |

**Gap:** No reusable shortcodes for cards, sections, or team members. All custom layouts are hardcoded in content files.

### Components Requiring Brand Alignment

1. **Header** — Text "ITJ Labs Department" in logo area — no brand mark
2. **Hero** — Outdated copy ("ITJ Labs"), generic image, no AI Solutions positioning
3. **Featured service** — Hardcoded blue `#0057ff` title, inconsistent with token layer
4. **CTA section** — Green button `#28a745` — should align with brand primary or defined accent
5. **Contact form** — Green focus ring and submit button — inconsistent with blue primary
6. **Service cards** — Top border `hsl(220,80%,45%)` hardcoded, not from token
7. **Publication cards** — Blue→red gradient stripe hover is brand drift
8. **Services emoji icons** — Not enterprise-aligned

### Technical Debt

**Critical:**

| ID | Issue | Location | Impact |
|---|---|---|---|
| TD-01 | 4+ parallel button systems with hardcoded colors | `button-brand.css`, `main.css`, `featured-service.css`, `publications.css`, `services.css`, `home-cta.css` | High — any brand update requires 6+ file edits |
| TD-02 | 6 different blue color values — no token | Throughout all CSS files | High — impossible to update primary color globally |
| TD-03 | 4 different green color values — no token | `button-brand.css`, `contact.css`, `home-cta.css`, `services.css` | High |
| TD-04 | Site title "ITJ Labs Department" — outdated | `config.toml` | High — shows in browser tab, header |
| TD-05 | Hero copy references "ITJ Labs" old name | `hero.html` | High — wrong brand name in production |

**Medium:**

| ID | Issue | Location | Impact |
|---|---|---|---|
| TD-06 | `console.log` debug statements in production | `footer.html` | Medium — exposes internal notes to DevTools |
| TD-07 | `canonifyURLs = true` deprecated Hugo setting | `config.toml` | Medium — may cause URL issues in future Hugo versions |
| TD-08 | Emoji icons not enterprise-aligned | `services.css` | Medium — inconsistent rendering across OS |
| TD-09 | Publication cards: blue→red hover gradient | `publications.css` | Medium — brand drift |
| TD-10 | Contact form focus ring and submit button green | `contact.css` | Medium — inconsistent with blue primary |
| TD-11 | Event slideshow JS is a stub (comment placeholder) | `footer.html` | Medium — dead feature |
| TD-12 | Footer has no content (copyright, links, attribution) | `footer.html` | Medium — incomplete page |
| TD-13 | Contact form shortcode (`contact-form.html`) is unused | `layouts/shortcodes/` | Low — dead code |
| TD-14 | No favicon for AI Solutions brand | `static/favicon.png` | Low — uses placeholder |
| TD-15 | No webfont — system fonts only | `extend_head.html` | Low — acceptable for v1 |
| TD-16 | `!important` overrides in 5+ CSS files | Multiple | Medium — indicates specificity conflicts with PaperMod |

---

## Brand Compliance Matrix

| Element | Current | Target | Gap | Priority |
|---|---|---|---|---|
| Primary color | 6 ad hoc blue values | Single token `color.brand.primary` | High | P0 |
| Secondary/CTA color | 4 ad hoc greens | Brand-aligned token (ITJ decision) | High | P0 |
| Button system | 4 parallel systems | 1 unified system | High | P0 |
| Site title | "ITJ Labs Department" | "AI Solutions" | High | P0 |
| Hero copy | "AI & Data Science at ITJ Labs" | AI Solutions positioning | High | P0 |
| Logo mark | None (text only) | ITJ Solutions sub-brand mark | Medium | P1 |
| Typography | System fonts (no brand font) | Confirm or define enterprise typeface | Medium | P1 |
| Card border radius | 10–16px inconsistent | Canonical `12px` | Low | P2 |
| Card shadow | 5+ shadow depths | 3-level canonical shadow scale | Low | P2 |
| Link decoration | `!important` overrides | Clean specificity with token | Medium | P1 |
| Form colors | Green-dominant | Primary blue | Medium | P1 |
| Section icons | Emoji | SVG icons from brand set | Medium | P1 |
| Footer | Empty structural div | Brand footer (copyright, links) | Medium | P1 |
| ITJ brand alignment | None | Gradient blue-to-purple direction | High | P0 |

---

## Recommendations

### What Should Remain Unchanged

- **Sidebar nav architecture** — `nav.css` is well-structured and functional. Keep the sidebar+drawer pattern; apply brand colors only.
- **Card layout patterns** — 12px radius, lift-on-hover, grid-based layouts are sound. Standardize values, keep structure.
- **Hugo Pipes CSS fingerprinting** — `extend_head.html` CSS pipeline is correct. Keep it.
- **Grid systems** — `repeat(auto-fit, minmax(..., 1fr))` across all pages is responsive and appropriate.
- **Shadow system** — The multi-depth approach is good. Reduce from 5 levels to 3 canonical levels.
- **Publication single-page layout** — Clean academic format. Keep the structure; align button colors.

### What Should Be Standardized

1. **All color values** → replaced with CSS custom properties (design tokens) in a single `assets/css/tokens.css`
2. **Button system** → collapse 4 systems into 1 with variants: `.btn`, `.btn--primary`, `.btn--secondary`, `.btn--ghost`, `.btn--pill`
3. **Typography scale** → define heading sizes (`--font-size-h1` through `--font-size-sm`) as tokens
4. **Spacing scale** → define `--space-xs` through `--space-2xl` (4px base scale)
5. **Container widths** → `--container-page`, `--container-lg`, `--container-md` as tokens
6. **Border radius** → `--radius-card: 12px`, `--radius-button: 6px`, `--radius-pill: 9999px`
7. **Shadow scale** → `--shadow-sm`, `--shadow-md`, `--shadow-lg`
8. **Transition** → `--transition-fast: 0.2s ease`, `--transition-medium: 0.3s ease`

### What Should Be Removed

- `console.log` debug statements from `footer.html`
- Dead event slideshow JS placeholder comment
- Unused `layouts/shortcodes/contact-form.html`
- Emoji icon CSS (`::before` content with emoji in `services.css`)
- `canonifyURLs = true` (deprecated) — requires URL audit before removing
- Duplicate `!important` link overrides (fix specificity instead)
- Red gradient on `pub-card:hover::before`

### What Should Become Reusable

- Alert/callout pattern (currently in `services.css` as `.industry-quote`, `.industry-note`) → extract to shared component
- Button system → single source in `assets/css/tokens.css` or `assets/css/buttons.css`
- Card base styles → shared `.card` base class with modifier variants
- Team member component → currently inline in content markdown; could become a shortcode

---

## ITJ Solutions Corporate Brand Reference

Observed at `itj.com` (2026-06-25):

- **Logo:** Blue-to-purple gradient, SVG format, horizontal lockup
- **Primary direction:** Blue → Purple gradient (exact hex values not extracted from CSS — requires DevTools inspection)
- **Navigation:** Dark horizontal top nav (not sidebar)
- **CTA buttons:** Prominent, large ("Build Your AI-Ready Team", "Let's Connect", "Contact Us Today")
- **Visual tone:** Professional, enterprise, healthcare/life sciences industry credibility
- **Hero pattern:** Large headline + subheading + dual CTAs over background image

**Implication for AI Solutions:** The sub-brand should share the blue-to-purple gradient direction from the corporate brand, applied to the sidebar navigation and CTA buttons. The primary button color should align with ITJ corporate blue. The sidebar/drawer nav (rather than ITJ's horizontal nav) is appropriate for a content-rich department site.

**Requires confirmation:** Exact ITJ Solutions blue and purple hex values must be obtained from the brand team or by inspecting the corporate site's CSS in a browser.

---

## Ready for SF-SLICE-087D.1

This document is the authoritative brand reference for 087D.1 implementation. Before 087D.1 begins:

1. **Confirm primary blue** — Extract exact value from `itj.com` CSS or obtain from brand guidelines
2. **Confirm CTA color** — Is the CTA button blue (primary) or a distinct accent (current green)?
3. **Confirm typeface** — System fonts or a specific webfont?
4. **Confirm logo** — Text-only or sub-brand SVG mark for "AI Solutions"?

If these are unresolved before 087D.1, implement with the current `hsl(220,80%,50%)` as a placeholder and re-align in a subsequent pass.
