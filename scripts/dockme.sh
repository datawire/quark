#!/bin/bash

set -ex

magic="$1"; shift;
if [ "$magic" != "--dockered" ]; then
    echo "This is a helper script for run-in-docker.sh" >&2 && exit 1
fi

git clone /quark .
scripts/develop.sh
if [ $# != 0 ]; then
    command="$1"; shift;
    $command "$@"
fi

