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
from contextlib import contextmanager
from collections import deque

from .match import match, lazy, ntuple, many, opt, choice


class _Indent(object):
    def __init__(self):
        self.indent = 0

    @contextmanager
    def __call__(self):
        self.indent += 1
        yield self.indent
        self.indent -= 1

# should pull in stuff from types base class here... would enable
# comparisons and stuff for testing, should possibly use pyrsistent or
# something like that for this stuff, although I want to see how
# pattern matching would work

class _Tree(object):

    def __init__(self):
        assert False, "%s is abstract base class" % self.__class__

    @property
    def children(self):
        assert False, "%s must implement children" % self.__class__

    __INDENT = _Indent()

    def repr(self, *args, **kwargs):
        with self.__INDENT() as i:
            sargs = [repr(a) for a in args]
            sargs += ["%s=%r" % (k, v) for k, v in kwargs.items() if v is not None]
            if sum(map(len, sargs)) > 60:
                indent = " " * i * 2
                first = "\n" + indent
                sep = ",\n" + indent
            else:
                first = ""
                sep = ", "
            return "%s(%s%s)" % (self.__class__.__name__, first, sep.join(sargs))

@match(_Tree)
def backlink(tree):
    pending = deque([tree])
    while pending:
        node = pending.popleft()
        for c in node.children:
            assert not hasattr(c, "parent"), "%s is not a tree" % tree.__class__.__name__
            c.parent = node
            pending.append(c)

def walk_dfs(tree):
    pending = deque([tree])
    while pending:
        node = pending.popleft()
        yield node
        pending.extendleft(node.children)

def walk_bfs(tree):
    pending = deque([tree])
    while pending:
        node = pending.popleft()
        yield node
        pending.extend(node.children)


class IR(_Tree):

    @staticmethod
    def load_path(path):
        with open(path) as f:
            return IR.load(f.read(), source=path)

    @staticmethod
    def load(ir_str, source='<string>'):
        g = globals()
        ir_c = compile("(" + ir_str + ",)\n", source, 'eval')
        ir_e = eval(ir_c, {}, dict((k,g[k]) for k in __all__))
        ir = ir_e[0]
        assert isinstance(ir, IR), "%s: does not contain IR" % source
        return ir

def namesplit(name):
    if ':' in name:
        package, path = name.split(':')
        path = tuple(path.split('.'))
        return package, path
    else:
        return name, ()

# A fully qualified name.

class _Name(IR):

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
        """ Name and Ref compare equal """
        return isinstance(other, _Name) and self.package == other.package and self.path == other.path

    def __hash__(self):
        return hash((self.package, self.path))

    def __repr__(self):
        return self.repr(self.package, *self.path)

# The name of a Definition.
class Name(_Name):
    pass

# A reference to a Definition
# The target must know how to import a Ref both across
# packages and from other namespaces within the same package. Does
# this need to know what type it is importing, e.g. might
# functions/interfaces/classes be imported differently?

class Ref(_Name):
    pass

# Either a quark Type or a NativeType
class AbstractType(IR):
    pass

# A Quark defined type
# XXX: Should maybe switch to Ref/Def versions of names or something.
# XXX: These are allowed to be instantiated just so that shorthand Declaration continues to work.
class Type(AbstractType):
    @match(Ref)
    def __init__(self, name):
        self.name = name

    @match(basestring)
    def __init__(self, name):
        self.__init__(Ref(name))

    @property
    def children(self):
        yield self.name

    def __eq__(self, other):
        return type(self) is type(other) and self.name == other.name

    def __hash__(self):
        return hash(self.name)

    def __repr__(self):
        return self.repr(self.name)

# A quark defined class type
class ClassType(Type):
    pass

# A quark defined interface type
class InterfaceType(Type):
    pass

# a type that maps to a native type in target language, probably the quark primitive
class NativeType(AbstractType):

    def __init__(self):
        pass

    @property
    def children(self):
        if False: yield

    def __repr__(self):
        return self.repr()

class Void(NativeType):
    pass

class Int(NativeType):
    pass

class Float(NativeType):
    pass

class String(NativeType):
    pass

class Bool(NativeType):
    pass

# a native type for a function accepting an InterfaceType and returning an InterfaceType
class Callable(NativeType):
    pass

class Declaration(IR):

    @match(basestring, AbstractType)
    def __init__(self, name, type):
        self.name = name
        self.type = type

    @match(basestring, Ref)
    def __init__(self, name, type):
        self.__init__(name, Type(type))

    @match(basestring, basestring)
    def __init__(self, name, type):
        self.__init__(name, Ref(type))

    @property
    def children(self):
        yield self.type

    def collisions(self, names):
        if self.name in names:
            yield self.name
        else:
            names.add(self.name)

    def __repr__(self):
        return self.repr(self.name, self.type)

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
        return self.repr(*self.definitions)

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
        return self.repr(*[s for s in self.statements if not isinstance(s, FieldInitialize)])

class Param(Declaration):
    pass
    
class Function(Definition):

    @match(Name, AbstractType, many(Param), Block)
    def __init__(self, name, type, *args):
        self.name = name
        self.type = type
        self.params = args[:-1]
        self.body = args[-1]

    @match(Name, Ref, many(Param), Statement)
    def __init__(self, name, type, *args):
        self.__init__(name, Type(type), *(args[:-1] + (Block(args[-1]),)))

    @match(Name, AbstractType, many(Param), Statement)
    def __init__(self, name, type, *args):
        self.__init__(name, type, *(args[:-1] + (Block(args[-1]),)))

    @property
    def children(self):
        yield self.name
        yield self.type
        for p in self.params:
            yield p
        yield self.body

    def __repr__(self):
        return self.repr(self.name, self.type, *(self.params + (self.body,)))

class Field(IR):

    @match(basestring, Type, opt(lazy('Null')))
    def __init__(self, name, type, initializer=None):
        self.type = type
        self.name = name
        self.initializer = initializer or Null()

    # XXX: poor-man private constructor :)
    @match("private", basestring, NativeType, lazy('Literal'))
    def __init__(self, _, name, type, initializer):
        self.type = type
        self.name = name
        self.initializer = initializer

    @match(basestring, Int, opt(lazy('IntLit')))
    def __init__(self, name, type, initializer=None):
        self.__init__("private", name, type, initializer or IntLit(0))

    @match(basestring, String, opt(lazy('StringLit')))
    def __init__(self, name, type, initializer=None):
        self.__init__("private", name, type, initializer or StringLit(""))

    @match(basestring, Float, opt(lazy('FloatLit')))
    def __init__(self, name, type, initializer=None):
        self.__init__("private", name, type, initializer or FloatLit(0))

    @property
    def children(self):
        yield self.type
        yield self.initializer

    def __repr__(self):
        return self.repr(self.name, self.type, self.initializer)



class Message(Declaration):

    @match(basestring, AbstractType, many(Param))
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

    @match(basestring, AbstractType, many(Param), Block)
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

class Constructor(Method):
    @match(basestring, ClassType, many(Param), Block)
    def __init__(self, name, type, *args):
        self.name = name
        self.type = type
        self.params = args[:-1]
        self.body = args[-1]


# Note that there is no concept of inheritence here, just
# implementation of interfaces. This implies that the quark FFI cannot
# accomodate subclassing, i.e. quark types cannot be subclassed from
# outside of quark, the only types quark really exports are
# interfaces, and the only external types quark allows to pass across
# its surface are interfaces.
class Class(Definition):

    @match(Name, many(InterfaceType), many(choice(Method, Field)))
    def __init__(self, name, *args):
        self.name = name
        self.implements = [a for a in args if isinstance(a, Type)]
        self.fields = [a for a in args if isinstance(a, Field)]
        self.constructors = [a for a in args if isinstance(a, Constructor)]
        self.methods = [a for a in args if isinstance(a, Method) and not isinstance(a,Constructor)]
        assert len(self.implements) + len(self.fields) + len(self.constructors) + len(self.methods) == len(args)
        assert len(self.constructors) == 1

        constructor_body = self.constructors[0].body

        initializers = tuple(FieldInitialize("private", Set(This(), f.name, f.initializer)) for f in self.fields)
        constructor_body.statements = initializers + constructor_body.statements

    @property
    def children(self):
        yield self.name
        for i in self.implements:
            yield i
        for f in self.fields:
            yield f
        for c in self.constructors:
            yield c
        for m in self.methods:
            yield m

    def __repr__(self):
        return self.repr(*([self.name] + self.implements + self.fields + self.constructors + self.methods))

# basically the same as a class but no fields
class Interface(Definition):

    @match(Name, many(InterfaceType), many(Message))
    def __init__(self, name, *args):
        self.name = name
        self.implements = [a for a in args if isinstance(a, Type)]
        self.methods = [a for a in args if isinstance(a, Message)]
        assert len(self.implements) + len(self.methods) == len(args)

    @property
    def children(self):
        yield self.name
        for i in self.implements:
            yield i
        for m in self.methods:
            yield m

    def __repr__(self):
        return self.repr(*([self.name] + self.implements + self.methods))

# code

# an expression with no children
class SimpleExpression(Expression):

    def __init__(self):
        pass

    @property
    def children(self):
        if False: yield

    def __repr__(self):
        return self.repr()

# evaluation of the implied this
class This(SimpleExpression):
    pass

# null value
class Null(SimpleExpression):
    pass

# access a Local or a Param
class Var(SimpleExpression):

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
    def __init__(self, expr, name):
        self.expr = expr
        self.name = name

    @property
    def children(self):
        yield self.expr

    def __repr__(self):
        return self.repr(self.expr, self.name)

# mutate a Field
class Set(Expression):

    @match(Expression, basestring, Expression)
    def __init__(self, expr, name, value):
        self.expr = expr
        self.name = name
        self.value = value

    @property
    def children(self):
        yield self.expr
        yield self.value

    def __repr__(self):
        return self.repr(self.expr, self.name, self.value)

# Invokes a function given the fully qualified name and arguments
class Invoke(Expression):

    @match(Ref, many(Expression))
    def __init__(self, name, *args):
        self.name = name
        self.args = args

    @property
    def children(self):
        yield self.name
        for a in self.args:
            yield a

    def __repr__(self):
        return self.repr(self.name, *self.args)

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

    @match(Ref, (many(Expression),))
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

class Literal(SimpleExpression):
    def __repr__(self):
        return self.repr(self.value)

    def __eq__(self, other):
        return type(self) is type(other) and self.value == other.value

    def __hash__(self):
        return hash(self.value)

# int literal
class IntLit(Literal):

    @match(int)
    def __init__(self, value):
        self.type = Int()
        self.value = int(value)

# float literal
class FloatLit(Literal):

    @match(float)
    def __init__(self, value):
        self.type = Float()
        self.value = float(value)

# string literal
class StringLit(Literal):

    @match(basestring)
    def __init__(self, value):
        self.type = String()
        self.value = unicode(value)

# string literal
class BoolLit(Literal):

    @match(bool)
    def __init__(self, value):
        self.type = String()
        self.value = bool(value)

# statements

class Local(Declaration, Statement):
    @match(basestring, AbstractType, opt(Expression))
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
        if self.expr:
            return self.repr(self.name, self.type, self.expr)
        else:
            return self.repr(self.name, self.type)

class Evaluate(Statement):

    @match(Expression)
    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

    def __repr__(self):
        return self.repr(self.expr)

# a specialization of Evaluate, for Class Field initialization, so
# that Constructor Block can filter them out
class FieldInitialize(Evaluate):
    @match("private", Set)
    def __init__(self, _, expr):
        self.expr = expr

    pass

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


class SimpleStatement(Statement):
    def __init__(self):
        pass

    @property
    def children(self):
        if False: yield

    def collisions(self, names):
        if False: yield

    def __repr__(self):
        return self.repr()

class Break(SimpleStatement):
    pass

class Continue(SimpleStatement):
    pass


class Check(Definition):

    @match(basestring, many(Statement))
    def __init__(self, name, *body):
        self.__init__(Name(name), Block(body))

    @match(Name, Block)
    def __init__(self, name, body):
        self.name = name
        self.body = body

    @property
    def children(self):
        yield self.name
        yield self.body

    def __repr__(self):
        return self.repr(self.name, self.body)


class NativeTestAssertion(Statement):
    pass

class AssertEqual(NativeTestAssertion):
    @match(Expression, Expression)
    def __init__(self, expected, actual):
        self.expected = expected
        self.actual = actual

    @property
    def children(self):
        yield self.expected
        yield self.actual

    def __repr__(self):
        return self.repr(self.expected, self.actual)


@match(IR)
def dfn_of(ir):
    return dfn_of(getattr(ir, "parent", None))

@match(Definition)
def dfn_of(ir):
    return ir

@match(None)
def dfn_of(ir):
    raise Exception("Calling dfn_of without an ancestor Definition, forgot to backlink()?")
    return None



__all__ = [n for n,v in globals().items() if IR in getattr(v, "__mro__", [])]
