#!/bin/bash

set -ex

cwd=$(pwd)
cd $(dirname "$0")/..

csum=$(cat requirements.txt setup.py install-requirements.txt | shasum | cut -d\  -f 1)
CACHE_DIR=~/.quark/wheel-cache
CACHE_STAMP=$CACHE_DIR/.quark.stamp
stamp=$(test -f $CACHE_STAMP && cat $CACHE_STAMP || echo xxx)
if [ "$stamp" != "$csum" ]; then
    rm -fr $CACHE_DIR
    pip wheel --wheel-dir $CACHE_DIR -r requirements.txt
    pip wheel --wheel-dir $CACHE_DIR -r install-requirements.txt
    echo $csum > $CACHE_STAMP
fi
pip install --no-index --find-links=$CACHE_DIR -r requirements.txt
