# Content Gap Analysis

**Document:** Current vs. Proposed Website Gap Analysis  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Date:** 2026-06-25  
**Status:** CURRENT — Baseline for SF-SLICE-088 prioritization  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/information_architecture.md`, `docs/product/sitemap_proposal.md`

---

## Purpose

This document compares the current live website against the approved Product Strategy (087E) and Information Architecture (087F). For every gap, it identifies the priority, business impact, and recommended implementation slice.

This is the definitive prioritization input for SF-SLICE-088.

---

## Methodology

Current state is assessed from:
- Live site content at `https://itj-labs.github.io/department-site/`
- Hugo content files in `content/` directory
- Current navigation in `config.toml` (6 items: Home, About, Services, Publications, Events, Contact)

Proposed state is defined in:
- `docs/product/information_architecture.md` (page hierarchy)
- `docs/product/sitemap_proposal.md` (URL structure)
- `docs/product/content_model.md` (entity definitions)
- `docs/product/ai_solutions_product_strategy.md` (strategic requirements)

---

## Summary Scorecard

| Category | Current | Required | Gap |
|---|---|---|---|
| Top-level nav items | 6 (wrong labels) | 6 (updated labels) | Navigation update required |
| Solution pages | 3 (at /services/) | 4 (at /solutions/ + redirect) | URL migration + 1 new (Custom AI) |
| Capability pages | 0 | 9 (overview + 8 detail) | Full section missing |
| Industry pages | 0 | 6 (overview + 5 detail) | Full section missing |
| Case study pages | 0 | 1 placeholder + 5 (Phase 2) | Full section missing |
| Insights hub | 0 | 1 (Phase 2) | Phase 2 |
| Blog / articles | 0 | 3+ at launch | Content authoring required |
| Publications | 1 | 5+ | 4 additional needed |
| Accelerators page | 0 | 1 (decision pending) | Pending IA decision |
| Footer nav | 0 (PaperMod default) | 5-column custom | Full footer build required |
| Company name | "ITJ Labs Department" (About) | "AI Solutions at ITJ Solutions" | Content update |
| Team data model | Hardcoded HTML | Data-driven | Architecture change |
| Contact form routing | FormSubmit.co | FormSubmit.co + interest field | Minor enhancement |

---

## Gap Inventory

### GAP-01: Navigation Structure

**Description:** Current nav uses "Services" (wrong label), "Publications" (standalone), "Events" (standalone). Missing: Solutions (proper label), Capabilities, Industries. Publications and Events should be accessible from footer or Insights hub rather than primary nav.

**Current state:**
```
Home | About | Services | Publications | Events | Contact
```

**Required state:**
```
Home | Solutions | Capabilities | Industries | About | Contact
```

**Priority:** P0 — Critical. The navigation is the primary wayfinding system for all buyers.

**Business impact:** High. Every buyer who lands on the site and does not see "Capabilities" or "Industries" in the nav cannot find the content most relevant to their evaluation.

**Recommended slice:** SF-SLICE-088 — config.toml update

**Effort:** Low. config.toml change + Hugo build.

**Dependency:** None. Can be done independently.

---

### GAP-02: /services/ → /solutions/ URL Migration

**Description:** The current `/services/` section must migrate to `/solutions/` to match the product strategy and content model. This includes the overview page and 3 solution detail pages.

**Current URLs:**
```
/services/
/services/neurodocs/
/services/cv-extractor/
/services/talentbot/
```

**Required URLs (with 301 redirects from old URLs):**
```
/solutions/
/solutions/neurodocs/
/solutions/cv-extractor/
/solutions/talentbot/
```

**Priority:** P0 — Critical. The label "Services" communicates the wrong category to all six buyer personas.

**Business impact:** High. "Solutions" aligns with how enterprise buyers think ("I need a document AI solution" not "I need a document AI service"). Misalignment costs conversions.

**Recommended slice:** SF-SLICE-088 — content directory rename + Hugo aliases

**Effort:** Medium. Requires: new content directory, front-matter aliases, content update, nav update. Risk: broken links if aliases are not implemented correctly.

**Dependency:** Must implement aliases before removing /services/ content.

---

### GAP-03: Capabilities Section (Complete — 9 pages missing)

**Description:** No capabilities section exists. This is the most significant structural gap for the VP Engineering / technical buyer persona.

**Pages missing:**
- `/capabilities/` — overview
- `/capabilities/retrieval-augmented-generation/`
- `/capabilities/llm-engineering/`
- `/capabilities/computer-vision/`
- `/capabilities/ml-model-development/`
- `/capabilities/mlops-and-ai-platform/`
- `/capabilities/ai-agents-and-automation/`
- `/capabilities/responsible-ai/`
- `/capabilities/document-intelligence/`

**Priority:** P0 — Critical. Technical buyers (Persona 2) have no entry point.

**Business impact:** Very High. Every VP Engineering or Head of AI who arrives at AI Solutions cannot evaluate technical depth. This segment is the primary technical recommender for AI partnerships.

**Recommended slice:** SF-SLICE-088 (overview + stub pages) → SF-SLICE-089 (full content)

**Effort:** High. Requires: new Hugo content type, new templates, 9 content files, cross-linking with solutions and industries.

**Dependency:** Content for detail pages requires Engineering Lead review. Stubs (front-matter + brief intro) can ship in SF-SLICE-088 without waiting for full content.

---

### GAP-04: Industries Section (Complete — 6 pages missing)

**Description:** No industries section exists. Regulated-industry buyers (healthcare, life sciences, HR) cannot confirm domain expertise before contacting.

**Pages missing:**
- `/industries/` — overview
- `/industries/healthcare/`
- `/industries/life-sciences/`
- `/industries/human-resources/`
- `/industries/manufacturing/`
- `/industries/financial-services/`

**Priority:** P0 — Critical. Healthcare and Life Sciences buyers specifically look for industry expertise.

**Business impact:** Very High. Buyers in regulated industries require domain confirmation before engaging. Without an industries section, NeuroDocs demos are harder to sell to Life Sciences buyers who cannot confirm AI Solutions understands their regulatory context.

**Recommended slice:** SF-SLICE-088 (overview + stub pages) → SF-SLICE-089 (full content)

**Effort:** High. Requires: new Hugo content type, new templates, 6 content files, compliance validation per industry.

**Dependency:** Compliance claims (HIPAA, FDA 21 CFR Part 11, GDPR Article 22) require Engineering Lead approval before publishing.

---

### GAP-05: Home Page Structure

**Description:** Current home page has hero, quick-links (Services/Publications/Events/Contact), featured CV Extractor, Why ITJ, CTA. This structure does not match the proposed 8-section structure defined in `home_blueprint.md`.

**Current sections:**
1. Hero (outdated headline)
2. Quick links (Services, Publications, Events, Contact)
3. Featured Service (CV Extractor hardcoded)
4. Why ITJ Labs (correct message, wrong company name)
5. CTA ("Let's Talk" with green button ❌ violates EP-04)

**Required sections:**
1. Hero (updated headline + CTAs)
2. Problem → Solution hook
3. Solutions grid (3 solutions + Custom AI)
4. Capabilities preview (4 capabilities)
5. Industries (5 industry badges)
6. Social proof (4 key metrics)
7. Team signals
8. Bottom CTA (blue button, not green ❌)

**Priority:** P0 — Critical. The home page is the highest-traffic page.

**Business impact:** High. Current home page does not convert VP Engineering persona (no capabilities signal) or industry-specific buyers (no industry signals). The green CTA button violates the design system constraint (EP-04).

**Specific violations:**
- `home_cta.html` uses `.cta-green` class — must change to brand blue
- Hero headline is "ITJ Solutions — AI Solutions" (site title) — not a differentiating statement
- Quick links show "Services" not "Solutions"
- "Why ITJ Labs" should be "Why AI Solutions"

**Recommended slice:** SF-SLICE-088

**Effort:** Medium. Template update + partial rewrites + CTA color fix.

---

### GAP-06: Case Studies Section

**Description:** No case studies exist anywhere on the site. Priority 1 content per product strategy (EP-01).

**Required:**
- `/case-studies/` — placeholder page with teaser content
- `/case-studies/{slug}/` — individual pages (Phase 2)

**Priority:** P1 — High. Cannot publish case studies until the section exists.

**Business impact:** High. Case studies are the primary evidence for "AI Solutions delivers production AI." Without them, the entire "evidence over assertion" commitment is hollow.

**Recommended slice:** SF-SLICE-088 (placeholder) → SF-SLICE-090 (first case study)

**Effort:** Low for placeholder. High for content (requires client approval).

**Note:** The AI Delivery OS meta case study (the platform maintaining itself) requires no client approval and can be published immediately. Recommend as first case study.

---

### GAP-07: Footer Navigation

**Description:** Current footer is PaperMod default. It provides no secondary navigation, no conversion path, and no quick access to key sections.

**Required:** 5-column custom footer (Brand + Solutions + Capabilities + Industries + Company) per `docs/product/navigation_model.md`.

**Priority:** P1 — High. Footer nav is a critical secondary discovery path and conversion support layer.

**Business impact:** Medium. Visitors who scroll to the bottom of any page are highly engaged. Presenting them with a navigation-free PaperMod footer is a missed opportunity.

**Recommended slice:** SF-SLICE-088

**Effort:** Medium. Requires: custom `footer.html` partial + `footer.css` design system file.

---

### GAP-08: Company Name Inconsistency

**Description:** The About page (`content/about/_index.md`) uses "ITJ Labs Department" as the organizational name in multiple places. The approved name is "AI Solutions at ITJ Solutions."

**Occurrences of incorrect name (current content/about/_index.md):**
- "At ITJ Labs Department, our mission is to empower organizations..."
- "ITJ Labs is driven by a set of holistic goals..."
- Partners section uses "ITJ Labs"

**Priority:** P0 — Critical. Brand inconsistency on a public page.

**Business impact:** High. A buyer who sees "ITJ Labs Department" on the About page and "AI Solutions" everywhere else will be confused. Trust damage.

**Recommended slice:** SF-SLICE-088 — content update (no template change required)

**Effort:** Low. Text replacement in `content/about/_index.md`.

---

### GAP-09: Hero Headline Not Differentiating

**Description:** Current hero shows the site title ("ITJ Solutions — AI Solutions") as the H1 heading and "AI & Data Science at ITJ Labs" as the subheadline. Neither is a differentiating positioning statement.

**Current:**
```
H1: ITJ Solutions — AI Solutions
P: AI & Data Science at ITJ Labs
Quote: "The future isn't coming. We're building it."
```

**Required:**
```
H1: [Approved headline — e.g., "We Build AI That Ships"]
P: [Approved subheadline]
Primary CTA: [Approved CTA]
Secondary CTA: [Approved CTA]
```

**Priority:** P0 — Critical. The hero is the first thing every visitor sees.

**Business impact:** Very High. A generic or confusing headline loses 70%+ of first-time visitors before they scroll.

**Recommended slice:** SF-SLICE-088

**Effort:** Low (content change). Medium if template update required.

**Dependency:** Requires executive approval of headline per ER-H01 in `home_blueprint.md`.

---

### GAP-10: Green CTA Button (EP-04 Violation)

**Description:** `layouts/partials/home_cta.html` uses `.cta-green` class on the "Contact Us" button. This violates EP-04 (green is semantic-only) and D-02 (no green CTAs).

**Current:**
```html
<a href="/contact/" class="cta-button cta-green">Contact Us</a>
```

**Required:**
```html
<a href="/contact/" class="cta-button">Contact Us</a>
```

(`.cta-button` is already styled to use `--color-primary` per the design system.)

**Priority:** P0 — Critical. EP-04 is an executive priority.

**Business impact:** Medium. Brand consistency is at risk.

**Recommended slice:** SF-SLICE-088

**Effort:** Trivial. One-line template change.

---

### GAP-11: Publications Section — Sparse Content

**Description:** Only 1 publication exists. The publications page is live but has minimal content, reducing the credibility signal it provides.

**Current:** 1 publication (ViT paper)  
**Required:** 5+ publications for a credible publications section

**Priority:** P1 — High (content), P2 — Low (template)

**Business impact:** Medium-High for technical audience. A publications section with 1 paper signals early stage rather than established research program.

**Recommended slice:** SF-SLICE-091 (content authoring)

**Effort:** High for content (requires research team investment). Low for template updates.

**Note:** 11 existing event listings can be featured in a combined Insights view to supplement sparse publication content. This does not add publications but adds visible activity.

---

### GAP-12: Insights / Blog Section

**Description:** No blog or insights section exists. No original short-form technical content.

**Priority:** P2 — Phase 2

**Business impact:** Medium for authority building. Long-term SEO and return-visit driver.

**Recommended slice:** SF-SLICE-091

**Effort:** High for content infrastructure + content creation.

---

### GAP-13: Accelerators Page

**Description:** No standalone accelerators page. Accelerators content is currently split across the Services page (for NeuroDocs, CV Extractor, TalentBot) with no content about the AI Delivery OS as an accelerator.

**Priority:** P1 — High (if standalone page approved). P2 (if merged into Solutions).

**Business impact:** Medium. Differentiates AI Solutions from build-from-scratch consultancies for the partner persona.

**Recommended slice:** SF-SLICE-089

**Effort:** Low (documentation-focused page with no complex templates).

**Dependency:** IA decision ER-A01 (standalone page vs. merged into Solutions).

---

### GAP-14: Team Data Model (Hardcoded)

**Description:** Team member data is hardcoded in `content/about/_index.md` as raw HTML. Adding or modifying team members requires a developer commit.

**Priority:** P2 — Phase 2 (acceptable for MVP, must fix for AI Delivery OS automation)

**Business impact:** Medium. AI Delivery OS content missions cannot update the team section without a structural change.

**Recommended slice:** SF-SLICE-092 (when AI Delivery OS content missions are built)

**Effort:** Medium. Requires migrating to `data/team.yaml` or `content/team/` content files.

---

### GAP-15: Meta Descriptions and SEO Tags

**Description:** No custom meta descriptions are defined for any page. Hugo uses content preview as the default meta description. This is suboptimal for search visibility.

**Priority:** P2 — Phase 2

**Business impact:** Low initially (low traffic baseline). High over time as content volume grows.

**Recommended slice:** SF-SLICE-088 (define meta descriptions per page) or dedicated SEO slice.

**Effort:** Low per page (front-matter `description` field).

---

## Prioritized Gap Resolution Plan

### Phase 1 — SF-SLICE-088 (MVP Implementation)

Resolve all P0 gaps and high-impact P1 gaps.

| Gap | Description | Effort | Owner |
|---|---|---|---|
| GAP-01 | Navigation structure update | Low | Engineering |
| GAP-02 | /services/ → /solutions/ migration | Medium | Engineering |
| GAP-03 | Capabilities section (overview + 8 stubs) | High | Engineering + Content |
| GAP-04 | Industries section (overview + 5 stubs) | High | Engineering + Content |
| GAP-05 | Home page structure update | Medium | Engineering + Content |
| GAP-06 | Case studies placeholder | Low | Engineering |
| GAP-07 | Custom footer | Medium | Engineering |
| GAP-08 | Company name consistency | Low | Content |
| GAP-09 | Hero headline (pending ER-H01) | Low | Content |
| GAP-10 | Green CTA button fix | Trivial | Engineering |

**SF-SLICE-088 estimated new/changed pages:** 9 (existing) + 15 (new) = 24 total

### Phase 2 — SF-SLICE-089 to SF-SLICE-092

| Gap | Description | Slice |
|---|---|---|
| GAP-03 (content) | Full capability detail content | SF-089 |
| GAP-04 (content) | Full industry detail content | SF-089 |
| GAP-11 | Publications expansion | SF-091 |
| GAP-12 | Insights / Blog hub | SF-091 |
| GAP-13 | Accelerators page | SF-089 or SF-088 |
| GAP-14 | Team data model migration | SF-092 |
| GAP-15 | Meta descriptions | SF-088 or dedicated |

---

## Implementation Readiness Assessment

Before SF-SLICE-088 can begin:

| Item | Status | Owner | Blocking? |
|---|---|---|---|
| Hero headline approved | ❌ Pending | General Manager | YES — blocks home page implementation |
| Social proof metrics validated | ❌ Pending | Practice Lead | YES — blocks home page implementation |
| Mission/Vision text approved | ❌ Pending | General Manager | YES — blocks About page |
| GDPR/HIPAA claims validated | ❌ Pending | Engineering Lead | YES — blocks Solutions and Industries |
| AI Delivery OS public reference approved | ❌ Pending | General Manager | YES — blocks Capabilities/Agents and About |
| Company name confirmed | ❌ Pending | General Manager | YES — blocks all pages |
| Accelerators IA decision | ❌ Pending | Practice Lead | NO — can defer |
| Engineering Lead capability content review | ❌ Pending | Engineering Lead | YES — blocks Capabilities stubs |

**Overall SF-SLICE-088 readiness: ⚠️ BLOCKED pending executive decisions above.**

The engineering implementation can proceed in parallel with executive review for structural work (templates, URLs, nav, footer). Content-specific work (hero copy, About text, capability descriptions) cannot be finalized until decisions are received.

---

## Risk Register

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Executive decisions not received before SF-088 starts | High | High | Proceed with structural/template work; use placeholder copy that is clearly marked [PENDING APPROVAL] |
| /services/ links break during migration | Medium | High | Implement Hugo aliases before removing old content; test locally before push |
| Capability content requires more Engineering Lead time than available | High | Medium | Ship stubs (title + 2-sentence description) in SF-088; full content in SF-089 |
| HIPAA/FDA compliance claims rejected by legal | Low | High | Use qualified language: "HIPAA-aligned" or "designed for HIPAA compliance" until legal review complete |
| Client approval for first case study delayed | High | Medium | Publish AI Delivery OS meta case study (no client needed) as first case study |
| Publications section remains sparse after SF-091 | Medium | Medium | Surface event content in Insights hub to supplement publication count |
