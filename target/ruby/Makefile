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
	ruby -Iemit/test:emit/lib:rt/lib emit/test/ts.rb
	echo Done

emit:
	quark-ir emit -v --ruby -o emit ../../quarkc/test/c2/ffi_ir/*.ir
