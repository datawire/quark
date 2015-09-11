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
from .parser import Parser, ParseError as GParseError

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
        f.callable = f

    def visit_Macro(self, m):
        m.env = {}
        m.callable = m

    def visit_AST(self, ast):
        if ast.parent:
            ast.env = ast.parent.env
            if hasattr(ast.parent, "callable"):
                ast.callable = ast.parent.callable
        else:
            ast.env = {}

class Def:

    def __init__(self):
        self.duplicates = []

    def define(self, env, node, name=None, leaf=True):
        if name is None:
            name = node.name.text
        if name in env:
            self.duplicates.append((node, name, env[name]))
        else:
            env[name] = node
        if leaf:
            node.resolved = texpr(node)

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
        self.define(d.env, d, leaf=False)


class TypePP:

    def __init__(self, bindings):
        self.bindings = bindings

    def Package(self, p):
        return p.id

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

    def leave_Type(self, t):
        type = self.lookup(t, t.path[0].text)
        for n in t.path[1:]:
            type = type.env[n.text]

        bindings = {}
        if type and t.parameters:
            idx = 0
            for p in type.parameters:
                bindings[p] = t.parameters[idx].resolved
                idx += 1
        if type is None:
            t.resolved = None
            self.unresolved.append((t.path[-1], t.path[-1].text))
        else:
            t.resolved = texpr(type.resolved.type, bindings, type.resolved.bindings)

    def visit_Var(self, v):
        v.definition = self.lookup(v)
        if v.definition is None:
            self.unresolved.append((v.name, v.name.text))

    def leaf(self, n, name):
        type = self.lookup(n, name)
        n.resolved = texpr(type)
        if n.resolved is None:
            self.unresolved.append((n, name))

    def visit_Null(self, n):
        self.leaf(n, "Object")

    def visit_Number(self, n):
        self.leaf(n, "int")

    def visit_String(self, n):
        self.leaf(n, "String")

    def visit_List(self, n):
        self.leaf(n, "List")

    def visit_Map(self, n):
        self.leaf(n, "Map")

class AttrType:

    def __init__(self, errors, attr):
        self.errors = errors
        self.attr = attr

    def lookup(self, n):
        name = self.attr.attr.text
        if name in n.env:
            tgt = n.env[name].resolved
            return texpr(tgt.type, self.attr.expr.resolved.bindings, tgt.bindings)
        else:
            self.errors.append("%s:%s has no such attribute: %s" % (lineinfo(self.attr.attr), n.name.text, name))
            return None

    def Package(self, p):
        return self.lookup(p)

    def Class(self, c):
        return self.lookup(c)

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

    def __init__(self):
        self.errors = []

    def leave_Declaration(self, d):
        d.resolved = d.type.resolved

    def leave_Var(self, v):
        v.resolved = v.definition.resolved

    def leave_Attr(self, a):
        if a.expr.resolved:
            a.resolved = a.expr.resolved.type.apply(AttrType(self.errors, a))

    def leave_Call(self, c):
        if c.expr.resolved:
            c.resolved = c.expr.resolved.type.apply(InvokedType(c.expr))

    def leave_List(self, l):
        if l.elements and l.elements[0].resolved:
            element_texp = l.elements[0].resolved
            list_texp = l.resolved
            list_texp.bindings[list_texp.type.parameters[0]] = element_texp

    def leave_Map(self, m):
        if not m.entries: return
        entry = m.entries[0]
        map_texp = m.resolved
        if entry.key.resolved:
            key_texp = entry.key.resolved
            value_texp = entry.value.resolved
            key_param, value_param = map_texp.type.parameters
            if key_texp:
                map_texp.bindings[key_param] = key_texp
            if value_texp:
                map_texp.bindings[value_param] = value_texp

class ParseError(Exception): pass
class CompileError(Exception): pass

def lineinfo(node):
    return "%s:%s:%s" % (node.filename, node.line, node.column)

class Filename:

    def __init__(self, name):
        self.name = name

    def visit_AST(self, ast):
        ast.filename = self.name

BUILTIN = """
primitive void {}
primitive int {
    macro int __add__(int other) ${($self) + ($other)};
    macro int __sub__(int other) ${($self) - ($other)};
    macro int __mul__(int other) ${($self) * ($other)};
    macro int __eq__(int other) ${($self) == ($other)};
    macro int __lt__(int other) ${($self) < ($other)};
}
primitive Object {}
primitive String {
    macro int __eq__(String other) ${($self).equals($other)};
}
primitive List<T> {
    macro void add(T element) ${($self).add($element)};
    macro T get(int index) ${($self).get($index)};
    macro int size() ${($self).size()};
    macro int __ne__(List<T> other) ${!(($self).equals($other))};
}
primitive Map<K,V> {
    macro void put(K key, V value) ${($self).put(($key), ($value))};
    macro V get(K key) ${($self).get($key)};
}
macro void print(String msg) ${System.out.println($msg)};
"""

class Compiler:

    def __init__(self):
        self.root = Root()
        self.parser = Parser()
        self.parse("BUILTIN", BUILTIN)

    def parse(self, name, text):
        try:
            file = self.parser.parse(text)
        except GParseError, e:
            raise ParseError("%s:%s:%s: %s" % (name, e.line(), e.column(), e))
        file.traverse(Filename(name))
        self.root.add(file)

    def compile(self):
        self.root.traverse(InitParent())
        self.root.traverse(InitEnv())

        def_ = Def()
        self.root.traverse(def_)
        if def_.duplicates:
            dups = ["%s: duplicate definition of %s (first definition %s)" %
                    (lineinfo(node), name, lineinfo(first))
                    for node, name, first in def_.duplicates]
            raise CompileError("\n".join(dups))

        use = Use()
        self.root.traverse(use)
        if use.unresolved:
            vars = ["%s:%s:%s" % (node.line, node.column, name)
                    for node, name in use.unresolved]
            raise CompileError("unresolved variables: %s" % ", ".join(vars))

        res = Resolver()
        self.root.traverse(res)
        if res.errors:
            raise CompileError("\n".join(res.errors))

    def emit(self, backend):
        self.root.traverse(backend)

import os
from docopt import docopt
from backend import Java

def write_files(backend, target):
    if not os.path.exists(target):
        os.makedirs(target)
    for name, content in backend.files.items():
        path = os.path.join(target, name)
        dir = os.path.dirname(path)
        if not os.path.exists(dir):
            os.path.makedirs(dir)
        open(path, "write").write(content)
        print "wrote", path

def _main(args):
    srcs = args["<file>"]
    c = Compiler()
    for src in srcs:
        try:
            content = open(src).read()
        except IOError, e:
            return e
        try:
            c.parse(src, content)
        except ParseError, e:
            return e
    try:
        c.compile()
    except CompileError, e:
        return e
    java = args["--java"]
    if java:
        j = Java()
        c.emit(j)
        try:
            write_files(j, java)
        except IOError, e:
            return e

def main():
    """
Quark compiler.

Usage:
  quark [--java=<dir>] [--python=<dir>] [--ruby=<dir>] <file> ...
  quark -h | --help
  quark --version

Options:
  -h --help       Show this screen.
  --version       Show version.
  --java=<dir>    Emit java code to specified directory.
  --python=<dir>  Emit python code to specified directory.
  --ruby=<dir>    Emit ruby code to specified directory.
"""
    exit(_main(docopt(main.__doc__)))
