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

from collections import OrderedDict
from .ast import *
from .parser import Parser, ParseError as GParseError
from .dispatch import dispatch

class Root(AST):

    def __init__(self):
        self.parent = None
        self.index = 0
        self.files = []

    def add(self, file):
        self.files.append(file)

    @property
    def children(self):
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

def pkg_name(pkg):
    if pkg.package is None:
        return code(pkg.name)
    else:
        return "%s.%s" % (pkg_name(pkg.package), code(pkg.name))

class InitEnv:

    def visit_Package(self, p):
        name = pkg_name(p)
        if name in p.root.env:
            p.env = p.root.env[name].env
        else:
            p.env = {}
            p.root.env[name] = p

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

    def define(self, env, node, name=None, leaf=True, dup=True):
        if name is None:
            name = node.name.text
        if name in env:
            if dup:
                self.duplicates.append((node, name, env[name]))
        else:
            env[name] = node
        if leaf:
            node.resolved = texpr(node)

    def visit_Package(self, p):
        self.define(p.parent.env, p, dup=False)

    def visit_Class(self, c):
        self.define(c.parent.env, c)
        for p in c.parameters:
            self.define(c.env, p)

    def visit_Function(self, f):
        self.define(f.parent.env, f)

    def visit_Method(self, m):
        # we don't put constructors in the namespace
        if m.type:
            self.define(m.parent.env, m)
        self.define(m.env, m.parent, "self")

    def visit_Macro(self, m):
        self.define(m.parent.env, m)

    def visit_MethodMacro(self, mm):
        self.define(mm.parent.env, mm)
        self.define(mm.env, mm.parent, "self")

    def visit_Declaration(self, d):
        self.define(d.env, d, leaf=False)


class TypeExpr(object):

    def __init__(self, type, bindings):
        self.type = type
        self.bindings = bindings

    def get(self, attr, errors):
        name = attr.text
        for env in self.environments(self.type):
            if name in env:
                tgt = env[name].resolved
                return texpr(tgt.type, self.bindings, tgt.bindings)
        errors.append("%s:%s has no such attribute: %s" % (lineinfo(attr), self.type.name, name))
        return None

    @dispatch(Package)
    def environments(self, pkg):
        yield pkg.env

    @dispatch(Class)
    def environments(self, cls):
        yield cls.env
        if cls.base:
            base = cls.base.definition
            for e in self.environments(base):
                yield e
        else:
            yield cls.root.env["Object"].env

    @dispatch(list)
    def invoke(self, errors):
        return self.invoke(self.type, errors)

    @dispatch(Callable)
    def invoke(self, dfn, errors):
        return texpr(dfn.type.resolved.type, self.bindings)

    @dispatch(Class)
    def invoke(self, cls, errors):
        return texpr(cls, self.bindings)

    @property
    def id(self):
        return self.pprint(self.type)

    @dispatch(Package)
    def pprint(self, pkg):
        return pkg.id

    @dispatch(Class)
    def pprint(self, cls):
        if cls.parameters:
            params = [repr(self.bindings.get(p, p)) for p in cls.parameters]
            return "%s<%s>" % (cls.id, ",".join(params))
        else:
            return cls.id

    @dispatch(Callable)
    def pprint(self, cls):
        return cls.id

    @dispatch(TypeParam)
    def pprint(self, pkg):
        return pkg.id

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

    def visit_Class(self, c):
        if c.base:
            c.base.definition = self.lookup(c.base, c.base.text)

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

class Resolver(object):

    def __init__(self):
        self.errors = []

    def leave_Declaration(self, d):
        d.resolved = d.type.resolved

    def leave_Var(self, v):
        v.resolved = v.definition.resolved

    def leave_Attr(self, a):
        if a.expr.resolved:
            a.resolved = a.expr.resolved.get(a.attr, self.errors)

    def leave_Call(self, c):
        if c.expr.resolved:
            c.resolved = c.expr.resolved.invoke(self.errors)

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
    return "%s:%s:%s" % (getattr(node, "filename", "<none>"), node.line, node.column)

class SetFile:

    def __init__(self, file):
        self.file = file

    def visit_AST(self, ast):
        ast.file = self.file

BUILTIN = """
primitive void {}
primitive int {
    macro int __add__(int other) ${($self) + ($other)};
    macro int __sub__(int other) ${($self) - ($other)};
    macro int __mul__(int other) ${($self) * ($other)};
    macro int __lt__(int other) ${($self) < ($other)};
    macro int __gt__(int other) ${($self) > ($other)};
}
primitive long {
    macro int __add__(int other) ${($self) + ($other)};
    macro int __sub__(int other) ${($self) - ($other)};
    macro int __mul__(int other) ${($self) * ($other)};
    macro int __lt__(int other) ${($self) < ($other)};
    macro int __gt__(int other) ${($self) > ($other)};
}
primitive Object {
    macro int __eq__(Object other) $java{($self).equals($other)}
                                   $py{($self) == ($other)};
    macro int __ne__(Object other) $java{!(($self).equals($other))}
                                   $py{($self) != ($other)};
}
primitive String {}
primitive List<T> {
    macro void add(T element) $java{($self).add($element)}
                              $py{($self).append($element)};
    macro T get(int index) $java{($self).get($index)}
                           $py{($self)[$index]};
    macro int size() ${($self).size()};
}
primitive Map<K,V> {
    macro void put(K key, V value) $java{($self).put(($key), ($value))}
                                   $py{($self)[$key] = ($value)};
    macro V get(K key) ${($self).get($key)};
    macro int contains(K key) ${($self).containsKey($key)};
}
macro void print(String msg) $java{System.out.println($msg)}
                             $py{_println($msg)};
macro long now() $java{System.currentTimeMillis()}
                 $py{long(time.time()*1000)};
"""

class ApplyAnnotators:

    def __init__(self, annotators):
        self.annotators = annotators
        self.output = []

    def visit_AST(self, node):
        if hasattr(node, "annotations"):
            annotations = node.annotations
            done = set()
            for ann in annotations:
                name = ann.name.text
                if name not in done and name in self.annotators:
                    for afun in self.annotators[name]:
                        code = afun(node)
                        if not isinstance(code, str):
                            raise TypeError("annotators need to produce string data: %s" % afun)
                        self.output.append((name, code))
                    done.add(name)

class Contextualize:

    def __init__(self, root):
        self.root = root
        self.packages = []
        self.package = None
        self.clazzes = []
        self.clazz = None
        self.callables = []
        self.callable = None

    def visit_AST(self, node):
        node.root = self.root
        node.package = self.package
        node.clazz = self.clazz
        node.callable = self.callable

    def visit_Package(self, p):
        self.visit_AST(p)
        self.packages.append(self.package)
        self.package = p

    def leave_Package(self, p):
        self.package = self.packages.pop()

    def visit_Class(self, c):
        self.visit_AST(c)
        self.clazzes.append(self.clazz)
        self.clazz = c

    def leave_Clazz(self, c):
        self.clazz = self.clazzes.pop()

    def visit_Callable(self, c):
        self.visit_AST(c)
        self.callables.append(self.callable)
        self.callable = c

    def leave_Callable(self, c):
        self.callable = self.callables.pop()

class Compiler:

    def __init__(self):
        self.root = Root()
        self.parser = Parser()
        self.annotators = OrderedDict()
        self.parse("BUILTIN", BUILTIN)
        self.generated = OrderedDict()

    def annotator(self, name, annotator):
        if name in self.annotators:
            self.annotators[name].append(annotator)
        else:
            self.annotators[name] = [annotator]

    def parse(self, name, text):
        try:
            file = self.parser.parse(text)
        except GParseError, e:
            raise ParseError("%s:%s:%s: %s" % (name, e.line(), e.column(), e))
        file.traverse(SetFile(file))
        file.name = name
        self.root.add(file)
        file.traverse(Contextualize(self.root))
        aa = ApplyAnnotators(self.annotators)
        file.traverse(aa)
        for ann_name, code in aa.output:
            base, ext = os.path.splitext(name)
            gen_name = "%s@%s%s" % (base, ann_name, ext)
            assert gen_name not in self.generated
            self.generated[gen_name] = code
            self.parse(gen_name, code)

    def write(self, target):
        if not os.path.exists(target):
            os.makedirs(target)
        for name, content in self.generated.items():
            path = os.path.join(target, name)
            dir = os.path.dirname(path)
            if not os.path.exists(dir):
                os.makedirs(dir)
            with open(path, "wb") as fd:
                fd.write(content)
                print "wrote", path

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
            vars = ["%s: unresolved variable: %s" % (lineinfo(node), name)
                    for node, name in use.unresolved]
            raise CompileError("\n".join(vars))

        res = Resolver()
        self.root.traverse(res)
        if res.errors:
            raise CompileError("\n".join(res.errors))

    def emit(self, backend):
        self.root.traverse(backend)

import os
from docopt import docopt
from backend import Java

def _main(args):
    srcs = args["<file>"]
    java = args["--java"]
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
        finally:
            if java:
                c.write(java)

    try:
        c.compile()
    except CompileError, e:
        return e

    if java:
        j = Java()
        c.emit(j)
        try:
            j.write(java)
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
