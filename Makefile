.PHONY: debug serve build preview deploy

debug:
	rm -rf resources public

serve: debug
	./scripts/serve.sh

build:
	hugo --minify

preview: build
	./scripts/test-deploy.sh serve

deploy: build
	./scripts/test-deploy.sh
