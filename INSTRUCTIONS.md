# 🛠️ Development & Deployment Instructions

For a high-level overview, see [README.md](README.md).

---

## 🚀 Prerequisites

* **Hugo Extended** v0.147.6+
* **GNU Make**
* **Git**
* **Python 3** (for local preview in `make preview`)

---

## 🔧 Local Development

1. **Clone & initialize**

   ```bash
   git clone https://github.com/ITJ-Labs/department-site.git
   cd department-site
   git submodule update --init --recursive
   ```

2. **Clean artifacts**

   ```bash
   make debug
   ```

3. **Start dev server**

   ```bash
   make serve
   ```

   Live-reloads at [http://localhost:1313](http://localhost:1313).

---

## 🎨 CSS & Assets

All CSS is processed via Hugo Pipes (see `extend_head.html`).
Source files in `assets/css/`; static assets in `static/`.

---

## ⚙️ Production Build & Preview

```bash
make preview
```

1. Builds with `hugo --minify`.
2. Renames `public/` → `department-site/`.
3. Serves at [http://localhost:8000](http://localhost:8000).

---

## 🚀 Deploy

```bash
make deploy
```

Generates `department-site/` ready for `gh-pages`.

---

## 📂 Project Layout

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
└── config.toml        # Site configuration
```

---

*© ITJ Labs – Internal Use Only*
