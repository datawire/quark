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


git remote set-branches --add origin master && git fetch --unshallow

case "$STAGE-$DEPLOY" in
    initial-master)
        echo "TODO MASTER DEPLOY"
        exit 1;;

    initial-develop)
        NEXT_VERSION=$(scripts/compute-next-version)
        echo "TODO DEVELOP DEPLOY push to testpypi and commit to branch ci/$DEPLOY/v$NEXT_VERSION"
        exit 1;;

    *)
        echo "Unhandled deploy mode $STAGE-$DEPLOY"
        exit 1;;
esac


####    
####    
####    after_success:
####    - if [[ ( -f $DEPLOYMENT_TOKEN_FILE ) && ( "$STATE" = "validate-dev" ) ]] ; then
####        echo TODO TAG with DEV-success;
####      fi
####    after_failure:
####    - if [[ ( -f $DEPLOYMENT_TOKEN_FILE ) && ( "$STATE" = "validate-dev" ) ]] ; then
####        echo TODO TAG with DEV-fail;
####      fi
####    before_deploy:
####    - if [[ -f .before.deploy.flag ]] ; then
####        echo "Duplicate before_deploy???";
####      else
####        touch .before.deploy.flag &&
####      fi
####    deploy:
####    - provider: pypi
####      distributions: sdist
####      server: https://testpypi.python.org/pypi
####      user: bozzo
####      password:
####        secure: edLNPe42PWFBVWvNb0i+cQBniI9LhWTvTE5l0eQs601iEy7L+OaY7CgaQUHCekQH23xYQiX78mLNUTJrl9+aMO0SoUX7iD7OhYj8wPIgNgoU6qp08zgJdFjMbecl+lDh0Z/eaVtjobWS3TBgFltY4GHQMrTGF+ZM2nuZdgy72ug1Pot4x0wzAw/Fwj/ROug4FalsgLsTTfpAVzUxmYTvk78HEp/0QkXZ/SMtJ0TViUwQsibahpkLltU6G2TlZqTGLZQpK3p2CJKmSbHmkQLZxxe1g9hs3W9ppHQdZC9IqN5Z2m7oDco+32R7bfwOkM2LqT7B6wm9KbhS32dgzsTCaSw4hFT5SMcZwQBGVopK+lCvwq7EOa0jz6ju7TpwJXyb804ddiBACpjW/xdyYjpl9eYt6Jl4EU4HEZSdfEmgbbT+F/Wrf8Ms1Fjl+V/1rEUThFxcDEfIeY327ftvaWZT8EMBSYIoXI4ZSWb3c5fyFcoRF3/OfTrEydno5T3niQVbYym0GCGN9bk5pqYbrpjFPWI2l+I69ljoazaXnpB9iSBXUoqWoyu2dLeZ9wSsnPwrpaV/ar+Ka6k5Y+ae8VSccQOjBgdUEbBPeTCdBBrVAYbHXxkpI+lms6Uys/meZIYC+PwnTuG8LqJ5rIi0ZEmq7QEMtfezkMkMgJnRa0BYIXw=
####      skip_cleanup: true
####      on:
####        repo: datawire/quark
####        branch: quarkdev-ci
####        tags: false
####        condition: ( -f $DEPLOYMENT_TOKEN_FILE ) && ( "$STATE" = "ci-run" )
####    
####    - provider: pypi
####      distributions: sdist
####      server: https://testpypi.python.org/pypi
####      user: datawire
####      password:
####        secure: YJRQYpbeK3rWnKISEXM5EaUJAIilJ1ZyXwNWEgtpyilOG1FWwWLKYHDuJaBeqO7VsAqzCtDOomvXxkK5UT56wALEozPTg9HytC8A2/8rssIX4oru1lALWMuoPQgKu99oy46wgr1yGVmwN2Pjx3FebItj0111US3l0HEjTf4MDpWhnTl/yh8d7RU/KGzdYFcqIWnlk7ccQJ+uc65Cx0ZCLxjEJNi0RkAr34O0h/Nl6/gcr159WKDMz8Os3p0PSZzJywPA2XI9henHuJrInoNCp9XpK2VtuVNTmgnyz88y/kudifIkNLx5pcIZIHrH/LB2MYAyrzzfdiG7HNHq0NYomuTz5Z4rtXNXlbs8sOQxmg3iNnt9V/7H1vQSJNgVOouSyRN44SsKuYrGPhc2DtHcvf8xySkmiaDT7RtiLobY8mtTBTCpy3G3agBITth92trTL6+1ZYvoNjiU5i4PGv2xMgnwiOO8rPM5mkFapndZ+mh/KlG4hxNZOSAJSAi7M3OtH1hPZZGicqqJlGJSfV70C153wxLuR5vQ/EzFJF3zPjkTxaUMs1ih82mv6gBml7NEaPsREbXR/RqerqzohzbmrvUjIe7M++tZpqJ03pOI99UxuTxdUz3GvwTKWnuiLZ55IoOslgHm+dDDoH5B0TPQC0mDysftDlLy4ngEeHE7qxU=
####      skip_cleanup: true
####      on:
####        repo: datawire/quark
####        branch: quarkdev-ci
####        tags: false
####        condition: ( -f $DEPLOYMENT_TOKEN_FILE ) && ( "$STATE" = "ci-run" ) && ( -f .PROVIDER.DISABLED.HACK )
####    
####    # XXX: travis respawns oddly, replace with a commit on a ci-$next_version branch
####    
####    - provider: script
####      skip_cleanup: true
####      on:
####        repo: datawire/quark
####        branch: quarkdev-ci
####        tags: false
####        condition: ( -f $DEPLOYMENT_TOKEN_FILE ) && ( "$STATE" = "ci-run" )
####      script: scripts/respawn.sh STATE=validate-dev PYPI="$TESTPYPI" QUARK_PACKAGE="datawire-quarkdev-bozzo"
####    
####    # XXX: hack above, QUARK_PACKAGE should be datawire-quark==$next_version
