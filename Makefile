mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

db.rebuild: ## Rebuilds the DBs
	echo "TODO:"
.PHONY: rebuild-dbs

db.console: ## Open the db-console
	echo "TODO:"
.PHONY: db-console

test: ## Run the tests
	echo "TODO:"
.PHONY: test

repl: ## Run a REPL for development
	echo "TODO:"
.PHONY: repl

run: build ## Run app locally
	echo "TODO:"
.PHONY: run


help: ## Prints this help message
	@grep -h -E '^[a-zA-Z0-9\._-]+:.*?## .*$$' $(MAKEFILE_LIST) |\
		sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help