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

from .ast import AST
from .parser import Parser

class Root(AST):

    def __init__(self):
        self.parent = None
        self.files = []

    def add(self, file):
        self.files.append(file)

    @property
    def children(self):
        return self.files

class InitParent:

    def __init__(self):
        self.stack = []

    def visit_AST(self, ast):
        if self.stack:
            ast.parent = self.stack[-1]
        self.stack.append(ast)

    def leave_AST(self, ast):
        self.stack.pop()

class InitEnv:

    def visit_Package(self, p):
        p.env = {}

    def visit_Class(self, c):
        c.env = {}

    def visit_Function(self, f):
        f.env = {}

    def visit_AST(self, ast):
        if ast.parent:
            ast.env = ast.parent.env
        else:
            ast.env = {}

class Def:

    def define(self, env, value):
        assert value.name.text not in env
        env[value.name.text] = value

    def visit_Package(self, p):
        self.define(p.parent.env, p)

    def visit_Class(self, c):
        self.define(c.parent.env, c)

    def visit_Function(self, f):
        self.define(f.parent.env, f)

    def visit_Declaration(self, p):
        self.define(p.env, p)

class Use:

    def __init__(self):
        self.unresolved = []

    def lookup(self, node, name=None):
        if name is None:
            name = node.name.text
        while node:
            if name in node.env:
                return node.env[name]
            else:
                node = node.parent
        return None

    def visit_Declaration(self, d):
        self.dfn = self.lookup(d.type)
        if self.dfn is None:
            self.unresolved.append((d.type.name, d.type.name.text))

    def visit_Var(self, v):
        self.dfn = self.lookup(v)
        if self.dfn is None:
            self.unresolved.append((v.name, v.name.text))

    def visit_Number(self, n):
        self.dfn = self.lookup(n, "int")
        if self.dfn is None:
            self.unresolved.append((n, "int"))

class CompileError(Exception): pass

class Compiler:

    def __init__(self):
        self.root = Root()
        self.parser = Parser()

    def parse(self, text):
        self.root.add(self.parser.parse(text))

    def prep(self):
        self.root.traverse(InitParent())
        self.root.traverse(InitEnv())
        self.root.traverse(Def())
        use = Use()
        self.root.traverse(use)
        if use.unresolved:
            vars = ["%s:%s:%s" % (node.line, node.column, name)
                    for node, name in use.unresolved]
            raise CompileError("unresolved variables: %s" % ", ".join(vars))

    def emit(self, backend):
        self.root.traverse(backend)
