#!/bin/bash

set -e

rm -rf out out.*

quark --java out --python out --javascript out franz-1.0.q
(cd out && python setup.py build_sphinx)
(cd out && mvn javadoc:javadoc)
mv out out.first
cp franz-server-1.0.py out.first/server.py

quark --java out --python out --javascript out franz-1.1.q
(cd out && python setup.py build_sphinx)
(cd out && mvn javadoc:javadoc)
mv out out.second
cp franz-server-2.0.py out.second/server.py

(cd out.first && cp ../DumpTopic.java . && env CLASSPATH=src/main/java javac DumpTopic.java)
(cd out.first && cp ../Begin.java . && env CLASSPATH=src/main/java javac Begin.java)

(cd out.second && cp ../DumpTopic.java . && env CLASSPATH=src/main/java javac DumpTopic.java)
(cd out.second && cp ../Begin.java . && env CLASSPATH=src/main/java javac Begin.java)

echo ./launch.py first
echo ... or ...
echo ./launch.py second
