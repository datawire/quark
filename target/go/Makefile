include ../target.mk

EMIT_TARGET = --go
EMIT_DIR = emit/src

GO_TESTFLAGS =

test: emit
	$(call inside,emit/src,env GOPATH="$(shell pwd)/emit" go test $(GO_TESTFLAGS) ./...)

