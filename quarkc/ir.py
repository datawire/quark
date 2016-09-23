from .match import *

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

    def __init__(self):
        assert False, "%s is abstract base class" % self.__class__

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

    @match(basestring, many(basestring))
    def __init__(self, package, *path):
        pkg, pfx = namesplit(package)
        self.package = pkg
        self.path = pfx
        for n in path:
            self.path += tuple(n.split('.'))
        assert len(self.path) > 1, "Expected at least one namespace-thing %s %s" % (package, path)

    @property
    def children(self):
        if False: yield

    def __eq__(self, other):
        return isinstance(other, Name) and self.package == other.package and self.path == other.path
    def __hash__(self):
        return hash((self.package, self.path))

    def __repr__(self):
        return self.repr(self.package, *self.path)

# XXX: Should maybe switch to Ref/Def versions of names or something.
class Type(IR):

    @match(Name)
    def __init__(self, name):
        self.name = name

    @match(basestring)
    def __init__(self, name):
        self.__init__(Name(name))

    @property
    def children(self):
        yield self.name

    def __repr__(self):
        return self.repr(self.name)

class Void(Type):

    def __init__(self):
        self.name = Name("q:q.void")

class Declaration(IR):

    @match(basestring, Type)
    def __init__(self, name, type):
        self.type = type
        self.name = name

    @match(basestring, Name)
    def __init__(self, name, type):
        self.__init__(name, Type(type))

    @match(basestring, basestring)
    def __init__(self, name, type):
        self.__init__(name, Name(type))

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

# A class, interface, or function.
class Definition(IR):
    pass

# Contains definitions. Renders to a buildable distribution unit.
class Package(IR):

    @match(many(Definition))
    def __init__(self, *definitions):
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

# knows how to render inside a dfn, this has to account for imports
# needed by rendered code
class Code(IR):
    pass

class Statement(Code):
    pass

class Expression(Code):
    pass

class Block(Code):

    @match(many(Statement))
    def __init__(self, *statements):
        self.statements = statements

    @match(ntuple(Statement))
    def __init__(self, statements):
        self.__init__(*statements)

    @match(Expression)
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
        return self.repr(*self.statements)

class Param(Declaration):
    pass
    
class Function(Definition):

    @match(Name, Type, many(Param), Block)
    def __init__(self, name, type, *args):
        self.name = name
        self.type = type
        self.params = args[:-1]
        self.body = args[-1]

    @match(Name, Name, many(Param), Code)
    def __init__(self, name, type, *args):
        self.__init__(name, Type(type), *(args[:-1] + (Block(args[-1]),)))

    @property
    def children(self):
        yield self.name
        yield self.type
        for p in self.params:
            yield p
        yield self.body

    def __repr__(self):
        return self.repr(self.name, self.type, *(self.params + (self.body,)))

class Field(Declaration):
    pass


class Message(Declaration):

    @match(basestring, Type, many(Param))
    def __init__(self, name, type, *args):
        self.name = name
        self.type = type
        self.params = args[:]

    @property
    def children(self):
        yield self.type
        for p in self.params:
            yield p

    def __repr__(self):
        return self.repr(self.name, self.type, *self.params)

class Method(IR):

    @match(basestring, Type, many(Param), Block)
    def __init__(self, name, type, *args):
        self.name = name
        self.type = type
        self.params = args[:-1]
        self.body = args[-1]

    @property
    def children(self):
        yield self.type
        for p in self.params:
            yield p
        yield self.body

    def __repr__(self):
        return self.repr(self.name, self.type, *(self.params + (self.body,)))

# Note that there is no concept of inheritence here, just
# implementation of interfaces. This implies that the quark FFI cannot
# accomodate subclassing, i.e. quark types cannot be subclassed from
# outside of quark, the only types quark really exports are
# interfaces, and the only external types quark allows to pass across
# its surface are interfaces.
class Class(Definition):

    @match(Name, many(Type), many(choice(Method, Field)))
    def __init__(self, name, *args):
        self.name = name
        self.implements = [a for a in args if isinstance(a, Type)]
        self.fields = [a for a in args if isinstance(a, Field)]
        self.methods = [a for a in args if isinstance(a, Method)]

    @property
    def children(self):
        yield self.name
        for i in self.implements:
            yield i
        for f in self.fields:
            yield f
        for m in self.methods:
            yield m

# basically the same as a class but no fields
class Interface(Definition):

    @match(Name, many(Type), many(Message))
    def __init__(self, name, *args):
        self.name = name
        self.implements = [a for a in args if isinstance(a, Type)]
        self.methods = [a for a in args if isinstance(a, Message)]
        assert len(self.implements) + len(self.methods) == len(args)

    @property
    def children(self):
        yield self.name
        for i in self.implements:
            yield self.i
        for m in self.methods:
            yield m

# code

# evaluation of the implied this
class This(Expression):

    def __init__(self):
        pass

    @property
    def children(self):
        if False: yield

    def __repr__(self):
        self.repr()

# access a Local or a Param
class Var(Expression):

    @match(basestring)
    def __init__(self, name):
        self.name = name

    @property
    def children(self):
        if False: yield

    def __repr__(self):
        return self.repr(self.name)

# access a Field or a Method
class Get(Expression):

    @match(Expression, basestring)
    def __init__(self, expr, attr):
        self.expr = expr
        self.attr = attr

    @property
    def children(self):
        yield self.expr

# mutate a Field
class Set(Expression):

    @match(Expression, basestring, Expression)
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

    @match(Name, many(Expression))
    def __init__(self, name, *args):
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

    @match(Expression, basestring, (many(Expression),))
    def __init__(self, expr, name, args):
        self.expr = expr
        self.name = name
        self.args = args

    @property
    def children(self):
        yield self.expr
        for a in self.args:
            yield a

    def __repr__(self):
        return self.repr(self.expr, self.name, self.args)

# Constructs an instance of a class.
class Construct(Expression):

    @match(Name, (many(Expression),))
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

    @match(Expression, (many(Expression),))
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

    @match(Name, Expression)
    def __init__(self, type, expr):
        self.type = type
        self.expr = expr

    @property
    def children(self):
        yield self.type
        yield self.expr

# literals

class Literal(Expression):
    @property
    def children(self):
        if False: yield

class Number(Literal):

    @match(int)
    def __init__(self, value):
        self.type = Name("q:q.int")
        self.value = value

    def __repr__(self):
        return str(self.value)

# statements

class Local(Declaration, Statement):
    @match(basestring, Type, opt(Expression))
    def __init__(self, name, type, expr=None):
        self.type = type
        self.name = name
        self.expr = expr

    @property
    def children(self):
        yield self.type
        if self.expr:
            yield self.expr

    def __repr__(self):
        return self.repr(self.type, self.name, self.expr)

class Evaluate(Statement):

    @match(Expression)
    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

    def __repr__(self):
        return self.repr(self.expr)

class Return(Statement):

    @match(Expression)
    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

    def __repr__(self):
        return self.repr(self.expr)

class If(Statement):

    @match(Expression, Block, Block)
    def __init__(self, predicate, consequence, alternative):
        self.predicate = predicate
        self.consequence = consequence
        self.alternative = alternative

    @match(Expression, Statement, Statement)
    def __init__(self, predicate, consequence, alternative):
        self.__init__(predicate, Block(consequence), Block(alternative))

    @match(Expression, Expression, Expression)
    def __init__(self, predicate, consequence, alternative):
        self.__init__(predicate, Block(consequence), Block(alternative))

    @match(Expression, Expression, Statement)
    def __init__(self, predicate, consequence, alternative):
        self.__init__(predicate, Block(consequence), Block(alternative))

    @match(Expression, Statement, Expression)
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

    @match(Expression, Block)
    def __init__(self, predicate, body):
        self.predicate = predicate
        self.body = body

    @match(Expression, many(Statement))
    def __init__(self, predicate, *statements):
        self.__init__(predicate, Block(statements))

    @property
    def children(self):
        yield self.predicate
        yield self.body

    def collisions(self, names):
        return self.body.collisions(names)

    def __repr__(self):
        return self.repr(self.predicate, self.body)

class Break(Statement):
    pass

class Continue(Statement):
    pass
