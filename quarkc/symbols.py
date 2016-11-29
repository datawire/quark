from .ast import (
    AST, Package, Callable, Class, Declaration, TypeParam, Import, Method, Type, Var, String, Number, Bool, If,
    While, Name, Function, Interface, NativeFunction, NativeBlock, Primitive
)
from .ast import coder
from .match import match, many, choice
from .parse import wire
from collections import OrderedDict

import stats

class UnresolvedSymbol(Exception):

    def __init__(self, name):
        self.name = name

class Self(AST):

    @match(Class)
    def __init__(self, klass):
        self.klass = klass

    @property
    def name(self):
        return self.klass.name

    @property
    def children(self):
        return ()

    @coder
    def code(self, coder):
        return "self"

class Boxed(AST):

    @match(TypeParam)
    def __init__(self, type):
        self.type = type

    @property
    def name(self):
        return self.type.name

    @property
    def children(self):
        return ()

class Nulled(AST):

    @match(TypeParam)
    def __init__(self, type):
        self.type = type

    @property
    def name(self):
        return self.type.name

    @property
    def children(self):
        return ()

@match(choice(Package, Callable, Class, Declaration, TypeParam, Import))
def name(n):
    return n.scopes[0]

@match([many(Name)])
def name(path):
    return ".".join([n.text for n in path])

def definitions():
    return choice(NativeFunction, Function, Class, Interface, Method, Declaration, TypeParam)

@match(choice(definitions(), Self))
def depackage(dfn):
    return dfn

@match([many(Package)])
def depackage(pkgs):
    return pkgs[0]

def usages():
    return choice(Type, Var, String, Number, Bool, If, While)

class Symbols(object):

    @match()
    def __init__(self):
        self.definitions = OrderedDict()
        self.duplicates = OrderedDict()
        self.missing = OrderedDict()

    @match(basestring, choice(definitions(), Package, Import))
    def duplicate(self, name, node):
        if name in self.duplicates:
            self.duplicates[name].append(node)
        else:
            self.duplicates[name] = [node]

    @match(choice(definitions(), Package))
    def is_definition(self, _):
        return True

    @match(Import)
    def is_definition(self, imp):
        return True if imp.alias else False

    @match(AST)
    def is_definition(self, _):
        return False

    @match(choice(definitions(), Package))
    def define(self, dfn):
        self.define(name(dfn), dfn)
        self.define_implicit(dfn)

    @match(Method)
    def define_implicit(self, meth):
        if isinstance(meth.body, NativeBlock) or (meth.body and meth.body.statements):
            s = Self(meth.parent)
            wire(meth, s)
            self.define("%s.self" % name(meth), s)

    @match(Primitive)
    def define_implicit(self, cls):
        if cls.parameters:
            for p in cls.parameters:
                b = Boxed(p)
                wire(cls, b)
                self.define("%s_boxed" % name(p), b)
                n = Nulled(p)
                wire(cls, n)
                self.define("%s_nulled" % name(p), n)

    @match(AST)
    def define_implicit(self, _):
        pass

    @match(Import)
    def define(self, imp):
        if imp.alias:
            self.define(name(imp), imp)
        else:
            assert False

    @match(basestring, choice(definitions(), Package, Import, Self, Boxed, Nulled))
    def define(self, name, dfn):
        self.define(name, dfn, self.definitions.get(name, None))

    @match(basestring, choice(definitions(), Import, Self, Boxed, Nulled), None)
    def define(self, name, dfn, prev):
        self.definitions[name] = dfn

    @match(basestring, choice(definitions(), Import), choice(AST, [many(Package)]))
    def define(self, name, dfn, prev):
        self.duplicate(name, dfn)

    @match(basestring, Package, AST)
    def define(self, name, pkg, prev):
        self.duplicate(name, pkg)

    @match(basestring, Package, None)
    def define(self, name, pkg, _):
        self.definitions[name] = [pkg]

    @match(basestring, Package, [many(Package)])
    def define(self, name, pkg, pkgs):
        pkgs.append(pkg)

    @match(usages())
    def is_usage(self, _):
        return True

    @match(AST)
    def is_usage(self, _):
           return False

    @match(usages())
    def resolve(self, nd):
        try:
            self.do_resolve(nd)
        except UnresolvedSymbol, e:
            self.missing[nd] = e.name

    @match(choice(Type, Var))
    def do_resolve(self, nd):
        self.qualify(nd)

    @match(String)
    def do_resolve(self, st):
        self.qualify(st, "String")

    @match(Number)
    def do_resolve(self, n):
        if "." in n.text:
            self.qualify(n, "float")
        else:
            self.qualify(n, "int")

    @match(choice(If, While, Bool))
    def do_resolve(self, n):
        self.qualify(n, "bool")

    @match(Type)
    def qualify(self, type):
        return self.qualify(type, name(type.path))

    @match(Var)
    def qualify(self, var):
        return self.qualify(var.name)

    @match(Name)
    def qualify(self, name):
        return self.qualify(name, name.text)

    @match(basestring)
    def exists(self, name):
        return self.exists(self.definitions.get(name, None))

    @match(None)
    def exists(self, _):
        return False

    @match(Method)
    def exists(self, m):
        return True if m.type else False

    @match(choice(AST, [many(Package)]))
    def exists(self, _):
        return True

    @match(AST, basestring)
    def qualify(self, node, text):
        with stats.charge("qualify"):
            for s in node.scopes:
                candidate = "%s.%s" % (s, text)
                if self.exists(candidate):
                    return candidate
            candidates = [text, "quark.%s" % text]
            for candidate in candidates:
                if self.exists(candidate):
                    return candidate
            raise UnresolvedSymbol(text)

    @match(Var)
    def __getitem__(self, var):
        return self[self.qualify(var)]

    @match(Type)
    def __getitem__(self, type):
        return self[self.qualify(type)]

    @match(Name)
    def __getitem__(self, name):
        return self[self.qualify(name)]

    @match([many(Name)])
    def __getitem__(self, path):
        return self[name(path)]

    @match(basestring)
    def __getitem__(self, name):
        return self.definitions[name]
