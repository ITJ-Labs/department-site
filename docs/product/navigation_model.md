# AI Solutions — Navigation Model

**Document:** Navigation Structure and Conversion Path Model  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-087F-INFORMATION-ARCHITECTURE  
**Date:** 2026-06-25  
**Status:** PROPOSED — Pending implementation in SF-SLICE-088  
**Depends on:** `docs/product/information_architecture.md`, `docs/product/sitemap_proposal.md`

---

## Purpose

This document defines the recommended navigation structure, footer structure, conversion paths, and CTA placement model for the AI Solutions Digital Platform. It is the specification that SF-SLICE-088 uses to update `config.toml` and related nav templates.

---

## Navigation Principles

### N1 — Primary nav is for buyers, not for content producers

The nav reflects what enterprise buyers need to find, in the order they typically look. Internal organizational structure (how AI Solutions is organized internally) does not dictate nav ordering.

### N2 — Maximum 7 primary nav items

Seven items is the upper limit for the current sidebar/drawer nav pattern. Beyond 7, the mobile drawer overflows or items become too small to tap reliably. If the IA expands, items must be grouped before adding a new top-level entry.

### N3 — Contact is always reachable

"Contact" appears in primary nav AND in footer. The conversion endpoint is never more than one click away from any page.

### N4 — Nav wording is outcome-oriented

"Solutions" (not "Products" or "Services"). "Capabilities" (not "Technology" or "Stack"). "Insights" (not "Blog" or "Resources"). Every nav label communicates value to a buyer, not an internal category name.

### N5 — Active state is always clear

The current section must be visually highlighted in the nav. PaperMod provides `.active` class support. This is a template implementation requirement for SF-SLICE-088.

---

## Recommended Top-Level Navigation

### Current Nav (config.toml)

```
Home        → /
About       → /about/
Services    → /services/
Publications → /publications/
Events      → /events/
Contact     → /contact/
```

6 items. "Services" is the wrong label. Publications and Events are separate but logically related. No entry point for capabilities or industries.

### Proposed Nav (Phase 1 — SF-SLICE-088)

```
Home        → /              weight: 10
Solutions   → /solutions/    weight: 20
Capabilities → /capabilities/ weight: 30
Industries  → /industries/   weight: 40
About       → /about/        weight: 50
Contact     → /contact/      weight: 60
```

6 items. Publications and Events are accessible from the footer. Insights hub deferred to Phase 2 (SF-SLICE-091). Case Studies accessible from footer.

**Rationale for deferring Insights:** Launching the Insights nav item requires content in the hub. With only 1 publication and 11 events at launch, a sparse hub would harm credibility. Add Insights to primary nav when the hub has ≥ 5 articles/publications.

### Proposed Nav (Phase 2 — post SF-SLICE-091)

```
Home         → /              weight: 10
Solutions    → /solutions/    weight: 20
Capabilities → /capabilities/ weight: 30
Industries   → /industries/   weight: 40
Insights     → /insights/     weight: 50
About        → /about/        weight: 60
Contact      → /contact/      weight: 70
```

7 items. Insights replaces no existing item — it is a new addition once the hub has content.

### config.toml Implementation (Phase 1)

```toml
[menu]

  [[menu.main]]
    identifier = "home"
    name       = "Home"
    url        = "/"
    weight     = 10

  [[menu.main]]
    identifier = "solutions"
    name       = "Solutions"
    url        = "/solutions/"
    weight     = 20

  [[menu.main]]
    identifier = "capabilities"
    name       = "Capabilities"
    url        = "/capabilities/"
    weight     = 30

  [[menu.main]]
    identifier = "industries"
    name       = "Industries"
    url        = "/industries/"
    weight     = 40

  [[menu.main]]
    identifier = "about"
    name       = "About"
    url        = "/about/"
    weight     = 50

  [[menu.main]]
    identifier = "contact"
    name       = "Contact"
    url        = "/contact/"
    weight     = 60
```

---

## Sub-Navigation Model

The current site uses a flat nav — all pages are top-level, no dropdowns or expandable menus. The proposed IA introduces sections with many detail pages (8 capabilities, 5 industries). Sub-navigation handles discovery within sections.

### Strategy: Contextual In-Page Nav, Not Dropdown Menus

Dropdowns in a mobile sidebar are problematic UX. Instead, section overview pages serve as the sub-nav hub. Each overview page provides a grid of all items in the section with a clear visual hierarchy.

**Sidebar nav shows:** Top-level sections only (6–7 items)  
**Section discovery happens via:** Overview page grids + breadcrumbs + related entity links

### Breadcrumb Strategy

Breadcrumbs provide secondary navigation within deep sections. They are especially important for capability and industry detail pages where a buyer may arrive via direct link and need context.

**Recommended breadcrumb pattern:**

```
Home > Solutions > NeuroDocs
Home > Capabilities > Retrieval-Augmented Generation
Home > Industries > Life Sciences
Home > Insights > Multiclass Evaluation Paper
```

**Implementation:** PaperMod provides breadcrumb support via `ShowBreadCrumbs: true` in params. For custom layouts (Solutions, Capabilities, Industries), breadcrumbs must be added to the section templates.

### "Related" Cross-Navigation

On every detail page, a "Related" section at the bottom provides lateral navigation between entity types.

**Pattern per page type:**

| Page Type | Related sections shown |
|---|---|
| Solution detail | Related Capabilities, Related Industries, Related Case Studies |
| Capability detail | Related Solutions, Related Industries, Related Publications |
| Industry detail | Related Solutions, Related Capabilities, Related Case Studies |
| Case Study detail | Related Solutions, Related Capabilities, Related Industry |
| Insight / Publication | Related Capabilities, Related Solutions, Author bio |

This cross-linking pattern supports the buyer journey from any entry point to the conversion path.

---

## Footer Structure

The footer is the secondary navigation layer. It serves users who have scrolled to the bottom of a page and need to navigate elsewhere, and it provides persistent access to conversion paths.

### Proposed Footer Layout

```
┌─────────────────────────────────────────────────────────────────────┐
│                                                                     │
│  ITJ Solutions                  Solutions     Capabilities          │
│  AI Solutions Practice          ──────────    ─────────────         │
│                                 NeuroDocs     RAG & LLM             │
│  Turning AI concepts into       CV Extractor  Computer Vision       │
│  production value — no PoC      TalentBot     ML Engineering        │
│  graveyard.                     Custom AI     MLOps                 │
│                                               AI Agents             │
│  labs@itj.com                                 Responsible AI        │
│  +52 664 416 4937                                                   │
│  LinkedIn ↗                    Industries    Company                │
│                                 ──────────    ─────────             │
│                                 Healthcare    About                 │
│                                 Life Sciences Team                  │
│                                 HR & Talent  Contact                │
│                                 Manufacturing Case Studies          │
│                                 Finance      Publications           │
│                                              Events                 │
│                                                                     │
├─────────────────────────────────────────────────────────────────────┤
│  © 2025–2026 ITJ Solutions — AI Solutions  |  Privacy  |  Terms   │
└─────────────────────────────────────────────────────────────────────┘
```

### Footer Column Specification

| Column | Title | Links | Priority |
|---|---|---|---|
| Column 1 | Brand | Tagline, email, phone, LinkedIn | P0 |
| Column 2 | Solutions | NeuroDocs, CV Extractor, TalentBot, (Custom AI) | P0 |
| Column 3 | Capabilities | RAG, Computer Vision, ML Engineering, MLOps, AI Agents, Responsible AI | P0 |
| Column 4 | Industries | Healthcare, Life Sciences, HR & Talent, Manufacturing, Financial Services | P0 |
| Column 5 | Company | About, Team (future), Contact, Case Studies, Publications, Events | P0 |
| Bottom bar | Legal | © ITJ Solutions, Privacy Policy, Terms of Service | P1 |

### Footer Implementation Notes

- Footer is currently PaperMod default. A custom `footer.html` partial must be created in SF-SLICE-088.
- Footer CSS must use design system tokens — a `footer.css` file should be added to the design system layer.
- Column links use `<a>` elements pointing to the canonical URLs defined in `sitemap_proposal.md`.
- The footer logo/brand mark (if used) must follow the `--color-primary` brand guidelines (D-01).
- Legal footer text: "© 2025–2026 ITJ Solutions — AI Solutions". All rights reserved.

---

## Mobile Navigation Behavior

The current mobile nav is a slide-in drawer from the left (250px wide) triggered by a hamburger icon. This pattern is retained.

### Current Behavior (keep)

- Hamburger toggle at top of page (`.mobile-menu-toggle`)
- Drawer slides in from left on toggle
- Overlay (`.nav-overlay`) darkens the main content
- Clicking overlay or X closes the drawer
- `nav-open` class on `<body>` controls state

### Changes Required in SF-SLICE-088

1. Update nav item list in the drawer template to reflect new 6-item nav
2. Ensure "Solutions", "Capabilities", "Industries" display correctly in the drawer
3. Verify touch target size (≥ 44px height per WCAG 2.1) for all new items
4. Test drawer scroll if 7 items (Phase 2 with Insights) causes overflow

### Desktop Sidebar Behavior (keep)

At `≥ 768px`, the drawer becomes a fixed sidebar (200px wide). Main content is offset `margin-left: 220px`. This pattern is retained; no structural changes in SF-SLICE-088.

---

## Conversion Path Model

Each buyer persona has a primary conversion path. The nav and CTA system must support all paths without creating conflicts.

### Path 1 — Executive Decision-Maker

```
Google/LinkedIn → Home
  → "What do you do?" → /solutions/
  → "Do you understand my industry?" → /industries/{slug}/
  → "Can you prove it?" → /case-studies/ (or contact)
  → "Let's talk" → /contact/

PRIMARY CTA: "Talk to our AI team" (Home), "Request a Demo" (Solutions), "Contact Us" (always)
```

### Path 2 — VP Engineering / Technical Evaluator

```
Publication link / GitHub / Conference → /publications/{slug}/ or /events/{slug}/
  → "What can they actually build?" → /capabilities/
  → "How do their capabilities map to my problem?" → /capabilities/{slug}/
  → "What have they deployed?" → /solutions/ or /case-studies/
  → "Let's evaluate them" → /contact/

PRIMARY CTA: "Talk to our engineering team" (Capabilities), "Request a technical briefing"
```

### Path 3 — HR / Talent Buyer

```
Search "AI resume parsing" / "AI recruiting" → /solutions/cv-extractor/ or /solutions/talentbot/
  → "Does this fit our stack?" → capability/tech sections on solution page
  → "Do they know HR compliance?" → /industries/human-resources/
  → "Let's see a demo" → /contact/

PRIMARY CTA: "Request a Demo" (Solution pages)
```

### Path 4 — Life Sciences / Pharma Buyer

```
Referral → /solutions/neurodocs/
  → "Do they understand pharma?" → /industries/life-sciences/
  → "Are they HIPAA/FDA compliant?" → compliance section on industry or solution page
  → "Request an evaluation" → /contact/

PRIMARY CTA: "Request a NeuroDocs Demo" (NeuroDocs solution page)
```

### Path 5 — Recruiting

```
Job board / LinkedIn → Home or /about/
  → "What kind of work do they do?" → /capabilities/ or /publications/
  → "Who is on the team?" → /about/ (team section)
  → "I want to work here" → /contact/ (or careers email)

PRIMARY CTA: (no explicit CTA — recruiting is secondary; add "Join Our Team" to About page footer)
```

---

## CTA Placement Specification

### Home Page

| Section | CTA Text | CTA Target | Color |
|---|---|---|---|
| Hero | "Talk to our AI team" | `/contact/` | `--color-primary` |
| Solutions grid | "Learn More →" (per card) | `/solutions/{slug}/` | ghost/secondary |
| Social proof | "See how we work" | `/capabilities/` | ghost |
| Bottom CTA section | "Schedule a Discovery Call" | `/contact/` | `--color-primary` |

### Solutions Overview (`/solutions/`)

| Section | CTA Text | CTA Target |
|---|---|---|
| Each solution card | "Details →" | `/solutions/{slug}/` |
| Bottom | "Tell us about your use case" | `/contact/` |

### Solution Detail (`/solutions/{slug}/`)

| Section | CTA Text | CTA Target |
|---|---|---|
| Top (beside hero) | "Request a Demo" | `/contact/?solution={name}` |
| After use cases | "See how it works for {industry}" | `/industries/{slug}/` |
| Bottom | "Request a {SolutionName} Demo" | `/contact/?solution={name}` |

### Capabilities Overview (`/capabilities/`)

| Section | CTA Text | CTA Target |
|---|---|---|
| Each capability card | "Learn more →" | `/capabilities/{slug}/` |
| Bottom | "Discuss your technical requirements" | `/contact/` |

### Capability Detail (`/capabilities/{slug}/`)

| Section | CTA Text | CTA Target |
|---|---|---|
| Top | "Talk to our {Capability} team" | `/contact/?capability={name}` |
| After use cases | "See this in a solution" | linked solution page |
| Bottom | "Ready to build with {Capability}?" | `/contact/` |

### Industries Overview (`/industries/`)

| Section | CTA Text | CTA Target |
|---|---|---|
| Each industry card | "View {Industry} AI →" | `/industries/{slug}/` |
| Bottom | "Tell us about your industry" | `/contact/` |

### Industry Detail (`/industries/{slug}/`)

| Section | CTA Text | CTA Target |
|---|---|---|
| Top | "Explore solutions for {Industry}" | linked solution(s) |
| After pain points | "See how we've solved this" | `/case-studies/` or `/contact/` |
| Bottom | "Talk to our {Industry} team" | `/contact/?industry={name}` |

### Case Studies Overview (`/case-studies/`)

| Section | CTA Text | CTA Target |
|---|---|---|
| Top | "See what we can build for you" | `/contact/` |
| Per card | "Read the case study" | `/case-studies/{slug}/` |
| Bottom | "Ready to be the next case study?" | `/contact/` |

### Insights / Publications

| Section | CTA Text | CTA Target |
|---|---|---|
| End of each article | "Interested in applying this? Talk to us." | `/contact/` |
| Author card | "View {Author}'s profile" | `/team/{slug}/` (future) |

### About

| Section | CTA Text | CTA Target |
|---|---|---|
| Team section | "Work with our team" | `/contact/` |
| Bottom | "Join AI Solutions" + "Work with us" | email/contact |

### Contact

No CTA — this IS the conversion endpoint. Keep the form prominent and the surrounding copy brief and reassuring ("We respond within 1 business day").

---

## CTA Color Rules

These rules flow from the product strategy (EP-04, D-02) and must be enforced in all templates.

| Use case | Color | Token | Class |
|---|---|---|---|
| Primary CTA (all conversion actions) | Brand blue | `--color-primary` | `.ds-btn-primary` or `a.button.primary` |
| Secondary action (view more, details) | Outlined blue | `--color-primary` | `.ds-btn-secondary` |
| Ghost / tertiary action (nav-like) | No fill | `--color-primary` text | `.ds-btn-ghost` |
| Confirmation (success state only) | Green | `--color-success` | `.ds-btn-success` or `a.button.success` |
| **Never use green for CTAs** | — | — | EP-04: green = semantic only |

**Current violation to fix in SF-SLICE-088:** `home_cta.html` uses `.cta-green` class on the Contact Us button. This must be changed to `.cta-button` (primary blue) when updating the CTA section template.

---

## Navigation Accessibility Requirements

These requirements apply to SF-SLICE-088 implementation.

| Requirement | Standard | Implementation |
|---|---|---|
| Keyboard navigation | WCAG 2.1 AA | All nav items must be tab-reachable; drawer opens/closes with Enter/Space on toggle |
| Focus visible | WCAG 2.1 AA | `:focus` ring on all interactive nav elements using `--color-primary-focus-ring` |
| Touch target size | WCAG 2.1 AA | Minimum 44×44px for all mobile nav items |
| Skip to main content | WCAG 2.1 AA | `<a href="#main-content" class="ds-sr-only">Skip to main content</a>` at top of `<body>` |
| ARIA labels on toggle | WCAG 2.1 AA | `aria-label="Open navigation menu"` / `aria-expanded="true/false"` on hamburger button |
| Landmark roles | WCAG 2.1 A | `<nav>` element wraps menu; `<main>` wraps page content |
| Color contrast | WCAG 2.1 AA | Nav text against sidebar background must meet 4.5:1 ratio |

---

## Open Decisions — Navigation Specific

| Decision | Options | Recommendation | Owner |
|---|---|---|---|
| OD-06: Nav label for capabilities section | (A) "Capabilities" (B) "How We Build" (C) "AI Engineering" | (A) "Capabilities" — clear, concise, matches content model entity name | Practice Lead |
| OD-08: Should "Contact" have a distinct visual treatment in nav? | (A) Same style as other nav items (B) Button-styled "Talk to Us" CTA | (B) recommended — reinforces conversion purpose; easy to implement with a `.nav-cta` modifier class | Engineering Lead |
| OD-09: Should nav logo link to Home or to /about/? | (A) Home (standard) (B) /about/ | (A) Home — universal web convention | N/A — Home |
| OD-10: Phase 1 nav: include "Insights" as placeholder or defer? | (A) Add "Insights" with sparse hub (B) Defer until content-ready | (B) Defer — a sparse hub damages credibility more than a missing nav item | Practice Lead |
| OD-11: Should footer include a "Careers" link? | (A) Yes — links to /contact/ with subject line (B) No — defer | (A) Yes with mailto link — low cost, clear recruiting signal | Practice Lead |

---

## Implementation Checklist for SF-SLICE-088

The following changes to nav-related files are required to implement this navigation model. None of these are implementation work for this slice (SF-087F) — this list is the input spec for SF-SLICE-088.

### config.toml

- [ ] Replace 6-item current nav with 6-item Phase 1 nav
- [ ] Remove `services`, `publications`, `events` from `[menu.main]`
- [ ] Add `solutions`, `capabilities`, `industries`
- [ ] Update weights to match proposed ordering

### layouts/partials/header.html (or nav.html)

- [ ] Verify nav list renders from `[menu.main]` (it should with PaperMod base)
- [ ] Add `aria-expanded` and keyboard support to mobile toggle
- [ ] Optionally apply `.nav-cta` visual treatment to Contact item (OD-08)

### layouts/partials/footer.html (new file)

- [ ] Create custom footer partial replacing PaperMod default
- [ ] Implement 5-column layout (Brand, Solutions, Capabilities, Industries, Company)
- [ ] Add legal bottom bar
- [ ] Create `assets/css/footer.css` using design system tokens

### assets/css/nav.css

- [ ] Apply `--z-overlay`, `--z-drawer`, `--z-toggle` tokens (from TD-M04 in migration report)
- [ ] Verify 7-item rendering on mobile (for Phase 2 readiness)

### Hugo aliases (content front-matter)

- [ ] Add `aliases = ["/services/"]` to `content/solutions/_index.md`
- [ ] Add `aliases = ["/services/neurodocs/"]` to NeuroDocs content file
- [ ] Add `aliases = ["/services/cv-extractor/"]` to CV Extractor content file
- [ ] Add `aliases = ["/services/talentbot/"]` to TalentBot content file
