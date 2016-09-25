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
