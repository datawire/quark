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

from .exceptions import QuarkError

PREREQS = {
    "mvn": (["mvn", "-v"], "maven is required in order to install java packages"),
    "pip": (["pip", "--version"], "pip is required in order to install python packages"),
    "npm": (["npm", "--version"], "npm is required in order to install javascript packages")
}

def check(cmd, cwd=None):
    if cmd in PREREQS:
        check, msg = PREREQS[cmd]
        try:
            subprocess.check_output(check, cwd=cwd)
        except (subprocess.CalledProcessError, OSError):
            raise QuarkError("unable to find %s: %s" % (cmd, msg))

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
    command = user_override(command)
    check(command[0], cwd)

    def format_output(out):
        return ("\n  %s: " % os.path.basename(command[0])).join(("\n" + out).splitlines())
    command_log.debug("%s: cd %s && %s", stage, cwd or ".", " ".join(command))
    try:
        out = subprocess.check_output(command, cwd=cwd, stderr=subprocess.STDOUT)
        command_log.debug("%s: %s", stage, format_output(out))
    except subprocess.CalledProcessError as ex:
        command_log.warning("%s: %s", stage, format_output(ex.output))
        raise ShellError("quark (%s): FAILURE (%s)" % (stage, " ".join(command)))
    return out

def get_pip_pkg(name, stage=None):
    try:
        output = call("pip", "show", name, stage=stage)
        for line in output.split("\n"):
            if line.startswith("Location: "):
                return os.path.join(line.split(": ")[1], name)
    except ShellError, e:
        return None

def pipcheck(name, stage=None):
    if get_pip_pkg(name) is None:
        raise QuarkError("unable to find required python package %s" % name)
