from .match import *
from .errors import *
from .exceptions import *
from .parse import *
from .symbols import *
from .types import Types
from .code import Code
from .traits import *

class Compiler(object):

    MATCH_TRAITS = COMPILER

    def __init__(self):
        self.errors = Errors()
        self.symbols = Symbols()
        self.types = Types(self.symbols)
        self.code = Code(self.symbols, self.types)

    @match(basestring, basestring)
    def parse(self, name, content):
        try:
            file = parse(name, content)
        except ParseError, e:
            self.errors.add(e)
            return
        for node in traversal(file):
            if self.symbols.is_symbol(node):
                self.symbols.define(node)

    @match()
    def check_symbols(self):
        for sym, nodes in self.symbols.duplicates.items():
            prev = depackage(self.symbols.definitions[sym])
            for n in nodes:
                self.errors.add(DuplicateSymbol(sym, n, prev))
        self.errors.check()

    @match()
    def check_types(self):
        self.check_symbols()
        for k, v in self.symbols.definitions.items():
            if self.types.is_type(v):
                self.types.define(v)
        for k, v in self.symbols.definitions.items():
            for node in traversal(v):
                if self.types.has_type(node):
                    self.types.resolve(node)
        for v in self.types.violations:
            self.errors.add(v)
        self.errors.check()

    @match()
    def check(self):
        self.check_types()

    @match()
    def compile(self):
        return self.code.compile()


if __name__ == "__main__":
    c = Compiler()
    c.parse("fib", """
    namespace quark {
        primitive int {
            int __add__(int other);
            int __sub__(int other);
            int __mul__(int other);
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

    import math;

    namespace other {
        int fib2(int n) {
            return 2*fib(n);
        }
    }
    """)

    c.check()
    pkg = c.compile()
    print pkg
    import emit, sys
    tgt = emit.Java()
    emit.emit(pkg, tgt)
    for file in tgt.files.values():
        print "===%s===" % file.name
        sys.stdout.write(str(file))
