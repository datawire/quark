#!/bin/bash

set -ex

cwd=$(pwd)
cd $(dirname "$0")/..

scripts/env.sh install

case "${TRAVIS_OS_NAME}" in
    linux)
        sudo apt-get -y install libssl-dev swig python-dev curl\
             python2.7 python-pip tar gcc make python-dev libffi-dev\
             python-virtualenv openjdk-7-jdk maven
        sudo update-java-alternatives -s java-1.7.0-openjdk-amd64
        hash -r
        ;;
    osx)
        brew update
        brew outdated maven || brew upgrade maven
        brew install python xz
        hash -r
        pip install virtualenv
        ;;
    *)
        echo "Unsupported platform $TRAVIS_OS_NAME"
        exit 1
        ;;
esac

javac -version
java -version
java -version 2>&1 | grep -Fe 'java version "1.7.0'
python -c 'import sys; print(sys.version); sys.exit(int(sys.version_info[:3] < (2,7,6) or (3,0,0) < sys.version_info[:3]))'
(set +x &&
        rm -rf ~/.nvm &&
        git clone https://github.com/creationix/nvm.git ~/.nvm &&
        (cd ~/.nvm &&
                git checkout `git describe --abbrev=0 --tags`) &&
        source ~/.nvm/nvm.sh &&
        nvm install 4.2.2 &&
        nvm alias default 4.2.2
)
set +x && source ~/.nvm/nvm.sh && set -x
node --version
virtualenv quark-travis
set +x && . quark-travis/bin/activate && set -x
pip install --upgrade pip
command rvm install 2.3.0
command rvm --default use 2.3.0
ruby --version
mvn --version
npm install --save-dev travis-after-all
gem install travis-yaml
scripts/prepare-common.sh


TESTPYPI=https://testpypi.python.org/pypi
REALPYPI=https://pypi.python.org/pypi
PYPI=$REALPYPI
QUARK_PACKAGE=datawire-quarkdev-bozzo

case "$TRAVIS_REPO_SLUG//$TRAVIS_BRANCH" in
    datawire/quark//ci/develop/v*)
        QUARK_PACKAGE="$QUARK_PACKAGE==${TRAVIS_BRANCH##ci/develop/v}"
        pip install --index-url $TESTPYPI --extra-index-url $REALPYPI "$QUARK_PACKAGE"
    ;;
    *)
        pip install .
        ;;
esac


pip freeze
