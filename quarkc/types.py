from collections import OrderedDict
from quarkc.match import *

class Base(object):

    def repr(self, *args):
        return "%s(%s)" % (self.__class__.__name__, ", ".join([repr(a) for a in args]))

class Ref(Base):

    @match(basestring, many(delay(lambda: Ref)))
    def __init__(self, name, *params):
        self.name = name
        self.params = params

    def __hash__(self):
        return hash((self.name, self.params))

    def __eq__(self, other):
        return isinstance(other, Ref) and self.name == other.name and self.params == other.params

    def bind(self, bindings):
        if self.name in bindings:
            assert not self.params
            return bindings.get(self.name)
        else:
            return Ref(self.name, *[p.bind(bindings) for p in self.params])

    def __repr__(self, *args):
        return self.repr(self.name, *self.params)

    def __str__(self):
        if self.params:
            return "{}<{}>".format(self.name, ", ".join([str(p) for p in self.params]))
        else:
            return self.name

class Param(Base):

    @match(basestring, opt(Ref))
    def __init__(self, name, bound=None):
        self.name = name
        self.bound = bound

    def __repr__(self):
        if self.bound:
            return self.repr(self.name, self.bound)
        else:
            return self.repr(self.name)

class Type(Base):
    pass

class Typespace(object):

    def __init__(self):
        self.types = OrderedDict()
        self.resolved = OrderedDict()

    @match(basestring)
    def __getitem__(self, name):
        return self.types[name]

    @match(basestring, Type)
    def __setitem__(self, name, type):
        assert name not in self.types
        self.types[name] = type

    @match(Ref)
    def resolve(self, ref):
        if ref in self.resolved:
            return self.resolved[ref]
#        if ref.name not in self.types:
#            return ref
        type = self.types[ref.name]
        if ref.params:
            assert isinstance(type, Template)
            assert len(ref.params) == len(type.params)
            bindings = {}
            for p, v in zip(type.params, ref.params):
                bindings[p.name] = v
            type = type.bind(bindings)
        self.resolved[ref] = type
        return type

    @match(Type)
    def resolve(self, type):
        return type

    @match(Ref, basestring)
    def get(self, ref, attr):
        type = self.resolve(ref)
        assert isinstance(type, Object)
        return self.resolve(type.byname[attr].type)

    @match(Ref, many(Ref))
    def call(self, ref, *args):
        type = self.resolve(ref)
        assert isinstance(type, Callable)
        assert len(type.arguments) == len(args)
        for a1, a2 in zip(type.arguments, args):
            assert self.assignable(a1, a2)
        return self.resolve(type.result)

    @match(Ref)
    def traverse(self, ref):
        todo = [self.resolve(ref)]
        done = set()

        while todo:
            type = todo.pop()
            if type in done:
                continue
            done.add(type)
            yield type
            for ref in type.transitions:
                todo.append(self.resolve(ref))

    @match(Type, Type, opt(bool))
    def cotraverse(self, a, b, bidi=False):
        todo = [(a, b)]
        if bidi: todo.append((b, a))
        done = set()
        while todo:
            node, companion = todo.pop()
            key = (node, companion)
            if key in done:
                continue
            done.add(key)
            yield node, companion
            for n, c in self.cotransitions(node, companion):
                todo.append((n, c))

    @match(delay(lambda: Object), delay(lambda: Object))
    def cotransitions(self, obj, companion):
        for f in obj.fields:
            cofield = companion.byname.get(f.name)
            if cofield:
                yield self.resolve(f.type), self.resolve(cofield.type)
                if f.writable:
                    # invariant
                    yield self.resolve(cofield.type), self.resolve(f.type)
            else:
                yield self.resolve(f.type), None

    @match(delay(lambda: Object), None)
    def cotransitions(self, obj, companion):
        if False: yield

#    @match(delay(lambda: Object), Ref)
#    def cotransitions(self, obj, companion):
#        if False: yield

#    @match(Ref, delay(lambda: Object))
#    def cotransitions(self, obj, companion):
#        if False: yield

    @match(delay(lambda: Callable), delay(lambda: Callable))
    def cotransitions(self, callable, companion):
        # covariant
        yield self.resolve(callable.result), self.resolve(companion.result)
        minargs = min(len(callable.arguments), len(companion.arguments))
        maxargs = max(len(callable.arguments), len(companion.arguments))
        idx = 0
        while idx < minargs:
            # contravariant
            yield self.resolve(companion.arguments[idx]), self.resolve(callable.arguments[idx])
            idx += 1
        while idx < maxargs:
            if idx < len(callable.arguments):
                yield self.resolve(callable.arguments[idx]), None
            else:
                yield self.resolve(companion.arguments[idx]), None
            idx += 1

    @match(Ref, Ref)
    def assignable(self, a, b):
        return self.assignable(self.resolve(a), self.resolve(b))

    @match(Ref, Type)
    def assignable(self, a, b):
        return self.assignable(self.resolve(a), b)

    @match(Type, Ref)
    def assignable(self, a, b):
        return self.assignable(a, self.resolve(b))

    @match(Type, Type)
    def assignable(self, a, b):
        for n, m in self.cotraverse(a, b):
            if not self.compatible(n, m):
                return False
        return True

    @match(delay(lambda: Template), delay(lambda: Object))
    def compatible(self, a, b):
        return False

    @match(delay(lambda: Object), delay(lambda: Template))
    def compatible(self, a, b):
        return False

    @match(delay(lambda: Object), delay(lambda: Callable))
    def compatible(self, a, b):
        return False

    @match(delay(lambda: Callable), delay(lambda: Object))
    def compatible(self, a, b):
        return False

    @match(delay(lambda: Object), None)
    def compatible(self, a, b):
        return False

    @match(delay(lambda: Callable), None)
    def compatible(self, a, b):
        return False

    @match(delay(lambda: Object), delay(lambda: Object))
    def compatible(self, a, b):
        for f in a.fields:
            if f.name not in b.byname:
                return False
        return True

    @match(delay(lambda: Callable), delay(lambda: Callable))
    def compatible(self, a, b):
        return len(a.arguments) == len(b.arguments)

class Field(Base):

    @match(basestring, choice(Ref, delay(lambda: Callable)))
    def __init__(self, name, type):
        self.name = name
        self.type = type

    @property
    def writable(self):
        return True

    def bind(self, bindings):
        return self.__class__(self.name, self.type.bind(bindings))

    def __repr__(self):
        return self.repr(self.name, self.type)

class Final(Field):

    @property
    def writable(self):
        return False

class Object(Type):

    @match(many(Field))
    def __init__(self, *fields):
        self.fields = fields
        self.byname = {}
        for f in self.fields:
            assert f.name not in self.byname
            self.byname[f.name] = f

    @property
    def transitions(self):
        for f in self.fields:
            yield f.type

    def bind(self, bindings):
        return Object(*[f.bind(bindings) for f in self.fields])

    def __repr__(self):
        return self.repr(*self.fields)

CALLABLE = delay(lambda: Callable)

class Callable(Type):

    @match(choice(Ref, CALLABLE), many(choice(Ref, CALLABLE)))
    def __init__(self, result, *arguments):
        self.result = result
        self.arguments = arguments

    def bind(self, bindings):
        return Callable(self.result.bind(bindings), *[f.bind(bindings) for f in self.arguments])

    def __repr__(self):
        return self.repr(self.result, *self.arguments)

class Template(Type):

    @match(Param, many(Param), choice(Object, Callable))
    def __init__(self, *args):
        self.params = args[:-1]
        self.type = args[-1]

    @match(dict)
    def bind(self, bindings):
        return self.type.bind(bindings)
