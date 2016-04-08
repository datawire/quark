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

"""
Quark compiler.

Usage:
  quark [options] install [ (--java | --python | --javascript | --ruby)... | --all ] <file>...
  quark [options] compile [ -o DIR ] [ (--java | --python | --javascript | --ruby)... | --all ] <file>...
  quark [options] run ( --java | --python | --javascript | --ruby ) <file> [ -- <args>... ]
  quark -h | --help | help
  quark --version

Commands:
  compile               Compile and emit code in the target language(s).
  install               Compile, build, and install code in the target language(s).
  run                   Run the main() function from the package namespace; the quark
                        file must already be installed.

Options:
  -h --help             Show this screen.
  --version             Show version.
  -v --verbose          Show more detail.

  -o DIR, --output DIR  Target directory for output files. [default: output]

  --all                 Install/emit code for all available target languages.
                        [this is the default if no targets are specified]

  --java                Install/emit Java code.
  --ruby                Install/emit Ruby code.
  --python              Install/emit Python code.
  --javascript          Install/emit JavaScript code.
"""

import os
import shlex
import subprocess
import sys
import logging
import datetime

from docopt import docopt

import _metadata
import compiler
import backend
import helpers

PREREQS = {
    "mvn": (["mvn", "-v"], "maven is required in order to install java packages"),
    "pip": (["pip", "--version"], "pip is required in order to install python packages"),
    "npm": (["npm", "--version"], "npm is required in order to install javascript packages")
}


def check(cmd, workdir):
    if cmd in PREREQS:
        check, msg = PREREQS[cmd]
        try:
            subprocess.check_output(check, cwd=workdir)
        except (subprocess.CalledProcessError, OSError):
            raise compiler.QuarkError("unable to find %s: %s" % (cmd, msg))

COMMAND_DEFAULTS = {
    "mvn": "mvn -q",
}


def user_override(command):
    cmd = command[0]
    override = os.environ.get("QUARK_%s_COMMAND" % cmd.upper(),
                              COMMAND_DEFAULTS.get(cmd, cmd))
    return shlex.split(override) + command[1:]

command_log = logging.getLogger("quark.command")


def call_and_show(stage, workdir, command):
    command = user_override(command)
    check(command[0], workdir)

    def format_output(out):
        return ("\n  %s: " % os.path.basename(command[0])).join(("\n" + out).splitlines())
    command_log.debug("%s: cd %s && %s", stage, workdir, " ".join(command))
    try:
        out = subprocess.check_output(command, cwd=workdir, stderr=subprocess.STDOUT)
        command_log.debug("%s: %s", stage, format_output(out))
    except subprocess.CalledProcessError as ex:
        command_log.warning("%s: %s", stage, format_output(ex.output))
        raise Exception("quark (%s): FAILURE (%s)" % (stage, " ".join(command)))


class ProgressHandler(logging.Handler):

    def __init__(self, *args, **kwargs):
        self.verbose = kwargs.pop("verbose", False)
        logging.Handler.__init__(self, *args, **kwargs)
        self.stream = sys.stdout
        self.last = logging.NOTSET
        self.do_debug = False

        def spinner():
            while True:
                yield "."
                yield ""
                yield ""
                yield ""
        self.spinner = spinner()

    def emit(self, record):
        msg = self.format(record)
        if record.levelno < logging.INFO:
            if self.last < logging.INFO:
                if self.last == logging.NOTSET:
                    prefix = ""
                    dbg = " (0->d) "
                else:
                    prefix = "\n"
                    dbg = " (d->d) "
                postfix = ""
            else:
                prefix = "\n"
                dbg = " (i->d) "
                postfix = ""
            if not self.verbose:
                prefix = ""
                postfix = ""
                msg = next(self.spinner)
                dbg = ""
        elif record.levelno == logging.INFO:
            if self.last < logging.INFO:
                if self.last == logging.NOTSET:
                    prefix = ""
                    dbg = " (0->i) "
                else:
                    prefix = "\n"
                    dbg = " (d->i) "
                postfix = " ..."
            else:
                prefix = " done.\n"
                dbg = " (i->i) "
                postfix = " ..."
        else:
            if self.last < logging.INFO:
                prefix = "\n"
                dbg = " (d->w) "
                postfix = "\n"
            else:
                prefix = " done.\n"
                dbg = " (i->w) "
                postfix = "\n"
        self.last = record.levelno
        if self.do_debug:
            prefix += dbg
        self.stream.write("%s%s%s" % (prefix, msg, postfix))
        self.stream.flush()


def main(args):
    if args["help"]:
        print __doc__.rstrip()
        return None

    if not args["run"]:
        if args["--verbose"]:
            COMMAND_DEFAULTS["mvn"] = "mvn"
        logging.basicConfig(level=logging.DEBUG)
        log = logging.getLogger("quark")
        log.propagate = False
        hnd = ProgressHandler(verbose=args["--verbose"])
        log.addHandler(hnd)
        hnd.setFormatter(logging.Formatter("%(message)s"))

    helpers.Code.identifier = "Quark %s run at %s" % (_metadata.__version__, datetime.datetime.now())

    java = args["--java"]
    ruby = args["--ruby"]
    python = args["--python"]
    javascript = args["--javascript"]

    all = args["--all"] or not (java or python or javascript or ruby)

    output = args["--output"]

    try:
        backends = []
        if java or all:
            check("mvn", ".")
            backends.append(backend.Java)
        if ruby or all:
            backends.append(backend.Ruby)
        if python or all:
            check("python", ".")
            backends.append(backend.Python)
        if javascript or all:
            check("npm", ".")
            backends.append(backend.JavaScript)

        filenames = args["<file>"]
        for url in filenames:
            if args["install"]:
                compiler.install(url, *backends)
            elif args["compile"]:
                compiler.compile(url, output, *backends)
            elif args["run"]:
                compiler.run(url, args["<args>"], *backends)
            else:
                assert False
    except compiler.QuarkError as err:
        command_log.warn("")
        return err

    command_log.warn("Done")


def call_main():
    exit(main(docopt(__doc__, version="Quark %s" % _metadata.__version__)))


if __name__ == "__main__":
    call_main()
