# Publications Blueprint

**Page:** Publications  
**URL:** `/publications/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-088 (light update) / SF-SLICE-091 (full content expansion)  
**Status:** BLUEPRINT — Light update in MVP; full expansion in Phase 2  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/content_model.md`

**Current state:** Live. 1 publication live (`2025-multiclass-evaluation-vision-transformers.md`). Page renders using the existing `publications/` Hugo content type and custom template.

---

## Page Purpose

Establish AI Solutions' research credentials. The Publications page is the technical credibility anchor — the evidence that this team does research-grade work, not just implementation.

For the VP Engineering and senior AI engineer personas, this is the page that determines whether AI Solutions is "serious" or "just another consulting firm."

---

## Target Audience

**Primary:** Senior AI engineers and data scientists evaluating technical depth (Persona 2). They will check the publications list before recommending AI Solutions.

**Secondary:** Executive buyers who want to see that the team publishes and contributes to the field.

**Tertiary:** Academic researchers and conference organizers who may discover AI Solutions through a publication citation.

---

## Business Objective

Build and maintain technical credibility. Secondary: generate inbound discovery from the AI research community through publication citations and academic search engines.

---

## Hero

**Headline:** "Publications & Research"  
**Subheadline:** "Technical papers, research findings, and engineering insights from the AI Solutions team."  
**Primary CTA:** "Talk to Our Research Team" → `/contact/?interest=research`  
**Secondary CTA:** None

---

## Key Messages

- AI Solutions publishes peer-reviewed and technical research — not just blog posts
- The research feeds directly into client delivery (not separate from it)
- Publications span computer vision, NLP, LLMs, and AI governance
- External validation: ORCID, Google Scholar, Scopus profiles for key researchers

---

## Current Publication Inventory

| Title | Authors | Date | Type | URL |
|---|---|---|---|---|
| Multiclass Evaluation of Vision Transformers for Aerial Image Classification | Dr. Miguel López et al. | 2025 | Research Paper | `/publications/2025-multiclass-evaluation-vision-transformers/` |

**Gap:** 1 publication is insufficient to establish a publications brand. See SF-SLICE-091 for content plan.

---

## Sections

### Section 1 — Filter Bar

**Purpose:** Let visitors filter by capability area or publication type.

**Filter options:**

| Filter | Options |
|---|---|
| Type | All | Research Paper | White Paper | Technical Article | Conference Talk |
| Capability | All | Computer Vision | LLM & GenAI | MLOps | Responsible AI | Data Engineering |
| Year | All | 2025 | 2024 | 2023 |

---

### Section 2 — Publications Grid

**Purpose:** Display all publications in a scannable, citable format.

**Current template (`.pub-card`):** Already implemented and tokenized. Retains current design.

**Required fields per publication card:**
- Publication type badge
- Title (linked to detail page)
- Authors
- Venue / journal / conference (if applicable)
- Date
- Abstract / excerpt (2–3 sentences)
- External links: DOI, arXiv, PDF (where available)
- Tags: capability, industry

---

### Section 3 — Research Areas

**Purpose:** Signal the team's research focus areas to visitors scanning for domain alignment.

**Content summary:**

Six research area tags that link to filtered publication views:

| Area | Active Publications | Planned |
|---|---|---|
| Computer Vision | 1 (ViT paper) | Yes |
| LLM & Generative AI | 0 | Yes |
| MLOps & Production AI | 0 | Yes |
| Responsible AI | 0 | Yes |
| AI Agents | 0 | Yes |
| NLP & Document AI | 0 | Yes |

---

### Section 4 — Author Profiles (lightweight)

**Purpose:** Show that publications are authored by named, credentialed team members — not anonymous AI-generated content.

**Content summary:**

Brief author card for each team member with publications:
- Name + title
- ORCID (if available)
- Google Scholar (if available)
- Scopus (if available)
- Publications count

Dr. Miguel López currently has all three research identifiers. Other team members should be evaluated for research profile creation if they are planning to publish.

---

### Section 5 — Bottom CTA

"Interested in collaborating on research, or applying our findings to your use case? Get in touch."

**CTA:** "Talk to Our Research Team" → `/contact/?interest=research`

---

## Publication Content Plan (for SF-SLICE-091)

**Target: 5 publications by end of Phase 2**

| # | Proposed Topic | Type | Capability Area | Author | Status |
|---|---|---|---|---|---|
| 1 | ViT paper (existing) | Research Paper | Computer Vision | Dr. López | ✅ Live |
| 2 | RAG for pharma compliance — design patterns and evaluation | Technical Paper | LLM & GenAI | Engineering Lead | Planned |
| 3 | CRISP-ML(Q) in production — a practitioner's review | Technical Article | MLOps | Engineering Lead | Planned |
| 4 | Bias audit methodology for AI-assisted recruitment | Technical Paper | Responsible AI | Data Science team | Planned |
| 5 | AI agents for software delivery — architecture patterns | Technical Paper | AI Agents | Engineering Lead | Planned |

**Executive Review Note ER-P01:** Does the research team have a publication pipeline? Which of the planned topics above are realistic for 2025–2026?

---

## Executive Review Notes

**ER-P01:** See publication content plan above. Which topics are in progress?

**ER-P02:** Should AI Solutions create a preprint server presence (arXiv, SSRN) for technical papers before peer review? This increases discoverability.

**ER-P03:** Are there conference presentations or posters from 2024–2025 that should be added to publications as "Conference Talks"? (Events content may overlap here.)

**ER-P04:** Who is authorized to publish new items to the Publications page? Research Lead? Practice Lead?

---

## Future Enhancements

- arXiv and DOI integration (structured citation data from API)
- BibTeX export for each publication (for researchers who want to cite AI Solutions work)
- Citation count display (Google Scholar API)
- Conference proceedings archive
- Open-source code repositories linked from publications
- Publication RSS feed
- Research collaborator profiles (external university partners)
