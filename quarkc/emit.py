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
  quark-ir emit [options] (--go | --java | --python | --ruby | --javascript) <files>...

Commands:

  emit    Emit target code for the specified quark IR files in the output directory

Options:
  -h --help             Show this screen.
  -v --verbose          Show more detail.

  -o DIR, --output DIR  Target directory for output files. [default: .]

"""

from .match import match
from .ir import (IR, Root, Package)
from .ir import reconstruct
from .emit_target import Target, Go, Ruby, Java, Python, Javascript
from .emit_transform import transform
from .emit_format import format
from .emit_naming import rename
from .emit_generate import generate

from . import stats

## Package

@match(Package, Target)
def emit(pkg, target):
    """entrypoint for unstructered IR

    Frontend produces a flat representation of the IR where a package
    contains all the Definitions.

    most targets have a concept of a structured namespace so the definitions
    are restructured into a tree of Namespaces

    There is also a [ever more legacy] support for instantiating
    ExternalPackages to explicitly model the unresolved Refs that
    frontend uses as implicit FFI imports

    """
    with stats.charge("emit-reconstruct"):
        pkg = reconstruct(pkg)
    return emit(pkg, target)

@match(Root, Target)
def emit(pkg, target):
    """Convert the structured IR into target code.

    The process is split into a few stages:

    transform - structural changes to the IR are made (Functions in
        java are mapped to static methods; nested go namespaces are
        flattened, ...

    root - a query structure is created on top of IR so that ancestors
        and siblings can be efficiently queried. The query structure
        is tucked inside the target

    rename - public symbols are renamed (Classes in ruby are upcased;
        Definition names in nested namespaces are mangled for Go, ...)

    generate - converts the IR representation to TR representation.
        The TR representation is a very simple structured code text
        representation

    format - converts the TR representation to a string

    returns a sequence of tuples (filename, content)

    """
    with stats.charge("emit-transform"):
        pkg = transform(pkg, target)
    with stats.charge("emit-root"):
        target = target.with_root(pkg)
    with stats.charge("emit-rename"):
        rename(pkg, target)
    with stats.charge("emit-generate-format"):
        return tuple((module.filename, format(module, target))
                 for module in generate(pkg, target))

import py.path

def writeout(files, output, verbose):
    o = py.path.local(output)
    for name, content in files:
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
                "--javascript" : Javascript,
            }
    for fn in args["<files>"]:
        ir = IR.load_path(fn)
        for opt, backend in backends.items():
            if not args.get(opt, False):
                continue
            b = backend()
            files = emit(ir, b)
            writeout(files, output=args["--output"], verbose=args["--verbose"])
 

def call_main():
    exit(main(docopt(__doc__)))
