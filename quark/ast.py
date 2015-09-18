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

def copy(node):
    if node is None:
        return None
    elif isinstance(node, tuple):
        return tuple([copy(n) for n in node])
    elif isinstance(node, list):
        return [copy(n) for n in node]
    else:
        result = node.copy()
        if hasattr(node, "annotations"):
            result.annotations = copy(node.annotations)
        return result

def code(node, sep=", "):
    if node is None:
        return ""
    elif isinstance(node, (tuple, list)):
        return "%s" % sep.join([code(n) for n in node])
    else:
        return node.code()

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

    def apply(self, transform, *args, **kwargs):
        return self.lookup(transform, kwargs.get("default", None))(self, *args, **kwargs)

    def __repr__(self):
        if hasattr(self, "id"):
            return self.id
        else:
            return "%s:%s" % (self.__class__.__name__, id(self))

    def __str__(self):
        pp = _PPrinter()
        self.traverse(pp)
        return pp.output

class _PPrinter(object):

    def __init__(self, width=80):
        self.width = width
        self.out = ""
        self.stack = []
        self.first = True
        self.wrap = (File, Definition, Statement, Declaration)
        self.previous = None

    def merge(self, previous, line):
        if previous and previous[-1] == ",":
            return "%s %s" % (previous, line)
        else:
            return "%s%s" % (previous, line)

    @property
    def output(self):
        lines = self.out.split("\n")
        result = [lines[0]]
        for line in lines[1:]:
            stripped = line.strip()
            if stripped:
                merged = self.merge(result[-1], stripped)
                if len(merged) < self.width:
                    result[-1] = merged
                else:
                    result.append(line)
            else:
                result.append("")
                result.append(line)
        result = [l.strip() if l.strip() == "" else l for l in result if l]
        return "\n".join(result)

    def append(self, st):
        self.out += st.replace("\n", "\n%s" % (" "*len(self.stack)))

    def visit_AST(self, ast):
        if self.first:
            self.first = False
            if isinstance(ast, self.wrap):
                self.append("\n")
        else:
            self.append(",\n")
            if isinstance(ast, (File, Definition)):
                self.append("\n")
        if isinstance(ast, self.wrap) or isinstance(self.previous, self.wrap):
            self.append("\n")
        self.append("%s(" % ast.__class__.__name__)
        self.stack.append((ast, self.first))
        self.first = True
        if isinstance(ast, Fixed):
            self.append(repr(ast.text))
        elif hasattr(ast, "text"):
            self.append(ast.text)

    def refstr(self, ast):
        if ast is None:
            return None
        else:
            return "%s:%s" % (ast.__class__.__name__, ast.id)

    def leave_AST(self, ast):
        self.first = self.stack.pop()[-1]
        if (isinstance(ast, (Expression, Declaration)) and
            not isinstance(ast, (Fixed, Native))):
            if hasattr(ast, "resolved"):
                self.append(",\n$type=%s" % ast.resolved)
        if isinstance(ast, File) or not self.stack:
            self.append("\n\n")
        self.append(")")
        self.previous = ast

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

    def __init__(self):
        self.annotations = []

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

    def code(self):
        result = "%s(%s) %s" % (code(self.name), code(self.params),
                                code(self.body))
        if self.type:
            result = "%s %s" % (code(self.type), result)
        return result

    def copy(self):
        return self.__class__(copy(self.type), copy(self.name),
                              copy(self.params), copy(self.body))

class Function(Callable):
    pass

class Macro(Callable):
    pass

class Class(Definition):

    indent = ["definitions"]

    def __init__(self, name, parameters, base, definitions):
        Definition.__init__(self)
        self.name = name
        self.parameters = parameters
        self.base = base
        self.definitions = definitions

    @property
    def children(self):
        for a in self.annotations:
            yield a
        yield self.name
        for p in self.parameters:
            yield p
        yield self.base
        for d in self.definitions:
            yield d

class Method(Function):
    pass

class Constructor(Method):

    def __init__(self, name, params, body):
        Callable.__init__(self, None, name, params, body)

    def copy(self):
        return self.__class__(copy(self.name), copy(self.params),
                              copy(self.body))

class MethodMacro(Macro):
    pass

class Interface(Class):
    pass

class Primitive(Class):
    pass

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

    def code(self):
        if self.value:
            return "%s %s %s" % (code(self.type), code(self.name), code(self.value))
        else:
            return "%s %s" % (code(self.type), code(self.name))

    def copy(self):
        return self.__class__(copy(self.type), copy(self.name), copy(self.value))

class Param(Declaration):
    pass

class Field(Declaration):
    pass

## Statements

class Statement(AST):
    pass

class Return(Statement):

    def __init__(self, expr):
        self.expr = expr

    @property
    def children(self):
        yield self.expr

class Assign(Statement):

    def __init__(self, lhs, rhs):
        self.lhs = lhs
        self.rhs = rhs

    @property
    def children(self):
        yield self.lhs
        yield self.rhs

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
        yield self.attr

class Call(Expression):

    def __init__(self, expr, args):
        self.expr = expr
        self.args = args

    @property
    def children(self):
        yield self.expr
        for a in self.args:
            yield a

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

    def code(self):
        return self.text

    def copy(self):
        return self.__class__(self.text)

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

class Map(CompoundLiteral):

    def __init__(self, entries):
        self.entries = entries

    @property
    def children(self):
        return self.entries

class Entry(AST):

    def __init__(self, key, value):
        self.key = key
        self.value = value

    @property
    def children(self):
        yield self.key
        yield self.value

class Native(Expression):

    def __init__(self, children):
        self.children = children

class Fixed(Expression):

    def __init__(self, text):
        self.text = text

    @property
    def children(self):
        if False: yield

## Miscelaneous

class Name(AST):

    def __init__(self, text):
        self.text = text

    def __repr__(self):
        return self.text

    @property
    def children(self):
        return ()

    def code(self):
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

    def code(self):
        name = code(self.path, ".")
        if self.parameters:
            return "%s<%s>" % (name, code(self.parameters, ", "))
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

class Block(AST):

    indent = ["statements"]

    def __init__(self, statements):
        self.statements = statements

    @property
    def children(self):
        for s in self.statements:
            yield s

class Annotation(AST):

    def __init__(self, name, arguments):
        self.name = name
        self.arguments = arguments

    @property
    def children(self):
        yield self.name
        for a in self.arguments:
            yield a
