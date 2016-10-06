from .match import *
from .traits import *
from .ast import *
from .symbols import *

import ir, types

class Code(object):

    @match(Symbols, types.Types)
    def __init__(self, symbols, types):
        self.symbols = symbols
        self.types = types
        self.definitions = OrderedDict()

    @match(choice(Interface, Class))
    def is_top(self, dfn):
        return True

    @match(Function)
    def is_top(self, fun):
        return True if fun.body else False

    @match(choice(AST, [Package], Primitive))
    def is_top(self, dfn):
        return False

    @match()
    def compile(self):
        for sym, nd in self.symbols.definitions.items():
            if self.is_top(nd):
                self.definitions[sym] = self.compile(nd)
        # XXX
        return ir.Package(*self.definitions.values())

    @match(Function)
    def compile(self, fun):
        key = name(fun)
        t = self.types[fun.type]
        args = [self.compile_def(key), self.compile(t)] + self.compile(fun.params) + [self.compile(fun.body)]
        return ir.Function(*args)

    @match(basestring)
    def compile_ref(self, name):
        return ir.Ref("pkg", name)

    @match(basestring)
    def compile_def(self, name):
        return ir.Name("pkg", name)

    @match(types.Ref)
    def compile(self, ref):
        return ir.Type(self.compile_ref(ref.name))

    @match(types.Ref("quark.int"))
    def compile(self, ref):
        return ir.Int()

    @match(types.Ref("quark.bool"))
    def compile(self, ref):
        return ir.Bool()

    @match(Type)
    def compile(self, t):
        return self.compile(self.types[t])

    @match(ntuple(Param))
    def compile(self, params):
        return [ir.Param(p.name.text, self.compile(p.type)) for p in params]

    @match(Block)
    def compile(self, block):
        return ir.Block(*[self.compile(s) for s in block.statements])

    @match(If)
    def compile(self, if_):
        return ir.If(self.compile(if_.predicate), self.compile(if_.consequence), self.compile(if_.alternative))

    @match(Call)
    def compile(self, call):
        t = self.types[call.expr]
        assert isinstance(t, types.Ref)
        dfn = self.symbols[t.name]
        return self.compile_call(t, dfn, call.expr, call.args)

    @match(types.Ref, Method, Attr, [many(Expression)])
    def compile_call(self, ref, dfn, attr, args):
        assert attr.attr.text == dfn.name.text
        return self.compile_call_method(ref, dfn.parent, dfn, attr, args)

    @match(types.Ref, Class, Method, Attr, [many(Expression)])
    def compile_call_method(self, ref, objdfn, methdfn, attr, args):
        return ir.Send(self.compile(attr.expr), methdfn.name.text, tuple([self.compile(a) for a in args]))

    @match(types.Ref, Primitive, Method, Attr, [many(Expression)])
    def compile_call_method(self, ref, objdfn, methdfn, attr, args):
        n = self.compile_ref("%s_%s" % (name(objdfn), methdfn.name.text))
        return ir.Invoke(n, self.compile(attr.expr), *[self.compile(a) for a in args])

    @match(types.Ref, Function, Var, [many(Expression)])
    def compile_call(self, ref, dfn, var, args):
        return ir.Invoke(self.compile_ref(name(dfn)), *[self.compile(a) for a in args])

    @match(Attr)
    def compile(self, attr):
        return ir.Get(self.compile(attr.expr), attr.attr.text)

    @match(Number)
    def compile(self, n):
        return ir.IntLit(int(n.text))

    @match(Return)
    def compile(self, retr):
        return ir.Return(self.compile(retr.expr))

    @match(Var)
    def compile(self, var):
        return self.compile_var(self.symbols[var], var)

    @match(Param, Var)
    def compile_var(self, p, v):
        return ir.Var(v.name.text)
