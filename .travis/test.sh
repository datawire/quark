#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..

source .travis/sanitize.sh
sanitize test

source quark-travis/bin/activate
# Even though we're in Python 2 virtualenv, we want python3 and pip3 to work
# too, in their own virtualenv:
export PATH=$PWD/py3/bin:$PATH
which pip3
which python3

if [[ -f ~/.nvm/nvm.sh ]]; then
    source ~/.nvm/nvm.sh
fi

set -x

javac -version
java -version
java -version 2>&1 | grep -Fe 'java version "1.7.0'
type python
python -c 'import sys; print(sys.version); sys.exit(int(sys.version_info[:3] < (2,7,6) or (3,0,0) < sys.version_info[:3]))'
node --version
ruby --version
type ruby
ruby --version 2>&1 | grep -Fe 'ruby 2.3.'
mvn --version
mvn --version 2>&1 | grep -Fe 'Apache Maven 3.'

if flake8 quarkc; then
    echo flake8 passed
else
    exit 1
fi

#if pylint quarkc; then
#    echo pylint passed
#else
#    exit 1
#fi

if py.test -svv; then
    echo Tests passed
else
    ./quarkc/test/compare --batch
    exit 1
fi
