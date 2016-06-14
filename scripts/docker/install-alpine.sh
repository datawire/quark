#!/bin/sh
# Install dependencies for Quark inside Alpine:
apk add --update bash
apk add --no-cache make gcc libc-dev g++
apk add --no-cache git openjdk8
apk add --no-cache python python-dev py-pip py-virtualenv
apk add --no-cache ruby ruby-dev ruby-bundler ruby-rdoc ruby-irb
apk add --no-cache nodejs nodejs-dev
wget http://apache.cs.utah.edu/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz &&
tar xfz apache-maven-3.3.9-bin.tar.gz
mv apache-maven-3.3.9 /usr/lib/mvn
rm -rf apache-maven-3.3.9*
ln -sf "${JAVA_HOME}/bin/"* "/usr/bin/"
rm -rf /var/cache/apk/*
