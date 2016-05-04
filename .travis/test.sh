#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..


. quark-travis/bin/activate

if [[ -f ~/.nvm/nvm.sh ]]; then
    . ~/.nvm/nvm.sh
    nvm alias
fi

source $(rvm quark-ruby do rvm env --path)

set -x

py.test -v $TEST_SUITE --durations=10

