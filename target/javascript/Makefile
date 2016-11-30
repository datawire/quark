include ../target.mk

EMIT_TARGET = --javascript

test: emit run_test

space := $(null) #

run_test: node_modules
	$(call inside,emit,env NODE_PATH="$(shell pwd)/emit" ../node_modules/.bin/mocha $(MOCHA_FLAGS))

node_modules:
	mkdir node_modules
	npm install mocha
