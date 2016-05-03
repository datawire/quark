#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..


. quark-travis/bin/activate

if [[ -f ~/.nvm/nvm.sh ]]; then
    . ~/.nvm/nvm.sh
fi

set -x

py.test -v $TEST_SUITE --durations=10 --collect-only

