# Case Studies Blueprint

**Page:** Case Studies  
**URL:** `/case-studies/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-088 (placeholder) / SF-SLICE-090 (first case study)  
**Status:** BLUEPRINT — Placeholder at launch; content requires client approval  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/content_model.md`

---

## Page Purpose

House AI Solutions' most valuable trust-building content: documented client outcomes with real metrics, real methodologies, and real evidence. Case studies are Priority 1 content per the product strategy (EP-01: evidence over assertion).

At launch, this page will be a placeholder with intent signaling. It becomes a primary nav item when 3+ case studies are live.

---

## Target Audience

**Primary:** Executive decision-makers in mid-to-late evaluation stages who need to see proven outcomes before committing to a discovery call.

**Secondary:** Technical evaluators who want to understand methodology through a real project.

---

## Business Objective

Convert the highest-intent visitors — those who have read about solutions and capabilities and now need the final proof. A well-written case study is the single most effective conversion asset for enterprise B2B sales.

---

## Hero

**Phase 1 (placeholder):**

**Headline:** "Client Outcomes"  
**Subheadline:** "We measure our success by AI systems running in production — not by prototypes delivered. Case studies are published as client approvals are secured."  
**Primary CTA:** "Talk to Our Team About Your Use Case" → `/contact/`  
**Secondary CTA:** "See Our Solutions" → `/solutions/`

**Phase 2 (when content exists):**

**Headline:** "Client Outcomes — AI That Ships"  
**Subheadline:** "Documented outcomes from AI Solutions deployments — with methodology, metrics, and the engineering decisions that made them possible."  
**Primary CTA:** "See What We Can Build For You" → `/contact/`

---

## Key Messages

- AI Solutions measures success by production deployments, not by PoC completions
- Every case study shows the full journey: problem → solution → outcome → operations
- Compliance with client confidentiality — client names are optional, outcomes are documented

---

## Sections

### Section 1 — Placeholder Page (Phase 1)

**Purpose:** Acknowledge the section exists and set expectations, rather than showing a sparse or empty page.

**Content summary:**

> "AI Solutions has deployed 10+ AI systems in production. Our case studies are published as we complete client review and approval processes. In the meantime, the fastest way to understand our delivery approach is to speak with our team."

**CTA:** "Schedule a Discovery Call" → `/contact/`

**Supporting content:** One teaser card per domain we can speak to without client approval:

| Domain | Teaser |
|---|---|
| Life Sciences | "Regulatory document processing — reduced manual review time for a pharma compliance team" |
| HR & Talent | "Enterprise resume parsing — processing [N] CVs per week for an enterprise HR platform" |
| Computer Vision | "Manufacturing quality control — edge AI deployed on NVIDIA Jetson at a production facility" |

Note: these teasers are non-specific. They signal that work has been done without revealing client details. Engineering Lead to confirm these are accurate before publishing.

---

### Section 2 — Full Case Study Cards (Phase 2)

**Purpose:** Display all published case studies in a filterable grid.

**Filter options:**
- By industry
- By capability
- By solution used

**Case study card fields:**
- Industry badge
- Challenge summary (1 line)
- Solution used
- Outcome headline (quantified if possible)
- Capability tags
- "Read the case study →"

---

## Case Study Template

The following template defines the structure for every future case study. This is the canonical format — all case study content must conform to it.

### Front-Matter Schema

```yaml
---
title: "{Industry} — {AI Capability}: {Outcome}"
client_type: "{Industry} | {Company size}"
date: YYYY-MM-DD
status: "live-in-production"  # or "poc-complete"
challenge: "1-sentence challenge summary"
capabilities:
  - retrieval-augmented-generation
  - document-intelligence
industries:
  - life-sciences
technologies:
  - langchain
  - huggingface
  - docker
featured: false
draft: false
client_approved: true  # REQUIRED before publishing
---
```

---

### Content Structure

#### Section 1 — The Challenge

**Format:** 2–3 paragraphs.

**Must include:**
- Client context (industry, size, department — anonymized if required)
- The specific problem being solved
- Why the problem was painful (quantified if possible)
- What the client had tried before (if relevant)
- Why off-the-shelf solutions failed or didn't fit

**Example opening:**
> "A pharmaceutical company managing global regulatory submissions needed to answer compliance questions across a corpus of 15,000+ documents — spanning clinical trial reports, regulatory filings, and internal SOPs. Manual search was taking analysts 4–6 hours per query."

---

#### Section 2 — The Solution

**Format:** Technical narrative with architecture callout.

**Must include:**
- The AI approach selected (and why, not just what)
- Key technical decisions and their rationale
- How CRISP-ML(Q) structured the engagement
- Architecture overview (can use a simple diagram)
- What was customized vs. what came from the accelerator

**Key principle:** This section demonstrates methodology — it should read like an engineering decision log, not a marketing description. Technical buyers will read it critically.

---

#### Section 3 — The Outcome

**Format:** Metrics-first, narrative second.

**Required metric structure:**

| Metric | Before | After | Change |
|---|---|---|---|
| [Metric 1] | [Baseline] | [Result] | [% or absolute change] |
| [Metric 2] | [Baseline] | [Result] | [% or absolute change] |

**Must include:**
- At least one quantified business outcome
- Deployment status (PoC / Production / Operations)
- Timeline (PoC duration, production deployment time)
- Uptime / reliability data (if in operations phase)

**If quantified metrics are not available:** Provide qualitative outcome description and note "quantitative metrics pending production monitoring data."

---

#### Section 4 — The Journey

**Format:** Timeline or narrative.

**Must include:**
- Engagement kickoff to PoC: duration and key milestones
- PoC to production: duration and key decisions
- Operations phase: current status

---

#### Section 5 — Client Quote (Optional)

If client approves a quote:

```
"[Quote]"
— [Role], [Company type] (e.g., "Director of Regulatory Affairs, Global Pharma Company")
```

Client names are not required. Role and company type are sufficient.

---

#### Section 6 — Related

- Related solutions
- Related capabilities
- Related industries
- Other case studies (when available)
- "Build something like this" CTA

---

## Priority Case Study Pipeline

**Target: 5 case studies within 12 months of launch**

| # | Industry | Solution | Client Status | Expected |
|---|---|---|---|---|
| CS-01 | Life Sciences | NeuroDocs | To be initiated | Q3 2026 |
| CS-02 | HR & Talent | CV Extractor | To be initiated | Q3 2026 |
| CS-03 | HR & Talent | TalentBot | To be initiated | Q4 2026 |
| CS-04 | Manufacturing | Computer Vision | To be initiated | Q4 2026 |
| CS-05 | Healthcare | NLP/Document AI | To be initiated | Q1 2027 |

Note: "Meta case study" (AI Delivery OS maintaining this platform) is a sixth option that requires no client approval and can be published at any time. **Highly recommended as the first published case study.**

---

## Executive Review Notes

**ER-CS01:** Is the "AI Delivery OS meta case study" (the platform maintaining itself) approved for publication? This would be the first case study and requires no client approval.

**ER-CS02:** Are there existing client engagements from 2024–2025 where AI Solutions can request retrospective case study approval?

**ER-CS03:** The placeholder teasers reference specific deployment contexts. Engineering Lead must validate these are accurate.

**ER-CS04:** Should case studies be gated (require email) or public? Public is recommended for discoverability; gated may generate leads but reduces SEO value.

---

## Future Enhancements

- Gated case study PDF versions (require email for PDF download, public for web)
- Video case studies (3–5 minute "how we built it" format)
- Client logo wall on overview page (requires client permission)
- Case study ROI calculator (interactive tool based on case study metrics)
- Industry-specific case study collections
