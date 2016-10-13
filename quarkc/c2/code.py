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

        # Generic types are implemented as templates. This means we
        # run code generation for every unique instantiation of a
        # generic type, and these variables hold the unique reference
        # and associated type bindings for the current iteration.
        self.ref = None
        self.bindings = None

    @match(choice(Interface, Class))
    def is_top(self, dfn):
        return True

    @match(Function)
    def is_top(self, fun):
        return True if fun.body else False

    @match(choice(AST, [Package], Primitive, Method))
    def is_top(self, dfn):
        return False

    @match()
    def compile(self):
        definitions = []
        for sym, nd in self.symbols.definitions.items():
            if not self.is_top(nd): continue

            for ref, bindings in self.types.instantiations(nd):
                self.ref = ref
                self.bindings = bindings
                definitions.append(self.compile(nd))
        # XXX
        return ir.Package(*definitions)

    @match(Function)
    def compile(self, fun):
        sym = name(fun)
        t = self.types[fun.type]
        args = [self.compile_def(sym), self.compile(t)] + self.compile(fun.params) + [self.compile(fun.body)]
        return ir.Function(*args)

    @match(Class)
    def compile(self, cls):
        return ir.Class(self.compile_def(self.mangle(self.ref)), *[self.compile(d) for d in cls.definitions])

    @match(Field)
    def compile(self, field):
        return ir.Field(field.name.text, self.compile(self.types[field]))

    @match(Method)
    def compile(self, meth):
        if meth.type:
            con = ir.Method
            name = meth.name.text
            ret = self.types[meth.type]
        else:
            con = ir.Constructor
            name = self.mangle(types.Ref(meth.parent.name.text, *self.ref.params))
            ret = self.types[meth.parent]
        return con(name, self.compile(ret), *(self.compile(meth.params) + [self.compile(meth.body)]))

    @match(types.Ref)
    def compile_ref(self, ref):
        return self.compile_ref(self.mangle(ref.bind(self.bindings)))

    @match(types.Ref)
    def compile_ref_bound(self, ref):
        return self.compile_ref(self.mangle(ref))

    @match(types.Ref)
    def mangle(self, ref):
        return "_".join([ref.name] + [self.mangle(p).replace(".", "_") for p in ref.params])

    @match(basestring)
    def compile_ref(self, name):
        return ir.Ref("pkg", name)

    @match(basestring)
    def compile_def(self, name):
        return ir.Name("pkg", name)

    @match(types.Ref)
    def compile(self, ref):
        bound = ref.bind(self.bindings)
        return self.compile_bound(bound)

    @match(types.Ref)
    def compile_bound(self, ref):
        return ir.Type(self.compile_ref_bound(ref))

    @match(types.Ref("quark.int"))
    def compile_bound(self, ref):
        return ir.Int()

    @match(types.Ref("quark.bool"))
    def compile_bound(self, ref):
        return ir.Bool()

    @match(types.Ref("quark.String"))
    def compile_bound(self, ref):
        return ir.String()

    @match(types.Ref("quark.void"))
    def compile(self, ref):
        return ir.Void()

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

    @match(While)
    def compile(self, while_):
        return ir.While(self.compile(while_.condition), self.compile(while_.body))

    @match(Local)
    def compile(self, local):
        expr = (self.compile(local.declaration.value),) if local.declaration.value else ()
        return ir.Local(local.declaration.name.text, self.compile(self.types[local]), *expr)

    @match(Call)
    def compile(self, call):
        t = self.types[call.expr]
        assert isinstance(t, types.Ref)
        dfn = self.symbols[t.name]
        return self.compile_call(t, dfn, call.expr, call.args)

    @match(types.Ref, Method, Attr, [many(Expression)])
    def compile_call(self, ref, dfn, attr, args):
        assert attr.attr.text == dfn.name.text
        return self.compile_call_method(ref, dfn.parent, dfn, self.compile(attr.expr), args)

    @match(types.Ref, Method, Var, [many(Expression)])
    def compile_call(self, ref, dfn, var, args):
        assert var.name.text == dfn.name.text
        return self.compile_call_method(ref, dfn.parent, dfn, ir.This(), args)

    @match(types.Ref, Class, Method, ir.Expression, [many(Expression)])
    def compile_call_method(self, ref, objdfn, methdfn, expr, args):
        return ir.Send(expr, methdfn.name.text, tuple([self.compile(a) for a in args]))

    @match(types.Ref, Primitive, Method, ir.Expression, [many(Expression)])
    def compile_call_method(self, ref, objdfn, methdfn, expr, args):
        n = self.compile_ref("%s_%s" % (name(objdfn), methdfn.name.text))
        return ir.Invoke(n, expr, *[self.compile(a) for a in args])

    @match(types.Ref, Function, Var, [many(Expression)])
    def compile_call(self, ref, dfn, var, args):
        return ir.Invoke(self.compile_ref(name(dfn)), *[self.compile(a) for a in args])

    @match(types.Ref, Method, Type, [many(Expression)])
    def compile_call(self, ref, cons, type, args):
        callable = self.types.node(ref)
        return ir.Construct(self.compile_ref(callable.result), tuple([self.compile(a) for a in args]))

    @match(Attr)
    def compile(self, attr):
        return ir.Get(self.compile(attr.expr), attr.attr.text)

    @match(Number)
    def compile(self, n):
        return ir.IntLit(int(n.text))

    @match(String)
    def compile(self, s):
        return ir.StringLit(s.text)

    @match(Return)
    def compile(self, retr):
        return ir.Return(self.compile(retr.expr))

    @match(Var)
    def compile(self, var):
        return self.compile_var(self.symbols[var], var)

    @match(choice(Param, Declaration), Var)
    def compile_var(self, p, v):
        return ir.Var(v.name.text)

    @match(Field, Var)
    def compile_var(self, p, v):
        return ir.Get(ir.This(), v.name.text)

    @match(Assign)
    def compile(self, ass):
        return self.compile_assign(ass.lhs, ass.rhs)

    @match(Var, Expression)
    def compile_assign(self, var, expr):
        return self.compile_assign(self.symbols[var], var, expr)

    @match(Field, Var, Expression)
    def compile_assign(self, field, var, expr):
        return ir.Set(ir.This(), var.name.text, self.compile(expr))

    @match(choice(Param, Declaration), Var, Expression)
    def compile_assign(self, decl, var, expr):
        return ir.Assign(self.compile(var), self.compile(expr))

    @match(ExprStmt)
    def compile(self, exprs):
        return ir.Evaluate(self.compile(exprs.expr))
