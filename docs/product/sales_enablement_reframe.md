# AI Solutions Website — Sales Enablement Reframe

**Document:** Sales Enablement Strategy and Reframe  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-087H-SALES-ENABLEMENT-REFRAME  
**Date:** 2026-06-25  
**Status:** APPROVED DIRECTION — Supersedes or refines 087G gap analysis; input for SF-SLICE-088  
**Audience:** General Manager, Practice Lead, Engineering Lead, Sales Team  
**Depends on:** `087D` (Design System), `087E` (Product Strategy), `087F` (Information Architecture), `087G` (Content Blueprints)

---

## Executive Summary

The AI Solutions website currently operates as a generic marketing site. It lists what we do. It shows who is on the team. It has a contact form.

That is not what the site needs to be.

The site's highest-value function is **sales enablement**: equipping the sales team with a URL they can drop into any conversation, and equipping prospects with the information they need to go from first conversation to technical discovery call without requiring a salesperson to be present.

This reframe has three direct consequences:

1. **Navigation and structure shift from "what we are" to "what we solve."** Capabilities and industries lead. Engagement model is a primary nav item. Team composition is represented by roles, not by individuals.

2. **Content blockers from SF-087G are reclassified.** Most of the 8 executive decisions that "blocked" SF-088 were blocking a marketing site. For a sales enablement portal, several are non-blocking: use qualified language, role-based team representation, and placeholder metrics. The list of hard blockers drops from 8 to 2.

3. **SF-SLICE-088 can proceed now.** Structure, navigation, templates, and role-based content can be built immediately. The two remaining hard blockers (hero headline, company name) are addressable this week.

**Revised SF-SLICE-088 status: READY TO PROCEED** with the constraints defined in Section 10.

---

## 1. Revised Website Purpose

### Previous framing (087E)

> "A platform through which enterprises discover us, evaluate our capabilities, engage with our research, and decide to partner with us."

This is accurate but incomplete. It describes all possible uses equally. In practice, one use dominates.

### Sales Enablement framing (087H)

The primary purpose of the AI Solutions website is:

> **A sales enablement portal that bridges the gap between first sales conversation and technical discovery call.**

The site exists to:
- Give the sales team a credible, specific URL to share after any first conversation
- Let prospects self-qualify: "Do these people understand my industry? Can they solve my problem? What does engaging with them look like?"
- Reduce the number of generic discovery calls by answering the baseline qualification questions in advance
- Give enterprise buyers the depth they need to bring AI Solutions into a formal evaluation or RFP

Everything else — thought leadership, recruiting, partner enablement, public credibility — is secondary. Not unimportant. Secondary.

This distinction matters because it determines what content goes on the site, what nav items appear, and what the home page says.

---

## 2. What the Site Is and Is Not

### It is primarily:

| Role | Description |
|---|---|
| **Sales enablement portal** | A prospect-facing capability reference that a salesperson can share immediately after any first conversation |
| **Capability showcase** | A structured inventory of what AI Solutions can build, organized by problem domain and technology capability |
| **Credibility platform** | Evidence that the team knows what it is doing — through methodology, technology depth, publications, and (eventually) case studies |
| **Bridge to technical discovery** | Enough depth that a VP Engineering can pre-qualify AI Solutions before agreeing to a 30-minute call |

### It is not primarily:

| Not primary | Why |
|---|---|
| A personal team directory | Individual profiles signal key-person risk to enterprise buyers; role-based representation signals organizational depth |
| A blog-first website | Publishing cadence should not drive site architecture; Insights is Phase 2 |
| A generic corporate marketing site | Generic marketing sites are forgettable; this site needs to be the resource a prospect returns to during evaluation |
| A recruiting-first site | Recruiting is served by the About page and Publications; it does not need its own nav item |
| A public AI Delivery OS product page | The AI Delivery OS is an internal accelerator, not a client product; it is a proof point, not a primary nav item |

---

## 3. Primary and Secondary Audiences

### Primary Audience — Sales-Adjacent Prospects

These are people the sales team has already spoken with, or who were referred by someone who has.

| Persona | What they need from the site |
|---|---|
| **Executive Sponsor** (CAIO, CDO, VP) | Credibility, strategic fit, "will this team understand my industry?" |
| **Technical Evaluator** (VP Engineering, Head of AI) | Capability depth, methodology, technology stack, publications |
| **Domain Buyer** (HR Director, Regulatory Affairs Director) | Solution specifics, industry compliance posture, case studies |

These three personas make or influence every enterprise AI partnership decision. The site must serve all three in a single visit — or in parallel visits by the same prospect company.

### Secondary Audience — Cold Discovery

Prospects who find the site through search, LinkedIn, conference references, or publication citations. They arrive without context. The site must establish credibility in 8 seconds (the time a cold visitor stays on a homepage before deciding to scroll or leave).

For cold discovery, the same structure serves both audiences: the executive sees "we solve your production AI problem," the engineer sees "they understand RAG and MLOps," the domain buyer sees their industry in the nav.

### Tertiary Audience — Recruiting

AI engineers and researchers evaluating whether to join AI Solutions. Served by About (mission, culture), Capabilities (technical environment), and Publications (research credibility). No separate section needed in Phase 1.

---

## 4. Sales Enablement User Journey

This is the primary journey the site is designed to support.

```
Step 1: First sales conversation
  Sales team has an initial call/meeting with a prospect.
  They share the AI Solutions URL: "Take a look at what we've built
  and how we work — the Capabilities and Industries pages in
  particular are worth your time."

Step 2: Prospect visits the site independently
  The prospect (or their technical evaluator) visits without
  a salesperson present. They are self-qualifying AI Solutions
  against their internal criteria.

Step 3: Prospect evaluates along three tracks (often simultaneously)
  Track A — Executive: Home → About → Solutions → Contact
  Track B — Technical: Capabilities → (specific capability) → Publications → Contact
  Track C — Domain: Industries → (specific industry) → Solutions → Contact

Step 4: Prospect self-qualifies
  The site answers: "Do they solve problems like mine?
  Do they know my industry? How would we engage?"

Step 5: Prospect initiates contact
  They either contact directly via the Contact page, or return to
  the sales conversation with specific questions about capability
  or engagement model — which is exactly where the sales team
  wants them.

Step 6: Technical discovery call
  The discovery call starts from a higher baseline. The prospect
  already knows what AI Solutions does. The conversation can go
  directly to their specific problem.
```

The current site breaks at Steps 3 and 4. No capabilities section exists. No industries section exists. No engagement model exists. The prospect cannot self-qualify.

---

## 5. Team Representation Policy

### Current approach (problem)

The current About page presents individual team members with names, titles, and LinkedIn links. This approach has two problems for enterprise sales:

1. **Key-person risk signal.** Enterprise buyers see "small number of named individuals" and ask: "What happens if one of these people leaves?" A named-person dependency is a risk in a long-term partnership.

2. **Quantitative underrepresentation.** If 4 people are listed, enterprise buyers assume the team is 4 people. A team of 14 looks underpowered against a $2M engagement. Role-based representation signals organizational depth without implying any specific head count.

### Proposed approach (sales enablement)

Represent the team by **roles and capabilities**, not by individuals.

**Replace:**
> "Meet the team: [Photo] Miguel — Data Scientist. [Photo] Ana — AI Engineer."

**With:**
> "Our team includes:
> - AI Engineers — production model development, inference optimization, deployment
> - Data Engineers — pipeline architecture, feature stores, vector databases
> - Data Scientists — model research, experiment design, performance analysis
> - AI Architects — system design, scalability, multi-system integration
> - MLOps Engineers — CI/CD for ML, model monitoring, drift detection
> - AI Consultants — engagement strategy, use case framing, client delivery"

This represents the same team more credibly. It says "we have all the roles required to deliver end-to-end" without implying any specific count.

### What to keep from team content

Individual names are still appropriate in:
- **Publications** — authored papers must credit the author
- **Events** — conference talks must name the speaker
- **Case studies** — the team section of a case study may list the roles who worked on the project (without names unless clients/speakers)

Individual LinkedIn links and photos belong in recruiting content (a potential future `/careers/` or `/join/` page), not in the primary About page.

### About page team section — new structure

```
Our Team

AI Solutions is a cross-functional AI engineering team. Every 
engagement is staffed with the roles the project requires.

[Role card: AI Engineers]
  Build production AI systems — from model architecture through
  inference optimization and deployment.

[Role card: Data Scientists]
  Design experiments, validate hypotheses, and ensure models
  meet performance requirements before production.

[Role card: Data Engineers]
  Build the data pipelines, feature stores, and vector databases
  that make AI systems reliable at enterprise scale.

[Role card: AI Architects]
  Design multi-system integrations and scalable AI platform
  architectures for enterprise environments.

[Role card: MLOps Engineers]
  Build CI/CD pipelines for ML models, implement monitoring,
  detect drift, and maintain production AI health.

[Role card: AI Consultants]
  Frame problems, define success criteria, and ensure every
  engagement delivers measurable business value.

[CTA: Work with our team → /contact/]
```

---

## 6. Recommended Navigation — MVP

### Evaluation of 7-item proposal from slice spec

The slice spec proposes:
```
Home | Solutions | Capabilities | Industries | How We Engage | Insights | Contact
```

This is the right structure. Analysis:

| Item | Sales enablement value | Keep? |
|---|---|---|
| Home | Universal entry point | Yes |
| Solutions | What problems we solve and with what systems | Yes |
| Capabilities | Technical depth — what we can build | Yes |
| Industries | Domain credibility — do we know your industry | Yes |
| How We Engage | Converts evaluation to action — critical for sales enablement | **Yes — new addition** |
| Insights | Phase 2; deferred until ≥5 articles | Conditional — see below |
| Contact | Always reachable | Yes |

### Recommended MVP nav (Phase 1 — SF-SLICE-088)

```
Home | Solutions | Capabilities | Industries | How We Engage | Contact
```

6 items. Insights deferred.

**Rationale for keeping Insights deferred:**

From the 087F navigation model: "A sparse hub damages credibility more than a missing nav item." With only 1 publication and 11 events at launch, the Insights hub will appear empty to a prospect. Empty sections undermine the "established practice" credibility signal.

Insights enters the nav in Phase 2 (SF-SLICE-091) when the hub has ≥5 items across publications, articles, and event summaries.

### Recommended Phase 2 nav (post SF-SLICE-091)

```
Home | Solutions | Capabilities | Industries | How We Engage | Insights | Contact
```

7 items — at the N2 maximum defined in the navigation model.

### "How We Engage" nav placement

"How We Engage" is placed after Industries and before Contact deliberately. The buyer journey sequence is:

```
What do you solve? (Solutions)
→ How do you solve it? (Capabilities)
→ Do you know my domain? (Industries)
→ What would working with you look like? (How We Engage)
→ Let's talk. (Contact)
```

This sequence mirrors the sales conversation and makes the site a self-guided version of the first discovery call.

---

## 7. "Technologies" Placement Decision

### The question

Should "Technologies" appear as:
- (A) A first-class top-level nav item, or
- (B) A supporting section under Capabilities and/or Insights

### Recommendation: Option B — under Capabilities

**Why technologies do not belong in primary nav:**

Enterprise buyers do not start their evaluation by asking "what technologies do you use?" They start with:
1. "What problems do you solve?" (Solutions)
2. "What capabilities do you have?" (Capabilities)
3. "Have you done this in my industry?" (Industries)

Technology stack is **evidence that supports capability claims**, not a primary entry point. A "Technologies" nav item implies that choosing AI Solutions is about the technology choice rather than the outcome — the wrong framing for enterprise sales.

**Where Technologies belongs:**

1. **On each Capability detail page:** "How we implement this capability" section with specific tools (e.g., the RAG capability page lists LangChain, Hugging Face, vector databases).
2. **On each Solution detail page:** "Technology stack" section (e.g., NeuroDocs lists the specific LLM stack).
3. **On the "How We Engage" page:** A "Technology approach" section that frames the philosophy (open-source first, cloud-agnostic, production-grade tooling) without being a technology catalog.
4. **In the footer:** A "Technology" or "Tech Stack" link can appear in the footer Company column as a secondary resource without creating a nav item.
5. **In Publications:** Technical papers naturally surface the technology choices in depth for the technical evaluator audience.

**If a Technology page is needed in the future:**

A standalone `/technology/` page (accessible from footer and from Capabilities page) could serve the technical evaluator audience without adding a nav item. This is a Phase 2 consideration.

---

## 8. "How We Engage" — New Page Specification

This page is the most important addition in the 087H reframe. It does not currently exist.

### Page purpose

Answer the question every serious prospect asks before initiating contact:

> "What does working with AI Solutions actually look like? What happens after I submit the form?"

This page converts evaluation to action by making the engagement model tangible.

### URL

`/how-we-engage/`

### Primary audience

All 6 personas — but especially the Executive Sponsor (who needs to see a structured delivery process) and the Technical Evaluator (who wants to understand methodology commitment and governance approach).

### Page structure

**Hero:**

```
Headline: From First Conversation to Running AI
Subheadline: A structured delivery process that takes your AI initiative 
             from problem statement to production — with checkpoints, 
             clear ownership, and no PoC graveyard.
CTA: Schedule a Discovery Call → /contact/
```

**Section 1 — The Engagement Model**

Four phases, each with a brief description and time estimate.

| Phase | What happens | Typical duration |
|---|---|---|
| **Discovery** | Problem framing, feasibility assessment, data review, success criteria definition | 1–2 weeks |
| **Proof of Concept** | Hypothesis testing, working prototype, validated approach | 4–6 weeks |
| **Production Build** | Full-system engineering, integration, compliance review, testing | 8–16 weeks |
| **Operations** | Deployment, monitoring, drift detection, performance tuning, lifecycle management | Ongoing |

**Section 2 — What Makes Our Process Different**

Three differentiators from the product strategy (087E), restated in engagement-model terms:

1. **CRISP-ML(Q) methodology** — structured AI project governance from problem framing to operations, not ad-hoc engineering
2. **Production commitment from day one** — every engagement is designed to reach operations, not just deliver a prototype
3. **AI Delivery OS acceleration** — our internal delivery platform compresses timelines and removes bottlenecks that slow conventional AI projects

**Section 3 — Team Composition per Engagement**

Brief section explaining that every project is staffed with the roles required for the project type:

- PoC-focused engagements: AI Engineers + Data Scientists
- Platform-scale engagements: add Data Engineers + AI Architects + MLOps Engineers
- Strategy engagements: AI Consultants + Engineers

This reinforces the role-based team representation model from Section 5 of this document.

**Section 4 — Engagement Options**

Frame engagement options by starting point rather than by contract type:

| Entry point | Description | Who it's for |
|---|---|---|
| **Discovery Assessment** | 1-week problem framing and feasibility review; deliverable: AI readiness report | Organizations unsure where to start |
| **Proof of Concept** | 4–6 week working prototype; deliverable: deployed PoC with performance benchmarks | Organizations with a defined use case |
| **Production Project** | Full end-to-end system build; deliverable: production AI in operations | Organizations ready to ship |
| **AI Platform Engagement** | Multi-project AI platform buildout; deliverable: persistent AI delivery capability | Enterprises building long-term AI capability |

Do not list pricing. Do not list contract terms. Point to Contact for all commercial discussion.

**Section 5 — What Happens After You Contact Us**

Replicate the contact page's "what happens next" 4-step sequence here (and cross-link back to Contact):

```
1. You submit the contact form or reach out directly
2. A member of our team reviews your message (within 1 business day)
3. We schedule a 30-minute discovery call to discuss your use case
4. We provide a preliminary assessment — no charge, no commitment
```

**Bottom CTA:**

```
Ready to Start?
Primary CTA: Schedule a Discovery Call → /contact/
Secondary CTA: Explore Our Solutions → /solutions/
```

### Implementation notes for SF-SLICE-088

- This is a standalone page, not part of the Solutions or Capabilities sections
- Hugo content type: `page` (no special template needed initially)
- Front-matter: `title: "How We Engage"`, `description: "..."`, `menu.main.weight: 45`
- No hardcoded pricing, SLAs, or contract terms — those are commercial conversations

---

## 9. Content Classification — Remove, Keep, Merge, or Defer

### Remove (from public-facing pages)

| Content | Current location | Reason for removal |
|---|---|---|
| Individual team member LinkedIn links | About page | Key-person risk signal; replace with role-based team section |
| Individual team member photos | About page | Same; role cards do not require photos |
| Individual team member personal bios | About page | Same |
| "AI Delivery OS" as a client-facing product claim | Any future public page | Per EP-02: internal accelerator only; cannot position as a product without GM approval |
| Specific compliance claims (HIPAA, GDPR Article 22, FDA 21 CFR Part 11) | Solutions, Industries (planned) | Remove until Engineering Lead validates; replace with "compliance-aligned practices" |
| Unvalidated social proof metrics (100+ clients, 10+ deployed, 99.9% uptime) | Home page (planned) | Replace with contact-oriented language until Practice Lead validates |
| Green CTA button (`.cta-green`) | `home_cta.html` | EP-04 violation; replace with brand blue |

### Keep (as-is or with minor updates)

| Content | Current location | Action |
|---|---|---|
| NeuroDocs, CV Extractor, TalentBot solution descriptions | `/services/` | Keep; migrate to `/solutions/`; update content to match solution blueprints |
| Publication (ViT paper) | `/publications/` | Keep; add to Insights hub when built |
| Events content (11 events) | `/events/` | Keep; surface in footer and future Insights hub; remove from primary nav |
| Contact form (FormSubmit.co integration) | `/contact/` | Keep; add "Interest" select field per 087G blueprint |
| Design system CSS layer (087D) | `assets/css/` | Keep; already committed; extend as needed |
| "Why ITJ" messaging | About page, Home | Keep the message; update company name to "AI Solutions" |

### Merge

| Content | Current state | Proposed merge |
|---|---|---|
| Services overview + solution detail pages | `/services/` (3 pages) | Merge into `/solutions/` section (rename + redirect) |
| Events listing | `/events/` standalone nav | Merge into footer Company column + future Insights hub |
| Publications listing | `/publications/` standalone nav | Merge into footer Company column + future Insights hub |
| "AI Delivery OS" proof point | Currently implicit | Surface as internal delivery proof in "How We Engage" and Capabilities/Agents pages |

### Defer to Phase 2 or later

| Content | Reason for deferral | Target slice |
|---|---|---|
| Insights / Blog hub | Sparse content would harm credibility | SF-SLICE-091 |
| Individual case studies | Requires client approval | SF-SLICE-090 |
| AI Delivery OS as public product | Business decision required | Post-094 |
| Publications expansion (4 additional papers) | Research investment required | SF-SLICE-091 |
| Team data model migration (YAML/data files) | Architecture work; not blocking SF-088 | SF-SLICE-092 |
| Partner page | Partner program not formalized | Future |
| Accelerators standalone page | IA decision pending (ER-A01) | SF-SLICE-089 |
| Careers / Join page | Recruiting is secondary | Future |
| Technologies standalone page | Not needed in Phase 1 nav | Phase 2 |

---

## 10. Blocker Reclassification

SF-087G identified 8 executive decisions as blockers for SF-SLICE-088. The sales enablement reframe changes how each blocker is classified.

### Original 8 blockers (from 087G `content_gap_analysis.md`)

| # | Decision | 087G status | 087H reclassification | Unblocking approach |
|---|---|---|---|---|
| 1 | Approve Mission/Vision statements | ❌ BLOCKED | ⚠️ SOFT BLOCK | Use product strategy (087E) Mission as working draft; mark as [Draft — pending GM approval] in content; does not block structural work |
| 2 | Validate social proof metrics (100+, 10+, 4-6 weeks, 99.9%) | ❌ BLOCKED | ✅ UNBLOCKED | Remove specific metrics from Phase 1; use contact-oriented language ("Our team has deployed AI across life sciences, HR, and manufacturing — tell us about your use case") |
| 3 | Approve home page hero headline | ❌ BLOCKED | ⚠️ SOFT BLOCK | **This remains a real blocker.** The hero headline is the first thing every visitor sees. Placeholder is acceptable for development only; must be approved before launch. See Note A. |
| 4 | Confirm GDPR/HIPAA/FDA 21 CFR Part 11 compliance claims | ❌ BLOCKED | ✅ UNBLOCKED | Remove specific compliance certifications; use "compliance-aligned practices" and "designed for HIPAA-compliant environments"; no hard claim until Engineering Lead validates |
| 5 | Approve AI Delivery OS public reference | ❌ BLOCKED | ✅ UNBLOCKED | Conditionally unblocked. AI Delivery OS is mentioned in "How We Engage" as internal delivery acceleration proof (not a product). No product claim is made. This usage does not require GM approval. |
| 6 | Confirm company name: "AI Solutions at ITJ Solutions" | ❌ BLOCKED | ⚠️ SOFT BLOCK | **This is the second real blocker.** A company name inconsistency on a live site is a trust problem. Use "AI Solutions" (short form) consistently throughout SF-088; confirm full form with GM before launch. See Note B. |
| 7 | Resolve Accelerators IA decision (standalone vs. merged) | ❌ BLOCKED | ✅ UNBLOCKED | Defer to SF-SLICE-089; not needed for SF-SLICE-088 MVP structure |
| 8 | Approve AI Delivery OS meta case study | ❌ BLOCKED | ✅ UNBLOCKED | Case studies section ships as a placeholder in SF-SLICE-088; no content approval needed for a placeholder. Meta case study is Phase 2 (SF-090). |

### Revised blocker count

- **Hard blockers (must resolve before launch):** 2 (hero headline, company name short form)
- **Soft blockers (can build with draft; must resolve before publish):** 1 (Mission/Vision draft)
- **Unblocked:** 5

### Note A — Hero Headline Resolution

The headline does not require a lengthy approval process. Three options can be presented for GM + Practice Lead selection:

**Option 1 (recommended):** "We Build AI That Ships"  
Bold, production-focused, differentiating. Directly addresses the 85% PoC-failure problem.

**Option 2:** "From AI Concept to Production Value"  
Longer, more explanatory. Maps directly to the North Star.

**Option 3:** "Production AI for Enterprise Teams"  
Audience-oriented. Clear. Less memorable.

If no response within 5 business days, default to Option 1 and proceed. The headline can be updated in a single content-only commit without a new slice.

### Note B — Company Name Resolution

"AI Solutions" (short form) is already in use on the live site and is unambiguous in context. It can be used throughout SF-088 without waiting for GM confirmation of the full form ("AI Solutions at ITJ Solutions"). The full form appears only in legal/boilerplate contexts (footer copyright, About page formal description). These can be marked as [PENDING CONFIRMATION] and updated in a follow-up content commit.

---

## 11. Alignment with AI Sales Playbook

AI Solutions' sales process is based on a structured discovery model. The website should mirror the sequence of the sales conversation so that prospects who visit the site between calls find the same structure they encountered in the first call.

### Sales conversation sequence → Website section mapping

| Sales conversation stage | What the salesperson covers | Website section that reinforces it |
|---|---|---|
| Introduction | "We're an applied AI engineering team — we build AI that runs in production" | Home hero, About intro |
| Problem framing | "Most AI initiatives fail to make it from PoC to production — here's why" | Home problem-hook section, How We Engage |
| Capability demonstration | "Here is what we can actually build" | Capabilities section (8 capability pages) |
| Solution matching | "We have solutions for your specific problem" | Solutions section + industry-specific pages |
| Domain validation | "We've done this in your industry" | Industries section |
| Process clarity | "Here's how we would approach your engagement" | How We Engage page |
| Objection handling | Proof of methodology and production track record | Publications, case studies (Phase 2) |
| Discovery call setup | "Let's have a 30-minute call about your specific use case" | Contact page |

### Key principle for sales-aligned content

Every section on every page should be writable as a sentence a salesperson would say in a first call. If the web content uses language that the salesperson would not say to a prospect, it is the wrong content.

**Wrong:** "Leveraging state-of-the-art ML capabilities to synergize data-driven transformation initiatives."  
**Right:** "We build AI systems that process your regulatory documents 10x faster than manual review — and run in your environment, not ours."

The second sentence is the kind of claim a salesperson makes. It is specific, outcome-oriented, and invites a question. Every web content block should clear this bar.

---

## 12. Updated MVP Implementation Readiness

### SF-SLICE-088 structural work (can proceed immediately)

| Task | Status | Dependency |
|---|---|---|
| config.toml nav update (6-item MVP nav) | ✅ READY | None |
| `/services/` → `/solutions/` migration with Hugo aliases | ✅ READY | None |
| Capabilities section — Hugo content type + overview stub + 8 stub pages | ✅ READY | Engineering Lead validates stubs before publish |
| Industries section — Hugo content type + overview stub + 5 stub pages | ✅ READY | Remove compliance specifics from stubs |
| `/how-we-engage/` page (new) | ✅ READY | Engagement model description does not require external approval |
| Role-based About page team section | ✅ READY | Replaces individual profiles; no approval needed |
| Case studies placeholder page | ✅ READY | Placeholder requires no client content |
| Custom footer (5-column) | ✅ READY | None |
| Green CTA button fix (EP-04) | ✅ READY | Trivial template change |

### SF-SLICE-088 content work (conditional)

| Task | Status | Condition |
|---|---|---|
| Home page hero headline | ⚠️ BUILD WITH DRAFT | Final text requires GM + Practice Lead selection (Note A) |
| About page Mission/Vision | ⚠️ BUILD WITH DRAFT | Use 087E Mission as draft; confirm before publish |
| Company name (full form) | ⚠️ SHORT FORM ONLY | "AI Solutions" in all SF-088 content; full form confirmed separately |
| Capability detail content | ⚠️ STUBS ONLY | Engineering Lead reviews stubs before publish; full content in SF-089 |
| Industry compliance language | ✅ READY WITH QUALIFICATION | Use "compliance-aligned" language; no specific certifications |
| Social proof metrics | ✅ READY (REMOVED) | Use contact-oriented language; no metrics until Practice Lead validates |

### Overall SF-SLICE-088 readiness

**Status: READY TO PROCEED**

The hard blockers from 087G do not block the structural build. SF-SLICE-088 can proceed with:
- Stub/draft content where approvals are pending
- Role-based team representation (no individual approvals needed)
- Qualified compliance language (no specific certifications claimed)
- Contact-oriented language in place of unvalidated metrics
- Internal AI Delivery OS reference (not a product claim)

Launch readiness gate: hero headline and company name short form must be confirmed before the SF-088 changes go live at the GitHub Pages URL. They do not block the build.

---

## 13. Recommended Page Changes for SF-SLICE-088

### Modify

| Page | Change |
|---|---|
| `config.toml` | Replace 6-item current nav with 6-item MVP nav per Section 6 |
| `content/about/_index.md` | Replace individual team member profiles with role-based team section; fix company name to "AI Solutions" |
| `layouts/partials/home_cta.html` | Remove `.cta-green` class; use `.cta-button` (brand blue) |
| Home page hero content | Update headline, subheadline, and CTAs (draft until GM approval) |

### Create (new)

| Page | Description |
|---|---|
| `content/solutions/_index.md` | Solutions overview (replaces `/services/` overview) |
| `content/capabilities/_index.md` | Capabilities overview |
| `content/capabilities/{8 slugs}/_index.md` | 8 capability stub pages |
| `content/industries/_index.md` | Industries overview |
| `content/industries/{5 slugs}/_index.md` | 5 industry stub pages |
| `content/how-we-engage/_index.md` | New engagement model page (per Section 8) |
| `content/case-studies/_index.md` | Case studies placeholder page |
| `layouts/partials/footer.html` | Custom 5-column footer (replaces PaperMod default) |
| `assets/css/footer.css` | Footer design system tokens file |

### Rename/migrate

| Current | New | Method |
|---|---|---|
| `content/services/` | `content/solutions/` | Directory rename + Hugo aliases in all front-matter |

### Remove from primary nav (to footer only)

| Item | Action |
|---|---|
| Publications (`/publications/`) | Remove from primary nav; add to footer Company column |
| Events (`/events/`) | Remove from primary nav; add to footer Company column |

---

## 14. Recommendation for SF-SLICE-088

**Proceed.** The sales enablement reframe removes the primary implementation blockers from SF-087G. The structural work — nav, Capabilities, Industries, How We Engage, role-based About, footer — can be executed without waiting for executive content decisions.

**SF-SLICE-088 should be scoped as:**

1. **Navigation** — Update `config.toml` to 6-item MVP nav. Remove Services/Publications/Events from primary nav.
2. **URL migration** — `/services/` → `/solutions/` with Hugo aliases.
3. **Capabilities section** — New Hugo content type, overview page, 8 stub pages with title + 2-sentence description + technology tags.
4. **Industries section** — New Hugo content type, overview page, 5 stub pages with title + 2-sentence description + use case tags (no compliance certifications in stubs).
5. **How We Engage** — New page per spec in Section 8 of this document.
6. **About page** — Role-based team section; remove individual profiles; fix company name to "AI Solutions."
7. **Home page** — Draft updated hero + structure; mark headline as [PENDING APPROVAL]; fix green CTA button.
8. **Footer** — Custom 5-column footer partial.
9. **Case studies placeholder** — Minimal placeholder page with intent signal.

SF-SLICE-088 does **not** need to include:
- Full capability or industry content (stubs are sufficient)
- Validated metrics (contact-oriented language replaces them)
- AI Delivery OS as a client product
- Publications expansion
- Insights hub

**The site that ships from SF-SLICE-088 will be a functional sales enablement portal.** It will serve every buyer persona that a salesperson might refer to it. The content will be honest about what is documented and what is coming. That is a better foundation than waiting for every executive decision before shipping anything.

---

## 15. Open Decisions — 087H Additions

These decisions were not surfaced in previous slices.

| ID | Decision | Owner | Impact if deferred |
|---|---|---|---|
| OD-H01 | Select hero headline from 3 options in Section 10 (Note A) | General Manager + Practice Lead | Home page launches with [DRAFT] copy |
| OD-H02 | Confirm "AI Solutions" as the short-form name used throughout the site | General Manager | SF-088 content uses short form; full form confirmed separately |
| OD-H03 | Confirm engagement model phase names and time estimates in Section 8 | Practice Lead | How We Engage page launches with [DRAFT] durations |
| OD-H04 | Confirm role list for team section (Section 5) — is "AI Consultants" the right sixth role label? | Practice Lead | About page role section uses proposed list as default |
| OD-H05 | Should "How We Engage" use the term "Proof of Concept" or a preferred internal term? | Practice Lead | "Proof of Concept" is the default; update before publish if preferred term differs |

---

## Document Governance

| Section | Owner | Review cadence |
|---|---|---|
| Executive summary and revised purpose | General Manager | Per campaign |
| Sales enablement user journey | Practice Lead + Sales | Quarterly |
| Team representation policy | General Manager + Practice Lead | Per team change |
| Navigation | Practice Lead | Per IA update |
| Blocker reclassification | Practice Lead | Per SF-088 progress |
| How We Engage page spec | Practice Lead | Per engagement model change |

**This document supersedes the blocker classification in `docs/content/content_gap_analysis.md` Section "Implementation Readiness Assessment" (the 8-item executive decision table). The revised blocker count is 2 hard + 1 soft. All other items from that table are unblocked under the sales enablement reframe.**
