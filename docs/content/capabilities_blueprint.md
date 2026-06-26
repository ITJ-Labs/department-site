# Capabilities Blueprint

**Pages:** Capabilities Overview + 8 Capability Detail Pages  
**URLs:** `/capabilities/` + `/capabilities/{slug}/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-088 (overview + stubs) / SF-SLICE-089 (full content)  
**Status:** BLUEPRINT — Pending executive review  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/content_model.md`

---

## Capabilities Overview (`/capabilities/`)

### Page Purpose

Give technical evaluators (VP Engineering, Head of AI) a complete map of what AI Solutions can engineer — organized by category, not by sales narrative.

### Target Audience

**Primary:** VP Engineering, Head of AI, Senior AI Engineers evaluating technical depth (Persona 2).  
**Secondary:** Executive decision-makers who have moved beyond "can they do AI?" to "what specifically can they do?"

### Business Objective

Build technical trust sufficient for the VP Engineering persona to recommend AI Solutions in an internal evaluation or RFP. Drive to capability detail pages or to `/contact/` for a technical briefing.

### Hero

**Headline:** "What We Can Build"  
**Subheadline:** "Eight core AI engineering capabilities — from LLM systems to computer vision to production MLOps — delivered with research-grade methodology and enterprise delivery discipline."  
**Primary CTA:** "Request a Technical Briefing" → `/contact/?interest=technical`  
**Secondary CTA:** None (capability cards serve as navigation)

### Key Messages

- AI Solutions possesses deep capability in 8 distinct AI engineering domains
- Every capability is grounded in peer-reviewed methods and delivered in production
- CRISP-ML(Q) methodology ensures every engagement is rigorous, not intuitive
- Technology stack is open-source, documented, and auditable

### Sections

#### Section 1 — Capability Cards Grid

**Purpose:** Navigation hub. Give technical visitors an at-a-glance inventory of capabilities with enough context to identify the most relevant.

**Content summary:** 8 capability cards, organized by strategic pillar:

**Pillar: Generative AI & LLM Engineering**

| Capability | Slug | Maturity | One-liner |
|---|---|---|---|
| Retrieval-Augmented Generation | `retrieval-augmented-generation` | Production | Build LLM applications that answer questions over your private document library — accurately, with citations |
| LLM Engineering | `llm-engineering` | Production | Fine-tune foundation models for your domain, vocabulary, and compliance requirements |
| Document Intelligence | `document-intelligence` | Production | Extract structured data from unstructured documents at enterprise scale |

**Pillar: AI Engineering Excellence**

| Capability | Slug | Maturity | One-liner |
|---|---|---|---|
| Computer Vision | `computer-vision` | Production | Object detection, image classification, visual inspection, and edge AI deployment |
| ML Model Development | `ml-model-development` | Production | End-to-end model development: feature engineering, experiment tracking, validation, production serving |

**Pillar: Data & AI Platform Infrastructure**

| Capability | Slug | Maturity | One-liner |
|---|---|---|---|
| MLOps & AI Platform | `mlops-and-ai-platform` | Production | ML pipelines, model registries, CI/CD for models, inference optimization |

**Pillar: Agentic AI & Intelligent Automation**

| Capability | Slug | Maturity | One-liner |
|---|---|---|---|
| AI Agents & Automation | `ai-agents-and-automation` | Growing | Autonomous AI agents that plan, execute, and adapt — reducing human intervention in complex workflows |

**Pillar: Responsible AI & Governance**

| Capability | Slug | Maturity | One-liner |
|---|---|---|---|
| Responsible AI | `responsible-ai` | Growing | Explainability, bias auditing, compliance documentation, and governance frameworks for enterprise AI |

**Supporting visuals:** Capability icon per card. Maturity badge (Production = `ds-badge-primary`, Growing = `ds-badge-neutral`). Group by pillar with pillar label as section separator.

**Related entities:** All `Capability` entities

---

#### Section 2 — Methodology Block

**Purpose:** Differentiate AI Solutions from competitors who use ad hoc AI development practices.

**Content summary:**

```
How We Work: CRISP-ML(Q) + Scientific Method

Every AI system we build follows a structured engineering lifecycle:

→ Problem Framing     Define measurable business goals
→ Data Strategy       Hypothesis-driven, not "collect everything"
→ Model Development   Experiment tracking, explainable metrics
→ Validation          Real-world constraints, not just benchmark scores
→ Production Deploy   MLOps, monitoring, drift detection
→ Lifecycle Ops       The system keeps working after delivery
```

**Supporting visuals:** 6-step horizontal flow diagram. Link to `/capabilities/ml-model-development/` for more detail.

**Evidence required:** CRISP-ML(Q) citation (ml-ops.org — currently used in /services/).

---

#### Section 3 — Technology Stack

**Purpose:** Signal technical compatibility. Enterprise buyers need to know AI Solutions can integrate with their existing stack.

**Content summary:**

Four tech category blocks (from current /services/ content):

| Category | Technologies |
|---|---|
| LLMs & NLP | Hugging Face Transformers, LangChain, Ollama |
| ML Frameworks | PyTorch, FastAI, XGBoost, scikit-learn |
| Computer Vision | YOLOv8, Vision Transformers, OpenCV |
| Deployment | Docker, Streamlit, GCP, NVIDIA Jetson, Pub/Sub |

Note: All technologies listed are open-source under permissive licenses (MIT, Apache 2.0).

**Supporting visuals:** Technology logo grid (current logos available in `images/logos/`).

---

#### Section 4 — Bottom CTA

**Content summary:** "Have a specific technical challenge? Our engineering team will assess it and tell you honestly whether we can solve it — and how."

**CTA:** "Request a Technical Briefing" → `/contact/?interest=technical`

---

## Capability Detail Pages — Content Specification

All 8 capability detail pages follow the same section template. Content for each is specified below.

**Standard section template for each capability page:**
1. Capability header (title, maturity badge, one-line description)
2. What this capability is
3. How AI Solutions delivers it (our specific approach)
4. Use cases (3–5 specific applications)
5. Technology
6. Solutions that use this capability
7. Industries where applied
8. Related publications (when available)
9. Bottom CTA

---

### Retrieval-Augmented Generation (`/capabilities/retrieval-augmented-generation/`)

**Maturity:** Production  
**Pillar:** Generative AI & LLM Engineering

**What it is:**
RAG systems combine the language fluency of large language models with the precision of structured document retrieval. Instead of relying on the LLM's training data (which may be outdated or inaccurate for your domain), RAG retrieves relevant passages from your private document library and uses them as context for every LLM response — with full citation.

**How AI Solutions delivers it:**
- Vector embedding of your document corpus using domain-appropriate embedding models
- Semantic search retrieval that understands meaning, not just keywords
- LLM response generation with cited source passages (no hallucination without ground truth)
- Hybrid search (vector + keyword) for high-recall regulated-industry applications
- Evaluation framework: recall, precision, faithfulness, and answer relevance metrics

**Use cases:**
1. Compliance document Q&A (pharma, healthcare)
2. Internal knowledge base assistants
3. Customer-facing product documentation chatbots
4. Legal document review and analysis
5. Technical manual search and summarization

**Technology:** LangChain, Hugging Face Transformers, vector databases, Ollama (local deployment option)

**Solutions that use this:** NeuroDocs  
**Industries:** Life Sciences, Healthcare, Enterprise  
**CTA:** "Build a RAG system for your documents" → `/contact/?interest=rag`

---

### LLM Engineering (`/capabilities/llm-engineering/`)

**Maturity:** Production  
**Pillar:** Generative AI & LLM Engineering

**What it is:**
LLM Engineering covers the full lifecycle of deploying large language models in production — from selecting the right foundation model to fine-tuning it for your domain, to serving it reliably at scale. This is not prompt engineering — it is AI engineering applied to language models.

**How AI Solutions delivers it:**
- Foundation model selection and evaluation (open-source vs. proprietary, size vs. performance tradeoffs)
- Supervised fine-tuning on domain-specific data (pharma vocabulary, legal terminology, HR job descriptions)
- PEFT techniques (LoRA, QLoRA) for efficient fine-tuning without full model retraining
- Evaluation frameworks: domain accuracy, output safety, latency benchmarks
- Production serving: batching, quantization, inference optimization
- Local deployment option via Ollama for data-sensitive environments

**Use cases:**
1. Domain-specific Q&A systems
2. Document generation with company-specific style and vocabulary
3. Structured output extraction from unstructured text
4. Conversational AI for specialized domains
5. Code generation assistance for ML engineering tasks

**Technology:** Hugging Face Transformers, PEFT/LoRA, Ollama, LangChain

**Solutions that use this:** NeuroDocs, TalentBot  
**Industries:** Healthcare, Life Sciences, HR & Talent, Enterprise  
**CTA:** "Fine-tune an LLM for your domain" → `/contact/?interest=llm`

---

### Document Intelligence (`/capabilities/document-intelligence/`)

**Maturity:** Production  
**Pillar:** Generative AI & LLM Engineering

**What it is:**
Document intelligence is the ability to extract structured, actionable data from unstructured documents — PDFs, Word files, scanned images, forms, tables, and mixed-format files — at enterprise scale and with enterprise accuracy.

**How AI Solutions delivers it:**
- OCR and layout analysis for scanned and image-based documents
- Named entity recognition (NER) for extracting people, organizations, dates, amounts
- Table extraction and normalization from complex document layouts
- Classification of document types in heterogeneous document sets
- Configurable output schema (JSON, CSV, database-ready formats)
- Accuracy validation and exception handling workflows

**Use cases:**
1. Resume/CV parsing (CV Extractor)
2. Regulatory filing document review (NeuroDocs)
3. Invoice and purchase order processing
4. Contract clause extraction and analysis
5. Medical records classification and tagging

**Technology:** Hugging Face Transformers, OpenCV (layout analysis), custom NLP extraction pipelines, Pub/Sub (high-throughput ingestion)

**Solutions that use this:** NeuroDocs, CV Extractor  
**Industries:** Healthcare, Life Sciences, HR & Talent, Financial Services  
**CTA:** "Extract structure from your documents" → `/contact/?interest=document-intelligence`

---

### Computer Vision (`/capabilities/computer-vision/`)

**Maturity:** Production  
**Pillar:** AI Engineering Excellence

**What it is:**
Computer vision enables AI systems to interpret and act on visual information — images, video, and real-time camera feeds. AI Solutions deploys computer vision for industrial quality control, medical imaging analysis, document digitization, and edge AI on embedded hardware.

**How AI Solutions delivers it:**
- Object detection and classification using YOLOv8 (optimized for speed and accuracy tradeoffs)
- Image classification using Vision Transformers (ViT) for high-accuracy batch workloads
- Video analytics and real-time detection pipelines
- Edge AI deployment on NVIDIA Jetson hardware for on-premise manufacturing use cases
- OpenCV integration for classical computer vision preprocessing
- Model evaluation: mAP, precision/recall at operating thresholds, real-world accuracy testing

**Use cases:**
1. Manufacturing quality control and defect detection
2. Medical imaging classification and anomaly detection
3. Document digitization (combining OCR with layout analysis)
4. Real-time video analytics for operations monitoring
5. Edge AI deployment in network-constrained environments

**Technology:** YOLOv8, Vision Transformers (ViT), OpenCV, NVIDIA Jetson, Docker

**Solutions that use this:** (planned — Manufacturing AI solutions)  
**Industries:** Manufacturing, Healthcare, Life Sciences  
**CTA:** "Deploy computer vision in your facility" → `/contact/?interest=cv`

---

### ML Model Development (`/capabilities/ml-model-development/`)

**Maturity:** Production  
**Pillar:** AI Engineering Excellence

**What it is:**
End-to-end machine learning model development — from problem framing and feature engineering to model selection, training, validation, and production deployment. This is the core engineering capability that underpins every AI Solutions engagement.

**How AI Solutions delivers it:**
Following CRISP-ML(Q) methodology:
- Problem framing: define business KPIs, success criteria, and measurable targets before touching data
- Exploratory data analysis: hypothesis-driven, not "run everything and see"
- Feature engineering and selection: domain-informed, with explainability in mind
- Model development: comparative evaluation across algorithm families, not just the fashionable model
- Validation: held-out test sets, cross-validation, out-of-distribution testing, real-world constraint simulation
- Production handoff: model cards, bias audits, inference optimization

**Technology:** PyTorch, FastAI, XGBoost, scikit-learn, experiment tracking (MLflow or equivalent)

**Solutions that use this:** All  
**Industries:** All  
**CTA:** "Build a production ML model for your use case" → `/contact/?interest=ml`

---

### MLOps & AI Platform (`/capabilities/mlops-and-ai-platform/`)

**Maturity:** Production  
**Pillar:** Data & AI Platform Infrastructure

**What it is:**
MLOps is the engineering discipline that makes ML models reliable in production — automating the pipeline from data ingestion to model training to serving, and providing the monitoring and governance infrastructure to keep models performing correctly over time.

**How AI Solutions delivers it:**
- ML pipeline design: data ingestion → preprocessing → training → validation → serving
- Model registry and versioning: track which model version is in production and why
- CI/CD for ML models: automated testing and deployment of new model versions
- Feature store design for consistent feature computation across training and inference
- Production monitoring: data drift detection, model performance tracking, alerting
- Google Pub/Sub integration for event-driven ML workloads at scale

**Use cases:**
1. Automating the retraining pipeline for a deployed ML model
2. Building a feature store that serves consistent features to multiple models
3. Setting up data drift detection and automated alerting
4. CI/CD for model deployment with rollback capability

**Technology:** Docker, Google Cloud Platform, Pub/Sub, MLflow (or equivalent), custom pipeline tooling

**Solutions that use this:** CV Extractor  
**Industries:** All  
**CTA:** "Make your ML models reliable in production" → `/contact/?interest=mlops`

---

### AI Agents & Automation (`/capabilities/ai-agents-and-automation/`)

**Maturity:** Growing  
**Pillar:** Agentic AI & Intelligent Automation

**What it is:**
AI agents are autonomous systems that can plan, use tools, and execute multi-step tasks — going far beyond simple question-answering to actually completing work. AI Solutions builds single-agent and multi-agent systems for enterprise workflow automation.

**How AI Solutions delivers it:**
- Single-agent design: define agent goals, available tools, and decision boundaries
- Multi-agent orchestration: agents that coordinate, delegate, and synthesize work
- Tool use: agents connected to APIs, databases, file systems, and external services
- Human-in-the-loop: approval gates and escalation paths for high-stakes decisions
- AI Delivery OS (internal): our own agentic system for autonomous AI development — used to build this platform

**Note on AI Delivery OS:** The AI Delivery OS is AI Solutions' internal engineering accelerator — an agentic system that manages AI development workflows. It is not a product sold to clients, but it is direct evidence of AI Solutions' agentic AI capability. See [Accelerators](/accelerators/) for more detail.

**Use cases:**
1. TalentBot (candidate screening automation)
2. AI Delivery OS (internal — autonomous AI development workflows)
3. Enterprise document processing agents
4. Customer service automation with intelligent escalation
5. Research and synthesis agents for internal knowledge management

**Technology:** LangChain agents, custom agent frameworks, tool use via function calling

**Solutions that use this:** TalentBot  
**Industries:** HR & Talent, Enterprise  
**CTA:** "Explore agentic AI for your workflows" → `/contact/?interest=agents`

---

### Responsible AI (`/capabilities/responsible-ai/`)

**Maturity:** Growing  
**Pillar:** Responsible AI & Governance

**What it is:**
Responsible AI is the practice of building AI systems that are explainable, fair, auditable, and compliant — meeting the governance requirements of regulated industries and enterprise risk management teams.

**How AI Solutions delivers it:**
- Model explainability using SHAP and LIME — enabling non-technical stakeholders to understand model decisions
- Bias auditing: test for disparate impact across demographic and protected attribute groups
- Data lineage: document what data was used, how it was processed, and who approved it
- Compliance documentation: GDPR Article 22 (automated decision-making), HIPAA data handling, AI Act readiness
- Model cards: structured documentation of every model's purpose, training data, performance, limitations, and intended use
- AI governance frameworks: define who owns model decisions, how they are monitored, and what triggers human review

**Use cases:**
1. GDPR compliance documentation for AI systems processing personal data
2. HIPAA compliance audit trail for healthcare AI
3. Bias audit for AI-driven candidate screening (CV Extractor, TalentBot)
4. Model explainability for credit scoring or loan decision AI
5. EU AI Act readiness assessment for high-risk AI systems

**Technology:** SHAP, LIME, custom audit tooling, compliance documentation frameworks

**Solutions that use this:** All (compliance layer)  
**Industries:** Healthcare, Life Sciences, Financial Services, HR & Talent  
**CTA:** "Build responsible AI for your regulated environment" → `/contact/?interest=responsible-ai`

---

## Executive Review Notes — Capabilities

**ER-C01:** Is "Growing" the right maturity label for AI Agents and Responsible AI, or should both be "Production"? The distinction matters — "Growing" may concern enterprise buyers who need mature capabilities.

**ER-C02:** The AI Delivery OS is mentioned as evidence under AI Agents. Is the team comfortable referencing the internal platform publicly, including the description "used to build this platform"?

**ER-C03:** Does Engineering Lead approve the CRISP-ML(Q) methodology description as accurate to current practice?

**ER-C04:** Are there publications from the team that can be referenced in specific capability pages (e.g., the multiclass evaluation paper under Computer Vision)?

**ER-C05:** Should a standalone "Methodology" page be created for CRISP-ML(Q), or is the overview on the Capabilities page sufficient?

---

## Future Enhancements — Capabilities

- Interactive capability assessment tool ("What AI capability do you need?")
- Case study snippets embedded in each capability page
- Technology partner logos in the stack section
- Benchmark results and performance metrics for key capabilities
- Video walkthroughs for complex capabilities (RAG, MLOps)
- Open-source project links from each capability page
