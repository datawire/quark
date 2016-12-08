from .ast import AST
from .exceptions import QuarkError, CompileError
from .match import match, delay
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

def ref():
    return delay(lambda: types.Ref)

class InvalidAssignment(NodeError):

    @match(AST, ref(), ref())
    def __init__(self, node, target, value):
        self.init(node, "cannot assign {value} to {target}", value=value, target=target)

class InvalidInvocation(NodeError):

    @match(AST, ref(), int, int)
    def __init__(self, node, type, expected, actual):
        self.init(node, "{type} expected {expected} args, got {actual}", type=type, expected=expected, actual=actual)

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

class Uninferable(NodeError):
    @match(AST)
    def __init__(self, node):
        self.init(node, "unable to infer type of {node}")

import types
