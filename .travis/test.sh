#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..

set -x
source quark-travis/bin/activate

if [[ -f ~/.nvm/nvm.sh ]]; then
    source ~/.nvm/nvm.sh
    nvm alias
fi


source $(rvm quark-ruby do rvm env --path)

py.test -v $TEST_SUITE --durations=10

