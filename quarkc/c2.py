from .match import *
from .errors import *
from .parse import *
from .symbols import *
from .traits import *

import ir, types, typeconstruction, irconstruction

@match(choice(Function, Interface, Class))
def toplevel(dfn):
    return True

@match(choice(AST, [Package], Primitive))
def toplevel(dfn):
    return False

class Compiler(object):

    MATCH_TRAITS = COMPILER

    def __init__(self):
        self.errors = Errors()
        self.symbols = Symbols(self.errors)
        self.typespace = types.Typespace(self.errors)

    @match(basestring, basestring)
    def parse(self, name, content):
        try:
            file = parse(name, content)
            self.symbols.add(file)
        except ParseError, e:
            self.errors.add(str(e))

    @match()
    def check(self):
        self.errors.check()
        for k, v in self.symbols.definitions.items():
            t = typeconstruction.type(self, v)
            if t is not None:
                self.typespace[k] = t
        for k, v in self.symbols.definitions.items():
            if not isinstance(v, list):
                traverse(v, lambda x: typeconstruction.check(self, x))
        self.errors.check()

    @match()
    def compile(self):
        for k, v in self.symbols.definitions.items():
            if toplevel(v):
                ir = irconstruction.compile(self, k, v)
                if ir:
                    print ir


if __name__ == "__main__":
    c = Compiler()
    c.parse("fib", """
    namespace quark {
        primitive int {
            int __add__(int other);
            int __sub__(int other);
            bool __lt__(int other);
            bool __eq__(int other);
            String toString();
        }

        primitive bool {
            bool __eq__(bool other);
            String toString();
        }

        primitive String {
            bool __lt__(String other);
            bool __eq__(String other);
            String toString();
        }
    }

    namespace math {
        int fib(int n) {
            if (n < 2) {
                return n;
            } else {
                return fib(n-1) + fib(n-2);
            }
        }
    }
    """)

    c.check()
    c.compile()
