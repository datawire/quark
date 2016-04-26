#!/bin/bash

set -e

echo Requesting a respawn with "$@"

if [[ "$TRAVIS_BRANCH" != "" ]]; then
  branch="\"branch\": \"$TRAVIS_BRANCH\","
else
  branch=""
fi

if [[ "$TRAVIS_COMMIT" != "" ]]; then
  commit="\"commit_id\": \"$TRAVIS_COMMIT\","
else
  commit=""
fi

if [[ "$TRAVIS_TAG" != "" ]]; then
  tag="\"tag\": \"$TRAVIS_TAG\","
else
  tag=""
fi

RESPAWN_TRACE="$TRAVIS_BUILD_NUMBER $RESPAWN_TRACE"
RESPAWN_TOKEN=$(cat .respawn.token)

body=$(cat << EOF
{ "request": {
    "message": "Respawn on $RESPAWN_TRACE with $(echo "$*" | sed -es:\":\\\":g)",
    $branch
    $commit
    $tag
    "token": "$RESPAWN_TOKEN",
    "config": {
      "env": {
        "global": $(rvm 2.3.0 do ruby scripts/travis.env.rb "$@" RESPAWN_TRACE="$RESPAWN_TRACE")
      }
    }
  }
}
EOF
)

exec curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token $RESPAWN_TOKEN" \
  -d "$body" \
  https://api.travis-ci.org/repo/$(echo $TRAVIS_REPO_SLUG | sed -es_/_%2F_)/requests
