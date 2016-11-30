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
  --stats               Show timing stats.

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

Environment variables:
QUARK_CACHE_DIR         Location for IR cache.
"""

import os, sys, hashlib, fnmatch
import cPickle as pickle
from docopt import docopt
from .compiler import Compiler
from .exceptions import QuarkError
from .emit import emit, Java, Python, Ruby, Go, Javascript, transform, reconstruct
from .helpers import is_newer
from .ir import IR, Checksum

import stats

def cache_dir():
    return os.path.expanduser(os.environ.get("QUARK_CACHE_DIR", "~/.quark/cache"))

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

def code_files():
    dir = os.path.dirname(__file__)
    files = os.listdir(dir)
    return fnmatch.filter(files, "[a-z_]*.py")

def frontend_files():
    dir = os.path.dirname(__file__)
    files = code_files()
    emit = fnmatch.filter(files, "emit*.py")
    return [os.path.join(dir, f) for f in sorted(set(files)-set(emit))]

def parser_files():
    dir = os.path.dirname(__file__)
    files = code_files()
    parser = ["match.py", "ast.py", "parse.py", "parser.py", "exceptions.py"]
    assert set(files).issuperset(set(parser)), "Have %s want %s" % (files, parser)
    return [os.path.join(dir, f) for f in parser]

def signature(files):
    pkgsum = hashlib.sha1()
    for fn in files:
        with open(fn) as f:
            pkgsum.update(f.read())
    return pkgsum

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
        pkgsum = signature(frontend_files())
        parsum = signature(parser_files())
        for fname in args["<file>"]:
                with open(fname) as f:
                    content = f.read()
                    sha = parsum.copy()
                    sha.update(content)
                    index[fname] = dict(
                        content=content,
                        sha = sha.hexdigest())
                    pkgsum.update(index[fname]["sha"])
        pkgsum = pkgsum.hexdigest()
        ir_base = os.path.join(cache_dir(), os.path.basename(args["<file>"][0]))
        ir_name = ir_base + ".ir"

    pkg = None

    ir_fresh = len(index) == len(args["<file>"])
    ir_found = os.path.exists(ir_name)
    if ir_fresh and ir_found and not args["--force"]:
        with stats.charge("ir-cache-load"):
            try:
                print "Loading IR cache %s" % ir_name
                tmp_pkg = IR.load_path(ir_name)
                c = tmp_pkg.annotated_with(Checksum)
                checksum = c and c[0].checksum or "--annotation-not-found--"
                if checksum == pkgsum:
                    pkg = tmp_pkg
                    if verbose:
                        print "Loaded valid %s" % ir_name
                else:
                    if verbose:
                        print "Ignoring stale IR cache %s got %s expected %s" % (
                            ir_name, checksum, pkgsum)
            except:
                print "Loading IR failed"
                import traceback
                traceback.print_exc()
                pass
    else:
        print "%s the IR cache %s" % (
            (args["--force"] and "Ignored" or "Cannot find"),
            ir_fresh and ir_name or "missing input files?")

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
        with stats.charge("ir-cache-save"):
            pkg = Checksum(pkgsum)(pkg) # annotate package with checksum
            write_ir(ir_name, pkg)

    for tgt in targets:
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
        if args["--verbose"] or args["--stats"]:
            stats.dump(sys.stderr)

if __name__ == "__main__":
    call_main()
