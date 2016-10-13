.PHONY: test clean default

default:
	echo

GOPATH := $(shell pwd)/rt
export GOPATH

GO_TESTFLAGS =

track = echo "$(1) directory \`$$PWD'"

inside = cd $(1) && ($(call track,Entering) ;  $(2); $(call track,Leaving))

clean:
	rm -fr "$(CURDIR)/emit"

test: emit
	$(call inside,emit/src,env GOPATH="$(shell pwd)/emit:$(GOPATH)" go test $(GO_TESTFLAGS) ./...)

emit:
	mkdir -p emit/src
	quark-ir emit -o emit/src --go ../../quarkc/test/c2/ffi_ir/*.ir
