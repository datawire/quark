
"""
Quark compiler.

Usage:
  quark [options] [ (--java | --python | --python3 | --javascript | --ruby | --go | --ir)... | --all ] [<file>]...
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
  --ir                  Emit IR
"""

import os
from docopt import docopt
from .compiler import Compiler
from .exceptions import QuarkError
from .emit import emit, Java, Python, Ruby, Go

def ensure_dir(fname):
    dir = os.path.dirname(fname)
    if not os.path.exists(dir):
        os.makedirs(dir)

def main(args):
    verbose = 0
    if args["--verbose"]:
        verbose = 1

    java = args["--java"]
    ruby = args["--ruby"]
    python = args["--python"]
    python3 = args["--python3"]
    javascript = args["--javascript"]
    go = args["--go"]
    ir = args["--ir"]

    all = args["--all"] or not (java or python or javascript or ruby or python3 or go or ir)

    output = args["--output"]

    targets = []
    if java or all: targets.append(Java())
    if python or all: targets.append(Python())
#    if python3 or all: targets.append(Python3())
#    if javascript or all: targets.append(Javascript())
    if ruby or all: targets.append(Ruby())
    if go or all: targets.append(Go())

    c = Compiler(verbose=verbose)
    for fname in args["<file>"]:
        with open(fname) as f:
            c.parse(fname, f.read())

    try:
        c.check()
    except QuarkError, e:
        return e

    pkg = c.compile()
    for tgt in targets:
        emit(pkg, tgt)
        for name, content in tgt.files.items():
            fname = os.path.join(output, name)
            ensure_dir(fname)
            with open(fname, "write") as f:
                f.write(content)

    if ir:
        fname = os.path.join(output, os.path.basename(args["<file>"][0]) + ".ir")
        ensure_dir(fname)
        with open(fname, "write") as f:
            f.write("%s\n" % repr(pkg))

def call_main():
    exit(main(docopt(__doc__, version="Quark %s" % 2.0)))

if __name__ == "__main__":
    call_main()
