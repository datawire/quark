#!/bin/bash

set -ex

cwd=$(pwd)
cd $(dirname "$0")/..
pip install -r requirements.txt
mvn install && echo "Don't forget to re-run mvn install if changing the quark java integrations"
npm link runtime/js-core
npm link runtime/js-node
