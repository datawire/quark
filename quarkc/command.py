
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

import os, sys, hashlib
import cPickle as pickle
from docopt import docopt
from .compiler import Compiler
from .exceptions import QuarkError
from .emit import emit, Java, Python, Ruby, Go, Javascript, transform, reconstruct
from .helpers import is_newer
from .ir import IR

import stats

def ensure_dir(fname):
    dir = os.path.dirname(fname)
    if not os.path.exists(dir):
        os.makedirs(dir)

def write_ir(fname, pkg):
        ensure_dir(fname)
        with open(fname, "write") as f:
            f.write("%s\n" % repr(pkg))
        if VERBOSE:
            print "wrote %s" % fname

def main(args):
    global VERBOSE
    verbose = 0
    if args["--verbose"]:
        verbose = 1
    VERBOSE = verbose

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
    if python or python3 or all: targets.append(Python())
    if javascript or all: targets.append(Javascript())
    if ruby or all: targets.append(Ruby())
    if go or all: targets.append(Go())

    with stats.charge("index"):
        index = {}
        pkgsum = hashlib.sha1()
        for fname in args["<file>"]:
                with open(fname) as f:
                    content = f.read()
                    index[fname] = dict(
                        content=content,
                        sha = hashlib.sha1(content).hexdigest())
                    pkgsum.update(index[fname]["sha"])
        pkgsum = pkgsum.hexdigest()
        ir_base = os.path.join("/tmp", os.path.basename(args["<file>"][0]) + "-" + pkgsum)
        ir_name = ir_base + ".ir"

    pkg = None

    ir_fresh = is_newer(ir_name, *args["<file>"])
    if bool(ir_fresh) and not args["--force"]:
        with stats.charge("load-ir-cache"):
            try:
                print "Loading IR cache %s" % ir_name
                pkg = IR.load_path(ir_name)
                if verbose:
                    print "Loaded valid %s" % ir_name
            except:
                print "Loading IR failed"
                raise
    else:
        print "%s the IR cache %s %s %s" % (
            (args["--force"] and "Ignored" or "Cannot find"),
            bool(ir_fresh), ir_fresh.explanation, ir_fresh.target)

    if pkg is None:
        c = Compiler(verbose=verbose)
        for fname in args["<file>"]:
            cname = "%sp" % fname
            if is_newer(cname, fname) and not args["--force"]:
                with stats.charge("unpickle"), open(cname) as f:
                    unp = pickle.Unpickler(f)
                    data = unp.load()
                    if isinstance(data, tuple) and len(data) == 2 and data[0] == index[fname]["sha"]:
                        if verbose:
                            print "Found valid parse cache %s" % cname
                        c.load(data[1])
                        continue
            ast = c.parse(fname, index[fname]["content"])
            if ast:
                with stats.charge("pickle"), open(cname, "write") as fp:
                    pickler = pickle.Pickler(fp, -1)
                    pickler.dump((index[fname]["sha"], ast))

        if verbose:
            print "Compiling...."
        try:
            c.check()
        except QuarkError, e:
            return e

        pkg = c.compile()
        write_ir(ir_name, pkg)

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
        ir_base += "-reconstruct"
        pkg = reconstruct(pkg)
        write_ir(ir_base + ".ir", pkg)
        ir_base += "-transform"
        for tgt in targets:
            ext = "-%s.ir" % tgt.__class__.__name__
            write_ir(ir_base + ext, transform(pkg, tgt))


def call_main():
    args = docopt(__doc__, version="Quark %s" % 2.0)
    try:
        exit(main(args))
    finally:
        if args["--verbose"]:
            stats.dump(sys.stderr)

if __name__ == "__main__":
    call_main()
