parser grammar QuarkParser;

options {
    tokenVocab=QuarkLexer;
    language=Python2;
}

qfile: definitions+=definition* EOF ;

definition:
    namespace
  | qimport
  | function
  | primitive
  | qinterface
  | qclass
   ;

annotations: items+=annotation* ;

annotation: ANNOTATION ( LPAREN STRING RPAREN )? ;

namespace: annotations NAMESPACE name LBRACE definitions+=definition* RBRACE ;

qimport: IMPORT path ( AS alias=name )? SEMI ;

function: annotations qtype? name LPAREN (parameters+=parameter (COMMA parameters+=parameter)*)? RPAREN
          ( native_body | body | SEMI ) ;
parameter: qtype name ;

primitive: annotations PRIMITIVE name tparams? mappings+=native_body* LBRACE definitions+=function* RBRACE ;
qinterface: annotations INTERFACE name tparams? LBRACE definitions+=function* RBRACE ;
qclass:
    annotations
    CLASS name tparams? ( EXTENDS bases+=qtype (COMMA bases+=qtype)? )?
    LBRACE (fields+=field | methods+=function )* RBRACE ;

tparams: LT params+=tparam (COMMA params+=tparam)* GT ;
tparam: name (EXTENDS bound=qtype)? ;

field: annotations qtype name ( EQ expr )? SEMI ;

native_body: FOR_LANG LANG ( NATIVE_IMPORT imports+=ISTRING )* NATIVE_START fragments+=native_fragment* NATIVE_RBRACE ;
native_fragment:
    NATIVE_CODE                                   # native_code
  | QVAR                                          # native_var
  | QEXPR expr RPAREN                             # native_expr
  | NATIVE_LBRACE fragments+=native_fragment* NATIVE_RBRACE  # native_braces ;

body: LBRACE statements+=statement* RBRACE ;

statement:
    simple SEMI
  | compound
   ;

/*
 *  XXX: local declarations and exprstmt are ambiguous, e.g.:
 *
 *    Box<int> x; looks like a declaration
 *         vs
 *    a < b > c; looks like a comparison
 */
simple: local | evaluate | assign | qreturn | qbreak | qcontinue ;
local: qtype name ( EQ expr )? ;
assign: lhs EQ expr ;
lhs:
    name                     # setvar
  | expr LBRACK exprs RBRACK # setindex
  | expr DOT name            # setattr
   ;
evaluate: expr ;
qbreak: BREAK ;
qcontinue: CONTINUE ;
qreturn: RETURN expr? ;

compound: qif | qwhile | qswitch ;
qif: IF LPAREN predicate=expr RPAREN consequence=body ( ELSE alternative=body )? ;
qwhile: WHILE LPAREN expr RPAREN body ;
qswitch: SWITCH LPAREN expr RPAREN LBRACE qcase+ RBRACE ;
qcase: CASE exprs COLON statement+ ;

expr:
    TRUE                                                     # true
  | FALSE                                                    # false
  | NUMBER                                                   # number
  | STRING                                                   # string
  | NULL                                                     # null
  | LBRACK exprs RBRACK                                      # list
  | LBRACE (entries+=entry (COMMA entries+=entry)*)? RBRACE  # map
  | name                                                     # var
  | LPAREN expr RPAREN                                       # paren
  | expr DOT name                                            # attr
  | expr LPAREN exprs RPAREN                                 # call
  | expr LBRACK exprs RBRACK                                 # index
  | op=( BANG | MINUS | QMARK ) expr                         # unary
  | <assoc=right> NEW qtype LPAREN exprs RPAREN              # new
  | expr op=( MUL | DIV | MOD ) expr                         # multiplication
  | <assoc=right> expr op=( PLUS | MINUS ) expr              # addition
  | expr op=( LT | GT | LE | GE ) expr                       # comparison
  | expr op=( EQL | NEQ ) expr                               # equality
  | expr op=AND expr                                         # logical_and
  | expr op=OR expr                                          # logical_or
    ;

entry: key=expr COLON value=expr ;
exprs: (expressions+=expr (COMMA expressions+=expr)*)? ;
qtype: path ( LT params+=qtype (COMMA params+=qtype)* GT )? ;

path: names+=name ( DOT names+=name )* ;
name: ID ;
