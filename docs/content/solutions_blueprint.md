# Solutions Blueprint

**Pages:** Solutions Overview + 3 Solution Detail Pages  
**URLs:** `/solutions/`, `/solutions/neurodocs/`, `/solutions/cv-extractor/`, `/solutions/talentbot/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-088  
**Status:** BLUEPRINT — Pending executive review  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/content_model.md`, `docs/product/information_architecture.md`

**Migration note:** Current content lives at `/services/`. Hugo `aliases` will redirect `/services/*` → `/solutions/*` on implementation.

---

## Solutions Overview (`/solutions/`)

### Page Purpose

Surface all AI Solutions solutions to buyers who are evaluating specific AI applications. Convert browsing to commitment (demo request or contact).

### Target Audience

**Primary:** Enterprise decision-makers (Persona 1) evaluating AI vendor portfolio breadth.  
**Secondary:** Department heads (Persona 3 — HR, Persona 4 — Life Sciences) looking for a specific application.

### Business Objective

Drive visitors to individual solution detail pages, then convert to demo requests via `/contact/`.

### Hero

**Headline:** "What We've Built"  
**Subheadline:** "Three production AI systems — ready to deploy or adapt to your enterprise requirements."  
**Primary CTA:** "Tell Us About Your Use Case" → `/contact/`  
**Secondary CTA:** None (the solution cards serve as the secondary navigation)

### Key Messages

- AI Solutions builds deployable systems, not slide decks
- Each solution is production-grade: 99.9% uptime, GDPR/HIPAA compliant
- Custom AI engagements available when standard solutions don't fit
- PoC-to-production in 4–6 weeks

### Sections

#### Section 1 — Overview Header

**Purpose:** Frame what the solutions section is about.

**Content summary:**
Brief paragraph (3-4 sentences) that explains:
- These are not SaaS products — they are engineering starting points
- Each solution can be deployed as-is, customized, or serve as the foundation for a bespoke build
- GDPR and HIPAA compliance across all solutions

**Evidence required:** None

---

#### Section 2 — Solution Cards

**Purpose:** Primary decision surface. Buyer identifies which solution matches their need.

**Content summary:** Four cards in responsive grid.

| Solution | Tagline | Industry | Key feature | Status |
|---|---|---|---|---|
| NeuroDocs | AI-powered document management for regulated industries | Life Sciences, Healthcare | RAG + LLM fine-tuning for compliance documents | Live |
| CV Extractor | High-throughput AI resume parsing at enterprise scale | HR & Talent | Pub/Sub pipelines, JSON/CSV output, GDPR | Live |
| TalentBot | Intelligent AI assistant for recruitment and candidate screening | HR & Talent | Conversational AI, automated screening, interview prep | Live |
| Custom AI | Bespoke AI engineering from first principles | All industries | When off-the-shelf won't deliver your specific requirements | Inquire |

Each card: title, tagline, industry badge, key feature, status badge (`ds-badge-primary` = Live, `ds-badge-neutral` = Inquire), CTA button.

**Supporting visuals:** Solution icon per card. Consistent icon style. Industry badge using `.ds-tag`.

**Evidence required:** None — these are live products.

**Related entities:** `Solution` (all), `Industry`

---

#### Section 3 — Engagement Model

**Purpose:** Remove the "how does this work?" objection. Show what an engagement looks like.

**Content summary:**

Three-step timeline:

```
1. PoC (4–6 weeks)
   We validate your use case with a working AI prototype.
   Defined scope. Fixed timeline. Measurable success criteria.

2. Production (3–4 months)
   We engineer the PoC into a production system.
   MLOps pipeline. Monitoring. Compliance documentation.

3. Operations (ongoing)
   We maintain, monitor, and improve the system.
   99.9% uptime SLA. Drift detection. Model updates.
```

**Supporting visuals:** Horizontal timeline with three labeled steps. Clean, minimal.

**Evidence required:** Timeline claims should be validated by Engineering Lead before publishing.

**Related entities:** None (engagement model is cross-cutting)

---

#### Section 4 — Compliance Block

**Purpose:** Serve the compliance objection for regulated industry buyers.

**Content summary:**

```
GDPR Compliant | HIPAA Ready | SOC 2 Aligned

Compliance is not a feature we add at the end.
It is engineered into every system we build — from data handling
to model explainability to audit trail design.
```

**Supporting visuals:** Compliance badges (GDPR, HIPAA icons). Shield icon for visual emphasis.

**Evidence required:** Engineering Lead must confirm "SOC 2 Aligned" claim is accurate before publishing. If not confirmed, remove it.

**Related entities:** `Capability` (Responsible AI)

---

#### Section 5 — Bottom CTA

**Content summary:** "Don't see exactly what you need? We engineer custom AI systems from first principles. Tell us about your use case."

**CTA:** "Start a Conversation" → `/contact/`

---

### Executive Review Notes — Solutions Overview

**ER-S01:** Is "Custom AI" the right label for the fourth card, or should it be a specific named solution or service category?

**ER-S02:** The engagement model shows "3–4 months for production" — is this accurate across all three current solutions? Should this vary by solution?

**ER-S03:** Is "SOC 2 Aligned" accurate? Can it be claimed publicly?

---

## NeuroDocs Detail Page (`/solutions/neurodocs/`)

### Page Purpose

Convert a Life Sciences or Healthcare buyer who has identified document AI as a need into a demo request or discovery call.

### Target Audience

**Primary:** Directors of Regulatory Affairs, Document Management leads, Clinical Operations (Persona 4).  
**Secondary:** IT Directors implementing compliance automation (Persona 2 adjacent).

### Business Objective

Demo request or contact form submission with NeuroDocs as the stated interest.

### Hero

**Headline:** "NeuroDocs — AI for Document-Driven Industries"  
**Subheadline:** "Intelligent document management powered by Retrieval-Augmented Generation and customizable LLMs — built for Life Sciences, Healthcare, and regulated enterprises."  
**Primary CTA:** "Request a NeuroDocs Demo" → `/contact/?interest=neurodocs`  
**Secondary CTA:** "See How It Works" → (scroll to architecture section)

### Key Messages

- Purpose-built for pharma compliance and medical records — not a generic document tool
- RAG architecture enables question-answering over proprietary document libraries without LLM hallucination risk
- HIPAA-ready data handling from day one
- 4–6 week PoC — see your own documents processed before committing to full deployment

### Sections

#### Section 1 — Problem Statement

**Content summary:**
> "Managing compliance documentation at scale is a manual, error-prone process that slows regulatory submissions and increases audit risk. Pharma teams spend thousands of hours reviewing the same documents across multiple filings."

Pain points:
- Manual review of hundreds of regulatory documents per filing cycle
- Inconsistent tagging and classification across document management systems
- High risk of missing critical compliance data buried in document archives
- No intelligent search — keyword search returns false positives, misses context

**Evidence required:** These are known industry pain points. Validate language with a Life Sciences client or domain expert before publishing.

---

#### Section 2 — Solution Architecture

**Content summary:**

What NeuroDocs does:

1. **Document Ingestion** — Ingest PDFs, Word, Excel, and structured regulatory files from any source
2. **Embedding and Indexing** — Convert documents into semantic embeddings stored in a vector database
3. **Intelligent Retrieval (RAG)** — Answer compliance questions by retrieving relevant document sections with full citation
4. **Customizable LLM** — Fine-tune the language model on your specific document vocabulary and regulatory context
5. **Structured Output** — Generate compliance reports, audit trails, and document summaries in required formats

**Supporting visuals:** Simple architecture diagram: Documents → Ingestion → Vector DB → LLM → Output. Clean, technical but not overwhelming.

**Evidence required:** Engineering review of architecture description for accuracy.

---

#### Section 3 — Use Cases

**Content summary:**

| Use Case | Description |
|---|---|
| Pharma Compliance Reports | Automated compilation of regulatory filing documentation from source documents |
| Medical Records Tagging | AI-powered classification and tagging of clinical records for EHR integration |
| Regulatory Submission Support | Intelligent review of submission packages against regulatory checklists |
| Audit Trail Generation | Automated documentation of document review, approval, and modification history |

---

#### Section 4 — Technology

**Content summary:**

| Layer | Technology |
|---|---|
| LLM Framework | Hugging Face Transformers, LangChain, Ollama |
| Vector Storage | [Technology — TBD, Engineering Lead to specify] |
| Deployment | Docker, GCP |
| Compliance | HIPAA-aligned data handling, audit logging |

**Executive Review Note:** Engineering Lead should review and fill in the specific vector storage technology and any production-specific components before publishing.

---

#### Section 5 — Deployment Timeline

**Content summary:**

```
Week 1–2: Discovery and data assessment
Week 3–4: PoC build and initial document ingestion
Week 5–6: PoC validation with your team
Month 2–4: Production engineering and compliance documentation
Ongoing: Operations, model updates, performance monitoring
```

---

#### Section 6 — Related

- Related industry: [Life Sciences](/industries/life-sciences/), [Healthcare](/industries/healthcare/)
- Related capabilities: [Retrieval-Augmented Generation](/capabilities/retrieval-augmented-generation/), [Document Intelligence](/capabilities/document-intelligence/)
- Related case study: [placeholder until available]

#### Section 7 — Bottom CTA

"Ready to see NeuroDocs process your documents? We'll build a working PoC in 6 weeks."

**CTA:** "Request a NeuroDocs Demo" → `/contact/?interest=neurodocs`

### Executive Review Notes — NeuroDocs

**ER-N01:** Is vector storage technology confirmed for public disclosure? Which specific technology is used in NeuroDocs production?

**ER-N02:** Are the use case descriptions (pharma compliance reports, medical records tagging) accurate to current NeuroDocs capabilities?

**ER-N03:** Is there a client (even anonymized) that can be referenced as a NeuroDocs deployment?

---

## CV Extractor Detail Page (`/solutions/cv-extractor/`)

### Page Purpose

Convert an HR/Talent Operations buyer with a high-volume resume processing need into a demo request.

### Target Audience

**Primary:** HR Directors, Talent Operations leads, HR Tech managers (Persona 3).  
**Secondary:** Engineering teams integrating resume parsing into ATS platforms.

### Business Objective

Demo request or contact with CV Extractor as the stated interest.

### Hero

**Headline:** "CV Extractor — AI Resume Parsing at Enterprise Scale"  
**Subheadline:** "High-throughput AI resume parsing that transforms bulk candidate submissions into structured data — ready for your ATS, analytics, and hiring workflow."  
**Primary CTA:** "Request a CV Extractor Demo" → `/contact/?interest=cv-extractor`  
**Secondary CTA:** "See the Data Model" → (scroll to output section)

### Key Messages

- Processes hundreds of resumes per hour through event-driven Pub/Sub pipelines
- Outputs structured JSON and CSV — native integration with any ATS
- GDPR-compliant data handling for candidate personal data
- 2–3 week integration timeline

### Sections

#### Section 1 — Problem Statement

**Content summary:**

> "Recruiting teams spend 23 hours on average manually reviewing resumes per open position. At enterprise scale, this is unsustainable — and still produces inconsistent results."

Pain points:
- Manual resume review doesn't scale past 50 applicants per role
- Keyword-based ATS filtering misses qualified candidates and flags unqualified ones
- No structured data from resumes makes analytics and reporting impossible
- GDPR compliance requires careful handling of candidate personal data

---

#### Section 2 — How CV Extractor Works

**Content summary:**

```
1. Ingestion — Resumes submitted via email, upload portal, or direct API
2. Processing — Pub/Sub event queue handles burst traffic at scale
3. Extraction — AI models extract: Name, Contact, Education, Experience, Skills, Certifications
4. Normalization — Skills and job titles normalized against standard taxonomies
5. Output — Structured JSON and CSV delivered to ATS or data warehouse
```

**Supporting visuals:** Pipeline diagram: Resumes → Queue → AI Extraction → Structured Output → ATS.

---

#### Section 3 — Output Data Model

**Content summary:**

Sample extracted fields:

| Field | Example |
|---|---|
| candidate_name | "Jane Doe" |
| email | jane.doe@email.com |
| education | [{degree: "M.S. Computer Science", institution: "MIT", year: 2022}] |
| experience | [{title: "Senior ML Engineer", company: "Acme Corp", years: 3}] |
| skills | ["Python", "PyTorch", "MLOps", "Kubernetes"] |
| certifications | ["AWS Certified ML Specialist"] |

Output format: JSON (primary), CSV (secondary). Schema configurable per client.

---

#### Section 4 — Scale and Performance

**Content summary:**

- Processes up to [N] resumes per hour (Engineering Lead to specify)
- Pub/Sub architecture handles burst traffic without queue overflow
- Configurable throughput for high-volume hiring campaigns
- SLA: [uptime target — Engineering Lead to specify]

**Executive Review Note:** Engineering Lead must fill in specific throughput numbers and SLA before publishing.

---

#### Section 5 — Technology

| Layer | Technology |
|---|---|
| Event Queue | Google Pub/Sub |
| AI Models | NLP extraction pipeline (Hugging Face, custom) |
| Output | JSON, CSV |
| Deployment | Docker, GCP |
| Compliance | GDPR data handling, candidate consent management |

---

#### Section 6 — Related

- Related industry: [Human Resources](/industries/human-resources/)
- Related capabilities: [Document Intelligence](/capabilities/document-intelligence/), [ML Model Development](/capabilities/ml-model-development/)

#### Section 7 — Bottom CTA

"See how CV Extractor integrates with your ATS. We'll build a working integration in 3 weeks."

**CTA:** "Request a CV Extractor Demo" → `/contact/?interest=cv-extractor`

### Executive Review Notes — CV Extractor

**ER-CV01:** What is the current throughput benchmark for CV Extractor? (resumes/hour)

**ER-CV02:** Is there a specific ATS integration that can be named as a reference (e.g., "integrates with Workday, Greenhouse, Lever")?

**ER-CV03:** "23 hours reviewing resumes" — is this claim citable? Source needed before publishing.

---

## TalentBot Detail Page (`/solutions/talentbot/`)

### Page Purpose

Convert an HR buyer with a candidate screening or recruitment automation need into a demo request.

### Target Audience

**Primary:** HR Directors, Recruiters, Talent Acquisition leads (Persona 3).  
**Secondary:** Product Managers building AI-powered HR products (Persona 5).

### Business Objective

Demo request or contact with TalentBot as the stated interest.

### Hero

**Headline:** "TalentBot — AI for Smarter Recruiting"  
**Subheadline:** "An intelligent HR-tech assistant that automates candidate screening, interview preparation, and pre-hiring assessments — so your team focuses on the humans who matter."  
**Primary CTA:** "Request a TalentBot Demo" → `/contact/?interest=talentbot`  
**Secondary CTA:** "See a Conversation" → (scroll to capabilities section)

### Key Messages

- Automates first-round candidate screening — conversational, not robotic
- Reduces recruiter time-on-phone by [X]% (Engineering Lead to specify or remove)
- Configurable for any role, industry, and assessment framework
- GDPR-compliant candidate interaction logging

### Sections

#### Section 1 — Problem Statement

> "Recruiting teams spend the majority of their time on repetitive first-round interactions — screening questions that any AI should be able to handle. TalentBot handles them, so your recruiters handle the conversations that require human judgment."

---

#### Section 2 — Capabilities

**Content summary:**

| Capability | Description |
|---|---|
| Candidate Screening | Automated initial screening against job requirements via chat |
| Interview Preparation | AI-guided interview prep for candidates (competency questions, company background) |
| Pre-Hiring Assessment | Structured assessment delivery and scoring |
| FAQ Handling | Automated responses to candidate questions about the role, company, and process |
| Recruiter Handoff | Qualified candidates transferred to human recruiter with conversation summary |

---

#### Section 3 — Conversation Design

**Content summary:**

Sample interaction flow:

```
TalentBot: "Hi, I'm TalentBot, your first step in the application process 
            for the Senior Data Engineer role. May I ask you a few questions?"

Candidate: "Sure."

TalentBot: "How many years of experience do you have with distributed 
            data systems like Kafka or Spark?"

[...continues through 5–7 structured screening questions...]

TalentBot: "Thank you, [Name]. Based on your responses, I'm passing your 
            application to our recruiting team. You'll hear from us within 
            2 business days."
```

---

#### Section 4 — Technology

| Layer | Technology |
|---|---|
| Conversational AI | LangChain, fine-tuned LLM |
| Integration | REST API, webhook support |
| Deployment | Docker, cloud-hosted |
| Compliance | GDPR data handling, consent management, PII masking |

---

#### Section 5 — Related

- Related industry: [Human Resources](/industries/human-resources/)
- Related capabilities: [AI Agents & Automation](/capabilities/ai-agents-and-automation/), [LLM Engineering](/capabilities/llm-engineering/)

#### Section 6 — Bottom CTA

"See TalentBot screen your next role. We'll configure a working bot for your job description in 2 weeks."

**CTA:** "Request a TalentBot Demo" → `/contact/?interest=talentbot`

### Executive Review Notes — TalentBot

**ER-T01:** What is the measurable impact of TalentBot on recruiter productivity? Any metric from existing deployments?

**ER-T02:** Does TalentBot support voice interaction, or is it text/chat only?

**ER-T03:** What assessment frameworks does TalentBot support? (DISC, CliftonStrengths, custom?)
