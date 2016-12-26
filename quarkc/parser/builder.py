from quarkc.ast import (
    Assign, Attr, Block, Break, Call, Case, Cast, Class, Continue, Declaration,
    Entry, ExprStmt, Field, Fixed, Function, If, Interface, List, Local, Map,
    Method, Name, NativeBlock, NativeFunction, Number, Operator, Package,
    Param, Primitive, Return, String, Switch, Type, TypeParam, Var, While
)
from antlr4 import TerminalNode

from generated.QuarkParser import QuarkParser
from generated.QuarkParserListener import QuarkParserListener

def flatten(stuff, result=None):
    if result is None:
        result = []
    for x in stuff:
        if isinstance(x, list):
            flatten(x, result)
        elif isinstance(x, basestring):
            result.append(Fixed(x))
        else:
            result.append(x)
    return result

def leaf(cls=lambda x: x):
    def meth(self, ctx):
        ctx.ast = cls(ctx.getText())
    return meth

ALIASES = {
    "+": "__add__",
    "-": "__sub__",
    "*": "__mul__",
    "/": "__div__",
    "%": "__mod__",
    "&&": "__and__",
    "||": "__or__",
    "<=": "__le__",
    ">=": "__ge__",
    "<": "__lt__",
    ">": "__gt__",
    "==": "__eq__",
    "!=": "__ne__",
}

UNARY = {
    "!": "__not__",
    "-": "__neg__"
}

class ASTBuilder(QuarkParserListener):

    def exitEveryRule(self, ctx):
        if not hasattr(ctx, "ast"):
            raise Exception("not processed: %s(%s)" % (ctx.__class__.__name__, ", ".join(str(c) for c in self.children)))

    def lift(self, ctx):
        nonterminals = [c for c in ctx.children if not isinstance(c, TerminalNode)]
        assert len(nonterminals) == 1, nonterminals
        ctx.ast = nonterminals[0].ast

    exitDefinition = exitStatement = exitCompound = exitSimple = exitExpr = lift

    ## FILE (COMPILATION UNIT) ##

    def exitQfile(self, ctx):
        ctx.ast = [d.ast for d in ctx.definitions]

    ## DEFINITIONS ##

    def exitNamespace(self, ctx):
        ctx.ast = Package(ctx.name().ast, [d.ast for d in ctx.definitions])

    # Function
    def exitFunction(self, ctx):
        parent = ctx.parentCtx
        if isinstance(parent, (QuarkParser.PrimitiveContext, QuarkParser.QclassContext,
                               QuarkParser.QinterfaceContext)):
            cons = Method
        else:
            if ctx.native_body():
                cons = NativeFunction
            else:
                cons = Function
        if ctx.native_body():
            body = ctx.native_body().ast
        else:
            body = ctx.body().ast if ctx.body() else None
        ctx.ast = cons(ctx.qtype().ast if ctx.qtype() else None, ctx.name().ast,
                       tuple(p.ast for p in ctx.parameters), body)

    def exitParameter(self, ctx):
        ctx.ast = Param(ctx.qtype().ast, ctx.name().ast, None)

    def exitName(self, ctx):
        ctx.ast = Name(ctx.getText())

    def exitQtype(self, ctx):
        params = [p.ast for p in ctx.params] or None
        ctx.ast = Type(ctx.name().ast, params)

    def exitBody(self, ctx):
        ctx.ast = Block([s.ast for s in ctx.statements])

    # Primitive
    def exitPrimitive(self, ctx):
        name = ctx.name().ast
        params = ctx.tparams().ast if ctx.tparams() else []
        definitions = [d.ast for d in ctx.definitions]
        bases = []
        ctx.ast = Primitive(name, params, bases, definitions)
        ctx.ast.mappings = [m.ast for m in ctx.mappings]

    def exitTparam(self, ctx):
        ctx.ast = TypeParam(ctx.name().ast, ctx.bound.ast if ctx.bound else None)

    def exitTparams(self, ctx):
        ctx.ast = [p.ast for p in ctx.params]

    # Interface
    def exitQinterface(self, ctx):
        name = ctx.name().ast
        params = ctx.tparams().ast if ctx.tparams() else []
        definitions = [d.ast for d in ctx.definitions]
        bases = []
        ctx.ast = Interface(name, params, bases, definitions)

    # Class
    def exitQclass(self, ctx):
        name = ctx.name().ast
        params = ctx.tparams().ast if ctx.tparams() else []
        definitions = [d.ast for d in ctx.fields + ctx.methods]
        bases = [b.ast for b in ctx.bases]
        ctx.ast = Class(name, params, bases, definitions)

    def exitField(self, ctx):
        ctx.ast = Field(ctx.qtype().ast, ctx.name().ast, ctx.expr().ast if ctx.expr() else None)


    ## NATIVE ##

    def exitNative_body(self, ctx):
        ctx.ast = NativeBlock(ctx.LANG(), [(i.text, None) for i in ctx.imports], flatten(f.ast for f in ctx.fragments))

    def exitNative_code(self, ctx):
        ctx.ast = ctx.getText()

    def exitNative_var(self, ctx):
        ctx.ast = Var(Name(ctx.getText()[1:]))

    def exitNative_expr(self, ctx):
        ctx.ast = ctx.expr().ast

    def exitNative_braces(self, ctx):
        ctx.ast = ["{"] + [f.ast for f in ctx.fragments] + ["}"]

    ## SIMPLE STATEMENTS ##

    def exitLocal(self, ctx):
        ctx.ast = Local(Declaration(ctx.qtype().ast, ctx.name().ast, ctx.expr().ast if ctx.expr() else None))

    def exitAssign(self, ctx):
        ctx.ast = ctx.lhs().ast(ctx.expr().ast)

    def exitSetvar(self, ctx):
        ctx.ast = lambda rhs, name=ctx.name().ast: Assign(Var(name), rhs)

    def exitSetattr(self, ctx):
        ctx.ast = lambda rhs, expr=ctx.expr().ast, attr=ctx.name().ast: Assign(Attr(expr, attr), rhs)

    def exitSetindex(self, ctx):
        ctx.ast = lambda rhs, expr=ctx.expr(0).ast, index=ctx.expr(1).ast: Call(expr, [index, rhs])

    def exitEvaluate(self, ctx):
        ctx.ast = ExprStmt(ctx.expr().ast)

    def exitQbreak(self, ctx):
        ctx.ast = Break()

    def exitQcontinue(self, ctx):
        ctx.ast = Continue()

    def exitQreturn(self, ctx):
        ctx.ast = Return(ctx.expr().ast if ctx.expr() else None)

    ## COMPOUND STATEMENTS ##

    def exitQif(self, ctx):
        ctx.ast = If(ctx.predicate.ast, ctx.consequence.ast, ctx.alternative.ast if ctx.alternative else None)

    def exitQwhile(self, ctx):
        ctx.ast = While(ctx.expr().ast, ctx.body().ast)

    def exitQswitch(self, ctx):
        ctx.ast = Switch(ctx.expr().ast, [c.ast for c in ctx.qcase()])

    def exitQcase(self, ctx):
        ctx.ast = Case(ctx.exprs().ast, Block([s.ast for s in ctx.statement()]))

    ## EXPRESSIONS ##

    exitNumber = leaf(Number)

    exitString = leaf(String)

    def exitList(self, ctx):
        ctx.ast = List(ctx.exprs().ast)

    def exitMap(self, ctx):
        ctx.ast = Map([e.ast for e in ctx.entries])

    def exitEntry(self, ctx):
        ctx.ast = Entry(ctx.key.ast, ctx.value.ast)

    def exitVar(self, ctx):
        ctx.ast = Var(ctx.name().ast)

    def exitParen(self, ctx):
        ctx.ast = ctx.expr().ast

    def exitCall(self, ctx):
        ctx.ast = Call(ctx.expr().ast, ctx.exprs().ast)

    def exitAttr(self, ctx):
        ctx.ast = Attr(ctx.expr().ast, ctx.name().ast)

    def exitIndex(self, ctx):
        ctx.ast = Call(Attr(ctx.expr(0).ast, Name("__get__")), [ctx.index.ast])

    def exitNew(self, ctx):
        ctx.ast = Call(ctx.qtype().ast, ctx.exprs().ast)

    def exitUnary(self, ctx):
        op = ctx.op.text
        if op == "?":
            ctx.ast = Cast(ctx.expr().ast)
        else:
            ctx.ast = Call(Attr(ctx.expr().ast, Name(UNARY[op])), [])

    def binop(self, ctx):
        op = ctx.op.text
        ctx.ast = Operator(Attr(ctx.expr(0).ast, Name(ALIASES[op])), ctx.expr(1).ast, op)

    exitLogical_and = exitLogical_or = exitEquality = exitComparison = exitMultiplication = exitAddition = binop

    def exitExprs(self, ctx):
        ctx.ast = [e.ast for e in ctx.expressions]
