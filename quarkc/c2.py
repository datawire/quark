from .match import *
from .errors import *
from .parse import *
from .symbols import *
from .traits import *

import ir, types, typeconstruction

@match(choice(Function, Interface, Class))
def toplevel(dfn):
    return True

@match(choice(AST, [Package], Primitive))
def toplevel(dfn):
    return False

class Compiler(object):

    MATCH_TRAITS = COMPILER

    def __init__(self):
        self.errors = Errors()
        self.symbols = Symbols(self.errors)
        self.typespace = types.Typespace(self.errors)

    @match(basestring, basestring)
    def parse(self, name, content):
        try:
            file = parse(name, content)
            self.symbols.add(file)
        except ParseError, e:
            self.errors.add(str(e))

    @match()
    def check(self):
        self.errors.check()
        for k, v in self.symbols.definitions.items():
            t = typeconstruction.type(self, v)
            if t is not None:
                self.typespace[k] = t
        for k, v in self.symbols.definitions.items():
            if not isinstance(v, list):
                traverse(v, lambda x: typeconstruction.check(self, x))
        self.errors.check()

    @match()
    def compile(self):
        for k, v in self.symbols.definitions.items():
            if toplevel(v):
                ir = self.compile(k, v)
                if ir:
                    print ir

    @match(basestring, Function)
    def compile(self, key, fun):
        if fun.body is None: return
        t = self.typespace.unresolve(typeconstruction.resolve(self, fun).result)
        args = [self.compile(key), self.compile(t)] + self.compile(fun.params) + [self.compile(fun.body)]
        return ir.Function(*args)

    @match(basestring)
    def compile(self, name):
        return ir.Name("pkg", name)

    @match(types.Ref)
    def compile(self, ref):
        return ir.Type(self.compile(ref.name))

    @match(types.Ref("quark.int"))
    def compile(self, ref):
        return ir.Int()

    @match(types.Ref("quark.bool"))
    def compile(self, ref):
        return ir.Bool()

    @match(Type)
    def compile(self, t):
        return self.compile(self.typespace.unresolve(typeconstruction.resolve(self, t)))

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
        t = self.typespace.unresolve(typeconstruction.resolve(self, call.expr))
        assert isinstance(t, types.Ref)
        dfn = self.symbols.definitions[t.name]
        return self.compile_call(t, dfn, call.expr, call.args)

    @match(types.Ref, Method, Attr, [many(Expression)])
    def compile_call(self, ref, dfn, attr, args):
        assert attr.attr.text == dfn.name.text
        return ir.Send(self.compile(attr.expr), dfn.name.text, tuple([self.compile(a) for a in args]))

    @match(types.Ref, Function, Var, [many(Expression)])
    def compile_call(self, ref, dfn, var, args):
        return ir.Invoke(self.compile(name(dfn)), *[self.compile(a) for a in args])

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
        dfn = self.symbols.definitions[self.symbols.qualify(var)]
        return self.compile_var(dfn, var)

    @match(Param, Var)
    def compile_var(self, p, v):
        return ir.Var(v.name.text)

if __name__ == "__main__":
    c = Compiler()
    c.parse("fib", """
    namespace quark {
        primitive int {
            int __add__(int other);
            int __sub__(int other);
            bool __lt__(int other);
            bool __eq__(int other);
            String toString();
        }

        primitive bool {
            bool __eq__(bool other);
            String toString();
        }

        primitive String {
            bool __lt__(String other);
            bool __eq__(String other);
            String toString();
        }
    }

    namespace math {
        int fib(int n) {
            if (n < 2) {
                return n;
            } else {
                return fib(n-1) + fib(n-2);
            }
        }
    }
    """)

    c.check()
    c.compile()
