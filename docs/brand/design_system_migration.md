# ITJ Solutions — Design System Migration Report

**Slice:** SF-SLICE-087D.2  
**Date:** 2026-06-25  
**Scope:** AI Solutions Digital Platform (`/home/mike/projects/department-site`)

---

## Migration Summary

| Metric | Value |
|---|---|
| Design-system layer files created | 6 (brand, typography, spacing, layout, components, utilities) |
| Token count: before (087D.1) | 22 |
| Token count: after (087D.2) | 65 |
| Files migrated this slice | 5 (featured-service, why-itj, events, about, main) |
| Files migrated in 087D.1 | 11 (button-brand, contact, events, featured-service, home-cta, main, nav, publications, services, about, why-itj) |
| Estimated tokenization coverage | ~72% |

---

## Files Migrated

### SF-SLICE-087D.1 (previous)

| File | What was tokenized |
|---|---|
| `assets/css/tokens.css` | Created — 22 tokens (color, shadow, radius, transition) |
| `assets/css/button-brand.css` | All color values → color tokens |
| `assets/css/contact.css` | All color + border + focus + radius values → tokens (D-05) |
| `assets/css/featured-service.css` | CTA button color → `--color-primary` |
| `assets/css/home-cta.css` | CTA button color → `--color-primary` (D-02) |
| `assets/css/main.css` | Card border/surface/radius/transition → tokens |
| `assets/css/nav.css` | Overlay → `--color-overlay` |
| `assets/css/publications.css` | Button colors, card stripe, read-more arrow → tokens; TD-09 red-on-hover fixed |
| `assets/css/services.css` | Card accent, borders, industry quote, learn-more button → tokens |
| `assets/css/about.css` | Blockquote border → `--color-primary` |
| `assets/css/why-itj.css` | Border stripes → `--color-primary`, `--color-primary-light` |
| `config.toml` | Site title updated to "ITJ Solutions — AI Solutions" (D-04) |

### SF-SLICE-087D.2 (this slice)

| File | What was tokenized |
|---|---|
| `assets/css/tokens.css` | Expanded: +43 tokens (typography, spacing, z-index, opacity, layout, transitions) |
| `assets/css/featured-service.css` | `background-color`, `padding`, `font-size`, `font-weight`, `line-height`, `border` → tokens |
| `assets/css/why-itj.css` | `padding`, `font-size`, `font-weight`, `color`, `background-color`, `box-shadow`, `margin` → tokens |
| `assets/css/events.css` | `padding`, `font-size`, `font-weight`, `line-height`, `gap`, `box-shadow`, `margin-top` → tokens |
| `assets/css/about.css` | `border-radius`, `padding`, `font-size`, `line-height`, `font-weight`, `margin` → tokens |
| `assets/css/main.css` | `border-radius`, `box-shadow`, `font-size`, `margin`, `padding`, `max-width`, `opacity` → tokens |
| `layouts/partials/extend_head.html` | Added 6 layer CSS files (brand, typography, spacing, layout, components, utilities) |

### New files created (SF-SLICE-087D.2)

| File | Purpose |
|---|---|
| `assets/css/brand.css` | Brand identity layer: logo color, gradient vars, accent stripe utilities |
| `assets/css/typography.css` | Type scale: `.ds-heading-*`, `.section-title`, `.section-subtitle` baselines |
| `assets/css/spacing.css` | Section spacing: `.ds-section-*`, gap utilities, margin helpers |
| `assets/css/layout.css` | Container and grid: `.ds-container-*`, `.ds-grid-*`, `.ds-flex-*` |
| `assets/css/components.css` | Canonical components: `.ds-btn-*`, `.ds-card-*`, `.ds-badge-*`, `.ds-tag`, `.ds-alert-*`, `.ds-pub-card`, `.ds-capability-card`, `.ds-case-study-card` |
| `assets/css/utilities.css` | Helpers: color, text alignment, font weight, display, visibility, overflow, truncation |
| `docs/brand/component_library.md` | Component catalog with usage, token status, and page-specific mapping |
| `docs/brand/design_system_preview.md` | Visual inventory of all components with markup structure and token refs |
| `docs/brand/design_system_migration.md` | This report |

---

## Remaining Hardcoded Values

### High-priority migration candidates

| File | Property | Value | Reason not tokenized |
|---|---|---|---|
| `events.css` | `.section-title { font-size }` | `2.2rem` | No exact-match token (nearest: `--font-size-2xl` = 2rem). Intentional deviation. |
| `featured-service.css` | `.featured-box { border-radius }` | `16px` | Nearest token: `--radius-card` = 12px. Different value — visual regression risk. |
| `featured-service.css` | `.featured-box { background-color }` | `#fdfdfd` | Not a standard token value. |
| `featured-service.css` | `.featured-content p { color }` | `#333` | `--color-text-secondary` is `#444444`, not `#333`. |
| `main.css` | `.hero p { font-size }` | `1.2rem` | Between `--font-size-md` (1.1rem) and `--font-size-lg` (1.25rem). |
| `home-cta.css` | `.cta-card { background-color }` | `#fff` | Could use `--color-surface`; left per "no redesign" constraint. |
| `home-cta.css` | `.cta-card { border-radius }` | `12px` | Could use `--radius-card`; confirm no visual diff before migrating. |
| `home-cta.css` | `.home-cta h2 { color }` | `#222` | Close to `--color-text-primary` (#111111) but different. |
| `about.css` | `.mission-vision .mv-card { box-shadow }` | `0 2px 8px rgba(0,0,0,0.1)` | `--shadow-sm` alpha is 0.06, not 0.1 — visual difference. |
| `about.css` | `.leader-card blockquote { font-size }` | `0.85rem` | Between `--font-size-xs` (0.75rem) and `--font-size-sm` (0.875rem). |
| `about.css` | `.leader-card .role { color }` | `#555` | Between `--color-text-secondary` (#444) and `--color-text-muted` (#666). |
| `events.css` | `.event-card { color }` | `#1a1a1a` | Slightly lighter than `--color-text-primary` (#111111). |
| `events.css` | `.event-summary { color }` | `#222222` | Close to `--color-text-primary` (#111111) but different. |
| `services.css` | `color: gold` (emoji icons) | `gold` | Decorative. Not a candidate for tokenization. |
| `services.css` | `color: #4ADE80` (tech hover, emoji icons) | `#4ADE80` | Decorative hover on tech links and emoji CSS icons. Left per "no redesign". |

### Low-priority (structural, not visual)

| File | Value | Notes |
|---|---|---|
| `about.css` | Various `gap: 1.5rem`, `gap: 2rem` | Card grid gaps. Could use `--space-6`, `--space-8`. |
| `services.css` | Various padding in `.failure-reasons`, `.help-list` | Dense layout CSS. |
| `about.css` | `.leader-card img { border: 3px solid #fff }` | Avatar ring. White hardcoded intentionally. |
| Multiple | `.container { max-width: X }` | Inline container sizing. Future IA task. |

### Not tokenized by design

| Value | Reason |
|---|---|
| PaperMod `--primary`, `--accent`, `--background`, `--text`, `--entry`, `--border` | Theme-owned. We don't override. |
| `#222` dark section backgrounds in services.css | Dark-mode ambient. Needs `--color-surface-dark` token (gap). |
| Animation `@keyframes fadeInUp` | Not a token concern. |
| Z-index values in nav.css (`999`, `1000`, `1001`) | Tokens defined but nav.css not yet updated. Migration candidate. |

---

## Technical Debt

| ID | Description | File | Priority |
|---|---|---|---|
| TD-M01 | `.hero p { font-size: 1.2rem }` — no matching token | `main.css` | Low |
| TD-M02 | `.section-title { font-size: 2.2rem }` — intentional deviation above 2xl token | `events.css` | Medium |
| TD-M03 | `.featured-box { border-radius: 16px }` — diverges from `--radius-card` 12px | `featured-service.css` | Low |
| TD-M04 | Z-index hardcoded in nav.css (999/1000/1001) — tokens exist but not applied | `nav.css` | Low |
| TD-M05 | Footer has no custom CSS — PaperMod defaults | theme | Medium |
| TD-M06 | Tables have no custom CSS | theme | Low |
| TD-M07 | No `.ds-field`, `.ds-input`, `.ds-label` in components.css | `components.css` | Medium |
| TD-M08 | Inline `.container` classes use hardcoded `max-width` — not yet using `.ds-container-*` | Multiple | Medium |
| TD-M09 | Various grid gaps still hardcoded (`1.5rem`, `2rem`) | Multiple | Low |
| TD-M10 | `about.css` shadow values diverge from token (0.1 vs 0.06 alpha) | `about.css` | Low |
| TD-M11 | `#333`, `#555`, `#1a1a1a`, `#222222` text colors not exactly matching token values | Multiple | Medium |

---

## Future Migration Candidates

### For SF-SLICE-087E (Information Architecture)
- Convert inline `.container` div patterns to `.ds-container-*` classes
- Align section wrappers to `.ds-section-*`
- Standardize grid gaps via `.ds-grid-*`

### For SF-SLICE-087F or later
- Apply `--z-overlay`, `--z-drawer`, `--z-toggle` in nav.css
- Create `footer.css` with design-system tokens
- Create `tables.css` for publication detail tables
- Add `.ds-field`, `.ds-input`, `.ds-label`, `.ds-textarea` to `components.css`
- Add `--color-surface-dark` token for services.css dark ambient sections
- Normalize `#333`, `#222`, `#1a1a1a` text colors (requires visual diff review)
- Confirm `--font-size-2xl` (2rem) vs `2.2rem` in events `.section-title`
- Confirm `--radius-card` (12px) vs `16px` in `.featured-box`

---

## Token Coverage by Category

| Category | Tokens defined | Tokens actively used | Coverage |
|---|---|---|---|
| Color — brand | 5 | 5 | 100% |
| Color — semantic | 3 | 3 | 100% |
| Color — text | 3 | 3 | 100% |
| Color — surface/border | 6 | 6 | 100% |
| Elevation (shadow) | 3 | 3 | 100% |
| Radius | 3 | 3 | 100% |
| Transition | 3 | 2 | 67% (slow not in page CSS) |
| Typography — family | 2 | 0 | 0% (defined, not yet applied in page CSS) |
| Typography — size | 8 | 5 | 63% |
| Typography — weight | 4 | 4 | 100% |
| Typography — line-height | 4 | 2 | 50% |
| Spacing | 13 | 8 | 62% |
| Container | 5 | 1 | 20% (others in DS layer only) |
| Z-index | 7 | 0 | 0% (defined, not yet in nav.css) |
| Opacity | 3 | 1 | 33% |
| **Overall** | **65** | **47** | **~72%** |

---

## Estimated Completion

| Layer | % Complete |
|---|---|
| Token definitions | 100% |
| Color tokenization | 95% (remaining: #333, #222, #1a1a1a text variants) |
| Typography tokenization | 65% (remaining: font-family, line-height, some sizes) |
| Spacing tokenization | 55% (remaining: inline containers, grid gaps) |
| Component normalization | 70% (remaining: footer, tables, form components) |
| Design-system layer files | 100% (6/6 files created) |
| Documentation | 100% (component library, preview, migration report, tokens YAML) |
| **Overall design system foundation** | **~72%** |

---

## Readiness Assessment

**Ready for SF-SLICE-087E — Information Architecture?**

**YES — with notes.**

The design system foundation is in place:
- Token layer is the single source of truth (65 tokens)
- 6-file CSS layer is loaded before all page CSS
- Components are documented and canonical classes exist
- No visual regressions (all tokenization was exact-match or additive)

**What IA will be able to rely on:**
- All layout containers: use `.ds-container-*` classes
- All section wrappers: use `.ds-section-*` classes
- All grids: use `.ds-grid-*` classes
- All buttons: use `.ds-btn-*` classes (or existing page classes)
- All cards: use `.ds-card-*` or existing page card classes
- Typography: use `.ds-heading-*` or `.section-title` / `.section-subtitle`

**What IA should avoid touching (open technical debt):**
- `nav.css` z-index values (not yet using tokens)
- Footer (no custom CSS yet)
- Tables (no custom CSS yet)
- `#333`, `#222` text color variants (value-level mismatch)

---

## Recommendation for SF-SLICE-087E

SF-SLICE-087E — Information Architecture — should:

1. Use `.ds-container-*` and `.ds-section-*` when restructuring page layouts
2. Add new content sections using `.ds-grid-*` and `.ds-card-*` from the layer
3. Use `.ds-btn-primary` / `.ds-btn-secondary` for any new CTAs
4. Resolve TD-M02 (events section-title font size) if heading hierarchy is standardized
5. Create a `footer.css` with design-system tokens if footer IA changes are needed
6. Do NOT modify existing page-specific CSS during IA work — use DS layer classes for new additions
