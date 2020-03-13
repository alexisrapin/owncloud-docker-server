.PHONY: help
.DEFAULT_GOAL := help
OWNCLOUD_VERSION?='latest'

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

help:
	@python3 -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

up: ## start containers
	docker-compose up -d

down: ## stop containers
	docker-compose down

ps: ## check containers status
	docker-compose ps

backup_db: ## backup database
	docker-compose exec db backup

maintenance_mode_on: ## turn maintenance mode on
	docker-compose exec owncloud occ maintenance:mode --on

upgrade: maintenance_mode_on backup_db down ## change owncloud version to <OWNCLOUD_VERSION>
	sed -i 's/^OWNCLOUD_VERSION=.*/OWNCLOUD_VERSION=$(OWNCLOUD_VERSION)/' .env
	docker-compose up -d
