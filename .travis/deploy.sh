#!/bin/bash

set -e

cwd=$(pwd)
cd $(dirname "$0")/..

. quark-travis/bin/activate

if [[ -f ~/.nvm/nvm.sh ]]; then
    . ~/.nvm/nvm.sh
fi

set -x

npm install travis-after-all
if $(npm bin)/travis-after-all ; then
    SUCCESS="$?"
    echo "All tests in matrix passed, checking deployment conditions"
else
    SUCCESS="$?"
    case "$SUCCESS" in
        1)
            echo "Some tests in matrix failed, checking deployment conditions"
            ;;
        2)
            echo "I am not the master, done"
            exit 0
            ;;
        *)
            echo "Trouble with travis-after-all ($SUCCESS)"
            exit $SUCCESS
            ;;
    esac
fi

if [[ "$TRAVIS_REPO_SLUG" != "datawire/quark" ]]; then
    echo "Only CI for forks, skipping CD"
    exit $SUCCESS
fi

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
    echo "Only CI for pull requests, skipping CD"
    exit $SUCCESS
fi

DEPLOY=false
STAGE=undefined

case "$SUCCESS-$TRAVIS_BRANCH" in
    0-master)
        DEPLOY="master"
        STAGE="initial"
        ;;
    1-master)
        DEPLOY="master"
        STAGE="failed"
        ;;
    0-develop | 0-quarkdev-ci)
        DEPLOY="develop"
        STAGE="initial"
        ;;
    1-develop | 1-quarkdev-ci)
        DEPLOY="develop"
        STAGE="failed"
        ;;
    *)
        echo "Only CI for branch $TRAVIS_BRANCH, skipping CD"
        exit $SUCCESS
        ;;
esac



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
        exit 1
        ;;

    initial-develop)
        pip install twine sphinx-better-theme
        NEXT_VERSION=$(scripts/compute-next-version)
        TAG="dev-$NEXT_VERSION"
        COMMIT=$(git rev-parse HEAD)
        ./release version --dev "$NEXT_VERSION"
        ./release --cicd push-docs
        ./release --cicd push-pkg
        git tag -a -m "CI tests pass for $TAG" "$TAG" "$COMMIT"
        git push origin "$TAG"
        exit $SUCCESS
        ;;

    failed-master)
        echo "TODO: tag failed release build?"
        exit $SUCCESS
        ;;

    failed-develop)
        echo "TODO: tag failed dev build?"
        exit $SUCCESS
        ;;

    *)
        echo "Unhandled deploy mode $STAGE-$DEPLOY"
        exit 1
        ;;
esac

