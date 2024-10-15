.DEFAULT_GOAL := help

HOSTNAME_PROD = "localhost"
HOSTNAME_DEV = "localhost"

.PHONY: help deps build

help:
	@echo "Usage:"
	@echo "  make logs    - Check Docker container logs"
	@echo "  make deps    - Build frontend assets"
	@echo "  make build   - Build npm assets"
	@echo ""

deps:
	pip install -r requirements.txt
	npm install
	npm run build

build:
	npm build