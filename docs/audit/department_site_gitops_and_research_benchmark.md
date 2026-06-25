# Department Site — GitOps Strategy & Research Benchmark

**Document ID:** SF-SLICE-087B-DEPARTMENT-SITE-GITOPS-AND-RESEARCH-BENCHMARK  
**Date:** 2026-06-24  
**Precursor:** SF-SLICE-087A-DEPARTMENT-SITE-CURRENT-STATE-AUDIT  
**Auditor:** Claude Code (read-only, analysis only — no implementation changes applied)  
**Repo:** https://github.com/ITJ-Labs/department-site.git  
**Local path:** `/home/mike/projects/department-site`

---

## 1. GitOps Diagnosis

### Current Branch State

```
LOCAL
  * audit-local-home-page   → tracks origin/feature/local-home-page (e257f68)
    develop                 → 927ade2  [4 commits behind feature/local-home-page]
    main                    → 2a84bbb  [Initial commit only]

REMOTE (origin = https://github.com/ITJ-Labs/department-site.git)
  origin/HEAD              → origin/main
  origin/main              → 2a84bbb  [Initial commit only — never used for development]
  origin/develop           → 927ade2  [active development branch, stale]
  origin/feature/local-home-page → e257f68  [current development tip — 4 ahead of develop]
  origin/gh-pages          → ba77d42  [2 orphan deploy commits — live site]

  origin/codex/*  (5 branches — AI-generated experimental, status: UNMERGED)
    codex/add-papermod-theme-with-submodule-or-direct-files
    codex/search-for-incorrect-paths-in-markdown-files
    codex/troubleshoot-branch-for-github-pages-deploy
    codex/troubleshoot-hugo-deployment-to-github-pages
    codex/validate-homepage-with-minify-deployment

  origin/feature/* (many — mostly merged via PR)
    feature/about-us, feature/contact-page, feature/deploy-gh-actions,
    feature/events-page, feature/image-render-hook, feature/improve-workflow,
    feature/local-home-page ← ACTIVE (not yet merged into develop)
    feature/local-ui, feature/navbar-setup, feature/publication-vit-multiclass-2024,
    feature/publications-list, feature/services-poc-sandbox, feature/test-gh-pages-deploy,
    feature/ui-enhancements, feature/use-relURL-for-paths

  origin/fix/baseurl-ghpages         → likely merged
  origin/wip/nav-css-troubleshooting → in progress (known nav CSS issue)
```

### Branch History Graph (develop and feature/local-home-page)

```
* e257f68  (feature/local-home-page)  refactor: separate Why ITJ Labs styles
* 7767fc7                              refactor(home): extracted CTA styles
* 51846bd                              wip: ongoing layout tweaks
* 696158f                              style: Improve featured service card border
* 927ade2  (develop)                   docs: update TODO checklist
* e048fe6                              feat(contact): remove link underlines
* bc657d2                              Style: Refactor Contact page layout
* 833dfba                              Improve contact form design
* 704ee85                              feat(contact): improved contact page
*   b90a197  Merge PR #26 (events)
*   daa1a5a  Merge PR #25 (about)
*   cbe579b  Merge PR #24 (services)
*   995b161  Merge PR #23 (docs)
```

**Key finding:** History is linear. `feature/local-home-page` is strictly ahead of `develop`. No divergence. Fast-forward merge is safe with zero risk.

### GitOps Problem Summary

| Problem | Root Cause | Impact |
|---|---|---|
| `develop` is stale (4 commits) | `feature/local-home-page` never merged back | CI deploy triggers on `develop` → live site is behind |
| `origin/main` is empty | Set as `origin/HEAD` but never used for development | Confusing — contributors may target wrong branch |
| 5 `codex/*` branches | AI-generated experiments, none merged | Branch proliferation; unclear status |
| `wip/nav-css-troubleshooting` | Known nav bug being worked on — status unclear | May conflict with C2 fix in stabilization |
| `docs/audit/` files are untracked | Created during audit but not committed | Audit evidence not preserved in repo history |

---

## 2. Recommended Baseline

**Recommended baseline: `feature/local-home-page` (commit `e257f68`)**

Rationale:
1. It is the latest state of all development work
2. It contains the CSS modularization that resolves some `main.css` bloat
3. It is 0 commits behind `develop` — nothing is lost in a fast-forward
4. All subsequent work should build on this, not on the stale `develop`

**What `develop` contributes that `feature/local-home-page` does not:**  
Nothing. `develop` has zero unique commits (`git log origin/feature/local-home-page..develop` = empty).

---

## 3. Merge Strategy

### Decision: MERGE — Fast-Forward

**Method:** Fast-forward merge (no merge commit required)  
**Command (when ready to execute):**
```bash
git checkout develop
git merge --ff-only origin/feature/local-home-page
git push origin develop
```

**Why fast-forward and not squash/rebase:**
- The 4 commits have meaningful, readable messages
- Squash would lose individual refactor granularity
- The history is already linear — no rebase needed
- Preserves `git blame` integrity for future CSS work

### Pre-Merge Validation Checklist

Before executing the merge, the following must pass:

- [ ] **Submodule check:** `git submodule update --init --recursive` completes without error (PaperMod present)
- [ ] **Hugo build check:** `hugo --minify` produces `public/` with no ERROR or WARN output
- [ ] **No Hugo deprecation warnings:** `canonifyURLs = true` may produce a warning — note but do not block
- [ ] **Link check:** Confirm `/about/`, `/services/`, `/publications/`, `/events/`, `/contact/` all render
- [ ] **Desktop visual check:** Sidebar is offset correctly from content (C2 CSS conflict verified)
- [ ] **Audit docs committed:** `docs/audit/` directory committed to repo before merge

**Note on C2 (nav/main CSS conflict):** The CSS layout conflict between `nav.css` and `main.css` exists on BOTH `develop` and `feature/local-home-page`. Merging does not introduce or worsen C2. C2 must be fixed in a separate implementation slice (087C).

---

## 4. Commit Strategy

### Commit Convention (existing practice)

The repo uses a mix of conventional commits and informal messages. Examples from history:
- `feat(contact): ...` — standard
- `Style: ...` — capitalized, non-standard
- `Fix: ...` — capitalized, non-standard
- `refactor(home): ...` — standard
- `wip: ...` — explicit WIP marker

**Recommended:** Standardize on [Conventional Commits](https://www.conventionalcommits.org/) going forward:

```
<type>(<scope>): <subject>

Types: feat, fix, refactor, style, docs, chore, test, build
Scope: home, nav, contact, events, publications, services, about, deploy, css
```

### Commit Sizing Policy

For the upcoming stabilization work:
- One commit per logical fix (not one commit per file)
- CSS conflict resolution = 1 commit: `fix(css): resolve nav/main cascade conflict`
- Makefile fix = 1 commit: `fix(build): update Makefile to call deploy.sh`
- Container fix = 1 commit: `fix(layout): remove duplicate site-container in index.html`
- Contact form = 1 commit: `feat(contact): wire form to FormSubmit endpoint`

---

## 5. Release Strategy

### Current State: No Formal Release Process

The repo has no tags, no CHANGELOG entries under a version (only `[Unreleased]` and `[0.1.0] — feature/local-ui`), and no release workflow.

### Recommended Release Model for a Hugo Static Site

```
develop (integration) → tag → CI builds → gh-pages (live)
```

**Phase 1 (now — stabilization):**
- Work on `develop` or short-lived `fix/*` branches
- No formal version tagging until executive review milestone passes
- Treat each push to `develop` as a release candidate
- CI on every push verifies the build

**Phase 2 (post-stabilization):**
- Tag `v1.0.0` when site passes executive review
- Use annotated tags: `git tag -a v1.0.0 -m "Executive review baseline"`
- Update CHANGELOG with `[1.0.0]` section

**Tagging convention:**
```
v<major>.<minor>.<patch>
v1.0.0 — executive review baseline
v1.1.0 — publications expanded
v1.2.0 — contact form live
```

---

## 6. Rollback Strategy

GitHub Pages with `force_orphan: true` means gh-pages has no rollback history. Each deploy overwrites the previous.

### Rollback Options

| Method | Speed | Risk | When to Use |
|---|---|---|---|
| Revert commit on develop + push | Fast (CI ~2 min) | Low | Single bad commit |
| `git revert <sha>` on develop + push | Fast | Low | Any commit |
| Manual `git push` of older build artifact | Medium | Medium | CI is broken |
| Re-run CI from a tagged commit | Medium | Low | Stable tag exists |
| `force_orphan: false` on gh-pages | Long-term | Low | Enables `gh-pages` history retention |

**Recommended improvement:** Change `force_orphan: true` → `force_orphan: false` in `deploy.yml`. This preserves gh-pages history, enabling:
```bash
git checkout gh-pages
git log  # see all deploy artifacts
git checkout <old-deploy-sha> -- .  # recover specific build
```

### Emergency Rollback Procedure (current `force_orphan: true` regime)
1. Identify last good commit SHA on `develop`: `git log --oneline develop`
2. `git revert <bad-commit>` on develop
3. Push to develop — CI redeploys

---

## 7. GitHub Pages Deployment Strategy

### Current Architecture
```
push to develop → GitHub Actions → hugo --minify --baseURL=... → peaceiris/actions-gh-pages → gh-pages branch → GitHub Pages serves itj-labs.github.io/department-site/
```

### Diagnosis

| Component | Status | Recommendation |
|---|---|---|
| Trigger: `develop` push | ✅ Correct | Keep; add manual `workflow_dispatch` trigger |
| Hugo version: `0.147.6` | ✅ Pinned | Keep pinned; bump when a specific Hugo feature is needed |
| `peaceiris/actions-hugo@v2` | ⚠️ Version 2 may be stale | Check for v3/v4 of this action |
| `peaceiris/actions-gh-pages@v3` | ⚠️ Pinned at v3 | Pin to specific SHA for security best practice |
| `permissions: contents: write` | ✅ Required | Keep |
| `force_orphan: true` | ⚠️ Kills rollback | Change to `false` |
| No `CNAME` file | ⚠️ Custom domain absent | Add if custom domain desired; otherwise acceptable |
| Submodule init: `git submodule update --init --recursive` | ✅ Present | Keep |
| `--baseURL` explicit in build | ✅ Overrides config.toml | Keep |

### Recommended `deploy.yml` Improvements (to be done in 087C)

```yaml
on:
  push:
    branches: [develop]
  workflow_dispatch:          # ← ADD: allows manual redeploy

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          submodules: recursive  # ← REPLACE explicit git submodule step
          fetch-depth: 0

      - uses: peaceiris/actions-hugo@v3   # ← BUMP to v3 if available
        with:
          hugo-version: '0.147.6'
          extended: true          # ← ADD: explicit Extended flag for SCSS support

      - run: hugo --minify --baseURL=https://itj-labs.github.io/department-site/

      - uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./public
          publish_branch: gh-pages
          force_orphan: false     # ← CHANGE: preserve rollback history
```

---

## 8. Branch Cleanup Plan

### Immediate Actions (when implementation begins)

**Keep active:**
- `develop` — integration baseline
- `origin/feature/local-home-page` — pending merge into develop

**Delete after merge completes:**
- `origin/feature/local-home-page` — merged, no longer needed

**Delete now (stale, no value):**
```bash
# codex/* branches — AI-generated experiments, none merged, none referenced
git push origin --delete codex/add-papermod-theme-with-submodule-or-direct-files
git push origin --delete codex/search-for-incorrect-paths-in-markdown-files
git push origin --delete codex/troubleshoot-branch-for-github-pages-deploy
git push origin --delete codex/troubleshoot-hugo-deployment-to-github-pages
git push origin --delete codex/validate-homepage-with-minify-deployment
```

**Investigate before deleting:**
- `wip/nav-css-troubleshooting` — may contain useful nav CSS work relevant to C2 fix. Read before deleting.
- `fix/baseurl-ghpages` — check if changes were merged; delete if so

**Archive (do not delete yet):**
- Merged `feature/*` branches — GitHub shows these as merged via PR; safe to delete but low priority

**Clarify governance:**
- `origin/main` — currently `origin/HEAD` but contains only initial commit. Options:
  1. Leave as-is (harmless)
  2. Protect `main` for future release tagging
  3. Redirect `origin/HEAD` → `origin/develop`

---

## 9. Research Site Benchmark

### 9.1 MIT HAN Lab Analysis

**URL:** https://hanlab.mit.edu/  
**Identity:** MIT academic research lab focused on efficient AI computing  
**PI-driven:** Song Han is the focal identity

#### Information Architecture
```
About | Song Han (PI) | News | Publications | Blog | Course | Awards | Talks | Media | Team | Gallery
```

11-item navigation. Separate sections for each output type: papers, awards, talks, blog, media coverage. Navigation reflects the full lifecycle of research output.

#### Homepage Thesis
> "Efficient AI Computing, Transforming the Future"

Followed by a precise problem statement: "Today's foundation models are remarkably powerful but prohibitively costly in terms of computation, energy, and scalability."

This is not a generic tagline. It names the exact technical problem and the lab's position within it.

#### Content Hierarchy
1. Hero + thesis
2. "Who We Are" (lab identity, alumni outcomes)
3. Research highlights (organized by technique, not chronology)
4. Research pillars ("We Work On")
5. News timeline (filterable)
6. Full-stack projects (filterable by category/technique)
7. Industry impact logos
8. Videos + blog posts

**Pattern:** Thesis → Evidence → Work → Impact → Updates

#### Publications Model
- No traditional publication list on homepage
- Each research project has a **standardized project page**: paper link, code, slides, video
- Publications surfaced via news entries: "[Date] [Project] appears at [Venue]"
- Best paper awards highlighted inline
- Conference venue abbreviations signal quality (CVPR, ICLR, NeurIPS, MLSys)

#### Team / People
- PI profile prominently linked
- Alumni section: name + current employer (OpenAI, Google DeepMind, NVIDIA Research)
- Alumni placements function as quality signals ("our graduates go to top places")
- Dedicated Team page

#### Credibility Signals
- Best paper awards (MLSys'24, ICLR 2016)
- 19M+ HuggingFace downloads for AWQ
- Software integrations: NVIDIA TensorRT-LLM, Microsoft ONNX Runtime, HuggingFace
- 20+ industry partner logos (AMD, Apple, Google, Meta, Intel, etc.)
- Sloan Research Fellowship, NVIDIA Fellowship, Qualcomm Innovation Fellowship

#### Unique Patterns
- **Interactive project filter** by algorithm/hardware/topic/technique
- **News timeline** with dual sort (newest/oldest)
- **Research organized by technique** (Quantization, Pruning, NAS) not by date
- **Blog** for technical depth beyond papers
- **Impact documentation** separate from publications

---

### 9.2 Amazon Science Analysis

**URL:** https://www.amazon.science/  
**Identity:** Corporate research organization — academic rigor + business-scale impact  
**PI-driven:** No single PI; collective identity ("world-class economists, physicists, mathematicians")

#### Information Architecture
```
Research (13 areas) | News & Blog | Collaborations | Resources | Careers
```

5 top-level items, but "Research" expands to 13 subcategories:
> Automated reasoning, Cloud and systems, Computer vision, Conversational AI & NLP, Economics, Information and knowledge management, Machine learning, Operations research, Quantum technologies, Robotics, Search and information retrieval, Security & privacy, Sustainability

Navigation is **discipline-organized**, not output-organized. This signals institutional breadth.

#### Homepage Thesis
Implicit: "Customer-obsessed science" — research solves real Amazon problems at billion-customer scale while maintaining academic publication standards.

Value proposition: Research bridges academic excellence and business impact. Scientists can continue academic work while tackling industry-scale problems.

#### Content Hierarchy
1. Hero (featured research story with high-quality imagery)
2. "Customer-obsessed science" tagline
3. Research areas as browsable cards
4. Blog posts (4 recent, with read time and tags)
5. Featured news (4 stories with imagery)
6. Publications (paginated list, author-linked)
7. Academic collaborations
8. Careers

**Pattern:** Story → Areas → Content → Publications → Partnerships → Hiring

#### Publications Model
- Paginated publication list on homepage
- Format: Title + author links + venue + year + 2-sentence abstract + category tag
- Named authors link to researcher profiles
- Conference names carry institutional weight (ICML, NeurIPS, SIGMOD)
- Category tags cross-link to research area pages
- "Load more" pagination

#### Team / People
- No dedicated team page on homepage
- Researchers surface through publication authorship
- Named bylines on blog posts
- Featured individual researcher profiles in context (awards, partnerships)
- Collective identity language preferred

#### Credibility Signals
- 13 named research domains with institutional gravitas
- $68M AI PhD Fellowship program
- 14 named university partners (MIT, CMU, Johns Hopkins, UCLA, Max Planck)
- 5+ papers per homepage view with top-tier venue labels
- "Billions of transactions," "hundreds of millions of customers" — scale language
- Code/datasets published (reproducibility commitment)
- Making a Mind podcast (positions research as ongoing intellectual conversation)

#### Unique Patterns
- **Amazon Scholars program:** faculty maintain academic positions while doing Amazon research
- **Code & Datasets section:** explicit reproducibility signal
- **Newsletter:** research as ongoing narrative subscription
- **Podcast:** positions research as accessible conversation
- **13-category taxonomy:** research area as primary navigation — not content type
- **Real-time job listings on homepage:** signals active growth

---

### 9.3 Benchmark Comparison Matrix

| Dimension | MIT HAN Lab | Amazon Science | ITJ Labs (current) | Gap Severity |
|---|---|---|---|---|
| **Homepage thesis** | "Efficient AI Computing, Transforming the Future" — precise, specific | "Customer-obsessed science" at Amazon scale | "AI & Data Science at ITJ Labs" — generic, descriptive | **Critical** |
| **Navigation model** | Output-based: News/Publications/Awards/Talks/Blog | Discipline-based: 13 research areas | 6 sections: About/Services/Publications/Events/Contact | Moderate |
| **Publications depth** | Per-project pages + news timeline + venue labels | Paginated list + abstracts + author links + category tags | 1 publication, placeholder body, no homepage prominence | **Critical** |
| **Research credibility** | Best paper awards, 19M downloads, 20+ partner logos | $68M fellowship, 14 universities, top-tier venues, scale metrics | 4 university partners (logos), 1 published paper | **Critical** |
| **Team identity** | PI-driven, alumni outcomes at top companies | Collective, researchers named via publications | 4 team photos + bios, no alumni section | Moderate |
| **Content freshness** | Frequent news entries, recent publications, blog posts | Active blog (weekly posts), 2026-dated papers | No blog, news section absent from homepage | **High** |
| **Research areas** | Organized by technique (filterable) | Organized by discipline (13 categories) | Embedded in Services page only | High |
| **Events/community** | Talks catalog, media coverage, gallery | Conference appearances noted in publications | Richest section on site — 11 events with photos | Low (strong) |
| **Contact/CTA** | Lab email + social links | Careers as primary CTA | Contact form (non-functional), social links | High |
| **Code/reproducibility** | GitHub links per project | Explicit code/datasets section | No code published | Moderate |
| **Visual hierarchy** | Content-forward, research-narrative-driven | Editorial, high-quality photography, whitespace-rich | Card-based, functional; hero banner good | Moderate |
| **Tone** | Academic + achievement-focused | Corporate + accessible + ambitious | Service-commercial ("100+ Satisfied Clients") | **High** |
| **Impact signals** | Specific metrics (downloads, awards, integrations) | Scale language + partnership names | Generic claims ("99.9% Uptime", "100+ Clients") | **High** |

---

## 10. Content Architecture Recommendations

### 10.1 ITJ Labs Positioning Decision

**Current mixed signals in site content:**

| Signal type | Evidence in current site |
|---|---|
| Internal innovation lab | "AI & Data Science at ITJ Labs" (implies ITJ is parent org) |
| Applied research group | University partnerships, 1 peer-reviewed publication, CRISP-ML(Q) methodology |
| AI engineering department | 3 service products (NeuroDocs, CV Extractor, TalentBot) |
| Delivery accelerator | "99.9% Uptime, 100+ Satisfied Clients, Rapid PoC Turnaround 4–6 Weeks" |

These four signals send conflicting messages. A GM reviewing the site cannot determine whether ITJ Labs is:
- A vendor offering services
- An internal R&D team
- An academic partner
- A product company

**Recommended positioning: Applied Research + Delivery Lab (Hybrid)**

> "We research, build, and deploy AI — from academic publication to production system."

This is defensible because:
- Research evidence: 1 published paper + university partnerships (CITEDI, CETYS, UABC, ITT) + 3 published PhD-level team members
- Delivery evidence: 3 named AI products + tech stack + CRISP-ML(Q) methodology
- The hybrid is an honest reflection of the team's actual capabilities

This is closest to the **Amazon Scholars model** at smaller scale: academic credibility + real delivery.

### 10.2 Homepage Thesis Recommendation

**Current:** "AI & Data Science at ITJ Labs"  
**Problem:** Descriptive, not differentiating. Every AI team could say this.

**Recommended thesis options (choose one):**

| Option | Thesis | Best For |
|---|---|---|
| A | "From Research to Deployment — AI That Ships" | Delivery-forward GM audience |
| B | "Applied AI Research for Real Business Outcomes" | Research-credibility focus |
| C | "We Build AI. We Publish it. We Deliver It." | Hybrid identity, punchy |
| D | "AI Engineering at the Intersection of Research and Product" | Technical audience |

**Recommendation for executive review: Option A or C.** The GM is likely evaluating business impact, not academic prestige.

### 10.3 Navigation Architecture Recommendation

**Current:**  
`Home | About | Services | Publications | Events | Contact`

**Recommended (aligned with content reality):**  
`Home | Research | Products | Team | Events | Contact`

Where:
- **Research** = Publications + Research areas (replaces "Publications" which implies thin academic catalog)
- **Products** = Services (rename to "Products" to signal delivery capability; or keep "Services" if consulting identity preferred)
- **Team** = Current "About" (rename to be more direct about the people asset)
- **Events** = Unchanged (strongest content section)
- **Contact** = Unchanged

Alternatively, add **Blog** once content exists.

### 10.4 Homepage Section Recommendations

**Recommended homepage flow (MIT HAN Lab + Amazon Science pattern adapted):**

```
1. Hero: strong thesis + sub-tagline (not just site title)
2. Quick Links: Research | Products | Events | Contact  ← keep current
3. Featured Research: Latest publication with venue + abstract
4. Our Products: 3 service cards (NeuroDocs, CV Extractor, TalentBot)
5. Why ITJ Labs: keep current "Why ITJ Labs?" section (good)
6. Featured Event: Latest event photo + title
7. Partners: CITEDI, CETYS, UABC, ITT logos (existing; promote higher)
8. CTA: Let's Talk  ← keep current
```

**Specific gaps to close (content, not CSS):**

| Gap | MIT HAN Lab pattern | Amazon Science pattern | ITJ Labs action |
|---|---|---|---|
| Homepage lacks impact metrics | "19M downloads, 3 best paper awards" | "$68M fellowship, 14 university partners" | Publish real numbers: paper count, events count, years active, university partners |
| Publications are buried/thin | Projects page per paper, news timeline | Paginated list with abstracts | Write abstracts for the 1 published paper; expand list as papers accumulate |
| No news/updates feed | Frequent news entries | Weekly blog posts | Add a "Latest" or "News" section with even 3–4 notable entries |
| Team outcomes unclear | Alumni at OpenAI, DeepMind, NVIDIA | Named researchers with profiles | Add brief "Impact" or "Background" stat for each team member (publications, years of experience, domain) |
| Research areas not defined | Technique-organized research | 13-category taxonomy | Define 3–4 core research areas (CV, NLP/LLM, MLOps, Applied AI) |
| Awards absent | Dedicated "Awards" nav item | Awards program prominently featured | If team has any awards, acknowledgments, or competition placements — list them |

---

## 11. Executive Credibility Gaps

The following are the gaps most likely to undermine executive confidence during a GM review:

### Gap 1 — Homepage Has No Thesis [CRITICAL]
The GM sees "ITJ Labs Department" and "AI & Data Science at ITJ Labs." Neither statement explains what ITJ Labs does, why it matters, or what differentiates it. The MIT and Amazon analogues open with a precise problem + solution statement.

**Fix:** 1–2 sentence hero statement above or below the banner image.

### Gap 2 — Contact Form Silently Fails [CRITICAL]
If the GM or any stakeholder clicks "Send Message," nothing happens. This signals either broken infrastructure or an unfinished product. Either interpretation is damaging.

**Fix:** Wire form to FormSubmit.co (free, no backend) or remove form and replace with mailto link.

### Gap 3 — Publications Section Is Structurally Thin [HIGH]
1 publication with a placeholder body. The publications page renders 1 card with summary and venue. This is honest but thin for a team that positions itself as research-credible. The benchmarks show publications as a primary authority signal.

**Fix (short-term):** Ensure the 1 paper's metadata is complete and body is filled in, not a placeholder comment. Add any conference presentations or talks as publication-adjacent entries.  
**Fix (long-term):** Add more publications as they are accepted.

### Gap 4 — Tone Mismatch: Commercial vs Research [HIGH]
"99.9% Uptime, 100+ Satisfied Clients, Rapid PoC Turnaround (4–6 Weeks), Fully GDPR & HIPAA-Compliant" — these claims appear on the Services page and are plausible for a consulting firm but:
- Are they verifiable? ("100+ Satisfied Clients" — is this documented anywhere?)
- Do they align with the academic identity projected by the About page?

The GM likely knows the actual client count. If these numbers are aspirational rather than measured, they will erode credibility.

**Fix:** Replace generic claims with specific, verifiable ones ("3 AI products in production," "1 peer-reviewed publication in 2025," "4 university partnerships").

### Gap 5 — Desktop Layout Likely Broken [CRITICAL for live demo]
The CSS conflict between `nav.css` and `main.css` means the desktop sidebar likely overlaps page content. A GM reviewing the site on a laptop will encounter this immediately.

**Fix:** Resolve the nav/main CSS cascade conflict (C2 from 087A audit).

### Gap 6 — No Content Freshness Signal [MEDIUM]
No dated news, no blog, no updates feed. The site appears static. Research credibility requires visible ongoing activity.

**Fix:** Add 3–4 entries to a "Latest" section on the homepage. These can be: publication acceptance, event participation, a product milestone, or a team achievement.

---

## 12. Stabilization Readiness Assessment

| Category | Ready? | Blockers |
|---|---|---|
| GitOps / branch state | ❌ No | develop is stale; merge needed before CI reflects current work |
| Build tooling | ❌ No | `make preview` / `make deploy` broken (test-deploy.sh missing) |
| Desktop layout | ❌ No | nav.css vs main.css conflict; sidebar overlaps content |
| Homepage container | ❌ No | Double site-container wrapper |
| Contact form | ❌ No | Silent failure on submit |
| Homepage thesis | ❌ No | No differentiating statement |
| Nav overlay | ❌ No | CSS `.nav-overlay` without HTML element |
| About page | ✅ Yes | Rich content, team photos, partners |
| Services page | ✅ Yes | 3 products, tech stack, methodology |
| Events page | ✅ Yes | 11 events, images, good variety |
| Publications structure | ⚠️ Partial | 1 paper, placeholder body, thin but renderable |
| Hugo configuration | ⚠️ Partial | Works with `canonifyURLs` workaround; fragile |
| CI/CD pipeline | ⚠️ Partial | deploy.yml is correct but fires on stale develop |
| Submodule | ⚠️ Risk | Must be initialized; CI handles it; local dev requires manual step |

**Overall readiness: NOT READY for executive review.** 5 critical blockers remain.

---

## 13. Release Checklist (Pre-Executive Review)

### Phase 1 — GitOps Stabilization (must complete first)

- [ ] Commit `docs/audit/` directory to repo (087A + 087B artifacts)
- [ ] Merge `feature/local-home-page` → `develop` (fast-forward)
- [ ] Verify CI build passes on develop push
- [ ] Confirm gh-pages deployment reflects merged state

### Phase 2 — Build and Layout Fixes

- [ ] Fix Makefile: `test-deploy.sh` → `deploy.sh` (lines 14–17)
- [ ] Resolve `nav.css` vs `main.css` conflict — consolidate `.main-nav`, `.site-container`, `.site-header`
- [ ] Remove inner `<div class="site-container">` from `layouts/index.html`
- [ ] Add `<div class="nav-overlay"></div>` to `layouts/partials/header.html`
- [ ] Run `hugo --minify` locally — zero errors
- [ ] Verify `make serve` — all 6 nav sections render without 404

### Phase 3 — Content + Executive Polish

- [ ] Replace generic homepage subtitle with thesis statement
- [ ] Wire contact form (FormSubmit.co action URL or mailto fallback)
- [ ] Fill in publication body (remove `<!-- your body here... -->` placeholder)
- [ ] Replace unverifiable "100+ Satisfied Clients" with specific, verifiable claims
- [ ] Add 3–4 news/update items to homepage (event recap, paper acceptance, product milestone)
- [ ] Add `workflow_dispatch` to `deploy.yml` (manual redeploy trigger)
- [ ] Change `force_orphan: false` in `deploy.yml` (enable rollback history)

### Phase 4 — Pre-Review Validation

- [ ] Desktop browser check: sidebar does not overlap content
- [ ] Mobile check: hamburger toggle opens/closes drawer; overlay dims background
- [ ] Contact form: test submission reaches expected destination
- [ ] All 6 nav links resolve correctly on GitHub Pages URL
- [ ] No browser console errors on homepage
- [ ] Confirm live URL: `https://itj-labs.github.io/department-site/`

---

## 14. Rollback Plan

### During Implementation (before push)

All changes are in local files. `git checkout` of any file restores previous state.

### After Push to Develop

```bash
# Identify the last good commit
git -C /home/mike/projects/department-site log --oneline develop -5

# Revert the specific bad commit
git -C /home/mike/projects/department-site revert <sha>
# (creates a new revert commit — safe, no history rewrite)

# Push the revert — CI will redeploy the reverted state
```

### After CI Deploy to gh-pages

Current state (`force_orphan: true`): no gh-pages history. Must revert on develop and wait for CI.

Post-fix state (`force_orphan: false`): gh-pages retains history; can inspect past builds.

### Catastrophic Recovery

```bash
# Reset develop to the pre-implementation baseline (927ade2)
git reset --hard 927ade2
git push --force-with-lease origin develop
# CAUTION: rewrites develop history; requires team coordination
```

Prefer `git revert` over `git reset --hard` in all cases.

---

## 15. Next Implementation Slice

### Recommended: SF-SLICE-087C — DEPARTMENT-SITE-STABILIZATION

**Scope:** Implement all Phase 1 + Phase 2 fixes. Phase 3 (executive polish) can be a separate slice.

**Objective:** Make the site structurally sound, CI-green, and visually correct on desktop and mobile — without redesign.

**Target state after 087C:**
- `feature/local-home-page` fast-forward merged into `develop`
- `make serve` and `make build` both work
- Desktop: sidebar visible, content offset 220px, no overlap
- Mobile: hamburger toggles drawer, overlay dims background
- Homepage: no double site-container
- CI deploys successfully on develop push
- Live URL correct

**Not in 087C scope:** Homepage thesis rewrite, contact form backend, content additions, nav restructure, CSS redesign.

**Acceptance Criteria for 087C:**

- [ ] `git log develop` confirms fast-forward merge is complete
- [ ] `git push origin develop` triggers GitHub Actions CI build
- [ ] CI build exits 0 (no Hugo errors)
- [ ] `make build` exits 0 locally
- [ ] `make serve` exits 0 and server starts at `localhost:1313`
- [ ] Desktop (≥768px): `.main-nav` is fixed sidebar, `.site-container` has `margin-left: 220px`
- [ ] Mobile (<768px): nav hidden by default, hamburger toggles `.nav-open` on `.site-header`
- [ ] `.nav-overlay` element exists in DOM when page loads
- [ ] Homepage `<div class="site-container">` appears exactly once in the DOM
- [ ] All 6 nav links return HTTP 200 on live GitHub Pages URL
- [ ] No browser console errors on homepage

**Out of scope for 087C:**
- Homepage thesis statement
- Contact form backend
- Publications body
- Tone/claim revisions
- New content
- CSS redesign
- Navigation restructure

---

## Appendix: Evidence Sources

| Claim | Source |
|---|---|
| develop is 4 commits behind | `git log develop..origin/feature/local-home-page` |
| feature/local-home-page is 0 behind develop | `git log origin/feature/local-home-page..develop` (empty) |
| Linear history, fast-forward safe | `git log --graph --all` |
| main has only initial commit | `git log origin/main -5` → 1 result: "Initial commit" |
| gh-pages has 2 orphan commits | `git log origin/gh-pages -5` → 2 results |
| 5 codex/* branches exist | `git branch -a` |
| MIT HAN Lab thesis | Live fetch: hanlab.mit.edu homepage |
| Amazon Science 13 research areas | Live fetch: amazon.science homepage |
| Double site-container | `layouts/partials/header.html:29`, `layouts/index.html:13` |
| nav.css vs main.css conflict | `assets/css/nav.css`, `assets/css/main.css`, `layouts/partials/extend_head.html` |
| Makefile broken targets | `Makefile:14-17`, `git ls-files` (test-deploy.sh absent) |
| Contact form no backend | `content/contact/_index.md:37` |
| Publication placeholder body | `content/publications/2025-multiclass-evaluation-vision-transformers.md:22` |
