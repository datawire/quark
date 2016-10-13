import pytest
from collections import OrderedDict, defaultdict

from quarkc.c2.match import *
from quarkc.c2.ast import *
from quarkc.c2.compiler import Compiler

###############################################################################
# Check that a given file/content produces the expected symbols or errors
###############################################################################

@match(AST)
def dfn_sig(n):
    return n.__class__, n.name.text

@match(choice(Field, Param))
def dfn_sig(n):
    return n.__class__, n.name.text

@match(Declaration)
def dfn_sig(n):
    return n.parent.__class__, n.name.text

@match([Package, many(Package)])
def dfn_sig(pkgs):
    pkg = pkgs[0]
    result = pkg.name.text
    for p in pkgs[1:]:
        assert p.name.text == result
    if pkg.name.text == "f":
        return File, result
    else:
        return pkg.__class__, result

def check(name, content, expected=None, duplicates=()):
    c = Compiler()
    c.parse(name, content)
    assert set(duplicates) == set(c.symbols.duplicates)
    if expected is not None:
        elided = {}
        for k, v in c.symbols.definitions.items():
            elided[k] = dfn_sig(v)
        assert expected == elided

###############################################################################


###############################################################################
# Utilities for generating input code that covers the many
# permutations of symbols and/or symbol conflicts possible
###############################################################################

TOP = [File, Package, Class, Function]
CHILDREN = {File: (Package, Function, Class, Interface),
            Package: (Package, Function, Class, Interface),
            Interface: (TypeParam, Field, Method),
            Class: (TypeParam, Field, Method),
            Function: (Param, Local),
            Method: (Param, Local)}

@match(basestring)
def block(code):
    if code:
        return "{\n    " + code.replace("\n", "\n    ").rstrip() + "\n}"
    else:
        return "{}"

class SymbolTree(object):

    @match(choice(File, Package, Function, Class, Interface, Method, Field, Local, TypeParam, Param))
    def __init__(self, type):
        self.type = type
        # map of name to a list of child trees
        self.children = OrderedDict()

    @match(basestring, many(lazy("SymbolTree"), min=1))
    def add(self, name, *subtrees):
        if name in self.children:
            children = self.children[name]
        else:
            children = []
            self.children[name] = children
        children.extend(subtrees)

    @match(many(type, min=1))
    def get(self, *types):
        subtrees = [(name, tree) for name in self.children for tree in self.children[name] if tree.type in types]
        return tuple([tree.code(name) for name, tree in subtrees])

    @match(basestring)
    def code(self, name):
        return self.assemble(self.type, name)

    @match(choice(Function, Method), basestring)
    def assemble(self, _, name):
        return "T {name}({params}) {body}".format(name=name, params=", ".join(self.get(Param)),
                                                  body=block("\n".join(self.get(Local))))

    @match(choice(Class, Interface), basestring)
    def assemble(self, t, name):
        tparams = self.get(TypeParam)
        if tparams:
            params = "<%s>" % ", ".join(tparams)
        else:
            params = ""
        definitions = self.get(*[c for c in CHILDREN[t] if c != TypeParam])
        return "{kw} {name}{params} {body}".format(kw="interface" if t == Interface else "class",
                                                   name=name, params=params,
                                                   body=block("\n".join(definitions)))

    @match(TypeParam, basestring)
    def assemble(self, _, name):
        return name

    @match(Param, basestring)
    def assemble(self, _, name):
        return "T %s" % name

    @match(choice(Local, Field), basestring)
    def assemble(self, _, name):
        return "T %s;" % name

    @match(Package, basestring)
    def assemble(self, t, name):
        return "namespace {name} {body}".format(name=name, body=block("\n".join(self.get(*CHILDREN[t]))))

    @match(File, basestring)
    def assemble(self, t, name):
        definitions = "\n".join(self.get(*CHILDREN[t]))
        return "quark 1.0;\n\npackage {name} 1.2.3;\n\n{definitions}".format(name=name, definitions=definitions)

    def nodes(self):
        yield self
        for trees in self.children.values():
            for tree in trees:
                for n in tree.nodes():
                    yield n

    def symbols(self, filename, name):
        if self.type in (File, Package):
            path = (name,)
        else:
            path = (filename, name)
            yield filename, (Package, filename)

        for sym, sig in self.symbols_r(path):
            yield sym, sig

    def symbols_r(self, path):
        yield ".".join(path), (Package if self.type == File else self.type, path[-1])
        if self.type == Class:
            yield ".".join(path + (path[-1],)), (Method, path[-1])
        for name, trees in self.children.items():
            for tree in trees:
                if self.type == File and tree.type == Package:
                    extended = (name,)
                else:
                    extended = path + (name,)
                for sym, sig in tree.symbols_r(extended):
                    yield sym, sig

class Namer(object):

    def __init__(self, prefix, suffix=""):
        self.prefix = prefix
        self.suffix = suffix
        self.count = 0

    def __call__(self):
        result = "%s%s%s" % (self.prefix, self.count, self.suffix)
        self.count = self.count + 1
        return result

@match(type, Namer, int)
def symtree(type, namer, depth):
    tree = SymbolTree(type)
    if depth > 0 and type in CHILDREN:
        types = CHILDREN[type]
        names = (namer() for t in CHILDREN[type])
        for name, t in zip(names, types):
            tree.add(name, symtree(t, namer, depth - 1))
    return tree

###############################################################################


###############################################################################
# Tests
###############################################################################

def test_implicit_foobar():
    check("asdf", """
    quark 1.0;
    void foo() {}
    void bar() {}
    """,
    {
        "asdf.foo": (Function, "foo"),
        "asdf.bar": (Function, "bar"),
        "asdf": (Package, "asdf")
    })

def test_implicit_foofoo():
    check("asdf", """
    quark 1.0;
    void foo() {}
    void foo() {}
    """,
    duplicates=["asdf.foo"])


def test_explicit_foobar():
    check("asdf", """
    quark 1.0;

    namespace ns {
        void foo() {}
        void bar() {}
    }
    """,
    {
        "ns.foo": (Function, "foo"),
        "ns.bar": (Function, "bar"),
        "ns": (Package, "ns")
    })

def test_explicit_foofoo():
    check("asdf", """
    quark 1.0;

    namespace ns {
        void foo() {}
        void foo() {}
    }
    """,
    duplicates=["ns.foo"])

def symerr(filename, topname, code, tree):
    expected = {}
    dups = []
    for sym, sig in tree.symbols(filename, topname):
        if sym in expected:
            prev = expected[sym]
            if prev[0] != Package or sig[0] != Package:
                dups.append(sym)
        else:
            expected[sym] = sig
    return expected, dups

def test_permutations():
    fname = "fname"
    topname = "asdf"
    depth = 5
    for t in TOP:
        tree = symtree(t, Namer("n"), 5)
        expected, dups = symerr(fname, topname, code, tree)
        assert not dups
        check(fname, tree.code(topname), expected)

def test_collisions():
    fname = "fname"
    topname = "asdf"
    depth = 5
    for t in TOP:
        tree = symtree(t, Namer("name_", "_"), depth)
        for nd in tree.nodes():
            for name in nd.children:
                nd.add(name, *[SymbolTree(c) for c in CHILDREN[nd.type]])
        code = tree.code(topname)
        expected, dups = symerr(fname, topname, code, tree)
        check(fname, code, duplicates=dups)

###############################################################################
