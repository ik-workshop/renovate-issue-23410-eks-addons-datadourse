SHELL = /bin/sh -o pipefail
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

CI_RENOVATE_IMAGE := renovate/renovate:latest
LOG_LEVEL := debug

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run-docker: ## Run a docker image
	@docker run --rm -it \
		-e RENOVATE_TOKEN \
		-e LOG_LEVEL=$(LOG_LEVEL) \
		-v ${PWD}/config.js:/usr/src/app/config.js \
		$(CI_RENOVATE_IMAGE) renovate --dry-run=false

run: ## Run sources
	@./run.sh
