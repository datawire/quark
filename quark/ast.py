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
from .coder import Coder
from pprinter import PPrinter as _PPrinter

def copy(node):
    if node is None:
        return None
    elif isinstance(node, tuple):
        return tuple([copy(n) for n in node])
    elif isinstance(node, list):
        return [copy(n) for n in node]
    else:
        if hasattr(node, "_replacement"):
            origin = node._replacement
        else:
            origin = node
        result = origin.copy()
        if hasattr(origin, "annotations"):
            result.annotations = copy(origin.annotations)
        for attr in "node", "line", "column", "_trace":
            if hasattr(origin, attr):
                setattr(result, attr, getattr(origin, attr))
        return result

def code(*args, **kwargs):
    return Coder().code(*args, **kwargs)

def coder(method):
    def result(self, coder=None):
        coder = coder or Coder()
        return method(self, coder)
    return result

class SetOrigin:

    def visit_AST(self, ast, node):
        ast.origin(node)

class AST(object):

    indent = []

    def origin(self, node):
        if not hasattr(self, "node"):
            self.node = node
            self.line, self.column = self._lineinfo(node)
            self.traverse(SetOrigin(), node)

    @property
    def filename(self):
        return self.file.name

    def _lineinfo(self, node):
        text = self.node.full_text[:self.node.start]
        line = text.count("\n") + 1
        try:
            column = len(text) - text.rindex("\n")
        except ValueError:
            column = len(text) or 1
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

    def traverse(self, visitor, *args, **kwargs):
        visit_default = kwargs.pop("visit_default", lambda *a, **kw: None)
        leave_default = kwargs.pop("leave_default", lambda *a, **kw: None)
        visit = self.lookup(visitor, "visit", visit_default)
        leave = self.lookup(visitor, "leave", leave_default)
        visit(self, *args, **kwargs)
        if self.children:
            for c in self.children:
                if c is not None:
                    c.traverse(visitor, *args, **kwargs)
        leave(self, *args, **kwargs)

    def match(self, transform, *args, **kwargs):
        return self.lookup(transform, "match")(self, *args, **kwargs)

    def __repr__(self):
        if hasattr(self, "id"):
            return self.id
        else:
            return "%s:%s" % (self.__class__.__name__, id(self))

    def pprint(self):
        pp = _PPrinter()
        self.traverse(pp)
        return pp.output

    def __str__(self):
        return self.code()

## Top level

class File(AST):

    indent = ["definitions"]

    def __init__(self, definitions):
        self.definitions = definitions
        self.name = None

    @property
    def children(self):
        return self.definitions

    @coder
    def code(self, coder):
        return coder.code(self.definitions, "\n")

    def copy(self):
        result = File(copy(self.definitions))
        result.name = self.name
        return result

## Definitions

class Definition(AST):

    def __init__(self):
        self.annotations = []

    @coder
    def code(self, coder):
        return coder.code(self.annotations, "\n", tail="\n", tailoff=0)

class Package(Definition):

    indent = ["definitions"]

    def __init__(self, name, definitions):
        Definition.__init__(self)
        self.name = name
        self.definitions = definitions

    @property
    def children(self):
        for a in self.annotations:
            yield a
        yield self.name
        for d in self.definitions:
            yield d

    @coder
    def code(self, coder):
        with coder.indentation():
            return Definition.code(self, coder) + "package %s {%s}" % \
                (self.name.code(coder), coder.code(self.definitions, "\n",
                                                   head="\n", tail="\n"))

class Callable(Definition):

    def __init__(self, type, name, params, body):
        Definition.__init__(self)
        self.type = type
        self.name = name
        self.params = params
        self.body = body

    @property
    def children(self):
        for a in self.annotations:
            yield a
        yield self.type
        yield self.name
        for p in self.params:
            yield p
        yield self.body

    @coder
    def code(self, coder):
        result = "%s(%s)" % (coder.code(self.name), coder.code(self.params))
        if self.type:
            result = "%s %s" % (coder.code(self.type), result)
        if self.body:
            result = "%s %s" % (result, coder.code(self.body))
        else:
            result = "%s;" % result
        return "%s%s" % (Definition.code(self, coder), result)

    def copy(self):
        return self.__class__(copy(self.type), copy(self.name),
                              copy(self.params), copy(self.body))

class Function(Callable):
    pass

class Macro(Callable):

    @coder
    def code(self, coder):
        return "macro %s;" % Callable.code(self, coder)

class Class(Definition):

    indent = ["definitions"]
    keyword = "class"

    def __init__(self, name, parameters, bases, definitions):
        Definition.__init__(self)
        self.name = name
        self.parameters = parameters
        self.bases = bases
        self.definitions = definitions

    @property
    def children(self):
        for a in self.annotations:
            yield a
        yield self.name
        for p in self.parameters:
            yield p
        for b in self.bases:
            yield b
        for d in self.definitions:
            yield d

    @coder
    def code(self, coder):
        head = "%s%s %s" % (Definition.code(self, coder),
                            self.keyword,
                            self.name.code(coder))
        if self.parameters:
            head += "<%s>" % coder.code(self.parameters, ", ")
        if self.bases:
            head += " extends %s" % coder.code(self.bases, ", ")
        with coder.indentation():
            body = coder.code(self.definitions, "\n", head="\n", tail="\n")
        return "%s {%s}" % (head, body)

    def copy(self):
        return Class(copy(self.name), copy(self.parameters), copy(self.bases), copy(self.definitions))

class Method(Function):
    pass

class Constructor(Method):

    def __init__(self, name, params, body):
        Callable.__init__(self, None, name, params, body)

    def copy(self):
        return self.__class__(copy(self.name), copy(self.params),
                              copy(self.body))

class ConstructorMacro(Macro):
    def __init__(self, name, params, body):
        Callable.__init__(self, None, name, params, body)

    def copy(self):
        return self.__class__(copy(self.name), copy(self.params),
                              copy(self.body))

class MethodMacro(Macro):

    @coder
    def code(self, coder):
        return "macro %s;" % Callable.code(self, coder)

class Interface(Class):
    keyword = "interface"

class Primitive(Class):
    keyword = "primitive"

## Declarations

class Declaration(AST):

    def __init__(self, type, name, value):
        self.annotations = []
        self.type = type
        self.name = name
        self.value = value

    @property
    def children(self):
        for a in self.annotations:
            yield a
        yield self.type
        yield self.name
        yield self.value

    @coder
    def code(self, coder):
        result = "%s%s %s" % (coder.code(self.annotations, "\n", tail="\n", tailoff=0),
                              coder.code(self.type), coder.code(self.name))
        if self.value:
            return "%s = %s" % (result, coder.code(self.value))
        else:
            return result

    def copy(self):
        return self.__class__(copy(self.type), copy(self.name), copy(self.value))

class Param(Declaration):
    pass

class Field(Declaration):

    @coder
    def code(self, coder):
        return "%s;" % Declaration.code(self, coder)

## Statements

class Statement(AST):
    pass

class Return(Statement):

    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

    @coder
    def code(self, coder):
        return "return %s;" % (self.expr.code(coder))

    def copy(self):
        return Return(copy(self.expr))

class Break(Statement):

    @property
    def children(self): ()

    @coder
    def code(self, coder):
        return "break;"

class Continue(Statement):

    @property
    def children(self): ()

    @coder
    def code(self, coder):
        return "continue;"

class Assign(Statement):

    def __init__(self, lhs, rhs):
        self.lhs = lhs
        self.rhs = rhs

    @property
    def children(self):
        yield self.lhs
        yield self.rhs

    @coder
    def code(self, coder):
        return "%s = %s;" % (self.lhs.code(coder), self.rhs.code(coder))

class If(Statement):

    def __init__(self, predicate, consequence, alternative):
        self.predicate = predicate
        self.consequence = consequence
        self.alternative = alternative

    @property
    def children(self):
        yield self.predicate
        yield self.consequence
        yield self.alternative

    @coder
    def code(self, coder):
        result = "if (%s) %s" % (self.predicate.code(coder), self.consequence.code(coder))
        if self.alternative:
            result += " else %s" % self.alternative.code(coder)
        return result

    def copy(self):
        return If(copy(self.predicate), copy(self.consequence), copy(self.alternative))

class While(Statement):

    def __init__(self, condition, body):
        self.condition = condition
        self.body = body

    @property
    def children(self):
        yield self.condition
        yield self.body

class ExprStmt(Statement):

    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

    @coder
    def code(self, coder):
        return "%s;" % self.expr.code(coder)

    def copy(self):
        return ExprStmt(copy(self.expr))

class Local(Statement):

    def __init__(self, declaration):
        self.declaration = declaration

    @property
    def children(self):
        yield self.declaration

    @coder
    def code(self, coder):
        return "%s;" % self.declaration.code(coder)

    def copy(self):
        return Local(copy(self.declaration))

## Expressions

class Expression(AST):
    pass

class Super(Expression):

    @property
    def children(self):
        return ()

    @coder
    def code(self, coder):
        return "super"

class Var(Expression):

    def __init__(self, name):
        self.name = name

    @property
    def children(self):
        yield self.name

    @coder
    def code(self, coder):
        return self.name.code(coder)

    def copy(self):
        return Var(copy(self.name))

class Attr(Expression):

    def __init__(self, expr, attr):
        self.expr = expr
        self.attr = attr

    @property
    def children(self):
        yield self.expr
        yield self.attr

    @coder
    def code(self, coder):
        return "(%s).%s" % (self.expr.code(coder), self.attr.code(coder))

    def copy(self):
        return Attr(copy(self.expr), copy(self.attr))

class Call(Expression):

    def __init__(self, expr, args):
        self.expr = expr
        self.args = args

    @property
    def children(self):
        yield self.expr
        for a in self.args:
            yield a

    @coder
    def code(self, coder):
        if isinstance(self.expr, Type):
            expr = "new %s" % self.expr.code(coder)
        else:
            expr = "(%s)" % self.expr.code(coder)
        return "%s(%s)" % (expr, coder.code(self.args, ", "))

    def copy(self):
        return Call(copy(self.expr), copy(self.args))

class Literal(Expression):
    pass

class CompoundLiteral(Literal):
    pass

class PrimitiveLiteral(Literal):

    def __init__(self, text):
        self.text = text

    @property
    def children(self):
        if False: yield

    @coder
    def code(self, coder):
        return self.text

    def copy(self):
        return self.__class__(self.text)

class Bool(PrimitiveLiteral):
    pass

class Null(PrimitiveLiteral):
    pass

class Number(PrimitiveLiteral):
    pass

class String(PrimitiveLiteral):
    pass

class List(CompoundLiteral):

    def __init__(self, elements):
        self.elements = elements

    @property
    def children(self):
        return self.elements

    @coder
    def code(self, coder):
        return "[%s]" % coder.code(self.elements, ", ")

    def copy(self):
        return List(copy(self.elements))

class Map(CompoundLiteral):

    def __init__(self, entries):
        self.entries = entries

    @property
    def children(self):
        return self.entries

    @coder
    def code(self, coder):
        return "{%s}" % coder.code(self.entries, ", ")

class Entry(AST):

    def __init__(self, key, value):
        self.key = key
        self.value = value

    @property
    def children(self):
        yield self.key
        yield self.value

    @coder
    def code(self, coder):
        return "%s: %s" % (self.key.code(coder), self.value.code(coder))

class Native(Expression):

    def __init__(self, cases):
        self.cases = cases

    @property
    def children(self):
        for c in self.cases:
            yield c

    @coder
    def code(self, coder):
        return "".join([c.code(coder) for c in self.cases])

class NativeCase(AST):

    def __init__(self, name, children):
        self.name = name
        self.children = children

    @coder
    def code(self, coder):
        result = "$%s{" % (self.name or "")
        for c in self.children:
            if isinstance(c, Fixed):
                result += c.code(coder)
            elif isinstance(c, Var):
                result += "$%s" % c.code(coder)
            else:
                assert False
        return result + "}"

class Fixed(Expression):

    def __init__(self, text):
        self.text = text

    @property
    def children(self):
        if False: yield

    @coder
    def code(self, coder):
        return self.text

class Cast(Expression):

    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

    @coder
    def code(self, coder):
        return "?(%s)" % self.expr.code(coder)

    def copy(self):
        return Cast(copy(self.expr))

## Miscelaneous

class Name(AST):

    def __init__(self, text):
        self.text = text

    def __repr__(self):
        return self.text

    @property
    def children(self):
        return ()

    @coder
    def code(self, coder):
        return self.text

    def copy(self):
        return Name(self.text)

class Type(AST):

    def __init__(self, path, parameters=None):
        self.path = path
        self.parameters = parameters

    @property
    def children(self):
        for p in self.path:
            yield p
        if self.parameters:
            for p in self.parameters:
                yield p

    @coder
    def code(self, coder):
        name = coder.code(self.path, ".")
        if self.parameters:
            return "%s<%s>" % (name, coder.code(self.parameters, ", "))
        else:
            return name

    def copy(self):
        return Type(copy(self.path), copy(self.parameters))

    def __repr__(self):
        if self.parameters:
            return "%r<%s>" % (self.path, ", ".join([repr(s) for s in self.parameters]))
        else:
            return repr(self.path)

class TypeParam(AST):

    def __init__(self, name):
        self.name = name

    @property
    def children(self):
        yield self.name

    @coder
    def code(self, coder):
        return self.name.code(coder)

class Block(AST):

    indent = ["statements"]

    def __init__(self, statements):
        self.statements = statements

    @property
    def children(self):
        for s in self.statements:
            yield s

    @coder
    def code(self, coder):
        with coder.indentation():
            return "{%s}" % coder.code(self.statements, "\n", head="\n",
                                       tail="\n")

    def copy(self):
        return Block(copy(self.statements))

class Annotation(AST):

    def __init__(self, name, arguments):
        self.name = name
        self.arguments = arguments

    @property
    def children(self):
        yield self.name
        for a in self.arguments:
            yield a

    @coder
    def code(self, coder):
        result = "@%s" % self.name.code(coder)
        if self.arguments:
            result += "(%s)" % coder.code(self.arguments, ", ")
        return result
