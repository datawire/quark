from .match import *
from .traits import *
from .ast import *
from .symbols import name

import types

@cmatch(Class)
def type(comp, cls):
    clstype = types.Object(*[field(comp, d, cls.parameters) for d in cls.definitions])
    if cls.parameters:
        return types.Template(*[types.Param(name(p)) for p in cls.parameters] + [clstype])
    else:
        return clstype

@cmatch(Function)
def type(comp, fun):
    return callable(comp, fun)

@cmatch(Method)
def type(comp, meth):
    mtype = callable(comp, meth)
    cls = meth.parent
    if cls.parameters:
        return types.Template(*[types.Param(name(p)) for p in cls.parameters] + [mtype])
    else:
        return mtype

@cmatch([many(Package)])
def type(comp, pkgs):
    return types.Object(*[types.Field(d.name.text, types.Ref(name(d))) for p in pkgs for d in p.definitions])

@cmatch(AST)
def type(comp, _):
    return None

@cmatch(Callable)
def callable(comp, c):
    result = types.Ref(comp.symbols.qualify(c.type))
    args = [types.Ref(comp.symbols.qualify(p.type)) for p in c.params]
    return types.Callable(result, *args)

@cmatch(Field, [many(TypeParam)])
def field(comp, f, parameters):
    return types.Field(f.name.text, types.Ref(comp.symbols.qualify(f.type)))

@cmatch(Method, [many(TypeParam)])
def field(comp, m, parameters):
    return types.Final(m.name.text, types.Ref(name(m), *[types.Ref(name(p)) for p in parameters]))

@cmatch(Expression)
def check(comp, e):
    print "%s: %s" % (e, comp.types.unresolve(resolve(comp, e)))

@cmatch(Local)
def check(comp, l):
    if l.declaration.value:
        left = resolve(comp, l.declaration.type)
        right = resolve(comp, l.declaration.value)
        assert comp.types.assignable(left, right), "cannot assign %s to %s" % (self.types.unresolve(right),
                                                                               self.types.unresolve(left))

@cmatch(Assign)
def check(comp, a):
    left = resolve(comp, a.lhs)
    right = resolve(comp, a.rhs)
    assert comp.types.assignable(left, right), "cannot assign %s to %s" % (comp.types.unresolve(right),
                                                                           comp.types.unresolve(left))

@cmatch(AST)
def check(comp, _):
    pass

@cmatch(String)
def resolve(comp, st):
    return types.Ref("quark.String")

@cmatch(Number)
def resolve(comp, st):
    return types.Ref("quark.int")

@cmatch(Var)
def resolve(comp, v):
    return resolve(comp, comp.symbols[v])

@cmatch(Declaration)
def resolve(comp, dfn):
    return resolve(comp, dfn.type)

@cmatch([Package, many(Package)])
def resolve(comp, pkgs):
    return comp.types[name(pkgs[0])]

@cmatch(Import)
def resolve(comp, imp):
    assert imp.alias
    dfn = comp.symbols[imp.path]
    assert not isinstance(dfn, Import)
    return resolve(comp, dfn)

@cmatch(Type)
def resolve(comp, type):
    if type.parameters:
        return types.Ref(comp.symbols.qualify(type), *[resolve(comp, p) for p in type.parameters])
    else:
        return types.Ref(comp.symbols.qualify(type))

@cmatch(choice(Method, Function))
def resolve(comp, meth):
    return comp.types.get(comp.types[name(meth.parent)], meth.name.text)

@cmatch(Call)
def resolve(comp, c):
    expr = resolve(comp, c.expr)
    args = [resolve(comp, a) for a in c.args]
    return comp.types.call(expr, *args)

@cmatch(Attr)
def resolve(comp, a):
    expr = resolve(comp, a.expr)
    return comp.types.get(expr, a.attr.text)
