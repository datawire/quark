import pytest
from collections import OrderedDict, defaultdict

from quarkc.match import *
from quarkc.parse import *
from quarkc.errors import Errors
from quarkc.symbols import Symbols

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

def check(name, content, expected=None, errors=None):
    file = parse(name, content)
    errs = Errors()
    symbols = Symbols(errs)
    symbols.add(file)
    assert errors == errs.format()
    if expected is not None:
        elided = {}
        for k, v in symbols.definitions.items():
            elided[k] = dfn_sig(v)
        assert expected == elided

###############################################################################


###############################################################################
# Utilities for generating input code that covers the many permutations
# of nested symbols possible
###############################################################################

TOP = [File]
CHILDREN = {File: (Package, Function, Class, Interface),
            Package: (Package, Function, Class, Interface),
            Interface: (TypeParam, Field, Method),
            Class: (TypeParam, Field, Method),
            Function: (Param, Local),
            Method: (Param, Local)}

def permutations(path, limit):
    last = path[-1]
    if len(path) == limit or last not in CHILDREN:
        yield path
    else:
        for type in CHILDREN[last]:
            for p in permutations(path + (type,), limit):
                yield p

def dfn_paths(limit):
    for top in TOP:
        for path in permutations((top,), limit):
            yield path

def tree(paths):
    root = OrderedDict()
    for path in paths:
        node = root
        for p in path:
            if p not in node:
                node[p] = OrderedDict()
            node = node[p]
    return root

class GenTree(object):

    @match(OrderedDict)
    def __init__(self, children):
        self.children = children

    @match(basestring)
    def __getitem__(self, name):
        key = globals()[name]
        return self.format(key, self.children.get(key, []))

    @match(choice(Function, Class, Interface, Method, Package), [many(basestring)])
    def format(self, type, children):
        if children:
            return "\n".join(children) + "\n"
        else:
            return ""

    @match(Param, [many(basestring)])
    def format(self, _, decls):
        return ", ".join(decls)

    @match(TypeParam, [many(basestring)])
    def format(self, _, decls):
        if decls:
            return "<%s>" % ", ".join(decls)
        else:
            return ""

    @match(choice(Local, Field), [many(basestring)])
    def format(self, type, fields):
        if fields:
            return "".join(["%s;\n" % f for f in fields])
        else:
            return ""

@match(basestring)
def block(code):
    if code:
        return "{\n    " + code.replace("\n", "\n    ").rstrip() + "\n}"
    else:
        return "{}"

@match(File)
def basename(pkg):
    return "f"

@match(Package)
def basename(pkg):
    return "p"

@match(Class)
def keyword(cls):
    return "class"

@match(Interface)
def keyword(iface):
    return "interface"

@match(Class)
def basename(cls):
    return "Cls"

@match(Interface)
def basename(iface):
    return "Iface"

@match(Local)
def basename(l):
    return "local"

@match(Field)
def basename(l):
    return "field"

@match(TypeParam)
def basename(t):
    return "T"

@match(Param)
def basename(p):
    return "param"

@match(Function)
def basename(f):
    return "fun"

@match(Method)
def basename(m):
    return "meth"

@match(OrderedDict)
def gen(node):
    result = OrderedDict()
    for k, v in node.items():
        subtree = gen(k, gen(v))
        if k in result:
            result[k].append(subtree)
        else:
            result[k] = [subtree]
    return GenTree(result)

@match(File, GenTree)
def gen(file, children):
    return "quark 1.0;\n\npackage {name} 1.2.3;\n\n{c[Function]}{c[Class]}{c[Interface]}{c[Package]}".format(
        name=basename(file),
        c=children
    )

@match(Package, GenTree)
def gen(pkg, children):
    return "namespace {name} {body}".format(name=basename(pkg),
                                            body=block("{c[Function]}{c[Class]}{c[Interface]}{c[Package]}"
                                                       .format(c=children)))

@match(choice(Function, Method), GenTree)
def gen(fun, children):
    return "void {name}({c[Param]}) {body}".format(c=children, name=basename(fun),
                                                   body=block("{c[Local]}".format(c=children)))

@match(choice(Class, Interface), GenTree)
def gen(cls, children):
    return "{kw} {name}{c[TypeParam]} {body}".format(kw=keyword(cls),
                                                     name=basename(cls),
                                                     c=children,
                                                     body=block("{c[Field]}{c[Method]}".format(c=children)))

@match(TypeParam, GenTree)
def gen(tp, _):
    return basename(tp)

@match(Field, GenTree)
def gen(field, _):
    return "String %s" % basename(field)

@match(Param, GenTree)
def gen(p, _):
    return "int %s" % basename(p)

@match(Local, GenTree)
def gen(l, _):
    return "float %s" % basename(l)

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
    errors="asdf:4:5: duplicate definition of asdf.foo, first occurance on asdf:3:5")


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
    errors="asdf:6:9: duplicate definition of ns.foo, first occurance on asdf:5:9")
    
@match((File, Package, many(type)))
def fixup(p):
    return p[1:]

@match((many(type),))
def fixup(p):
    return p

def symbols(paths):
    expected = {}
    for p in paths:
        p = fixup(p)
        for i in range(len(p)):
            subpath = p[:i+1]
            qualified = ".".join([basename(e) for e in subpath])
            sig = (subpath[-1], basename(subpath[-1]))
            expected[qualified] = sig
    return expected

def test_permutations():
    paths = list(dfn_paths(5))
    code = "".join(["".join(v) for v in gen(tree(paths)).children.values()])
    check("f", code, symbols(paths))

###############################################################################
