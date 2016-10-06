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
	$(call inside,emit,env PYTHONPATH="$(shell pwd)/emit:$(PYTHONPATH)" py.test)

emit:
	quark-ir emit -o emit --python ../../quarkc/test/c2/ffi_ir/*.ir
