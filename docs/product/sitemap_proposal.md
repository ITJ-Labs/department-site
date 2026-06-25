# AI Solutions — Sitemap Proposal

**Document:** Proposed Site Structure and URL Inventory  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-087F-INFORMATION-ARCHITECTURE  
**Date:** 2026-06-25  
**Status:** PROPOSED — Pending implementation in SF-SLICE-088  
**Depends on:** `docs/product/information_architecture.md`

---

## Visual Sitemap

```
ITJ Solutions — AI Solutions
https://itj-labs.github.io/department-site/
│
├── / ─────────────────────────────────────── HOME
│
├── /solutions/ ──────────────────────────── SOLUTIONS
│   ├── /solutions/neurodocs/
│   ├── /solutions/cv-extractor/
│   ├── /solutions/talentbot/
│   └── /solutions/custom-ai/ ─────────────── (future)
│
├── /capabilities/ ──────────────────────── CAPABILITIES
│   ├── /capabilities/retrieval-augmented-generation/
│   ├── /capabilities/llm-engineering/
│   ├── /capabilities/computer-vision/
│   ├── /capabilities/ml-model-development/
│   ├── /capabilities/mlops-and-ai-platform/
│   ├── /capabilities/ai-agents-and-automation/
│   ├── /capabilities/responsible-ai/
│   └── /capabilities/document-intelligence/
│
├── /industries/ ──────────────────────────── INDUSTRIES
│   ├── /industries/healthcare/
│   ├── /industries/life-sciences/
│   ├── /industries/human-resources/
│   ├── /industries/manufacturing/
│   └── /industries/financial-services/
│
├── /insights/ ──────────────────────────── INSIGHTS HUB
│   ├── /insights/{slug}/ ─────────────────── blog / articles
│   ├── /publications/ ────────────────────── (existing; linked from hub)
│   │   └── /publications/{slug}/
│   └── /events/ ──────────────────────────── (existing; linked from hub)
│       └── /events/{slug}/
│
├── /case-studies/ ───────────────────────── CASE STUDIES
│   └── /case-studies/{slug}/ ──────────────── (future; client-approved)
│
├── /about/ ──────────────────────────────── ABOUT
│   └── /team/{slug}/ ─────────────────────── (future; individual pages)
│
└── /contact/ ──────────────────────────────── CONTACT

─── Legacy redirects (301 via Hugo aliases) ─────────────────
/services/           → /solutions/
/services/neurodocs/ → /solutions/neurodocs/
/services/cv-extractor/ → /solutions/cv-extractor/
/services/talentbot/ → /solutions/talentbot/
```

---

## Page Inventory — Current State

Pages that exist today in the live site.

| # | URL | Title | Status | Hugo Type | Priority |
|---|---|---|---|---|---|
| 1 | `/` | Home | LIVE | custom layout | P0 |
| 2 | `/about/` | About Us | LIVE | `_default/single` | P0 |
| 3 | `/services/` | Our Services | LIVE | `_default/single` | P0 |
| 4 | `/services/neurodocs/` | NeuroDocs | LIVE | `services/single` | P0 |
| 5 | `/services/cv-extractor/` | CV Extractor | LIVE | `services/single` | P0 |
| 6 | `/services/talentbot/` | TalentBot | LIVE | `services/single` | P0 |
| 7 | `/publications/` | Publications | LIVE | `publications/list` | P1 |
| 8 | `/publications/2025-multiclass-evaluation-vision-transformers/` | Multiclass Evaluation... | LIVE | `publications/single` | P1 |
| 9 | `/events/` | Events | LIVE | `events/list` | P1 |
| 10 | `/events/2024-cetys-lobby-empresarial/` | CETYS Lobby Empresarial | LIVE | `events/single` | P2 |
| 11 | `/events/2024-citedi-quantum-ai/` | CITEDI Quantum AI | LIVE | `events/single` | P2 |
| 12 | `/events/2024-conisoft-cnn-workshop/` | CONISOFT CNN Workshop | LIVE | `events/single` | P2 |
| 13 | `/events/2024-micoach-pytorch-bootcamp/` | MiCoach PyTorch Bootcamp | LIVE | `events/single` | P2 |
| 14 | `/events/2024-micoach-talk-deep-learning/` | MiCoach Deep Learning Talk | LIVE | `events/single` | P2 |
| 15 | `/events/2024-neo-vit-presentation/` | NEO ViT Presentation | LIVE | `events/single` | P2 |
| 16 | `/events/2024-uabc/` | UABC 2024 | LIVE | `events/single` | P2 |
| 17 | `/events/2025-foro-mujer-actual/` | Foro Mujer Actual 2025 | LIVE | `events/single` | P2 |
| 18 | `/events/2025-micoach-cnn-pytorch-bootcamp/` | MiCoach CNN PyTorch 2025 | LIVE | `events/single` | P2 |
| 19 | `/events/2025-micoach-transformers-tech-talk/` | MiCoach Transformers Tech Talk | LIVE | `events/single` | P2 |
| 20 | `/events/2025-micoach-transformers-workshop/` | MiCoach Transformers Workshop | LIVE | `events/single` | P2 |
| 21 | `/contact/` | Contact Us | LIVE | `_default/single` | P0 |

**Total live pages: 21**

---

## Page Inventory — Proposed New Pages

Pages that do not yet exist and must be created.

### Phase 1 — SF-SLICE-088 (MVP Implementation)

| # | URL | Title | Hugo Content Type | Entity | Priority |
|---|---|---|---|---|---|
| 22 | `/solutions/` | AI Solutions — Solutions | `solutions` list | Solution | P0 |
| 23 | `/solutions/neurodocs/` | NeuroDocs | `solutions` single | Solution | P0 |
| 24 | `/solutions/cv-extractor/` | CV Extractor | `solutions` single | Solution | P0 |
| 25 | `/solutions/talentbot/` | TalentBot | `solutions` single | Solution | P0 |
| 26 | `/capabilities/` | AI Capabilities | `capabilities` list | Capability | P0 |
| 27 | `/capabilities/retrieval-augmented-generation/` | Retrieval-Augmented Generation | `capabilities` single | Capability | P1 |
| 28 | `/capabilities/llm-engineering/` | LLM Engineering | `capabilities` single | Capability | P1 |
| 29 | `/capabilities/computer-vision/` | Computer Vision | `capabilities` single | Capability | P1 |
| 30 | `/capabilities/ml-model-development/` | ML Model Development | `capabilities` single | Capability | P1 |
| 31 | `/capabilities/mlops-and-ai-platform/` | MLOps & AI Platform | `capabilities` single | Capability | P1 |
| 32 | `/capabilities/ai-agents-and-automation/` | AI Agents & Automation | `capabilities` single | Capability | P1 |
| 33 | `/capabilities/responsible-ai/` | Responsible AI | `capabilities` single | Capability | P1 |
| 34 | `/capabilities/document-intelligence/` | Document Intelligence | `capabilities` single | Capability | P1 |
| 35 | `/industries/` | Industries We Serve | `industries` list | Industry | P0 |
| 36 | `/industries/healthcare/` | Healthcare AI | `industries` single | Industry | P1 |
| 37 | `/industries/life-sciences/` | Life Sciences & Pharma | `industries` single | Industry | P1 |
| 38 | `/industries/human-resources/` | Human Resources & Talent | `industries` single | Industry | P1 |
| 39 | `/industries/manufacturing/` | Manufacturing | `industries` single | Industry | P1 |
| 40 | `/industries/financial-services/` | Financial Services | `industries` single | Industry | P1 |
| 41 | `/case-studies/` | Case Studies | `case-studies` list | Case Study | P1 (placeholder) |

**New pages in Phase 1: 20 pages**

### Phase 2 — SF-SLICE-089 through 091

| # | URL | Title | Hugo Content Type | Entity | Slice |
|---|---|---|---|---|---|
| 42 | `/insights/` | Insights Hub | `insights` list | Insight | SF-091 |
| 43 | `/insights/{slug}/` | (article pages) | `insights` single | Insight | SF-091 |
| 44 | `/team/` | Our Team (future) | `team` list | Team Member | TBD |
| 45 | `/team/{slug}/` | (member pages) | `team` single | Team Member | TBD |
| 46 | `/case-studies/{slug}/` | (case study pages) | `case-studies` single | Case Study | SF-090 |
| 47 | `/solutions/custom-ai/` | Custom AI Systems | `solutions` single | Solution | SF-089 |

**New pages in Phase 2: 6+ pages (scales with content)**

---

## URL Migration Table

All URLs that currently exist and will change after SF-SLICE-088.

| Old URL (current) | New URL (proposed) | Method | Status | Notes |
|---|---|---|---|---|
| `/services/` | `/solutions/` | Hugo `aliases` + config.toml | REQUIRED | High priority — external links at risk |
| `/services/neurodocs/` | `/solutions/neurodocs/` | Hugo `aliases` in front-matter | REQUIRED | |
| `/services/cv-extractor/` | `/solutions/cv-extractor/` | Hugo `aliases` in front-matter | REQUIRED | |
| `/services/talentbot/` | `/solutions/talentbot/` | Hugo `aliases` in front-matter | REQUIRED | |

**Implementation note:** Hugo `aliases` generate HTML redirect pages that serve a `<meta http-equiv="refresh">` redirect. For GitHub Pages (no server-side redirect), this is the correct approach. Hugo publishes the old URL as an HTML file that redirects to the new URL.

**Front-matter alias syntax:**
```toml
aliases = ["/services/neurodocs/"]
```

---

## Content Creation Backlog

Content that must be authored (not just templates/structure) before the IA is fully implemented.

### Solutions (P0 — migrate from /services/)

| Content | Source | Action |
|---|---|---|
| NeuroDocs detail | `content/services/neurodocs.md` | Migrate to `content/solutions/neurodocs/index.md`; update content to match strategy language |
| CV Extractor detail | `content/services/cv-extractor.md` | Migrate to `content/solutions/cv-extractor/index.md` |
| TalentBot detail | `content/services/talentbot.md` | Migrate to `content/solutions/talentbot/index.md` |

### Capabilities (P1 — new content required)

All 8 capability pages require new content. Suggested authoring approach: AI Delivery OS mission in SF-SLICE-089.

| Capability | Key Technologies | Primary Solution Link |
|---|---|---|
| Retrieval-Augmented Generation | LangChain, vector storage, Hugging Face | NeuroDocs |
| LLM Engineering | Hugging Face Transformers, Ollama, fine-tuning | NeuroDocs, TalentBot |
| Computer Vision | YOLOv8, ViT, OpenCV | (new solutions) |
| ML Model Development | PyTorch, FastAI, XGBoost, scikit-learn | All |
| MLOps & AI Platform | Docker, Pub/Sub, GCP, model registries | CV Extractor |
| AI Agents & Automation | LangChain agents, tool use, orchestration | TalentBot |
| Responsible AI | SHAP, LIME, bias auditing, GDPR/HIPAA | All |
| Document Intelligence | OCR, NLP extraction, layout analysis | NeuroDocs, CV Extractor |

### Industries (P1 — new content required)

All 5 industry pages require new content. Suggested authoring approach: AI Delivery OS mission in SF-SLICE-089.

| Industry | Compliance Context | Primary Solution Links |
|---|---|---|
| Healthcare | HIPAA | NeuroDocs, (future clinical AI) |
| Life Sciences | FDA, EMA, ICH | NeuroDocs |
| Human Resources | GDPR | CV Extractor, TalentBot |
| Manufacturing | Quality/ISO | Computer Vision (future) |
| Financial Services | GDPR, SOC2 | (future solutions) |

### Case Studies (P2 — client approval required)

Target: 5 case studies across 5 industries. Minimum viable: 1 case study before launching `/case-studies/` as a live section.

**Priority case study candidates** (based on strongest business signal):
1. Life Sciences — NeuroDocs for pharma compliance (highest buyer intent)
2. HR — CV Extractor at enterprise scale
3. Healthcare — Clinical NLP application
4. Manufacturing — Computer vision quality control
5. Platform — AI Delivery OS meta case study (internal proof point)

### Insights / Publications (P2 — research pipeline)

Target: 3-5 publications before launching `/insights/` hub.

Existing content to migrate to `/publications/` or `/insights/`:
- `2025-multiclass-evaluation-vision-transformers.md` — already live at `/publications/`

Events content (11 existing) can surface in the Insights hub without duplication — they stay at `/events/` and are listed in the hub by type tag.

---

## Priority Ranking for Implementation

### P0 — Must exist at launch (SF-SLICE-088)

Core pages that enterprise buyers expect to find. Missing any of these creates an immediate credibility gap.

| Page | Reason |
|---|---|
| `/solutions/` | Primary buyer entry point |
| `/solutions/neurodocs/` | Live product; CTA target |
| `/solutions/cv-extractor/` | Live product; CTA target |
| `/solutions/talentbot/` | Live product; CTA target |
| `/capabilities/` | Technical buyer entry point |
| `/industries/` | Regulated buyer entry point |
| Updated `/about/` | Trust and team credibility |
| Updated `/contact/` | Conversion endpoint |
| Updated `/` Home | First impression |

### P1 — Required for complete experience (SF-SLICE-089)

| Page | Reason |
|---|---|
| 8 capability detail pages | Technical depth for VP Engineering persona |
| 5 industry detail pages | Domain credibility for regulated buyers |
| `/case-studies/` placeholder | Establishes expectation; avoid 404 |

### P2 — Growth and authority (SF-SLICE-090+)

| Page | Reason |
|---|---|
| Case study detail pages | Highest-value trust content |
| `/insights/` hub | Thought leadership aggregation |
| Individual publication pages | Research credibility |
| Team detail pages | Recruiting and personal credibility |

---

## Page Count Summary

| Phase | Slice | New Pages | Total Pages |
|---|---|---|---|
| Current state | — | — | 21 |
| Phase 1 MVP | SF-SLICE-088 | +20 | 41 |
| Phase 1 Content | SF-SLICE-089 | +0 (content updates) | 41 |
| Phase 2 Case Studies | SF-SLICE-090 | +5 (when ready) | 46 |
| Phase 2 Insights | SF-SLICE-091 | +5 (initial) | 51+ |
| Phase 2 Team | TBD | +4 (initial) | 55+ |
| Ongoing | AI Delivery OS | +N | scales |

---

## SEO Considerations

This is a preliminary note, not a full SEO strategy. SEO analysis will be performed in SF-SLICE-088 or a dedicated SEO slice.

**URL structure decisions made for SEO:**
- Descriptive slug naming (`/capabilities/retrieval-augmented-generation/` not `/capabilities/rag/`)
- Human-readable industry slugs (`/industries/life-sciences/` not `/industries/ls/`)
- No trailing date in solution URLs (solutions are timeless, not posts)

**Critical for launch:**
- 301 redirects from `/services/` to `/solutions/` must be in place before removing old content
- `canonical` meta tags should be set correctly (Hugo handles this with `canonifyURLs = true` in config)

**Deferred to later:**
- `robots.txt` optimization
- `sitemap.xml` validation
- Structured data (Schema.org for Organization, Service, Article types)
- Page-level meta descriptions
- Open Graph and Twitter Card tags

---

## Maintenance Model

Once the IA is implemented, content additions follow this process:

| Content type | Who creates it | Where it lands | Review required |
|---|---|---|---|
| New Solution | Practice Lead (human) | `content/solutions/{slug}/` | Engineering Lead |
| New Capability | AI Delivery OS mission or Engineering Lead | `content/capabilities/{slug}/` | Engineering Lead |
| New Industry | AI Delivery OS mission or Practice Lead | `content/industries/{slug}/` | Practice Lead |
| New Insight | AI Delivery OS mission or team member | `content/insights/{slug}/` | Practice Lead |
| New Publication | Author or AI Delivery OS | `content/publications/{slug}/` | Research Lead |
| New Case Study | Practice Lead (with client approval) | `content/case-studies/{slug}/` | Client + Practice Lead |
| New Event | Operations | `content/events/{slug}/` | Operations |
| Team update | Practice Lead | `content/team/{slug}/` or `data/team.yaml` | Practice Lead |
