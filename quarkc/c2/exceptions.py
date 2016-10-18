from quarkc.exceptions import (QuarkError, CompileError, ParseError)
from .ast import AST
from .match import *
from .helpers import lineinfo

class SemanticError(QuarkError):

    @match(AST, basestring)
    def __init__(self, node, message):
        QuarkError.__init__(self, "%s: %s" % (lineinfo(node), message))

class DuplicateSymbol(SemanticError):

    @match(basestring, AST, AST)
    def __init__(self, name, node, previous):
        self.__init__(node, "duplicate definition of %s, first occurance on %s" %
                      (name, lineinfo(previous)))

class MissingSymbol(SemanticError):

    @match(AST, basestring)
    def __init__(self, node, name):
        SemanticError.__init__(self, node, "no such symbol %s" % name)
        self.name = name

class UnassignableError(SemanticError):

    @match(AST, object, object)
    def __init__(self, node, target, value):
        self.__init__(node, "cannot assign %s to %s" % (value, target))
