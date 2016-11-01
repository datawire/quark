from .ast import *
from .errors import *
from .match import *
from .parse import traversal
from .helpers import lineinfo
from .timer import Timer
from collections import OrderedDict

class UnresolvedSymbol(Exception):

    def __init__(self, name):
        self.name = name

@match(choice(Package, Callable, Class, Declaration, TypeParam))
def path(n):
    return path(n.parent) + (n.name,)

@match(File)
def path(f):
    return ()

@match(choice(Statement, Block))
def path(n):
    return path(n.parent)

@match(choice(Package, Callable, Class, Declaration, TypeParam))
def name(n):
    return ".".join([n.text for n in path(n)])

@match([many(Name)])
def name(path):
    return ".".join([n.text for n in path])

@match(Import)
def name(imp):
    assert imp.alias
    return ".".join([n.text for n in path(imp.parent)] + [imp.alias.text])

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
        yield imp.path

def definitions():
    return choice(Function, Class, Interface, Method, Declaration, TypeParam)

@match(definitions())
def depackage(dfn):
    return dfn

@match([many(Package)])
def depackage(pkgs):
    return pkgs[0]

def usages():
    return choice(Type, Var, String, Number, Bool, If, While)

class Symbols(object):

    @match(Timer)
    def __init__(self, timer):
        self.timer = timer
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

    @match(Import)
    def define(self, imp):
        if imp.alias:
            self.define(name(imp), imp)
        else:
            assert False

    @match(basestring, choice(definitions(), Package, Import))
    def define(self, name, dfn):
        self.define(name, dfn, self.definitions.get(name, None))

    @match(basestring, choice(definitions(), Import), None)
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
    def is_name(self, _):
        return True

    @match(AST)
    def is_name(self, _):
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
        for s in scopes(node):
            candidate = ".".join([name(s), text])
            if self.exists(candidate):
                return candidate
        candidates = [text, ".".join(["quark", text])]
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
