from .ast import *
from .match import *
from .helpers import lineinfo
from collections import OrderedDict
import types

@match(choice(Package, Function, Class, Interface, Method, Declaration, TypeParam))
def path(n):
    return path(n.parent) + (n.name,)

@match(File)
def path(f):
    return ()

@match(choice(Local, Block))
def path(n):
    return path(n.parent)

@match(choice(Package, Function, Class, Interface, Method, Declaration, TypeParam))
def name(n):
    return ".".join([n.text for n in path(n)])

@match(Import)
def name(imp):
    return ".".join([n.text for n in imp.path])

@match(AST)
def scope(n):
    return scope(n.parent)

@match(choice(Package, Function, Class, Interface, Method))
def scope(s):
    return s

@match(AST)
def scopes(n):
    while n.parent:
        yield scope(n)
        n = n.parent
    for d in n.definitions:
        for s in imported_scopes(d):
            yield s

@match(AST)
def imported_scopes(n):
    if False: yield

@match(Import)
def imported_scopes(imp):
    if not imp.alias:
        yield imp

class Symbols(object):

    def __init__(self):
        self.definitions = OrderedDict()
        self.typespace = types.Typespace()

    @match(choice(Function, Class, Interface, Method, Declaration, TypeParam))
    def define(self, dfn):
        n = name(dfn)
        assert n not in self.definitions
        self.definitions[n] = dfn

    @match(Package)
    def define(self, pkg):
        n = name(pkg)
        if n not in self.definitions:
            self.definitions[n] = [pkg]
        else:
            self.definitions[n].append(pkg)

    @match(Import)
    def define(self, imp):
        if imp.alias:
            alias = imp.alias.text
            assert alias not in self.definitions
            n = name(imp)
            if n not in self.definitions:
                self.definitions[n] = []
            self.definitions[alias] = self.definitions[n]

    @match(AST)
    def define(self, dfn): pass

    @match(Type)
    def qualify(self, type):
        return self.qualify(scope(type), type, ".".join([n.text for n in type.path]))

    @match(Var)
    def qualify(self, var):
        return self.qualify(var.name)

    @match(Name)
    def qualify(self, name):
        return self.qualify(scope(name), name, name.text)

    @match(choice(Package, Function, Class, Interface, Method), AST, basestring)
    def qualify(self, scope, node, text):
        for s in scopes(node):
            candidate = ".".join([name(s), text])
            if candidate in self.definitions:
                return candidate
        candidates = [text, ".".join(["quark", text])]
        for candidate in candidates:
            if candidate in self.definitions:
                return candidate
        raise KeyError("%s: no such symbol %s" % (lineinfo(node), text))

    @match(Class)
    def type(self, cls):
        type = types.Object(*[self.field(d) for d in cls.definitions])
        if cls.parameters:
            type = types.Template(*[types.Param(name(p)) for p in cls.parameters] + [type])
        self.typespace[name(cls)] = type

    @match(Function)
    def type(self, fun):
        if not isinstance(fun, Method):
            self.typespace[name(fun)] = self.callable(fun)

    @match(Package)
    def type(self, pkg):
        n = name(pkg)
        if n not in self.typespace.types:
            pkgs = self.definitions[n]
            type = types.Object(*[types.Field(d.name.text, types.Ref(name(d))) for p in pkgs for d in p.definitions])
            self.typespace[n] = type

    @match(AST)
    def type(self, _): pass

    @match(Callable)
    def callable(self, c):
        result = types.Ref(self.qualify(c.type))
        args = [types.Ref(self.qualify(p.type)) for p in c.params]
        return types.Callable(result, *args)

    @match(Field)
    def field(self, f):
        return types.Field(f.name.text, types.Ref(self.qualify(f.type)))

    @match(Method)
    def field(self, m):
        return types.Final(m.name.text, self.callable(m))

    @match(Expression)
    def check(self, e):
        print "%s: %s" % (e, self.typespace.unresolve(self.resolve(e)))

    @match(Local)
    def check(self, l):
        if l.declaration.value:
            left = self.resolve(l.declaration.type)
            right = self.resolve(l.declaration.value)
            assert self.typespace.assignable(left, right), "cannot assign %s to %s" % (self.typespace.unresolve(right),
                                                                                       self.typespace.unresolve(left))

    @match(Assign)
    def check(self, a):
        left = self.resolve(a.lhs)
        right = self.resolve(a.rhs)
        assert self.typespace.assignable(left, right), "cannot assign %s to %s" % (self.typespace.unresolve(right),
                                                                                   self.typespace.unresolve(left))

    @match(AST)
    def check(self, _): pass

    @match(String)
    def resolve(self, st):
        return types.Ref("quark.String")

    @match(Number)
    def resolve(self, st):
        return types.Ref("quark.int")

    @match(Var)
    def resolve(self, v):
        dfn = self.definitions[self.qualify(v)]
        return self.resolve(dfn)

    @match(Declaration)
    def resolve(self, dfn):
        return self.resolve(dfn.type)

    @match([Package, many(Package)])
    def resolve(self, pkgs):
        return self.typespace[name(pkgs[0])]

    @match(Type)
    def resolve(self, type):
        if type.parameters:
            return types.Ref(self.qualify(type), *[self.resolve(p) for p in type.parameters])
        else:
            return types.Ref(self.qualify(type))

    @match(choice(Method, Function))
    def resolve(self, meth):
        return self.typespace.get(self.typespace[name(meth.parent)], meth.name.text)

    @match(Call)
    def resolve(self, c):
        expr = self.resolve(c.expr)
        args = [self.resolve(a) for a in c.args]
        return self.typespace.call(expr, *args)

    @match(Attr)
    def resolve(self, a):
        expr = self.resolve(a.expr)
        return self.typespace.get(expr, a.attr.text)
