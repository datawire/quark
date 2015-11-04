cd $(dirname "$0") &&
test java-deps/pom.xml -ot ../../java.py &&
echo 'package java_deps {}' > java-deps.q &&
quark --java compile java-deps.q  &&
rm java-deps.q &&
cd java-deps &&
mv java/pom.xml . &&
rm -fr java &&
mvn dependency:copy-dependencies -DoutputDirectory=. &&
echo done
