#!/bin/bash

set -e

cwd=$(pwd)

set -x

javac -version
java -version
type python
python -c 'import sys; print(sys.version); sys.exit(int(sys.version_info[:3] < (2,7,6) or (3,0,0) < sys.version_info[:3]))'
node --version
ruby --version
mvn --version

if [ -z "$TEST_SUITE" ]; then
    TEST_SUITE="$*"
fi

if [ -z "$TEST_SUITE" ]; then
    TEST_SUITE="default"
fi

function default {
    if flake8 quarkc --exclude '*/generated/*'; then
        echo flake8 passed
    else
        exit 1
    fi

    #if pylint quarkc; then
    #    echo pylint passed
    #else
    #    exit 1
    #fi

    if py.test --durations=10 && quark-test run --stats quarkc/test/e2e/*.q quarkc/test/e2e/*.ir; then
        echo Tests passed
    else
        ./quarkc/test/compare --batch
        exit 1
    fi
}

function data {
    if quark-test run --stats quarkc/test/data/$1.q; then
        echo Tests passed
    else
        exit 1
    fi
}

for SUITE in $TEST_SUITE; do
    case "$SUITE" in
        data*)
            data $SUITE
            ;;
        *)
            $TEST_SUITE
            ;;
    esac
done
