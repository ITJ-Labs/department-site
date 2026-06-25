# ITJ Solutions — AI Solutions Component Library

**Slice:** SF-SLICE-087D.2  
**Date:** 2026-06-25  
**Status:** Foundation — all components documented; CSS layer established

---

## Overview

This document catalogs every reusable UI component in the AI Solutions Digital Platform. Components are organized by their role in the design system. Each entry includes the canonical CSS class (design-system namespace `.ds-*`), the page-specific class (where applicable), and usage notes.

---

## Token Foundation

All components consume tokens from `assets/css/tokens.css`. The design-system CSS layer must load before any page CSS. See `design_tokens.yaml` for the full token registry.

**CSS load order (extend_head.html):**
1. `tokens.css` — custom properties
2. `brand.css` — identity layer
3. `typography.css` — type scale
4. `spacing.css` — spacing utilities
5. `layout.css` — grid and container
6. `components.css` — canonical components
7. `utilities.css` — helpers
8. Page-specific CSS files (override as needed)

---

## Navigation

**File:** `assets/css/nav.css`  
**Theme interaction:** PaperMod `--background`, `--text`, `--primary`, `--muted`

| Element | Class | Notes |
|---|---|---|
| Site header | `.site-header` | Flex row, sticky-adjacent |
| Logo | `.logo a` | Brand blue via `brand.css` |
| Mobile toggle | `.mobile-menu-toggle` | 1.75rem hamburger icon |
| Nav drawer | `.main-nav` | Fixed, 250px wide, slides in |
| Nav overlay | `.nav-overlay` | Full-screen backdrop, `--color-overlay` |
| Nav list | `.nav-list` | Vertical list |
| Nav item | `.nav-item` | Border-bottom separator |
| Open state | `.nav-open` | Applied to `<body>` |

**Breakpoint:** `@media (min-width: 768px)` — drawer becomes fixed sidebar (200px). Content shifts via `margin-left: 220px`.

---

## Hero

**File:** `assets/css/main.css`  
**Page:** Home (`layouts/_default/index.html` or home template)

| Element | Class | Token |
|---|---|---|
| Section | `.hero` | `padding: 3rem 1rem` |
| Container | `.hero .container` | `max-width: var(--container-lg)` |
| Banner image | `.hero-banner` | `border-radius: var(--radius-card)`, `box-shadow: var(--shadow-md)` |
| Heading | `.hero h1` | `font-size: var(--font-size-3xl)` |
| Subtext | `.hero p` | `1.2rem` (migration candidate TD-M01) |
| Quote | `.hero-quote` | `font-size: var(--font-size-lg)`, `opacity: var(--opacity-muted)` |

---

## Container

**File:** `assets/css/layout.css` (canonical `.ds-container-*`)  
**Page CSS:** `.container` class used inline in sections (not a shared class)

| Class | Max-width | Use case |
|---|---|---|
| `.ds-container` | `var(--container-lg)` = 960px | Default section container |
| `.ds-container-xl` | `var(--container-xl)` = 1080px | Quick-links grid |
| `.ds-container-md` | `var(--container-md)` = 900px | Services intro |
| `.ds-container-sm` | `var(--container-sm)` = 800px | About, publications, CTA |
| `.ds-container-xs` | `var(--container-xs)` = 600px | Featured content, hero quote |

**Note:** Page CSS currently uses inline `.container` with hardcoded `max-width`. Migration to `.ds-container-*` is a future IA task.

---

## Section

**File:** `assets/css/spacing.css` (canonical `.ds-section-*`)

| Class | Padding | Use case |
|---|---|---|
| `.ds-section` | `var(--section-y) var(--section-x)` = 5rem 1.5rem | Standard section |
| `.ds-section-sm` | `var(--space-8) var(--space-6)` = 2rem 1.5rem | Compact section |
| `.ds-section-md` | `var(--space-12) var(--section-x)` = 3rem 1.5rem | Medium section |
| `.ds-section-lg` | `var(--space-20) var(--section-x)` = 5rem 1.5rem | Large feature section |

**Current page sections:** `.hero`, `.quick-links`, `.featured-service`, `.why-itj`, `.home-cta`, `.events-list` — each uses unique inline padding. Migration to `.ds-section-*` is a future IA task.

---

## Button

**Files:** `assets/css/components.css` (canonical), `assets/css/button-brand.css` (existing)

### Design-system canonical buttons (`.ds-btn-*`)

| Class | Style | Use case |
|---|---|---|
| `.ds-btn .ds-btn-primary` | Filled brand blue | Primary CTA |
| `.ds-btn .ds-btn-secondary` | Outlined brand blue | Secondary action |
| `.ds-btn .ds-btn-ghost` | No fill or border | Tertiary / nav action |
| `.ds-btn .ds-btn-success` | Filled semantic green | Success/confirmation action |
| `.ds-btn .ds-btn-pill` | Pill radius modifier | Filter, tag buttons |
| `.ds-btn.ds-btn-sm` | Compact padding | Dense UI |
| `.ds-btn.ds-btn-lg` | Large padding | Hero CTAs |

### Existing page buttons (still active)

| Class | File | Token status |
|---|---|---|
| `a.button.primary` | `button-brand.css` | Fully tokenized |
| `a.button.success` | `button-brand.css` | Fully tokenized (semantic green) |
| `.cta-button` | `featured-service.css` | Fully tokenized |
| `.cta-card .cta-button` | `home-cta.css` | Fully tokenized |
| `.button.learn-more` | `services.css` | Fully tokenized |
| `.btn`, `.btn-primary`, `.btn-secondary` | `publications.css` | Fully tokenized |
| `.contact-form button` | `contact.css` | Fully tokenized |

**D-02 enforced:** All CTA buttons use `--color-primary` (blue). Green (`--color-success`) reserved for `a.button.success` only.

---

## Card

**File:** `assets/css/components.css` (canonical `.ds-card-*`)

| Class | Description | Key tokens |
|---|---|---|
| `.ds-card` | Base card with border and shadow | `--radius-card`, `--shadow-sm`, `--color-surface`, `--color-border` |
| `.ds-card-accent` | Top-stripe variant | `border-top: 3px solid var(--color-primary)` |
| `.ds-card-elevated` | Large shadow, 16px radius | `--shadow-lg`, elevated `border-radius` |

### Existing card variants (still active)

| Class | File | Notes |
|---|---|---|
| `.quick-card` | `main.css` | Home quick-link card. Mostly tokenized. |
| `.mv-card` | `about.css` | Mission/Vision card. Partially tokenized. |
| `.flip-card` | `about.css` | 3D flip goal card. CSS transform; no token migration needed. |
| `.event-card` | `events.css` | Event listing card. Partially tokenized. |
| `.pub-card` | `publications.css` | Publication flash card. Fully tokenized. |
| `.service-card` | `services.css` | Service offering card. Partially tokenized. |
| `.featured-box` | `featured-service.css` | Featured service panel. Partially tokenized. |
| `.leader-card` | `about.css` | Team member card. Partially tokenized. |

---

## Capability Card

**File:** `assets/css/components.css` (canonical `.ds-capability-card`)  
**Current usage:** Not yet used in templates. Reserved for future service/capability grid pages.

Properties: top accent stripe, flex column layout, gap between capability name and description.

---

## Publication Card

**File:** `assets/css/components.css` (canonical `.ds-pub-card`)  
**Existing:** `.pub-card` in `publications.css` — fully tokenized.

Both styles are equivalent. `.ds-pub-card` is the canonical forward-looking class; `.pub-card` is the existing production class.

---

## Case Study Card

**File:** `assets/css/components.css` (canonical `.ds-case-study-card`)  
**Current usage:** Not yet used in templates. Reserved for future case study section.

Properties: left accent stripe, hover slides right (4px X-axis lift).

---

## CTA Section

**File:** `assets/css/home-cta.css`  
**Page:** Home, bottom CTA

| Element | Class | Token status |
|---|---|---|
| Section | `.home-cta` | `--color-surface-alt` fallback |
| Card container | `.cta-card` | Hardcoded `#fff`, `border-radius: 12px`, `box-shadow` |
| Heading | `.home-cta h2` | Hardcoded `color: #222` |
| CTA button | `.cta-card .cta-button` | Fully tokenized |

**Migration candidate:** `.cta-card` background and radius.

---

## Badge

**File:** `assets/css/components.css` (canonical `.ds-badge-*`)  
**Current usage:** Not yet used in templates.

| Class | Style |
|---|---|
| `.ds-badge .ds-badge-primary` | Blue tint background, blue text |
| `.ds-badge .ds-badge-success` | Green tint, green text |
| `.ds-badge .ds-badge-neutral` | Neutral surface, secondary text |

---

## Tag

**File:** `assets/css/components.css` (canonical `.ds-tag`)  
**Current usage:** Not yet used in templates. Reserved for content tagging.

Pill-radius, border, subtle secondary text. Hover state activates primary border/color.

---

## Alert

**File:** `assets/css/components.css` (canonical `.ds-alert-*`)  
**Existing analog:** `.industry-note`, `.support-note` in `services.css`

| Class | Use case |
|---|---|
| `.ds-alert .ds-alert-info` | Informational — primary blue left border |
| `.ds-alert .ds-alert-success` | Success/support — green left border |
| `.ds-alert .ds-alert-warning` | Warning — amber left border |

**Existing variants:**
- `.industry-note` (services.css) — italic callout, blue left border. Partially tokenized.
- `.support-note` (services.css) — support info, green left border (`--color-success`). Fully tokenized.

---

## Footer

**Theme:** PaperMod default footer. No custom CSS file.  
**Token status:** Not yet tokenized — uses PaperMod defaults.  
**Migration candidate:** Future `footer.css` layer file.

---

## Grid

**File:** `assets/css/layout.css` (canonical `.ds-grid-*`)

| Class | Columns | Gap |
|---|---|---|
| `.ds-grid` | `auto-fit, minmax(280px, 1fr)` | `var(--space-8)` |
| `.ds-grid-2` | `repeat(2, 1fr)` | `var(--space-8)` |
| `.ds-grid-3` | `auto-fit, minmax(260px, 1fr)` | `var(--space-6)` |
| `.ds-grid-4` | `auto-fit, minmax(200px, 1fr)` | `var(--space-6)` |

**Existing grids (still active):**

| Class | File | Columns | Gap |
|---|---|---|---|
| `.quick-grid` | `main.css` | `auto-fit, minmax(240px, 1fr)` | `2rem` |
| `.service-cards` | `services.css` | `auto-fit, minmax(280px, 1fr)` | `1.5rem` |
| `.pub-grid` | `publications.css` | `auto-fit, minmax(320px, 1fr)` | `2rem` |
| `.goals-grid` | `about.css` | `auto-fit, minmax(260px, 1fr)` | `1.5rem` |
| `.mv-cards` | `about.css` | `auto-fit, minmax(280px, 1fr)` | `2rem` |
| `.tech-grid` | `services.css` | `auto-fit, minmax(280px, 1fr)` | `2rem` |
| `.partners-grid` | `about.css` | `auto-fit, minmax(150px, 1fr)` | `2rem` |
| `.event-grid` | `events.css` | `auto-fit, minmax(280px, 1fr)` | `var(--space-8)` |

---

## Lists

**Existing list patterns:**

| Class | File | Pattern |
|---|---|---|
| `.why-list` | `why-itj.css` | Icon + text, left border stripe per item |
| `.nav-list` | `nav.css` | Vertical nav links |
| `.failure-reasons` | `services.css` | Two-line bullet with title/detail |
| `.help-list` | `services.css` | Two-line bullet with title/detail |
| `.poc-list` | `services.css` | Two-line bullet with title/detail |
| `.expertise` | `about.css` | Skill list under leader card |
| `.social-links` | `about.css` | Icon link row |
| `.contact-list` | `contact.css` | Icon + contact link row |

---

## Typography

**File:** `assets/css/typography.css`

| Class | Size | Weight | Use case |
|---|---|---|---|
| `.ds-heading-1` | `var(--font-size-3xl)` = 2.5rem | Bold | Page title, hero |
| `.ds-heading-2` | `var(--font-size-2xl)` = 2rem | Bold | Section heading |
| `.ds-heading-3` | `var(--font-size-xl)` = 1.5rem | Semibold | Subsection, card |
| `.ds-heading-4` | `var(--font-size-lg)` = 1.25rem | Semibold | Event, label |
| `.ds-body-lg` | `var(--font-size-md)` = 1.1rem | Regular | Subtitle, description |
| `.ds-body` | `var(--font-size-base)` = 1rem | Regular | Body copy |
| `.ds-body-sm` | `var(--font-size-sm)` = 0.875rem | Regular | Caption, meta |
| `.ds-caption` | `var(--font-size-xs)` = 0.75rem | Regular | Footnote, legal |
| `.ds-label` | `var(--font-size-sm)` | Semibold | Form labels |
| `.ds-mono` | `var(--font-family-mono)` | Regular | Code, technical |

**Section-level classes:**

| Class | Canonical size | Override by |
|---|---|---|
| `.section-title` | `var(--font-size-2xl)` | `events.css` overrides to 2.2rem |
| `.section-subtitle` | `var(--font-size-md)` | `why-itj.css` inherits |
| `.section-description` | `var(--font-size-md)` | None — canonical |

---

## Forms

**File:** `assets/css/contact.css`

| Element | Class | Token status |
|---|---|---|
| Form container | `.contact-form` | Surface, border tokenized |
| Input fields | `input`, `textarea` | Border, radius, transition tokenized |
| Focus state | `:focus` | `--color-primary`, `--color-primary-focus-ring` |
| Submit button | `button` | Fully tokenized (D-05) |
| Form label | `label` | `--color-text-secondary`, weight hardcoded at 600 |
| Info column | `.contact-info` | Surface, border tokenized |
| Contact list links | `.contact-list li a` | Hover: `--color-primary` |
| Icon color | `.icon` | `--color-primary` |

**Missing:** No shared form field component class. Input styles are scoped to `.contact-form`. Future: create `.ds-field`, `.ds-input`, `.ds-label` in `components.css`.

---

## Tables

**Current status:** No custom table CSS defined. Tables inherit PaperMod default styles.  
**Migration candidate:** Future `tables.css` or addition to `components.css`.

---

## Component Status Summary

| Component | DS Class | Existing Class | Token Coverage |
|---|---|---|---|
| Navigation | — | `.site-header`, `.main-nav` | Partial |
| Hero | — | `.hero` | Mostly tokenized |
| Container | `.ds-container-*` | inline `.container` | DS layer ready |
| Section | `.ds-section-*` | unique per section | DS layer ready |
| Button (primary) | `.ds-btn-primary` | `a.button.primary`, `.cta-button` | Full |
| Button (secondary) | `.ds-btn-secondary` | `.btn-secondary` | Full |
| Button (success) | `.ds-btn-success` | `a.button.success` | Full |
| Card (base) | `.ds-card` | multiple | Partial |
| Publication Card | `.ds-pub-card` | `.pub-card` | Full |
| Capability Card | `.ds-capability-card` | — | DS layer ready |
| Case Study Card | `.ds-case-study-card` | — | DS layer ready |
| CTA Section | — | `.home-cta`, `.cta-card` | Partial |
| Badge | `.ds-badge-*` | — | DS layer ready |
| Tag | `.ds-tag` | — | DS layer ready |
| Alert | `.ds-alert-*` | `.industry-note`, `.support-note` | Partial |
| Footer | — | PaperMod default | Not tokenized |
| Grid | `.ds-grid-*` | multiple inline grids | DS layer ready |
| Lists | — | multiple | Partial |
| Typography | `.ds-heading-*` | hardcoded in page CSS | Partial |
| Forms | — | `.contact-form` scoped | Mostly tokenized |
| Tables | — | PaperMod default | Not tokenized |
