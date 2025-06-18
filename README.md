# department-site

ITJ Labs Department website powered by [Hugo](https://gohugo.io/) and the [PaperMod theme](https://github.com/adityatelange/hugo-PaperMod).

---

## Prerequisites

* [Hugo Extended](https://gohugo.io/getting-started/installing/) v0.147.6+
* GNU `make` (for task orchestration)
* `git` (to fetch submodules)

---

## Getting Started

### Clone the repo

```bash
git clone https://github.com/ITJ-Labs/department-site.git
cd department-site
```

### Fetch the PaperMod theme

```bash
git submodule update --init --recursive
```

### Install dependencies

No external dependencies—Hugo and `make` are all you need.

---

## Local Development

Use the provided Makefile for a seamless dev workflow:

```bash
# Clean build artifacts
make debug

# Run Hugo dev server (auto-reload, drafts)
make serve
```

Visit [http://localhost:1313](http://localhost:1313) in your browser. Hugo watches your files and live-reloads on changes.

---

## CSS & Assets

All CSS is managed via Hugo Pipes and bundled into a single fingerprinted file. Source styles live in `assets/css/`.

Static assets (images, JS) reside in `static/` and are served at `/images/` and `/js/` respectively.

---

## Building & Previewing Production

To generate a production build and preview it locally:

```bash
# Create optimized site output and rename for GitHub Pages
make preview
```

This will:

1. Run `hugo --minify` (uses `baseURL` in `config.toml`)
2. Rename `public/` → `department-site/`
3. Serve on [http://localhost:8000](http://localhost:8000)

---

## Deploy

To build for GitHub Pages (without preview):

```bash
make deploy
```

The `department-site/` folder produced is ready to be pushed to your `gh-pages` branch.

---

## Project Structure

```
├── archetypes      # Hugo front-matter templates
├── assets          # Hugo Pipes source (CSS, SCSS)
├── content         # Markdown content organized by section
├── data            # Data files (YAML, JSON, TOML)
├── layouts         # Hugo layout templates & partials
├── scripts         # Helper scripts (serve.sh, deploy.sh)
├── static          # Static files (images, JS, favicon)
├── themes          # Hugo theme (PaperMod)
├── Makefile        # Task orchestration (serve, build, deploy)
└── config.toml     # Site config (baseURL, menus, params)
```

---

## Contributing

1. Create a feature branch off `develop` (e.g. `feature/your-feature`).
2. Commit and push to GitHub.
3. Open a Pull Request targeting `develop`.
4. Once approved, it will be merged and deployed via CI.

---

## License

[MIT](LICENSE)
