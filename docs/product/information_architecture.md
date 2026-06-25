# AI Solutions — Information Architecture

**Document:** Information Architecture Definition  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-087F-INFORMATION-ARCHITECTURE  
**Date:** 2026-06-25  
**Status:** PROPOSED — Pending implementation in SF-SLICE-088  
**Depends on:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/content_model.md`, `docs/product/website_objectives.md`  
**Audience:** Practice Lead, Engineering Lead, Marketing, AI Delivery OS mission authors

---

## Purpose

This document defines the proposed information architecture for the AI Solutions Digital Platform. It establishes the page hierarchy, URL structure, content groupings, page-level purpose, and entity-to-page mappings that will govern all future website implementation.

This is a strategy and architecture document only. No templates, content files, or CSS are modified by this slice.

---

## Current-State Assessment

### What Exists Today

| Page | URL | Status | Notes |
|---|---|---|---|
| Home | `/` | Live | Custom layout; hero, quick-links, featured service, why-itj, CTA |
| About | `/about/` | Live | Mission/Vision, Goals, Partners, Team (4 members hardcoded) |
| Services | `/services/` | Live | Services overview; 3 service cards (NeuroDocs, CV Extractor, TalentBot) |
| NeuroDocs | `/services/neurodocs/` | Live | Individual service detail page |
| CV Extractor | `/services/cv-extractor/` | Live | Individual service detail page |
| TalentBot | `/services/talentbot/` | Live | Individual service detail page |
| Publications | `/publications/` | Live (sparse) | 1 publication live; 11 events listed as publications |
| Events | `/events/` | Live | 11 events across 2024–2025 |
| Contact | `/contact/` | Live | FormSubmit.co form + contact info |

### Current Navigation (config.toml)

```
Home → /
About → /about/
Services → /services/
Publications → /publications/
Events → /events/
Contact → /contact/
```

### Current-State Problems

**IA-P01: "Services" label understates capability**  
"Services" implies generic consulting. Enterprise AI buyers look for "Solutions" or "Capabilities." The current label does not match any of the 6 buyer personas defined in the product strategy.

**IA-P02: No Capabilities section**  
There is no entry point for the technical buyer journey. Senior AI engineers and VP Engineering personas cannot find what AI methods, frameworks, or engineering capabilities AI Solutions possesses. This is a critical gap for the second most important audience segment.

**IA-P03: No Industries section**  
There is no dedicated industry context for enterprise buyers in healthcare, life sciences, or HR/talent. Industry-specific claims (HIPAA, pharma compliance) are buried in service detail pages. This forces the buyer to infer rather than discover.

**IA-P04: Publications and Events are siloed**  
Publications and Events are separate top-level nav items with no connecting hub. Thought leadership content (papers, talks, blog posts) is fragmented. No discovery path exists from a publication to related capabilities or solutions.

**IA-P05: No Case Studies section**  
The product strategy identifies case studies as Priority 1 content. There is no page, section, or URL structure to host them. When case study content becomes available, there is no place to publish it.

**IA-P06: About page conflates everything**  
The About page contains mission, vision, goals, partners, and team — all as a single flat markdown file. Team content cannot be linked to independently. Partner content has no canonical URL. Individual team members cannot be featured with individual pages.

**IA-P07: Home page sections are not conversion-optimized**  
The home page quick-links point to Services, Publications, Events, and Contact. The buyer journey is not structured. A technical buyer who arrives at Home has no clear next step toward a discovery call.

**IA-P08: No footer IA**  
The footer is currently the PaperMod default. It provides no secondary navigation, no conversion path, and no quick access to key content. Footer content is a missed conversion opportunity.

**IA-P09: /services/ URL will need migration**  
Moving to /solutions/ is architecturally correct but requires 301 redirects to preserve any existing SEO value and incoming links.

**IA-P10: Hardcoded team data**  
Team members are hardcoded in `content/about/_index.md` as raw HTML. Adding or updating team members requires template edits. This cannot be automated by AI Delivery OS missions without migrating to a data-driven team model.

---

## IA Principles

These principles govern all future page and navigation decisions.

### P1 — Buyer-First Hierarchy

The top-level navigation reflects buyer intent, not our internal org structure. Buyers ask: "What do you do? For whom? Can you prove it? How do I engage?" The IA answers these in order.

### P2 — No Dead Ends

Every page ends with a clear next step. The next step is either a related page (depth) or a conversion CTA (contact/demo). No page should leave the user without direction.

### P3 — Entity-Driven Structure

Pages map to content model entities (Capability, Solution, Industry, Insight, Case Study). This enables AI Delivery OS missions to publish content into the IA without manual template decisions.

### P4 — Stable URLs

Once a URL is published, it does not change without a 301 redirect in place. The `/services/` to `/solutions/` migration must include Hugo alias directives.

### P5 — Progressive Disclosure

Overview pages (list views) give enough context to make a click decision. Detail pages (single views) provide depth. The home page surfaces only the most compelling signals from each section.

### P6 — Separation of Concerns

Solutions (what we've built), Capabilities (what we can do), and Industries (who we serve) are separate sections — not merged. Cross-linking between them is the mechanism for discovery, not hierarchy merging.

### P7 — Conversion at Every Level

Every page type — overview, detail, insight, case study — has a contextually appropriate CTA. For solution pages: "Request a Demo." For capability pages: "Talk to our AI team." For case study pages: "See what we can build for you."

---

## Proposed Information Architecture

### Level 0 — Top-Level Navigation

```
Home
├── Solutions
├── Capabilities
├── Industries
├── Insights
├── About
└── Contact
```

Seven navigation items including Home. This replaces the current six (Home, About, Services, Publications, Events, Contact) and restructures for the buyer journey.

### Rationale for Each Top-Level Item

| Nav Item | Replaces | Reason |
|---|---|---|
| Solutions | Services | "Solutions" communicates outcome-oriented value; "Services" implies vendor activity |
| Capabilities | — (new) | Required entry point for the VP Engineering / technical buyer persona |
| Industries | — (new) | Required entry point for regulated industry buyers (healthcare, life sciences, HR) |
| Insights | Publications + Events | Consolidates scattered thought leadership into a single discoverable hub |
| About | About | Keep; restructure content internally |
| Contact | Contact | Keep; link prominently from every section |

### Level 1 — Section Overviews

Each top-level nav item has a section overview (list/hub) page plus individual entity detail pages.

```
/ (Home)

/solutions/ (Solutions overview)
├── /solutions/neurodocs/
├── /solutions/cv-extractor/
├── /solutions/talentbot/
└── /solutions/custom-ai/ (future)

/capabilities/ (Capabilities overview)
├── /capabilities/retrieval-augmented-generation/
├── /capabilities/llm-engineering/
├── /capabilities/computer-vision/
├── /capabilities/ml-model-development/
├── /capabilities/mlops-and-ai-platform/
├── /capabilities/ai-agents-and-automation/
├── /capabilities/responsible-ai/
└── /capabilities/document-intelligence/

/industries/ (Industries overview)
├── /industries/healthcare/
├── /industries/life-sciences/
├── /industries/human-resources/
├── /industries/manufacturing/
└── /industries/financial-services/

/insights/ (Insights hub)
├── /insights/{slug}/ (blog posts, articles, opinion)
├── /publications/ (keep at current URL — alias to /insights/publications/)
└── /events/ (keep at current URL — alias to /insights/events/)

/case-studies/ (Case Studies overview)
└── /case-studies/{slug}/ (individual case studies)

/about/ (About overview)
└── /team/{slug}/ (individual team member pages — future)

/contact/ (Contact)
```

Note: `/case-studies/` is not in the primary nav. It is linked from the footer, from Solutions pages, from Capabilities pages, and from Industries pages. It becomes a primary nav item when 3+ case studies are live.

---

## Page-Level Purpose

### Home (`/`)

**Business purpose:** Make the first impression that earns a second click. Communicate what AI Solutions is, why it is different, and what a visitor should do next.

**Primary audience:** Executive Decision-Makers (Persona 1), first-time visitors.

**Content sections (proposed):**
1. Hero — Position statement + north star quote + primary CTA ("Talk to our AI team")
2. Problem/Solution — The 85% stat + how AI Solutions solves it (1-2 paragraphs, not a wall of text)
3. Solutions grid — 3 solution cards + "Custom AI" card, each linking to detail page
4. Key capabilities — 4 capability highlights (icons, 1-line descriptions, links to /capabilities/)
5. Industries — 5 industry badges linking to /industries/ section
6. Social proof — 10+ deployed, 100+ clients, 4-6 week PoC, GDPR/HIPAA badges
7. Team signals — 2–3 team credential signals (PhD, published, production)
8. CTA — "Let's Talk" or "Schedule a Discovery Call"

**Current state:** Has hero, quick-links (Services/Publications/Events/Contact), featured CV Extractor, Why ITJ, CTA. Needs restructuring to match proposed sections above in SF-SLICE-088.

**Conversion goal:** Schedule discovery call.

---

### Solutions Overview (`/solutions/`)

**Business purpose:** Present AI Solutions' deployable products to buyers who are evaluating specific AI applications.

**Primary audience:** Personas 1, 2, 3, 4, 5 — everyone with a specific problem to solve.

**Content sections:**
1. Section header — "What We've Built" / "Accelerators and Custom AI Systems"
2. Solution cards — NeuroDocs, CV Extractor, TalentBot, + "Custom AI" card
3. Engagement model — How engagements work (PoC → Production → Operations); 4-6 week timeline
4. Compliance statement — GDPR, HIPAA — built in from day one
5. CTA — "Talk to us about your use case"

**Entity type:** `Solution` list view

---

### NeuroDocs (`/solutions/neurodocs/`)

**Business purpose:** Convert a Life Sciences or Healthcare buyer who needs document AI into a discovery call.

**Content sections:**
1. Solution header + tagline
2. Problem statement — Pharma compliance document management is manual, error-prone, and audit-risky
3. What NeuroDocs does — RAG architecture, LLM fine-tuning, customizable document workflows
4. Use cases — Pharma compliance reports, medical records tagging, regulatory filing support
5. Technology — Hugging Face Transformers, LangChain, vector storage, custom LLM
6. Compliance — HIPAA, FDA, EMA alignment
7. Deployment timeline — PoC 4-6 weeks, Production 3-4 months
8. Related industries — /industries/life-sciences/, /industries/healthcare/
9. Related capabilities — /capabilities/retrieval-augmented-generation/, /capabilities/document-intelligence/
10. CTA — "Request a NeuroDocs Demo"

**Entity type:** `Solution` single view

**URL migration:** `/services/neurodocs/` → `/solutions/neurodocs/` (Hugo aliases)

---

### CV Extractor (`/solutions/cv-extractor/`)

**Business purpose:** Convert an HR/Talent Operations buyer into a demo request.

**Content sections:**
1. Solution header + tagline
2. Problem — Manual resume review at scale is expensive, inconsistent, and biased
3. What CV Extractor does — Pub/Sub pipelines, NLP extraction, structured output
4. Output formats — JSON and CSV for ATS integration
5. Scale — High-throughput batch processing
6. Use cases — Bulk candidate screening, HR automation, ATS enrichment
7. Compliance — GDPR data handling
8. Deployment — 2-3 weeks for integration
9. Related capabilities — /capabilities/document-intelligence/, /capabilities/ml-model-development/
10. Related industries — /industries/human-resources/
11. CTA — "Request a CV Extractor Demo"

**Entity type:** `Solution` single view

**URL migration:** `/services/cv-extractor/` → `/solutions/cv-extractor/` (Hugo aliases)

---

### TalentBot (`/solutions/talentbot/`)

**Business purpose:** Convert an HR buyer who needs conversational AI for recruiting.

**Content sections:**
1. Solution header + tagline
2. Problem — Recruiters spend too much time on repetitive screening and screening quality is inconsistent
3. What TalentBot does — Conversational AI, candidate screening, interview prep, pre-hiring assessment
4. Integration — How it connects to existing HR workflows
5. Use cases — Automated first-round screening, interview preparation assistance, candidate Q&A
6. Compliance — GDPR, fair hiring practices
7. Related capabilities — /capabilities/ai-agents-and-automation/, /capabilities/llm-engineering/
8. Related industries — /industries/human-resources/
9. CTA — "Request a TalentBot Demo"

**Entity type:** `Solution` single view

**URL migration:** `/services/talentbot/` → `/solutions/talentbot/` (Hugo aliases)

---

### Capabilities Overview (`/capabilities/`)

**Business purpose:** Give technical buyers (VP Engineering, Head of AI) a full view of what AI Solutions can build. This is the primary landing page for the technical evaluation journey.

**Content sections:**
1. Section header — "What We Can Build"
2. Capability cards — 8 capabilities organized by strategic pillar
3. Methodology callout — CRISP-ML(Q) + scientific method — linked to Services or a standalone methodology page
4. Technology stack — Tech logos grid (current content from /services/)
5. CTA — "Discuss your technical requirements"

**Entity type:** `Capability` list view

---

### Capability Detail Pages (`/capabilities/{slug}/`)

**Business purpose:** Deep-dive technical content that demonstrates AI Solutions' depth in a specific AI engineering area.

**Content sections per capability:**
1. Capability header + maturity badge (Production / Growing / Emerging)
2. What this capability is — technical definition and why it matters
3. How AI Solutions delivers it — our approach, methodology, frameworks used
4. Use cases — 3-5 specific applications
5. Technology — relevant stack items
6. Solutions that use this capability — links to /solutions/
7. Industries where applied — links to /industries/
8. Related publications — links from /publications/ or /insights/
9. CTA — "Talk to our {capability} team"

**Entity type:** `Capability` single view

---

### Industries Overview (`/industries/`)

**Business purpose:** Give regulated-industry buyers immediate confirmation that AI Solutions understands their domain context.

**Content sections:**
1. Section header — "Industries We Serve"
2. Industry cards — 5 industries with compliance context and relevant solution badges
3. Compliance statement — GDPR/HIPAA block
4. CTA — "Tell us about your industry"

**Entity type:** `Industry` list view

---

### Industry Detail Pages (`/industries/{slug}/`)

**Business purpose:** Confirm deep domain understanding for a specific industry. Support the compliance/procurement due-diligence process.

**Content sections per industry:**
1. Industry header + compliance context badge
2. AI landscape in this industry — 2-3 paragraph context
3. Top AI pain points — 3-5 specific problems AI Solutions addresses
4. Solutions for this industry — cards linking to /solutions/
5. Capabilities applied — links to /capabilities/
6. Compliance coverage — specific standards and how AI Solutions addresses them
7. Case studies in this industry (when available) — links to /case-studies/
8. CTA — "Talk to our {industry} team"

**Entity type:** `Industry` single view

---

### Insights Hub (`/insights/`)

**Business purpose:** Aggregate all thought leadership content — articles, blog posts, publications, case studies, event write-ups — into a searchable/filterable hub.

**Content sections:**
1. Section header — "Insights from AI Solutions"
2. Filter bar — All | Engineering | Research | Events | Case Studies | Industry
3. Featured article/publication
4. Insights feed — cards with type badge, title, author, date, tags, excerpt
5. CTA — "Subscribe" (future, when newsletter is ready)

**Note:** Publications at `/publications/` and Events at `/events/` keep their current URLs to avoid breaking links. They are aliased into `/insights/` as sub-sections. The Insights nav item links to `/insights/` (the hub), not `/publications/`.

**Entity types:** `Insight`, `Publication`, `Event` (consolidated view)

---

### Insight Detail Pages (`/insights/{slug}/`)

**Business purpose:** Provide full-text thought leadership content that builds credibility, drives return visits, and surfaces conversion CTAs.

**Content sections:**
1. Article header (title, author, date, tags)
2. Full content body
3. Related capabilities — sidebar or inline links
4. Related case studies — sidebar or inline links
5. Author card — links to team member page (when /team/ is live)
6. CTA — "Interested in how we applied this? Talk to our team."

**Entity type:** `Insight` single view

---

### Case Studies Overview (`/case-studies/`)

**Business purpose:** Surface the most important trust-building content — client outcomes — for buyers in the evaluation stage.

**Note:** This section will be empty at launch. A placeholder page ("Case studies coming soon — here's what we're delivering") is recommended to prevent a 404 for any nav-linked pages that reference it.

**Content sections (when content exists):**
1. Section header
2. Filter by industry / capability
3. Case study cards — industry, capability, headline outcome
4. CTA — "Ask us about working together"

**Entity type:** `Case Study` list view

---

### Case Study Detail (`/case-studies/{slug}/`)

**Content sections:**
1. Challenge narrative
2. Solution architecture
3. Outcome metrics
4. Timeline
5. Technologies used
6. Related solutions and capabilities
7. Client quote (if approved)
8. CTA — "See what we can build for you"

**Entity type:** `Case Study` single view

---

### About (`/about/`)

**Business purpose:** Build human trust. Demonstrate that AI Solutions is a team of real experts with a legitimate track record — not a marketing facade.

**Content sections:**
1. Mission and Vision statements
2. The AI Delivery OS — why our own platform proves our capability (brief, not a product pitch)
3. Team section — cards with photo, title, bio, credentials, links
4. Holistic goals (keep current content, update language to match product strategy)
5. Partners — university and institutional partners
6. CTA — "Join us" (for recruiting) + "Work with us" (for clients)

**Current state:** All in `content/about/_index.md` as hardcoded HTML. Needs content restructuring in SF-SLICE-088 but no structural IA changes.

---

### Contact (`/contact/`)

**Business purpose:** Complete the conversion. Make it easy for any persona to reach AI Solutions via their preferred channel.

**Content sections:**
1. Page header — "Let's Talk" or "Start a Conversation"
2. Context setter — 2 lines: "Whether you're ready to start a project or just want to explore what AI can do for your organization — we're ready to talk."
3. Contact form (FormSubmit.co currently; CRM integration deferred to SF-094)
4. Direct contact info — email, WhatsApp, LinkedIn
5. Response time signal — "We respond within 1 business day"

**Current state:** Functional. Content update only in SF-SLICE-088.

---

## Content Entity to Page Mapping

| Content Entity | Hugo Type | Primary Page | Also Surfaced On |
|---|---|---|---|
| Solution | `solutions` | `/solutions/{slug}/` | Home (cards), Industries detail, Capabilities detail |
| Capability | `capabilities` | `/capabilities/{slug}/` | Solutions detail, Industries detail, Insights sidebar |
| Industry | `industries` | `/industries/{slug}/` | Solutions detail, Capabilities detail, Case Study detail |
| Publication | `publications` | `/publications/{slug}/` | `/insights/` hub, Capabilities detail sidebar, About team |
| Case Study | `case-studies` | `/case-studies/{slug}/` | `/insights/` hub, Solutions detail, Industries detail |
| Insight | `insights` | `/insights/{slug}/` | `/insights/` hub, Capabilities detail sidebar |
| Event | `events` | `/events/{slug}/` | `/insights/` hub |
| Team Member | `team` (future) | `/team/{slug}/` (future) | About page, Insight author card, Publication author |
| Technology | (reference only) | No dedicated page | Solutions detail, Capabilities detail, Case Studies |
| Partner | (reference only) | No dedicated page | About page partners section |

---

## URL Migration Plan

The current `/services/` section must migrate to `/solutions/` to align with the product strategy. Hugo's `aliases` front-matter handles this natively.

| Old URL | New URL | Method | Priority |
|---|---|---|---|
| `/services/` | `/solutions/` | Hugo alias + config.toml menu | High |
| `/services/neurodocs/` | `/solutions/neurodocs/` | Hugo alias in front-matter | High |
| `/services/cv-extractor/` | `/solutions/cv-extractor/` | Hugo alias in front-matter | High |
| `/services/talentbot/` | `/solutions/talentbot/` | Hugo alias in front-matter | High |
| `/publications/` | `/insights/` (hub) | Keep current URL; add /insights/ alias | Low (Phase 2) |
| `/events/` | `/insights/` (hub) | Keep current URL; add /insights/ alias | Low (Phase 2) |

**Important:** Until the new content directories and aliases are in place, existing URLs must remain live. Do not rename content directories without simultaneously adding Hugo aliases.

---

## Risks and Assumptions

### Risk: Case studies will be empty at launch

**Likelihood:** High. Client approval takes time. Publishing empty placeholder pages is better than broken nav links.

**Mitigation:** Add `/case-studies/` to footer nav only (not primary nav) until at least one case study is live. Placeholder page with "coming soon" message and contact CTA.

### Risk: `/services/` has incoming links

**Likelihood:** Medium. LinkedIn posts, conference materials, and partner references may link to `/services/`.

**Mitigation:** Hugo `aliases` in content front-matter generate HTML redirect pages at the old URL paths. These must be in place before renaming content directories.

### Risk: Team data is hardcoded

**Likelihood:** Certain. The current team section in `about/_index.md` is raw HTML. Adding or updating a team member requires a developer edit.

**Mitigation:** In SF-SLICE-088, migrate team data to Hugo data files (`data/team.yaml`) or individual content files (`content/team/{slug}.md`). This enables AI Delivery OS missions to update team content.

### Risk: Publications section is sparse

**Likelihood:** Certain. 1 publication is live. The Insights hub will look empty at launch.

**Mitigation:** Publish 3–5 publications before launching the Insights hub. Use the AI Delivery OS to accelerate publication content authoring in SF-SLICE-091.

### Risk: Capabilities section requires new template work

**Likelihood:** Certain. There is no `capabilities` content type or template. Creating capability pages requires Hugo content type + template development in SF-SLICE-088.

**Mitigation:** Define the capability front-matter schema in this IA. Implement templates in SF-SLICE-088. This is expected work, not a blocker.

### Risk: Industries section has no precedent in PaperMod

**Likelihood:** Certain. Industry pages require a custom single and list template.

**Mitigation:** Industries follow the same template pattern as Capabilities. Both are new content types. Implement together in SF-SLICE-088.

### Assumption: Primary nav sidebar supports 7 items

Current nav CSS supports 6 items cleanly. Adding a 7th item (Industries) needs verification. If the sidebar overflows on mobile, collapse Industries under Solutions or add it to footer-only nav until the nav template is extended.

### Assumption: /insights/ hub is a new Hugo content type

There is no current `insights` content directory. This will be a new Hugo section with its own list template. Publications and Events will be cross-referenced via data or taxonomy, not physically moved in Phase 1.

---

## Open Decisions

| Decision | Options | Owner | Timeline |
|---|---|---|---|
| OD-01: Should /case-studies/ appear in primary nav or footer only at launch? | (A) Footer only until 1+ case study live (recommended); (B) Primary nav with placeholder | Practice Lead | Before SF-SLICE-088 |
| OD-02: Should /publications/ redirect to /insights/ in Phase 1 or Phase 2? | (A) Keep /publications/ standalone, link from /insights/; (B) Full merge in Phase 1 | Engineering Lead | Before SF-SLICE-088 |
| OD-03: Should individual team member pages (/team/{slug}/) launch with SF-SLICE-088? | (A) Yes — 4 current team members; (B) No — defer to separate team slice | Practice Lead | Before SF-SLICE-088 |
| OD-04: Should a /methodology/ page be created for CRISP-ML(Q)? | (A) Yes — standalone page linked from Capabilities; (B) No — embed in Capabilities overview | Engineering Lead | Before SF-SLICE-089 |
| OD-05: Should partner logos remain on About, or get /partners/ section? | (A) Keep on About (recommended for current scale); (B) /partners/ when 5+ formal partners | Practice Lead | Annual review |
| OD-06: Primary nav item wording for capabilities | (A) "Capabilities"; (B) "How We Build"; (C) "AI Engineering" | Practice Lead + Marketing | Before SF-SLICE-088 |
| OD-07: Should Events merge into /insights/ or remain standalone? | (A) Keep /events/ and cross-link from /insights/; (B) Full merge | Engineering Lead | Before SF-SLICE-091 |

---

## Next Slice Recommendation

### Immediate next: SF-SLICE-088 — Website MVP Implementation

**Scope:**
1. Rename `/services/` content directory to `/solutions/`, adding Hugo `aliases` in all service front-matter files
2. Create `content/capabilities/` directory with 8 capability content files (front-matter + brief initial content)
3. Create `content/industries/` directory with 5 industry content files
4. Create Hugo templates: `layouts/capabilities/`, `layouts/industries/`, `layouts/solutions/`
5. Update `config.toml` nav to reflect 7-item proposed nav
6. Update Home page template to reflect proposed section structure
7. Update About page content to match product strategy language
8. Create `/case-studies/` placeholder page (no content yet)
9. Apply Hugo `aliases` for all `/services/` → `/solutions/` redirects

**Do not include in SF-SLICE-088:**
- Case study content (requires client approval)
- /insights/ hub template (defer to SF-SLICE-091)
- Individual team member pages (separate slice or part of About update)
- Publication content authoring (SF-SLICE-091)

**Estimated complexity:** High. This is the core implementation slice. Plan for 3–4 implementation waves within the slice.

### Follow-on: SF-SLICE-089 — Capability and Industry Content

Populate capability and industry pages with full content, technology, and cross-links.

### Follow-on: SF-SLICE-090 — Case Studies Infrastructure

Build case study templates and placeholder structure. Begin client approval conversations.

### Follow-on: SF-SLICE-091 — Insights Hub

Create the `/insights/` hub. Publish 3-5 publications. Establish AI Delivery OS publication mission pattern.
