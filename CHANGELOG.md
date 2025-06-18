# Changelog

## \[Unreleased]

* chore(workflow): remove legacy scripts and consolidate tasks into Makefile
* chore(serve): enhance serve.sh with bind/port overrides and auto-open browser
* chore(deploy): rename test-deploy.sh to deploy.sh with port override support
* feat(css): bundle all styles into single fingerprinted CSS via Hugo Pipes
* docs: overhaul README with setup, Makefile tasks, and contribution guidelines

## \[0.1.0] — feature/local-ui

* Introduce Hugo render-image hook for automatic image URL rewriting
* Separate nav and main CSS into nav.css & main.css
* Wrap all content in `.site-container` for fixed sidebar offset
* Adjust `test-deploy.sh` for local preview (using `hugo server`)
* Merge nav CSS into Hugo Pipes bundle (in progress)
* Verify homepage layout override and `.site-container` wrapper application
* Validate render-image hook across all content pages
* Polish header and footer partials for consistency
