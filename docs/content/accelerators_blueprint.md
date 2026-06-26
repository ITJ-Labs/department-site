# Accelerators Blueprint

**Page:** Accelerators  
**URL:** `/accelerators/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-089 (or merged into Solutions in SF-SLICE-088)  
**Status:** BLUEPRINT — Pending executive decision on whether this is a standalone page or merged into Solutions  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/information_architecture.md`

---

## Page Purpose

The Accelerators page explains AI Solutions' portfolio of pre-built engineering components that compress delivery timelines and reduce risk on every client engagement. It differentiates AI Solutions from consultancies that build from scratch on every project — and from SaaS vendors that sell fixed products.

The AI Delivery OS is positioned here as the most significant accelerator — an engineering capability, not a product pitch.

---

## Open Decision: Standalone Page or Merged?

**Option A — Standalone `/accelerators/` page (recommended)**  
Creates a dedicated entry point for the "how do you deliver faster than competitors?" question. Referenced from Solutions overview, Capabilities, and About. Not in primary nav — accessible from footer and from Solutions page.

**Option B — Accelerators section within `/solutions/`**  
Merges accelerators into the Solutions overview as a subsection. Simpler IA but buries the differentiator.

**Recommendation:** Standalone page. The accelerator portfolio is a key differentiator that deserves its own URL, especially for the partner persona who wants to evaluate AI Solutions' reusable assets.

**Executive Review Decision Required:** See ER-A01 below.

---

## Target Audience

**Primary:** Technology partners and systems integrators (Persona 6) evaluating AI Solutions as a co-delivery partner. They want to know what they can reuse.

**Secondary:** Executive decision-makers asking "why would AI Solutions be faster or better than building our own AI team?" The accelerator portfolio is part of the answer.

---

## Business Objective

Establish that AI Solutions' delivery speed is structural — the result of reusable engineering assets — not a marketing claim. Support the 4–6 week PoC promise with evidence of what makes it possible.

---

## Hero

**Headline:** "Engineering Accelerators — Speed Without Shortcuts"  
**Subheadline:** "AI Solutions maintains a portfolio of pre-built AI engineering assets that compress delivery timelines — while maintaining the rigorous standards that enterprise production AI requires."  
**Primary CTA:** "Explore Partnership Options" → `/contact/?interest=partnership`  
**Secondary CTA:** "See Our Solutions" → `/solutions/`

---

## Key Messages

**KM-A01:** AI Solutions does not reinvent from scratch on every engagement. Our accelerators — NeuroDocs, CV Extractor, TalentBot, and the AI Delivery OS — reduce delivery risk and compress timelines.

**KM-A02:** Accelerators are starting points, not rigid products. Every accelerator is customized and extended for the client's specific requirements.

**KM-A03:** The AI Delivery OS is our most powerful accelerator — an autonomous engineering platform that manages AI development workflows. It is not a product we sell; it is the engine behind our delivery capability.

**KM-A04:** All accelerators are built on open-source foundations with enterprise-grade MLOps and compliance layers.

---

## Sections

### Section 1 — What Makes an Accelerator

**Purpose:** Define the term before presenting the portfolio. Distinguish accelerators from SaaS products and from raw frameworks.

**Content summary:**

> "An accelerator is not a SaaS product. It is not a framework. It is a production-grade engineering system that AI Solutions has already built, validated, and deployed — and that we adapt for each client engagement."

Three properties of every AI Solutions accelerator:
1. **Production-grade** — tested in deployment, not just in development
2. **Customizable** — designed to be extended and modified, not locked
3. **Compliance-aware** — built with GDPR/HIPAA considerations from the start

---

### Section 2 — Accelerator Portfolio

**Purpose:** Present the four accelerators with clear role, deployment status, and value proposition.

#### AI Delivery OS (Internal Engineering Accelerator)

**Role:** The platform that manages AI Solutions' own development and delivery workflows. Not a client product.

**What it does:**
- Orchestrates AI development lifecycle: mission definition → code generation → testing → review → deployment
- Manages validation gates, permission policies, and commit workflows autonomously
- Powers the autonomous maintenance of this website (AI Solutions' digital platform)
- Enables AI Solutions to operate with delivery speed that would require a larger team without it

**Why it matters to clients:**
When AI Solutions engages with a client, the AI Delivery OS is running in the background — managing the delivery workflow, running validation, and enabling the engineering team to focus on the hardest problems. This is the structural reason AI Solutions can deliver a working PoC in 4–6 weeks.

**Positioning note (important):** The AI Delivery OS is not offered as a product to clients at this time. It is AI Solutions' internal competitive advantage. Mentioning it publicly is appropriate as a differentiator; selling it is not in current scope. Do not create pricing or product pages for it.

**Status:** Internal — production  
**Public reference:** Yes — as evidence of AI engineering capability

---

#### NeuroDocs

**Role:** AI-powered document management for Life Sciences, Healthcare, and regulated industries.

**What it is:** A complete RAG-powered document intelligence system — from document ingestion and embedding to intelligent Q&A and structured output.

**Client value as accelerator:** Instead of designing and building a RAG document system from scratch (typically 3–4 months), AI Solutions starts from NeuroDocs and adapts it to the client's document types, compliance requirements, and output format. PoC in 6 weeks instead of 6 months.

**Customizable elements:**
- Target document types (regulatory filings, medical records, contracts, research papers)
- LLM fine-tuning on client-specific vocabulary
- Output format and downstream integration
- Compliance layer for specific regulatory frameworks

**Status:** Production  
**Detail page:** `/solutions/neurodocs/`

---

#### CV Extractor

**Role:** High-throughput AI resume parsing for HR and talent acquisition automation.

**What it is:** An event-driven document intelligence pipeline — Pub/Sub ingestion, NLP extraction, structured JSON/CSV output — designed for enterprise-scale HR operations.

**Client value as accelerator:** The Pub/Sub architecture, NLP extraction pipeline, and output schema are pre-built. AI Solutions adapts the extraction schema and integration connectors to the client's specific data model and ATS. 2–3 week integration instead of a 4-month build.

**Customizable elements:**
- Extraction schema (which fields to extract, how to normalize)
- ATS integration connectors
- Throughput configuration
- GDPR consent management layer

**Status:** Production  
**Detail page:** `/solutions/cv-extractor/`

---

#### TalentBot

**Role:** Conversational AI assistant for recruitment automation and candidate engagement.

**What it is:** An LLM-powered conversational agent with configurable screening criteria, interview prep flows, assessment delivery, and human handoff capability.

**Client value as accelerator:** The conversational AI infrastructure, recruiter handoff protocol, and compliance logging are pre-built. AI Solutions configures the screening criteria, job-specific question flows, and integration with the client's ATS or CRM. 2–3 week configuration instead of building a chatbot platform.

**Customizable elements:**
- Screening questions and scoring criteria
- Company-specific FAQ knowledge base
- Integration with ATS, CRM, or HR platform
- Compliance documentation for GDPR Article 22

**Status:** Production  
**Detail page:** `/solutions/talentbot/`

---

### Section 3 — How Accelerators Fit an Engagement

**Purpose:** Show the relationship between accelerators and custom AI work.

**Content summary:**

```
Standard Engagement Flow:

Assessment → Select or design AI approach
              ↓
          AI Solutions accelerator available?
          ├── YES → Adapt accelerator (weeks, not months)
          └── NO  → Design from first principles
              ↓
          PoC (4–6 weeks)
              ↓
          Production (3–4 months)
              ↓
          Operations
```

> "Accelerators reduce the risk that a PoC will fail because the foundation is unproven. When we start from NeuroDocs or CV Extractor, we know the architecture works — we are solving your specific problem, not a generic engineering problem."

---

### Section 4 — For Technology Partners

**Purpose:** Specific value proposition for the partner persona.

**Content summary:**

> "Technology partners and systems integrators who partner with AI Solutions gain access to the accelerator portfolio for co-delivery engagements. If you are delivering an HR transformation project, CV Extractor accelerates your client's AI component. If you are implementing a regulatory document management system for pharma, NeuroDocs is your AI foundation."

**CTA:** "Explore Partnership Options" → `/contact/?interest=partnership`

---

## Executive Review Notes

**ER-A01:** Should `/accelerators/` be a standalone page or a section within `/solutions/`? This is an IA decision for the Practice Lead and General Manager.

**ER-A02:** The AI Delivery OS section describes it as "not offered as a product to clients at this time." Is this the correct positioning? Does the leadership team want to explicitly close or open the door to client licensing in the near future?

**ER-A03:** "3–4 months for production deployment" — is this accurate for all three solutions? Validate with Engineering Lead.

**ER-A04:** Partner access to accelerators — is there currently a defined partnership model? If not, the partner section should use softer language ("Explore partnership options") rather than implying a formal program.

---

## Future Enhancements

- Accelerator comparison matrix (NeuroDocs vs. CV Extractor vs. TalentBot — which to choose)
- Accelerator demo requests specific to each (currently all route to /contact/)
- Open-source component releases under the accelerator portfolio
- AI Delivery OS client-facing product (if leadership decides to commercialize)
- Technical white papers for each accelerator
- Partner program page (when partnership model is formalized)
