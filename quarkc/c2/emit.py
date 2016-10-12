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
Quark IR emitter.

Usage:
  quark-ir emit [options] (--go | --java | --python | --ruby) <files>...

Commands:

  emit    Emit target code for the specified quark IR files in the output directory

Options:
  -h --help             Show this screen.
  -v --verbose          Show more detail.

  -o DIR, --output DIR  Target directory for output files. [default: .]

"""

from .match import match
from .ir import IR, Package, Definition, Ref
from .ir import backlink, walk_dfs

from .emit_target import Target, Go, Ruby, Java, Python
from .emit_code import code
from .emit_format import format


class Duplicate(set):
    __slots__=()
    def __call__(self, item):
        if item in self:
            return False
        else:
            self.add(item)
            return True

def dedupe(seq):
    return filter(Duplicate(), flatten_to_strings(seq))

class File:

    def __init__(self, name):
        self.name = name
        self.header = []
        self.code = ""
        self.footer = []

    def __repr__(self):
        return "\n".join([s for s in ("".join(dedupe(self.header)), self.code, "".join(dedupe(self.footer))) if s]) + ""

def flatten_to_strings(gen_or_str):
    if isinstance(gen_or_str, basestring):
        if gen_or_str:
            yield gen_or_str
    else:
        for item in gen_or_str:
            if item:
                yield item

## Package

@match(Package, Target)
def emit(pkg, target):
    backlink(pkg)
    chop(pkg, target)
    crosslink(pkg, target)
    transform(pkg, target)
    format(pkg, target)

@match(Package, Target)
def chop(pkg, target):
    """Decide target module and name of each definition"""
    for d in pkg.definitions:
        target.define(d)

@match(Package, Target)
def crosslink(pkg, target):
    """Compute all inter-module references"""
    for d in pkg.definitions:
        crosslink(d, target)

@match(Definition, Target)
def crosslink(dfn, target):
    for node in walk_dfs(dfn):
        crosslink(dfn, node, target)

@match(Definition, Ref, Target)
def crosslink(dfn, ref, target):
    target.reference(dfn, ref)

@match(Definition, IR, Target)
def crosslink(dfn, node, target):
    pass

@match(Package, Target)
def transform(pkg, target):
    """Generate tr.Statement-s for the IR"""
    for d in pkg.definitions:
        module = target.module(d)
        module.add(code(d, target))

@match(Package, Target)
def format(pkg, target):
    """Generate set of files with formatted content"""
    for m in target.modules.values():
        target.file(m, format(m, target))


import py.path

def writeout(files, output, verbose):
    o = py.path.local(output)
    for name, content in files.items():
        f = o.join(name)
        f.write(content, ensure=True)
        if verbose:
            print "wrote %s" % f

from docopt import docopt

def main(args):
    backends = {"--go" : Go,
                "--java" : Java,
                "--ruby" : Ruby,
                "--python" : Python,
            }
    for fn in args["<files>"]:
        ir = IR.load_path(fn)
        for opt, backend in backends.items():
            if not args.get(opt, False):
                continue
            b = backend()
            emit(ir, b)
            writeout(b.files, output=args["--output"], verbose=args["--verbose"])
 

def call_main():
    exit(main(docopt(__doc__)))
