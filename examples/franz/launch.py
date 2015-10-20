#!/usr/bin/env python

"""
Usage: launch.py EXTENSION

Examples:
  launch.py first
  launch.py second
"""

import os
import signal
from subprocess import Popen
from time import sleep

from docopt import docopt


commands = """
python out/server.py devnull
env CLASSPATH=out:out/src/main/java java Begin
python square.py
node seq_gen.js
env CLASSPATH=out:out/src/main/java java DumpTopic
"""


def launch(command):
    if " devnull" in command:
        command = command.replace(" devnull", "")
        out = open("/dev/null", "wb")
        err = out
    else:
        out = None
        err = None
    try:
        pid = Popen(command.split(), stdout=out, stderr=err).pid
    except OSError as exc:
        print "Failed to launch %r" % command
        print " (%s)" % exc
        print "Are your shell PATH and PYTHONPATH variables set for Datawire?"
        exit(1)
    print "[%5d] %s" % (pid, command)
    sleep(0.3)
    return pid


def main(args):
    if os.path.exists("out"):
        os.unlink("out")
    os.symlink("out." + args["EXTENSION"], "out")

    pids = []
    try:
        for command in commands.split("\n"):
            if command and not command.strip().startswith("#"):
                pids.append(launch(command.strip()))
        while True:
            sleep(100000)
    finally:
        for pid in pids:
            try:
                os.kill(pid, signal.SIGTERM)
            except Exception:
                pass
        os.unlink("out")


if __name__ == "__main__":
    main(docopt(__doc__))
