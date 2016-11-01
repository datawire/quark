from .match import *
from .ast import *
from .parser import Parser
from .exceptions import ParseError
from parsimonious import ParseError as GParseError

import stats

@match(AST, object, opt(object))
def traverse(node, visit, leave=None):
    visit(node)
    for c in node.children:
        if c is not None:
            traverse(c, visit, leave)
    if leave:
        leave(node)

@match(AST)
def traversal(node):
    yield node
    for c in node.children:
        if c is not None:
            for n in traversal(c):
                yield n

@match([many(Package)])
def traversal(pkgs):
    for p in pkgs:
        for n in traversal(p):
            yield n

@match(AST)
def postorder_traversal(node):
    for c in node.children:
        if c is not None:
            for n in postorder_traversal(c):
                yield n
    yield node

@match([many(Package)])
def postorder_traversal(pkgs):
    for p in pkgs:
        for n in postorder_traversal(p):
            yield n

@match(AST)
def scopes(n):
    n.scopes = n.parent.scopes

@match(choice(Package, Function, Class, Interface, Method))
def scopes(s):
    s.scopes = (s,) + s.parent.scopes

@match(File)
def scopes(f):
    f.scopes = tuple([s for d in f.definitions for s in imported_scopes(d)])

@match(AST)
def imported_scopes(n):
    if False: yield

@match(Import)
def imported_scopes(imp):
    if not imp.alias:
        yield imp.path

@match(File)
def wire(file):
    return wire(file, None, file)

@match(AST, AST)
def wire(parent, child):
    return wire(parent.file, parent, child)

@match(File, choice(AST, None), AST)
def wire(file, parent, child):
    path = [parent]

    def visit(n):
        n.file = file
        n.parent = path[-1]
        scopes(n)
        if not hasattr(n, "_marked"):
            n._marked = True
            n.line, n.column = n.parent.line, n.parent.column
        path.append(n)

    def leave(n):
        path.pop()

    traverse(child, visit, leave)
    return child

@match(basestring, basestring)
def parse(name, text):
    # XXX: need to handle version here
    p = Parser()
    p._filename = name
    try:
        with stats.charge("parsimonious"):
            f = p.parse(text)
        with stats.charge("wire"):
            return wire(f)
    except GParseError, e:
        location = '%s:%s:%s: ' % (name, e.line(), e.column())
        raise ParseError("%s%s" % (location, e))
