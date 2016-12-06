#!/usr/bin/env python

"""
Quark test runner.

Usage:
  quark-test [options] run [ -x ] [--stats] [ --cached | --ignore-cache ] [ (--java | --python | --python3 | --javascript | --ruby | --go )... | --all ] <files>...
  quark-test [options] clean
  quark-test -h | --help
  quark-test --version

Files can be either Quark files (something.q) or IR files (something.ir).

Commands:
  clean
  run

Options:
  -h --help             Show this screen.
  --version             Show version.
  -v --verbose          Show more output.
  -x, --exit            Exit on first error.
  --stats               Report quark stats
  --ir                  Dump also quark IR
  --cached              Use cached AST if it exists [default]
  --ignore-cache        Force full quark recompile
"""

import os, subprocess, shutil, fnmatch, zipfile, sys
from docopt import docopt

from quarkc import stats

def call(*cmd, **kwargs):
    return subprocess.check_output(cmd)

CWD = os.getcwd()
HEIGHT, WIDTH = [int(s) for s in call("stty", "size").split()]
VERBOSE = 0
STATS = 0
IR = 0
CACHED = 1

def glob(dir, pattern):
    result = []
    for root, dirs, files in os.walk(dir):
        for fname in files:
            path = os.path.join(root, fname)
            if fnmatch.fnmatch(path[len(dir)+1:], pattern):
                if path not in result:
                    result.append(path)
    return result

class RunError(Exception): pass

def run(*cmd, **kwargs):
    cwd = kwargs.get("cwd", CWD)
    if cwd != CWD:
        common = os.path.commonprefix((cwd, CWD))
        pfx = "CWD=./{} ".format(os.path.join(".", cwd[len(common):]))
    else:
        pfx = ""
    env = {}
    env.update(os.environ)
    env.update(kwargs.get("env", {}))
    kwargs["env"] = env
    if VERBOSE:
        print "%s%s" % (pfx, " ".join(cmd))
    with stats.charge(os.path.basename(cmd[0])):
        code = subprocess.call(cmd, **kwargs)
    if code != 0:
        raise RunError()

def run_in(cwd, *cmd, **kwargs):
    run(*cmd, cwd=cwd, **kwargs)

def ensure_dir(d):
    if not os.path.exists(d):
        os.makedirs(d)

def clean_dir(d):
    if VERBOSE:
        print "Cleaning %s" % d
    if os.path.exists(d):
        shutil.rmtree(d)

def ensure_clean(d):
    clean_dir(d)
    ensure_dir(d)


def ensure_fetch(local, remote):
    if not os.path.exists(local):
        ensure_dir(os.path.dirname(local))
        run("curl", "-o", local, remote)

def path(base, *elements):
    return ":".join([os.path.join(base, e) for e in elements])


class Target(object):

    @property
    def target(self):
        return os.path.join(CWD, "target/%s" % self.lang)

    @property
    def abs_src(self):
        return os.path.join(self.target, self.src)

    def path(self, *elements):
        return path(self.target, *elements)

    def gen(self, files):
        ensure_clean(self.abs_src)
        irfiles = list(f for f in files if f.endswith(".ir"))
        if irfiles:
            run("quark-ir", "emit", "-o", self.abs_src, "--%s" % self.lang, *irfiles)
        qfiles = list(f for f in files if f.endswith(".q"))
        if qfiles:
            args = ["quark", "-o", self.abs_src, "--%s" % self.lang]
            if not CACHED:
                args.append("--force")
            if VERBOSE:
                args.append("--verbose")
            if STATS:
                args.append("--stats")
            if IR:
                args.append("--ir")
            args.extend(qfiles)
            run(*args)

    def clean(self):
        clean_dir(self.abs_src)

class Go(Target):

    lang = "go"
    src = "emit/src"

    def run(self, patterns):
        self.gen(patterns)
        args = [self.abs_src, "go", "test"]
        if VERBOSE: args.append("-v")
        args.append("./...")
        return run_in(*args, env={"GOPATH": self.path("emit")})

class Ruby(Target):

    lang = "ruby"
    src = "emit"

    def run(self, patterns):
        self.gen(patterns)
        with open(os.path.join(self.target, "emit/test/ts.rb"), "write") as f:
            for ts in glob(self.target, 'emit/test/ts_*.rb'):
                f.write("require_relative '%s'\n" % ts)
        return run_in(self.target, "ruby", "-I", self.path("emit/lib", "emit/test"), "emit/test/ts.rb")

class Python(Target):

    lang = "python"
    src = "emit"

    def run(self, patterns):
        self.gen(patterns)
        return run_in(self.target, "tox")

class Java(Target):

    lang = "java"
    src = "emit"

    @property
    def junit(self):
        return os.path.join(self.target, "deps/junit.jar")

    @property
    def hamcrest(self):
        return os.path.join(self.target, "deps/hamcrest.jar")

    @property
    def build(self):
        return os.path.join(self.target, "emit/build")

    def clean(self):
        Target.clean(self)
        clean_dir(self.build)

    def jbuild(self, sources, jar, *deps):
        base, ext = os.path.splitext(jar)
        classes = os.path.join(base, "classes")
        ensure_clean(classes)
        args = glob(sources, "*.java")
        if deps:
            args.append("-cp")
            args.append(":".join(deps))
        run("javac", "-Xlint:unchecked", "-g", "-sourcepath", sources, "-d", classes, *args)
        run_in(classes, "jar", "cf", jar, ".")

    def jtests(self, jar):
        zf = zipfile.PyZipFile(jar)
        for name in zf.namelist():
            if name.endswith(".class"):
                yield name[:-len(".class")].replace('/', '.')

    def run(self, patterns):
        self.gen(patterns)
        ensure_fetch(self.junit, "http://central.maven.org/maven2/junit/junit/4.12/junit-4.12.jar")
        ensure_fetch(self.hamcrest, "http://central.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar")

        emitsources = os.path.join(self.target, "emit/src/main/java")
        emitjar = os.path.join(self.build, "emit.jar")
        self.jbuild(emitsources, emitjar)

        testsources = os.path.join(self.target, "emit/src/test/java")
        testjar = os.path.join(self.build, "tests.jar")
        self.jbuild(testsources, testjar, emitjar, self.junit, self.hamcrest)

        return run("java", "-cp",
                   ":".join((testjar, emitjar, self.junit, self.hamcrest)),
                   "org.junit.runner.JUnitCore",
                   *self.jtests(testjar))

class Javascript(Target):

    lang = "javascript"
    src = "emit"

    def run(self, patterns):
        self.gen(patterns)
        self.npm_install("mocha")
        return run_in(os.path.join(self.target, self.src), "../node_modules/.bin/mocha", env={"NODE_PATH": self.path("emit")})

    def npm_install(self, pkg):
        node_modules = os.path.join(self.target, "node_modules")
        ensure_dir(node_modules)
        if not os.path.isdir(os.path.join(node_modules, pkg)):
            run_in(self.target, "npm", "-s", "install", pkg)

RED = "31"
GREEN = "32"
WHITE = "37"
BLUE = "34"

ESC = "\x1B"

def color(val, st):
    return "%s[1;%sm%s\x1B[0m" % (ESC, val, st)

def width(st):
    count = 0
    counting = True
    for c in st:
        if c == ESC:
            counting = False
        if counting:
            count += 1
        elif c == "m":
            counting = True
    return count

def banner(c, msg):
    padding = WIDTH - 4 - width(msg)
    pfx = padding/2
    sfx = padding - pfx

    line = color(c, "%s> " % ("="*pfx))
    if ESC in msg:
        line += msg
    else:
        line += color(c, msg)
    line += color(c, " <%s" % ("="*sfx))

    print line

def main(args):
    global VERBOSE
    if args["--verbose"]:
        VERBOSE = 1

    global STATS
    if args["--stats"]:
        STATS = 1

    global IR
    if args["--ir"]:
        IR = 1

    global CACHED
    if args["--cached"]:
        CACHED = 1
    if args["--ignore-cache"]:
        CACHED = 0


    java = args["--java"]
    ruby = args["--ruby"]
    python = args["--python"]
    python3 = args["--python3"]
    javascript = args["--javascript"]
    go = args["--go"]

    all = args["--all"] or not (java or python or javascript or ruby or python3 or go)

    targets = []
    if go or all: targets.append(Go())
    if ruby or all: targets.append(Ruby())
    if python or python3 or all: targets.append(Python())
    if java or all: targets.append(Java())
    if javascript or all: targets.append(Javascript())

    if args["clean"]:
        for tgt in targets:
            tgt.clean()

    passing = []
    failing = []

    if args["run"]:
        for tgt in targets:
            name = tgt.__class__.__name__
            banner(BLUE, color(WHITE, name))
            try:
                tgt.run(args["<files>"])
                passing.append(name)
            except RunError:
                failing.append(name)
                if args["--exit"]:
                    break
        msg = ""
        if passing:
            msg += color(GREEN, "PASS: %s" % ", ".join(passing))
        if failing:
            if msg: msg += color(BLUE, ", ")
            msg += color(RED, "FAIL: %s" % ", ".join(failing))
        banner(BLUE, msg)

    print "\n\n"
    banner(BLUE, "timing stats")
    stats.dump(sys.stdout)
    return 1 if failing else 0

def call_main():
    exit(main(docopt(__doc__, version="Quark %s" % 2.0)))

if __name__ == "__main__":
    call_main()
