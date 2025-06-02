# TODO

## About Page Refinements

### Immediate fixes
- [ ] Remove underlines from social icon links.
- [ ] Ensure no stray bullets next to icons.
- [ ] Fix two-per-row layout for team cards.
- [ ] Center the “About Us” heading under the AI banner.
- [ ] Center the page subtitle/description.
- [ ] Center the Mission & Vision cards within their container.
- [ ] Center the Holistic Goals and Partners section headings.

### Future enhancements
- [ ] Add responsive tweaks for mobile breakpoints.
- [ ] Polish individual profile pages (content/team/*).
- [ ] Write unit tests for the flip-card component.
- [ ] Bulk-create team profiles via archetype and front-matter.
- [ ] Add downloadable CV links to each profile page.

---

## Events Page Setup

### In progress
- [x] Create `feature/events-page` branch.
- [x] Set up `content/events/_index.md` with intro.
- [x] Build `layouts/events/list.html` to render event cards.
- [x] Create `events.css` with responsive grid styling.
- [x] Import `events.css` via `extend_head.html`.
- [x] Add first sample event: UABC Business Intelligence Talk.
- [ ] Add event image `uabc-business-intelligence.jpg` to `static/images/events/`.

### Future enhancements
- [ ] Add tag badges to cards (e.g., "Talk", "Training", "Conference").
- [ ] Add year or category filter toggle (2023, 2024, 2025).
- [ ] Support full single event view (`layouts/events/single.html`) later.

---

## Services Page – AI PoC Strategy & Tools

### Completed
- [x] Strategic intro with CRISP-ML-inspired structure
- [x] Service cards for NeuroDocs, CV Extractor, TalentBot
- [x] Visual section containers (`.intro-block`) with spacing & style
- [x] Icons + formatting for business-readability

### Phase 2: Micro-Polish
- [x] Add section title: `## Our AI Process & Philosophy`
- [x] Add spacing between `.intro-block` elements
- [x] Apply reduced border radius & shadow on intro blocks
- [ ] (Optional) Add callout: “We’ve helped 12+ clients validate and scale their AI PoCs”

### Phase 3: Visual Enhancements
- [ ] Add PoC → MVP diagram illustration
- [ ] Add collapsible steps using `<details>`
- [ ] Add individual `/services/[tool]/` detail pages
- [ ] Animate `.intro-block` or service cards on scroll
- [ ] **Remove underlines from Tech Stack links** (WIP)

### Stretch Ideas
- [ ] Add “Request an AI PoC Audit” CTA link
- [ ] Add client logo carousel (internal or anonymized)
- [ ] Create grid of “mini case studies”
