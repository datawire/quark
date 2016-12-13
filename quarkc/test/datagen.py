from quarkc.match import match, choice, many, opt, lazy
from collections import OrderedDict
from types import GeneratorType

@match(choice(int, long))
def typeof(pyval):
    return "int"

@match(choice(int, long))
def exprof(pyval):
    return str(pyval)

@match(basestring)
def typeof(pyval):
    return "String"

@match(basestring)
def exprof(pyval):
    # XXX
    return repr(pyval).replace("'", '"');

@match(bool)
def typeof(pyval):
    return "bool"

@match(bool)
def exprof(pyval):
    if pyval:
        return "true"
    else:
        return "false"

@match(float)
def typeof(pyval):
    return "float"

@match(float)
def exprof(pyval):
    return str(pyval)

@match(None)
def typeof(pyval):
    return "Any"

@match(None)
def exprof(pyval):
    return "null"

class Value(object):

    @match(lazy("Value"))
    def equals(self, other):
        return self.type == other.type and self.equals_value(other)

    @property
    def quoted(self):
        return self.expr.replace('"', '\\"')

class Atom(Value):

    def __init__(self, pyval):
        self.pyval = pyval
        self.type = typeof(pyval)

    @match(lazy("Atom"))
    def equals_value(self, other):
        # XXX: do floats need snowflake comparison?
        return self.pyval == other.pyval

    @match(basestring)
    def store(self, var):
        return "{self.type} {var} = {self.expr};".format(self=self, var=var)

    @property
    def expr(self):
        return exprof(self.pyval)

    def __str__(self):
        return self.expr

class Scalar(Value):

    @match(Atom)
    def __init__(self, atom):
        self.type = "Scalar"
        self.atom = atom

    @match(lazy("Scalar"))
    def equals_value(self, other):
        # XXX: do floats need snowflake comparison?
        return self.atom.equals(other.atom)

    @match(basestring)
    def store(self, var):
        return "{self.type} {var} = {self.expr};".format(self=self, var=var)

    @property
    def expr(self):
        return "unsafe(%s).asScalar()" % self.atom.expr

class List(Value):

    @match(basestring, many(Value))
    def __init__(self, element_type, *values):
        for v in values:
            assert v.type == element_type
        self.type = "List<%s>" % element_type
        self.element_type = element_type
        self.values = values

    @match(lazy("List"))
    def equals_value(self, other):
        if len(self.values) != len(other.values):
            return False
        for a, b in zip(self.values, other.values):
            if not a.equals(b):
                return False
        return True

    @match(basestring)
    def store(self, var):
        tmps = []
        pres = []
        for v in self.values:
            tmp = "%s_tmp%s" % (var, len(tmps))
            tmps.append(tmp)
            pres.append(v.store(tmp))
        return "{pre}\n    {self.type} {var} = [{tmps}];".format(self=self, tmps=", ".join(tmps),
                                                                 var=var,
                                                                 pre="\n    ".join(pres))

    @property
    def expr(self):
        return "[%s]" % ", ".join(v.expr for v in self.values)

    def __str__(self):
        return self.expr

class Map(Value):

    @match(basestring, basestring, many((choice(Scalar, Atom), Value)))
    def __init__(self, key, value, *entries):
        for k, v in entries:
            assert k.type == key, (k.type, key)
            assert v.type == value, (v.type, value)
        self.type = "Map<%s,%s>" % (key, value)
        self.entries = entries

    @match(lazy("Map"))
    def equals_value(self, other):
        if len(self.entries) != len(other.entries):
            return False
        for (ka, va), (kb, vb) in zip(self.entries, other.entries):
            if not ka.equals(kb):
                return False
            if not va.equals(vb):
                return False
        return True

    @match(basestring)
    def store(self, var):
        tmps = []
        pres = []
        for k, v in self.entries:
            ktmp = "%s_ktmp%s" % (var, len(tmps))
            vtmp = "%s_vtmp%s" % (var, len(tmps))
            tmps.append((ktmp, vtmp))
            pres.append(v.store(ktmp))
            pres.append(v.store(vtmp))
        return "{pre}\n    {self.type} {var} = {{{tmps}}};".format(self=self,
                                                                   tmps=", ".join(("%s: %s" % e for e in tmps)),
                                                                   var=var,
                                                                   pre="\n    ".join(pres))

    @property
    def expr(self):
        return "{%s}" % ", ".join("%s: %s" % e for e in self.entries)

    def __str__(self):
        return self.expr

class Any(Value):

    @match(choice(Value, None))
    def __init__(self, value):
        self.type = "Any"
        self.value = value

    @match(lazy("Any"))
    def equals_value(self, other):
        return self.convert().equals(other.convert())

    @match()
    def convert(self):
        return self.convert(self.value)

    @match(List)
    def convert(self, lst):
        return List("Any", *(any(v) for v in lst.values))

    @match(Map)
    def convert(self, map):
        return Map("Scalar", "Any", *[(scalar(k), any(v)) for k, v in map.entries])

    @match(Value)
    def convert(self, v):
        return v

    @match(basestring)
    def store(self, var):
        tmp = var + "_tmp"
        pre = self.value.store(tmp)
        return "{pre}\n    {self.type} {var} = unsafe({tmp});".format(pre=pre, self=self, var=var, tmp=tmp)

    @property
    def expr(self):
        return "unsafe(%s)" % self.value.expr

    def __str__(self):
        return self.expr

@match(Any)
def any(a):
    return a

@match(Scalar)
def any(s):
    return Any(s.atom)

@match(Value)
def any(a):
    return Any(a)

@match(Scalar)
def scalar(s):
    return s

@match(Atom)
def scalar(a):
    return Scalar(a)

class DataSet(object):

    SCALARS = ("bool", "int", "float", "String")
    HASHABLE = SCALARS + ("Scalar",)

    def __init__(self):
        self.data = OrderedDict()
        self.counters = {}
        self.count = 0

    @property
    def types(self):
        return self.data.keys()

    @match(many(Value, min=1))
    def add(self, *values):
        for v in values:
            if v.type not in self.data:
                self.data[v.type] = []
            self.data[v.type].append(v)
            self.count += 1

    @match(GeneratorType)
    def add(self, values):
        self.add(*values)

    @match(int, many(basestring))
    def values(self, n, *types):
        """
        Produce n values of the optionally specified types. If no
        types are specifed then produce values of any type in the
        dataset.
        """
        if not types: types = self.types


        result = []
        for i in range(n):
            t = types[i % len(types)]
            if t not in self.counters:
                self.counters[t] = 0
            vals = self.data[t]
            result.append(vals[self.counters[t] % len(vals)])
            self.counters[t] += 1
        return result

    @match(int, many(basestring))
    def lists(self, n, *types):
        """
        Builds lists from size zero up to size n using the data in the
        dataset. The element type of the list can be restricted using
        the optional types argument. If no types are specified, the
        types argument will be defaulted to any available types in the
        dataset.
        """
        if not types: types = self.types
        result = []
        for t in types:
            for i in range(n):
                result.append(List(t, *self.values(i, t)))
        return result

    @match(int, opt((many(basestring),)), opt((many(basestring),)))
    def maps(self, n, key_types=(), value_types=()):
        """
        Builds maps from size zero up to size n using the data in the
        dataset. The key_types and value_types arguments may be used
        to restrict the set of key_types and value_types produced. If
        not present key_types will default to all available (and
        permitted) types in the dataset, and the value_types will
        default to all available types in the dataset.
        """
        if not key_types:
            key_types = (t for t in self.types if t in self.HASHABLE)
        if not value_types:
            value_types = self.types
        result = []
        for kt in key_types:
            for vt in value_types:
                for i in range(n):
                    result.append(Map(kt, vt, *zip(self.values(i, kt), self.values(i, vt))))
        return result

DATA = DataSet()

DATA.add(Atom(True), Atom(False))
DATA.add(Atom(i) for i in range(-3, 4) + range(2**31 - 3, 2**31 + 4) + range(2**32 - 3, 2**32 + 4))
DATA.add(Atom(f) for f in (0.0, -0.0, 3.14))
DATA.add(Atom(s) for s in ("", "Hello World!", "pi", "pie", " ", "\n", "asdf\n"))
DATA.add(*(scalar(v) for v in DATA.values(DATA.count)))
DATA.add(*(any(v) for v in DATA.values(DATA.count)))

N = 3

# first order
LISTS = DATA.lists(N)
MAPS=[]#MAPS = DATA.maps(N)
DATA.add(*(Any(v) for v in LISTS + MAPS))

DATA.add(*LISTS)
#DATA.add(*MAPS)

# second order
NESTED_LISTS = DATA.lists(N)
#NESTED_MAPS = DATA.maps(N)
DATA.add(*NESTED_LISTS)
#DATA.add(*NESTED_MAPS)

count = 1

for values in DATA.data.values():
    for value in values:
        while True:
            other = DATA.values(1, value.type)[0]
            if other.equals(value):
                continue
            else:
                break
        print """
void test_{mangled}_{count}() {{
    {value_decl}
    {copy_decl}
    {other_decl}
//    assert(same(value, value), "same {value.type}: {value.quoted}");
//    assert(!same(value, copy), "different {value.type}: {value.quoted}");
    assert(value == copy, "equals {value.type}: {value.quoted}");
    assert(!(value == other), "different {value.type}: {value.quoted} {other.quoted}");
    assertEqual(true, true);
}}
        """.format(mangled=value.type.replace("<", "_").replace(">", "_").replace(",", "_"),
                   count=count, value=value, other=other,
                   value_decl=value.store("value"),
                   copy_decl=value.store("copy"),
                   other_decl=other.store("other"))
        count += 1
