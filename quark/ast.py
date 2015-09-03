# Copyright 2015 datawire. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import inspect

class AST(object):

    indent = []

    def origin(self, node):
        if not hasattr(self, "node"):
            self.node = node
            self.line, self.column = self._lineinfo(node)

    def _lineinfo(self, node):
        line = 1
        column = 1
        for c in self.node.full_text[:self.node.start]:
            if c == "\n":
                line += 1
                column = 1
            else:
                column += 1
        return line, column

    def lookup(self, target, prefix=None, default=None):
        for cls in self.__class__.__mro__:
            if prefix is None:
                method = cls.__name__
            else:
                method = "%s_%s" % (prefix, cls.__name__)
            if hasattr(target, method):
                return getattr(target, method)
        if default is None:
            raise AttributeError("%s has no suitable method for class: %s" % (target, self.__class__))
        else:
            return default

    def traverse(self, visitor, default=lambda s: None):
        visit = self.lookup(visitor, "visit", default)
        leave = self.lookup(visitor, "leave", default)
        visit(self)
        if self.children:
            for c in self.children:
                if c is not None:
                    c.traverse(visitor)
        leave(self)

    def apply(self, transform, default=None):
        return self.lookup(transform, default=default)(self)

    def __repr__(self):
        name = self.__class__.__name__
        if hasattr(self, "id"):
            name = "%s:%s" % (name, self.id)

        fields = inspect.getargspec(self.__class__.__init__)[0][1:]
        if fields:
            args = [self.format(f) for f in fields]
        else:
            args = [repr(c) for c in self.children]

        if hasattr(self, "annotator"):
            args.extend(["%s=%s" % (k, v) for k, v in self.annotator(self)])

        return "%s(%s)" % (name, ", ".join(args))

    def format(self, field):
        if field in self.indent:
            return "\n (%s)" % ",\n ".join([repr(v).replace("\n", "\n ") for v in getattr(self, field)])
        else:
            return repr(getattr(self, field))

## Top level

class File(AST):

    indent = ["definitions"]

    def __init__(self, definitions):
        self.definitions = definitions

    @property
    def children(self):
        return self.definitions

## Definitions

class Definition(AST):
    pass

class Package(Definition):

    indent = ["definitions"]

    def __init__(self, name, definitions):
        self.name = name
        self.definitions = definitions

    @property
    def children(self):
        yield self.name
        for d in self.definitions:
            yield d

class Function(Definition):

    indent = ["body"]

    def __init__(self, type, name, params, body):
        self.type = type
        self.name = name
        self.params = params
        self.body = body

    @property
    def children(self):
        yield self.type
        yield self.name
        for p in self.params:
            yield p
        for b in self.body:
            yield b

class Class(Definition):

    indent = ["definitions"]

    def __init__(self, name, base, definitions):
        self.name = name
        self.base = base
        self.definitions = definitions

    @property
    def children(self):
        yield self.name
        yield self.base
        for d in self.definitions:
            yield d

class Method(Function):
    pass

## Declarations

class Declaration(AST):

    def __init__(self, type, name, value):
        self.type = type
        self.name = name
        self.value = value

    @property
    def children(self):
        yield self.type
        yield self.name
        yield self.value

class Param(Declaration):
    pass

class Field(Declaration):
    pass

## Statements

class Statement(AST):
    pass

class Assign(Statement):

    def __init__(self, lhs, rhs):
        self.lhs = lhs
        self.rhs = rhs

    @property
    def children(self):
        yield self.lhs
        yield self.rhs

class If(Statement):

    indent = ["consequence"]

    def __init__(self, predicate, consequence, alternative):
        self.predicate = predicate
        self.consequence = consequence
        self.alternative = alternative

    @property
    def children(self):
        yield self.predicate
        yield self.consequence
        yield self.alternative

class ExprStmt(Statement):

    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

class Local(Statement):

    def __init__(self, declaration):
        self.declaration = declaration

    @property
    def children(self):
        yield self.declaration

## Expressions

class Expression(AST):
    pass

class Var(Expression):

    def __init__(self, name):
        self.name = name

    @property
    def children(self):
        yield self.name

class Attr(Expression):

    def __init__(self, expr, attr):
        self.expr = expr
        self.attr = attr

    @property
    def children(self):
        yield self.expr

class Call(Expression):

    def __init__(self, expr, args):
        self.expr = expr
        self.args = args

    @property
    def children(self):
        yield self.expr
        for a in self.args:
            yield a

class Unary(Expression):

    def __init__(self, op, expr):
        self.op = op
        self.expr = expr

class Binop(Expression):

    def __init__(self, left, op, right):
        self.left = left
        self.op = op
        self.right = right

    @property
    def children(self):
        yield self.left
        yield self.right

class Literal(Expression):

    def __init__(self, text):
        self.text = text

    @property
    def children(self):
        if False: yield

class Number(Literal):
    pass

class String(Literal):
    pass

## Miscelaneous

class Name(AST):

    def __init__(self, text):
        self.text = text

    def __repr__(self):
        return self.text

    @property
    def children(self):
        return ()

class Type(AST):

    def __init__(self, name, parameters=None):
        self.name = name
        self.parameters = parameters

    @property
    def children(self):
        return self.parameters

    def __repr__(self):
        if self.parameters:
            return "%s<%s>" % (self.name, ", ".join([str(s) for s in self.parameters]))
        else:
            return repr(self.name)
