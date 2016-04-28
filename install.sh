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

piparg=datawire-quark

download() {
    branch=$1
    url="https://github.com/datawire/quark/archive/${branch}.zip"
    msg "Installing from ${url}:"
    work=$(mktemp -d)
    curl -# -L ${url} > ${work}/quark-${branch}.zip
    unzip -q ${work}/quark-${branch}.zip -d ${work}
    piparg=${work}/quark-${branch}
}

if [ -n "$1" ]; then
    download $1
else
    msg "Installing from PyPI:"
fi

python_version="python2.7"

quark_install_root="${HOME}/.quark"

is_python_installed () {
    substep "Checking if python is installed: "
    if command -v python > /dev/null 2>&1; then
        ok
    else
        die "Not Installed. Please install python on your system."
    fi
}

is_pip_installed () {
    substep "Checking if pip is installed: "
    if command -v pip > /dev/null 2>&1; then
        ok
    else
        die "Not Installed. Please install python pip on your system."
    fi
}

is_virtualenv_installed () {
    substep "Checking if virtualenv is installed: "
    if command -v virtualenv > /dev/null 2>&1; then
        ok
    else
        die "Not Installed. Please install virtualenv on your system."
    fi
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
is_python_installed 
is_pip_installed
is_virtualenv_installed
is_quark_installed

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
