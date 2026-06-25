# Lead Capture Strategy — AI Solutions Digital Platform

**Document type:** Business Decision  
**Status:** OPEN — Pending executive alignment  
**Created:** 2026-06-25  
**Owner:** AI Solutions at ITJ Solutions  
**Target slice:** SF-SLICE-094  

---

## Purpose

This document records the business decision required before implementing a production lead capture system on the AI Solutions Digital Platform.

Lead capture is not a technical problem — it is a business operations problem. The right implementation depends on decisions about ownership, routing, CRM, consent, and workflow that must be made by the appropriate stakeholders before engineering work begins.

The current contact form (`https://formsubmit.co/labs@itj.com`) is a **temporary placeholder** installed during SF-SLICE-087C to prevent form submissions from being silently discarded. It is not the production implementation.

---

## Why Lead Capture Is Deferred

Lead routing intersects with:

- **Sales process** — Who follows up? With what SLA?
- **CRM strategy** — Is there an active CRM? Which one?
- **Marketing attribution** — How are leads tracked to campaigns?
- **Legal and privacy** — GDPR, CCPA, consent to marketing
- **Brand positioning** — Does contact go to AI Solutions specifically, or to ITJ Solutions corporate?

These questions cannot be answered by engineering alone. They require alignment across the business before a production system is specified.

---

## Business Stakeholders

| Stakeholder | Role in Decision |
|---|---|
| General Manager | Approves lead routing strategy; defines who owns incoming inquiries |
| Sales | Defines follow-up process, SLA, qualification criteria |
| Marketing | Defines attribution, campaigns, consent requirements |
| AI Solutions Practice Lead | Defines which inquiries route to AI Solutions vs. corporate |

---

## Questions to Resolve

### Ownership
- Who owns an incoming lead from the AI Solutions website?
- Does it go to Sales, to the General Manager, to a shared team mailbox, or to AI Solutions directly?
- Is there a triage step before routing?

### Routing
- Should all contact form submissions go to the same place?
- Should the form offer service-area routing (e.g., "I'm interested in: [dropdown]")?
- Should high-value leads be escalated automatically?

### CRM Selection
The following platforms should be evaluated:

| Platform | Notes |
|---|---|
| **HubSpot** | Free tier available; strong marketing automation; common for inbound lead capture |
| **Salesforce** | Enterprise standard; requires license; deep CRM |
| **Microsoft Dynamics 365** | Relevant if ITJ Solutions uses Microsoft 365 ecosystem |
| **Email only** | Simplest; routes to a shared mailbox; no CRM overhead |

Key questions:
- Does ITJ Solutions already have an active CRM license?
- Is Sales currently managing leads in a spreadsheet or tool?
- What is the expected volume of leads from the website?

### Form Design
- What fields should the production form capture?
  - Name, email, message (current)
  - Company, phone, service interest (enhanced)
  - Budget range, project timeline (qualifying)
- Should there be a multi-step form?

### Analytics
- Should form submissions be tracked in Google Analytics / GA4?
- Should there be conversion events tied to form submission?
- How will UTM parameters be handled?

### Privacy and Consent
- Is explicit consent to marketing required (GDPR/CCPA)?
- Should there be a privacy policy link adjacent to the form?
- Does the form need an opt-in checkbox?
- What is the data retention policy for submitted contact information?

### Success Experience
- What happens after a form is submitted?
  - Current: redirect to homepage via `_next`
  - Production option: dedicated Thank You page with next steps
  - Production option: confirmation email to the submitter

---

## Current Placeholder

The contact form at `/contact/` currently POSTs to:

```
https://formsubmit.co/labs@itj.com
```

**FormSubmit.co characteristics:**
- Free, no registration required
- Requires email verification on first submission
- No CRM integration
- No analytics
- No consent management
- Submissions arrive as plain email

**This placeholder remains active until SF-SLICE-094 is implemented.** It prevents form submissions from being discarded. It should not be treated as a production lead capture implementation.

**Activation note:** FormSubmit requires a one-time email confirmation to `labs@itj.com` before delivering submissions. Until that confirmation is clicked, submissions are held.

---

## Future Integration Options

Once business decisions are made, the implementation in SF-SLICE-094 may include:

| Integration | Use Case |
|---|---|
| **HubSpot Forms API** | Native CRM integration; lead tracking; automation workflows |
| **Salesforce Web-to-Lead** | Enterprise CRM; requires Salesforce license |
| **Azure Function** | Custom middleware; routes to any backend; supports consent logging |
| **AWS Lambda** | Serverless backend; event-driven routing |
| **Microsoft Power Automate** | No-code workflow; integrates with Microsoft 365 and Dynamics |
| **Netlify Forms** | Only works on Netlify hosting — not applicable here (GitHub Pages) |
| **Formspree** | Paid tier supports webhooks and integrations |

---

## Expected Outcome

Before SF-SLICE-094 begins, the following must be documented:

- [ ] Lead owner confirmed (name and role)
- [ ] Routing decision confirmed (email / CRM / shared mailbox)
- [ ] CRM selection confirmed (or explicitly deferred to email-only)
- [ ] Consent requirements confirmed (basic / GDPR-compliant / explicit opt-in)
- [ ] Form fields confirmed
- [ ] Success experience confirmed (redirect / thank-you page / confirmation email)

**SF-SLICE-094 will not begin until this document is updated with confirmed decisions.**

---

## References

- Current contact form: `content/contact/_index.md`
- Current placeholder action: `https://formsubmit.co/labs@itj.com`
- Platform roadmap: `docs/roadmap/ai_solutions_platform_roadmap.md`
- Production readiness gate: `docs/release/production_readiness_v1.md`
