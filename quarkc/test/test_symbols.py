import pytest

from quarkc.match import *
from quarkc.parse import *
from quarkc.errors import Errors
from quarkc.symbols import Symbols

@match(AST)
def dfn_sig(n):
    return n.__class__, n.name.text

@match([Package, many(Package)])
def dfn_sig(pkgs):
    pkg = pkgs[0]
    result = pkg.name.text
    for p in pkgs[1:]:
        assert p.name.text == result
    return pkg.__class__, result

def check(name, content, expected=None, errors=None):
    file = parse(name, content)
    errs = Errors()
    symbols = Symbols(errs)
    symbols.add(file)
    assert errors == errs.format()
    if expected:
        elided = {}
        for k, v in symbols.definitions.items():
            elided[k] = dfn_sig(v)
        assert expected == elided

def test_implicit_foobar():
    check("asdf", """
    quark 1.0;
    void foo() {}
    void bar() {}
    """,
    {
        "asdf.foo": (Function, "foo"),
        "asdf.bar": (Function, "bar"),
        "asdf": (Package, "asdf")
    })

def test_implicit_foofoo():
    check("asdf", """
    quark 1.0;
    void foo() {}
    void foo() {}
    """,
    errors="asdf:4:5: duplicate definition of asdf.foo, first occurance on asdf:3:5")


def test_explicit_foobar():
    check("asdf", """
    quark 1.0;

    namespace ns {
        void foo() {}
        void bar() {}
    }
    """,
    {
        "ns.foo": (Function, "foo"),
        "ns.bar": (Function, "bar"),
        "ns": (Package, "ns")
    })

def test_explicit_foofoo():
    check("asdf", """
    quark 1.0;

    namespace ns {
        void foo() {}
        void foo() {}
    }
    """,
    errors="asdf:6:9: duplicate definition of ns.foo, first occurance on asdf:5:9")
    

def old():
    symbols = check(parse("asdf", """
    quark 1.0;

    package asdf 1.0;

    import foo.bar as foobar;
    import foo.bar;

    import p1.fun as something;

    namespace p1 {
        void fun() {}
    }

    namespace quark {

        primitive void {}

        primitive String {
            String trim();
            String __add__(String other);
            int size();
            int substring(int start, int size);
            int startswith(String s);
            String toString();
        }

        primitive int {
            int __add__(int other);
            String toString();
        }

        interface Stringable {
            String toString();
        }

    }


    void foo() {}
    void bar() {}

    class Foo {
        String field;
        void foo(int fdsa) {
            String asdf = "asdf";
            int one = 1;
            int two = 1 + one;
            field.trim();
            something();
        }

        void bar() {
            foo(3);
            trimmed; // XXX: should be an error
            String trimmed = field.trim();
            String doubled = trimmed + trimmed;
            int size = doubled.size();
            Box<String> box;
            box.contents;
            box.contents.substring(1, 2);
            box.contents.startswith("asdf");
//            box.contents.startswith(3); // errors
            Stringable s = "asdf";
            s = 3;
            s = box;
            Box<Stringable> box2;
            box2.contents = 3;
            box2.contents = "asdf";
            box2.contents = box;
//            box2.contents = asdf.foo(); // errors
            asdf.foo();
//            foo.bar.baz(); // errors
//            box2 = box; // errors
//            box = box2; // errors
            foobar.baz();
            baz();
        }
    }

    class Box<T> {
        T contents;
//        String contents;
        String toString();
    }

//    void Box() {}

    namespace foo { namespace bar {
        void baz() {}
    }
//        void bar() {}
    }
    """))

#    print symbols.definitions.keys()
#    print symbols.typespace.types
#    print symbols.typespace.resolved
    print "============"
    for k, v in symbols.definitions.items():
        print "==%s==" % k
        print v
#    from quarkc.types import *
#    t = symbols.typespace
#    Foo = t.resolve(Ref("asdf.Foo"))
#    foo = t.get(Foo, "foo")
#    print t.unresolve(t.call(foo, Ref("quark.int")))
#    print t.unresolve(t.call(foo, Ref("quark.String")))
