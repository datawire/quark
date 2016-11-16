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
Quark IR silly preprocessor.

Usage:
  quark-macro [-o DIR] (-D <k=v>)... [--] <files>...

  substitute all occurences of #<k> with <v>. case
sensitive. Substituions are performed in order supplied

Options:
  -h --help             Show this screen.
  -v --verbose          Show more detail.

  -o DIR, --output DIR  Target directory for output files. [default: .]

"""

import py.path
import os

def writeout(files, output, verbose):
    o = py.path.local(output)
    for name, content in files:
        f = o.join(name)
        f.write(content, ensure=True)
        if verbose:
            print "wrote %s" % f

def do_subst(text, subst):
    for k,v in subst.items():
        text = text.replace("#"+k, v)
    assert "#" not in text
    return text

from docopt import docopt

def main(args):
    subst = tuple("=" in kv and kv.split("=",1) or (kv,"") for kv in args["<k=v>"])
    for fn in args["<files>"]:
        if not fn.endswith(".qh"):
            print("skipping %s" % fn)
        with open(fn) as f:
            text = f.read()
            writeout([(do_subst(os.path.basename(fn), subst)[:-1], do_subst(text, subst))], args["--output"], args["--verbose"])
 

def call_main():
    exit(main(docopt(__doc__)))
