from collections import OrderedDict

# TODO: pyrsistent, hypothesis

class _Matches(object):

    def __init__(self):
        self.byname = {}

    def add(self, key, value):
        if key in self.byname:
            old = self.byname[key]
            if value != old:
                self.byname[key] = Union(old, value)
        else:
            self.byname[key] = value

def zipmatch(a, b):
    matches = _Matches()
    for za, zb in zip(a, b):
        za.do_match(zb, matches)
    return matches.byname

class Base(object):

    @property
    def kind(self):
        return self.__class__.__name__

    def __cmp__(self, other):
        return cmp(self.kind, other.kind) or self.cmp(other)

    def match(self, other):
        matches = _Matches()
        self.do_match(other, matches)
        return matches.byname

    def do_match(self, other, matches):
        assert False, "%s needs to implement do_match" % self.__class__

    def get(self, name):
        assert False, "%s has no attribute %s" % (self.__class__, name)

    def call(self, *args):
        assert False, "%s is not callable %s" % (self.__class__, args)

    def bind(self, bindings=None, **kwargs):
        if bindings:
            kwargs.update(bindings)
        return self.do_bind(kwargs)

    def do_bind(self, bindings):
        assert False, "%s must implement do_bind" % self.__class__

    def repr(self, *args):
        return "%s(%s)" % (self.__class__.__name__, ", ".join([repr(a) for a in args]))

class Type(Base):
    pass

class Leaf(Type):

    def __init__(self, name):
        self.name = name

    def cmp(self, other):
        return cmp(self.name, other.name)

    def do_match(self, other, matches):
        pass

    def do_bind(self, bindings):
        return self

    def __repr__(self):
        return self.repr(self.name)

class Param(Type):

    def __init__(self, name, bound=None):
        self.name = name
        self.bound = bound

    def cmp(self, other):
        return cmp(self.name, other.name) or cmp(self.bound, other.bound)

    def do_match(self, other, matches):
        matches.add(self.name, other)

    def get(self, name):
        if self.bound:
            return self.bound.get(name)
        else:
            return Type.get(self, name)

    def do_bind(self, bindings):
        return bindings.get(self.name, self)

    def __repr__(self):
        if self.bound:
            return self.repr(self.name, self.bound)
        else:
            return self.repr(self.name)

class Field(Base):

    def __init__(self, name, type):
        self.name = name
        self.type = type

    def cmp(self, other):
        return cmp(self.name, other.name) or cmp(self.type, other.type)

    # XXX: this is only here for Callable parameters, not used for
    # Object fields, maybe should have different class for them
    def do_match(self, other, matches):
        self.type.do_match(other, matches)

    def do_bind(self, bindings):
        return Field(self.name, self.type.bind(bindings))

    def __repr__(self):
        return self.repr(self.name, self.type)

class Object(Type):

    def __init__(self, *fields):
        self.fields = fields
        self.byname = {}
        for f in fields:
            assert f.name not in self.byname
            self.byname[f.name] = f

    def cmp(self, other):
        return cmp(self.fields, other.fields)

    def do_match(self, other, matches):
        for f in self.fields:
            f.type.do_match(other.byname[f.name].type, matches)

    def get(self, name):
        if name in self.byname:
            return self.byname[name].type
        else:
            return Type.get(self, name)

    def do_bind(self, bindings):
        return Object(*[f.bind(bindings) for f in self.fields])

    def __repr__(self):
        return self.repr(*self.fields)

class Callable(Type):

    def __init__(self, result, *params):
        self.result = result
        self.params = params

    def cmp(self, other):
        return cmp(self.result, other.result) or cmp(self.params, other.params)

    def do_match(self, other, matches):
        self.result.do_match(other.result, matches)
        for p1, p2 in zip(self.params, other.params):
            p1.type.do_match(p2.type, matches)

    def call(self, *args):
        sig = tuple([p.type for p in self.params])
        assert sig == args, (sig, args)
        return self.result

    def do_bind(self, bindings):
        return Callable(self.result.bind(bindings), *[f.bind(bindings) for f in self.params])

    def __repr__(self):
        return self.repr(self.result, *self.params)

class Union(Type):

    def __init__(self, *types):
        self.types = tuple(sorted(set([t.types if isinstance(t, Union) else t
                                       for t in types])))

    def cmp(self, other):
        return cmp(self.types, other.types)

    def __repr__(self):
        return self.repr(*self.types)
