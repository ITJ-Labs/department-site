# Contact Blueprint

**Page:** Contact  
**URL:** `/contact/`  
**Slice:** SF-SLICE-087G-WEBSITE-CONTENT-BLUEPRINT  
**Implementation Slice:** SF-SLICE-088 (light update)  
**Status:** BLUEPRINT — Minimal changes from current  
**Source documents:** `docs/product/website_objectives.md`, `docs/product/navigation_model.md`

**Current state:** Live. FormSubmit.co integration active. Labs@itj.com routing. WhatsApp number visible. LinkedIn linked. Design system tokens applied. This page is functional and does not require major changes in MVP.

---

## Page Purpose

Complete the conversion. Remove all friction between a qualified visitor and a response from AI Solutions.

Every other page on the site exists, in part, to bring visitors to this page. The Contact page must be simple, fast, and reassuring.

---

## Target Audience

**Primary:** Any visitor with conversion intent — all 6 personas at the point where they are ready to initiate contact.

**Specific trigger:** Visitors who clicked a CTA from any page (solution demo request, technical briefing, industry inquiry, partnership exploration).

---

## Business Objective

Maximize form submission completion rate. Secondary: ensure every contact channel (email, WhatsApp, LinkedIn) is current and correct.

---

## Hero

**Headline:** "Let's Talk"  
**Subheadline:** "Whether you have a project in mind, a use case to explore, or a question about whether AI can solve your problem — our team responds within 1 business day."  
**No CTA here** — the form IS the CTA

*Current headline on page: "Get in Touch" (section level, not page level). Recommend promoting to a page-level H1.*

---

## Key Messages

- Low friction: no phone screening required to start a conversation
- Fast response: 1 business day commitment
- Multiple channels: email, WhatsApp, LinkedIn — contact however you prefer
- No commitment required to inquire

---

## Sections

### Section 1 — Context Setter

**Purpose:** Reduce the "will I be pestered by a salesperson?" objection.

**Content summary (brief):**

> "We keep it simple. Tell us what you're working on and we'll tell you honestly whether AI Solutions is the right fit. No pressure, no sales cycle."

**Format:** 2–3 sentences above the form. Not a wall of text.

---

### Section 2 — Contact Form

**Current implementation:** FormSubmit.co form routing to labs@itj.com. Fields: Name, Email, Message. Hidden fields: subject, captcha, redirect.

**Recommended updates for SF-SLICE-088:**

Add an optional "Interest" field to improve routing and response quality:

```html
<div class="form-group">
  <label for="interest">What are you reaching out about? (optional)</label>
  <select id="interest" name="interest">
    <option value="">Select one...</option>
    <option value="neurodocs">NeuroDocs — Document AI</option>
    <option value="cv-extractor">CV Extractor — Resume Parsing</option>
    <option value="talentbot">TalentBot — HR AI</option>
    <option value="custom-ai">Custom AI Project</option>
    <option value="technical">Technical Discussion</option>
    <option value="partnership">Partnership</option>
    <option value="recruiting">Career Opportunity</option>
    <option value="other">Other</option>
  </select>
</div>
```

**Current FormSubmit.co limitations:** FormSubmit.co does not provide submission tracking, CRM routing, or analytics. This is a known gap (SF-094 will address it with a proper lead capture system). For MVP, the current FormSubmit.co integration is acceptable.

**Subject line update:** Current: "New message from AI Solutions website." Recommend updating to include the interest field when FormSubmit.co supports it.

---

### Section 3 — Direct Contact Info

**Current content:**
- Email: labs@itj.com
- WhatsApp: +52 664 416 4937
- LinkedIn: linkedin.com/company/itj/

**Recommended additions:**
- Response time signal: "We respond within 1 business day"
- Time zone note: "Working hours: Tijuana, Mexico (Pacific Time)" — this sets correct expectations for international inquiries

---

### Section 4 — What Happens Next

**Purpose:** Remove the "then what?" objection. Buyers want to know the process before they commit to entering the funnel.

**Content summary:**

```
After you submit:

1. You'll receive an auto-confirmation email within 5 minutes
2. A member of our team reviews your message (within 1 business day)
3. We schedule a 30-minute discovery call to discuss your use case
4. We provide a preliminary assessment — no charge, no commitment
```

**Format:** 4-step numbered list. Clean, minimal.

**Note:** This section should only be added if the process described is actually what happens. If the current process differs, match the content to reality. Do not promise a response timeline that cannot be met.

**Executive Review Note ER-CO01:** Is the "1 business day response" commitment currently being met? If not, adjust to "within 2 business days" or whatever is accurate.

---

## Executive Review Notes

**ER-CO01:** Is the current email (labs@itj.com) and WhatsApp (+52 664 416 4937) correct and actively monitored?

**ER-CO02:** Is the "1 business day" response commitment accurate and sustainable?

**ER-CO03:** Should there be a phone number? Current contact info does not include a direct phone number — only WhatsApp.

**ER-CO04:** Should the redirect URL after form submission go somewhere more useful than the home page? A "Thank you" page would enable conversion tracking and provide a better UX.

**ER-CO05:** Is "LinkedIn" the right social channel for the contact section, or should other channels (Twitter/X, GitHub) be added?

---

## Future Enhancements (SF-094)

- CRM integration (form submissions routed to CRM with lead source attribution)
- Calendly or equivalent calendar link (skip the email step and book directly)
- Separate "Thank you" page with next steps and content recommendations
- Conversion tracking (Google Analytics 4 goal completion)
- Interest-based email routing (different team member receives inquiry based on "Interest" field)
- Chat widget (TalentBot / AI Delivery OS powered — meta proof point)
- Response time analytics (track actual vs. committed response time)
