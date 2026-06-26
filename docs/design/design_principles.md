# AI Solutions — Design Principles

**Document:** Design Principles  
**Practice:** AI Solutions at ITJ Solutions  
**Slice:** SF-SLICE-089A-PRODUCT-EXPERIENCE-VISION  
**Date:** 2026-06-25  
**Status:** BINDING — These principles govern all UX, UI, and content decisions for the AI Solutions Capability Portal  
**Audience:** Frontend Engineers, Content Authors, Product Design  
**Depends on:** `product_experience_vision.md`

---

## About These Principles

Design principles are not aesthetic preferences. They are decision-making tools.

When two design choices are in tension, these principles resolve the conflict. When a new feature is proposed, these principles determine whether it belongs. When content is written, these principles determine whether it communicates correctly.

Each principle is stated as an actionable rule, not an aspiration. It includes a rationale (why) and an application test (how to check compliance).

---

## The Principles

---

### P-01 — One Claim Per Screen Section

**Rule:** Every section of every page has exactly one primary message. If a section is trying to say two things, it is trying to say nothing.

**Rationale:** A prospect scanning the site at 30% attention will not read paragraphs. They will read the boldest, largest, most prominent element in each visual zone. If that element carries one clear claim, they receive the message. If it carries two competing claims, they receive neither.

**Application test:** Can you cover the body text of a section and still understand what that section is claiming from the heading alone? If yes, the heading carries the claim. If no, the heading is descriptive rather than declarative — rewrite it.

**Violation example:** A section titled "Our Capabilities" followed by 8 equal-weight cards. The section makes no claim — it makes a list. Add a claim above the grid: "Eight production-ready AI capabilities, from RAG to MLOps."

---

### P-02 — Capabilities Before Technologies

**Rule:** State what we can build before naming the tools we use to build it. Every technology reference is a footnote to a capability claim, not a headline.

**Rationale:** A prospect evaluating AI Solutions wants to know if we can solve their problem. They do not want to know if we use LangChain vs. LlamaIndex. The tool choice is our decision, not theirs. Leading with technology names signals "we are a technology vendor" rather than "we are a problem-solving engineering practice."

**Application test:** Read any capability or solution page. Is the first thing you encounter a problem statement or a tool name? Problem statement = compliant. Tool name = rewrite the opening.

**Violation example:** A RAG capability page that opens with "We use LangChain, Pinecone, and OpenAI embeddings to build retrieval-augmented generation systems." Instead: "We build AI that answers questions using your organization's documents — regulatory filings, SOPs, contracts — with full source traceability. (Stack: LangChain, Pinecone, OpenAI embeddings)"

---

### P-03 — Every Page Earns One Action

**Rule:** Every page has exactly one primary CTA. Everything else is navigation or supporting content. The CTA is earned by the content — placed after the content has made its case, not before.

**Rationale:** Multiple competing CTAs produce decision paralysis. A primary CTA placed at the top of a page (before the content has established value) is ignored — it has not been earned. A single CTA placed after the case has been made converts because the visitor has been prepared to act.

**Application test:** List the CTAs on any page. Is there exactly one primary button? Does it appear after the main content has been read? Does it point to a specific action (not a generic "Contact Us")? Three yes answers = compliant.

**Violation example:** A capability page with "Explore our solutions →" in the mid-page, "Schedule a demo" as a card CTA, and "Schedule a Discovery Call" as a footer CTA. Three CTAs with overlapping intent. Consolidate to one: the most specific, the most commitment-appropriate for that page context.

---

### P-04 — Clarity Is the Luxury

**Rule:** Precision language is a premium signal. Vague language is a credibility cost. Prefer the specific and humble over the grand and empty.

**Rationale:** Enterprise buyers of AI services are sophisticated. They recognize generic AI marketing language immediately — "leverage cutting-edge AI," "transform your business," "AI-powered solutions" — and discount the source. Specificity signals confidence. "We built a RAG pipeline that processes 50,000 regulatory documents per day with sub-2-second retrieval" is more credible than "AI Solutions delivers world-class AI performance."

**Application test:** Read any paragraph and ask: would a skeptic believe this? Could a journalist quote this without qualifications? Specific and verifiable = compliant. Vague and aspirational = rewrite.

**Banned language:** "cutting-edge," "state-of-the-art," "world-class," "innovative," "transformative," "AI-powered" (when "AI" is already in the context), "leverage," "synergy," "paradigm shift."

---

### P-05 — Depth on Demand

**Rule:** No page should require deep reading to be useful at a glance. But every page should reward deep reading when the visitor chooses to go deep.

**Rationale:** The portal serves three reading modes simultaneously: scan (executive, 30 seconds), read (technical buyer, 3 minutes), study (engineer, 20 minutes). The portal fails all three if it is optimized for only one. Depth on demand means: a scannable summary leads, full detail follows, reference material links out.

**Application test:** Can you get the page's primary claim in 5 seconds without scrolling? Can you get a complete understanding in 3 minutes by reading? Is there a publication, case study, or technical resource linked for someone who wants more? Three yes answers = compliant.

**Implementation pattern:** Section opening: one bold claim. Section body: supporting detail in 2-3 paragraphs or a 4-6 item list. Section footer: one cross-link to deeper content. CTA: one action.

---

### P-06 — Diagrams Before Paragraphs for Process

**Rule:** Any process with 3 or more sequential steps is better represented as a diagram than as a bulleted list or prose. Any technical architecture is better represented as a visual than as a text description.

**Rationale:** The How We Engage page describes a 4-phase delivery model. The CRISP-ML(Q) section describes a 6-phase methodology. The RAG capability page describes a 6-step retrieval pipeline. None of these are currently illustrated. A prospect reading an AI firm's process description and seeing only text makes an implicit comparison to firms that illustrate their process — and the illustrated firm appears more credible and organized.

**Application test:** Every process description with ≥3 sequential steps must have a diagram. Every system architecture reference (RAG pipeline, CV pipeline, ML training workflow) must have a visual. If a diagram is absent, content has not been completed.

**Standard diagram format:** SVG. Line-based. Primary blue + gray. Horizontal or vertical flow. No 3D effects. No drop shadows. Consistent with the token system.

---

### P-07 — No Empty Sections — Placeholder or Omit

**Rule:** A section that exists but has no content is worse than no section at all. Every visible section must either have real content or an honest placeholder that explains when content is expected.

**Rationale:** An empty "Case Studies" heading with nothing beneath it signals that AI Solutions has no case studies — which may be true, but the signal is damaging. A placeholder that says "Case studies shared during discovery calls — contact us to learn about our work in your industry" converts the absence into an invitation. The current case studies page does this correctly; this principle ensures the pattern is consistent.

**Application test:** Navigate every section of the site. Identify any empty or near-empty sections. Each must either have real content or be replaced with an explicit placeholder that explains the gap without creating a credibility deficit.

---

### P-08 — Consistent Elevation Language

**Rule:** Visual elevation (shadow, border emphasis, background contrast, border-top accent) communicates importance. Use elevation consistently: higher elevation = higher importance or interactivity. Never use elevation decoratively.

**Rationale:** The current DS has `shadow-sm`, `shadow-md`, `shadow-lg` and card variants. But the usage is inconsistent — some `ds-card` elements have hover shadows, some do not. Some blocks use `ds-card-accent` (top-border accent), some use `style="border-top: 3px solid var(--color-primary)"` inline. This inconsistency makes the visual hierarchy ambiguous.

**Elevation rules:**
- `shadow-sm` + no hover = static information block (no action available)
- `shadow-sm` + hover lift = navigable card (click available)
- `shadow-md` = featured or emphasized content
- `shadow-lg` = modal or maximum emphasis
- Top-border accent = actionable section (CTA block, featured card)

**Application test:** Every shadow and border-accent usage must map to one of the above rules. Shadows that don't fit the rules = inconsistency to resolve.

---

### P-09 — Navigation Mirrors the Sales Conversation

**Rule:** The navigation order and naming must follow the sequence of the sales conversation, not the organizational structure of the business.

**Rationale:** The current navigation (Home → Solutions → Capabilities → Industries → How We Engage → Contact) is correct because it mirrors: "What do we build? → How do we build it? → Do we know your industry? → What does working with us look like? → Let's talk." Any future nav change must evaluate whether it preserves this sequence.

**Application test:** Map each nav item to the stage of a sales conversation where a prospect asks the corresponding question. If the sequence doesn't match a natural conversation flow, the nav is wrong.

**Future nav changes:** "Insights" enters the nav between "How We Engage" and "Contact" in Phase 2 (≥5 published items). No other nav changes are scheduled. The nav should remain stable — frequent nav changes undermine the salesperson's ability to reference specific URLs confidently.

---

### P-10 — Every Color Carries a Specific Meaning

**Rule:** No color is used decoratively. Every color usage maps to a semantic meaning defined in the token system. A new color usage requires a new token with a declared meaning.

**Rationale:** The current token system assigns clear semantic roles: blue = primary action, green = success status, gray scale = text hierarchy. The EP-04 violation (green CTA button) happened because this principle was not documented. A designer who doesn't know green = semantic only can easily repeat the error.

**Color semantic map:**
- `--color-primary` (#1a5ee6): primary interactive elements, CTAs, active states, links
- `--color-success` (#2e7d32): status indicators, success confirmations, check states — never CTAs
- `--color-text-primary` (#111111): primary readable content
- `--color-text-secondary` (#444444): supporting text, descriptions
- `--color-text-muted` (#666666): metadata, timestamps, captions
- `--color-surface` (#ffffff): primary page background
- `--color-surface-alt` (#f9f9f9): section alternation (light)
- `--color-surface-dark` (TO BE DEFINED): hero and high-emphasis sections
- `--color-surface-mid` (TO BE DEFINED): blue-tinted alternation sections

**Application test:** Every non-gray, non-text color on any page should be traceable to a token and its documented semantic meaning. Color without a token = violation.

---

### P-11 — Scarcity of Emphasis

**Rule:** If everything is emphasized, nothing is. Reserve the highest visual weight for the most important element on each page. Use bold text for no more than 3 phrases per section. Use highlighted backgrounds for no more than 1 section per page.

**Rationale:** The current implementation uses `font-weight: 600` and bold formatting broadly — most notably in the many `<strong>` tags in content pages. When many items are bold, boldness stops meaning "important" and starts meaning "formatted." Visual emphasis must be rationed.

**Application test:** On any section, cover the non-bold text. What does the bold text alone communicate? If it communicates the full message of the section, emphasis is calibrated correctly. If the bold text is random phrases rather than the key claims, emphasis has been wasted.

---

### P-12 — Content Drives Layout — Not the Reverse

**Rule:** Page layout is a container for content, not a template that content fills. When content requires a different layout to communicate correctly, change the layout — not the content.

**Rationale:** The current implementation uses the same two-column `ds-grid-2` layout on nearly every detail page (left: problems/description, right: capabilities/tech). This template was the right default for SF-088. But as pages mature, some content will not fit this template — a process diagram needs full width, a case study excerpt needs a different ratio, a comparison table needs a specific structure. The principle is: content needs drive layout needs, not the reverse.

**Application test:** On any page, ask: is the content being shortened, simplified, or restructured to fit the layout? If yes, the layout is constraining the content. Evaluate whether the layout needs to change.

---

### P-13 — Design for Discovery, Not for Browsing

**Rule:** This is not a blog. Visitors arrive with a purpose. Every design choice should reduce friction between arrival and that purpose — not invite leisurely exploration.

**Rationale:** The portal is not designed to keep visitors on the site for its own sake. A prospect who arrives knowing they want to learn about RAG capabilities should be at the RAG page in 2 clicks. A prospect who arrives knowing they want to contact us should be at the Contact form in 1 click. Design for the fastest path to the goal, then add depth for those who want it.

**Application test:** For each user persona, map the minimum click path from landing to goal. If any path exceeds 3 clicks from home, there is a navigation or linking problem.

---

### P-14 — Enterprise-Grade Typography

**Rule:** Load a curated typeface for display text. System fonts are acceptable for body text (performance). Display text (H1, H2, large section headings) must have a loaded typeface with intentional weight contrast.

**Rationale:** System fonts render identically on every website that uses them. A portal that uses system fonts for every element is visually indistinguishable from an unstyled website at the typographic level. Enterprise products (Stripe, Vercel, Anthropic) load branded typefaces because typography is a credibility signal — it communicates that deliberate design choices were made.

**Recommendation:** Inter or Plus Jakarta Sans. Both are open source (SIL OFL license), available on Google Fonts, and designed for UI use. Load weights 600 and 800 only for performance — these cover heading weights. Body text remains in system font stack.

**Performance constraint:** Font load must not block rendering. Use `font-display: swap` and preload the 600-weight variant. Total font payload ≤80KB across all loaded variants.

---

### P-15 — Sales Team Tests First

**Rule:** Before any design change is marked complete, it must pass the "show this to Sales" test: a salesperson reviews the change and confirms it helps them explain AI Solutions to a prospect in a meeting.

**Rationale:** Every other test of the portal (technical correctness, visual quality, performance) is a proxy for sales enablement. The direct test is whether the sales team would use the page in a client meeting. If the salesperson says "I would not open this during a call," the design has failed regardless of its other qualities.

**Application test:** At completion of each implementation slice, share the changed pages with at least one salesperson. Record their feedback. If they identify content or layout issues that would prevent them from using the page in a meeting, those issues block the slice from being marked complete.

---

## Quick-Reference Summary

| # | Principle | One-line rule |
|---|---|---|
| P-01 | One Claim Per Section | Every section communicates exactly one primary message |
| P-02 | Capabilities Before Technologies | Problem → capability → tools; never tools first |
| P-03 | Every Page Earns One Action | One primary CTA, placed after the content has made its case |
| P-04 | Clarity Is the Luxury | Specific and verifiable > grand and empty |
| P-05 | Depth on Demand | Scannable in 5 seconds, deep in 3 minutes, reference at all times |
| P-06 | Diagrams Before Paragraphs | Any 3+ step process requires a diagram |
| P-07 | No Empty Sections | Placeholder or omit; never an empty heading |
| P-08 | Consistent Elevation Language | Higher shadow = higher importance; never decorative |
| P-09 | Navigation Mirrors Sales Conversation | Nav order = sales conversation sequence |
| P-10 | Every Color Carries Meaning | No decorative color; all color maps to a token semantic |
| P-11 | Scarcity of Emphasis | Ration bold, highlights, and accents to preserve their signal |
| P-12 | Content Drives Layout | Change layout to fit content, not content to fit layout |
| P-13 | Design for Discovery | Fastest path to goal ≤3 clicks; depth available, not required |
| P-14 | Enterprise-Grade Typography | Load a display typeface; system fonts for body only |
| P-15 | Sales Team Tests First | Every change must pass the "in a client meeting" review |

---

## Principle Conflict Resolution

When two principles appear to conflict:

**P-01 vs. P-05 (one claim vs. depth):** P-01 governs the visual hierarchy — the heading and opening statement carry one claim. P-05 governs the depth below — you can go deep after establishing the claim. No conflict.

**P-03 vs. P-09 (one CTA vs. navigation mirrors sales):** P-03 governs page-level CTAs. Navigation is not a CTA. No conflict.

**P-06 vs. P-12 (diagrams vs. content drives layout):** P-06 requires a diagram when a process has ≥3 steps. P-12 says content drives layout. These align: the content requirement (diagram) drives the layout requirement (full-width or wide-column).

**P-04 vs. P-14 (clarity vs. typography):** These address different layers. Clarity governs language. Typography governs visual language. No conflict.

**Any unresolved conflict:** Escalate to Practice Lead. The North Star statement from `product_experience_vision.md` Section 10 is the final arbiter.
