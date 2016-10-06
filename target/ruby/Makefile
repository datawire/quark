.PHONY: test clean default

default:
	echo

PYTHONPATH := $(shell pwd)/rt
export PYTHONPATH

track = echo "$(1) directory \`$$PWD'"

inside = cd $(1) && ($(call track,Entering) ;  $(2); $(call track,Leaving))

clean:
	rm -fr "$(CURDIR)/emit"

test: emit
	ruby -Iemit/test:emit/lib:rt/lib emit/test/ts.rb

emit:
	quark-ir emit --ruby -o emit ../../quarkc/test/c2/ffi_ir/*.ir
