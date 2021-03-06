from lark import Lark


def get_parse_tree(code):
    return decaf_parser.parse(code)


decaf_grammar = r"""
start: (declaration)+
declaration: variable_declaration
    | function_declaration
    | class_declaration
    | interface_declaration
variable_declaration: variable ";"
variable: type IDENTIFIER
type : TYPE | IDENTIFIER | type "[]"
function_declaration: type IDENTIFIER "(" formals ")" stmt_block
    | "void" IDENTIFIER "(" formals ")" stmt_block
    | "static void" IDENTIFIER "(" formals ")" stmt_block
formals: variable ("," variable)*
    |
class_declaration: "class" IDENTIFIER "{" (field)* "}" -> class1
    |               "class" IDENTIFIER extend "{" (field)* "}" -> class2
    |               "class" IDENTIFIER implement "{" (field)* "}" -> class3
    |               "class" IDENTIFIER extend implement "{" (field)* "}" -> class4
extend: "extends" IDENTIFIER
implement: "implements" IDENTIFIER ("," IDENTIFIER)*
field: (access_mode)? variable_declaration
    |  (access_mode)? function_declaration
access_mode: ACCESS_MODE
interface_declaration: "interface" IDENTIFIER "{" (prototype)* "}"
prototype: type IDENTIFIER "(" formals ")" ";"
    | "void" IDENTIFIER "(" formals ")" ";"
    | "static void" IDENTIFIER "(" formals ")" ";"
stmt_block: "{" (variable_declaration)* (stmt)* "}"
stmt: (expr)? ";"
    | if_stmt
    | while_stmt
    | for_stmt 
    | break_stmt
    | return_stmt
    | print_stmt
    | stmt_block
if_stmt: "if" "(" expr ")" stmt ("else" stmt)?
while_stmt: "while" "(" expr ")" stmt
for_stmt: "for" "(" expr ";" expr ";" expr ")" stmt -> for1 
        | "for" "(" expr ";" expr ";"  ")" stmt -> for2 
        | "for" "(" ";" expr ";" expr ")" stmt -> for3 
        | "for" "(" ";" expr ";" ")" stmt -> for4 
return_stmt: "return" (expr)? ";"
break_stmt: "break" ";"
print_stmt : "Print" "(" expr ("," expr)* ")" ";" 
expr : l_value "=" expr -> assignment 
    | expr0
expr0 : expr0 "||" expr1 -> or_bool 
    | expr1
expr1 : expr1 "&&" expr2 -> and_bool 
    | expr2
expr2 : expr2 "==" expr3 -> eq 
    | expr2 "!=" expr3 -> ne 
    | expr3
expr3 : expr3 "<" expr4 -> lt 
    | expr3 "<=" expr4 -> le 
    | expr3 ">" expr4 -> gt 
    | expr3 ">=" expr4 -> ge 
    | expr4
expr4 : expr4 "+" expr5 -> add 
    | expr4 "-" expr5 -> sub 
    | expr5
expr5 : expr5 "*" expr6 -> mul 
    | expr5 "/" expr6 -> div 
    | expr5 "%" expr6 -> mod 
    | expr6
expr6 : "-" expr6 -> neg 
    | "!" expr6 -> not_bool
    | expr7
expr7 : constant 
    | converters 
    | "ReadInteger" "(" ")" -> read_integer 
    | "ReadLine" "(" ")" -> read_line 
    | "new" IDENTIFIER -> class_inst 
    | "NewArray" "(" expr "," type ")" -> new_array 
    | "(" expr ")" 
    | l_value -> val 
    | call
l_value : IDENTIFIER -> var_addr 
    |  expr7 "." IDENTIFIER -> var_access 
    | expr7 "[" expr "]" -> subscript

call : IDENTIFIER  "(" (actuals)? ")" -> simple_call
    | expr7  "."  IDENTIFIER "(" (actuals)* ")" -> class_call
  
actuals :  expr (","expr)* 
constant : INTEGER -> const_int 
    | DOUBLE -> const_double  
    | BOOL -> const_bool 
    | STRING -> const_string
    | "null" -> null
converters :"itod(" expr ")" -> itod
    | "itob(" expr ")" -> itob
    | "btoi(" expr ")" -> btoi
    | "dtoi(" expr ")" -> dtoi
            
TYPE : "int" | "double" | "bool" | "string"
ACCESS_MODE: "private" | "protected" | "public"
BOOL: "true" | "false"
INTEGER: /[0-9]+/
DOUBLE: /([0-9])+\.([0-9])*((E|e)(\+|\-)?([0-9])+)?/
IDENTIFIER :  /(?!((true)|(false)|(void)|(int)|(double)|(bool)|(string)|(class)|(interface)|(null)|(extends)|(implements)|(for)|(while)|(if)|(else)|(return)|(break)|(new)|(NewArray)|(Print)|(ReadInteger)|(ReadLine))([^_a-zA-Z0-9]|$))[a-zA-Z][_a-zA-Z0-9]*/
STRING : /"([^"\r\n]*)"/
INLINE_COMMENT : /\/\/.*/
COMMENT_END : /\*\/ / 
MULTILINE_COMMENT : /\/\* ([^{COMMENT_END}]*) \*\//
%ignore INLINE_COMMENT
%ignore MULTILINE_COMMENT
%import common.WS
%ignore WS
"""
decaf_parser = Lark(decaf_grammar, start="start", parser="lalr")
