
"""
Quark compiler.

Usage:
  quark [options] [ (--java | --python | --python3 | --javascript | --ruby | --go | --ir)... | --all ] <file>...
  quark -h | --help
  quark --version

Options:
  -h --help             Show this screen.
  --version             Show version.
  -v --verbose          Show more detail.

  -o DIR, --output DIR  Target directory for output files. [default: output]
  --force               Ignore any cached intermediate representations.

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

import os, sys
import cPickle as pickle
from docopt import docopt
from .compiler import Compiler
from .exceptions import QuarkError
from .emit import emit, Java, Python, Ruby, Go, Javascript, transform, reconstruct
from .helpers import is_newer

import stats

def ensure_dir(fname):
    dir = os.path.dirname(fname)
    if not os.path.exists(dir):
        os.makedirs(dir)

def write_ir(fname, pkg):
        ensure_dir(fname)
        with open(fname, "write") as f:
            f.write("%s\n" % repr(pkg))

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
    if javascript or all: targets.append(Javascript())
    if ruby or all: targets.append(Ruby())
    if go or all: targets.append(Go())

    c = Compiler(verbose=verbose)
    for fname in args["<file>"]:
        cname = "%sp" % fname
        if is_newer(cname, fname) and not args["--force"]:
            with open(cname) as f:
                unp = pickle.Unpickler(f)
                c.load(unp.load())
        else:
            with open(fname) as f:
                ast = c.parse(fname, f.read())
                if ast:
                    with open(cname, "write") as fp:
                        pickler = pickle.Pickler(fp, -1)
                        pickler.dump(ast)

    try:
        c.check()
    except QuarkError, e:
        return e

    pkg = c.compile()
    for tgt in targets:
        with stats.charge("emit"):
            files = emit(pkg, tgt)
        for name, content in files:
            fname = os.path.join(output, name)
            if verbose:
                print fname
            ensure_dir(fname)
            with open(fname, "write") as f:
                f.write(content)

    if ir:
        fname = os.path.join(output, os.path.basename(args["<file>"][0]))
        write_ir(fname + ".ir", pkg)
        fname += "-reconstruct"
        pkg = reconstruct(pkg)
        write_ir(fname + ".ir", pkg)
        fname += "-transform"
        for tgt in targets:
            ext = "-%s.ir" % tgt.__class__.__name__
            write_ir(fname + ext, transform(pkg, tgt))


def call_main():
    args = docopt(__doc__, version="Quark %s" % 2.0)
    try:
        exit(main(args))
    finally:
        if args["--verbose"]:
            stats.dump(sys.stderr)

if __name__ == "__main__":
    call_main()
