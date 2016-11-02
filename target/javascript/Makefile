include ../target.mk

EMIT_TARGET = --javascript

NODE_PATH := $(shell pwd)/rt
export NODE_PATH

test: emit run_test

space := $(null) #

run_test: node_modules
	$(call inside,emit,env NODE_PATH="$(shell pwd)/emit:$(NODE_PATH)" ../node_modules/.bin/mocha $(MOCHA_FLAGS))

node_modules:
	mkdir node_modules
	npm install mocha
