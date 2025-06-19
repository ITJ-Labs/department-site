## Workflow & Documentation
- [x] Consolidate scripts into Makefile (`make serve`, `make deploy`).
- [x] Overhauled README, INSTRUCTIONS, CHANGELOG.
- [ ] Write unit tests for Hugo render-image hook.

---

## Validation & Error Checks
- [ ] Verify local dev server (`make serve`) serves all pages without 404 errors.
- [ ] Confirm asset paths (CSS, JS, images) resolve correctly under both `http://localhost:1313/` and `http://localhost:8000/`.
- [ ] Check that internal links use `relURL` and `absURL` appropriately to avoid broken links in GitHub Pages.
- [ ] Ensure `.site-container` wrapper applies correctly on all pages (no overflow/scroll issues).
- [ ] Validate Hugo Pipes CSS bundle is loaded once per page and includes all styles.
- [ ] Run production build (`make preview`) and inspect for any console or layout errors.

---

## Page-Level UX Fixes (Contact Page)
- [x] 📝 **Remove duplicate "Contact Us" heading**  
  Prevented double title rendering by cleaning `_index.md`.

- [x] 🎨 **Style "Send Message" button**  
  Matched green theme with proper padding, hover effect, border radius.

- [x] ✅ **Improve form card design**  
  Unified card styling (padding, shadows, spacing) for consistent UX.

- [x] 🖱 **Add hover effect on contact links**  
  Added scale+highlight interaction to reinforce interactivity.

- [x] 🎨 **Clean icon spacing & remove black underlines**  
  Updated layout to remove legacy styles and visual noise.

- [x] 📱 **Ensure mobile responsiveness for contact grid**  
  Validated that icons, text, and layout stack properly below 768px.

- [ ] 🔄 **(Optional) Centralize contact links in `data/contact.toml`**  
  For cleaner reuse and easier updates by non-devs in future.
