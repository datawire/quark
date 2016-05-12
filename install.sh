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

# Assume pretty verbose output
VERBOSITY=3

# Define a bunch of pretty output helpers
output () {
    lvl="$1"
    fmt="$2"
    text="$3"

    if [ $VERBOSITY -ge $lvl ]; then
        printf -- "$fmt" "$text"
    fi
}

msg () {
    output 1 "%s\n" "$1"
}

step () {
    output 2 "--> %s\n" "$1"
}

substep () {
    output 3 "-->  %s" "$1"
}

substep_ok() {
    output 3 "${green}OK${normal}\n" ""
}

substep_skip() {
    output 3 "${yellow}OK${normal}\n" "$1"
}

die() {
    printf "${red}FAIL${normal}"
    printf "\n\n        "
    printf "$1"
    printf "\n\n"
    exit 1
}

python_version="python2.7"
quark_install_root="${HOME}/.quark"
installation_source=

install_from_dir () {
    if [ -n "$installation_source" ]; then
        echo "you can only install from one source at a time" >&2
        exit 1
    fi
    
    installation_source="$1"
    extra="$2"
    note="$3"

    if [ "$installation_source" == "-" ]; then
        installation_source="${SCRIPT_DIR}"
    fi

    text="Installing from ${installation_source}"

    if [ -n "$note" ]; then
        text="Installing ${note} from ${installation_source}"
    fi

    msg "$text"

    if [ -n "$extra" ]; then
        download () {
            piparg="${extra} ${installation_source}"
        }
    else
        download () {
            piparg="${installation_source}"
        }
    fi
}

while getopts ':d:e:t:qv' opt; do
    case $opt in
        d)  install_from_dir "$OPTARG" "" ""
            ;;

        e)  install_from_dir "$OPTARG" "-e" "(in place)"
            ;;

        t)  quark_install_root="$OPTARG"
            echo "Installing to ${quark_install_root}"
            ;;


        :)  echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;

        q)  VERBOSITY=$(( $VERBOSITY - 1 ))
            if [ $VERBOSITY -lt 0 ]; then VERBOSITY=0; fi
            ;;

        v)  VERBOSITY=$(( $VERBOSITY + 1 ))
            ;;

        \?) echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
    esac
done

shift $((OPTIND-1))

if [ -z "$installation_source" ]; then
    if [ -n "$1" ]; then
	    branch="$1"
	    url="https://github.com/datawire/quark/archive/${branch}.zip"
	    msg "Installing from ${url}"

	    download() {
    		msg "Downloading..."
    		work=$(mktemp -d ${TMPDIR:-/tmp}/quark-install.XXXXXXXX)
    		safename=$(echo "$branch" | tr '/' '-')

            CURLVERBOSITY="-#"

            if [ $VERBOSITY -lt 1 ]; then
                CURLVERBOSITY="-s -S"
            elif [ $VERBOSITY -gt 2 ]; then
                CURLVERBOSITY=
            fi

    		curl $CURLVERBOSITY -L ${url} > ${work}/quark-${safename}.zip

    		if unzip -q ${work}/quark-${safename}.zip -d ${work} >> ${work}/install.log 2>&1; then
    		    piparg=${work}/quark-${safename}
    		else
    		    die "Unable to download from ${url}\n        check in ${work}/install.log for details."
    		fi
	    }
    else
        msg "Installing from PyPI"
        download() {
        	piparg=datawire-quark
        }
    fi
fi

required_commands () {
    for cmd in $*; do
        substep "Checking for ${cmd}: "
        loc=$(command -v ${cmd} || true)
        if [ -n "${loc}" ]; then
            substep_ok
        else
            die "Cannot find ${cmd}, please install and try again."
        fi
    done
}

is_quark_on_path() {
   substep "Checking for quark on \$PATH: "
   if command -v quark >/dev/null 2>&1 ; then
        die "Quark is already available on the \$PATH, please (re)move to proceed."
   else
        substep_ok
   fi
}

is_quarkc_importable() {
    substep "Checking for 'quarkc' python module pollution: "
    set +e
    python -c "import quarkc" >/dev/null 2>&1
    result=$?
    set -e
    if [ "$result" -eq 0 ]; then
        die "Python module 'quarkc' is present, please remove to proceed."
    else
        substep_ok
    fi
}

is_quark_installed () {
    substep "Checking for old quark: "
    if [ -e ${quark_install_root} ]; then
        die "Install directory exists at '${quark_install_root}', please (re)move to proceed."
    else
        substep_ok
    fi
}

step "Performing installation environment sanity checks..."
required_commands curl unzip fgrep python virtualenv
is_quarkc_importable
is_quark_on_path
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

if tty -s && [ $VERBOSITY -gt 0 ]; then
    step "Configuring bash..."
    # The || true here is a workaround for osx, apparently when you are
    # piping to a shell, read will just fail
    read -p "-->   Type YES to modify ~/.bashrc: " answer || true

    if [ -n "${answer}" ] && [ ${answer} == "YES" ]; then
        substep "Modifying .bashrc: "
        if [ -f ~/.bashrc ] && fgrep -q ${conf} ~/.bashrc; then
    	substep_skip "(already modified)"
        else
            cat >> ~/.bashrc <<EOF

    # Add quark to the path
    . ${conf}
EOF
    	substep_ok
        fi
        step "Configured!"
    else
        step "Opted out!"
    fi
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
