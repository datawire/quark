from .match import *
from .traits import *
from .ast import *
from .symbols import *

import ir, types, typeconstruction

@cmatch(basestring, Function)
def compile(comp, key, fun):
    if fun.body is None: return
    t = comp.typespace.unresolve(typeconstruction.resolve(comp, fun).result)
    args = [compile(comp, key), compile(comp, t)] + compile(comp, fun.params) + [compile(comp, fun.body)]
    return ir.Function(*args)

@cmatch(basestring)
def compile(comp, name):
    return ir.Name("pkg", name)

@cmatch(types.Ref)
def compile(comp, ref):
    return ir.Type(compile(comp, ref.name))

@cmatch(types.Ref("quark.int"))
def compile(comp, ref):
    return ir.Int()

@cmatch(types.Ref("quark.bool"))
def compile(comp, ref):
    return ir.Bool()

@cmatch(Type)
def compile(comp, t):
    return compile(comp, comp.typespace.unresolve(typeconstruction.resolve(comp, t)))

@cmatch(ntuple(Param))
def compile(comp, params):
    return [ir.Param(p.name.text, compile(comp, p.type)) for p in params]

@cmatch(Block)
def compile(comp, block):
    return ir.Block(*[compile(comp, s) for s in block.statements])

@cmatch(If)
def compile(comp, if_):
    return ir.If(compile(comp, if_.predicate), compile(comp, if_.consequence), compile(comp, if_.alternative))

@cmatch(Call)
def compile(comp, call):
    t = comp.typespace.unresolve(typeconstruction.resolve(comp, call.expr))
    assert isinstance(t, types.Ref)
    dfn = comp.symbols[t.name]
    return compile_call(comp, t, dfn, call.expr, call.args)

@cmatch(types.Ref, Method, Attr, [many(Expression)])
def compile_call(comp, ref, dfn, attr, args):
    assert attr.attr.text == dfn.name.text
    return compile_call_method(comp, ref, dfn.parent, dfn, attr, args)

@cmatch(types.Ref, Class, Method, Attr, [many(Expression)])
def compile_call_method(comp, ref, objdfn, methdfn, attr, args):
    return ir.Send(compile(comp, attr.expr), methdfn.name.text, tuple([compile(comp, a) for a in args]))

@cmatch(types.Ref, Primitive, Method, Attr, [many(Expression)])
def compile_call_method(comp, ref, objdfn, methdfn, attr, args):
    n = compile(comp, "%s_%s" % (name(objdfn), methdfn.name.text))
    return ir.Invoke(n, compile(comp, attr.expr), *[compile(comp, a) for a in args])

@cmatch(types.Ref, Function, Var, [many(Expression)])
def compile_call(comp, ref, dfn, var, args):
    return ir.Invoke(compile(comp, name(dfn)), *[compile(comp, a) for a in args])

@cmatch(Attr)
def compile(self, attr):
    return ir.Get(compile(comp, attr.expr), attr.attr.text)

@cmatch(Number)
def compile(comp, n):
    return ir.IntLit(int(n.text))

@cmatch(Return)
def compile(comp, retr):
    return ir.Return(compile(comp, retr.expr))

@cmatch(Var)
def compile(comp, var):
    return compile_var(comp, comp.symbols[var], var)

@cmatch(Param, Var)
def compile_var(comp, p, v):
    return ir.Var(v.name.text)
