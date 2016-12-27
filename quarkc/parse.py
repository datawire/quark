from .match import match, choice, many, opt
from .ast import (
    AST, File, Package, Callable, Class, Declaration, TypeParam, Import, NativeBlock
)
from .parser import adapter
from .exceptions import ParseError

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

@match(File, basestring)
def scope_name(f, text):
    return text

@match(AST, basestring)
def scope_name(n, text):
    return "%s.%s" % (n.scopes[0], text)

@match(AST)
def scopes(n):
    n.scopes = n.parent.scopes

@match(choice(Package, Class, Declaration, TypeParam))
def scopes(s):
    s.scopes = (scope_name(s.parent, s.name.text),) + s.parent.scopes

@match(Callable)
def scopes(s):
    if isinstance(s.body, NativeBlock):
        s.scopes = (("%s::%s" % (s.body.target, scope_name(s.parent, s.name.text))),) + s.parent.scopes
    else:
        s.scopes = (scope_name(s.parent, s.name.text),) + s.parent.scopes

@match(Import)
def scopes(s):
    if s.alias:
        s.scopes = (scope_name(s.parent, s.alias.text),) + s.parent.scopes
    else:
        s.scopes = s.parent.scopes

@match(File)
def scopes(f):
    f.scopes = tuple([s for d in f.definitions for s in imported_scopes(d)])

@match(AST)
def imported_scopes(n):
    if False: yield

@match(Import)
def imported_scopes(imp):
    if not imp.alias:
        yield ".".join([n.text for n in imp.path])

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
    with stats.charge("antlr"):
        try:
            f = adapter.parse(name, text)
        except ValueError, e:
            raise ParseError("%s\n  %s" % (name, str(e).replace("\n", "\n  ")))
    with stats.charge("wire"):
        return wire(f)
