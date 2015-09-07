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

class InitParent:

    def __init__(self, annotator):
        self.annotator = annotator
        self.stack = []
        self.count = 0

    def visit_AST(self, ast):
        if self.stack:
            ast.parent = self.stack[-1]
        self.stack.append(ast)
        ast.annotator = self.annotator
        if isinstance(ast, Definition):
            ast.id = str(ast.name)
        else:
            ast.id = self.count
            self.count += 1

    def leave_AST(self, ast):
        self.stack.pop()

class InitEnv:

    def visit_Package(self, p):
        p.env = {}

    def visit_Class(self, c):
        c.env = {}

    def visit_Function(self, f):
        f.env = {}

    def visit_Macro(self, m):
        m.env = {}

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

    def visit_Class(self, c):
        self.define(c.parent.env, c)

    def visit_Function(self, f):
        self.define(f.parent.env, f)

    def visit_Method(self, m):
        self.define(m.parent.env, m)
        self.define(m.env, m.parent, "self")

    def visit_Macro(self, m):
        self.define(m.parent.env, m)

    def visit_MethodMacro(self, mm):
        self.define(mm.parent.env, mm)
        self.define(mm.env, mm.parent, "self")

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

    def visit_Function(self, f):
        f.resolved = f

    def visit_Macro(self, m):
        m.resolved = m

    def visit_Type(self, t):
        t.resolved = self.lookup(t)
        if t.resolved is None:
            self.unresolved.append((t.name, t.name.text))

    def visit_Var(self, v):
        v.definition = self.lookup(v)
        if v.definition is None:
            self.unresolved.append((v.name, v.name.text))

    def visit_Number(self, n):
        n.resolved = self.lookup(n, "int")
        if n.resolved is None:
            self.unresolved.append((n, "int"))

    def visit_String(self, s):
        s.resolved = self.lookup(s, "String")
        if s.resolved is None:
            self.unresolved.append((s, "String"))

class InvokedType:

    def Function(self, f):
        return f.type.resolved

    def Class(self, c):
        return c

    def Macro(self, m):
        return m.type.resolved

class Resolver:

    def leave_Declaration(self, d):
        d.resolved = d.type.resolved

    def leave_Var(self, v):
        v.resolved = v.definition.resolved

    def leave_Attr(self, a):
        a.resolved = a.expr.resolved.env[a.attr.text].resolved

    def leave_Binop(self, b):
        # XXX
        b.resolved = b.left.resolved

    def leave_Call(self, c):
        c.resolved = c.expr.resolved.apply(InvokedType())

    def leave_Fixed(self, f):
        f.resolved = None

    def leave_Native(self, n):
        n.resolved = None

def refstr(ast):
    if ast is None:
        return None
    else:
        return "%s:%s" % (ast.__class__.__name__, ast.id)

class Annotator:

    def __call__(self, ast):
        result = ast.apply(self, lambda x: [])
        if ast.parent and ast.parent.env != ast.env:
            keys = ast.env.keys()
            keys.sort()
            for k in keys:
                result.append((k, refstr(ast.env[k])))
        return result

    def Declaration(self, decl):
        return [("$type", refstr(decl.resolved))]

    def Expression(self, expr):
        return [("$type", refstr(expr.resolved))]

class CompileError(Exception): pass

def lineinfo(node):
    return "%s:%s" % (node.line, node.column)

BUILTIN = """
primitive void {}
primitive int {
    macro int __add__(int other) ${($self) + ($other)};
    macro int __sub__(int other) ${($self) - ($other)};
    macro int __mul__(int other) ${($self) * ($other)};
}
primitive String {}
"""

class Compiler:

    def __init__(self):
        self.root = Root()
        self.parser = Parser()
        self.parse(BUILTIN)

    def parse(self, text):
        self.root.add(self.parser.parse(text))

    def compile(self):
        self.root.traverse(InitParent(Annotator()))
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

        self.root.traverse(Resolver())

    def emit(self, backend):
        self.root.traverse(backend)
