.PHONY: debug serve build preview deploy

debug:
	rm -rf resources public

serve: debug
	./scripts/serve.sh

build:
	hugo --minify

preview: build
	./scripts/deploy.sh serve

deploy: build
	./scripts/deploy.sh
