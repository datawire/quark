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
    """ legacy entrypoint for unstructered IR """
    with stats.charge("emit-reconstruct"):
        pkg = reconstruct(pkg)
    return emit(pkg, target)

@match(Root, Target)
def emit(pkg, target):
    """ return a sequence of tuples (filename, content) """
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
