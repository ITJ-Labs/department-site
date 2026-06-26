# Home Page Blueprint

**Page:** Home  
**URL:** `/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-088  
**Status:** BLUEPRINT — Pending executive review  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/website_objectives.md`, `docs/product/navigation_model.md`

---

## Page Purpose

The home page is the first impression for every audience segment. It must accomplish five things in the first scroll:

1. Declare who AI Solutions is and what we do
2. Distinguish AI Solutions from traditional consulting and software firms
3. Signal credibility to the enterprise buyer
4. Surface the three deployed solutions immediately
5. Deliver a clear, low-friction path to contact

The home page does not explain everything — it earns the second click.

---

## Target Audience

**Primary:** Executive Decision-Makers (CAIO, CTO, VP Engineering) evaluating AI engineering partners. First visit. No prior context about AI Solutions.

**Secondary:** Senior AI Engineers discovering AI Solutions via publication or referral. Technical credibility signals matter more than executive language for this segment.

**Tertiary:** HR/Talent and Life Sciences buyers arriving from industry-specific search or referral. They need to see their problem reflected immediately.

---

## Business Objective

Generate a contact form submission or discovery call request. Every section of the home page filters for buyer intent and guides qualified visitors toward `/contact/`.

Secondary objective: establish enough credibility that a visitor who does not contact today will return when they are ready to engage.

---

## Hero

### Headline (recommended)

> **We Build AI That Ships**

*Alternatives for executive review:*
- "From AI Concept to Production Impact"
- "The AI Engineering Team That Delivers"
- "Production AI — No PoC Graveyard"

The recommended headline is direct, active, and immediately addresses the core differentiator. It works for all six buyer personas.

### Subheadline

> 85% of AI initiatives fail to reach production. AI Solutions exists to close that gap — combining PhD-level research expertise with enterprise delivery discipline.

**Note for review:** The 85% statistic is sourced from Forbes Technology Council, 2024 — currently cited in `/services/`. Should remain in the hero if it continues to resonate with target buyers. Validate with sales team.

### Primary CTA

**Label:** "Talk to Our AI Team"  
**Target:** `/contact/`  
**Color:** `--color-primary` (brand blue)  
**Style:** `.ds-btn-primary` or `a.button.primary`

### Secondary CTA

**Label:** "See What We've Built"  
**Target:** `/solutions/`  
**Color:** outlined secondary  
**Style:** `.ds-btn-secondary`

### Supporting Visual

Hero banner image (current: `images/hero-banner.png`). This image should communicate AI engineering — not stock photography of business handshakes. Review whether the current banner image is appropriate for the new positioning. Replace with an engineering-focused visual if available.

---

## Key Messages

**KM-01:** AI Solutions builds AI that works in production — not just proofs-of-concept.

**KM-02:** The team behind AI Solutions combines research credentials (PhD researchers, published authors) with enterprise delivery discipline (CRISP-ML(Q), MLOps, production SLAs).

**KM-03:** AI Solutions has deployed 10+ AI systems across Healthcare, Life Sciences, HR, and Manufacturing — with 99.9% uptime and GDPR/HIPAA compliance.

**KM-04:** From PoC to production in 4–6 weeks. Not months. Not years.

**KM-05:** AI Solutions operates its own AI Delivery OS — an autonomous platform that manages the development of this very website. That is proof, not marketing.

---

## Sections

### Section 1 — Hero

**Purpose:** Establish the category, the problem, and the solution in 3 sentences or less.

**Content summary:**
- H1 headline (see above)
- 1-sentence subheadline
- Primary + secondary CTA
- Hero banner image

**Supporting visuals:** Hero banner. Consider updating to an engineering-focused image (abstract AI neural network, data pipeline diagram, or engineering team at work).

**Evidence required:** None — this is positioning, not a claim requiring citation.

**Related entities:** None (home section, not entity-driven)

---

### Section 2 — Problem → Solution Hook

**Purpose:** Earn the trust of a skeptical buyer by naming the problem they know is real before explaining how AI Solutions solves it.

**Content summary:**

```
THE PROBLEM
85% of AI initiatives fail to reach production.
Not because the AI doesn't work —
because the delivery doesn't.

OUR ANSWER
AI Solutions closes the production gap.
Research-grade AI expertise + enterprise delivery discipline.
```

**Format:** Two-column or stacked layout. Short, punchy lines. No paragraphs at this point in the page.

**Supporting visuals:** Simple diagram or icon pair (problem / solution icons). Or a left/right split layout.

**Evidence required:** Forbes Technology Council citation (currently used in /services/).

**Related entities:** None

---

### Section 3 — Solutions Grid

**Purpose:** Show what AI Solutions has actually built. Give buyers an immediate product reference.

**Content summary:**

Four cards in a responsive grid:

| Card | Title | One-liner | CTA |
|---|---|---|---|
| 1 | NeuroDocs | AI-powered document management for Life Sciences and Pharma compliance | Details → |
| 2 | CV Extractor | High-throughput AI resume parsing for enterprise HR | Details → |
| 3 | TalentBot | Intelligent HR-tech assistant for recruitment automation | Details → |
| 4 | Custom AI Systems | We design from first principles when off-the-shelf won't do | Talk to us → |

Each card links to its solution detail page. The "Custom AI" card links to `/contact/`.

**Supporting visuals:** Solution icons or screenshots (to be created in SF-SLICE-088 or a design slice). Placeholder icons acceptable for MVP.

**Evidence required:** None — these are live products.

**Related entities:** `Solution` (NeuroDocs, CV Extractor, TalentBot)

---

### Section 4 — Capabilities Preview

**Purpose:** Signal technical depth to the VP Engineering persona without overloading the executive buyer.

**Content summary:**

Four capability highlights with icon, name, and one-line description:

| Icon | Capability | One-liner |
|---|---|---|
| 🤖 | LLM & Generative AI | RAG systems, LLM fine-tuning, document intelligence |
| 👁️ | Computer Vision | Object detection, edge AI, visual inspection |
| ⚙️ | MLOps & AI Platform | Production ML pipelines, model registries, inference at scale |
| 🧠 | AI Agents | Autonomous AI workflows, multi-agent orchestration |

Followed by a "View all capabilities →" link to `/capabilities/`.

**Supporting visuals:** Icon set. Use consistent icon style across all four (not emojis in production).

**Evidence required:** None

**Related entities:** `Capability` (RAG, Computer Vision, MLOps, AI Agents)

---

### Section 5 — Industries

**Purpose:** Confirm to regulated industry buyers that AI Solutions understands their sector.

**Content summary:**

Five industry badges or pills in a horizontal row (wrapping on mobile):

Healthcare | Life Sciences | Human Resources | Manufacturing | Financial Services

Each badge links to the corresponding `/industries/{slug}/` page.

Introductory line: *"We build AI for regulated industries — with compliance, governance, and production operations built in from day one."*

**Supporting visuals:** Industry icons or a simple badge/tag component. Use `.ds-tag` or `.ds-badge` from the design system.

**Evidence required:** None — links to industry pages which hold the evidence.

**Related entities:** `Industry` (all 5)

---

### Section 6 — Social Proof / Why AI Solutions

**Purpose:** Provide the concrete credibility signals that enterprise buyers use to qualify vendors before agreeing to a call.

**Content summary:**

Four proof points in a 2×2 grid or horizontal row:

| Signal | Value | Supporting detail |
|---|---|---|
| Solutions Deployed | 10+ | Across Healthcare, HR, and Operations |
| Satisfied Clients | 100+ | Measurable ROI delivered |
| PoC Turnaround | 4–6 weeks | Working prototype, not a slide deck |
| Compliance | GDPR + HIPAA | Built in from day one |

Optional fifth signal: **99.9% uptime** (positions AI Solutions as an operations partner, not just a build shop).

**Supporting visuals:** Icon or metric display — large number + label. No need for bar charts.

**Evidence required:** These are current claims. Validate with Practice Lead before publishing. "100+ satisfied clients" and "10+ solutions deployed" should be verified as accurate and approvable for public use.

**Related entities:** None (proof points section)

**Executive Review Note:** Are all four metrics currently accurate and approved for public use? If any metric cannot be substantiated, remove or modify before launch.

---

### Section 7 — Team Signals

**Purpose:** The human credibility signal. Enterprise buyers hire people, not companies.

**Content summary:**

Brief team credential bar — not full team bios (those are on `/about/`):

*"Our team includes PhD researchers, published data scientists, and senior AI engineers — united by a single mission: building AI that ships."*

Optional: 2–3 abbreviated team member credentials (photo + name + title + key credential) linking to `/about/`.

**Supporting visuals:** Team photos (already exist in `images/team/`).

**Evidence required:** Team credentials (current content in `/about/`).

**Related entities:** `Team Member`

---

### Section 8 — Bottom CTA

**Purpose:** Convert any visitor who has read this far. This is the last call before they leave.

**Content summary:**

```
Ready to Build AI That Works?

Have a use case, a problem, or just a question?
We respond within 1 business day.

[ Schedule a Discovery Call ]    [ See Case Studies → ]
```

Primary CTA links to `/contact/`. Secondary CTA links to `/case-studies/` (placeholder if no case studies are live) or `/solutions/` as fallback.

**Supporting visuals:** Minimal — this section is conversion-focused. Clean, no distractions.

**Evidence required:** None

**Related entities:** None

---

## Executive Review Notes

**ER-H01:** "We Build AI That Ships" — does this headline resonate with the executive buyer AI Solutions is targeting? Does it accurately represent the team's positioning? Alternative headline options are listed above.

**ER-H02:** The 85% statistic is third-party sourced (Forbes, 2024). Is this still the preferred opening claim, or should we lead with a proprietary metric (client count, deployment count)?

**ER-H03:** "100+ satisfied clients" — Is this metric accurate and approved for public use? Who owns verification?

**ER-H04:** "AI Delivery OS" appears as a team signal / proof point on the home page. The product strategy positions it as an internal engineering accelerator, not a primary product. Does the leadership team agree with this framing for the home page?

**ER-H05:** Should the home page include a video or animated element (e.g., a 60-second "who we are" video)? Or is text + static images appropriate for the MVP?

**ER-H06:** Social proof metrics: are the numbers (10+, 100+, 4-6 weeks, 99.9%) all approved for public use as of the launch date?

---

## Future Enhancements

Explicitly out of scope for SF-SLICE-088 MVP:

- Video hero or animated background
- Live client logo wall (requires client permission)
- Interactive capability explorer
- Dynamic case study carousel
- Chat widget / TalentBot integration for lead capture
- A/B tested headline variants
- Personalization by industry or persona (requires JS framework)
- Animated proof point counters
- Newsletter signup
