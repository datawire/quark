#!/bin/bash

# Virtualenv for Python:
source /tmp/run/bin/activate

# Add GEM_HOME to GEM_PATH for Ruby:
export GEM_PATH=`gem env gempath`:$GEM_HOME

# Configure dependencies:
python setup.py develop

# Run command passed in by user:
env "$@"
