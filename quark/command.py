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
  quark [options] <command> <file>...
  quark -h | --help
  quark --version

Commands:
  compile               Emit code in target language(s)
  build                 Compile, then run the target language compiler(s)
  doc                   Build, then build target language documentation
  package               Doc, then generate target language package artifact(s)

Options:
  -h --help             Show this screen.
  --version             Show version.
  -o DIR, --output DIR  Target directory for output files
                        [defaults to basename of the first input file]
  --in-place            Outputs everything to the current directory
                        [overrides all other directory/subdirectory options and
                         does not delete existing output files; use with care]

Target language options:
  --all                 Emit code for all available target languages.
                        [this is the default if no targets are specified]
  --java                Emit Java code.
  --java-out DIR        Subdirectory for Java code [default: java].
  --python              Emit Python code.
  --python-out DIR      Subdirectory for Python code [default: py].
  --javascript          Emit JavaScript code.
  --javascript-out DIR  Subdirectory for JavaScript code [default: js].
"""

from glob import glob
import os
import shutil
import subprocess
import sys

from docopt import docopt

import _metadata
import compiler

PREREQS = {
    "mvn": (["mvn", "-v"], "please install maven in order to build java packages")
}

def check(cmd, workdir):
    if cmd in PREREQS:
        check, msg = PREREQS[cmd]
        try:
            out = subprocess.check_output(check, cwd=workdir)
        except (subprocess.CalledProcessError, OSError):
            raise Exception("unable to find %s: %s" % (cmd, msg))

def call_and_show(stage, workdir, command):
    check(command[0], workdir)
    print "quark (%s):" % stage, " ".join(command)
    try:
        subprocess.check_call(command, cwd=workdir)
    except subprocess.CalledProcessError:
        raise Exception("quark (%s): FAILURE (%s)" % (stage, " ".join(command)))


def main(args):
    if args["--version"]:
        sys.stdout.write("Quark %s\n" % _metadata.__version__)
        return

    command = args["<command>"].lower()
    if command not in "compile build doc package".split():
        exit("quark: %r is not a quark command. Try quark --help" % command)

    commands = set([command])
    if "package" in commands:
        commands.add("doc")
    if "doc" in commands:
        commands.add("build")
    if "build" in commands:
        commands.add("compile")

    java = args["--java"]
    python = args["--python"]
    javascript = args["--javascript"]
    if args["--all"] or not (java or python or javascript):
        java = python = javascript = True

    filenames = args["<file>"]

    if args["--in-place"]:
        output = java_dir = py_dir = js_dir = "."
    else:
        output = args["--output"]
        if not output:
            output = os.path.basename(filenames[0])
            if output.endswith(".q"):
                output = output[:-2]
            else:
                exit("quark: First filename must end with .q (or use --output)")
        if os.path.exists(output):
            shutil.rmtree(output)
        os.mkdir(output)

        java_dir = os.path.join(output, args["--java-out"])
        py_dir = os.path.join(output, args["--python-out"])
        js_dir = os.path.join(output, args["--javascript-out"])

    assert "compile" in commands, (commands, args)

    if "compile" in commands:
        compiler_args = {}
        if java:
            compiler_args["java"] = java_dir
        if python:
            compiler_args["python"] = py_dir
        if javascript:
            compiler_args["javascript"] = js_dir
        res = compiler.main(filenames, **compiler_args)
        if res is not None:
            return "quark (compiler): %s" % res

    try:
        if "build" in commands:
            if java:
                call_and_show("build", java_dir, ["mvn", "-q", "compile"])

        if "doc" in commands:
            if java:
                call_and_show("doc", java_dir, ["mvn", "-q", "javadoc:javadoc"])
            if python:
                call_and_show("doc", py_dir, ["python", "setup.py", "-q", "build_sphinx"])
            if javascript:
                for md_file_path in glob(os.path.join(js_dir, "*/README.md")):
                    call_and_show("doc", ".", ["markdown_py", md_file_path, "-f",
                                               md_file_path.replace(".md", ".html")])

        if "package" in commands:
            if java:
                call_and_show("package", java_dir, ["mvn", "-q", "package"])
            if python:
                call_and_show("package", py_dir, ["python", "setup.py", "-q", "bdist_wheel"])
            if javascript:
                for pkg_file_path in glob(os.path.join(js_dir, "*/index.js")):
                    pkg_dir_path = os.path.dirname(pkg_file_path)
                    call_and_show("package", ".", ["tar", "czf", pkg_dir_path + ".tgz", "-C", pkg_dir_path, "."])
    except Exception as exc:
        return exc


def call_main():
    exit(main(docopt(__doc__)))


if __name__ == "__main__":
    call_main()
