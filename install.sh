#!/usr/bin/env sh

{ # this ensures the entire script is downloaded #

set -e

# Get the script directory
SCRIPT_SOURCE="${0}"
while [ -h "$SCRIPT_SOURCE" ]; do # resolve $SCRIPT_SOURCE until the file is no longer a symlink
  SCRIPT_DIR="$( cd -P "$( dirname "$SCRIPT_SOURCE" )" && pwd )"
  SCRIPT_SOURCE="$(readlink "$SCRIPT_SOURCE")"
  [[ $SCRIPT_SOURCE != /* ]] && SCRIPT_SOURCE="$SCRIPT_DIR/$SCRIPT_SOURCE" # if $SCRIPT_SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
SCRIPT_DIR="$( cd -P "$( dirname "$SCRIPT_SOURCE" )" && pwd )"

# Check if stdout is a terminal...
if [ -t 1 ]; then

    # See if it supports colors...
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

# Define a bunch of pretty output helpers
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

skip() {
    printf "${yellow}SKIP${normal} $1\n"
}

if [ -n "$1" ]; then
    case $1 in
	-d)
	    if [ -n "$2" ]; then
		dir="$2"
	    else
		dir="${SCRIPT_DIR}"
	    fi
	    msg "Installing from ${dir}"
	    download() {
		piparg="${dir}"
	    }
	    ;;
	-e)
	    if [ -n "$2" ]; then
		dir="$2"
	    else
		dir="${SCRIPT_DIR}"
	    fi
	    msg "Installing (in place) from ${dir}"
	    download() {
		piparg="-e ${dir}"
	    }
	    ;;
	*)
	    branch=$1
	    url="https://github.com/datawire/quark/archive/${branch}.zip"
	    msg "Installing from ${url}"
	    download() {
		msg "Downloading..."
		work=$(mktemp -d ${TMPDIR:-/tmp}/quark-install.XXXXXXXX)
		safename=$(echo "$branch" | tr '/' '-')
		curl -# -L ${url} > ${work}/quark-${safename}.zip
		if unzip -q ${work}/quark-${safename}.zip -d ${work} >> ${work}/install.log 2>&1; then
		    piparg=${work}/quark-${safename}
		else
		    die "Unable to download from ${url}\n        check in ${work}/install.log for details."
		fi
	    }
    esac
else
    msg "Installing from PyPI"
    download() {
	piparg=datawire-quark
    }
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
required_commands curl unzip fgrep python virtualenv
is_quark_installed

download

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

step "Installed!"

msg
msg "  Quark has been installed into '${quark_install_root}'. You may want to"
msg "  add '${quark_install_root}/bin' to your PATH. You can do this by adding"
msg "  '. ${conf}' to your .bashrc."
msg

step "Configuring bash..."
read -p "-->   Type YES to modify ~/.bashrc: " answer

if [ -n "${answer}" ] && [ ${answer} == "YES" ]; then
    substep "Modifying .bashrc: "
    if fgrep -q ${conf} ~/.bashrc; then
	skip "(already modified)"
    else
        cat >> ~/.bashrc <<EOF

# Add quark to the path
. ${conf}
EOF
	ok
    fi
    step "Configured!"
else
    step "Opted out!"
fi

if [ -n "${branch}" ] && [ "${branch}" != "master" ]; then
    cloneargs=" -b ${branch}"
else
    cloneargs=""
fi

msg
msg "  Quark is now installed. You may want to run '. ${conf}'"
msg "  in any existing shells."
msg
msg "  To get started, try:"
msg
msg "    git clone${cloneargs} git@github.com:datawire/quark.git"
msg "    cd quark/examples"
msg

} # this ensures the entire script is downloaded #
