#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..

#if flake8 quarkc; then
#    echo flake8 passed
#else
#    exit 1
#fi

#if pylint quarkc; then
#    echo pylint passed
#else
#    exit 1
#fi

if py.test && ./qtest run; then
    echo Tests passed
else
    ./quarkc/test/compare --batch
    exit 1
fi
