from .match import *
from .traits import *
from .ast import *
from .symbols import name

import types

@match(COMPILER, Class)
def type(comp, cls):
    clstype = types.Object(*[field(comp, d, cls.parameters) for d in cls.definitions])
    if cls.parameters:
        return types.Template(*[types.Param(name(p)) for p in cls.parameters] + [clstype])
    else:
        return clstype

@match(COMPILER, Function)
def type(comp, fun):
    return callable(comp, fun)

@match(COMPILER, Method)
def type(comp, meth):
    mtype = callable(comp, meth)
    cls = meth.parent
    if cls.parameters:
        return types.Template(*[types.Param(name(p)) for p in cls.parameters] + [mtype])
    else:
        return mtype

@match(COMPILER, [many(Package)])
def type(comp, pkgs):
    return types.Object(*[types.Field(d.name.text, types.Ref(name(d))) for p in pkgs for d in p.definitions])

@match(COMPILER, AST)
def type(comp, _):
    return None

@match(COMPILER, Callable)
def callable(comp, c):
    result = types.Ref(comp.symbols.qualify(c.type))
    args = [types.Ref(comp.symbols.qualify(p.type)) for p in c.params]
    return types.Callable(result, *args)

@match(COMPILER, Field, [many(TypeParam)])
def field(comp, f, parameters):
    return types.Field(f.name.text, types.Ref(comp.symbols.qualify(f.type)))

@match(COMPILER, Method, [many(TypeParam)])
def field(comp, m, parameters):
    return types.Final(m.name.text, types.Ref(name(m), *[types.Ref(name(p)) for p in parameters]))

@match(COMPILER, Expression)
def check(comp, e):
    print "%s: %s" % (e, comp.typespace.unresolve(resolve(comp, e)))

@match(COMPILER, Local)
def check(comp, l):
    if l.declaration.value:
        left = resolve(comp, l.declaration.type)
        right = resolve(comp, l.declaration.value)
        assert comp.typespace.assignable(left, right), "cannot assign %s to %s" % (self.typespace.unresolve(right),
                                                                                   self.typespace.unresolve(left))

@match(COMPILER, Assign)
def check(comp, a):
    left = resolve(comp, a.lhs)
    right = resolve(comp, a.rhs)
    assert comp.typespace.assignable(left, right), "cannot assign %s to %s" % (comp.typespace.unresolve(right),
                                                                               comp.typespace.unresolve(left))

@match(COMPILER, AST)
def check(comp, _):
    pass

@match(COMPILER, String)
def resolve(comp, st):
    return types.Ref("quark.String")

@match(COMPILER, Number)
def resolve(comp, st):
    return types.Ref("quark.int")

@match(COMPILER, Var)
def resolve(comp, v):
    dfn = comp.symbols.definitions[comp.symbols.qualify(v)]
    return resolve(comp, dfn)

@match(COMPILER, Declaration)
def resolve(comp, dfn):
    return resolve(comp, dfn.type)

@match(COMPILER, [Package, many(Package)])
def resolve(comp, pkgs):
    return comp.typespace[name(pkgs[0])]

@match(COMPILER, Import)
def resolve(comp, imp):
    assert imp.alias
    dfn = comp.symbols.definitions[name(imp.path)]
    assert not isinstance(dfn, Import)
    return resolve(comp, dfn)

@match(COMPILER, Type)
def resolve(comp, type):
    if type.parameters:
        return types.Ref(comp.symbols.qualify(type), *[resolve(comp, p) for p in type.parameters])
    else:
        return types.Ref(comp.symbols.qualify(type))

@match(COMPILER, choice(Method, Function))
def resolve(comp, meth):
    return comp.typespace.get(comp.typespace[name(meth.parent)], meth.name.text)

@match(COMPILER, Call)
def resolve(comp, c):
    expr = resolve(comp, c.expr)
    args = [resolve(comp, a) for a in c.args]
    return comp.typespace.call(expr, *args)

@match(COMPILER, Attr)
def resolve(comp, a):
    expr = resolve(comp, a.expr)
    return comp.typespace.get(expr, a.attr.text)
