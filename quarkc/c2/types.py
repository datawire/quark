from .match import *
from .exceptions import *
from .traits import *
from .ast import *
from .symbols import Symbols, name, traversal
from collections import namedtuple, OrderedDict

import typespace as types
from typespace import Typespace, Ref

class Types(object):

    @match(Symbols)
    def __init__(self, symbols):
        self.symbols = symbols
        self.types = Typespace()
        self.resolved = {}
        self._violations = OrderedDict()

    @match(AST, Ref, Ref)
    def violation(self, node, target, value):
        key = (node, target, value)
        if key not in self._violations:
            self._violations[(node, target, value)] = UnassignableError(node, target, value)

    @property
    def violations(self):
        return self._violations.values()

    @match(choice(Class, Function, Method, [many(Package, min=1)]))
    def is_type(self, _):
        return True

    @match(AST)
    def is_type(self, _):
        return False

    @match(Class)
    def define(self, cls):
        clstype = types.Object(*[self.field(d, cls.parameters) for d in cls.definitions])
        if cls.parameters:
            clstype = types.Template(*[types.Param(name(p)) for p in cls.parameters] + [clstype])
        self.types[name(cls)] = clstype

    @match(Function)
    def define(self, fun):
        self.types[name(fun)] = self.callable(fun)

    @match(Method)
    def define(self, meth):
        mtype = self.callable(meth)
        cls = meth.parent
        if cls.parameters:
            mtype = types.Template(*[types.Param(name(p)) for p in cls.parameters] + [mtype])
        self.types[name(meth)] = mtype

    @match([many(Package, min=1)])
    def define(self, pkgs):
        self.types[name(pkgs[0])] = types.Object(*[types.Field(d.name.text, types.Ref(name(d)))
                                                   for p in pkgs for d in p.definitions])

    @match(Callable)
    def callable(self, c):
        result = types.Ref(self.symbols.qualify(c.type))
        args = [types.Ref(self.symbols.qualify(p.type)) for p in c.params]
        return types.Callable(result, *args)

    @match(Field, [many(TypeParam)])
    def field(self, f, parameters):
        return types.Field(f.name.text, types.Ref(self.symbols.qualify(f.type)))

    @match(Method, [many(TypeParam)])
    def field(self, m, parameters):
        return types.Final(m.name.text, types.Ref(name(m), *[types.Ref(name(p)) for p in parameters]))


    @match(choice(Function, Declaration, Package, [many(Package, min=1)], Expression, Type, Local,
                  Return, Assign, ExprStmt))
    def has_type(self, _):
        return True

    @match(choice(Name, Block, If, TypeParam))
    def has_type(self, _):
        return False

    @match(Class)
    def has_type(self, cls):
        return False if cls.parameters else True

    @match(Method)
    def has_type(self, meth):
        return self.has_type(meth.parent)

    @match(Import)
    def has_type(self, imp):
        return True if imp.alias else False

    @match(choice(Class, Function, Method, Declaration, Package, Expression, Type, Local, Return, Assign, Import,
                  ExprStmt))

    def resolve(self, node):
        if node in self.resolved:
            return self.resolved[node]
        else:
            result = self.types.unresolve(self.do_resolve(node))
            self.resolved[node] = result
            return result

    @match([many(Package, min=1)])
    def resolve(self, pkgs):
        return self.resolve(pkgs[0])


    @match(Return)
    def do_resolve(self, retr):
        return self.resolve(retr.expr)

    @match(Local)
    def do_resolve(self, local):
        return self.resolve(local.declaration)

    @match(Assign)
    def do_resolve(self, ass):
        left = self.resolve(ass.lhs)
        right = self.resolve(ass.rhs)
        if not self.types.assignable(left, right):
            self.violation(ass, left, right)
        return left

    @match(ExprStmt)
    def do_resolve(self, es):
        return self.resolve(es.expr)

    @match(Class)
    def do_resolve(self, dfn):
        return self.types[name(dfn)]

    @match(String)
    def do_resolve(self, st):
        return types.Ref("quark.String")

    @match(Number)
    def do_resolve(self, st):
        return types.Ref("quark.int")

    @match(Var)
    def do_resolve(self, v):
        return self.resolve(self.symbols[v])

    @match(Declaration)
    def do_resolve(self, declaration):
        left = self.resolve(declaration.type)
        if declaration.value:
            right = self.do_resolve(declaration.value)
            if not self.types.assignable(left, right):
                self.violation(declaration, left, right)
        return left

    @match(Package)
    def do_resolve(self, pkg):
        return self.types[name(pkg)]

    @match(Import)
    def do_resolve(self, imp):
        assert imp.alias
        dfn = self.symbols[imp.path]
        assert not isinstance(dfn, Import)
        return self.resolve(dfn)

    @match(Type)
    def do_resolve(self, type):
        if type.parameters:
            return types.Ref(self.symbols.qualify(type), *[self.resolve(p) for p in type.parameters])
        else:
            return types.Ref(self.symbols.qualify(type))

    @match(choice(Method, Function))
    def do_resolve(self, meth):
        return self.types.get(self.types[name(meth.parent)], meth.name.text)

    @match(Call)
    def do_resolve(self, c):
        expr = self.resolve(c.expr)
        args = [self.resolve(a) for a in c.args]
        return self.types.call(expr, *args)

    @match(Attr)
    def do_resolve(self, a):
        expr = self.resolve(a.expr)
        return self.types.get(expr, a.attr.text)


    @match(AST)
    def __getitem__(self, node):
        return self.resolved[node]
