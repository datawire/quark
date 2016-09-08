#!/bin/bash

set -ex

cwd=$(pwd)
cd $(dirname "$0")/..

source .travis/sanitize.sh
sanitize install

case "${TRAVIS_OS_NAME}" in
    linux)
        sudo apt-get -y update
        sudo apt-get -y install software-properties-common
        sudo add-apt-repository -y ppa:brightbox/ruby-ng
        sudo apt-get -y update
        sudo apt-get -y install ruby2.3 ruby2.3-dev
        sudo update-alternatives --set ruby /usr/bin/ruby2.3
        sudo update-alternatives --set gem /usr/bin/gem2.3
        rm -fr ~/.rvm
        hash -r
        type ruby
        ruby --version
        sanitize mid-install # recalculate PATH
        gem install bundler
        hash -r
        type bundle
        sudo apt-get -y install libssl-dev swig python-dev curl\
             python2.7 python-pip tar gcc make python-dev libffi-dev\
             python-virtualenv openjdk-7-jdk maven
        sudo update-java-alternatives -s java-1.7.0-openjdk-amd64
        hash -r
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
        ;;
    osx)
        sudo chown -R $USER /usr/local
        brew tap derekkwok/python
        brew install openssl
        brew link --force openssl
        brew update
        brew install python
        brew install python34
        hash -r
        echo $PATH
        type python
        type pip
        python --version
        pip --version
        python3 --version
        pip3 --version
        pip install --isolated --force-reinstall --ignore-installed -vvv virtualenv
        brew install xz ruby
        for pkg in maven node; do
            brew outdated $pkg || brew upgrade $pkg
        done
        hash -r
        type ruby
        type gem
        sanitize mid-install # recalculate PATH
        gem install --verbose --no-user-install bundler
        hash -r
        type bundle
        ;;
    *)
        echo "Unsupported platform $TRAVIS_OS_NAME"
        exit 1
        ;;
esac

type virtualenv
virtualenv --verbose --python=python2.7 quark-travis
# Sometimes virtualenv adds a pip3 when it oughtn't, and we don't want that to
# conflict with the real one:
rm -f quark-travis/bin/pip3
virtualenv --python=python3.4 py3
mv py3/bin/pip py3/bin/pip3
mv py3/bin/python py3/bin/python3

set +x && source quark-travis/bin/activate && set -x
pip install --upgrade pip
pip install --upgrade setuptools

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
