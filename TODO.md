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

## Page-Level UX Fixes (Contact Page)

- [ ] 📝 **Remove duplicate "Contact Us" heading**  
  Prevent double title rendering by adjusting layout logic or suppressing markdown title.

- [ ] 🎨 **Style "Send Message" button**  
  Apply `success` button style to match green theme (padding, hover, radius, shadow).

- [ ] ✅ **Add visual feedback on form submission**  
  Temporary success message or loading animation when user clicks submit.

- [ ] 📱 **Ensure mobile responsiveness for contact grid**  
  Icons and text should stay aligned and readable below 768px.

- [ ] 🔄 **(Optional) Centralize contact links in `data/contact.toml`**  
  For cleaner reuse and easier updates by non-devs in future.

