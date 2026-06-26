# Industries Blueprint

**Pages:** Industries Overview + 5 Industry Detail Pages  
**URLs:** `/industries/` + `/industries/{slug}/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-088 (overview + stubs) / SF-SLICE-089 (full content)  
**Status:** BLUEPRINT — Pending executive review  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/content_model.md`

---

## Industries Overview (`/industries/`)

### Page Purpose

Confirm to regulated-industry buyers that AI Solutions understands their domain context — before they have to explain it. This page is the "do you know my world?" test.

### Target Audience

**Primary:** Industry-specific personas who arrived at AI Solutions via a referral or industry search and immediately need to know whether this team has domain experience.

**Secondary:** Executive decision-makers who are evaluating multiple AI vendors and want to verify industry relevance quickly.

### Business Objective

Reduce the time it takes for a regulated-industry buyer to trust AI Solutions as domain-competent. Drive to industry detail pages, then to solutions and contact.

### Hero

**Headline:** "Industries We Serve"  
**Subheadline:** "We build AI for industries where accuracy, compliance, and production reliability are non-negotiable."  
**Primary CTA:** "Tell Us About Your Industry" → `/contact/`  
**Secondary CTA:** None

### Key Messages

- AI Solutions has deep experience in regulated industries where generic AI products fail
- Compliance (GDPR, HIPAA) is engineered in, not added later
- Domain expertise enables faster PoC delivery and fewer false starts

### Sections

#### Section 1 — Industry Cards

**Purpose:** Primary navigation surface. Five industry cards, each with industry name, one-line context, compliance badge, and link to detail page.

| Industry | One-liner | Compliance | Key solutions |
|---|---|---|---|
| Healthcare | AI for clinical documentation, patient data, and operational efficiency | HIPAA | NeuroDocs |
| Life Sciences & Pharma | Document intelligence, regulatory compliance, and clinical trial data management | FDA/EMA | NeuroDocs |
| Human Resources & Talent | AI that transforms recruiting — from resume screening to intelligent candidate engagement | GDPR | CV Extractor, TalentBot |
| Manufacturing | Computer vision for quality control, defect detection, and production line optimization | ISO Quality | (planned) |
| Financial Services | Fraud detection, compliance automation, and AI-assisted financial analysis | GDPR, SOC2 | (planned) |

**Supporting visuals:** Industry icon per card. Compliance badge.

---

#### Section 2 — Cross-Industry Claims

**Purpose:** Statement of cross-industry capability before buyers go into industry-specific pages.

**Content summary:**

```
What Every Industry Gets:

✓ GDPR-compliant data handling as standard
✓ HIPAA-ready architecture for healthcare and life sciences
✓ Explainable AI — every model decision can be audited
✓ Production operations with 99.9% uptime SLA
✓ 4–6 week PoC — defined scope, measurable outcome
```

---

#### Section 3 — Bottom CTA

"Your industry has specific requirements. Our team has specific experience. Let's find the overlap."

**CTA:** "Start a Conversation" → `/contact/`

---

## Industry Detail Pages — Content Specification

---

### Healthcare (`/industries/healthcare/`)

**Compliance context:** HIPAA, HL7 FHIR, HITECH

### Page Purpose

Confirm AI Solutions understands healthcare AI's specific constraints: PHI handling, EHR integration, clinical workflow disruption, and the risk of AI decisions in patient-facing contexts.

### Hero

**Headline:** "Healthcare AI That Meets Clinical Standards"  
**Subheadline:** "HIPAA-compliant AI engineering for clinical documentation, patient data processing, and healthcare operational intelligence."  
**Primary CTA:** "Talk to Our Healthcare AI Team" → `/contact/?industry=healthcare`

### Key Messages

- HIPAA-compliant architecture: PHI handling, data minimization, audit trail
- AI that augments clinical workflows — does not disrupt them
- Explainable AI outputs for clinician review
- Experience in clinical NLP and medical records processing

### Sections

**AI Landscape:**
> "Healthcare AI is advancing rapidly — but the regulatory and safety requirements mean that deployment standards are far higher than in most industries. Every AI system that touches patient data requires careful compliance documentation, explainable outputs, and human oversight mechanisms."

**Pain Points:**
1. Manual clinical documentation — physicians spend hours documenting instead of treating
2. Inconsistent medical records tagging across EHR systems
3. No intelligent search over clinical notes — keyword search misses clinical context
4. HIPAA compliance requirements for every AI system that touches PHI
5. AI system explainability requirements — clinical teams will not trust a black box

**Solutions for Healthcare:**
- NeuroDocs — medical records tagging, clinical document management
- (Planned) Clinical NLP system for documentation automation

**Capabilities Applied:**
- Document Intelligence
- LLM Engineering (medical domain fine-tuning)
- Responsible AI (HIPAA compliance, explainability)
- ML Model Development

**Compliance Coverage:**
- HIPAA: data encryption, access controls, audit logging, business associate agreements
- HL7 FHIR: structured data output compatible with FHIR-compliant EHR systems
- Explainability: SHAP-based explanation for every AI classification decision

**CTA:** "Build compliant healthcare AI with us" → `/contact/?industry=healthcare`

### Executive Review Notes — Healthcare

**ER-HC01:** Has AI Solutions built or deployed AI in a clinical setting? If yes, can that be referenced (even anonymously)?

**ER-HC02:** Is HL7 FHIR compatibility a current capability or a planned one? Only claim if current.

---

### Life Sciences & Pharma (`/industries/life-sciences/`)

**Compliance context:** FDA 21 CFR Part 11, EMA GxP, ICH guidelines

### Page Purpose

Confirm AI Solutions understands the regulatory document management burden in pharma — and has a deployed solution (NeuroDocs) for it.

### Hero

**Headline:** "AI for Life Sciences — Regulatory Precision at Scale"  
**Subheadline:** "Document intelligence and compliance AI for pharmaceutical and biotech organizations operating under FDA, EMA, and GxP requirements."  
**Primary CTA:** "Request a NeuroDocs Demo" → `/contact/?interest=neurodocs`

### Key Messages

- NeuroDocs is purpose-built for pharma compliance document workflows
- FDA 21 CFR Part 11 compliant audit trails for electronic records
- AI-powered review of regulatory submissions — faster, more consistent
- Reduces manual document review burden without introducing compliance risk

### Sections

**AI Landscape:**
> "Life sciences organizations manage thousands of documents per regulatory submission. Traditional document management systems provide storage and search — but no intelligence. AI Solutions brings semantic understanding, automated classification, and intelligent Q&A to the document-heavy processes that slow regulatory timelines."

**Pain Points:**
1. Manual review of thousands of documents per regulatory filing cycle
2. Inconsistent document classification across global study sites
3. No intelligent Q&A over proprietary research and clinical data
4. Audit trail requirements for every document review and modification
5. Time-to-regulatory-approval directly correlates with document processing speed

**Solutions for Life Sciences:**
- NeuroDocs — pharma compliance document management with RAG
- (Planned) Clinical trial data management AI

**Capabilities Applied:**
- Retrieval-Augmented Generation
- Document Intelligence
- LLM Engineering (regulatory vocabulary fine-tuning)
- Responsible AI (FDA 21 CFR Part 11 compliance)

**Compliance Coverage:**
- FDA 21 CFR Part 11: electronic records, electronic signatures, audit trail
- EMA GxP: Good (Clinical/Laboratory/Manufacturing/Pharmacovigilance) Practice alignment
- Data integrity: immutable audit log, version-controlled document records

**CTA:** "See NeuroDocs for your regulatory workflows" → `/contact/?interest=neurodocs`

### Executive Review Notes — Life Sciences

**ER-LS01:** Has NeuroDocs been deployed in a pharma or biotech setting? If yes, can we reference it (even as "a major pharmaceutical company")?

**ER-LS02:** Is "FDA 21 CFR Part 11 compliant" an accurate current claim, or is it aspirational? Engineering Lead must validate before publishing.

---

### Human Resources & Talent (`/industries/human-resources/`)

**Compliance context:** GDPR Article 22 (automated decisions), fair hiring law (EEOC in US, similar globally)

### Page Purpose

Give HR/Talent Operations leaders enough domain recognition to see AI Solutions as a specialist in HR AI, not a generic AI vendor.

### Hero

**Headline:** "AI for HR That Respects Your Candidates"  
**Subheadline:** "GDPR-compliant AI for talent acquisition — from high-throughput resume parsing to intelligent candidate screening and engagement."  
**Primary CTA:** "Explore AI for Your Recruiting Process" → `/contact/?industry=hr`

### Key Messages

- Two live solutions purpose-built for HR: CV Extractor and TalentBot
- GDPR-compliant candidate data handling as a default, not an option
- AI that augments recruiters — it does not replace human judgment on hiring decisions
- Configurable for any role, industry, and company hiring framework

### Sections

**AI Landscape:**
> "HR and talent acquisition are undergoing rapid AI adoption — but the stakes are high. Biased AI can introduce legal liability. Non-compliant data handling creates GDPR exposure. AI that replaces human judgment on hiring decisions violates labor law in many jurisdictions. AI Solutions builds HR AI that is accurate, compliant, and appropriately supervised."

**Pain Points:**
1. Manual resume review doesn't scale at enterprise hiring volumes
2. Inconsistent screening criteria across different recruiters and teams
3. No structured data from candidate CVs makes analytics impossible
4. GDPR Article 22: automatic decisions about candidates require explainability and human oversight
5. Bias risk in AI screening — must be audited and documented

**Solutions for HR:**
- CV Extractor — high-throughput resume parsing with GDPR-compliant data handling
- TalentBot — conversational candidate screening with human handoff capability

**Capabilities Applied:**
- Document Intelligence (CV Extractor)
- AI Agents & Automation (TalentBot)
- Responsible AI (GDPR Article 22, bias auditing)
- LLM Engineering (TalentBot conversational AI)

**Compliance Coverage:**
- GDPR Article 22: every AI screening decision includes explainability output and human review pathway
- Bias audit: screening criteria validated for disparate impact across protected groups
- Candidate consent: data collection and processing with explicit consent management
- Right to explanation: candidate can request explanation of AI-assisted screening outcome

**CTA:** "Build compliant HR AI with us" → `/contact/?industry=hr`

### Executive Review Notes — HR

**ER-HR01:** Has the bias audit capability been implemented in CV Extractor or TalentBot? If not, this section needs qualification.

**ER-HR02:** Is GDPR Article 22 compliance currently implemented in both solutions, or is this aspirational?

---

### Manufacturing (`/industries/manufacturing/`)

**Compliance context:** ISO 9001 Quality Management, industry-specific safety standards

### Page Purpose

Give manufacturing AI buyers confidence that AI Solutions can deploy computer vision at the edge — in factory environments, not just in the cloud.

### Hero

**Headline:** "Manufacturing AI — From Assembly Line to Quality Report"  
**Subheadline:** "Computer vision for defect detection, quality control, and production line monitoring — deployed at the edge for real-time industrial environments."  
**Primary CTA:** "Explore Manufacturing AI" → `/contact/?industry=manufacturing`

### Key Messages

- Edge AI deployment on NVIDIA Jetson for on-premise, low-latency vision systems
- YOLOv8 object detection optimized for manufacturing quality control
- Real-time defect detection without cloud dependency
- Integration with existing MES and quality management systems

### Sections

**AI Landscape:**
> "Manufacturing quality control remains largely human-dependent — expensive, inconsistent, and limited to sample-based inspection. AI-powered computer vision enables 100% inspection at line speed, with consistent quality criteria applied to every unit."

**Pain Points:**
1. Human visual inspection misses defects at high production speeds
2. Sample-based inspection catches defects too late — after many units have shipped
3. Inconsistent quality criteria across shifts and operators
4. No real-time production analytics from the line itself
5. Cloud-based AI systems introduce unacceptable latency for real-time inspection

**Solutions for Manufacturing:**
- Custom computer vision quality control systems
- Edge AI deployment on NVIDIA Jetson
- (Planned: dedicated manufacturing AI solution)

**Capabilities Applied:**
- Computer Vision (YOLOv8, ViT)
- ML Model Development (defect classification models)
- MLOps & AI Platform (model monitoring for drift in production quality)
- Responsible AI (explainability for quality audit trails)

**CTA:** "Deploy computer vision in your facility" → `/contact/?industry=manufacturing`

### Executive Review Notes — Manufacturing

**ER-M01:** Has AI Solutions deployed a computer vision quality control system in a manufacturing setting? If yes, can it be referenced?

**ER-M02:** Is the NVIDIA Jetson edge deployment a current production capability, or a planned one?

---

### Financial Services (`/industries/financial-services/`)

**Compliance context:** GDPR, SOC 2, PCI DSS (if payment data), Basel III (risk models)

### Page Purpose

Give financial services AI buyers enough signal that AI Solutions understands financial AI's governance, explainability, and compliance requirements.

### Hero

**Headline:** "Financial AI — Accurate, Explainable, Auditable"  
**Subheadline:** "AI for fraud detection, compliance automation, and financial analytics — with full model explainability and audit trails for regulatory review."  
**Primary CTA:** "Explore Financial Services AI" → `/contact/?industry=financial-services`

### Key Messages

- Explainable AI is not optional in financial services — regulators require it
- GDPR-compliant data handling for customer financial data
- Risk model transparency: every scoring decision can be audited
- AI that augments compliance teams, not replaces them

### Sections

**AI Landscape:**
> "Financial services AI faces some of the strictest regulatory requirements of any industry. Credit decisions, fraud detection, and risk scoring must be explainable, auditable, and non-discriminatory. AI Solutions brings responsible AI engineering expertise to financial use cases."

**Pain Points:**
1. Regulators require explainability for automated credit and risk decisions
2. Fraud detection models must be retrained continuously as fraud patterns evolve
3. GDPR Article 22 applies to automated financial decision-making
4. Compliance documentation burden for AI systems is high
5. Model bias risk in lending and insurance products

**Solutions for Financial Services:**
- Custom AI fraud detection systems
- Explainable credit scoring models
- Compliance document processing (NeuroDocs applicable)
- (Planned: dedicated financial AI solutions)

**CTA:** "Build explainable financial AI with us" → `/contact/?industry=financial-services`

### Executive Review Notes — Financial Services

**ER-FS01:** Has AI Solutions deployed AI in a financial services context? If not, this page needs qualified language ("we have the capability" rather than "we have deployed").

**ER-FS02:** Is "SOC 2 Aligned" an accurate claim? Engineering Lead must verify.

---

## Future Enhancements — Industries

- Government / Public Sector industry page (when government client experience exists)
- Retail industry page (when retail AI solutions are developed)
- Education industry page
- Regulatory compliance matrix: one page that maps all AI Solutions' compliance capabilities across all industries
- Industry-specific case studies embedded in each industry page
