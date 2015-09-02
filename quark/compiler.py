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

from .ast import AST, Definition
from .parser import Parser

class Root(AST):

    def __init__(self, *primitives):
        self.parent = None
        self.primitives = primitives
        self.files = []

    def add(self, file):
        self.files.append(file)

    @property
    def children(self):
        for p in self.primitives:
            yield p
        for f in self.files:
            yield f

BUILTIN = "(builtin)"

class Primitive(Definition):

    def __init__(self, name):
        self.name = name
        self.line = BUILTIN
        self.column = BUILTIN

    @property
    def children(self):
        return ()

class IntPrimitive(Primitive):

    def __init__(self):
        Primitive.__init__(self, "int")

class StringPrimitive(Primitive):

    def __init__(self):
        Primitive.__init__(self, "String")

class VoidPrimitive(Primitive):

    def __init__(self):
        Primitive.__init__(self, "void")

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

    def __init__(self):
        self.duplicates = []

    def define(self, env, node, name=None):
        if name is None:
            name = node.name.text
        if name in env:
            self.duplicates.append((node, name, env[name]))
        else:
            env[name] = node

    def visit_Package(self, p):
        self.define(p.parent.env, p)

    def visit_Primitive(self, p):
        self.define(p.parent.env, p, p.name)

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

    def visit_Class(self, c):
        c.resolved = c

    def visit_Type(self, t):
        t.resolved = self.lookup(t)
        assert isinstance(t.resolved, Definition)
        if t.resolved is None:
            self.unresolved.append((t.name, t.name.text))

    def leave_Declaration(self, d):
        d.resolved = d.type.resolved

    def visit_Var(self, v):
        node = self.lookup(v)
        if node:
            v.resolved = node.resolved
        else:
            v.resolved = None
            self.unresolved.append((v.name, v.name.text))

    def visit_Number(self, n):
        n.resolved = self.lookup(n, "int")
        if n.resolved is None:
            self.unresolved.append((n, "int"))

    def visit_String(self, s):
        s.resolved = self.lookup(s, "String")
        if s.resolved is None:
            self.unresolved.append((s, "String"))

    def leave_Binop(self, b):
        left = b.left.resolved
        right = b.right.resolved
        # XXX
        b.resolved = left

class CompileError(Exception): pass

def lineinfo(node):
    if node.line == BUILTIN:
        return "(builtin)"
    else:
        return "%s:%s" % (node.line, node.column)

class Compiler:

    def __init__(self):
        self.root = Root(VoidPrimitive(),
                         IntPrimitive(),
                         StringPrimitive())
        self.parser = Parser()

    def parse(self, text):
        self.root.add(self.parser.parse(text))

    def compile(self):
        self.root.traverse(InitParent())
        self.root.traverse(InitEnv())

        def_ = Def()
        self.root.traverse(def_)
        if def_.duplicates:
            dups = ["%s:%s: duplicate definition of %s (first definition %s)" %
                    (node.line, node.column, name, lineinfo(first))
                    for node, name, first in def_.duplicates]
            raise CompileError("\n".join(dups))

        use = Use()
        self.root.traverse(use)
        if use.unresolved:
            vars = ["%s:%s:%s" % (node.line, node.column, name)
                    for node, name in use.unresolved]
            raise CompileError("unresolved variables: %s" % ", ".join(vars))

    def emit(self, backend):
        self.root.traverse(backend)
