# Site Content Review Checklist

**Document:** Executive Content Review Checklist  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Date:** 2026-06-25  
**Status:** ACTIVE — For use during executive review of all content blueprints  
**Audience:** General Manager, Practice Lead, Engineering Lead, Marketing

---

## Purpose

This checklist provides a structured review framework for evaluating every piece of website content before it is approved for implementation in SF-SLICE-088 and beyond.

Every blueprint in `docs/content/` must pass this checklist before the corresponding page is built. The checklist is also used during quarterly content audits.

---

## How to Use

1. Open the checklist for each page being reviewed
2. Mark each item as: ✅ PASS | ⚠️ NEEDS REVISION | ❌ FAIL | — NOT APPLICABLE
3. For any ⚠️ or ❌ item, document the issue and the required action in the "Notes" column
4. A page requires 100% PASS or N/A on all Critical criteria before approval
5. Major criteria allow for documented exceptions with owner approval

---

## Review Criteria

### Category 1 — Strategic Alignment

**Scope:** Does the content align with the approved product strategy (`docs/product/ai_solutions_product_strategy.md`)?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| SA-01 | Content reflects the North Star: "From AI concept to production impact — no PoC graveyard" | Critical | |
| SA-02 | AI Delivery OS is positioned as an engineering accelerator, not a primary product | Critical | Per EP-02 |
| SA-03 | Green color is not used for primary CTAs or brand accents | Critical | Per EP-04 / D-02 |
| SA-04 | All capability claims match the approved capability taxonomy | Major | |
| SA-05 | Solution names match canonical names (NeuroDocs, CV Extractor, TalentBot) | Major | |
| SA-06 | Industry targeting matches the five approved industries | Major | |
| SA-07 | Content reinforces the "production AI, not PoC" positioning | Critical | |
| SA-08 | Mission statement matches the approved version (per `ai_solutions_product_strategy.md`) | Critical | |

---

### Category 2 — Brand Consistency

**Scope:** Does the content presentation match the design system and brand guidelines?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| BC-01 | Company name used consistently: "AI Solutions at ITJ Solutions" or "AI Solutions" (not "ITJ Labs Department") | Critical | Current about page uses old name |
| BC-02 | All CTA buttons use `--color-primary` (brand blue) per D-02 | Critical | |
| BC-03 | Green used only for semantic confirmation states — never as a brand color | Critical | |
| BC-04 | Typography hierarchy follows the design system (section-title, ds-heading-*, section-subtitle) | Major | |
| BC-05 | Tone of voice is direct, evidence-based, and technically literate — not generic consulting language | Major | |
| BC-06 | No "AI transformation," "cutting-edge," "synergy," or other forbidden buzzwords | Major | |
| BC-07 | All image alt text is descriptive and meaningful | Major | |
| BC-08 | D-01 brand blue (#1a5ee6) used for primary CTA elements | Major | |

**Forbidden phrases list:**

| Phrase | Why forbidden | Replacement |
|---|---|---|
| "AI transformation" | Generic, overused | "Production AI deployment" / "AI that ships" |
| "Cutting-edge AI" | Vague, unverifiable | Name the specific capability |
| "State-of-the-art" | Requires citation or removal | Name the benchmark |
| "World-class team" | Unverifiable claim | Cite credentials |
| "We leverage AI" | Passive, meaningless | Describe what the AI does |
| "Empower your team" | Generic consulting speak | Describe the specific outcome |
| "Synergy" | Meaningless | Remove |
| "Disruptive" | Overused | Describe the actual disruption |
| "Seamless integration" | Marketing language | Describe the integration mechanism |
| "Robust AI solution" | Vague | Specify what makes it robust |
| "ITJ Labs Department" | Old name | "AI Solutions at ITJ Solutions" |

---

### Category 3 — Executive Messaging

**Scope:** Does the executive-level content communicate business value clearly without being condescending or oversimplified?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| EM-01 | Every section answers "so what?" from a business perspective | Critical | |
| EM-02 | Business outcomes are stated before technical details | Major | |
| EM-03 | The 85% AI failure-to-production stat is cited correctly (Forbes Technology Council, 2024) | Major | |
| EM-04 | Social proof metrics (100+ clients, 10+ deployed, 4-6 weeks, 99.9% uptime) are accurate and approved | Critical | |
| EM-05 | Compliance claims (GDPR, HIPAA) are accurate and approved by Engineering Lead | Critical | |
| EM-06 | Executive summary exists on every section overview page | Major | |
| EM-07 | Hero headlines are concrete, not abstract ("We Build AI That Ships" not "Transforming the Future") | Critical | |

---

### Category 4 — Technical Accuracy

**Scope:** Are all technical claims accurate, current, and approved by the Engineering Lead?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| TA-01 | Technology stack is current (no deprecated or discontinued tools listed) | Critical | |
| TA-02 | Architecture descriptions match actual production implementations | Critical | |
| TA-03 | Capability maturity levels are accurate (Production vs. Growing vs. Emerging) | Major | |
| TA-04 | Performance claims (throughput, latency, uptime) have been validated by Engineering Lead | Critical | |
| TA-05 | CRISP-ML(Q) methodology description matches actual practice | Major | |
| TA-06 | Compliance claims (HIPAA, GDPR Article 22, FDA 21 CFR Part 11) have been validated | Critical | |
| TA-07 | No capability is claimed as "Production" that is actually still in development | Critical | |
| TA-08 | All external links are current and valid | Minor | |

**Technical review owners:**

| Claim type | Required reviewer |
|---|---|
| Technology stack | Engineering Lead |
| Architecture descriptions | Engineering Lead |
| Compliance claims | Engineering Lead + Legal (if available) |
| Performance metrics | Engineering Lead |
| Capability maturity | Engineering Lead |
| Publication accuracy | Research Lead / Author |

---

### Category 5 — Evidence Available

**Scope:** Can every claim on the page be substantiated with evidence (citation, case study, metric, or documented deployment)?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| EV-01 | Every quantified claim has an identified evidence source | Critical | Per EP-01 |
| EV-02 | Third-party statistics are cited with source and date | Critical | |
| EV-03 | Client outcome claims have client approval for publication | Critical | |
| EV-04 | "100+ satisfied clients" — confirmed accurate and approvable | Critical | |
| EV-05 | "10+ AI solutions deployed in production" — confirmed accurate | Critical | |
| EV-06 | "4–6 week PoC turnaround" — confirmed as a reliable delivery commitment | Major | |
| EV-07 | "99.9% uptime" — confirmed with SLA evidence | Major | |
| EV-08 | Testimonials (if any) have documented client approval | Critical | |

**Evidence log:** Before any metric is published, it must be logged here:

| Claim | Value | Source | Approved by | Date |
|---|---|---|---|---|
| AI solutions deployed | 10+ | Practice Lead count | TBD | |
| Satisfied clients | 100+ | Practice Lead count | TBD | |
| PoC turnaround | 4–6 weeks | Historical engagements | TBD | |
| Uptime SLA | 99.9% | Production monitoring | TBD | |
| AI failure rate | 85% | Forbes Technology Council, Nov 2024 | Public source | Available |

---

### Category 6 — Customer Value

**Scope:** Does the content deliver clear, specific value to the target audience for that page?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| CV-01 | Page clearly answers the visitor's implied question (what does this team do / for whom / with what result?) | Critical | |
| CV-02 | Use cases are specific and realistic — not hypothetical or generic | Major | |
| CV-03 | Pain points addressed match real problems the target persona experiences | Major | |
| CV-04 | Content is written for the primary audience of that page (not a mix of all personas) | Major | |
| CV-05 | Technical content is calibrated for technical audiences; executive content for executive audiences | Critical | |
| CV-06 | No content exists that serves the content team rather than the visitor | Major | |

---

### Category 7 — CTA Clarity

**Scope:** Is the conversion path clear, unambiguous, and appropriately placed on every page?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| CTA-01 | Every page has exactly one primary CTA (no competing CTAs) | Critical | |
| CTA-02 | Primary CTA text is action-oriented and specific ("Request a NeuroDocs Demo" not "Learn More") | Critical | |
| CTA-03 | All CTA buttons use brand blue — no green CTAs anywhere | Critical | Per EP-04 |
| CTA-04 | Primary CTA appears at both top (hero) and bottom of every page | Major | |
| CTA-05 | CTA target URL is correct and leads to a live page | Critical | |
| CTA-06 | Contact page CTA routes to the correct form | Critical | |
| CTA-07 | Solution demo CTAs include the solution name in the URL parameter (?interest=neurodocs) | Minor | |

---

### Category 8 — Content Completeness

**Scope:** Is the content complete enough to implement? Are there gaps that would block SF-SLICE-088?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| CC-01 | All required sections per blueprint are drafted | Critical | |
| CC-02 | All [TBD] placeholders are resolved before implementation | Critical | |
| CC-03 | Image assets referenced in blueprints are available or explicitly planned | Major | |
| CC-04 | No section requires external content that hasn't been approved (client quotes, client logos) | Critical | |
| CC-05 | All "Executive Review Note" items in the blueprint are resolved | Critical | |
| CC-06 | Meta title and description are defined for each page | Major | |

---

### Category 9 — Differentiation

**Scope:** Does the content clearly distinguish AI Solutions from alternatives? Does it avoid generic consulting language that could describe any firm?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| D-01 | Content cannot be applied, word-for-word, to a competitor's website | Critical | |
| D-02 | CRISP-ML(Q) methodology is mentioned where appropriate (not just claimed without explanation) | Major | |
| D-03 | AI Delivery OS is referenced as evidence of AI engineering capability | Major | |
| D-04 | The production focus differentiator is present on home, solutions, and capabilities pages | Critical | |
| D-05 | Research and publication credentials are referenced on About and Capabilities pages | Major | |
| D-06 | Latin American center of excellence is acknowledged where relevant (About page) | Minor | |

---

### Category 10 — Readiness for Implementation

**Scope:** Is this content blueprint ready to hand off to the engineering team for SF-SLICE-088 implementation?

| ID | Criterion | Priority | Notes |
|---|---|---|---|
| RI-01 | All executive review decisions (ER-* items) are resolved | Critical | |
| RI-02 | Content is written at the correct level of specificity for template development | Major | |
| RI-03 | Image specifications are defined (dimensions, subject, format) | Minor | |
| RI-04 | Hugo content type and front-matter schema are identified for each page | Major | |
| RI-05 | URL is confirmed and matches the IA in `docs/product/information_architecture.md` | Critical | |
| RI-06 | No implementation work is blocked on external approvals (unless explicitly noted) | Major | |
| RI-07 | Blueprint has been reviewed by Practice Lead and Engineering Lead | Critical | |

---

## Page-Level Review Status

| Blueprint | ER Items | CC Status | Ready for SF-088? |
|---|---|---|---|
| `home_blueprint.md` | ER-H01 through ER-H06 | Draft | ⚠️ Pending ER resolution |
| `solutions_blueprint.md` | ER-S01 through ER-T03 | Draft | ⚠️ Pending ER resolution |
| `capabilities_blueprint.md` | ER-C01 through ER-C05 | Draft | ⚠️ Pending ER resolution |
| `industries_blueprint.md` | ER-HC01 through ER-FS02 | Draft | ⚠️ Pending ER resolution |
| `accelerators_blueprint.md` | ER-A01 through ER-A04 | Draft | ⚠️ Pending ER-A01 (IA decision) |
| `about_blueprint.md` | ER-AB01 through ER-AB06 | Draft | ⚠️ Pending Mission/Vision approval |
| `insights_blueprint.md` | ER-I01 through ER-I03 | Draft | ✅ Phase 2 — no action needed |
| `publications_blueprint.md` | ER-P01 through ER-P04 | Draft | ✅ Light update only |
| `case_studies_blueprint.md` | ER-CS01 through ER-CS04 | Draft | ⚠️ Pending ER-CS01 (meta case study) |
| `contact_blueprint.md` | ER-CO01 through ER-CO05 | Draft | ⚠️ Pending accuracy validation |

---

## Executive Review Priority Queue

The following decisions are required before SF-SLICE-088 can proceed to implementation.

| # | Decision | Owner | Blueprint | Impact if delayed |
|---|---|---|---|---|
| 1 | Approve Mission and Vision statements | General Manager | About | About page cannot be updated |
| 2 | Validate social proof metrics (100+, 10+, 4-6 weeks, 99.9%) | Practice Lead | Home, Solutions | Core claims cannot be published |
| 3 | Approve hero headline for home page | General Manager + Practice Lead | Home | Home page implementation blocked |
| 4 | Confirm GDPR/HIPAA/FDA 21 CFR Part 11 compliance claims | Engineering Lead | Solutions, Industries | Compliance claims cannot be published |
| 5 | Approve AI Delivery OS public reference (About page, Capabilities/Agents, Accelerators) | General Manager | Multiple | Proof point cannot be used |
| 6 | Confirm company name: "AI Solutions at ITJ Solutions" | General Manager | All pages | Naming inconsistency on live site |
| 7 | Resolve Accelerators IA decision: standalone page or merged into Solutions | Practice Lead | Accelerators | /accelerators/ URL cannot be confirmed |
| 8 | Approve meta case study publication | Practice Lead + Engineering Lead | Case Studies | No case study content at launch |

---

## Quarterly Content Audit Checklist

Run this checklist every quarter against the live site:

- [ ] All performance metrics (client count, deployment count, PoC timeline, uptime) are still accurate
- [ ] Technology stack section reflects current tools (remove deprecated, add new)
- [ ] Team section reflects current team (no departed members, new members added)
- [ ] Partner logos are current (check for discontinued partnerships)
- [ ] All external links are live (dead link check)
- [ ] No publication/event is listed that has been retracted or cancelled
- [ ] CTAs route to live pages (all /contact/ links functional)
- [ ] Contact email and phone number are current
- [ ] Company name is consistent across all pages
