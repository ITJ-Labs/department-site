# department-site

ITJ Labs Department website powered by [Hugo](https://gohugo.io/) and the [PaperMod theme](https://github.com/adityatelange/hugo-PaperMod).

---

## Prerequisites

* **Hugo Extended** v0.147.6+ ([https://gohugo.io/getting-started/installing/](https://gohugo.io/getting-started/installing/))
* **GNU Make** for task orchestration
* **Git** for version control and submodules

---

## Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/ITJ-Labs/department-site.git
   cd department-site
   ```
2. **Fetch the PaperMod theme**

   ```bash
   git submodule update --init --recursive
   ```
3. **Install dependencies**

   ```bash
   # No additional dependencies beyond Hugo and Make
   hugo version
   make --version
   ```

---

## Local Development

Use the provided Makefile for an efficient development workflow:

```bash
# Clean previous builds
make debug

# Start Hugo dev server (auto-reload, includes drafts)
make serve
```

* The server runs at [http://localhost:1313](http://localhost:1313)
* LiveReload will refresh your browser on file changes

---

## CSS & Assets

* **Source styles**: `assets/css/` (Hugo Pipes processes these)
* **Bundled styles**: single fingerprinted CSS in `public/css/`
* **Static files**: `static/` serves images and JS at `/images/` and `/js/`

---

## Production Build & Preview

To build for production and preview locally:

```bash
# Build and serve production output
make preview
```

This executes:

1. `hugo --minify` (uses `baseURL` from `config.toml`)
2. Renames `public/` to `department-site/`
3. Serves at [http://localhost:8000](http://localhost:8000)

---

## Deploy to GitHub Pages

When ready to publish:

```bash
make deploy
```

This generates the `department-site/` folder, which you can push to the `gh-pages` branch or configure your CI to handle.

---

## Project Structure

```
├── archetypes/        # Hugo front-matter templates
├── assets/            # Hugo Pipes source (CSS, SCSS)
├── content/           # Markdown content files
├── data/              # Data files (YAML, JSON, TOML)
├── layouts/           # Hugo templates & partials
├── scripts/           # Helper scripts (serve.sh, deploy.sh)
├── static/            # Static files (images, JS, favicon)
├── themes/            # Hugo theme (PaperMod)
├── Makefile           # Task orchestration (debug, serve, build, preview, deploy)
└── config.toml        # Site configuration (baseURL, menus, params)
```

---

## Contributing

1. Create a feature branch off `develop`: `git checkout -b feature/your-feature`
2. Make your changes, commit, and push.
3. Open a Pull Request targeting `develop`.
4. Upon approval, changes are merged; CI will build and deploy.

---

## See Also

* [INSTRUCTIONS.md](INSTRUCTIONS.md) for detailed step-by-step setup
* [CHANGELOG.md](CHANGELOG.md) for version history and release notes
* [TODO.md](TODO.md) for backlog and future tasks

---

## License

[MIT](LICENSE)
