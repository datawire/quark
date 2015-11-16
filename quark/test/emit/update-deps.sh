cd $(dirname "$0") &&
( test java-deps/pom.xml -ot ../../java.py || test "$1" = "-f"; ) &&
echo 'package java_deps {}' > java-deps.q &&
quark --java compile java-deps.q  &&
rm java-deps.q &&
cd java-deps &&
mv java/pom.xml . &&
rm -fr java &&
mvn dependency:build-classpath -Dmdep.outputFile=classpath
echo done
