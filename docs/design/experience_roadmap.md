# AI Solutions — Product Experience Roadmap

**Document:** Experience Roadmap  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-089A-PRODUCT-EXPERIENCE-VISION  
**Date:** 2026-06-25  
**Status:** ACTIVE — This roadmap governs implementation sequencing for all future UX and design slices  
**Audience:** Practice Lead, Engineering Lead, Frontend Engineering  
**Depends on:** `product_experience_vision.md`, `design_principles.md`, `benchmark_patterns.md`

---

## Framing the Roadmap

SF-088 delivered the structure. What follows is the experience.

The roadmap below sequences implementation work to maximize credibility impact per slice. Each slice is designed to be independently valuable — the portal improves meaningfully after each one — while building toward a coherent product experience.

The sequencing is deliberate:
1. Visual system before component work (you can't build components without a visual system)
2. Homepage before detail pages (the homepage is the portal's credibility statement)
3. Components before templates (you can't build templates without components)
4. Templates before optimization (you can't optimize patterns that don't exist)

Do not reorder the sequence without evaluating dependencies.

---

## SF-SLICE-089B — Visual Design System Extension

**Theme:** Foundation  
**Objective:** Extend the SF-087D design system with the visual elements needed for a premium enterprise portal. No layout changes, no content changes — only tokens and CSS.

**Scope:**

1. **Display typeface**  
   Load Inter (or Plus Jakarta Sans) as a Google Font. Apply to display context only: H1, H2, `.ds-display`, `.ds-heading-hero`. Body text remains in system font stack. Use `font-display: swap` and preload the 600-weight variant.  
   - New token: `--font-family-display`  
   - Max font payload: 80KB across all loaded weights

2. **Dark surface tokens**  
   Add `--color-surface-dark` (a near-black navy: approximately `#0f1624` or derived from `--color-primary` at L=8%) and `--color-surface-mid` (a blue-tinted off-white: approximately `#f0f4ff`).  
   - `--color-text-on-dark`: `#f0f4ff` or equivalent for legible text on dark backgrounds  
   - `--color-surface-dark-border`: 1px border for sections that sit between dark and light backgrounds  

3. **Typography scale additions**  
   - `--font-size-4xl: 3.5rem` (56px — for hero display text on desktop)  
   - `--font-weight-extrabold: 800` (for H1 and display headings)  
   - `--line-height-display: 1.15` (tighter than `--line-height-tight` for very large text)  

4. **Elevation additions**  
   - `--shadow-xl: 0 16px 64px rgba(0, 0, 0, 0.12)` (for modals and maximum-emphasis elements)  
   - `--shadow-glow: 0 0 32px var(--color-primary-glow)` (for high-emphasis interactive elements)  

5. **Section background variants**  
   Define `.ds-section-dark`, `.ds-section-mid`, `.ds-section-white` as utility classes that apply the correct background, text colors, and border handling for each surface type. These eliminate the need for inline styles on section backgrounds.  

6. **Icon system declaration**  
   Document the official icon system (Lucide — MIT license, consistent 24px grid). Do not implement icon loading in this slice — declare the choice and document the usage rules. Implementation in 089D.  

**Acceptance criteria:**
- Display typeface loads correctly on the current home page H1
- Dark section tokens render correctly on a test section
- Zero regressions in existing visual appearance
- New tokens documented in a `tokens.md` extension file alongside `tokens.css`

**Slices unblocked:** 089C (homepage), 089D (component library)

---

## SF-SLICE-089C — Homepage Experience

**Theme:** Entry Point  
**Objective:** Redesign the homepage as the portal's credibility statement and primary sales enablement surface. The homepage is the most-visited page and the first thing a salesperson shows a prospect.

**Scope:**

1. **Hero section redesign**  
   - Background: `--color-surface-dark` (dark navy)  
   - Headline: display typeface, `--font-size-4xl`, `--font-weight-extrabold`, white text  
   - Subheadline: 1-2 sentences, `--font-size-lg`, `--color-text-on-dark`  
   - Single CTA: "Schedule a Discovery Call" (primary button, inverted for dark background)  
   - Secondary CTA: "Explore Capabilities" (ghost button)  
   - No hero image — replace `hero-banner.png` with typographic composition  
   - Above-fold test: at 1280px width, only headline + subheadline + two CTAs visible. No scrolling required to see the CTA.

2. **Credibility bar (new section)**  
   A narrow horizontal strip immediately below the hero, on white background. Contents:  
   - CRISP-ML(Q) methodology reference: "Built on CRISP-ML(Q) — the AI delivery standard"  
   - Publication signal: "Peer-reviewed AI research — [n] published papers"  
   - Academic partnerships: 4 partner logos (CITEDI, CETYS, UABC, ITT-TecNM) in 16px height  
   This section communicates credibility in under 3 seconds without requiring the visitor to read anything.

3. **Problem statement section (new)**  
   Full-width section, `--color-surface-mid` background. Single bold claim: the 85% PoC failure problem and why AI Solutions exists. This replaces or restructures the current "Why AI Solutions" section.  
   Structured as: Problem → Our answer → Differentiator. Max 4 sentences. One link to How We Engage.

4. **Industries quick-nav (restructured)**  
   Current quicklinks grid (4 cards) → 5 industry pills or a horizontal strip of 5 industry names with hover state, linking to industry pages. This gives the executive buyer "do you know my industry?" confirmation in one glance.

5. **Solutions section (restructured)**  
   3 solution cards (NeuroDocs, CV Extractor, TalentBot). Each card: name, one-line problem statement, industry badge, "Learn more →". No descriptive paragraphs — cards must be scannable in 10 seconds total.

6. **Discovery CTA section**  
   Final above-footer section. Dark background variant (`--color-surface-dark`). Single bold statement + single CTA + 4-step "what happens next" process (text, not diagram). This section is the conversion point for visitors who have read through.

**Acceptance criteria:**
- P-15 (Sales Team Tests First): one salesperson reviews and confirms usable in a client meeting
- P-01 (One Claim Per Section): audited and compliant for every section
- Above-fold renders correctly at 375px, 768px, 1024px, 1280px
- Homepage Lighthouse score: Performance ≥90, Accessibility ≥95

---

## SF-SLICE-089D — Component Library

**Theme:** Infrastructure  
**Objective:** Build the missing DS components needed for capability depth, process visualization, and sales content. These components become reusable across all future pages.

**Scope:**

1. **Process step component (`ds-process-step`)**  
   A numbered step with icon, heading, and description. Renders in horizontal (desktop) or vertical (mobile) orientation. Used for: CRISP-ML(Q) phases, How We Engage phases, solution pipeline steps.

2. **Stat display component (`ds-stat`)**  
   Large number + unit + label. Used for: engagement duration estimates ("4–6 weeks"), capability depth metrics (if/when validated), phase counts.  
   Example: `<div class="ds-stat"><span class="ds-stat-value">4–6</span><span class="ds-stat-unit">weeks</span><span class="ds-stat-label">Proof of Concept</span></div>`

3. **Architecture diagram component (SVG standard)**  
   Not a CSS component — a set of SVG templates:
   - Linear pipeline diagram (for RAG, CV pipelines)
   - Phase flow diagram (for CRISP-ML(Q), engagement model)
   - System integration diagram (for solution architecture)
   SVGs stored in `assets/svg/diagrams/`. Referenced from content pages via Hugo `resources.Get`.

4. **Icon integration**  
   Lucide icon SVG sprites or inline references. Define `ds-icon` class wrapper. Document standard sizes (16px, 20px, 24px). Replace all emoji in role cards (About page) and any emoji in content files.

5. **Capability tag/pill (enhanced `ds-tag`)**  
   The current `ds-tag` renders correctly but has no active/selected state. Add `ds-tag-active` modifier for cases where a tag represents a filter state (future use in Insights hub) or the current page's primary capability.

6. **Callout component (`ds-callout`)**  
   An inset content block for: technical notes, important constraints, "what this means for you" translation of technical content. Visually distinct from `ds-alert` — callout is not status-indicating, it is content-indicating.

7. **Inline validation block (`ds-proof`)**  
   A small, inline credibility block for adjacent claim validation. Structure: short statement + source reference. Used to attach publication citations, methodology references, or customer outcome statements next to specific claims.

**Acceptance criteria:**
- All new components documented in `assets/css/components.css` with DS namespace (`ds-*`)
- All new components render in light and dark surface contexts
- Zero inline style overrides needed to use any new component correctly
- At least one diagram (CRISP-ML(Q) flow) created and deployed to How We Engage page as a smoke test

---

## SF-SLICE-089E — Capability Page Templates

**Theme:** Technical Credibility  
**Objective:** Rewrite all 8 capability pages to the design standard — implementing process diagrams, component-based layouts, and depth-on-demand architecture. After this slice, the capability section is the strongest technical credibility signal on the portal.

**Scope (per capability page):**

1. **Hero zone** (above-fold)  
   - Capability badge (GenAI, NLP, Vision, ML, Platform, Agents, Governance)  
   - H1: capability name (bold, display typeface)  
   - 2-sentence technical description written at senior engineer reading level  
   - Not the current layout — the description must pass the "would an ML engineer say this?" test  

2. **System diagram** (first content section)  
   - SVG pipeline diagram showing how this capability works end-to-end  
   - Annotated with tool names at each stage  
   - No prose description of the pipeline — the diagram carries that message  

3. **Applications section**  
   - "What problems this solves" — 4-6 specific applications, not generic capability descriptions  
   - Each application is one sentence: "Clinical documentation Q&A: extract answers from patient records with source attribution"  

4. **Technology section**  
   - Technology grid: tool name + one-line description of role  
   - Honest and complete — only tools the team actually uses  
   - Not a logo wall — names only, with brief role descriptions  

5. **Related content section**  
   - Cross-links to: relevant solutions (those that use this capability), relevant industries, published papers that demonstrate the capability  
   - The ViT paper should be linked from the Computer Vision capability page explicitly  

6. **CTA section**  
   - Context-specific CTA (not generic "Schedule a Discovery Call")  
   - For capability pages: "See this in a solution →" (links to the most relevant solution)  

**Acceptance criteria:**
- P-06 (Diagrams Before Paragraphs): every capability page has ≥1 architecture diagram
- P-02 (Capabilities Before Technologies): every page opens with problem/application before tool names
- P-15 (Sales Team Tests First): one engineer AND one salesperson review each page

---

## SF-SLICE-089F — Industry Experience

**Theme:** Domain Credibility  
**Objective:** Mature the industry pages from stub-level content to genuine domain credibility signals. Add use-case sub-pages for the two highest-priority industries (Life Sciences and Healthcare).

**Scope:**

1. **Industry overview page template upgrade** (apply to all 5 industry pages)  
   Current: H1 + problems list + capability tags + CTA  
   Target:  
   - H1 + 2-sentence domain statement (must pass "domain expert reads this" test)  
   - "Three problems we solve in [industry]" — 3 cards, each with specific use case name + 2-sentence description (not just bullet points)  
   - Adjacent validation: reference to relevant publication or methodology  
   - Relevant solutions highlighted (with short description of the industry-specific application)  
   - Relevant capabilities linked with industry-specific context (not generic capability descriptions)  

2. **Use-case sub-pages (Life Sciences — 3 pages)**  
   `/industries/life-sciences/regulatory-document-qa/`  
   `/industries/life-sciences/clinical-trial-data-management/`  
   `/industries/life-sciences/sop-compliance/`  
   Each page: specific problem statement → how AI Solutions addresses it → tech approach → relevant solution → CTA. These pages serve domain buyers who want use-case specificity beyond the industry overview.

3. **Use-case sub-pages (Healthcare — 2 pages)**  
   `/industries/healthcare/clinical-documentation-automation/`  
   `/industries/healthcare/care-coordination-ai/`  

4. **Industry-capability cross-linking**  
   Every capability page must link to the 2-3 industries where it is most relevant. Currently these links exist as `ds-tag` elements. They need to be more prominent — a "This capability is commonly used in:" section with industry names and brief industry-specific application descriptions.

**Acceptance criteria:**
- P-04 (Clarity Is the Luxury): all industry content reviewed for domain accuracy by at least one person with industry knowledge
- All use-case sub-pages have `[build] list = false` to prevent section auto-listing
- Hugo aliases in place for any URLs that might be bookmarked

---

## SF-SLICE-089G — Sales Journey Optimization

**Theme:** Conversion  
**Objective:** Instrument the portal for sales enablement effectiveness. Define and implement the measurement system that tells the sales team and practice lead whether the portal is working.

**Scope:**

1. **Analytics instrumentation**  
   Implement privacy-respecting page analytics. Recommended: Plausible Analytics (GDPR-compliant, cookieless, $9/month) or Fathom. Neither requires a cookie consent banner (a friction point on enterprise portals).  
   Events to track:  
   - Page views per section (which sections get visited?)  
   - CTA clicks per page (which CTAs convert?)  
   - Contact form submissions (the ultimate conversion)  
   - Time on capability pages (are technical buyers going deep?)  

2. **Contact form enhancement**  
   Current contact form (FormSubmit.co) collects: name, email, message. Enhance with:  
   - Industry select (5 options matching the Industries section)  
   - Interest select (Solutions, Capabilities, Speaking with a team member, Something else)  
   - How did you hear about us? (optional)  
   These fields allow the sales team to contextualize inbound before the discovery call.

3. **UTM link infrastructure for Sales team**  
   Create a standard set of UTM-tagged URLs for the sales team to use in outreach. E.g., `?utm_source=sales&utm_campaign=life-sciences-discovery`. This allows the team to track which outreach messages drive portal engagement.

4. **"Sales Playbook" internal page (not public-facing)**  
   A page at `/internal/sales-playbook/` (gated with basic auth or password) with:  
   - "Share this URL for [scenario]" quick links for Sales
   - Which pages to send for each buyer persona
   - Scripts that mirror the page content for each section
   - Contact form tracking links  
   Note: This is a lightweight internal tool, not a full CMS — implemented as a Hugo page with basic auth via Netlify or a similar mechanism if GitHub Pages does not support auth.

5. **Quarterly content review process**  
   Define the process (not the execution) for quarterly content review:  
   - Sales team reports which questions prospects asked that the portal didn't answer
   - Engineering team reviews capability pages for technical accuracy
   - Practice lead reviews engagement model for accuracy against actual delivery
   - One content-update commit per quarter minimum

**Acceptance criteria:**
- Analytics installed and tracking at least home page + contact page
- Contact form has industry and interest fields
- Sales team has reviewed and confirmed UTM link structure is usable in their workflows

---

## Slice Summary

| Slice | Theme | Primary Deliverable | Credibility Impact | Duration Estimate |
|---|---|---|---|---|
| 089B | Foundation | Display font + dark surface tokens + icon declaration | Medium | 1–2 days |
| 089C | Entry Point | Homepage redesign (dark hero, credibility bar, restructured sections) | Very High | 3–5 days |
| 089D | Infrastructure | Process components, diagrams, icon integration, stat display | High | 4–6 days |
| 089E | Technical Credibility | 8 capability pages with diagrams, depth-on-demand, component-based | Very High | 5–8 days |
| 089F | Domain Credibility | Industry page maturity + 5 use-case sub-pages | High | 3–5 days |
| 089G | Conversion | Analytics, enhanced contact form, UTM infrastructure | Medium (measurable) | 2–3 days |

---

## Dependency Graph

```
087D (Design System)
└── 089A (Experience Vision) [THIS SLICE]
    └── 089B (Visual System Extension)
        ├── 089C (Homepage Experience)
        └── 089D (Component Library)
            ├── 089E (Capability Pages)
            └── 089F (Industry Experience)
                └── 089G (Sales Journey Optimization)
```

089B must precede 089C and 089D. 089D must precede 089E and 089F. 089G depends on 089F being complete (it optimizes after the content is correct).

089C and 089D can run in parallel if two engineers are available.

---

## What Is NOT in This Roadmap

These items are product decisions or Phase 2 work. They do not belong in the 089 series:

| Item | Status | Target |
|---|---|---|
| Insights/Blog hub (≥5 articles threshold) | Deferred until content exists | SF-SLICE-091 |
| Case studies (requires client approval) | Deferred | SF-SLICE-090 |
| Client-only gated content | Requires auth infrastructure | Phase 3 |
| Team data model in YAML (dynamic profiles) | Architecture work | SF-SLICE-092 |
| Technology stack standalone page | Phase 2 nav addition | Post-089F |
| AI Delivery OS public product page | Business decision required | Post-094 |
| Accelerators page (IA decision ER-A01 pending) | Deferred | SF-SLICE-089 addendum |

---

## Success Criteria for the 089 Series

The 089 series is complete when:

1. A salesperson can open any page on a laptop in a client meeting and it communicates AI Solutions' capability without the salesperson needing to narrate what the page says
2. A technical buyer can go from the homepage to a specific capability's architecture diagram in ≤3 clicks
3. An executive buyer can self-qualify AI Solutions in under 2 minutes without a salesperson present
4. The homepage passes Lighthouse scores of Performance ≥90, Accessibility ≥95, SEO ≥95
5. The contact form captures enough structured data to allow the sales team to prepare for a discovery call before it happens
6. A designer or engineer hired after this series can read `docs/design/` and understand exactly how the portal should look, behave, and evolve — without asking anyone

---

## Risk Register

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Display font increases page load time above 3 seconds | Medium | High | Preload critical weight only; use `font-display: swap`; measure on 3G simulation |
| Inline styles in content files resist DS migration | High | Medium | Address in 089D; document migration pattern; update files incrementally |
| Architecture diagrams require design skill the team doesn't have | Medium | High | Use SVG-based line diagrams (not illustration); templates reusable across capabilities |
| Dark hero creates accessibility contrast issues | Low | High | Test contrast ratio at design stage; minimum 7:1 for body text on dark backgrounds |
| Sales team engagement for P-15 testing is low | Medium | Medium | Schedule explicit review as part of closeout for each 089 slice; 30 min per slice |
