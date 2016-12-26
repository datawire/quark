from antlr4 import InputStream, CommonTokenStream, ParseTreeWalker

from ..ast import File
from .builder import ASTBuilder
from .generated.QuarkLexer import QuarkLexer
from .generated.QuarkParser import QuarkParser

class ErrorListener(object):

    def __init__(self):
        self.errors = []

    def reportAmbiguity(self, parser, dfa, start, stop, exact, alts, configs):
        pass

    def reportAttemptingFullContext(self, parser, dfa, start, stop, conflicts, configs):
        pass

    def syntaxError(self, parser, offendingSymbol, line, column, msg, e):
        self.errors.append("line {0}:{1} {2}".format(line, column, msg))

    def check(self):
        if self.errors:
            raise ValueError("\n".join(self.errors))

def parse(name, text):
    parser = QuarkParser(CommonTokenStream(QuarkLexer(InputStream(text))))

    parser.removeErrorListeners()
    errors = ErrorListener()
    parser.addErrorListener(errors)

    tree = parser.qfile()
    errors.check()

    builder = ASTBuilder()
    ParseTreeWalker().walk(builder, tree)

    return File(name, tree.ast)
