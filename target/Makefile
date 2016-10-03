.PHONY: test clean default

default clean test: MAKEFLAGS := $(MAKEFLAGS) -w
default clean test:
	$(MAKE) -C python $@
	$(MAKE) -C go $@
	$(MAKE) -C ruby $@

