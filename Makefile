.DEFAULT_GOAL := help
DOCKER_USER=sjourdan
PRODUCT=strace

build: ## Build Container
	docker build -t $(DOCKER_USER)/$(PRODUCT) .

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
