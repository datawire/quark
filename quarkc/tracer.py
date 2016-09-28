from .match import *
from .parse import *

from errors import Errors
from symbols import Symbols

# step 1 parse
# step 2 wire
# step 3 symbol definition
# step 4 type definition
# step 5 type checks
# step 6 dataflow checks (use + return)
# step 7 emit ir

@match(File)
def check(ast):
    errors = Errors()
    symbols = Symbols(errors)
    traverse(ast, symbols.define)
    errors.check()
    traverse(ast, symbols.type)
    traverse(ast, symbols.check)
    errors.check()
    return symbols

if __name__ == '__main__':
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
