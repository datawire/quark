.PHONY: test clean default

default:
	echo

PYTHONPATH := $(shell pwd)/rt
export PYTHONPATH

confuse_emacs =
track = echo "$(1) directory \`$(2)'"

inside = cd $(1) && ($(call track,Entering,$(1)) ;  $(2); $(call track,Leaving,$(1)))

clean:
	rm -fr emit

test: emit
	$(call inside,emit,env PYTHONPATH="$(shell pwd)/emit:$(PYTHONPATH)" py.test -v)
	echo Done

emit:
	quark-ir emit -o emit --python ../../quarkc/test/ffi_ir/*.ir
