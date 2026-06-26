# Insights Blueprint

**Page:** Insights Hub  
**URL:** `/insights/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-091  
**Status:** BLUEPRINT — Phase 2 (deferred from SF-SLICE-088 MVP)  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/content_model.md`, `docs/product/navigation_model.md`

**Phase 1 note:** During SF-SLICE-088, Publications and Events remain at their current URLs (`/publications/`, `/events/`). The Insights hub at `/insights/` is created in SF-SLICE-091 when content volume justifies it. The nav item "Insights" is added to primary nav in Phase 2.

---

## Page Purpose

Aggregate all AI Solutions thought leadership into a single discoverable hub: technical articles, engineering blog posts, publications, case studies, event summaries, and insights. Replace the current situation where Publications and Events are isolated endpoints with no connecting discovery experience.

The Insights hub serves as the "come back for more" engine — the content layer that makes AI Solutions worth following, not just worth hiring.

---

## Target Audience

**Primary:** Senior AI engineers and data scientists who arrived via a publication or technical referral and want to explore more content from this team.

**Secondary:** Executive buyers who are researching AI Solutions over time — returning to read new content and tracking the team's thought leadership.

**Tertiary:** Recruiting candidates evaluating the technical environment and research culture.

---

## Business Objective

Build return visit behavior and long-term brand authority. The Insights hub is not a direct conversion path — it is the compounding asset that makes AI Solutions discoverable and trustworthy over time.

Secondary: surface conversion CTAs within content (every article ends with a "Talk to us" prompt).

---

## Hero

**Headline:** "Insights from AI Solutions"  
**Subheadline:** "Technical writing, research, and perspectives from an AI engineering team that builds AI in production."  
**Primary CTA:** "Subscribe" → (future, when newsletter infrastructure is ready)  
**Secondary CTA:** "See Our Publications" → `/publications/`

*Note: Primary CTA should be "Subscribe to our insights" when a newsletter is available. Until then, use "Get in touch" → `/contact/`.*

---

## Key Messages

- AI Solutions publishes what it learns — from production deployments, research, and methodology
- Insights span the full AI engineering lifecycle: research → build → deploy → operate
- Content is for practitioners — not marketing copy dressed as technical writing

---

## Sections

### Section 1 — Featured Insight

**Purpose:** Surface the highest-value recent piece front and center. Not necessarily the most recent — the most relevant to the primary audience.

**Content summary:** Large featured card:
- Title
- Type badge (Research Paper / Engineering Blog / Case Study / Event)
- Author + date
- 2-sentence summary
- "Read More" → detail page

---

### Section 2 — Filter Bar

**Purpose:** Let visitors self-segment by content type or topic.

**Filter options:**

| Filter type | Options |
|---|---|
| Content type | All | Research Papers | Engineering Blog | Case Studies | Events | Insights |
| Capability | All | LLM & GenAI | Computer Vision | MLOps | AI Agents | Responsible AI |
| Industry | All | Healthcare | Life Sciences | HR & Talent | Manufacturing | Financial Services |

**Implementation note:** Filters can be implemented as static URL parameters (`/insights/?type=research`) or as JavaScript filter — the static approach is simpler for Hugo and does not require JavaScript.

---

### Section 3 — Content Feed

**Purpose:** Chronological + relevance-ordered feed of all insight content.

**Content card fields:**
- Content type badge
- Title
- Author name
- Date
- Tags (capability, industry)
- 1-sentence excerpt
- "Read more →" link

**Content sources (all feed into this hub):**
- `content/insights/` — new blog posts and articles
- `content/publications/` — research papers and technical papers
- `content/events/` — event summaries and presentations
- `content/case-studies/` — case study summaries (when available)

---

### Section 4 — Topic Collections

**Purpose:** Curated topic pages that organize related content across content types.

**Planned collections:**
- "LLM Engineering" — all RAG, fine-tuning, and generative AI content
- "Computer Vision" — ViT, YOLO, edge AI content
- "Responsible AI" — explainability, bias, compliance content
- "Production AI" — MLOps, deployment, lifecycle management
- "Healthcare AI" — industry-specific collection
- "Life Sciences" — industry-specific collection

**Implementation note:** Collections can be implemented as Hugo taxonomy (tags) rather than separate content files.

---

### Section 5 — Bottom CTA

**Content summary:** "Our team writes from production experience. If you have a use case we should write about — or a problem you'd like us to solve — let's talk."

**CTA:** "Start a Conversation" → `/contact/`

---

## Content Requirements for Launch

The Insights hub requires a minimum content threshold before it is worth launching. Launching with < 3 pieces creates a negative impression.

**Recommended minimum before launch:**
- 3 technical articles or engineering blog posts (original, authored by team)
- 1 research paper or publication
- Event content (11 existing events can surface here)

**Content sourcing options:**
1. AI Delivery OS content missions (SF-SLICE-091)
2. Team-authored technical writing (highest quality, slowest production)
3. Migration of existing event content as "event summaries" (fastest — content already exists)

---

## Executive Review Notes

**ER-I01:** Is there existing unpublished technical writing from team members that could be published in the Insights hub at launch?

**ER-I02:** Should the Insights hub include a newsletter subscribe form? This requires an email infrastructure decision (Mailchimp, Substack, etc.) — currently not in scope.

**ER-I03:** Who is the gatekeeper for Insights content quality? The product strategy says "evidence over assertion." Is there a review process for blog content before publishing?

---

## Future Enhancements

- Newsletter subscribe form with email sequence automation
- AI Delivery OS missions that automatically draft insights from deployment learnings
- Full-text search within the Insights hub
- Reading time estimates on all articles
- Social sharing buttons (if enterprise social presence is active)
- Author profile pages linking to team bios
- RSS feed for the Insights hub
- Comment or discussion system (if community building becomes a goal)
