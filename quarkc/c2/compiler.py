from .match import *
from .errors import *
from .exceptions import *
from .parse import *
from .symbols import *
from .types import Types
from .code import Code
from .traits import *
from .timer import Timer

class Compiler(object):

    MATCH_TRAITS = COMPILER

    def __init__(self, verbose=0):
        self.timer = Timer(verbose)
        self.errors = Errors()
        self.symbols = Symbols(self.timer)
        self.types = Types(self.timer, self.symbols)
        self.code = Code(self.timer, self.symbols, self.types)
        self.files = []

    @match(basestring, basestring)
    def parse(self, name, content):
        try:
            file = parse(name, content)
        except ParseError, e:
            self.errors.add(e)
            return

        for node in traversal(file):
            self.desugar(node)

        self.files.append(file)

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
        self.timer.mark("parse: {elapsed}")

        self.errors.check()

        # define symbols
        for file in self.files:
            for node in traversal(file):
                if self.symbols.is_definition(node):
                    self.symbols.define(node)

        # resolve symbols
        for file in self.files:
            for n in traversal(file):
                if self.symbols.is_name(n):
                    self.symbols.resolve(n)

        for sym, nodes in self.symbols.duplicates.items():
            prev = depackage(self.symbols.definitions[sym])
            for n in nodes:
                self.errors.add(DuplicateSymbol(sym, n, prev))

        for nd, name in self.symbols.missing.items():
            self.errors.add(MissingSymbol(nd, name))

        self.timer.mark("check_symbols: {elapsed}")

    @match()
    def check_types(self):
        self.errors.check()

        # define types
        for k, v in self.symbols.definitions.items():
            if self.types.is_type(v):
                self.types.define(v)
        self.timer.mark("define_types: {elapsed}")

        # resolve types
        for k, v in self.symbols.definitions.items():
            for node in traversal(v):
                if self.types.has_type(node):
                    self.types.resolve(node)

        for v in self.types.violations:
            self.errors.add(v)
        self.timer.mark("resolve_types: {elapsed}")

    @match()
    def check(self):
        self.check_symbols()
        self.check_types()
        self.errors.check()

    @match()
    def compile(self):
        pkg = self.code.compile()
        self.timer.mark("compile: {elapsed}")
        self.timer.mark("total: {total}")
        return pkg
