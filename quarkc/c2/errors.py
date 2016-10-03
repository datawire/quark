from .ast import *
from .exceptions import CompileError
from .helpers import lineinfo
from .match import *

class Errors(object):

    def __init__(self):
        self.errors = []

    def __call__(self, node, message):
        self.add(node, message)

    @match(basestring)
    def add(self, message):
        self.errors.append(message)

    @match(AST, basestring)
    def add(self, node, message):
        self.add("%s: %s" % (lineinfo(node), message))

    def format(self):
        return "\n".join(self.errors) or None

    def check(self):
        if self.errors:
            raise CompileError(self.format())
