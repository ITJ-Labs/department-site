# About Blueprint

**Page:** About  
**URL:** `/about/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-088  
**Status:** BLUEPRINT — Pending executive review  
**Source documents:** `docs/product/ai_solutions_product_strategy.md`, `docs/product/website_objectives.md`

**Current state:** Live at `/about/`. Content is hardcoded HTML in `content/about/_index.md`. Team is hardcoded (4 members). Mission/vision text references "ITJ Labs Department" — needs updating to "AI Solutions at ITJ Solutions."

---

## Page Purpose

The About page exists to build human trust. Enterprise buyers and recruiting candidates need to know that behind the AI Solutions brand is a team of real experts with real credentials — not a marketing facade or a reseller front.

This page must answer three questions:
1. Who built this practice and why?
2. Who is on the team? Are they qualified to do what they claim?
3. Why does this team exist as a separate practice?

---

## Target Audience

**Primary:** Executive buyers in late-stage evaluation who need to validate the team before committing to a discovery call.

**Secondary:** Senior AI engineers and data scientists evaluating AI Solutions as a potential employer. They read the team profiles carefully and will notice if credentials are thin.

**Tertiary:** Technology partners researching AI Solutions' leadership before proposing a co-delivery arrangement.

---

## Business Objective

Convert a late-stage skeptic. A buyer who clicks "About" after reading the home page and solutions has high intent — they just need to validate the team. This page closes that gap.

For recruiting: inspire a senior AI engineer or data scientist to submit an application.

---

## Hero

**Headline:** "The Team Behind the AI"  
**Subheadline:** "AI Solutions is the applied AI engineering practice of ITJ Solutions — a team of PhD researchers, data scientists, and AI engineers organized around one mission: building AI that ships."  
**Primary CTA:** "Work With Our Team" → `/contact/`  
**Secondary CTA:** "See What We Build" → `/solutions/`

*Note: "Join Our Team" should be a secondary link if recruiting is a current priority. See ER-AB02.*

---

## Key Messages

**KM-AB01:** AI Solutions is not a typical AI consulting team. The credentials are research-grade: published researchers, PhD holders, and engineers with production AI deployments behind them.

**KM-AB02:** The AI Delivery OS — the autonomous platform that manages AI Solutions' own development — is built and operated by this team. What the team builds for internal use, it can build for clients.

**KM-AB03:** AI Solutions is grounded in long-standing institutional partnerships with CITEDI, CETYS, UABC, and ITT-TecNM — connecting world-class AI research with enterprise delivery.

**KM-AB04:** The mission of AI Solutions is not just to build AI. It is to advance the field — through publications, knowledge sharing, and training the next generation of AI engineers.

---

## Sections

### Section 1 — Mission and Vision

**Purpose:** Give the practice a reason to exist beyond "we do AI consulting."

**Content summary:**

Current content uses the old "ITJ Labs Department" framing. This section must be rewritten to match the approved product strategy.

**Mission (recommended):**
> "Deliver production-ready AI systems that create measurable business outcomes for enterprise clients — with the engineering rigor, delivery discipline, and responsible practices that enterprise AI demands."

**Vision (recommended):**
> "To become the reference AI engineering practice for enterprise organizations that need AI to work in production — not just in a demo. A research-driven team known for taking AI from concept to deployed value."

**Format:** Two-column card layout (current design preserved) with updated text.

**Executive Review Note ER-AB01:** Do Mission and Vision statements above accurately represent the team's positioning? These require executive approval before publishing.

---

### Section 2 — Our Goals (or "How We Work")

**Purpose:** Explain how AI Solutions operates — not just what it does.

**Current content:** Three flip cards with "Build AI capabilities," "Design, build and implement AI products," "Divulge AI knowledge." This content is accurate but the language is generic.

**Recommended update:**

Keep the three-goal structure. Update copy:

| Goal | Current Title | Recommended Update |
|---|---|---|
| 1 | Build capabilities around AI | Build AI systems that work in production |
| 2 | Design, build and implement AI products | Deliver from PoC to production — no graveyard |
| 3 | Divulge AI knowledge and information | Advance the field through research and teaching |

**Supporting visuals:** Keep current flip-card design. Update icon images if new brand assets become available.

---

### Section 3 — The AI Delivery OS (Proof Section)

**Purpose:** This section is the most differentiating content on the About page. It is not a product pitch — it is evidence that the team practices what it preaches.

**Content summary:**

> "We build AI that runs itself. The platform you are visiting right now is maintained by our AI Delivery OS — an autonomous engineering system that manages content publishing, quality validation, and deployment without human intervention."

> "The same engineering discipline we apply to client systems — lifecycle management, validation gates, production monitoring — runs AI Solutions' own operations. This is not a feature. It is how we work."

**Format:** Single callout block. No CTA — this is a proof point, not a conversion section.

**Executive Review Note ER-AB03:** Is the team comfortable making this public claim about the AI Delivery OS? The claim is accurate but represents a commitment to maintain. Validate with Engineering Lead.

---

### Section 4 — Team

**Purpose:** Human faces. Real credentials. Enterprise buyers and candidates need to see the actual people.

**Current content:** 4 team members hardcoded in HTML. Phil Sweeney, Rafael GPL, Dr. Miguel López, Ivan Romero.

**Recommended changes:**
- Update "About Us" title references to "AI Solutions at ITJ Solutions" where applicable
- Review and update team bios to match product strategy positioning (e.g., titles like "Principal Business Leader" should map to current organizational structure)
- Add LinkedIn and academic profile links for all team members that have them (currently varies)

**Team member content requirements:**

| Field | Phil Sweeney | Rafael GPL | Dr. Miguel López | Ivan Romero |
|---|---|---|---|---|
| Photo | ✅ images/team/phil.png | ✅ images/team/rafa.png | ✅ images/team/drmike.png | ✅ images/team/ivan.png |
| Title | Principal Business Leader | Data Science Director | Data Science Manager | Project Manager |
| Quote | ✅ present | ✅ present | ✅ present | ✅ present |
| Expertise list | ✅ present | ✅ present | ✅ present | ✅ present |
| LinkedIn | ✅ phillipsweeney | ✅ rafaelgpl | ✅ present | ✅ ivanrromero |
| ORCID | — | — | ✅ 0000-0001-5367-9801 | — |
| Google Scholar | — | — | ✅ ejQAKasAAAAJ | — |
| Scopus | — | — | ✅ 57212031562 | — |

**Executive Review Note ER-AB04:** Should individual team member detail pages be created (`/team/{slug}/`)? Current plan defers this to a later slice. Confirm.

**Executive Review Note ER-AB05:** Are there additional team members who should be added before launch? The current team section shows 4 people.

---

### Section 5 — Institutional Partners

**Purpose:** Academic and institutional partnerships signal research credibility and community roots.

**Current content:** Four partner logos — CITEDI-IPN, CETYS, UABC, ITT-TecNM. These are correct and should be preserved.

**Recommended update:** Add one sentence per partner describing the nature of the collaboration (e.g., "Joint research in computer vision and AI systems"), if partnerships have enough specificity to support it.

**Executive Review Note ER-AB06:** Are there specific joint publications or projects with CITEDI, CETYS, UABC, or ITT-TecNM that can be referenced?

---

### Section 6 — Bottom CTAs

**Two CTA options:**

| Persona | CTA | Target |
|---|---|---|
| Client | "Work With Our Team" | `/contact/` |
| Candidate | "Join AI Solutions" | `mailto:labs@itj.com?subject=Career Opportunity` or dedicated careers section |

Format: Two-button layout. Primary (blue) = Work with us. Ghost = Join us.

---

## Executive Review Notes

**ER-AB01:** Mission and Vision copy approval required.

**ER-AB02:** Is recruiting a current active priority? If yes, the "Join Our Team" CTA should be more prominent and a careers section should be considered.

**ER-AB03:** AI Delivery OS public reference — does the team approve this proof point for the About page?

**ER-AB04:** Individual team member pages (`/team/{slug}/`) — defer or include in SF-SLICE-088?

**ER-AB05:** Additional team members to add at launch?

**ER-AB06:** Partner collaboration descriptions — enough specificity to add context beyond logos?

---

## Future Enhancements

- Individual team member pages (`/team/{slug}/`) with full bio, publications, and expertise
- Careers section (open roles, application process)
- Advisory board section (if applicable)
- Video "Who We Are" short-form content
- Press / media mentions section
- Company timeline and founding story
- Open source contributions page
