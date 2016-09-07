# Copyright 2015 datawire. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os
import shlex
import subprocess
import logging
import pkg_resources
from distutils.version import StrictVersion  # pylint: disable=import-error

from .exceptions import QuarkError

try:
    from shlex import quote
except ImportError:
    from pipes import quote

quote = quote # silence not used

def noop(output): pass

# Checks versions for commands with output like this: "Blah x.y.z"
def check_version(cmd, output, min=None, max=None):
    parts = output.split()
    if len(parts) < 2:
        raise QuarkError("unable to determine version")
    version = parts[1]
    if min and (StrictVersion(version) < StrictVersion(min)):
        raise QuarkError("%s greater than %s required, found %s" % (cmd, min, version))
    if max and (StrictVersion(version) >= StrictVersion(max)):
        raise QuarkError("%s less than %s required, found %s" % (cmd, max, version))

def validate_pip(output):
    # We used to require a really recent version, but no longer
    #check_version("pip", output, "8.0.0")
    pass

def validate_python(output):
    # On Ubuntu 16.04 version can be e.g. "2.7.11+":
    if output.endswith("+"):
        output = output[:-1]
    check_version("python2", output, "2.7.0", "3.0.0")

def validate_python3(output):
    # On Ubuntu 16.04 version can be e.g. "2.7.11+":
    if output.endswith("+"):
        output = output[:-1]
    check_version("python3", output, "3.4.0")

PREREQS = {
    "mvn": (["mvn", "-v"], "maven is required in order to install java packages", noop),
    "pip2": (["pip2", "--version"], "pip is required in order to install python packages", validate_pip),
    "pip3": (["pip3", "--version"], "pip3 is required in order to install python packages", validate_pip),
    "npm": (["npm", "--version"], "npm is required in order to install javascript packages", noop),
    "gem": (["gem", "--version"], "gem is required in order to install ruby packages", noop),
    "python2": (["python2", "-V"], "python 2.7 is required in order to install python packages", validate_python),
    "python3": (["python3", "-V"], "python 3 is required in order to install python3 packages", validate_python3)
}

CHECKED = set()

def check(role, cmd=None, cwd=None):
    if cmd is None: cmd = role
    if cmd in CHECKED: return
    check, msg, validate = PREREQS[role]
    try:
        out = subprocess.check_output(check, cwd=cwd, stderr=subprocess.STDOUT).strip()
        validate(out)
        CHECKED.add(cmd)
    except OSError:
        raise QuarkError("unable to find %s: %s" % (cmd, msg))
    except subprocess.CalledProcessError as exc:
        raise QuarkError("Checking for %s failed:\n    $ %s\n    %s\n\n%s" %
                         (role, " ".join(check), "\n    ".join(exc.output.splitlines()), msg))

COMMAND_DEFAULTS = {
    "mvn": "mvn -q",
}


def user_override(command):
    cmd = command[0]
    override = os.environ.get("QUARK_%s_COMMAND" % cmd.upper(),
                              COMMAND_DEFAULTS.get(cmd, cmd))
    return tuple(shlex.split(override)) + command[1:]

command_log = logging.getLogger("quark.command")


class ShellError(QuarkError):
    pass

def call(*command, **kwargs):
    cwd = kwargs.get("cwd")
    stage = kwargs.get("stage")
    errok = kwargs.get("errok")
    role = command[0]
    command = user_override(command)
    check(role, command[0], cwd)

    def format_output(out):
        return ("\n  %s: " % os.path.basename(command[0])).join(("\n" + out).splitlines())
    command_log.debug("%s: cd %s && %s", stage, cwd or ".", " ".join(command))
    try:
        out = subprocess.check_output(command, cwd=cwd, stderr=subprocess.STDOUT)
        command_log.debug("%s: %s", stage, format_output(out))
    except subprocess.CalledProcessError as ex:
        if errok:
            log = command_log.debug
        else:
            log = command_log.warning
        log("%s: %s", stage, format_output(ex.output))
        raise ShellError("quark (%s): FAILURE (%s)" % (stage, " ".join(command)))
    return out

def get_pip_pkg(name, stage=None, command="pip"):
    try:
        output = call(command, "show", pkg_resources.safe_name(name), stage=stage, errok=True)
        for line in output.split("\n"):
            if line.startswith("Location: "):
                return os.path.join(line.split(": ")[1], name)
    except ShellError:
        return None

def pipcheck(name, stage=None):
    if get_pip_pkg(name) is None:
        raise QuarkError("Please install python package %s with 'pip install %s' to run this command." % (name, name))
