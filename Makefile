install: ## Install necessary dependencies
					@echo "Install necessary dependencies"
					@/bin/bash scripts/install_composer_dependencies.sh

.PHONY: help

help:
			@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
