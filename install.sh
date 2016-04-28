#!/usr/bin/env sh
set -e

msg () {
    printf "$1"
    printf "\n"
}

substep () {
    printf "%s" "-->   "
    printf "$1"
}

step () {
    printf "%s" "--> "
    printf "$1"
    printf "\n"
}

die() {
    printf "\e[31mFAIL\e[0m"
    printf "\n\n        "
    printf "$1"
    printf "\n\n"
    exit 1
}

ok() {
    printf "\e[32mOK\e[0m\n"
}

if [ -n "$1" ]; then
    branch=$1
    url="https://github.com/datawire/quark/archive/${branch}.zip"
    msg "Installing from ${url}"
else
    msg "Installing from PyPI"
fi

python_version="python2.7"
quark_install_root="${HOME}/.quark"

required_commands () {
    for cmd in $*; do
        substep "Checking for ${cmd}: "
        loc=$(command -v ${cmd} || true)
        if [ -n "${loc}" ]; then
            ok
        else
            die "Cannot find ${cmd}, please install and try again."
        fi
    done
}

is_quark_installed () {
    substep "Checking for old quark: "
    if [ -e ${quark_install_root} ]; then
        die "Install directory exists at '${quark_install_root}', please (re)move to proceed."
    else
        ok
    fi
}

step "Performing installation environment sanity checks..."
required_commands curl unzip python pip virtualenv
is_quark_installed

if [ -n "${branch}" ]; then
    msg "Downloading..."
    work=$(mktemp -d)
    curl -# -L ${url} > ${work}/quark-${branch}.zip
    if unzip -q ${work}/quark-${branch}.zip -d ${work} >> ${work}/install.log 2>&1; then
        piparg=${work}/quark-${branch}
    else
        die "Unable to download from ${url}\n        check in ${work}/install.log for details."
    fi
else
    piparg=datawire-quark
fi

step "Creating Datawire Quark installation directory..."
virtualenv -q --python ${python_version} ${quark_install_root}/venv

step "Installing Datawire Quark..."

. ${quark_install_root}/venv/bin/activate
pip --quiet install ${piparg}
deactivate

mkdir ${quark_install_root}/bin
mv ${quark_install_root}/venv/bin/quark* ${quark_install_root}/bin

step "Done!"

msg
msg "  Quark has been installed into '${quark_install_root}'."
msg "  Please add '${quark_install_root}/bin' to your PATH."
msg
