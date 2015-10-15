#!/bin/bash

set -e

rm -rf out out.*

quark --java out --python out --javascript out firstlib.q
mv out out.first
cp firstserver.py out.first/server.py

quark --java out --python out --javascript out secondlib.q
mv out out.second
cp secondserver.py out.second/server.py

(cd out.first && cp ../DumpQueue.java . && env CLASSPATH=src/main/java javac DumpQueue.java)
(cd out.first && cp ../Begin.java . && env CLASSPATH=src/main/java javac Begin.java)

(cd out.second && cp ../DumpQueue.java . && env CLASSPATH=src/main/java javac DumpQueue.java)
(cd out.second && cp ../Begin.java . && env CLASSPATH=src/main/java javac Begin.java)

echo ./launch.py first
echo ... or ...
echo ./launch.py second
