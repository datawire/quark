.PHONY: test clean default

default:
	echo make emit   - generate target code
	echo make clean  - remove generated code
	echo make test   - run the tests

track = echo "$(1) directory \`$$PWD'"

inside = cd $(1) && { $(call track,Entering);  $(2); rc=$$?; $(call track,Leaving); exit $$rc; }

clean:
	rm -fr "$(CURDIR)/emit"

EMIT_DIR = emit

emit:
	mkdir -p $(EMIT_DIR)
	quark-ir emit -o $(EMIT_DIR) $(EMIT_TARGET) ../../quarkc/test/ffi_ir/*.ir
	quark -o $(EMIT_DIR) $(EMIT_TARGET) ../../quarkc/test/ffi_ir/*.q
