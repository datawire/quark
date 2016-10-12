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

from .match import match, opt, choice

from .emit_target import Target, Python, Ruby, Go, Java

from .tr import File, Block, Simple, Compound, Comment

class Indent(object):
    def __init__(self, indent=4, level=0, postprefix=""):
        self.indent = indent
        self.level = level
        self.prefix = " " * self.level * self.indent + postprefix

    @match(basestring, opt(basestring))
    def __call__(self, line, sep=""):
        lines = list(line.strip().splitlines()) or ['']
        return "\n".join(self.prefix + l for l in lines) + sep

    @property
    def more(self):
        return Indent(self.indent, self.level + 1)

    def commented(self, line_comment):
        return Indent(self.indent, self.level, line_comment)
 
@match(File, Target)
def format(module, target):
    return format(module.outer_block, target)

@match(Block, Target)
def format(block, target):
    return "\n\n".join(format(s, target, Indent()) for s in block.children)


## Simple statements

@match(Simple, Target, Indent)
def format(stmt, target, indent):
    return indent(stmt.stmt)

@match(Simple, Java, Indent)
def format(stmt, target, indent):
    return indent(stmt.stmt, ";")


## Block

@match(Block, Target, Indent)
def format(block, target, indent):
    return "\n".join([" {"] + [format(s, target, indent.more) for s in block.children] + [indent("}")])

@match(Block, Python, Indent)
def format(block, target, indent):
    return "\n".join(
        [":"] + (
            [format(s, target, indent.more) for s in block.children] or
            [indent.more("pass")]))

@match(Block, Ruby, Indent)
def format(block, target, indent):
    return "\n".join([""] +
        [format(s, target, indent.more) for s in block.children] +
        [indent("end")])


## Compound

@match(Compound, Target, Indent)
def format(stmt, target, indent):
    return indent("") + " ".join([
        "{stmt}{block}".format(
            stmt = s,
            block = format(b, target, indent))
        for s, b in zip(stmt.comps[0::2], stmt.comps[1::2])])


## Comment

@match(Comment, Target, Indent)
def format(comment, target, indent):
    return indent.commented("# ")(comment.comment)

@match(Comment, choice(Java, Go), Indent)
def format(comment, target, indent):
    return indent.commented("// ")(comment.comment)
