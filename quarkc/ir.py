from .dispatch import (overload, dispatch)

# Problem areas from the current backend:
#  - scoping of names (if nested in while nested in function, sometimes introduces scopes, sometimes not)
#  - mapping of names into target language (dumb languages that use captialization to mean things)
#  - importing between namespaces and/or packages
#  - sourcemaps
#  - testing backend in isolation

# Potential ordering that this could proceed.
#
#  1. Flesh out this sketch to skeletaly solve the problem areas
#     described above, e.g. make it just capable of correctly
#     compiling an if nested in a while nested in a function that is
#     imported into another namespace and another package and fully
#     capture the mapping of line numbers between input source and
#     output code while doing so.
#
#  2. Hook up skeletal version into each target language (including
#     go) and make sure the methodology for testing this is
#     satisfactory.
#
#  3. Fill in the extra bits needed to make the skeletal version
#     turing complete.
#
#  4. Wire this into a frontend. This might be the existing frontend,
#     or it might be a scope reduced frontend if the other work
#     streams have eliminated dependencies on frontend features like
#     inheritence. Hypothetically it could even be an alternative
#     frontend.


# should pull in stuff from types base class here... would enable
# comparisons and stuff for testing, should possibly use pyrsistent or
# something like that for this stuff, although I want to see how
# pattern matching would work

class IR(object):

    def repr(self, *args, **kwargs):
        sargs = [repr(a) for a in args]
        sargs += ["%s=%r" % (k, v) for k, v in kwargs.items() if v is not None]
        return "%s(%s)" % (self.__class__.__name__, ", ".join(sargs))

    @property
    def children(self):
        assert False, "%s must implement children" % self.__class__

def namesplit(name):
    if ':' in name:
        package, path = name.split(':')
        path = tuple(path.split('.'))
        return package, path
    else:
        return name, ()

# A fully qualified name. This knows how to import itself both across
# packages and from other namespaces within the same package. Does
# this need to know what type it is importing, e.g. might
# functions/interfaces/classes be imported differently?

class Name(IR):

    def __init__(self, package, *path):
        package, pfx = namesplit(package)
        self.package = package
        self.path = pfx
        for n in path:
            self.path += tuple(n.split('.'))

    @property
    def children(self):
        if False: yield

    def __repr__(self):
        return self.repr(self.package, *self.path)

class Declaration(IR):

    @overload(Name, basestring)
    def __init__(self, type, name):
        self.type = type
        self.name = name

    @overload(basestring, basestring)
    def __init__(self, type, name):
        self.type = Name(type)
        self.name = name

    @property
    def children(self):
        yield self.type

    def collisions(self, names):
        if self.name in names:
            yield self.name
        else:
            names.add(self.name)

    def __repr__(self):
        return self.repr(self.type, self.name)

class Param(Declaration):
    pass
    
class Local(Declaration):
    pass

class Field(Declaration):
    pass

# Contains definitions. Renders to a buildable distribution unit.
class Package(IR):

    def __init__(self, definitions):
        self.definitions = definitions

    @property
    def children(self):
        for d in self.definitions:
            yield d

    def __repr__(self):
        if self.definitions:
            return "Package(\n  %s)" % "\n  ".join([repr(d) for d in self.definitions])
        else:
            return "Package()"

# A class, interface, or function.
class Definition(IR):
    pass

# knows how to render inside a dfn, this has to account for imports
# needed by rendered code
class Code(IR):
    pass

class Statement(Code):
    pass

class Expression(Code):
    pass

class Block(Code):

    @overload(tuple)
    def __init__(self, statements):
        self.statements = statements

    @overload(Statement)
    def __init__(self, statement):
        self.__init__((statement,))

    @overload(Expression)
    def __init__(self, expr):
        self.__init__(Evaluate(expr))

    @property
    def children(self):
        for s in self.statements:
            yield s

    def collisions(self, names):
        for s in self.statements:
            for c in s.collisions(names):
                yield c

    def __repr__(self):
        return self.repr(self.statements)

class Function(Definition):

    @overload(Name, Name, tuple, Code)
    def __init__(self, name, type, params, body):
        self.name = name
        self.type = type
        self.params = params
        self.body = body

    @property
    def children(self):
        yield self.name
        yield self.type
        for p in self.params:
            yield p
        yield self.body

    def __repr__(self):
        return self.repr(self.name, self.type, self.params, self.body)

# Note that there is no concept of inheritence here, just
# implementation of interfaces. This implies that the quark FFI cannot
# accomodate subclassing, i.e. quark types cannot be subclassed from
# outside of quark, the only types quark really exports are
# interfaces, and the only external types quark allows to pass across
# its surface are interfaces.
class Class(Definition):

    @overload(Name, tuple, tuple, tuple)
    def __init__(self, name, implements, methods, fields):
        self.name = name
        self.implements = implements
        self.methods = methods
        self.fields = fields

    @property
    def children(self):
        yield self.name
        for i in self.implements:
            yield i
        for m in self.methods:
            yield m
        for f in self.fields:
            yield f

# basically the same as a class but no fields
class Interface(Definition):

    @overload(Name, tuple, tuple)
    def __init__(self, name, implements, methods):
        self.name = name
        self.implements = implements
        self.methods = methods

    @property
    def children(self):
        yield self.name
        for i in self.implements:
            yield self.i
        for m in self.methods:
            yield m

class Method(IR):

    @overload(basestring, Name, Block)
    def __init__(self, name, type, params, body):
        self.name = name
        self.type = type
        self.params = params
        self.body = body

    @property
    def children(self):
        yield self.type
        for p in self.params:
            yield p
        yield b

    def __repr__(self):
        return self.repr(self.name, self.type, self.params, self.body)

# code

class This(Expression):
    pass

class Var(Expression):

    def __init__(self, name):
        self.name = name

    @property
    def children(self):
        if False: yield

    def __repr__(self):
        return self.repr(self.name)

class Get(Expression):

    @overload(Expression, basestring)
    def __init__(self, expr, attr):
        self.expr = expr
        self.attr = attr

    @property
    def children(self):
        yield self.expr

class Set(Expression):

    @overload(Expression, basestring, Expression)
    def __init__(self, expr, attr, value):
        self.expr = expr
        self.attr = attr
        self.value = value

    @property
    def children(self):
        yield self.expr
        yield self.value

# Invokes a function given the fully qualified name and arguments
class Invoke(Expression):

    @overload(Name, tuple)
    def __init__(self, name, args):
        self.name = name
        self.args = args

    @property
    def children(self):
        yield self.name
        for a in self.args:
            yield a

    def __repr__(self):
        return self.repr(self.name, self.args)

# Invokes a method on an object
class Send(Expression):

    @overload(Expression, basestring, tuple)
    def __init__(self, obj, name, args):
        self.obj = obj
        self.name = name
        self.args = args

    @property
    def children(self):
        yield self.obj
        yield self.name
        for a in self.args:
            yield a

    def __repr__(self):
        return self.repr(self.obj, self.name, self.args)

# Constructs an instance of a class.
class Construct(Expression):

    @overload(Name, tuple)
    def __init__(self, name, args):
        self.name = name
        self.args = args

    @property
    def children(self):
        yield self.name
        for a in self.args:
            yield a

    def __repr__(self):
        return self.repr(self.name, self.args)

# Invokes a callable expression.
class Call(Expression):

    @overload(Expression, tuple)
    def __init__(self, expr, args):
        self.expr = expr
        self.args = args

    @property
    def children(self):
        yield self.expr
        for a in self.args:
            yield a

    def __repr__(self):
        return self.repr(self.expr, self.args)

class Cast(Expression):

    @overload(Name, Expression)
    def __init__(self, type, expr):
        self.type = type
        self.expr = expr

    @property
    def children(self):
        yield self.type
        yield self.expr

# literals

# ...

# statements

class Evaluate(Statement):

    @overload(Expression)
    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

    def __repr__(self):
        return self.repr(self.expr)

class Return(Statement):

    @overload(Expression)
    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

    def __repr__(self):
        return self.repr(self.expr)

class If(Statement):

    @overload(Expression, Block, Block)
    def __init__(self, predicate, consequence, alternative):
        self.predicate = predicate
        self.consequence = consequence
        self.alternative = alternative

    @overload(Expression, tuple, tuple)
    def __init__(self, predicate, consequence, alternative):
        self.__init__(predicate, Block(consequence), Block(alternative))

    @overload(Expression, Expression, Expression)
    def __init__(self, predicate, consequence, alternative):
        self.__init__(predicate, Block(consequence), Block(alternative))

    @property
    def children(self):
        yield self.predicate
        yield self.consequence
        yield self.alternative

    def collisions(self, names):
        for c in self.consequence.collisions(names):
            yield c
        for c in self.alternative.collisions(names):
            yield c

    def __repr__(self):
        return self.repr(self.predicate, self.consequence, self.alternative)

class While(Statement):

    @overload(Expression, Block)
    def __init__(self, predicate, body):
        self.predicate = predicate
        self.body = body

    @property
    def children(self):
        yield self.predicate
        yield self.body

    def collisions(self, names):
        return self.body.collisions(names)

    @overload(Expression, tuple)
    def __init__(self, predicate, body):
        self.__init__(predicate, Block(body))

    def __repr__(self):
        return self.repr(self.predicate, self.body)

class Break(Statement):
    pass

class Continue(Statement):
    pass
