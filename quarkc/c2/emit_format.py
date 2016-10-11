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

from contextlib import contextmanager
from .match import *

from .emit_target import *

from .tr import *

class Indent(object):
    def __init__(self, indent=4, level=0):
        self.indent = indent
        self.level = level
        self.prefix = " " * self.level * self.indent

    @match(basestring, opt(basestring))
    def __call__(self, line, sep=""):
        return "\n".join(self.prefix + l for l in line.strip().splitlines()) + sep

    @property
    def more(self):
        return Indent(self.indent, self.level + 1)
 
@match(File, Target)
def format(module, target):
    return "{header}\n{block}".format(
        header=header(module, target),
        block=format(module.outer_block, target))

@match(Block, Target)
def format(block, target):
    return "\n\n".join(format(s, target, Indent()) for s in block.children)

@match(Simple, Target, Indent)
def format(stmt, target, indent):
    return indent(stmt.stmt)

@match(Block, Target, Indent)
def format(block, target, indent):
    return "\n".join([" {"] + [format(s, target, indent.more) for s in block.children] + [indent("}")])

@match(Compound, Target, Indent)
def format(stmt, target, indent):
    return "\n".join([
        "{stmt}{block}".format(
            stmt = indent(s),
            block = format(b, target, indent))
        for s, b in zip(stmt.comps[0::2], stmt.comps[1::2])])


# Python specific formatting

@match(File, Python)
def header(module, target):
    return "# TODO imports"

@match(Block, Python, Indent)
def format(block, target, indent):
    return "\n".join(
        [":"] + (
            [format(s, target, indent.more) for s in block.children] or
            [indent.more("pass")]))


# Go specific formatting

@match(File, Go)
def header(module, target):
    return "# TODO package, imports"


# Java specific formatting

@match(File, Java)
def header(module, target):
    return "# TODO package, imports"

@match(Simple, Java, Indent)
def format(stmt, target, indent):
    return indent(stmt.stmt, ";")


# Ruby specific formatting

@match(File, Ruby)
def header(module, target):
    return "# TODO package, imports"

@match(Block, Ruby, Indent)
def format(block, target, indent):
    return "\n".join(
        [format(s, target, indent.more) for s in block.children] +
        [indent("end")])
