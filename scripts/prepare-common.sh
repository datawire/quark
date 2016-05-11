#!/bin/bash

set -ex

cwd=$(pwd)
cd $(dirname "$0")/..
pip install -r requirements.txt
npm install ws request timers lodash
bundle --version || gem install bundler
bundle install
