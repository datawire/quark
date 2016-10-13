.PHONY: test clean default

default:
	echo

PYTHONPATH := $(shell pwd)/rt
export PYTHONPATH

JUNIT_JAR := deps/junit.jar

confuse_emacs =
track = echo "$(1) directory \`$(2)'"

inside = cd $(1) && ($(call track,Entering,$(1)) ;  $(2); $(call track,Leaving,$(1)))

clean:
	rm -fr emit build

test: emit build/tests.jar build/rt.jar $(JUNIT_JAR)
	$(call inside,emit,env PYTHONPATH="$(shell pwd)/emit:$(PYTHONPATH)" py.test -v)
	echo Done

emit:
	quark-ir emit -v -o emit --java ../../quarkc/test/c2/ffi_ir/*.ir

build/rt.jar:
	mkdir -p build/rt/classes
	javac -g -sourcepath rt/src/main/java -d build/rt/classes $$(find rt/src/main/java -type f -name '*.java')

build/tests.jar: build/rt.jar $(JUNIT_JAR)
	mkdir -p build/test/classes
	javac -g -cp build/rt.jar:$(JUNIT_JAR) -sourcepath emit/src/main/java -d build/rt/classes $$(find emit/src/main/java emit/src/test/java -type f -name '*.java')

$(JUNIT_JAR):
	mkdir -p deps
	curl -o $@ http://central.maven.org/maven2/junit/junit/4.12/junit-4.12.jar
