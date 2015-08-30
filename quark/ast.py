import inspect

class AST:

    indent = []

    def __init__(self, *children):
        self.children = children

    def origin(self, node):
        if not hasattr(self, "node"):
            self.node = node

    def traverse(self, visitor):
        visit = getattr(visitor, "visit_%s" % self.__class__.__name__, lambda s: None)
        leave = getattr(visitor, "leave_%s" % self.__class__.__name__, lambda s: None)
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

class Name(AST):

    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return self.name

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

class Function(AST):

    indent = ["body"]

    def __init__(self, type, name, params, body):
        self.type = type
        self.name = name
        self.params = params
        self.body = body

class Param(AST):

    def __init__(self, type, name):
        self.type = type
        self.name = name

class File(AST):

    indent = ["definitions"]

    def __init__(self, definitions):
        self.definitions = definitions

class Package(AST):

    indent = ["definitions"]

    def __init__(self, name, definitions):
        self.name = name
        self.definitions = definitions

class Class(AST):

    indent = ["definitions"]

    def __init__(self, name, base, definitions):
        self.name = name
        self.base = base
        self.definitions = definitions

class Attr(AST):

    def __init__(self, expr, attr):
        self.expr = expr
        self.attr = attr

class Call(AST):

    def __init__(self, expr, args):
        self.expr = expr
        self.args = args

class Assign(AST):

    def __init__(self, lhs, rhs):
        self.lhs = lhs
        self.rhs = rhs

class If(AST):

    indent = ["consequence"]

    def __init__(self, predicate, consequence):
        self.predicate = predicate
        self.consequence = consequence
