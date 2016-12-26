lexer grammar QuarkLexer;

options {
    language=Python2;
}

WS: [ \n\r] -> skip ;
COMMENT: '//' ~('\n'|'\r')* -> skip ;
MULTILINE_COMMENT: '/*' .*? '*/' -> skip ;

NAMESPACE: 'namespace' ;
PRIMITIVE: 'primitive' ;
INTERFACE: 'interface' ;
CLASS: 'class' ;

EXTENDS: 'extends' ;

NEW: 'new' ;
IF: 'if' ;
ELSE: 'else' ;
RETURN: 'return' ;
WHILE: 'while' ;
SWITCH: 'switch' ;
CASE: 'case' ;
BREAK: 'break' ;
CONTINUE: 'continue' ;

LBRACE: '{' -> pushMode(DEFAULT_MODE);
RBRACE: '}' -> popMode;
LT: '<' ;
GT: '>' ;
COMMA: ',' ;


LPAREN: '(' -> pushMode(DEFAULT_MODE);
RPAREN: ')' -> popMode;
LBRACK: '[' ;
RBRACK: ']' ;
SEMI: ';' ;
COLON: ':' ;
DOT: '.' ;
EQ: '=' ;
EQL: '==' ;
NEQ: '!=' ;
LE: '<=' ;
GE: '>=' ;
PLUS: '+' ;
MINUS: '-' ;
MUL: '*' ;
DIV: '/' ;
MOD: '%' ;
BANG: '!' ;
QMARK: '?' ;
AND: '&&' ;
OR: '||' ;

STRING: '"' ( '\\"' | ~('\n'|'\r') )*? '"' ;
NUMBER: [0-9]+ ('.' [0-9]+)? ;

//FOR_LANG: 'for' -> mode(NATIVE) ;
FOR_LANG: 'for' -> mode(NATIVE_HEADER) ;

ID: [_a-zA-Z] [_a-zA-Z0-9]* ;

ERROR: . ;

mode NATIVE_HEADER ;

NATIVE_WS: WS -> skip ;
IMPORT: 'import' ;
LANG: ID ;
ISTRING: STRING ;
NATIVE_START: '{' -> mode(DEFAULT_MODE), pushMode(NATIVE);

NATIVE_HEADER_ERROR: . ;

mode NATIVE ;

NATIVE_CODE: ~[${}]+ ;
QVAR: '$' [_a-zA-Z0-9]+ ;
QEXPR: '$(' -> pushMode(DEFAULT_MODE) ;
NATIVE_LBRACE: '{' -> pushMode(NATIVE) ;
NATIVE_RBRACE: '}' -> popMode ;

NATIVE_ERROR: . ;

//BRACES: '{' ( BRACES | ~[{}] )* '}' -> mode(DEFAULT_MODE) ;
