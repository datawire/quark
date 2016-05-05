#!/bin/bash

set -ex

cwd=$(pwd)
cd $(dirname "$0")/..
scripts/prepare-common.sh
python setup.py develop
