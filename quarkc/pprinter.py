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

import ast

class PPrinter(object):

    def __init__(self, width=80):
        self.width = width
        self.out = ""
        self.stack = []
        self.first = True
        self.wrap = (ast.File, ast.Definition, ast.Statement, ast.Declaration)
        self.previous = None

    def merge(self, previous, line):
        if previous and previous[-1] == ",":
            return "%s %s" % (previous, line)
        else:
            return "%s%s" % (previous, line)

    @property
    def output(self):
        lines = self.out.split("\n")
        result = [lines[0]]
        for line in lines[1:]:
            stripped = line.strip()
            if stripped:
                merged = self.merge(result[-1], stripped)
                if len(merged) < self.width:
                    result[-1] = merged
                else:
                    result.append(line)
            else:
                result.append("")
                result.append(line)
        result = [l.strip() if l.strip() == "" else l for l in result if l]
        return "\n".join(result)

    def append(self, st):
        self.out += st.replace("\n", "\n%s" % (" "*len(self.stack)))

    def visit_AST(self, node):
        if self.first:
            self.first = False
            if isinstance(node, self.wrap):
                self.append("\n")
        else:
            self.append(",\n")
            if isinstance(node, (ast.File, ast.Definition, ast.Use)):
                self.append("\n")
        if isinstance(node, self.wrap) or isinstance(self.previous, self.wrap):
            self.append("\n")
        self.append("%s(" % node.__class__.__name__)
        self.stack.append((node, self.first))
        self.first = True
        if isinstance(node, ast.Fixed):
            self.append(repr(node.text))
        elif isinstance(node, ast.NativeCase):
            if node.name:
                self.append(node.name)
                self.first = False
        elif isinstance(node, ast.String):
            self.append(node.text.replace("\n", "\\n"))
        elif hasattr(node, "text"):
            self.append(node.text)
        for f in node.fields:
            self.append("%s=%s" % (f, getattr(node, f)))
            if node.children:
                self.append(", ")

    def refstr(self, node):
        if node is None:
            return None
        else:
            return "%s:%s" % (node.__class__.__name__, node.id)

    def leave_AST(self, node):
        self.first = self.stack.pop()[-1]
        if (isinstance(node, (ast.Expression, ast.Declaration)) and
            not isinstance(node, (ast.Fixed, ast.Native))):
            if hasattr(node, "resolved") and node.resolved is not None:
                self.append(",\n$type=%s" % node.resolved)
        if isinstance(node, ast.File) or not self.stack:
            self.append("\n\n")
        self.append(")")
        self.previous = node
