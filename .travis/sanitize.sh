
function sanitize() {
    PATH=$(echo "$PATH" | tr : \\n |
                  grep -vF -e /.local/ -e /.rvm/ -e /.gem/ |
                  tr \\n : | sed -e's/:$//' )
    rm -fr ~/.rvm
    rm -fr ~/.local
    unset $(env | grep -Fe ~/.rvm | cut -d= -f1)
    echo "install: --user-install" > ~/.gemrc
    echo "gempath at $1 is $(gem env gempath)"
    PATH="$PATH":$(gem env gempath | tr : \\n |
                          grep -F -e "$HOME/.gem/" | head -1)/bin
    .travis/env.sh $1
}
