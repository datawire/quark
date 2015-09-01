import inspect

class AST(object):

    indent = []

    def origin(self, node):
        if not hasattr(self, "node"):
            self.node = node
            self.line, self.column = self._lineinfo(node)

    def _lineinfo(self, node):
        line = 1
        column = 1
        for c in self.node.full_text[:self.node.start]:
            if c == "\n":
                line += 1
                column = 1
            else:
                column += 1
        return line, column

    def lookup(self, visitor, prefix):
        for cls in self.__class__.__mro__:
            method = "%s_%s" % (prefix, cls.__name__)
            if hasattr(visitor, method):
                return getattr(visitor, method)
        return lambda s: None

    def traverse(self, visitor):
        visit = self.lookup(visitor, "visit")
        leave = self.lookup(visitor, "leave")
        visit(self)
        if self.children:
            for c in self.children:
                if c is not None:
                    c.traverse(visitor)
        leave(self)

    def __repr__(self):
        fields = inspect.getargspec(self.__class__.__init__)[0][1:]
        if not fields: fields = ["children"]
        return "%s(%s)" % (self.__class__.__name__, ", ".join([self.format(f) for f in fields]))

    def format(self, field):
        if field in self.indent:
            return "\n (%s)" % ",\n ".join([repr(v).replace("\n", "\n ") for v in getattr(self, field)])
        else:
            return repr(getattr(self, field))

class Var(AST):

    def __init__(self, name):
        self.name = name

    @property
    def children(self):
        yield self.name

class Name(AST):

    def __init__(self, text):
        self.text = text

    def __repr__(self):
        return self.text

    @property
    def children(self):
        return ()

class Type(AST):

    def __init__(self, name, parameters=None):
        self.name = name
        self.parameters = parameters

    @property
    def children(self):
        return self.parameters

    def __repr__(self):
        if self.parameters:
            return "%s<%s>" % (self.name, ", ".join([str(s) for s in self.parameters]))
        else:
            return repr(self.name)

class Unary(AST):

    def __init__(self, op, expr):
        self.op = op
        self.expr = expr

class Binop(AST):

    def __init__(self, left, op, right):
        self.left = left
        self.op = op
        self.right = right

    @property
    def children(self):
        yield self.left
        yield self.right

class Function(AST):

    indent = ["body"]

    def __init__(self, type, name, params, body):
        self.type = type
        self.name = name
        self.params = params
        self.body = body

    @property
    def children(self):
        yield self.type
        yield self.name
        for p in self.params:
            yield p
        for b in self.body:
            yield b

class Method(Function):
    pass

class Declaration(AST):

    def __init__(self, type, name, value):
        self.type = type
        self.name = name
        self.value = value

    @property
    def children(self):
        yield self.type
        yield self.name
        yield self.value

class Param(Declaration):
    pass

class Field(Declaration):
    pass

class File(AST):

    indent = ["definitions"]

    def __init__(self, definitions):
        self.definitions = definitions

    @property
    def children(self):
        return self.definitions

class Package(AST):

    indent = ["definitions"]

    def __init__(self, name, definitions):
        self.name = name
        self.definitions = definitions

    @property
    def children(self):
        yield self.name
        for d in self.definitions:
            yield d

class Class(AST):

    indent = ["definitions"]

    def __init__(self, name, base, definitions):
        self.name = name
        self.base = base
        self.definitions = definitions

    @property
    def children(self):
        yield self.name
        yield self.base
        for d in self.definitions:
            yield d

class Attr(AST):

    def __init__(self, expr, attr):
        self.expr = expr
        self.attr = attr

class Call(AST):

    def __init__(self, expr, args):
        self.expr = expr
        self.args = args

    @property
    def children(self):
        yield self.expr
        for a in self.args:
            yield a

class Assign(AST):

    def __init__(self, lhs, rhs):
        self.lhs = lhs
        self.rhs = rhs

    @property
    def children(self):
        yield self.lhs
        yield self.rhs

class If(AST):

    indent = ["consequence"]

    def __init__(self, predicate, consequence):
        self.predicate = predicate
        self.consequence = consequence
