from .match import match, choice, many, ntuple
from .ast import (
    Interface, Class, Function, AST, Package, Primitive, Method, Field, If, Block, Type, Param,
    While, Local, Call, Attr, Expression, Var, Number, String, Return, Declaration, Assign, ExprStmt
)
from .symbols import Symbols, name, Self

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

        self.asserts = 0

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
        self.asserts = 0
        sym = name(fun)
        t = self.types[fun.type]
        args = [self.compile_def(sym), self.compile(t)] + self.compile(fun.params) + [self.compile(fun.body)]
        if self.asserts:
            return ir.Check(args[0], *args[2:])
        else:
            return ir.Function(*args)

    @match(Class)
    def compile(self, cls):
        return ir.Class(self.compile_def(self.mangle(self.ref)), *[self.compile(d) for d in cls.bases + cls.definitions])

    @match(Field)
    def compile(self, field):
        return ir.Field(field.name.text, self.compile(self.types[field]))

    @match(Method)
    def compile(self, meth):
        if meth.type:
            klass = ir.Method
            name = meth.name.text
            ret = self.types[meth.type]
        else:
            # XXX: this would benefit from a way to navigate from a
            # method to its object in typespace, because we don't have
            # that, we need to navigate in the AST and then explicitly
            # rebind. In general navigation in typespace is clumsy
            # right now.
            klass = ir.Constructor
            name = self.mangle(meth.name.text, *self.ref.params)
            ret = self.types.node(meth).bind(self.bindings).result
        return klass(name, self.compile(ret), *(self.compile(meth.params) + [self.compile(meth.body)]))

    @match(Interface)
    def compile(self, iface):
        return ir.Interface(self.compile_def(self.mangle(self.ref)),
                            *[self.compile_interface(d) for d in iface.definitions])

    @match(Method)
    def compile_interface(self, meth):
        assert meth.type
        assert not meth.body
        return ir.Message(meth.name.text, self.compile(self.types.node(meth).result), *self.compile(meth.params))

    @match(types.Ref)
    def compile_ref(self, ref):
        return self.compile_ref(ref, "")

    @match(types.Ref, basestring)
    def compile_ref(self, ref, suffix):
        return self.compile_ref(self.mangle(ref.bind(self.bindings)) + suffix)

    @match(types.Ref)
    def mangle(self, ref):
        return self.mangle(ref.name, *ref.params)

    @match(basestring, many(types.Ref))
    def mangle(self, name, *params):
        ref = types.Ref(name, *params)
        ref = ref.bind(self.bindings)
        return "_".join([name] + [self.mangle_param(p).replace(".", "_") for p in ref.params])

    @match(types.Ref)
    def mangle_param(self, ref):
        return "_".join([self.mangle_param(ref.name)] + [self.mangle_param(p).replace(".", "_") for p in ref.params])

    @match("quark.int")
    def mangle_param(self, sym):
        return "int"

    @match("quark.String")
    def mangle_param(self, sym):
        return "String"

    @match(basestring)
    def mangle_param(self, sym):
        return sym

    @match(basestring)
    def compile_ref(self, name):
        if name.startswith("quark."):
            return ir.Ref("quark", name)
        else:
            return ir.Ref("pkg", name)

    @match(basestring)
    def compile_def(self, name):
        return ir.Name("pkg", name)

    @match(types.Ref)
    def compile(self, ref):
        bound = ref.bind(self.bindings)
        return self.compile_bound(bound)

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
    def compile_bound(self, ref):
        return ir.Void()

    @match(types.Ref)
    def compile_bound(self, ref):
        return self.compile_bound(ref.name, *ref.params)

    @match("quark.List", many(types.Ref))
    def compile_bound(self, name, element):
        return ir.List(self.compile(element))

    @match("quark.Map", many(types.Ref))
    def compile_bound(self, name, key, value):
        return ir.Map(self.compile(key), self.compile(value))

    @match(basestring, many(types.Ref))
    def compile_bound(self, name, *params):
        dfn = self.symbols[name]
        if isinstance(dfn, Interface):
            return ir.InterfaceType(self.compile_ref(self.mangle(name, *params)))
        else:
            return ir.ClassType(self.compile_ref(self.mangle(name, *params)))

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
        alt = self.compile(if_.alternative) if if_.alternative else ir.Block()
        return ir.If(self.compile(if_.predicate), self.compile(if_.consequence), alt)

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
        n = "%s_%s" % (self.mangle(name(objdfn), *ref.params), methdfn.name.text)
        return ir.Invoke(self.compile_ref(n), expr, *[self.compile(a) for a in args])

    @match(types.Ref, Function, Var, [many(Expression)])
    def compile_call(self, ref, dfn, var, args):
        return self.compile_call(ref, dfn, var.name.text, args)

    @match(types.Ref, Function, basestring, [many(Expression)])
    def compile_call(self, ref, dfn, fun, args):
        return ir.Invoke(self.compile_ref(name(dfn)), *[self.compile(a) for a in args])

    @match(types.Ref, Function, "assertEqual", [many(Expression)])
    def compile_call(self, ref, dfn, fun, args):
        self.asserts += 1
        return ir.AssertEqual(*[self.compile(a) for a in args])

    @match(types.Ref, Method, Type, [many(Expression)])
    def compile_call(self, ref, cons, type, args):
        callable = self.types.node(ref)
        if isinstance(cons.parent, Primitive):
            return ir.Invoke(self.compile_ref(callable.result, "___init__"), *[self.compile(a) for a in args])
        else:
            return ir.Construct(self.compile_ref(callable.result), tuple([self.compile(a) for a in args]))

    @match(Attr)
    def compile(self, attr):
        return ir.Get(self.compile(attr.expr), attr.attr.text)

    @match(Number)
    def compile(self, n):
        return ir.IntLit(int(n.text))

    @match(String)
    def compile(self, s):
        value = ""
        idx = 1
        while idx < len(s.text) - 1:
            c = s.text[idx]
            next = s.text[idx + 1]
            if c == "\\":
                if next == "x":
                    value += chr(int(s.text[idx+2:idx+4], 16))
                    idx += 4
                elif next == "n":
                    value += "\n"
                    idx += 2
                elif next == "\r":
                    value += "\r"
                    idx += 2
                else:
                    assert False, "bad string literal: %s" % s.text
            else:
                value += c
                idx += 1
        return ir.StringLit(value)

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

    @match(Self, Var)
    def compile_var(self, s, v):
        return ir.This()

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

    @match(Attr, Expression)
    def compile_assign(self, attr, expr):
        return ir.Set(self.compile(attr.expr), attr.attr.text, self.compile(expr))

    @match(ExprStmt)
    def compile(self, exprs):
        return self.to_stmt(self.compile(exprs.expr))

    @match(ir.Statement)
    def to_stmt(self, stmt):
        return stmt

    @match(ir.Expression)
    def to_stmt(self, expr):
        return ir.Evaluate(expr)
