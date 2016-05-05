#!/bin/bash

set -ex

u_flag=no
n_flag=
image=""
me=$(basename "$0")

while getopts :uni: opt; do
    case $opt in
    u) u_flag=yes;;
    n) n_flag=--no-develop;;
    i)
      image="$image $OPTARG"
    ;;
    \?) echo "Unknown option -$OPTARG" >&2; exit 1;;
    :) echo "Option -$OPTARG requires an argument." >&2; exit 1;;
    esac
done
shift $((OPTIND-1))

if [ "$image" = "" ]; then
    image="ubuntu-pip-java-node-ruby"
fi

cwd=$(pwd)
cd $(dirname "$0")/..
dirty=$(git status -suno)
if [ "$dirty" != "" ]; then
    if [ $u_flag = no ]; then
        echo "$dirty"
        echo
        echo "You have uncommited changes, $me runs against top commit of the current branch."
        echo "Commit your changes, or stash them, or if you are brave re-run with $me -u $*"
        exit 1
    else
        echo "Warning: Running with dirty worktree"
    fi
fi
branch=$(git rev-parse --abbrev-ref --symbolic HEAD)

for img in $image; do
    docker run -it -v `pwd`:/quark  -w /home/dev/quark/ "$img" /bin/bash /quark/scripts/dockme.sh --dockered $n_flag "$branch" "$@"
done
