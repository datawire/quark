from .ast import *
import grammar

g = grammar.Grammar()

@g.parser
class Parser:

    keywords = ["package", "class", "extends", "if"]
    symbols = {"LBR": "{",
               "RBR": "}",
               "LPR": "(",
               "RPR": ")",
               "LA": "<",
               "RA": ">",
               "COMMA": ",",
               "SEMI": ";",
               "EQ": "=",
               "PLUS": "+",
               "MINUS": "-",
               "NOT": "!",
               "TWIDDLE": "~",
               "DOT": ".",
               "MUL": "*",
               "DIV": "/",
               "GE": ">=",
               "LE": "<=",
               "LT": "<",
               "GT": ">",
               "AND": "&&",
               "OR": "||"}

    @g.rule('file = file_definition* ~"$"')
    def visit_file(self, node, (definitions, eof)):
        return File(definitions)

    @g.rule('file_definition = package / class / function')
    def visit_file_definition(self, node, (dfn,)):
        return dfn

    @g.rule('package = PACKAGE name LBR pkg_definition* RBR')
    def visit_package(self, node, children):
        _, name, _, definitions, _ = children
        return Package(name, definitions)

    @g.rule('pkg_definition = class / function')
    def visit_pkg_definition(self, node, (dfn,)):
        return dfn

    @g.rule('class = CLASS name ( EXTENDS name )? LBR class_definition* RBR')
    def visit_class(self, node, (c, name, extends, l, definitions, r)):
        if extends:
            base = extends[0][-1]
        else:
            base = None
        return Class(name, base, definitions)

    @g.rule('class_definition = field / method')
    def visit_class_definition(self, node, (dfn,)):
        return dfn

    @g.rule('field = type name SEMI')
    def visit_field(self, node, (type, name, _)):
        return Field(type, name)

    @g.rule('method = type name LPR parameters RPR LBR statements RBR')
    def visit_method(self, node, (type, name, lp, parameters, rp, lb, statements, rb)):
        return Method(type, name, tuple(parameters), statements)

    @g.rule('function = type name LPR parameters RPR LBR statements RBR')
    def visit_function(self, node, (type, name, lp, parameters, rp, lb, statements, rb)):
        return Function(type, name, tuple(parameters), statements)

    @g.rule('parameters = (param (COMMA param)*)?')
    def visit_parameters(self, node, children):
        if children:
            children = children[0]
            if children[1]:
                children[1:] = map(lambda x: x[-1], children[1])
            else:
                del children[1]
        return children

    @g.rule('param = type name')
    def visit_param(self, node, (type, name)):
        return Param(type, name)

    @g.rule('type = name (LA types RA)?')
    def visit_type(self, node, (name, params)):
        if params:
            _, types, _ = params[0]
            return Type(name, types)
        else:
            return Type(name)

    @g.rule('types = type (COMMA type)*')
    def visit_types(self, node, (first, rest)):
        return [first] + [n[-1] for n in rest]

    @g.rule('name_re = ~"[a-zA-Z][a-zA-Z0-9]*"')
    def visit_name_re(self, node, children):
        return node.text

    @g.rule('name = _ name_re  _')
    def visit_name(self, node, (pre, name, post)):
        return Name(name)

    @g.rule('statements = statement*')
    def visit_statements(self, node, children):
        return children

    @g.rule('statement = exprstmt / assign / if')
    def visit_statement(self, node, (stmt,)):
        return stmt

    @g.rule('exprstmt = expr SEMI')
    def visit_exprstmt(self, node, (expr, s)):
        return expr

    @g.rule('assign = ( attr / var )  EQ expr SEMI')
    def visit_assign(self, node, ((lhs,), eq, rhs, s)):
        return Assign(lhs, rhs)

    @g.rule('if = IF LPR expr RPR LBR statements RBR')
    def visit_if(self, node, (kw, lp, expr, rp, lb, statements, rb)):
        return If(expr, statements)

    @g.rule('expr = oroperand (OR oroperand)*')
    def visit_expr(self, node, (result, remaining)):
        while remaining:
            op, rhs = remaining.pop(0)
            result = Binop(result, op, rhs)
        return result

    @g.rule("oroperand = andoperand (AND andoperand)*")
    def visit_oroperand(self, node, (result, remaining)):
        while remaining:
            op, rhs = remaining.pop(0)
            result = Binop(result, op, rhs)
        return result

    @g.rule("andoperand = NOT? notoperand")
    def visit_andoperand(self, node, (not_, operand)):
        if not_:
            return Unary(not_[0], operand)
        else:
            return operand


    @g.rule("notoperand = cmpoperand (cmpop cmpoperand)*")
    def visit_notoperand(self, node, (result, remaining)):
        while remaining:
            op, rhs = remaining.pop(0)
            result = Binop(result, op, rhs)
        return result

    @g.rule('cmpop = GE / LE / LT / GT')
    def visit_cmpop(self, node, (op,)):
        return op

    @g.rule("cmpoperand = addoperand (addop addoperand)*")
    def visit_cmpoperand(self, node, children):
        result = children[0]
        remaining = children[1]
        while remaining:
            result = Binop(result, remaining[0][0], remaining[0][1])
            remaining.pop(0)
        return result

    @g.rule('addop = PLUS / MINUS')
    def visit_addop(self, node, (op,)):
        return op

    @g.rule("addoperand = muloperand (mulop muloperand)*")
    def visit_addoperand(self, node, children):
        result = children[0]
        remaining = children[1]
        while remaining:
            result = Binop(result, remaining[0][0], remaining[0][1])
            remaining.pop(0)
        return result

    @g.rule('mulop = MUL / DIV')
    def visit_mulop(self, node, (op,)):
        return op

    @g.rule("muloperand = uop? prim")
    def visit_muloperand(self, node, (uop, expr)):
        if uop:
            return Unary(uop[0], expr)
        else:
            return expr

    @g.rule('uop = MINUS / TWIDDLE')
    def visit_uop(self, node, (op,)):
        return op

    @g.rule('prim = call / attr / atom')
    def visit_prim(self, node, (expr,)):
        return expr

    @g.rule('call = ( attr / atom ) LPR (expr (COMMA expr)*)? RPR')
    def visit_call(self, node, ((expr,), l, args, r)):
        if args:
            args = args[0]
            if args[1]:
                args[1:] = map(lambda x: x[-1], args[1])
            else:
                del args[1]
        else:
            args = []
        return Call(expr, args)

    @g.rule('attr = atom DOT name')
    def visit_attr(self, node, (atom, dot, name)):
        return Attr(atom, name)

    @g.rule('atom = paren / var')
    def visit_atom(self, node, (atom,)):
        return atom

    @g.rule('paren = LPR expr RPR')
    def visit_paren(self, node, (l, expr, r)):
        return expr

    @g.rule('var = name ""')
    def visit_var(self, node, (name, _)):
        return Var(name)

    def visit_(self, node, children):
        return children

    @g.rule('_ = __?')
    def visit__(self, node, children): pass

    @g.rule('__ = ~"[ \t\\n\\r]+"')
    def visit___(self, node, children): pass

del g
