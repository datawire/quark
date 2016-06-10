#!/bin/bash

# Script used by Dockerfile.dev as entry point, makes sure user commands run
# within the virtualenv and Gem home setup in the image created by
# Dockerfile.dev.

# Virtualenv for Python:
source /tmp/run/bin/activate

# Add GEM_HOME to GEM_PATH for Ruby:
export GEM_PATH=`gem env gempath`:$GEM_HOME

# Configure dependencies:
python setup.py develop

# Run command passed in by user:
env "$@"
