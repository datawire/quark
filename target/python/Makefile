include ../target.mk

EMIT_TARGET = --python
PYTEST_FLAGS =

PYTHONPATH := $(shell pwd)/rt
export PYTHONPATH

test: emit
	$(call inside,emit,env PYTHONPATH="$(shell pwd)/emit:$(PYTHONPATH)" py.test $(PYTEST_FLAGS))

