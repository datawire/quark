#!/bin/bash

rm -rf out out.*

quark --java out --python out --javascript out firstlib.q
mv out out.first
cp firstserver.py out.first/server.py

quark --java out --python out --javascript out secondlib.q
mv out out.second
cp secondserver.py out.second/server.py

(cd out.first && cp ../dumpq.java . && env CLASSPATH=src/main/java javac dumpq.java)
(cd out.first && cp ../kickoff.java . && env CLASSPATH=src/main/java javac kickoff.java)

(cd out.second && cp ../dumpq.java . && env CLASSPATH=src/main/java javac dumpq.java)
(cd out.second && cp ../kickoff.java . && env CLASSPATH=src/main/java javac kickoff.java)

echo ./launch.py first
echo ... or ...
echo ./launch.py second
