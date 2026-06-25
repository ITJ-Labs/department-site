# AI Solutions Digital Platform Roadmap

**Project:** AI Solutions at ITJ Solutions — Official Digital Platform  
**Created:** 2026-06-24  
**Status:** Active — Phase 1 in progress

---

## Vision

Build the official digital platform for **AI Solutions at ITJ Solutions**.

The platform should become:

- The public face of the AI Solutions practice
- A sales enablement asset
- A recruiting asset
- A technical credibility asset
- A continuously evolving knowledge platform
- The first production system maintained by the AI Delivery OS

---

## Phase 1 — Foundation

### SF-SLICE-087C — Platform Stabilization

**Status:** ✅ COMPLETE  
**Objective:** Stabilize the current Hugo website.

**Delivered:**
- Fast-forward merged `feature/local-home-page` → `develop`
- Fixed Makefile (`test-deploy.sh` → `deploy.sh`)
- Resolved CSS cascade conflict (`nav.css` vs `main.css`)
- Fixed navigation (sidebar layout, mobile drawer, `nav-overlay` element added)
- Fixed layout (double `site-container` on homepage removed)
- Wired contact form to FormSubmit.co placeholder (production lead capture deferred to SF-SLICE-094)
- Hardened CI pipeline (`extended: true`, `workflow_dispatch`, `force_orphan: false`, YAML fold fix)
- GitHub Pages CI validated: ✅ green, live site verified
- Production Readiness: `docs/release/production_readiness_v1.md`

**Outcome:** Stable production baseline. Production Ready = YES.

---

### SF-SLICE-087D — Corporate Brand Alignment

**Status:** PLANNED  
**Objective:** Align the entire experience with the ITJ Solutions brand.

**Deliverables:**
- Typography
- Color palette
- Components
- Buttons
- Navigation
- Icons
- Spacing
- Hero style
- Brand guidelines

**Outcome:** The site feels like an official ITJ Solutions property.

---

## Phase 2 — Information Architecture

### SF-SLICE-087E — AI Solutions Information Architecture

**Status:** PLANNED  
**Objective:** Restructure the website around business capabilities.

**Target Navigation:**
```
Home
AI Solutions
  Services
  Capabilities
  Solutions
  Industries
  Accelerators
Insights
  Publications
Team
Contact
```

**Outcome:** Enterprise-ready navigation.

---

### SF-SLICE-087F — Executive Content & Messaging

**Status:** PLANNED  
**Objective:** Create executive-level messaging.

**Sections:**
- Hero
- Value Proposition
- Why ITJ
- AI Capabilities
- Delivery Model
- Industries
- Success Stories
- Technology
- Call to Action

**Outcome:** Ready for General Manager review.

---

## Phase 3 — AI Solutions Platform

### SF-SLICE-088 — AI Solutions Website MVP

**Status:** PLANNED  
**Objective:** Deliver the first production-ready version.

**Pages:** Home, Services, Capabilities, Solutions, Industries, Accelerators, Insights, Publications, Team, Contact

**Outcome:** Public MVP.

---

### SF-SLICE-089 — Capability Showcase

**Status:** PLANNED  
**Objective:** Demonstrate what AI Solutions can deliver.

**Capabilities:**
- AI Engineering
- Agentic AI
- AI for Software Engineering
- Computer Vision
- Data Engineering
- Generative AI
- Cloud AI
- LLM Engineering
- MLOps

**Outcome:** Customers understand capabilities immediately.

---

### SF-SLICE-090 — Case Studies

**Status:** PLANNED  
**Objective:** Business credibility.

**Potential sections:** Healthcare, Life Sciences, Manufacturing, Enterprise AI, Internal Accelerators

**Outcome:** Evidence of delivery.

---

### SF-SLICE-091 — Publications & Insights

**Status:** PLANNED  
**Objective:** Technical authority.

**Sections:** Technical Articles, Research, Conference Talks, Open Source, White Papers, Engineering Blog

**Outcome:** Long-term credibility.

---

## Phase 4 — AI Delivery OS Integration

### SF-SLICE-092 — AI Delivery OS Content Automation

**Status:** PLANNED  
**Objective:** Content becomes mission-driven.

**Automation flows:**
```
New publication → Mission → Website updated → Deploy
New case study  → Mission → Review → Deploy
New capability  → Mission → Website update → Deploy
```

**Outcome:** Website maintained by AI Delivery OS.

---

### SF-SLICE-093 — Continuous Website Operations

**Status:** PLANNED  
**Objective:** Operate the website as a production system.

**Capabilities:**
- Automated content updates
- Broken link detection
- SEO validation
- Accessibility validation
- Image optimization
- Publication indexing
- Deployment validation
- Continuous monitoring

**Outcome:** Continuous digital operations.

---

## Phase 5 — Lead Capture and Business Operations

### SF-SLICE-094 — Lead Capture Strategy

**Status:** PLANNED — blocked until business decisions confirmed  
**Objective:** Replace the FormSubmit placeholder with a production lead capture system aligned to the ITJ Solutions sales and CRM strategy.

**Prerequisites:**
- Business decision document completed: `docs/strategy/lead_capture_strategy.md`
- Lead owner confirmed (General Manager / Sales / AI Solutions)
- CRM selection confirmed (HubSpot / Salesforce / Dynamics / email)
- Consent requirements confirmed (GDPR / CCPA / basic)

**Scope:**
- Remove FormSubmit.co placeholder
- Implement confirmed CRM or routing integration
- Add consent checkbox and privacy policy link if required
- Build Thank You / confirmation experience
- Wire analytics conversion event (GA4 / equivalent)
- Document lead routing SLA

**Not in scope:** CRM administration, sales process design, marketing automation setup

**Outcome:** Production lead capture — every submission is routed, tracked, and owned.

---

## Phase 6 — AI Solutions Digital Platform (Long-Term Vision)

The website evolves into a complete digital platform including:

- AI Solutions
- Publications
- Case Studies
- Insights
- Events
- Technical Blog
- Open Source
- Accelerators
- AI Delivery OS
- Recruiting
- Partner Enablement

---

## Success Metrics

**Business:**
- Executive approval
- Customer engagement
- Sales enablement
- Recruiting support

**Technical:**
- Production stability
- Lighthouse performance
- Accessibility
- CI/CD reliability

**Strategic:**
- AI Delivery OS maintains the platform
- New content published through autonomous missions
- Platform becomes the canonical source for AI Solutions

---

## North Star

> The AI Solutions Digital Platform is not simply a website.
> It is the living public representation of ITJ Solutions' AI engineering capabilities,
> continuously maintained by the AI Delivery OS and demonstrating the same engineering
> excellence it promotes.

---

## Slice Status Tracker

| Slice | Name | Phase | Status |
|---|---|---|---|
| SF-SLICE-087A | Current State Audit | 1 / Foundation | ✅ COMPLETE |
| SF-SLICE-087B | GitOps & Research Benchmark | 1 / Foundation | ✅ COMPLETE |
| SF-SLICE-087C | Platform Stabilization | 1 / Foundation | ✅ COMPLETE |
| SF-SLICE-087D | Corporate Brand Alignment | 1 / Foundation | ▶️ NEXT |
| SF-SLICE-087E | Information Architecture | 2 / IA | 📋 PLANNED |
| SF-SLICE-087F | Executive Content & Messaging | 2 / IA | 📋 PLANNED |
| SF-SLICE-088 | AI Solutions Website MVP | 3 / Platform | 📋 PLANNED |
| SF-SLICE-089 | Capability Showcase | 3 / Platform | 📋 PLANNED |
| SF-SLICE-090 | Case Studies | 3 / Platform | 📋 PLANNED |
| SF-SLICE-091 | Publications & Insights | 3 / Platform | 📋 PLANNED |
| SF-SLICE-092 | AI Delivery OS Content Automation | 4 / OS Integration | 📋 PLANNED |
| SF-SLICE-093 | Continuous Website Operations | 4 / OS Integration | 📋 PLANNED |
| SF-SLICE-094 | Lead Capture Strategy | 5 / Business Ops | 📋 PLANNED — awaiting business decision |
