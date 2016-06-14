#!/tmp/run/bin/python

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

subprocess.check_call(["/tmp/run/bin/quark", "install"] + arguments)
subprocess.check_call(["/tmp/run/bin/quark", "run"] + arguments)
