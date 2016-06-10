#!/bin/bash

# Script used by Dockerfile.run as entry point, passes given arguments first to
# "quark install" and then to "quark run".

# Virtualenv for Python:
source /tmp/run/bin/activate

quark install "$@"
quark run "$@"

