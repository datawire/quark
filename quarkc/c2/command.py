
"""
Quark compiler.

Usage:
  quark [ -o DIR ] [ (--java | --python | --python3 | --javascript | --ruby | --go)... | --all ] [<file>]...
  quark -h | --help
  quark --version

Options:
  -h --help             Show this screen.
  --version             Show version.
  -v --verbose          Show more detail.

  -o DIR, --output DIR  Target directory for output files. [default: output]

  --all                 Install/emit code for all available target languages.
                        [this is the default if no targets are specified]

  --java                Emit Java code.
  --ruby                Emit Ruby code.
  --python              Emit Python 2 code (if you're just emitting --python3 will work too.)
  --python3             Emit Python 3 code (if you're just emitting --python will work too.)
  --javascript          Emit JavaScript code.
  --go                  Emit go code.
"""

import os
from docopt import docopt
from .compiler import Compiler
from .emit import emit, Java, Python, Ruby, Go

def main(args):
    java = args["--java"]
    ruby = args["--ruby"]
    python = args["--python"]
    python3 = args["--python3"]
    javascript = args["--javascript"]
    go = args["--go"]

    all = args["--all"] or not (java or python or javascript or ruby or python3 or go)

    output = args["--output"]

    targets = []
    if java or all: targets.append(Java())
    if python or all: targets.append(Python())
#    if python3 or all: targets.append(Python3())
#    if javascript or all: targets.append(Javascript())
    if ruby or all: targets.append(Ruby())
    if go or all: targets.append(Go())

    c = Compiler()
    for fname in args["<file>"]:
        with open(fname) as f:
            c.parse(fname, f.read())
    c.check()
    pkg = c.compile()
    for tgt in targets:
        emit(pkg, tgt)
        for name, content in tgt.files.items():
            fname = os.path.join(output, name)
            dir = os.path.dirname(fname)
            if not os.path.exists(dir):
                os.makedirs(dir)
            with open(fname, "write") as f:
                f.write(content)

def call_main():
    exit(main(docopt(__doc__, version="Quark %s" % 2.0)))

if __name__ == "__main__":
    call_main()
