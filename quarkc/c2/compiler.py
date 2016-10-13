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
            self.desugar(node)

        for node in traversal(file):
            if self.symbols.is_symbol(node):
                self.symbols.define(node)

    @match(Class)
    def desugar(self, cls):
        cons = [d for d in cls.definitions if isinstance(d, Method) and not d.type]
        if not cons:
            default = Method(None, Name(cls.name.text), (), Block([]))
            cls.definitions.append(default)
            wire(cls, default)

    # XXX: should Primitives have constructors?
    @match(choice(Interface, AST))
    def desugar(self, _):
        pass

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
