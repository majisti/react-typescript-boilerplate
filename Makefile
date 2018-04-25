THIS_FILE := $(lastword $(MAKEFILE_LIST))
USER_ID := $(shell id -u)
DC=docker-compose -p react-typescript-boilerplate -f ./config/docker/docker-compose.yml
DC_RUN=$(DC) run --user $(USER_ID):$(USER_ID) --rm

yarn:
	$(DC_RUN) yarn install

build:
	$(DC_RUN) webpack --config ./config/webpack/webpack.config.js