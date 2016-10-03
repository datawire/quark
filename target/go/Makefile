.PHONY: test clean default

default:
	echo

GOPATH := $(shell pwd)/rt
export GOPATH

confuse_emacs =
track = echo "$(1) directory \`$(2)'"

inside = cd $(1) && ($(call track,Entering,$(1)) ;  $(2); $(call track,Leaving,$(1)))

clean:
	rm -fr emit

test: emit
	$(call inside,emit/src,env GOPATH="$(shell pwd)/emit:$(GOPATH)" go test -v ./...)
	echo Done

emit:
	mkdir -p emit/src
	quark-ir emit -o emit/src --go ../../quarkc/test/c2/ffi_ir/*.ir
