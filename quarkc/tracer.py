from .match import *
from .ast import *
from .parser import Parser
from .exceptions import ParseError
from parsimonious import ParseError as GParseError

@match(AST, object, opt(object))
def traverse(node, visit, leave=None):
    visit(node)
    for c in node.children:
        if c is not None:
            traverse(c, visit, leave)
    if leave:
        leave(node)

@match(AST)
def wire(ast):
    path = []
    def visit(n):
        if path:
            n.parent = path[-1]
        else:
            n.parent = None
        path.append(n)
    def leave(n):
        path.pop()
    traverse(ast, visit, leave)
    return ast

@match(basestring, basestring)
def parse(name, text):
    # XXX: need to handle version here
    p = Parser()
    p._filename = name
    try:
        return wire(p.parse(text))
    except GParseError, e:
        location = '%s:%s:%s: ' % (name, e.line(), e.column())
        raise ParseError("%s%s" % (location, e))

from symbols import Symbols

@match(File)
def check(ast):
    symbols = Symbols()
    traverse(ast, symbols.define)
    traverse(ast, symbols.type)
    traverse(ast, symbols.check)
    return symbols

@match(File)
def compile(ast):
    assert False, "not implemented"

def emit(ir):
    assert False, "not implemented"

if __name__ == '__main__':
    symbols = check(parse("asdf", """
    quark 1.0;

    package asdf 1.0;

    import foo.bar as foobar;
    import foo.bar;

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
//            s = box;
            Box<Stringable> box2;
            box2.contents = 3;
            box2.contents = "asdf";
//            box2.contents = asdf.foo(); // errors
            asdf.foo();
//            foo.bar.baz();
//            box2 = box; // errors
//            box = box2; // errors
            foobar.baz();
            baz();
        }
    }

    class Box<T> {
        T contents;
    }

    namespace foo { namespace bar {
        void baz() {}
    }}
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
