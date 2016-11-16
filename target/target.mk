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
QUARK_FLAGS = --force

IR_PATTERN = *.ir
Q_PATTERN = *.q

TEST_DIR = ../../quarkc/test/ffi_ir
IR_FILES = $(TEST_DIR)/$(IR_PATTERN)
Q_FILES = $(TEST_DIR)/$(Q_PATTERN)

emit:
	mkdir -p $(EMIT_DIR)
	@test "$(IR_FILES)" = "" || { set -x; quark-ir emit -o $(EMIT_DIR) $(EMIT_TARGET) $(IR_FILES); }
	@test "$(Q_FILES)" = "" || { set -x; quark -o $(EMIT_DIR) $(EMIT_TARGET) $(QUARK_FLAGS) $(Q_FILES); }
