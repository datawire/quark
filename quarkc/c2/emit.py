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

from itertools import chain
from collections import deque
from .match import match, many
from .ir import IR, Package, Definition, Check, Function, Ref, Name
from .tree import walk_dfs
from . import tr
from .emit_target import Target, Go, Ruby, Java, Python
from .emit_transform import transmogrify
from .emit_code import code
from .emit_format import format

## Package

@match(IR)
def backlink(tree):
    pending = deque([tree])
    while pending:
        node = pending.popleft()
        for c in node.children:
            assert isinstance(c, IR), repr(c)
            parent = getattr(c, "parent", node)
            assert parent is node, "%s is not a tree: %s has parent %s but expected %s" % (tree.__class__.__name__, c, parent, node)
            c.parent = node
            pending.append(c)


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
    crosslink_done(dfn, target)

@match(Definition, Ref, Target)
def crosslink(dfn, ref, target):
    target.reference(dfn, ref)

@match(Definition, IR, Target)
def crosslink(dfn, node, target):
    pass

@match(Definition, Target)
def crosslink_done(dfn, target):
    pass

@match(Definition, Ruby)
def crosslink_done(dfn, target):
    module = target.module(dfn)
    tgtdfn = target.definitions[dfn.name]
    for name in tgtdfn.namespace.target_name:
        inner_block = tr.Block()
        module.push(tr.Compound("module {name}".format(name=name), inner_block), inner_block)

@match(Check, Ruby)
def crosslink_done(dfn, target):
    module = target.module(dfn)
    # XXX: there are several Checks per module, short-circuit by cheating a bit here
    if module.outer_block is not module.inner_block:
        return
    module.add(tr.Simple("require 'test/unit'"))
    tgtdfn = target.definitions[dfn.name]
    for name in tgtdfn.namespace.target_name:
        inner_block = tr.Block()
        module.push(tr.Compound("module {name}".format(name=name), inner_block), inner_block)
    inner_block = tr.Block()
    module.push(tr.Compound("class Test{name} < Test::Unit::TestCase".format(
        name=tgtdfn.namespace.target_name[-1]), inner_block), inner_block)

@match(Function, Java)
def crosslink_done(dfn, target):
    module = target.module(dfn)
    # XXX: there are several Functions per module, short-circuit by cheating a bit here
    if module.outer_block is not module.inner_block:
        return
    inner_block = tr.Block()
    module.push(tr.Compound("public class Functions", inner_block), inner_block)

@match(Check, Java)
def crosslink_done(dfn, target):
    module = target.module(dfn)
    # XXX: there are several Checks per module, short-circuit by cheating a bit here
    if module.outer_block is not module.inner_block:
        return
    module.add(tr.Simple("import static org.junit.Assert.assertEquals"))
    module.add(tr.Simple("import org.junit.Test"))
    inner_block = tr.Block()
    module.push(tr.Compound("public class Tests", inner_block), inner_block)

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
