#!/usr/bin/env sh
set -e

# check if stdout is a terminal...
if [ -t 1 ]; then

    # see if it supports colors...
    ncolors=$(tput colors)

    if [ -n "$ncolors" ] && [ $ncolors -ge 8 ]; then
        bold="$(tput bold)"
        underline="$(tput smul)"
        standout="$(tput smso)"
        normal="$(tput sgr0)"
        black="$(tput setaf 0)"
        red="$(tput setaf 1)"
        green="$(tput setaf 2)"
        yellow="$(tput setaf 3)"
        blue="$(tput setaf 4)"
        magenta="$(tput setaf 5)"
        cyan="$(tput setaf 6)"
        white="$(tput setaf 7)"
    fi
fi

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
    printf "${red}FAIL${normal}"
    printf "\n\n        "
    printf "$1"
    printf "\n\n"
    exit 1
}

ok() {
    printf "${green}OK${normal}\n"
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
required_commands curl unzip fgrep python pip virtualenv
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

conf="${quark_install_root}/config.sh"

cat > ${conf} <<EOF
export PATH=\${PATH}:${quark_install_root}/bin
EOF

step "Done!"

msg
msg "  Quark has been installed into '${quark_install_root}'. You may want to"
msg "  add '${quark_install_root}/bin' to your PATH. You can do this by adding"
msg "  '. ${conf}' to your .bashrc."
msg

read -p "Type YES to modify ~/.bashrc: " answer

if [ -n "${answer}" ] && [ ${answer} == "YES" ]; then
    if fgrep ${conf} ~/.bashrc; then
        msg "Already modified, skipping."
    else
        cat >> ~/.bashrc <<EOF

# Add quark to the path
. ${conf}
EOF
        msg "Added '. ${conf}' to ~/.bashrc."
    fi
fi
