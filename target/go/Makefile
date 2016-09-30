.PHONY: test clean default

default:
	echo

GOPATH := $(shell pwd)/rt
export GOPATH

confuse_emacs =
track = $(info $(1) directory `$(2)'$(call confuse_emacs '`))

inside = $(call track,Entering,$(1))$(shell cd $(1) && set -x && $(2))$(call track,Leaving,$(1))

clean:
	rm -fr emit

test: emit
	$(call inside,emit/src,env GOPATH="$(shell pwd)/emit:$(GOPATH)" go test ./...)

emit:
	mkdir -p emit/src
	quark-ir emit -o emit/src --go ../../quarkc/test/ffi_ir/*.ir
