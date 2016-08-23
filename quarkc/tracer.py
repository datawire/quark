from .match import *
from .ast import *
from .parser import Parser
from .exceptions import ParseError
from parsimonious import ParseError as GParseError

@match(AST, object, opt(object))
def traverse(node, visit, leave=None):
    visit(node)
    for c in node.children:
        if c is not None:
            traverse(c, visit, leave)
    if leave:
        leave(node)

@match(AST)
def wire(ast):
    path = []
    def visit(n):
        if path:
            n.parent = path[-1]
        else:
            n.parent = None
        path.append(n)
    def leave(n):
        path.pop()
    traverse(ast, visit, leave)
    return ast

@match(basestring, basestring)
def parse(name, text):
    # XXX: need to handle version here
    p = Parser()
    p._filename = name
    try:
        return wire(p.parse(text))
    except GParseError, e:
        location = '%s:%s:%s: ' % (name, e.line(), e.column())
        raise ParseError("%s%s" % (location, e))

@match(choice(Package, Function, Class, Interface, Method, Declaration))
def path(n):
    return path(n.parent) + (n.name,)

@match(File)
def path(f):
    return ()

@match(choice(Local, Block))
def path(n):
    return path(n.parent)

@match(choice(Package, Function, Class, Interface, Method, Declaration))
def name(n):
    return ".".join([n.text for n in path(n)])

from collections import OrderedDict

class SymbolTable(object):

    def __init__(self):
        self.definitions = OrderedDict()

    @match(choice(Function, Class, Interface, Method, Declaration))
    def define(self, dfn):
        self.definitions[name(dfn)] = dfn

    @match(AST)
    def define(self, dfn): pass

@match(File)
def check(ast):
    symbols = SymbolTable()
    traverse(ast, symbols.define)
    print symbols.definitions.keys()
    return ast

@match(File)
def compile(ast):
    assert False, "not implemented"

def emit(ir):
    assert False, "not implemented"

if __name__ == '__main__':
    print check(parse("asdf", """
    quark 1.0;

    primitive String {
        String __add__(String other);
    }

    primitive int {
        int __add__(int other);
    }

    void foo() {}
    void bar() {}
    class Foo {
        String field;
        void foo(int fdsa) {
            String asdf = "asdf";
            int two = 1 + 1;
        }
    }

    namespace foo { namespace bar {
        void baz() {}
    }}
    """))
