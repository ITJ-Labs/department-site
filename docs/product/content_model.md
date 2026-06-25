# AI Solutions — Content Model

**Document:** Content Entity Definitions  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-087E-AI-SOLUTIONS-PRODUCT-STRATEGY  
**Date:** 2026-06-25  
**Status:** FOUNDATION — Content model for all platform content authoring and automation  
**Audience:** Practice Lead, Engineering Lead, AI Delivery OS mission authors, Marketing

---

## Purpose

This document defines the canonical content entities for the AI Solutions Digital Platform. Each entity has:
- A structured field schema
- Ownership and update cadence
- Relationships to other entities
- Future URL pattern for website rendering
- Hugo content type and archetype

This model is the contract between the content team, the engineering team, and the AI Delivery OS. When new content is created by AI Delivery OS missions, it must conform to these schemas.

---

## Entity Index

| Entity | Count (current) | Hugo Type | URL Pattern | Owner |
|---|---|---|---|---|
| Capability | 8 (planned) | `capabilities` | `/capabilities/{slug}/` | Engineering Lead |
| Solution | 3 (live) + more planned | `solutions` | `/solutions/{slug}/` | Practice Lead |
| Industry | 5 (planned) | `industries` | `/industries/{slug}/` | Practice Lead |
| Publication | 0 (authoring not started) | `publications` | `/publications/{slug}/` | Research Lead |
| Case Study | 0 (template ready) | `case-studies` | `/case-studies/{slug}/` | Practice Lead |
| Technology | ~15 (implicit in services) | `technologies` | `/technologies/{slug}/` | Engineering Lead |
| Partner | 0 (future) | `partners` | `/partners/{slug}/` | Practice Lead |
| Event | 2 (live) | `events` | `/events/{slug}/` | Operations |
| Team Member | 3 (live in about) | `team` | `/team/{slug}/` | Practice Lead |
| Insight | 0 (authoring not started) | `insights` | `/insights/{slug}/` | Engineering / Research |
| Service | 3 (live) | `services` | `/services/{slug}/` | Practice Lead |

---

## Entity: Capability

**Definition:** A discrete, named AI engineering capability that AI Solutions offers to clients. Capabilities are cross-cutting — they are used by multiple Solutions and apply to multiple Industries.

**Hugo content type:** `content/capabilities/`  
**Future URL:** `/capabilities/{slug}/`  
**Owner:** Engineering Lead  
**Update cadence:** Quarterly, or upon major technology shift  
**Status:** Planned (SF-SLICE-089)

### Fields

| Field | Type | Required | Description |
|---|---|---|---|
| `title` | string | Yes | Capability name (e.g., "Retrieval-Augmented Generation") |
| `slug` | string | Yes | URL slug (e.g., `retrieval-augmented-generation`) |
| `summary` | string | Yes | One-sentence capability description |
| `description` | markdown | Yes | Full description: what the capability is, how it works, and what value it delivers |
| `pillar` | string enum | Yes | Strategic pillar this capability belongs to (see Product Strategy) |
| `maturity` | string enum | Yes | `production` / `growing` / `emerging` |
| `technologies` | []string | No | Technology slugs used to deliver this capability |
| `solutions` | []string | No | Solution slugs where this capability is deployed |
| `industries` | []string | No | Industries this capability serves |
| `example_use_cases` | []string | No | 2–4 short use case strings |
| `case_studies` | []string | No | Case study slugs demonstrating this capability |
| `publications` | []string | No | Publication slugs by this capability |
| `tags` | []string | No | Search/filter tags |
| `draft` | bool | No | Draft status (default: false) |

### Planned Capabilities

| Slug | Pillar | Maturity |
|---|---|---|
| `retrieval-augmented-generation` | Generative AI & LLM Engineering | production |
| `llm-fine-tuning` | Generative AI & LLM Engineering | production |
| `computer-vision` | AI Engineering Excellence | production |
| `ml-model-development` | AI Engineering Excellence | production |
| `mlops-and-ai-platform` | Data & AI Platform Infrastructure | production |
| `ai-agents-and-automation` | Agentic AI & Intelligent Automation | growing |
| `responsible-ai` | Responsible AI & Governance | growing |
| `document-intelligence` | Generative AI & LLM Engineering | production |

---

## Entity: Solution

**Definition:** A packaged AI solution — a deployable system built on one or more Capabilities that solves a specific class of business problem.

**Hugo content type:** `content/solutions/`  
**Future URL:** `/solutions/{slug}/`  
**Owner:** Practice Lead  
**Update cadence:** Per product release; review quarterly  
**Status:** Current solution content lives in `content/services/` — migration to `/solutions/` planned in SF-SLICE-088

### Fields

| Field | Type | Required | Description |
|---|---|---|---|
| `title` | string | Yes | Solution name (e.g., "NeuroDocs") |
| `slug` | string | Yes | URL slug (e.g., `neurodocs`) |
| `tagline` | string | Yes | One-line differentiating statement |
| `summary` | string | Yes | 2–3 sentence solution overview |
| `description` | markdown | Yes | Full solution detail |
| `status` | string enum | Yes | `live` / `beta` / `planned` |
| `type` | string enum | Yes | `accelerator` / `platform` / `custom` |
| `capabilities` | []string | Yes | Capability slugs that power this solution |
| `industries` | []string | Yes | Industries this solution serves |
| `technologies` | []string | Yes | Technology slugs used |
| `deployment_time_poc` | string | No | PoC delivery timeline (e.g., "4–6 weeks") |
| `deployment_time_prod` | string | No | Production deployment timeline |
| `compliance` | []string | No | Compliance standards: `GDPR`, `HIPAA`, etc. |
| `case_studies` | []string | No | Linked case study slugs |
| `cta_label` | string | No | Primary CTA button text (e.g., "Request a Demo") |
| `cta_href` | string | No | CTA destination URL |
| `weight` | int | No | Display order (lower = first) |
| `draft` | bool | No | Draft status |

### Existing Solutions

| Slug | Title | Status | Type |
|---|---|---|---|
| `neurodocs` | NeuroDocs | live | accelerator |
| `cv-extractor` | CV Extractor | live | accelerator |
| `talentbot` | TalentBot | live | accelerator |

**Note:** AI Delivery OS / SliceForge is an internal accelerator. It is NOT listed as a public-facing Solution at this time. It appears as a Differentiator in the strategy narrative.

---

## Entity: Industry

**Definition:** A target market vertical that AI Solutions serves. Industries organize Solutions and Capabilities by domain expertise.

**Hugo content type:** `content/industries/`  
**Future URL:** `/industries/{slug}/`  
**Owner:** Practice Lead  
**Update cadence:** Annual, or upon new vertical entry  
**Status:** Planned (SF-SLICE-089)

### Fields

| Field | Type | Required | Description |
|---|---|---|---|
| `title` | string | Yes | Industry name (e.g., "Healthcare") |
| `slug` | string | Yes | URL slug (e.g., `healthcare`) |
| `icon` | string | No | Emoji or icon identifier |
| `summary` | string | Yes | One-paragraph industry context |
| `pain_points` | []string | No | Top 3–5 AI pain points in this industry |
| `solutions` | []string | Yes | Solution slugs deployed in this industry |
| `capabilities` | []string | No | Capability slugs most relevant |
| `compliance_context` | string | No | Regulatory context (e.g., "HIPAA-governed", "EMA-regulated") |
| `case_studies` | []string | No | Case study slugs |
| `weight` | int | No | Display order |
| `draft` | bool | No | Draft status |

### Target Industries

| Slug | Title | Compliance context |
|---|---|---|
| `healthcare` | Healthcare | HIPAA-governed |
| `life-sciences` | Life Sciences & Pharma | FDA/EMA-regulated |
| `human-resources` | Human Resources & Talent | GDPR-compliant |
| `manufacturing` | Manufacturing | Quality-driven |
| `financial-services` | Financial Services | GDPR/SOC2-aligned |

---

## Entity: Publication

**Definition:** A technical paper, white paper, or research article authored by AI Solutions team members.

**Hugo content type:** `content/publications/`  
**Future URL:** `/publications/{slug}/`  
**Owner:** Research Lead  
**Update cadence:** Per publication  
**Status:** Content authoring not started; current publications page exists but has no live articles

### Fields

| Field | Type | Required | Description |
|---|---|---|---|
| `title` | string | Yes | Full publication title |
| `slug` | string | Yes | URL slug |
| `authors` | []string | Yes | Author names |
| `date` | date | Yes | Publication date |
| `type` | string enum | Yes | `technical-paper` / `white-paper` / `blog-post` / `case-study` / `conference-talk` / `insight` |
| `summary` | string | Yes | 2–3 sentence abstract |
| `content` | markdown | Yes | Full article body |
| `doi` | string | No | DOI if peer-reviewed |
| `external_url` | string | No | Link to external version (arXiv, journal, etc.) |
| `capabilities` | []string | No | Related capability slugs |
| `industries` | []string | No | Relevant industry slugs |
| `technologies` | []string | No | Technology slugs mentioned |
| `tags` | []string | No | Filter tags |
| `featured` | bool | No | Surface on homepage / featured section |
| `draft` | bool | No | Draft status |

---

## Entity: Case Study

**Definition:** A documented client engagement with structured problem, solution, and outcome.

**Hugo content type:** `content/case-studies/`  
**Future URL:** `/case-studies/{slug}/`  
**Owner:** Practice Lead  
**Update cadence:** Per completed engagement  
**Status:** Template ready (defined in Product Strategy); content requires client approval  
**Note:** Case study content must be client-approved before publishing.

### Fields

| Field | Type | Required | Description |
|---|---|---|---|
| `title` | string | Yes | Format: "{Industry} — {AI Capability}: {Outcome}" |
| `slug` | string | Yes | URL slug |
| `client_type` | string | Yes | Industry and approximate size (no client name required) |
| `date` | date | Yes | Engagement date or publication date |
| `status` | string enum | Yes | `live-in-production` / `poc-complete` / `in-progress` |
| `challenge` | markdown | Yes | Business problem narrative |
| `solution` | markdown | Yes | What AI Solutions built and delivered |
| `outcome` | markdown | Yes | Measurable results |
| `timeline_poc` | string | No | PoC duration |
| `timeline_production` | string | No | Production deployment duration |
| `capabilities` | []string | Yes | Capability slugs applied |
| `industries` | []string | Yes | Industry slugs |
| `technologies` | []string | Yes | Technology slugs used |
| `client_quote` | string | No | Approved client testimonial |
| `client_title` | string | No | Client contact title (not name) |
| `featured` | bool | No | Surface on homepage |
| `draft` | bool | No | Draft status |
| `client_approved` | bool | Yes | Requires explicit client approval before publish |

---

## Entity: Technology

**Definition:** A specific AI/ML framework, tool, platform, or service that AI Solutions uses in delivery.

**Hugo content type:** `content/technologies/` (future)  
**Future URL:** `/technologies/{slug}/` (or referenced only via relationship fields)  
**Owner:** Engineering Lead  
**Update cadence:** Per technology adoption or deprecation  
**Status:** Currently implicit in services content; formal entity planned for SF-SLICE-089+

### Fields

| Field | Type | Required | Description |
|---|---|---|---|
| `name` | string | Yes | Technology name |
| `slug` | string | Yes | URL slug |
| `category` | string enum | Yes | `nlp-llm` / `ml-frameworks` / `computer-vision` / `deployment` / `data` / `cloud` / `tools` |
| `url` | string | No | Official technology URL |
| `summary` | string | No | One-line description |
| `capabilities` | []string | No | Capability slugs that use this technology |
| `draft` | bool | No | Draft status |

### Current Technology Inventory

| Slug | Name | Category |
|---|---|---|
| `hugging-face` | Hugging Face Transformers | nlp-llm |
| `langchain` | LangChain | nlp-llm |
| `ollama` | Ollama | nlp-llm |
| `pytorch` | PyTorch | ml-frameworks |
| `fastai` | FastAI | ml-frameworks |
| `xgboost` | XGBoost | ml-frameworks |
| `scikit-learn` | scikit-learn | ml-frameworks |
| `yolov8` | YOLOv8 | computer-vision |
| `vision-transformers` | Vision Transformers (ViT) | computer-vision |
| `opencv` | OpenCV | computer-vision |
| `docker` | Docker | deployment |
| `streamlit` | Streamlit | deployment |
| `gcp` | Google Cloud Platform | cloud |
| `nvidia-jetson` | NVIDIA Jetson | deployment |
| `pub-sub` | Google Pub/Sub | data |

---

## Entity: Partner

**Definition:** A technology partner, academic institution, or ecosystem partner with whom AI Solutions has a formal or informal collaboration.

**Hugo content type:** `content/partners/` (future)  
**Future URL:** `/partners/{slug}/`  
**Owner:** Practice Lead  
**Update cadence:** Per partnership agreement  
**Status:** Not yet in scope — future slice

### Fields (future)

| Field | Type | Required | Description |
|---|---|---|---|
| `name` | string | Yes | Partner organization name |
| `slug` | string | Yes | URL slug |
| `type` | string enum | Yes | `technology` / `academic` / `cloud` / `channel` |
| `description` | string | Yes | Nature of the partnership |
| `logo_url` | string | No | Partner logo |
| `url` | string | No | Partner website URL |
| `draft` | bool | No | Draft status |

---

## Entity: Event

**Definition:** A conference, workshop, webinar, or public event that AI Solutions participates in or sponsors.

**Hugo content type:** `content/events/`  
**Future URL:** `/events/{slug}/`  
**Owner:** Operations / Practice Lead  
**Update cadence:** Per event  
**Status:** Live (2 placeholder events in events section)

### Fields

| Field | Type | Required | Description |
|---|---|---|---|
| `title` | string | Yes | Event name |
| `slug` | string | Yes | URL slug |
| `date` | date | Yes | Event date |
| `end_date` | date | No | Multi-day event end date |
| `location` | string | Yes | City, Country or "Virtual" |
| `type` | string enum | Yes | `conference` / `webinar` / `workshop` / `summit` / `meetup` |
| `role` | string enum | No | `speaker` / `sponsor` / `attendee` / `organizer` |
| `description` | markdown | Yes | Event description and AI Solutions involvement |
| `external_url` | string | No | Event website |
| `talk_title` | string | No | Title of talk if speaking |
| `talk_summary` | string | No | Talk abstract |
| `capabilities` | []string | No | Related capability slugs |
| `industries` | []string | No | Industry focus of event |
| `featured` | bool | No | Surface on homepage |
| `draft` | bool | No | Draft status |

---

## Entity: Team Member

**Definition:** A named member of the AI Solutions team featured on the About or Team page.

**Hugo content type:** `content/team/` (future; currently hardcoded in about template)  
**Future URL:** `/team/{slug}/`  
**Owner:** Practice Lead  
**Update cadence:** Per hire / role change / departure  
**Status:** Currently hardcoded in the About page template

### Fields

| Field | Type | Required | Description |
|---|---|---|---|
| `name` | string | Yes | Full name |
| `slug` | string | Yes | URL slug |
| `title` | string | Yes | Role title |
| `bio` | string | Yes | Short professional bio |
| `credentials` | []string | No | Degrees, certifications |
| `expertise` | []string | No | Technical areas |
| `linkedin_url` | string | No | LinkedIn profile URL |
| `github_url` | string | No | GitHub profile URL |
| `photo_url` | string | No | Headshot URL |
| `featured` | bool | No | Surface on About page |
| `draft` | bool | No | Draft status |

---

## Entity: Insight

**Definition:** A shorter-form editorial content piece — blog post, technical explainer, opinion, or industry analysis.

**Hugo content type:** `content/insights/`  
**Future URL:** `/insights/{slug}/`  
**Owner:** Engineering team or Research Lead  
**Update cadence:** Monthly (engineering blog) / Weekly (short insights)  
**Status:** Content authoring not started

### Fields

| Field | Type | Required | Description |
|---|---|---|---|
| `title` | string | Yes | Article title |
| `slug` | string | Yes | URL slug |
| `author` | string | Yes | Author name |
| `date` | date | Yes | Publication date |
| `type` | string enum | Yes | `engineering-blog` / `industry-insight` / `tool-review` / `tutorial` / `opinion` |
| `summary` | string | Yes | One-paragraph summary |
| `content` | markdown | Yes | Full article |
| `reading_time` | int | No | Estimated reading time in minutes |
| `capabilities` | []string | No | Related capability slugs |
| `industries` | []string | No | Relevant industries |
| `technologies` | []string | No | Technologies discussed |
| `tags` | []string | No | Filter tags |
| `featured` | bool | No | Surface on homepage |
| `draft` | bool | No | Draft status |

---

## Entity: Service

**Definition:** A high-level service offering category — a collection of capabilities organized around a client engagement model.

**Hugo content type:** `content/services/`  
**Current URL:** `/services/` (live)  
**Future URL:** `/services/{slug}/` (individual service pages planned)  
**Owner:** Practice Lead  
**Update cadence:** Annual  
**Status:** Live as a single page. Individual service pages planned for SF-SLICE-088+

### Current Services

| Service | Type | Accelerator | Industries |
|---|---|---|---|
| NeuroDocs | Document AI / LLM | Yes | Healthcare, Life Sciences |
| CV Extractor | Document AI / HR Tech | Yes | Human Resources |
| TalentBot | Conversational AI / HR Tech | Yes | Human Resources |

### Fields (for future individual service pages)

| Field | Type | Required | Description |
|---|---|---|---|
| `title` | string | Yes | Service name |
| `slug` | string | Yes | URL slug |
| `summary` | string | Yes | One-line description |
| `description` | markdown | Yes | Full service description |
| `type` | string | Yes | Service category (same as Solutions type) |
| `capabilities` | []string | Yes | Capability slugs used |
| `industries` | []string | Yes | Industries served |
| `cta_label` | string | No | CTA button label |
| `cta_href` | string | No | CTA destination |
| `weight` | int | No | Display order |
| `draft` | bool | No | Draft status |

---

## Entity Relationship Map

```
Capability ──────────────────────┐
  │                               │
  ├── powers → Solution           │
  ├── applies to → Industry       │
  ├── uses → Technology           │
  ├── demonstrated by → Case Study│
  └── written about → Publication │

Solution ────────────────────────┤
  │                               │
  ├── built on → Capability       │
  ├── targets → Industry          │
  ├── uses → Technology           │
  └── demonstrated by → Case Study│

Industry ─────────────────────────┤
  │                               │
  ├── served by → Solution        │
  └── served by → Capability      │

Publication ──────────────────────┤
  │                               │
  ├── written by → Team Member    │
  ├── covers → Capability         │
  ├── covers → Industry           │
  └── mentions → Technology       │

Case Study ───────────────────────┤
  │                               │
  ├── applies → Capability        │
  ├── serves → Industry           │
  └── uses → Technology           │

Insight ──────────────────────────┤
  │                               │
  ├── written by → Team Member    │
  ├── covers → Capability         │
  ├── covers → Industry           │
  └── mentions → Technology       │

Team Member ──────────────────────┤
  │                               │
  ├── authors → Publication       │
  └── authors → Insight           │

Event ────────────────────────────┤
  │                               │
  ├── presented by → Team Member  │
  └── covers → Capability         │

Technology ────────────────────────
  └── used by → Capability / Solution
```

---

## Hugo Implementation Notes

### Content Type Architecture

All content entities listed above map to Hugo content types. When implementing in SF-SLICE-088 and beyond:

1. Create archetypes in `archetypes/` for each entity type
2. Create list and single templates in `layouts/{entity-type}/`
3. Use Hugo front-matter for all structured fields
4. Use `hugo.Params` for entity relationship resolution

### AI Delivery OS Integration

Content entities are the output target for AI Delivery OS content missions. A mission targeting `publication` entities will:
1. Generate markdown content conforming to the Publication field schema
2. Write to `content/publications/{slug}/index.md`
3. Populate structured fields in front-matter
4. Validate against this schema before committing

### Field Convention

- All date fields: `YYYY-MM-DD` format
- All slug fields: `lowercase-kebab-case`
- All array fields: YAML list syntax
- Relationship fields: use slug strings, not display names
- Boolean fields: explicit `true` or `false` (not `yes`/`no`)

### Draft Status

Content with `draft: true` will not be published to the live site (Hugo respects this natively). Use draft status during review periods and for content pending client approval.

---

## Governance

| Decision | Owner | Frequency |
|---|---|---|
| Add or remove entity type | Engineering Lead + Practice Lead | Per IA change |
| Add fields to existing entity | Engineering Lead | Per feature requirement |
| Deprecate field | Engineering Lead (with migration plan) | Per feature |
| Add entity instances (content) | See per-entity owner | Per update cadence |
| AI Delivery OS schema sync | Engineering Lead | Per entity model update |
