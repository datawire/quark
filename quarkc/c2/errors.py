from .ast import *
from .exceptions import QuarkError, CompileError
from .match import *
from collections import OrderedDict

class Error(object):

    @match(basestring)
    def init(self, message, **kwargs):
        self.message = message
        self.info = OrderedDict()
        keys = sorted(kwargs.keys())
        for k in keys:
            self.info[k] = kwargs[k]

    def __getattr__(self, name):
        try:
            return self.__dict__["info"][name]
        except KeyError:
            raise AttributeError(name)

    def __ne__(self, other):
        return not self.__eq__(other)

    def __eq__(self, other):
        if isinstance(other, self):
            return self.info == other.info
        else:
            return False

    def __hash__(self):
        return hash(tuple(self.info.items()))

    def __repr__(self):
        return "%s(%s)" % (self.__class__.__name__, ", ".join(["%s=%r" % (k, v) for k, v in self.info.items()]))

    def format(self):
        return self.message.format(**self.info)

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
        self.add("%s: %s" % (node.location, message))

    @match(QuarkError)
    def add(self, err):
        self.add(str(err))

    @match(Error)
    def add(self, err):
        self.add(err.format())

    def format(self):
        return "\n".join(self.errors) or None

    def check(self):
        if self.errors:
            raise CompileError(self.format())

class NodeError(Error):

    @match(AST, basestring)
    def init(self, node, message, **kwargs):
        self.init("{node.location}: " + message, node=node, **kwargs)

class DuplicateSymbol(NodeError):

    @match(AST, basestring, AST)
    def __init__(self, node, name, previous):
        self.init(node, "duplicate definition of {name}, first occurance on {previous.location}",
                  name=name, previous=previous)

class MissingSymbol(NodeError):

    @match(AST, basestring)
    def __init__(self, node, name):
        self.init(node, "no such symbol {name}", name=name)

class InvalidAssignment(NodeError):

    @match(AST, object, object)
    def __init__(self, node, target, value):
        self.init(node, "cannot assign {value} to {target}", value=value, target=target)

class InvalidInvocation(NodeError):

    @match(AST, int, int)
    def __init__(self, node, expected, actual):
        self.init(node, "expected {expected} args, got {actual}", expected=expected, actual=actual)

import types

def ref():
    return delay(lambda: types.Ref)

class UnresolvedType(NodeError):

    @match(AST, ref())
    def __init__(self, node, type):
        self.init(node, "unresolved type: {type}", type=type)

class UnresolvedField(NodeError):

    @match(AST, ref(), basestring)
    def __init__(self, node, type, name):
        self.init(node, "unknown field of {type}: {name}", type=type, name=name)

class UnresolvedCall(NodeError):

    @match(AST, ref())
    def __init__(self, node, type):
        self.init(node, "not callable: {type}", type=type)
