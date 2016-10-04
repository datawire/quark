from .match import *
from .exceptions import *
from .traits import *
from .ast import *
from .symbols import Symbols, name, traversal

import typespace as types
from typespace import Typespace, Ref

class Types(object):

    @match(Symbols)
    def __init__(self, symbols):
        self.symbols = symbols
        self.types = Typespace()

    @match(choice(Class, Function, Method, [many(Package)]))
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

    @match([many(Package)])
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

    @match(AST)
    def check(self, node):
        for n in traversal(node):
            self.do_check(n)

    @match([many(Package)])
    def check(self, _):
        pass

    @match(Expression)
    def do_check(self, e):
        print "%s: %s" % (e, self.types.unresolve(self.resolve(e)))

    @match(Declaration)
    def do_check(self, declaration):
        if declaration.value:
            left = self.resolve(declaration.type)
            right = self.resolve(declaration.value)
            if not self.types.assignable(left, right):
                raise UnassignableError(declaration, self.types.unresolve(left), self.types.unresolve(right))

    @match(Assign)
    def do_check(self, a):
        left = self.resolve(a.lhs)
        right = self.resolve(a.rhs)
        if not self.types.assignable(left, right):
            raise UnassignableError(a, self.types.unresolve(left), self.types.unresolve(right))

    @match(AST)
    def do_check(self, _):
        pass

    @match(String)
    def resolve(self, st):
        return types.Ref("quark.String")

    @match(Number)
    def resolve(self, st):
        return types.Ref("quark.int")

    @match(Var)
    def resolve(self, v):
        return self.resolve(self.symbols[v])

    @match(Declaration)
    def resolve(self, dfn):
        return self.resolve(dfn.type)

    @match([Package, many(Package)])
    def resolve(self, pkgs):
        return self.types[name(pkgs[0])]

    @match(Import)
    def resolve(self, imp):
        assert imp.alias
        dfn = self.symbols[imp.path]
        assert not isinstance(dfn, Import)
        return self.resolve(dfn)

    @match(Type)
    def resolve(self, type):
        if type.parameters:
            return types.Ref(self.symbols.qualify(type), *[self.resolve(p) for p in type.parameters])
        else:
            return types.Ref(self.symbols.qualify(type))

    @match(choice(Method, Function))
    def resolve(self, meth):
        return self.types.get(self.types[name(meth.parent)], meth.name.text)

    @match(Call)
    def resolve(self, c):
        expr = self.resolve(c.expr)
        args = [self.resolve(a) for a in c.args]
        return self.types.call(expr, *args)

    @match(Attr)
    def resolve(self, a):
        expr = self.resolve(a.expr)
        return self.types.get(expr, a.attr.text)

    @match(choice(types.Ref, types.Type))
    def unresolve(self, type):
        return self.types.unresolve(type)
