from .ast import *
from .match import *
from .parse import traversal
from .helpers import lineinfo
from collections import OrderedDict

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

class Symbols(object):

    def __init__(self):
        self.definitions = OrderedDict()
        self.duplicates = OrderedDict()

    @match(choice(definitions(), Package))
    def is_symbol(self, _):
        return True

    @match(Import)
    def is_symbol(self, imp):
        return True if imp.alias else False

    @match(AST)
    def is_symbol(self, _):
        return False

    @match(definitions())
    def define(self, dfn):
        self.define(name(dfn), dfn)

    @match(basestring, choice(definitions(), [many(Package)], Import))
    def define(self, name, dfn):
        if name in self.definitions:
            if name in self.duplicates:
                self.duplicates[name].append(dfn)
            else:
                self.duplicates[name] = [dfn]
        else:
            self.definitions[name] = dfn

    @match(Package)
    def define(self, pkg):
        n = name(pkg)
        if n in self.definitions:
            prev = self.definitions[n]
            if isinstance(prev, AST):
                if n in self.duplicates:
                    self.duplicates[n].append(pkg)
                else:
                    self.duplicates[n] = [pkg]
            else:
                prev.append(pkg)
        else:
            self.definitions[n] = [pkg]

    @match(Import)
    def define(self, imp):
        if imp.alias:
            self.define(name(imp), imp)
        else:
            assert False

    @match(Type)
    def qualify(self, type):
        return self.qualify(type, name(type.path))

    @match(Var)
    def qualify(self, var):
        return self.qualify(var.name)

    @match(Name)
    def qualify(self, name):
        return self.qualify(name, name.text)

    @match(AST, basestring)
    def qualify(self, node, text):
        for s in scopes(node):
            candidate = ".".join([name(s), text])
            if candidate in self.definitions:
                return candidate
        candidates = [text, ".".join(["quark", text])]
        for candidate in candidates:
            if candidate in self.definitions:
                return candidate
        raise KeyError("%s: no such symbol %s" % (lineinfo(node), text))

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
