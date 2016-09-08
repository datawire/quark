#!/tmp/quark-run/bin/python

"""
Script used by Dockerfile.run as entry point, passes given arguments first to
'quark install' and then to 'quark run'.
"""

import subprocess
import sys
import os

# Convert paths on host to appropriate paths inside container:
arguments = [(os.path.join("/code", argument)
              if argument.endswith(".q")
              else argument)
             for argument in sys.argv[1:]]


def prepend_path(bin_dir):
    old_os_path = os.environ.get('PATH', '')
    os.environ['PATH'] = bin_dir + os.pathsep + old_os_path

for argument in arguments:
    if argument == "--python": prepend_path("/tmp/run/bin")
    if argument == "--python3": prepend_path("/tmp/run3/bin")
    if argument == "--": break

subprocess.check_call(["/tmp/quark-run/bin/quark", "install"] + arguments)
subprocess.check_call(["/tmp/quark-run/bin/quark", "run"] + arguments)
