#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..

source .travis/sanitize.sh
sanitize test

source quark-travis/bin/activate

if [[ -f ~/.nvm/nvm.sh ]]; then
    source ~/.nvm/nvm.sh
fi

case "$TEST_SUITE" in
    examples)
        # First example test sometimes times out due to quark install taking too long
        # Seems like an empty maven cache issue
        q=/tmp/maven_cache_warmup.q
        echo 'quark *; void main(List<String> args) {}' > $q
        quark install --java $q
        quark run --java $q
        ;;
    *)
        ;;
esac

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

if flake8 $TEST_SUITE; then
    echo flake8 passed
else
    exit 1
fi

if py.test -v $TEST_SUITE --durations=10; then
    echo Tests passed
else
    ./quarkc/test/compare --batch
    exit 1
fi
