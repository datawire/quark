#!/bin/bash

set -ex

cwd=$(pwd)
cd $(dirname "$0")/..
scripts/prepare-npm.sh
pip install -r requirements.txt
bundle --version || gem install bundler
bundle install
