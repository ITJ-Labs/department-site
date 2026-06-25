# ITJ Solutions — Design System Preview

**Slice:** SF-SLICE-087D.2  
**Date:** 2026-06-25  
**Purpose:** Visual inventory of every reusable component.

This page is a markdown representation of the design system components. Each section shows the component name, the rendered markup structure, and the token values that govern its appearance.

---

## Color Palette

```
Primary          #1a5ee6   ██████  --color-primary
Primary Hover    #134fc4   ██████  --color-primary-hover
Primary Light    #4a84f9   ██████  --color-primary-light
Success          #2e7d32   ██████  --color-success (semantic only)

Text Primary     #111111   ██████  --color-text-primary
Text Secondary   #444444   ██████  --color-text-secondary
Text Muted       #666666   ██████  --color-text-muted

Surface          #ffffff   ██████  --color-surface
Surface Alt      #f9f9f9   ██████  --color-surface-alt
Border           #e1e1e1   ██████  --color-border
Border Medium    #cccccc   ██████  --color-border-medium
```

---

## Typography Scale

```
Display / H1   font-size: 2.5rem  font-weight: 700  --font-size-3xl
               The Future of AI Delivery

H2             font-size: 2rem    font-weight: 700  --font-size-2xl
               Featured Services

H3             font-size: 1.5rem  font-weight: 600  --font-size-xl
               CV Extractor Tool

H4             font-size: 1.25rem font-weight: 600  --font-size-lg
               Event Title or Card Heading

Body Large     font-size: 1.1rem  --font-size-md
               Section subtitles, descriptions, and intro text.

Body           font-size: 1rem    --font-size-base
               Standard paragraph text. Line height 1.6.

Body Small     font-size: 0.875rem  --font-size-sm
               Captions, metadata, and publication date.

Caption        font-size: 0.75rem   --font-size-xs
               Legal text, footnotes, badge labels.
```

---

## Buttons

### Primary CTA
```html
<a class="ds-btn ds-btn-primary" href="#">
  Get Started
</a>
```
- Background: `--color-primary` (#1a5ee6)
- Hover: `--color-primary-hover` + `--color-primary-glow` shadow
- Border radius: `--radius-button` (6px)

### Secondary (Outline)
```html
<a class="ds-btn ds-btn-secondary" href="#">
  Learn More
</a>
```
- Border: `--color-primary`; fill on hover

### Ghost
```html
<a class="ds-btn ds-btn-ghost" href="#">
  View Details
</a>
```
- No border; subtle focus-ring background on hover

### Success (Semantic)
```html
<a class="ds-btn ds-btn-success" href="#">
  Confirm
</a>
```
- Background: `--color-success` (#2e7d32)
- NOT for primary CTAs — for semantic confirmation only

### Pill variant
```html
<a class="ds-btn ds-btn-primary ds-btn-pill" href="#">
  Filter: NLP
</a>
```
- Border radius: `--radius-pill` (9999px)
- Used in publications filter buttons

### Size modifiers
```
.ds-btn.ds-btn-sm  — compact padding, 0.875rem text
.ds-btn.ds-btn-lg  — large padding, 1.1rem text
```

---

## Cards

### Base Card
```html
<div class="ds-card">
  <h3>Card Title</h3>
  <p>Card content text.</p>
</div>
```
- Background: `--color-surface`
- Border: `--color-border`
- Radius: `--radius-card` (12px)
- Shadow: `--shadow-sm`
- Hover: lifts 4px, `--shadow-md`

### Accent Card (top stripe)
```html
<div class="ds-card ds-card-accent">
  <h3>Service Name</h3>
  <p>Service description.</p>
</div>
```
- Top border: 3px solid `--color-primary`
- Used for service cards

### Elevated Card
```html
<div class="ds-card ds-card-elevated">
  <h3>Featured Service</h3>
  <p>Highlighted content panel.</p>
</div>
```
- Shadow: `--shadow-lg`
- Radius: 16px (intentional elevation signal)

---

## Publication Card
```html
<a class="ds-pub-card" href="#">
  <h2>Research Paper Title</h2>
  <p class="meta">Author · 2026</p>
  <p>Short abstract or summary of the publication.</p>
  <span class="read-more">Read more →</span>
</a>
```
- Top gradient stripe: `--color-primary` → `--color-primary-hover`
- Hover stripe: `--color-primary-light` → `--color-primary` (TD-09 fixed)
- No red on hover

---

## Capability Card
```html
<div class="ds-capability-card">
  <h4>Capability Area</h4>
  <p>Description of the AI capability.</p>
  <span class="ds-badge ds-badge-primary">Live</span>
</div>
```
- Top accent stripe: `--color-primary`
- Flex column, gap: `--space-4`

---

## Case Study Card
```html
<div class="ds-case-study-card">
  <h4>Client: Healthcare Group</h4>
  <p>Problem → Solution → Impact summary.</p>
</div>
```
- Left accent stripe: 4px solid `--color-primary`
- Hover: slides right 4px

---

## Badges
```html
<span class="ds-badge ds-badge-primary">AI Ready</span>
<span class="ds-badge ds-badge-success">Deployed</span>
<span class="ds-badge ds-badge-neutral">Draft</span>
```
- `ds-badge-primary` — blue tint, brand blue text
- `ds-badge-success` — green tint, success green text
- `ds-badge-neutral` — neutral surface, secondary text

---

## Tags
```html
<span class="ds-tag">NLP</span>
<span class="ds-tag">Healthcare</span>
<span class="ds-tag">GenAI</span>
```
- Pill radius: `--radius-pill`
- Border: `--color-border`
- Hover: `--color-primary` border and text

---

## Alerts
```html
<div class="ds-alert ds-alert-info">
  This capability is in active development.
</div>

<div class="ds-alert ds-alert-success">
  Deployment complete. All systems operational.
</div>

<div class="ds-alert ds-alert-warning">
  Review required before proceeding.
</div>
```
- Left border accent in semantic color
- Subtle background tint (6% opacity)
- Body font size, base line height

---

## Grid

### Auto-fit (standard)
```html
<div class="ds-grid">
  <div class="ds-card">...</div>
  <div class="ds-card">...</div>
  <div class="ds-card">...</div>
</div>
```
- `auto-fit, minmax(280px, 1fr)` — collapses to single column on mobile
- Gap: `--space-8` (2rem)

### Two-column
```html
<div class="ds-grid-2">
  <div>...</div>
  <div>...</div>
</div>
```
- Collapses to 1 column at `768px`

---

## Layout Containers

```html
<div class="ds-section">
  <div class="ds-container">
    <!-- Section content -->
  </div>
</div>
```

| Modifier | Width |
|---|---|
| `.ds-container` | 960px |
| `.ds-container-xl` | 1080px |
| `.ds-container-md` | 900px |
| `.ds-container-sm` | 800px |
| `.ds-container-xs` | 600px |

---

## Forms

### Input field
```html
<div class="form-group">
  <label>Your Name</label>
  <input type="text" placeholder="Name">
</div>
```
- Border: `--color-border-medium`
- Radius: `--radius-button` (6px)
- Focus: `--color-primary` border + `--color-primary-focus-ring` shadow

### Submit button
```html
<button type="submit">Send Message</button>
```
- Background: `--color-primary`
- Hover: `--color-primary-hover`
- Radius: `--radius-button`

---

## Lists

### Icon-stripe list (Why ITJ)
```html
<ul class="why-list">
  <li><span class="emoji">✅</span> Feature statement</li>
</ul>
```
- Each item: white surface, left border `--color-primary`, hover lifts

### Two-line bullet list (Services)
```html
<ul class="failure-reasons">
  <li>
    <span class="reason-title">Problem title</span>
    <span class="reason-detail">Detail explanation</span>
  </li>
</ul>
```

---

## Navigation (preview)

```
[☰]  ITJ Solutions — AI Solutions
─────────────────────────────────
│ Home
│ About
│ Services
│ Publications
│ Events
│ Contact
─────────────────────────────────
```

Mobile: hamburger drawer (left slide-in, 250px)  
Desktop (≥768px): fixed sidebar (200px), content shifted right 220px

---

## Spacing Reference

```
--space-1   0.25rem   4px    icon margin, tight gap
--space-2   0.5rem    8px    flex gap, badge padding
--space-3   0.75rem   12px   label margin
--space-4   1rem      16px   standard padding unit
--space-6   1.5rem    24px   section horizontal padding
--space-8   2rem      32px   grid gap, card padding
--space-12  3rem      48px   section vertical (mobile)
--space-16  4rem      64px   section vertical (tablet)
--space-20  5rem      80px   section vertical (desktop)
```

---

## Shadow Reference

```
--shadow-sm   0 2px  8px rgba(0,0,0,0.06)   cards at rest
--shadow-md   0 4px 20px rgba(0,0,0,0.08)   elevated panels
--shadow-lg   0 8px 32px rgba(0,0,0,0.10)   featured, CTA card
```

---

## Radius Reference

```
--radius-button   6px      inputs, buttons
--radius-card     12px     cards, containers
--radius-pill     9999px   tags, filter buttons
```

---

## Transition Reference

```
--transition-fast     0.2s ease   buttons, card hover
--transition-medium   0.3s ease   nav drawer
--transition-slow     0.6s ease   card fade-in animations
```
