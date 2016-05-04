#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..

source quark-travis/bin/activate

if [[ -f ~/.nvm/nvm.sh ]]; then
    source ~/.nvm/nvm.sh
fi


py.test -v $TEST_SUITE --durations=10

