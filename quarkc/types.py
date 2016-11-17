from .match import match, choice, many
from .errors import NodeError, InvalidInvocation, InvalidAssignment, UnresolvedType
from .ast import (
    AST, Expression, Statement, Block, Call, Attr, Function, Method, Type, Import, Class, Assign, Return, ExprStmt,
    TypeParam, If, While, Switch, Case, Declaration, Package, String, Number, Bool, Var, Local, Name, Field, Callable,
    Definition, List, Break, Continue, Null
)
from .symbols import Symbols, name, Self
from collections import OrderedDict

import errors
import typespace as types
from typespace import Typespace, Ref, UnresolvedRef, UnresolvedField, UnresolvedCall, Unresolvable

@match(choice(Expression, Statement, Block, Case))
def get_definition(nd):
    return get_definition(nd.parent)

@match(Definition)
def get_definition(dfn):
    return dfn

class Types(object):

    @match(Symbols)
    def __init__(self, symbols):
        self.symbols = symbols
        self.types = Typespace()
        self.resolved = OrderedDict()
        self.violations = OrderedDict()
        self.refset = None

    @match(NodeError)
    def add_violation(self, err):
        if err.node not in self.violations:
            self.violations[err.node] = []
        errs = self.violations[err.node]
        if err not in errs:
            errs.append(err)

    @property
    def unresolved(self):
        for k, v in self.resolved.items():
            err = self.unresolved_error(k, v)
            if err:
                yield err

    @match(AST, UnresolvedRef)
    def unresolved_error(self, n, un):
        return UnresolvedType(n, un.ref)

    @match(AST, UnresolvedField)
    def unresolved_error(self, n, un):
        return errors.UnresolvedField(n, un.type, un.name)

    @match(AST, UnresolvedCall)
    def unresolved_error(self, n, un):
        return errors.UnresolvedCall(n, un.type)

    @match(choice(AST, [many(Package)]), choice(Ref, Unresolvable))
    def unresolved_error(self, n, un):
        return None

    @match(choice(Class, Function, Method, [many(Package, min=1)]))
    def is_type(self, _):
        return True

    @match(AST)
    def is_type(self, _):
        return False

    @match(Class)
    def define(self, cls):
        clstype = types.Object(*[self.field(d, cls.parameters) for d in self.fields(cls)])
        if cls.parameters:
            clstype = types.Template(*[types.Param(name(p)) for p in cls.parameters] + [clstype])
        self.types[name(cls)] = clstype

    def fields(self, cls):
        for d in cls.definitions:
            if d.static or d.type is None:
                continue
            else:
                yield d

    @match(Function)
    def define(self, fun):
        self.types[name(fun)] = self.callable(fun)

    @match(Method)
    def define(self, meth):
        mtype = self.callable(meth)
        cls = meth.parent
        if cls.parameters:
            mtype = types.Template(*[types.Ref(name(p)) for p in cls.parameters] + [mtype])
        self.types[name(meth)] = mtype

    @match([many(Package, min=1)])
    def define(self, pkgs):
        self.types[name(pkgs[0])] = types.Object(*[types.Field(d.name.text, types.Ref(name(d)))
                                                   for p in pkgs for d in p.definitions])

    @match(Callable)
    def callable(self, c):
        if c.type:
            result = self.ref(c.type)
        else:
            result = types.Ref(name(c.parent), *[types.Ref(name(p)) for p in c.parent.parameters])
        return types.Callable(result, *[self.ref(p.type) for p in c.params])

    @match(Field, [many(TypeParam)])
    def field(self, f, parameters):
        return types.Field(f.name.text, self.ref(f.type))

    @match(Method, [many(TypeParam)])
    def field(self, m, parameters):
        return types.Final(m.name.text, types.Ref(name(m), *[types.Ref(name(p)) for p in parameters]))

    @match(Type)
    def ref(self, type):
        params = type.parameters or ()
        return types.Ref(self.symbols.qualify(type), *[self.ref(p) for p in params])


    @match(choice(Function, Class, Declaration, Package, [many(Package, min=1)], Expression, Type, Local,
                  Return, Assign, ExprStmt, Self))
    def has_type(self, _):
        return True

    @match(choice(Name, Block, If, While, TypeParam, Switch, Case, Break, Continue))
    def has_type(self, _):
        return False

    @match(Import)
    def has_type(self, imp):
        return True if imp.alias else False

    @match(choice(Class, Function, Method, Declaration, Package, Expression, Type, Local, Return, Assign, Import,
                  ExprStmt, Self))
    def resolve(self, node):
        if node in self.resolved:
            return self.resolved[node]
        else:
            result = self.types.unresolve(self.do_resolve(node))
            self.resolved[node] = result
            self.validate_bool(node.parent, node, result)
            return result

    # XXX: should validation be a separate phase?
    @match(choice(If, While), Expression, types.Ref)
    def validate_bool(self, p, n, r):
        self.validate_ass(p, types.Ref('quark.bool'), r)

    @match(AST, AST, choice(types.Ref, types.Unresolved))
    def validate_bool(self, p, n, r):
        pass

    @match([many(Package, min=1)])
    def resolve(self, pkgs):
        return self.resolve(pkgs[0])


    @match(Return)
    def do_resolve(self, retr):
        dtype = self.node(get_definition(retr)).result
        rtype = self.resolve(retr.expr)
        self.validate_ass(retr, dtype, rtype)
        return rtype

    @match(Local)
    def do_resolve(self, local):
        return self.resolve(local.declaration)

    @match(Assign)
    def do_resolve(self, ass):
        left = self.resolve(ass.lhs)
        right = self.resolve(ass.rhs)
        self.validate_ass(ass, left, right)
        return left

    @match(AST, types.Ref, types.Ref)
    def validate_ass(self, node, left, right):
        if not self.types.assignable(left, right):
            self.add_violation(InvalidAssignment(node, left, right))

    @match(AST, types.Unresolved, types.Unresolved)
    def validate_ass(self, *x):
        pass

    @match(AST, types.Ref, types.Unresolved)
    def validate_ass(self, *x):
        pass

    @match(AST, types.Unresolved, types.Ref)
    def validate_ass(self, *x):
        pass

    @match(ExprStmt)
    def do_resolve(self, es):
        return self.resolve(es.expr)

    @match(Class)
    def do_resolve(self, dfn):
        return self.types[name(dfn)]

    @match(String)
    def do_resolve(self, _):
        return types.Ref("quark.String")

    @match(Number)
    def do_resolve(self, _):
        return types.Ref("quark.int")

    @match(Bool)
    def do_resolve(self, _):
        return types.Ref("quark.bool")

    @match(List)
    def do_resolve(self, l):
        return self.do_resolve_infer(l.parent, l)

    @match(Null)
    def do_resolve(self, n):
        return self.do_resolve_infer(n.parent, n)

    @match(Declaration, choice(List, Null))
    def do_resolve_infer(self, d, _):
        return self.resolve(d.type)

    @match(List, choice(List, Null))
    def do_resolve_infer(self, l, _):
        return self.resolve(l).params[0]

    @match(Call, choice(List, Null))
    def do_resolve_infer(self, c, l):
        expr = self.resolve(c.expr)
        callable = self.node(expr)
        idx = c.args.index(l)
        assert idx >= 0
        if isinstance(callable, types.Unresolved):
            return Unresolvable(callable)
        return callable.arguments[idx]

    @match(Var)
    def do_resolve(self, v):
        return self.resolve(self.symbols[v])

    @match(Declaration)
    def do_resolve(self, declaration):
        left = self.resolve(declaration.type)
        if declaration.value:
            right = self.resolve(declaration.value)
            self.validate_ass(declaration, left, right)
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
        return self.do_resolve(type, type.parent)

    @match(Type, Call)
    def do_resolve(self, type, _):
        cls = self.symbols[type]
        params = type.parameters or ()
        return self.types.resolve(types.Ref("%s.%s" % (self.symbols.qualify(type), cls.name.text),
                                            *[self.resolve(p) for p in params]))

    @match(Type, AST)
    def do_resolve(self, type, _):
        params = type.parameters or ()
        return self.types.resolve(types.Ref(self.symbols.qualify(type), *[self.resolve(p) for p in params]))

    @match(choice(Method, Function))
    def do_resolve(self, meth):
        if meth.type:
            return self.types.get(self.types[name(meth.parent)], meth.name.text)
        else:
            return self.types[name(meth)]

    @match(Call)
    def do_resolve(self, c):
        expr = self.node(c.expr)
        args = [self.resolve(a) for a in c.args]
        self.validate_call(c, expr, *args)
        return self.types.call(expr, *args)

    @match(Call, types.Callable, many(choice(types.Ref, types.Unresolved)))
    def validate_call(self, c, expr, *args):
        if len(expr.arguments) == len(args):
            for n, p, a in zip(c.args, expr.arguments, args):
                self.validate_ass(n, p, a)
        else:
            self.add_violation(InvalidInvocation(c, self.types.unresolve(expr), len(expr.arguments), len(args)))

    @match(Call, types.Unresolved, many(choice(types.Ref, types.Unresolved)))
    def validate_call(self, *x):
        pass

    @match(Attr)
    def do_resolve(self, a):
        expr = self.resolve(a.expr)
        return self.types.get(expr, a.attr.text)

    @match(Self)
    def do_resolve(self, s):
        return self.resolve(s.klass)

    @match(AST)
    def __getitem__(self, node):
        return self.resolve(node)

    @match(basestring)
    def __getitem__(self, sym):
        return self[self.symbols[sym]]

    @match(types.Ref)
    def node(self, ref):
        return self.types.resolve(ref)

    @match(types.Unresolved)
    def node(self, un):
        return un

    @match(choice(AST, basestring))
    def node(self, nd):
        return self.node(self[nd])

    @match(AST)
    def instantiations(self, nd):
        return self.instantiations(self[nd])

    @match(types.Ref)
    def instantiations(self, ref):
        return self.instantiations(ref, self.node(ref))

    @match(types.Ref, types.Template)
    def instantiations(self, ref, t):
        if self.refset is None:
            self.refset = set([r for r in self.types.resolved if r.params])
            while True:
                prev = len(self.refset)
                bindingses = []
                for r in self.refset:
                    tp = self.types[r.name]
                    bindings = {}
                    for p, v in zip(tp.params, r.params):
                        bindings[p.name] = v
                    bindingses.append(bindings)
                additions = []
                for r in self.refset:
                    for b in bindingses:
                        bound = r.bind(b)
                        if bound != r:
                            additions.append(bound)
                self.refset.update(additions)
                if len(self.refset) == prev:
                    break

        refs = [r for r in self.refset if r.name == ref.name and r.params]
        for ref in refs:
            bindings = {}
            assert len(ref.params) == len(t.params)
            concrete = True
            for r, p in zip(ref.params, t.params):
                bindings[p.name] = r
                if isinstance(self.node(r), types.Param):
                    concrete = False
            if concrete:
                yield ref, bindings

    @match(types.Ref, types.Type)
    def instantiations(self, ref, _):
        yield ref, {}
