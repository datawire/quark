
function sanitize() {
    PATH=$(echo "$PATH" | tr : \\n |
                  grep -v -e /\\.local/ -e /\\.rvm/ |
                  tr \\n : | sed -e's/:$//' )
    rm -fr ~/.rvm
    rm -fr ~/.local
    unset $(env | grep -Fe ~/.rvm | cut -d= -f1)
    export BUNDLE_PATH=~/.gems
    .travis/env.sh $1
}
