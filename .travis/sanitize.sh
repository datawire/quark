
function sanitize() {
    PATH=$(echo "$PATH" | tr : \\n |
                  grep -v -e /\\.local/ -e /\\.rvm/ -e /\\.gem/ |
                  tr \\n : | sed -e's/:$//' )
    rm -fr ~/.rvm
    rm -fr ~/.local
    unset $(env | grep -Fe ~/.rvm | cut -d= -f1)
    echo "install: --user-install" > ~/.gemrc
    PATH=$(gem env gempath | cut -d: -f1)/bin:"$PATH"
    .travis/env.sh $1
}
