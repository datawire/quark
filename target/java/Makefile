include ../target.mk

EMIT_TARGET = --java

RT_JAR := emit/build/rt.jar
EMIT_JAR := emit/build/emit.jar
TESTS_JAR := emit/build/tests.jar
JUNIT_JAR := deps/junit.jar
HAMCREST_JAR := deps/hamcrest.jar

test: emit run_test

space := $(null) #

run_test: $(TESTS_JAR) $(EMIT_JAR) $(RT_JAR) $(JUNIT_JAR) $(HAMCREST_JAR)
	java -cp $(subst $(space),:,$^) org.junit.runner.JUnitCore `jar tf $(TESTS_JAR) | grep \\.class | cut -d. -f1 | tr / .`

$(RT_JAR):
	mkdir -p emit/build/rt/classes
	javac -g -sourcepath rt/src/main/java -d emit/build/rt/classes $$(find rt/src/main/java -type f -name '*.java')
	jar cf $@ -C emit/build/rt/classes .

$(EMIT_JAR): $(RT_JAR) $(JUNIT_JAR)
	mkdir -p emit/build/emit/classes
	javac -g -cp $(subst $(space),:,$^) -sourcepath emit/src/main/java -d emit/build/emit/classes $$(find emit/src/main/java -type f -name '*.java')
	jar cf $@ -C emit/build/emit/classes .

$(TESTS_JAR): $(EMIT_JAR) $(RT_JAR) $(JUNIT_JAR) $(HAMCREST_JAR)
	mkdir -p emit/build/test/classes
	javac -g -cp $(subst $(space),:,$^) -sourcepath emit/src/test/java -d emit/build/test/classes $$(find emit/src/test/java -type f -name '*.java')
	jar cf $@ -C emit/build/test/classes .

$(JUNIT_JAR):
	@mkdir -p deps
	curl -o $@ http://central.maven.org/maven2/junit/junit/4.12/junit-4.12.jar

$(HAMCREST_JAR):
	@mkdir -p deps
	curl -o $@ http://central.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar
