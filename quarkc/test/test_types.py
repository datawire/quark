"""
Tests for quarkc.types.
"""
from quarkc.compiler import Compiler
from quarkc.match import match, choice, many
from quarkc.ast import (
    AST, Package, Declaration, Local, Param, Class, Function, PrimitiveLiteral, If, While, Block, Assign, ExprStmt,
    Return, Call, Attr, Var, TypeParam, List, Map, Null
)
from quarkc.parse import traversal
from quarkc.symbols import Self, Boxed, Nulled
from quarkc.errors import InvalidInvocation, InvalidAssignment, Uninferable
from quarkc import typespace as types

class Base(object):

    def __ne__(self, other):
        return not (self == other)

class Constant(Base):

    def __init__(self, name):
        self.name = name

    def __eq__(self, other):
        return isinstance(other, Constant) and self.name == other.name

    def __repr__(self):
        return self.name

DECLARE = Constant("DECLARE")
RETURN = Constant("RETURN")
IF = Constant("IF")
WHILE = Constant("WHILE")
CALLABLE = Constant("CALLABLE")
TEMPLATE = Constant("TEMPLATE")
UNKNOWN = Constant("UNKNOWN")
ASSIGN = Constant("ASSIGN")
VIOLATION = Constant("VIOLATION")
UNINFERABLE = Constant("UNINFERABLE")

def denest(t):
    if isinstance(t, tuple) and len(t) == 1:
        return t[0]
    else:
        return t

@match(choice(AST, [many(Package)]))
def exclude(n):
    return False

@match(Declaration)
def exclude(d):
    return exclude(d, d.parent)

@match(Declaration, Local)
def exclude(d, p):
    return True

@match(Param, AST)
def exclude(d, p):
    return True

@match(Declaration, AST)
def exclude(d, p):
    return False

def vcheck(c, node, result):
    for n in traversal(node):
        if n in c.types.violations and n not in c.reported:
            c.reported.add(n)
            return (VIOLATION, denest(tuple([vsig(v) for v in c.types.violations[n]])), result)
    return result

@match(InvalidInvocation)
def vsig(v):
    return v.expected, v.actual

@match(InvalidAssignment)
def vsig(v):
    return typesig(v.target), typesig(v.value)

@match(Uninferable)
def vsig(v):
    return (UNINFERABLE, str(v.node))

@match(Compiler)
def typesigs(c):
    c.reported = set()
    result = {}
    for sym, node in c.symbols.definitions.items():
        if exclude(node): continue
        sig = typesig(c, node)
        if sig is not None:
            result[sym] = sig
    return result

@match(types.Callable)
def typesig(c):
    return (CALLABLE, typesig(c.result)) + tuple([typesig(a) for a in c.arguments])

@match(types.Object)
def typesig(o):
    return set(o.byname.keys())

@match(types.Template)
def typesig(t):
    return (TEMPLATE,) + tuple(p.name for p in t.params) + (typesig(t.type),)

@match(types.UnresolvedField)
def typesig(u):
    return (UNKNOWN, typesig(u.type), u.name)

@match(types.Unresolvable)
def typesig(u):
    if u.un:
        return (UNKNOWN, typesig(u.un))
    else:
        return UNKNOWN

@match(types.Ref)
def typesig(r):
    return str(r)

@match(Compiler, [many(Package)])
def typesig(c, pkgs):
    return None

@match(Compiler, choice(Class, TypeParam))
def typesig(c, cls):
    return None

@match(Compiler, Function)
def typesig(c, fun):
    sig = [typesig(c.types.node(fun))] + [typesig(c, p) for p in fun.params]
    if fun.body:
        sig.extend(typesig(c, fun.body))
    return vcheck(c, fun, denest(tuple(sig)))

@match(Compiler, PrimitiveLiteral)
def typesig(c, l):
    return vcheck(c, l, typesig(c.types[l]))

@match(Compiler, If)
def typesig(c, if_):
    result = (IF, typesig(c, if_.predicate), denest(typesig(c, if_.consequence)))
    if if_.alternative:
        result += (denest(typesig(c, if_.alternative)),)
    return vcheck(c, if_, result)

@match(Compiler, While)
def typesig(c, wh):
    return vcheck(c, wh, (WHILE, typesig(c, wh.condition), denest(typesig(c, wh.body))))

@match(Compiler, Block)
def typesig(c, block):
    return vcheck(c, block, tuple([typesig(c, s) for s in block.statements]))

@match(Compiler, Local)
def typesig(c, l):
    return vcheck(c, l, typesig(c, l.declaration))

@match(Compiler, choice(Declaration))
def typesig(c, nd):
    sig = str(c.types[nd])
    if nd.value:
        return vcheck(c, nd, (DECLARE, nd.name.text, sig, typesig(c, nd.value)))
    else:
        return vcheck(c, nd, (DECLARE, nd.name.text, sig))

@match(Compiler, Assign)
def typesig(c, ass):
    return vcheck(c, ass, (ASSIGN, typesig(c, ass.lhs), typesig(c, ass.rhs)))

@match(Compiler, Return)
def typesig(c, r):
    if r.expr is not None:
        return vcheck(c, r, (RETURN, typesig(c, r.expr)))
    return vcheck(c, r, (RETURN, typesig(types.Ref("quark.void"))))

@match(Compiler, choice(ExprStmt))
def typesig(c, stmt):
    return vcheck(c, stmt, typesig(c, stmt.expr))

@match(Compiler, choice(Call, Attr, Var, Self, List, Map, Null))
def typesig(c, nd):
    return vcheck(c, nd, typesig(c.types[nd]))

@match(Compiler, choice(Boxed, Nulled))
def typesig(c, nd):
    return None

def check(name, content, expected):
    c = Compiler()
    c.parse(name, content)
    c.check_symbols()
    c.check_types()
    assert expected == typesigs(c)

# XXX: if/while implies usage of bool!

def test_check():
    check("asdf", """
    namespace quark {
        interface void {}
        interface bool {}
        interface int {
            int __add__(int i);
            int __sub__(int i);
            bool __lt__(int i);
        }
        interface float {}
    }
    void foo(void a) {
        int b;
        void c = foo(a);
        foo(b);
    }

    float floaty(float a) {
        float b = 1.0;
        return a;
    }

    int fib(int n) {
        if (n < 2) {
            return n;
        } else {
            return fib(n-1) + fib(n-2);
        }
    }

    class Foo {
        int n = 0;
        int get() {
            return n;
        }
    }
    """,
    {'quark.int.__add__': ((CALLABLE, 'quark.int', 'quark.int'),
                           (DECLARE, 'i', 'quark.int')),
     'quark.int.__sub__': ((CALLABLE, 'quark.int', 'quark.int'),
                           (DECLARE, 'i', 'quark.int')),
     'quark.int.__lt__': ((CALLABLE, 'quark.bool', 'quark.int'),
                          (DECLARE, 'i', 'quark.int')),
     'asdf.foo': ((CALLABLE, 'quark.void', 'quark.void'),
                  (DECLARE, 'a', 'quark.void'),
                  (DECLARE, 'b', 'quark.int'),
                  (DECLARE, 'c', 'quark.void', 'quark.void'),
                  'quark.void'),
     'asdf.floaty': ((CALLABLE, 'quark.float', 'quark.float'),
                     (DECLARE, 'a', 'quark.float'),
                     (DECLARE, 'b', 'quark.float', 'quark.float'),
                     (RETURN, 'quark.float')),
     'asdf.fib': ((CALLABLE, 'quark.int', 'quark.int'),
                  (DECLARE, 'n', 'quark.int'),
                  (IF, 'quark.bool',
                   (RETURN, 'quark.int'),
                   (RETURN, 'quark.int'))),
     'asdf.Foo.Foo': (CALLABLE, 'asdf.Foo'),
     'asdf.Foo.get': ((CALLABLE, 'quark.int'), (RETURN, 'quark.int')),
     'asdf.Foo.get.self': 'asdf.Foo',
     'asdf.Foo.n': (DECLARE, 'n', 'quark.int', 'quark.int')})

def test_unknown_field():
    check("f",
          """
          class C {}

          C foo() {
              C.foo;
          }
          """,
          {
              'f.C.C': (CALLABLE, 'f.C'),
              'f.foo': ((CALLABLE, 'f.C'),
                        (UNKNOWN, 'f.C', 'foo'))
          })


def test_templated_fields():
    check("f",
          """
          class X {}
          class C<T> {
              D<T> foo;
              D<T> bar() {
                  return foo;
              }
          }

          class D<T> { }

          C<X> fun() {
              C<X> f = new C<X>();
              D<X> g = f.foo;
              D<X> h = f.bar();
          }
          """,
          {
              'f.X.X': (CALLABLE, 'f.X'),
              'f.C.C': (TEMPLATE, 'f.C.T', (CALLABLE, 'f.C<f.C.T>')),
              'f.D.D': (TEMPLATE, 'f.D.T', (CALLABLE, 'f.D<f.D.T>')),
              'f.C.foo': (DECLARE, 'foo', 'f.D<f.C.T>'),
              'f.C.bar': ((CALLABLE, 'f.D<f.C.T>'), (RETURN, 'f.D<f.C.T>')),
              'f.C.bar.self': 'f.C',
              'f.fun': ((CALLABLE, 'f.C<f.X>'),
                        (DECLARE, 'f', 'f.C<f.X>', 'f.C<f.X>'),
                        (DECLARE, 'g', 'f.D<f.X>', 'f.D<f.X>'),
                        (DECLARE, 'h', 'f.D<f.X>', 'f.D<f.X>'))
          })

def check_with_primitives(code, signature):
    prolog = """
        namespace quark {
            primitive void {}
            primitive Any {}
            primitive bool {
                bool __eq__(bool b);
            }
            primitive int {
                int __add__(int n);
            }
            primitive float {
                float __add__(float f);
            }
            primitive String {
                String substring(int start, int len);
            }
           primitive List<T> {}
           primitive Map<K,V> {}
        }
    """
    prolog_sig = {
        'quark.void.void': (CALLABLE, 'quark.void'),
        'quark.Any.Any': (CALLABLE, 'quark.Any'),
        'quark.bool.bool': (CALLABLE, 'quark.bool'),
        'quark.bool.__eq__': ((CALLABLE, 'quark.bool', 'quark.bool'),
                              (DECLARE, 'b', 'quark.bool')),
        'quark.int.int': (CALLABLE, 'quark.int'),
        'quark.int.__add__': ((CALLABLE, 'quark.int', 'quark.int'),
                              (DECLARE, 'n', 'quark.int')),
        'quark.float.float': (CALLABLE, 'quark.float'),
        'quark.float.__add__': ((CALLABLE, 'quark.float', 'quark.float'),
                              (DECLARE, 'f', 'quark.float')),
        'quark.String.String': (CALLABLE, 'quark.String'),
        'quark.String.substring': ((CALLABLE, 'quark.String', 'quark.int', 'quark.int'),
                                   (DECLARE, 'start', 'quark.int'),
                                   (DECLARE, 'len', 'quark.int')),
        'quark.List.List': (TEMPLATE,
                            'quark.List.T',
                            (CALLABLE, 'quark.List<quark.List.T>')),
        'quark.Map.Map': (TEMPLATE,
                          'quark.Map.K',
                          'quark.Map.V',
                          (CALLABLE, 'quark.Map<quark.Map.K, quark.Map.V>'))
    }
    signature.update(prolog_sig)
    check("f", prolog + code, signature)

def test_assignment_violation():
    check_with_primitives(
        """
        int foo() {
            String x = 3;
            int y = "asdf";
            x = y;
            y = x;
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.int'),
                      (VIOLATION, ('quark.String', 'quark.int'), (DECLARE, 'x', 'quark.String', 'quark.int')),
                      (VIOLATION, ('quark.int', 'quark.String'), (DECLARE, 'y', 'quark.int', 'quark.String')),
                      (VIOLATION, ('quark.String', 'quark.int'), (ASSIGN, 'quark.String', 'quark.int')),
                      (VIOLATION, ('quark.int', 'quark.String'), (ASSIGN, 'quark.int', 'quark.String'))),
        })

def test_return_violation():
    check_with_primitives(
        """
        int foo() {
            return "three";
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.int'),
                      (VIOLATION, ('quark.int', 'quark.String'), (RETURN, 'quark.String')))
        })

def test_call_violation():
    check_with_primitives(
        """
        void foo(String s) {
          foo(3);
          foo("three", 4);
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.void', 'quark.String'),
                      (DECLARE, 's', 'quark.String'),
                      (VIOLATION, ('quark.String', 'quark.int'), 'quark.void'),
                      (VIOLATION, (1, 2), 'quark.void'))
        }
    )

def test_bool_violation():
    check_with_primitives(
        """
        void foo() {
           if (foo()) {}
           while (foo()) {}
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.void'),
                      (VIOLATION, ('quark.bool', 'quark.void'), (IF, 'quark.void', ())),
                      (VIOLATION, ('quark.bool', 'quark.void'), (WHILE, 'quark.void', ())))
        }
    )

def test_conversion():
    check_with_primitives(
        """
        class X {
            String field;
        }
        class Y {
            X to_f_X();
        }
        void foo() {
            X x = new Y();
        }
        """,
        {
            'f.X.X': (CALLABLE, 'f.X'),
            'f.X.field': (DECLARE, 'field', 'quark.String'),
            'f.Y.Y': (CALLABLE, 'f.Y'),
            'f.Y.to_f_X': (CALLABLE, 'f.X'),
            'f.foo': ((CALLABLE, 'quark.void'), (DECLARE, 'x', 'f.X', 'f.Y'))
        }
    )

def test_infer_return_list():
    check_with_primitives(
        """
        List<int> foo() {
            return [];
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.List<quark.int>'), (RETURN, 'quark.List<quark.int>'))
        })

def test_infer_return_map():
    check_with_primitives(
        """
        Map<String,int> foo() {
            return {};
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.Map<quark.String, quark.int>'), (RETURN, 'quark.Map<quark.String, quark.int>'))
        })

def test_naked_return():
    check_with_primitives(
        """
        void foo() {
            return;
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.void'), (RETURN, 'quark.void'))
        })

def test_double_get():
    check_with_primitives(
        """
        void foo() {
            "asdf".foo.bar;
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.void'), (UNKNOWN, (UNKNOWN, 'quark.String', 'foo')))
        })

def test_uninferable():
    check_with_primitives(
        """
        void foo() {
            [];
            {};
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.void'),
                      (VIOLATION, (UNINFERABLE, '[]'), UNKNOWN),
                      (VIOLATION, (UNINFERABLE, '{}'), UNKNOWN))
        })

def test_literals():
    check_with_primitives(
        """
        void foo() {
            "asdf";
            3;
            3.14;
            null;
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.void'), 'quark.String', 'quark.int', 'quark.float', 'quark.Any')
        })

def test_no_new():
    # treating a this situation as this kind of type error is a bit
    # weird, but better than the compiler blowing up
    check_with_primitives(
        """
        void foo() {
            List<int> 3;
        }
        """,
        {
            'f.foo': ((CALLABLE, 'quark.void'),
                      (UNKNOWN, (UNKNOWN, (UNKNOWN, (UNKNOWN, 'quark.List', '__lt__')))))
        })

def test_bound():
    check_with_primitives(
        """
        interface Stringable {
            String stringify();
        }

        class Box<T extends Stringable> {
            T contents;

            void doit() {
                Stringable s = contents;
                String str = contents.stringify();
            }
        }

        class MyStringable extends Stringable {
            String name;

            String stringify() {
                return name;
            }
        }

        void foo() {
            Box<MyStringable> box = new Box<MyStringable>();
            box.contents = new MyStringable();
            box.contents.name = "foo";
            box.contents.name;
        }
        """,
        {
            'f.Stringable.stringify': (CALLABLE, 'quark.String'),
            'f.Box.Box': (TEMPLATE, 'f.Box.T', (CALLABLE, 'f.Box<f.Box.T>')),
            'f.Box.contents': (DECLARE, 'contents', 'f.Box.T'),
            'f.Box.doit': ((CALLABLE, 'quark.void'),
                           (DECLARE, 's', 'f.Stringable', 'f.Box.T'),
                           (DECLARE, 'str', 'quark.String', 'quark.String')),
            'f.Box.doit.self': 'f.Box',
            'f.MyStringable.MyStringable': (CALLABLE, 'f.MyStringable'),
            'f.MyStringable.name': (DECLARE, 'name', 'quark.String'),
            'f.MyStringable.stringify': ((CALLABLE, 'quark.String'),
                                         (RETURN, 'quark.String')),
            'f.MyStringable.stringify.self': 'f.MyStringable',
            'f.foo': ((CALLABLE, 'quark.void'),
                      (DECLARE, 'box', 'f.Box<f.MyStringable>', 'f.Box<f.MyStringable>'),
                      (ASSIGN, 'f.MyStringable', 'f.MyStringable'),
                      (ASSIGN, 'quark.String', 'quark.String'),
                      'quark.String')
        })

def test_nobound_to_void():
    check_with_primitives(
        """
        class Box<T> {
            T contents;
            void foo() {
                void foo = contents;
            }
        }
        """,
        {
            'f.Box.Box': (TEMPLATE, 'f.Box.T', (CALLABLE, 'f.Box<f.Box.T>')),
            'f.Box.contents': (DECLARE, 'contents', 'f.Box.T'),
            'f.Box.foo': ((CALLABLE, 'quark.void'),
                          (DECLARE, 'foo', 'quark.void', 'f.Box.T')),
            'f.Box.foo.self': 'f.Box'
        }
    )
