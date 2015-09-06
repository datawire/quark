# Copyright 2015 datawire. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from .ast import *
import grammar

g = grammar.Grammar()

@g.parser
class Parser:

    keywords = ["package", "class", "extends", "return", "macro"]
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
               "OR": "||",
               "IF": "if",
               "ELSE": "else"}

    @g.rule('file = file_definition* ~"$"')
    def visit_file(self, node, (definitions, eof)):
        return File(definitions)

    @g.rule('file_definition = package / class / function / macro')
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

    @g.rule('class_definition = field / method / method_macro')
    def visit_class_definition(self, node, (dfn,)):
        return dfn

    @g.rule('field = type name (EQ expr)? SEMI')
    def visit_field(self, node, (type, name, opt, _)):
        if opt:
            expr = opt[0][-1]
        else:
            expr = None
        return Field(type, name, expr)

    @g.rule('method = type name LPR parameters RPR block')
    def visit_method(self, node, (type, name, lp, parameters, rp, body)):
        return Method(type, name, tuple(parameters), body)

    @g.rule('method_macro = MACRO type name LPR parameters RPR expr SEMI')
    def visit_method_macro(self, node, (macro, type, name, lp, parameters, rp, expr, s)):
        return MethodMacro(type, name, tuple(parameters), expr)

    @g.rule('function = type name LPR parameters RPR block')
    def visit_function(self, node, (type, name, lp, parameters, rp, body)):
        return Function(type, name, tuple(parameters), body)

    @g.rule('macro = MACRO type name LPR parameters RPR expr SEMI')
    def visit_macro(self, node, (macro, type, name, lp, parameters, rp, expr, s)):
        return Macro(type, name, tuple(parameters), expr)

    @g.rule('parameters = (param (COMMA param)*)?')
    def visit_parameters(self, node, children):
        if children:
            children = children[0]
            if children[1]:
                children[1:] = map(lambda x: x[-1], children[1])
            else:
                del children[1]
        return children

    @g.rule('param = type name (EQ expr)?')
    def visit_param(self, node, (type, name, opt)):
        if opt:
            expr = opt[0][-1]
        else:
            expr = None
        return Param(type, name, expr)

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

    @g.rule('statement = return / exprstmt / assign / local / if')
    def visit_statement(self, node, (stmt,)):
        return stmt

    @g.rule('return = RETURN expr SEMI')
    def visit_return(self, node, (r, expr, s)):
        return Return(expr)

    @g.rule('exprstmt = expr SEMI')
    def visit_exprstmt(self, node, (expr, s)):
        return ExprStmt(expr)

    @g.rule('assign = ( attr / var )  EQ expr SEMI')
    def visit_assign(self, node, ((lhs,), eq, rhs, s)):
        return Assign(lhs, rhs)

    @g.rule('attr = atom (callmod? attrmod)+')
    def visit_attr(self, node, (atom, mods)):
        result = atom
        for (args, name) in mods:
            if args:
                result = Call(result, args[0])
            result = Attr(result, name)
        return result

    @g.rule('local = type name (EQ expr)? SEMI')
    def visit_local(self, node, (type, name, opt, _)):
        if opt:
            expr = opt[0][-1]
        else:
            expr = None
        return Local(Declaration(type, name, expr))

    @g.rule('if = IF LPR expr RPR block (ELSE block)?')
    def visit_if(self, node, (kw, lp, expr, rp, consequence, opt)):
        if opt:
            alternative = opt[0][1]
        else:
            alternative = None
        return If(expr, consequence, alternative)

    @g.rule('block = LBR statements RBR')
    def visit_block(self, node, (l, statements, r)):
        return Block(statements)

    @g.rule('statements = statement*')
    def visit_statements(self, node, children):
        return children

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

    @g.rule('prim = atom modifier*')
    def visit_prim(self, node, (atom, mods)):
        result = atom
        for m in mods:
            if isinstance(m, Name):
                result = Attr(result, m)
            else:
                result = Call(result, m)
        return result

    @g.rule('modifier = attrmod / callmod')
    def visit_modifier(self, node, (mod,)):
        return mod

    @g.rule('attrmod = DOT name')
    def visit_attrmod(self, node, (_, name)):
        return name

    @g.rule('callmod = LPR (expr (COMMA expr)*)? RPR')
    def visit_callmod(self, node, (l, args, r)):
        if args:
            args = args[0]
            if args[1]:
                args[1:] = map(lambda x: x[-1], args[1])
            else:
                del args[1]
        else:
            args = []
        return args

    @g.rule('atom = paren / var / literal')
    def visit_atom(self, node, (atom,)):
        return atom

    @g.rule('paren = LPR expr RPR')
    def visit_paren(self, node, (l, expr, r)):
        return expr

    @g.rule('var = name ""')
    def visit_var(self, node, (name, _)):
        return Var(name)

    @g.rule('literal = number / string')
    def visit_literal(self, node, (literal,)):
        return literal

    @g.rule('number = _ NUMBER _')
    def visit_number(self, node, (pre, number, post)):
        return Number(number)

    @g.rule(r'NUMBER = ~"[0-9]+"')
    def visit_NUMBER(self, node, children):
        return node.text

    @g.rule('string = _ STRING _')
    def visit_string(self, node, (pre, string, post)):
        return String(string)

    # lame string literals here
    @g.rule(r'STRING = ~"\"[^\"]*\""')
    def visit_STRING(self, node, children):
        return node.text

    def visit_(self, node, children):
        return children

    @g.rule('_ = __?')
    def visit__(self, node, children): pass

    @g.rule('__ = ~"[ \t\\n\\r]+"')
    def visit___(self, node, children): pass

del g
