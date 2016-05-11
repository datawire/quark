#!/bin/bash

set -ex

magic="$1"; shift;
if [ "$magic" != "--dockered" ]; then
    echo "This is a helper script for run-in-docker.sh" >&2 && exit 1
fi

do_develop=yes

if [ "$1" == "--no-develop" ]; then
    do_develop=no; shift
fi

branch="$1"; shift;

git clone --branch "$branch" /quark .
if [ "$do_develop" = "yes" ]; then
    scripts/develop.sh
fi
if [ $# != 0 ]; then
    env "$@"
else
    bash
fi

