# AI Solutions — Product Experience Vision

**Document:** Product Experience Vision  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-089A-PRODUCT-EXPERIENCE-VISION  
**Date:** 2026-06-25  
**Status:** NORTH STAR — Authoritative design baseline for all future UX, UI, and implementation slices  
**Audience:** Product Design, UX, Frontend Engineering, Practice Lead, General Manager  
**Depends on:** `087D` (Design System), `087E` (Product Strategy), `087H` (Sales Enablement Reframe), `088` (MVP Implementation)

---

## 1. Honest Assessment: Where We Are

SF-SLICE-088 delivered the structural foundation. Navigation is correct. Information architecture is right. Sections exist. The content is honest and sales-aligned.

What SF-088 did not deliver — and was not designed to deliver — is a product experience.

The current portal is a collection of well-organized Hugo pages. Each page answers the right questions. But the pages do not add up to a portal. There is no visual hierarchy that tells a visitor what matters most. There is no interaction model that guides them from one thought to the next. There is no emotional arc from arrival to contact.

**The gap is not content. The gap is experience.**

A prospect visiting the current site for the first time would find the right information if they looked for it. But "find it if you look" is not the bar for enterprise sales enablement. The bar is: the right information finds the visitor before they have to look.

This document defines what that experience looks like and how to build it.

---

## 2. Product Identity

### The Decision

**Recommended: AI Capability Portal**

Not:
- Marketing Website — implies a broadcast relationship; we are building a dialogue tool
- Corporate Website — implies internal audience and static credibility; we need dynamic qualification
- Sales Enablement Portal — this is the internal description; the prospect does not experience it as "sales enablement"
- Executive Briefing Portal — too formal; too narrow; implies a single audience
- Customer Discovery Platform — too mutual; this is not a discovery tool for AI Solutions, it is one for the client

### Why "AI Capability Portal"

"Capability Portal" names what the product actually is: a structured, navigable reference to what AI Solutions can build — organized by problem, discipline, and industry. "Capability" is the word a technical buyer uses ("do they have the capability to do this?"). "Portal" implies depth, structure, and return visits — not a single landing page.

Crucially, a Capability Portal does not compete with the sales team. It extends them. The salesperson says "here is what we can do for your industry" — the portal shows it.

### Product Promise (Internal Use)

> The AI Solutions Capability Portal is the digital answer to every question a prospect asks between the first sales call and the first technical discovery meeting.

Every design decision should trace to this promise.

---

## 3. The 30-Second Question

**"How should someone feel during the first 30 seconds of using this portal?"**

**The answer, in sequence:**

| Moment | Feeling | What produces it |
|---|---|---|
| First 3 seconds | "This is serious." | Visual weight, enterprise typography, confident headline — not a startup landing page |
| First 10 seconds | "They know what AI actually is." | Specific language. No buzzwords. "RAG," "MLOps," "CRISP-ML(Q)" — not "AI-powered transformation" |
| First 30 seconds | "They understand my problem." | Industry nav, capability specificity, "problems we solve" framing — not a tech capability catalog |
| First 2 minutes | "I know how to engage with them." | Clear engagement model, specific CTAs, no friction between understanding and action |
| After the discovery call | "The website told the truth." | Content depth on the portal matches what the team delivers — no overpromise |

The current portal earns "this is organized" in 30 seconds. It does not yet earn "this is serious" or "they understand my problem." Those two impressions require experience design, not content expansion.

---

## 4. User Experience Vision

### Persona 1 — Sales Representative

**Context:** Opens the portal on a laptop in a client meeting. Navigates in real time while the prospect asks questions.

**Current experience:** Functional. Can navigate to the right section. But pages load as walls of text with no visual hierarchy. The salesperson cannot quickly find the specific capability or industry without reading paragraphs.

**Target experience:** Every section page opens with a scannable above-the-fold summary: headline, 3-line description, 4-6 capability tags. The salesperson can land anywhere and immediately orient the prospect without reading. Every page has one bold claim that can be read aloud in under 5 seconds.

**Design requirement:** Pages must be scannable at 30% attention. Visual hierarchy must carry the message even when nobody reads the prose.

---

### Persona 2 — Executive Buyer (CAIO, CDO, VP Engineering)

**Context:** Received the URL from the salesperson after a first call. Opens the site alone. Has 5 minutes before their next meeting. Is evaluating whether AI Solutions is worth a 30-minute technical discovery call.

**Current experience:** The home page says "We Build AI That Ships." The next thing they see is the quicklinks grid. The Why section has the right message but is text-dense. There is no single moment that says "this organization has delivered AI at enterprise scale."

**Target experience:** Above the fold: bold claim, 3-word industry confirmation, single CTA. Below the fold: a trust moment — a methodology reference, a publication signal, a case study teaser. The executive reaches the contact page within 3 clicks having seen: what AI Solutions does, that they know the executive's industry, and that they have a structured delivery process.

**Design requirement:** Executive track must be completable in 3 clicks. The site must establish credibility in under 8 seconds without requiring any content to be read.

---

### Persona 3 — Technical Buyer (VP Engineering, Head of Data, Lead Architect)

**Context:** Received the same URL. Has 20 minutes. Is specifically evaluating whether AI Solutions understands their technical environment — stack, methodology, deployment model.

**Current experience:** The Capabilities section exists and is technically specific. But each capability page presents the information as a two-column layout of prose. There are no architecture diagrams, no process flows, no visual representation of how systems work. A technical buyer evaluates AI firms partly by whether their documentation is engineering-grade.

**Target experience:** Each capability page has: (1) a 3-sentence technical description that a senior engineer would write, not a marketer; (2) an annotated diagram or process flow showing how the system works; (3) a technology stack section with specific, honest tool references; (4) a link to a relevant publication or case study for depth. The technical buyer can go as deep as they want — and finds something at every depth level.

**Design requirement:** Technical depth must be available at 3 levels: overview (30 sec), capability page (3 min), publication (30 min). The portal facilitates the progression without requiring a human to hand-hold.

---

### Persona 4 — Domain Buyer (HR Director, Regulatory Affairs, Manufacturing Operations)

**Context:** Has been forwarded the URL by a technical evaluator. Is not technical. Is evaluating whether AI Solutions understands their domain problem specifically.

**Current experience:** The Industries section exists. Each industry page has a "Problems We Solve" section. But the current pages are structured identically, with identical visual treatment, and identical CTAs. A Regulatory Affairs Director cannot quickly distinguish the Life Sciences experience from the general Healthcare experience.

**Target experience:** Each industry page opens with the most specific possible statement of the domain problem. Not "AI for healthcare" — "Clinical documentation that takes 3 hours, done in 20 minutes." The problem precedes the capability. The industry language is precise — "regulatory filings," "SOP management," "21 CFR Part 11 audit trail" — not generic AI marketing language. The domain buyer reads the first paragraph and says "they know what I deal with every day."

**Design requirement:** Industry pages must pass the domain buyer test: a non-technical expert in that industry reads the first paragraph and confirms the problem statement is accurate. Content specificity, not visual design, is the primary driver here — but visual design must create the breathing room for the content to land.

---

### Persona 5 — Existing Customer

**Context:** Already working with AI Solutions. Uses the portal as a reference during the engagement or when considering an expansion.

**Current experience:** No differentiated experience. The portal is entirely prospect-facing. An existing customer navigating Capabilities finds the same content as a cold prospect.

**Target experience:** Phase 2 consideration (not in scope for 089A). However, the portal architecture should leave room for client-only content (private case studies, deeper technical documentation) without requiring a redesign. The current architecture can accommodate this via Hugo's future section structure.

**Design requirement:** Note for Phase 2 — design the capability and solution pages with an "extension zone" below the public CTA where authenticated content could be placed. This is a structural placeholder, not an implementation requirement for SF-089.

---

### Persona 6 — Internal Engineering Team

**Context:** AI engineers and researchers checking the portal for accuracy, or referring colleagues and potential hires to it.

**Current experience:** The About page now has role-based team representation. Publications are accessible. The portal is honest about what the team can do.

**Target experience:** Engineering team members should be proud to share this URL. The technical depth on capability pages should reflect actual practice. The Publications section should be a genuine credibility signal.

**Design requirement:** Never sacrifice technical accuracy for marketing appeal. If a capability page claims expertise in a technology, that technology must be one the team actually uses. The technical team is the final accuracy gate for all capability content.

---

## 5. Product Personality

### What AI Solutions Is

The portal should embody these traits — in this priority order:

**1. Technically credible**  
Not performatively technical (avoiding jargon), but genuinely specific. Uses real terms correctly. Names actual tools. Describes real methodology. A senior ML engineer should read a capability page and feel it was written by someone who has done the work.

**2. Confident without arrogance**  
Makes specific claims. Does not hedge every sentence. Does not oversell. Says exactly what can be delivered and how. Confidence comes from specificity, not from adjective density.

**3. Enterprise-ready**  
Structured. Consistent. Professional. Not startup-casual. Not corporate-stiff. Reads like it was built for the context a VP presents it in — a boardroom conversation about a $500K AI initiative.

**4. Practically focused**  
Everything traces back to business outcomes, not to technological sophistication. The sophistication is implied by the specificity; it does not need to be stated.

**5. Human-scaled**  
Not a faceless platform. Not an enterprise vendor that communicates in press-release language. Specific about what it does, honest about what it doesn't, and written by people who have built the systems they describe.

---

### What AI Solutions Is Not

These traits must be actively rejected in every design and content decision:

| Trait | Why to avoid | Example to eliminate |
|---|---|---|
| Buzzword-heavy | Signals AI vendor, not AI engineer | "Leverage cutting-edge AI capabilities to drive transformation" |
| Metric-first without validation | Signals marketing, not engineering credibility | "100+ clients, 99.9% uptime" without evidence |
| Startup-casual | Undermines enterprise credibility | Emoji in headings, informal section titles |
| Consultant-vague | Signals generalist, not specialist | "We help organizations navigate AI complexity" |
| Technology-first without problem | Signals vendor, not partner | Listing tools before stating the problem they solve |
| Visually cluttered | Signals low trust and low quality | Multiple competing CTAs, mismatched card styles, inconsistent spacing |

---

## 6. Emotional Design

### First 5 Seconds

**Desired feeling:** "These people are serious about production AI."

**What produces it:**
- Enterprise-grade typography with deliberate weight contrast
- A single bold claim that is specific and verifiable ("We build AI that ships to production — not to slides")
- No hero animation, no auto-play video, no parallax
- Clean above-the-fold with maximum one CTA
- Visual evidence of credibility (methodology reference, publication count, industry indicators)

**What destroys it:**
- Hero banner that looks like a stock image
- Generic hero text ("Welcome to AI Solutions")
- Multiple competing CTAs above the fold
- System font rendering that looks like a default WordPress theme

---

### First 30 Seconds

**Desired feeling:** "They understand my problem specifically."

**What produces it:**
- Industry nav items that match the prospect's actual industry
- Problem-first framing on the first scroll (not capability-first)
- Specific language that a domain expert would recognize as accurate
- A process reference that signals methodology (CRISP-ML(Q)) without requiring explanation

**What destroys it:**
- Generic "AI for enterprise" language
- Capabilities listed as a technology catalog
- No visible evidence of industry knowledge
- Section layouts that look identical regardless of content type

---

### After 2 Minutes

**Desired feeling:** "I understand exactly how this would work for us."

**What produces it:**
- How We Engage page is clear, specific, and honest about phases and durations
- Engagement options map to real starting points (not package tiers)
- Each solution page answers: what is it, how does it work, what tech, who uses it, how do we start
- Contact flow is obvious and low-friction

**What destroys it:**
- Engagement model described in vague process language
- Contact page that asks for too much information
- CTAs that say "Learn More" with no specificity
- Pages that end without a next step

---

### After a Discovery Meeting

**Desired feeling:** "The website told the truth. They delivered what the site implied."

**What produces it:**
- Content accuracy — every claim on the portal matches what the team can actually deliver
- No overpromise — the portal does not claim capabilities that require qualification
- The discovery call confirms the methodology referenced on the portal

**What destroys it:**
- Capability pages that describe aspirational rather than current capabilities
- Sales language that oversells relative to the actual team size or track record
- Metrics (uptime, client counts) that cannot be verified

This is the most important emotional moment. The current portal is already well-positioned here — it does not overclaim. Maintaining this discipline as the portal scales is a product integrity responsibility.

---

## 7. Visual Language

### The Current State Assessment

The SF-087D design system established the correct foundation:
- Token system is sound (4px grid, 7 typographic sizes, semantic color roles)
- Component set is appropriate (capability-card, card-accent, badge, tag, button variants)
- The primary color (#1a5ee6, enterprise blue) is correct

**What the current visual language lacks:**

1. **Display typography.** The current system uses `-apple-system, BlinkMacSystemFont, "Segoe UI"` — the browser's default system font stack. This renders identically to an unstyled webpage. Every enterprise AI company in the benchmark (Anthropic, Stripe, Vercel, Databricks) loads a curated typeface. System fonts are a credibility gap.

2. **Color depth.** The current palette is binary: white backgrounds and `--color-surface-alt` (#f9f9f9) for variation. Enterprise products use section-level background variation to create visual hierarchy. A dark hero section, a mid-tone section, a white section — this rhythm tells the visitor where they are in the page.

3. **Section rhythm.** Every section of every page currently uses the same visual weight. There is no "landmark" moment — no section that says "this is the most important thing on this page." The page reads as a list of equally-weighted items.

4. **Iconography.** The current system has no icon language. Role cards use emoji (🔧, 📊, 🏗️). The flip cards on About use SVG images at `/images/icons/*.svg`. There is no coherent icon system.

5. **Diagram and visualization language.** For an AI engineering practice, the absence of process diagrams is significant. The How We Engage page describes a 4-phase model — in text. Databricks, Snowflake, and every enterprise software company representing a delivery process uses a visual diagram. The AI Solutions portal has none.

---

### Visual Language Principles

**Typography Philosophy**  
Load one typeface family with clear weight contrast between display and body. Display text (H1, H2) should have 700–800 weight with tight leading. Body text should be 400–450 weight at comfortable leading (1.6). The typeface should be legible, professional, and slightly geometric — not rounded (startup) and not serif (academic). Candidates: Inter, Plus Jakarta Sans, IBM Plex Sans. Current system fonts remain acceptable for body at initial load (performance) but display text must have a loaded typeface.

**Color Philosophy**  
The current blue is correct. The palette expansion needed is not more colors — it is more surface depth. Add:
- `--color-surface-dark` (for hero sections, dark backgrounds) — a near-black or dark navy, not black
- `--color-surface-mid` (for alternating sections) — a blue-tinted off-white (#f0f4ff)
- `--color-text-on-dark` (#ffffff or near-white for text on dark surfaces)
- Keep all current tokens; these are additions

Color meaning rules remain strict: blue = primary action, green = semantic success only, gray scale = text hierarchy, red = error only. No new brand colors without token entry.

**Whitespace Philosophy**  
The current `--section-y: 5rem` is a floor, not a ceiling. High-emphasis sections (hero, above-fold CTA, section-leading statement) should have double the breathing room. The primary visual problem with the current implementation is compression — too many elements per vertical inch. Enterprise products breathe.

**Rhythm**  
Every page should have three visual zones with distinct visual treatment: (1) an opening zone that establishes the topic, (2) a content zone that delivers the substance, (3) a closing zone that drives the action. Currently all three zones use the same visual language. Rhythm means contrast between zones.

**Imagery**  
No stock photography. The hero banner image (`hero-banner.png`) is acceptable in the short term but should evolve toward either (a) abstract data visualization imagery (flow graphs, network diagrams, technical schematics) or (b) no imagery at all — replaced by typographic composition. The current stock photo aesthetic undercuts the technical credibility of the text.

**Illustrations and Diagrams**  
This is the highest-priority visual gap. Every process description (How We Engage phases, CRISP-ML(Q) methodology, capability descriptions) must have a companion diagram. Diagrams should be consistent in style: line-based, technical, minimal color usage (blue primary + gray). SVG format. Created once, reused across contexts.

**Iconography**  
Replace emoji with a consistent icon set. Recommended: Lucide or Heroicons (open source, MIT license, consistent visual weight). One icon family across all usage contexts. Never use emoji outside of informal content.

**Motion**  
Extremely conservative. Hover states: yes (cards, buttons, links). Scroll animations: no. Auto-playing animations: no. Page transitions: no. The rationale: enterprise buyers often view this portal in formal settings (boardroom, on a projected screen). Motion that draws attention to itself is a distraction. Motion that provides feedback (hover lift, button press) is functional.

**Cards**  
The DS currently has 4 card variants: `ds-card`, `ds-card-accent`, `ds-card-elevated`, `ds-capability-card`. These need a clearer role hierarchy:
- `ds-capability-card` — for navigable capabilities (top-border accent, clickable)
- `ds-card-accent` — for callouts and featured content (CTA blocks)
- `ds-card` — for informational content (not primarily clickable)
- `ds-card-elevated` — for high-emphasis singular items (featured case study)

Currently, `ds-capability-card` is being used for industry cards, solution cards, and capability cards — it is correct for all three. The issue is that informational content blocks (like the "How It Works" steps) use `ds-card` with inline styles added to compensate for missing variants.

---

## 8. Critical Gaps in the Current Experience

These are the gaps where the current portal "feels like a collection of Hugo pages" rather than a product:

### Gap 1 — No Visual Hierarchy Between Page Types

Every page looks the same. The home page, a capability detail page, and an industry overview page use the same visual treatment. There is no signal to the visitor that "you are now inside a capability deep-dive" vs. "you are at the top level of a section." Visual hierarchy between page types is absent.

**Resolution:** Establish visual templates per page type. Home gets maximum visual investment. Section overview pages get secondary visual treatment. Detail pages get minimal chrome — more content, less decoration.

### Gap 2 — Typography Has No Display Personality

The portal is set in system fonts throughout. No loaded typeface. No display weight contrast between H1 and H2. The heading hierarchy in practice is: H1 is slightly larger than H2. An enterprise AI portal should have display headings that signal editorial intent.

**Resolution:** Load Inter or Plus Jakarta Sans as a display typeface (font-display: swap for performance). Apply 800-weight for H1, 700-weight for H2, 600-weight for H3. Current body text stays as system font for performance — just add a loaded display typeface.

### Gap 3 — All Backgrounds Are White or Near-White

The current portal has no section-level background contrast. Every section is either `#ffffff` or `#f9f9f9`. Enterprise product portals use deliberate background alternation to create rhythm and orient the visitor. A dark hero section, a blue-tinted mid-section, a white content section — this variation is not cosmetic; it is wayfinding.

**Resolution:** Add `--color-surface-dark` and `--color-surface-mid` tokens. Apply to hero and CTA sections. Three backgrounds: dark (hero), mid (section alternates), white (primary content).

### Gap 4 — No Process Diagrams Anywhere on the Site

AI Solutions has a CRISP-ML(Q) methodology commitment. The How We Engage page describes a 4-phase delivery model. The capability pages describe technical processes. **None of this is illustrated.** Every competitor in the benchmark analysis (Anthropic, Databricks, Snowflake) uses process diagrams to explain their methodology.

**Resolution:** Create a standard SVG diagram library. First priority: CRISP-ML(Q) process diagram (horizontal, 6 phases, with quality gate markers). Second priority: How We Engage 4-phase flow. Third priority: per-capability system diagram (e.g., RAG pipeline: Documents → Chunking → Embedding → Vector DB → Query → Retrieval → LLM → Response).

### Gap 5 — No Typography Hierarchy Below H1/H2/H3

The current content pages use H1, H2, H3, and paragraph text. There is no semantic treatment for: "this is a key claim," "this is a technical callout," "this is a measurement or metric." The design system has `ds-badge` and `ds-tag` but no "stat display" component, no "key claim" treatment, no "inline callout."

**Resolution:** Define: `ds-stat` (large number + label for metric display), `ds-claim` (large italic or display-weight callout), `ds-callout` (inset block for technical detail or important note). These are layout primitives, not just classes.

### Gap 6 — Every Page Ends with the Same CTA

Every page currently ends with a variant of "Schedule a Discovery Call → /contact/". This is contextually correct but experientially monotonous. A prospect who visits 5 pages sees the exact same CTA 5 times. CTAs should be contextually specific.

**Resolution:** Define context-sensitive CTA variants per page type:
- Capability detail → "See this capability in a solution →"
- Solution detail → "Schedule a demo →"
- Industry page → "Talk to our [industry] team →"
- How We Engage → "Start with a Discovery Assessment →"
- Home → "Schedule a Discovery Call →" (primary, full commitment)

### Gap 7 — No Mobile Experience Definition

The current DS has responsive breakpoints in `layout.css`. The `footer-grid` has responsive stacks. But there is no documented mobile experience philosophy. The portal is "responsive" but was not designed for mobile. Given that sales representatives may share this URL during calls on mobile devices, the mobile experience is not a secondary concern.

**Resolution:** Define mobile experience principles in this document. Document the breakpoints explicitly. Establish that the mobile experience must pass the "show this to a VP on my phone" test.

### Gap 8 — Inline Styles Everywhere

The SF-088 content pages contain significant amounts of inline CSS (`style="..."`) in the HTML markup inside markdown files. This creates a maintenance problem: any design change requires editing every content file. It also prevents the design system from being updated without auditing all content.

**Resolution:** This is a technical debt item, not a design item. Identified here because it affects the scalability of the design system. Resolution path: migrate inline styles to DS classes in SF-089D (Component Library), at which point the content files are simplified.

---

## 9. Mobile Experience Principles

Mobile is not a scaled-down version of desktop. Define explicitly:

1. **Nav collapses to hamburger; essential nav items are 4 or fewer** — current 6-item nav on mobile is too long for a tap target list
2. **Hero text is two lines maximum at 375px width** — long headlines break across 4–5 lines on mobile
3. **Cards stack to single column; vertical rhythm becomes the primary hierarchy signal**
4. **CTAs are full-width buttons on mobile** — not inline text links
5. **No hover states on mobile** — hover state designs are irrelevant; tap states need explicit design
6. **Footer collapses to accordion on mobile** — 5-column footer becomes 5 accordion sections

---

## 10. North Star Statement

> The AI Solutions Capability Portal is the digital answer to every question a prospect asks between the first sales call and the first technical discovery meeting — delivered with enterprise credibility, technical specificity, and a clear path from interest to engagement.

Every design decision is evaluated against this statement. If a design choice does not help a prospect move from "curious" to "ready to schedule a discovery call," it is either irrelevant or an obstacle.

---

## Document Governance

| Section | Owner | Review trigger |
|---|---|---|
| Product Identity | Practice Lead | Major positioning change |
| Emotional Design | Practice Lead + Sales | Every 6 months |
| Visual Language | Engineering Lead | Every design system change |
| Critical Gaps | Engineering Lead | Post each implementation slice |
| North Star | General Manager | Annual strategy review |
