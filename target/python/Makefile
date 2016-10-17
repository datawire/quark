include ../target.mk

EMIT_TARGET = --python

PYTHONPATH := $(shell pwd)/rt
export PYTHONPATH

test: emit
	$(call inside,emit,env PYTHONPATH="$(shell pwd)/emit:$(PYTHONPATH)" py.test)

