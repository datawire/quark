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

from .ast import AST, Definition, Param, TypeParam
from .parser import Parser

class Root(AST):

    def __init__(self, *primitives):
        self.parent = None
        self.index = 0
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

    def __init__(self):
        self.stack = []
        self.count = 0

    def name(self, ast):
        if isinstance(ast, (Definition, Param, TypeParam)):
            return ast.name.text
        else:
            return str(ast.index)

    def visit_AST(self, ast):
        ast.resolved = None
        ast.count = 0
        if self.stack:
            ast.parent = self.stack[-1]
            ast.index = ast.parent.count
            ast.parent.count += 1
        self.stack.append(ast)
        ast.id = ".".join([self.name(a) for a in self.stack[1:]])

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
        for p in c.parameters:
            self.define(c.env, p)

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

    def visit_Declaration(self, d):
        self.define(d.env, d)

class TypePP:

    def __init__(self, bindings):
        self.bindings = bindings

    def Class(self, c):
        if c.parameters:
            params = [repr(self.bindings.get(p, p)) for p in c.parameters]
            return "%s<%s>" % (c.id, ",".join(params))
        else:
            return c.id

    def Callable(self, c):
        return c.id

    def TypeParam(self, p):
        return p.id

class TypeExpr:

    def __init__(self, type, bindings):
        self.type = type
        self.bindings = bindings

    @property
    def id(self):
        return self.type.apply(TypePP(self.bindings))

    def __repr__(self):
        return self.id

def texpr(type, *bindingses):
    bindings = {}
    for b in bindingses:
        bindings.update(b)
    while type in bindings:
        expr = bindings[type]
        bindings.update(expr.bindings)
        type = expr.type
    return TypeExpr(type, bindings)

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
        c.resolved = texpr(c)

    def visit_Function(self, f):
        f.resolved = texpr(f)

    def visit_Macro(self, m):
        m.resolved = texpr(m)

    def visit_TypeParam(self, t):
        t.resolved = texpr(t)

    def leave_Type(self, t):
        type = self.lookup(t)
        bindings = {}
        if type and t.parameters:
            idx = 0
            for p in type.parameters:
                bindings[p] = t.parameters[idx].resolved
                idx += 1
        if type is None:
            t.resolved = None
            self.unresolved.append((t.name, t.name.text))
        else:
            t.resolved = texpr(type.resolved.type, bindings, type.resolved.bindings)

    def visit_Var(self, v):
        v.definition = self.lookup(v)
        if v.definition is None:
            self.unresolved.append((v.name, v.name.text))

    def visit_Number(self, n):
        type = self.lookup(n, "int")
        n.resolved = texpr(type)
        if n.resolved is None:
            self.unresolved.append((n, "int"))

    def visit_String(self, s):
        type = self.lookup(s, "String")
        s.resolved = texpr(type)
        if s.resolved is None:
            self.unresolved.append((s, "String"))

class AttrType:

    def __init__(self, attr):
        self.attr = attr

    def Class(self, c):
        tgt = c.env[self.attr.attr.text].resolved
        return texpr(tgt.type, self.attr.expr.resolved.bindings, tgt.bindings)

class InvokedType:

    def __init__(self, expr):
        self.expr = expr

    def Function(self, f):
        return texpr(f.type.resolved.type, self.expr.resolved.bindings)

    def Class(self, c):
        return texpr(c, self.expr.resolved.bindings)

    def Macro(self, m):
        return texpr(m.type.resolved.type, self.expr.resolved.bindings)

class Resolver:

    def leave_Declaration(self, d):
        d.resolved = d.type.resolved

    def leave_Var(self, v):
        v.resolved = v.definition.resolved

    def leave_Attr(self, a):
        a.resolved = a.expr.resolved.type.apply(AttrType(a))

    def leave_Call(self, c):
        c.resolved = c.expr.resolved.type.apply(InvokedType(c.expr))

class CompileError(Exception): pass

def lineinfo(node):
    return "%s:%s" % (node.line, node.column)

BUILTIN = """
primitive void {}
primitive int {
    macro int __add__(int other) ${($self) + ($other)};
    macro int __sub__(int other) ${($self) - ($other)};
    macro int __mul__(int other) ${($self) * ($other)};
    macro int __eq__(int other) ${($self) == ($other)};
}
primitive String {}
macro void print(String msg) ${System.out.println($msg)};
"""

class Compiler:

    def __init__(self):
        self.root = Root()
        self.parser = Parser()
        self.parse(BUILTIN)

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

        self.root.traverse(Resolver())

    def emit(self, backend):
        self.root.traverse(backend)
