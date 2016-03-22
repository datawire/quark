#!/bin/bash

set -e

rm -rf out out.*

quark --all -o out compile franz-1.0.q
(cd out/py/quark && python setup.py build_sphinx)
(cd out/java/quark && mvn javadoc:javadoc)
mv out out.first
cp franz-server-1.0.py out.first/py/server.py

quark --all -o out compile franz-1.1.q
(cd out/py/quark && python setup.py build_sphinx)
(cd out/java/quark && mvn javadoc:javadoc)
mv out out.second
cp franz-server-2.0.py out.second/py/server.py

(cd out.first/java && cp ../../DumpTopic.java . && env CLASSPATH=franz-1.0/src/main/java:quark/src/main/java javac DumpTopic.java)
(cd out.first/java && cp ../../Begin.java . && env CLASSPATH=franz-1.0/src/main/java:quark/src/main/java javac Begin.java)

(cd out.second/java && cp ../../DumpTopic.java . && env CLASSPATH=franz-1.1/src/main/java:quark/src/main/java javac DumpTopic.java)
(cd out.second/java && cp ../../Begin.java . && env CLASSPATH=franz-1.1/src/main/java:quark/src/main/java javac Begin.java)

echo ./launch.py first
echo ... or ...
echo ./launch.py second
