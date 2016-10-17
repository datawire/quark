include ../target.mk

EMIT_TARGET = --go
EMIT_DIR = emit/src

GOPATH := $(shell pwd)/rt
export GOPATH

GO_TESTFLAGS =

test: emit
	$(call inside,emit/src,env GOPATH="$(shell pwd)/emit:$(GOPATH)" go test $(GO_TESTFLAGS) ./...)

