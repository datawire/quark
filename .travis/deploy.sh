#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..

. quark-travis/bin/activate

if [[ -f ~/.nvm/nvm.sh ]]; then
    . ~/.nvm/nvm.sh
fi

set -x

if [[ "$TRAVIS_REPO_SLUG" != "datawire/quark" ]]; then
    echo "Only CI for forks, skipping CD"
    exit 0
fi

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
    echo "Only CI for pull requests, skipping CD"
    exit 0
fi

DEPLOY=false
STAGE=undefined

case "$TRAVIS_BRANCH" in
    master)
        DEPLOY="master"
        STAGE="initial"
        ;;
    develop | quarkdev-ci)
        DEPLOY="develop"
        STAGE="initial"
        ;;
    *)
        echo "Only CI for branch $TRAVIS_BRANCH, skipping CD"
        exit 0;;
esac

npm install --save-dev travis-after-all
gem install travis-yaml


if $(npm bin)/travis-after-all ; then
    echo All tests in matrix passed, checking deployment conditions
else
    echo "test failure or not master.";
    exit 0
fi

if [[ "$CI" = "true" ]]; then
    echo "Setting up write access for github"
    git remote set-branches --add origin master && git fetch --unshallow
    git config --global credential.helper store
    git config --global user.email "automaton@datawire.io"
    git config --global user.name "Continuous Delivery"
    ( set +x; echo "https://$GITHUB_ACCESS_TOKEN:x-oauth-basic@github.com" > ~/.git-credentials )
fi

case "$STAGE-$DEPLOY" in
    initial-master)
        echo "TODO MASTER DEPLOY"
        exit 1;;

    initial-develop)
        NEXT_VERSION=$(scripts/compute-next-version)
        TAG="dev-$NEXT_VERSION"
        COMMIT=$(git rev-parse HEAD)
        ./release version --dev "$NEXT_VERSION"
        ./release push-pkg
        ./release push-docs
        git tag -a -m "CI tests pass for $TAG" "$TAG" "$COMMIT"
        git push origin "$TAG"
        exit 0;;

    *)
        echo "Unhandled deploy mode $STAGE-$DEPLOY"
        exit 1;;
esac

