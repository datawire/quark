#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..

source quark-travis/bin/activate

if [[ -f ~/.nvm/nvm.sh ]]; then
    source ~/.nvm/nvm.sh
fi

case "$TEST_SUITE" in
    examples)
        # First example test sometimes times out due to quark install taking too long
        # Seems like an empty maven cache issue
        q=/tmp/maven_cache_warmup.q
        echo 'void main(List<String> args) {}' > $q
        quark install --java $q
        quark run --java $q
        ;;
    *)
        ;;
esac

py.test -v $TEST_SUITE --durations=10

