type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | COMMA
  | LBRACK
  | RBRACK
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | ASSIGN
  | NOT
  | EQ
  | NEQ
  | LT
  | LEQ
  | GT
  | GEQ
  | TRUE
  | FALSE
  | AND
  | OR
  | RETURN
  | IF
  | ELSE
  | FOR
  | WHILE
  | DEF
  | GLOBAL
  | STRUCT
  | DOT
  | INT
  | FLOAT
  | BOOL
  | STRING
  | VOID
  | INTLIT of (int)
  | FLOATLIT of (float)
  | STRINGLIT of (string)
  | ID of (string)
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
    open Ast;;
    let unescape s = Scanf.sscanf ("\"" ^ s ^ "\"") "%S%!" (fun x -> x)
# 52 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* COMMA *);
  263 (* LBRACK *);
  264 (* RBRACK *);
  265 (* PLUS *);
  266 (* MINUS *);
  267 (* TIMES *);
  268 (* DIVIDE *);
  269 (* ASSIGN *);
  270 (* NOT *);
  271 (* EQ *);
  272 (* NEQ *);
  273 (* LT *);
  274 (* LEQ *);
  275 (* GT *);
  276 (* GEQ *);
  277 (* TRUE *);
  278 (* FALSE *);
  279 (* AND *);
  280 (* OR *);
  281 (* RETURN *);
  282 (* IF *);
  283 (* ELSE *);
  284 (* FOR *);
  285 (* WHILE *);
  286 (* DEF *);
  287 (* GLOBAL *);
  288 (* STRUCT *);
  289 (* DOT *);
  290 (* INT *);
  291 (* FLOAT *);
  292 (* BOOL *);
  293 (* STRING *);
  294 (* VOID *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  295 (* INTLIT *);
  296 (* FLOATLIT *);
  297 (* STRINGLIT *);
  298 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\005\000\005\000\008\000\
\008\000\008\000\008\000\009\000\009\000\010\000\010\000\011\000\
\006\000\007\000\012\000\012\000\013\000\013\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\014\000\014\000\015\000\015\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\002\000\003\000\003\000\005\000\
\007\000\009\000\005\000\002\000\002\000\000\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\000\000\002\000\003\000\
\008\000\005\000\000\000\001\000\002\000\004\000\001\000\001\000\
\001\000\001\000\001\000\001\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\002\000\002\000\003\000\004\000\003\000\004\000\
\000\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\061\000\000\000\000\000\002\000\000\000\000\000\
\034\000\035\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\031\000\032\000\033\000\000\000\001\000\003\000\000\000\
\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\
\000\000\000\000\018\000\017\000\019\000\016\000\021\000\012\000\
\020\000\000\000\000\000\000\000\013\000\000\000\000\000\004\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\055\000\007\000\
\006\000\000\000\000\000\000\000\000\000\000\000\000\000\022\000\
\050\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\054\000\000\000\000\000\000\000\011\000\000\000\000\000\000\000\
\000\000\000\000\023\000\000\000\000\000\000\000\029\000\000\000\
\000\000\026\000\000\000\009\000\000\000\002\000\000\000\024\000\
\000\000\000\000\030\000\010\000\025\000"

let yydgoto = "\002\000\
\003\000\004\000\023\000\024\000\068\000\040\000\045\000\041\000\
\042\000\096\000\107\000\103\000\104\000\075\000\076\000"

let yysindex = "\006\000\
\000\000\000\000\000\000\034\000\171\255\000\000\171\255\171\255\
\000\000\000\000\059\255\011\255\012\255\026\255\140\255\017\255\
\021\255\000\000\000\000\000\000\123\255\000\000\000\000\233\255\
\036\255\107\000\092\255\046\255\046\255\000\000\068\000\171\255\
\171\255\171\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\040\255\070\255\255\254\000\000\171\255\171\255\000\000\
\171\255\171\255\171\255\171\255\171\255\171\255\171\255\171\255\
\171\255\171\255\171\255\171\255\171\255\062\255\000\000\000\000\
\000\000\126\000\164\000\108\255\145\000\109\255\171\255\000\000\
\000\000\164\000\107\255\110\255\164\000\054\255\054\255\046\255\
\046\255\214\000\214\000\007\255\007\255\007\255\007\255\202\000\
\183\000\046\255\158\255\171\255\158\255\170\255\164\000\001\255\
\000\000\171\255\088\255\088\000\000\000\077\255\134\255\122\255\
\141\255\099\255\000\000\164\000\158\255\171\255\000\000\144\255\
\140\255\000\000\143\255\000\000\142\255\000\000\116\255\000\000\
\158\255\125\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\213\255\000\000\000\000\000\000\
\000\000\000\000\000\000\239\000\007\001\000\000\000\000\000\000\
\148\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\149\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\019\255\000\000\000\000\000\000\000\000\000\000\
\000\000\039\255\000\000\156\255\020\255\103\001\127\001\031\001\
\055\001\009\255\061\255\151\001\175\001\199\001\223\001\069\255\
\102\255\079\001\000\000\000\000\000\000\160\255\137\255\000\000\
\000\000\000\000\001\000\000\000\000\000\000\000\000\000\166\255\
\000\000\000\000\000\000\068\255\000\000\167\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\250\255\174\255\253\255\051\000\000\000\000\000\248\255\
\058\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yytablesize = 759
let yytable = "\027\000\
\008\000\026\000\072\000\028\000\029\000\105\000\001\000\031\000\
\099\000\041\000\101\000\041\000\032\000\033\000\041\000\049\000\
\050\000\051\000\052\000\015\000\053\000\015\000\053\000\041\000\
\041\000\053\000\116\000\034\000\066\000\067\000\069\000\041\000\
\041\000\022\000\035\000\036\000\037\000\038\000\124\000\061\000\
\073\000\059\000\074\000\077\000\059\000\078\000\079\000\080\000\
\081\000\082\000\083\000\084\000\085\000\086\000\087\000\088\000\
\089\000\090\000\043\000\030\000\005\000\042\000\044\000\042\000\
\051\000\052\000\042\000\095\000\007\000\047\000\060\000\047\000\
\008\000\060\000\047\000\042\000\042\000\062\000\061\000\009\000\
\010\000\070\000\071\000\042\000\042\000\102\000\061\000\106\000\
\100\000\016\000\025\000\047\000\047\000\005\000\108\000\006\000\
\064\000\018\000\019\000\020\000\021\000\007\000\048\000\073\000\
\048\000\008\000\067\000\048\000\092\000\097\000\094\000\122\000\
\009\000\010\000\109\000\098\000\011\000\012\000\111\000\013\000\
\014\000\015\000\016\000\017\000\046\000\048\000\005\000\113\000\
\006\000\125\000\018\000\019\000\020\000\021\000\007\000\047\000\
\112\000\056\000\008\000\056\000\115\000\114\000\056\000\120\000\
\121\000\009\000\010\000\118\000\014\000\011\000\012\000\057\000\
\013\000\014\000\015\000\016\000\017\000\123\000\058\000\005\000\
\117\000\006\000\027\000\018\000\019\000\020\000\021\000\007\000\
\028\000\014\000\119\000\008\000\005\000\035\000\036\000\037\000\
\038\000\039\000\009\000\010\000\007\000\000\000\011\000\012\000\
\008\000\013\000\014\000\015\000\016\000\017\000\000\000\009\000\
\010\000\000\000\000\000\000\000\018\000\019\000\020\000\021\000\
\000\000\016\000\025\000\035\000\036\000\037\000\038\000\000\000\
\000\000\018\000\019\000\020\000\021\000\036\000\000\000\036\000\
\000\000\000\000\036\000\000\000\000\000\036\000\036\000\036\000\
\036\000\000\000\000\000\036\000\036\000\036\000\036\000\036\000\
\036\000\048\000\000\000\036\000\036\000\000\000\000\000\000\000\
\000\000\049\000\050\000\051\000\052\000\036\000\000\000\053\000\
\054\000\055\000\056\000\057\000\058\000\000\000\000\000\059\000\
\060\000\000\000\008\000\000\000\008\000\008\000\000\000\000\000\
\000\000\061\000\008\000\000\000\000\000\000\000\008\000\000\000\
\000\000\000\000\000\000\000\000\000\000\008\000\008\000\000\000\
\000\000\008\000\008\000\000\000\008\000\008\000\008\000\008\000\
\008\000\000\000\000\000\005\000\000\000\006\000\000\000\008\000\
\008\000\008\000\008\000\007\000\000\000\000\000\000\000\008\000\
\000\000\000\000\000\000\000\000\000\000\000\000\009\000\010\000\
\000\000\000\000\011\000\012\000\000\000\013\000\014\000\015\000\
\016\000\017\000\000\000\000\000\065\000\000\000\000\000\000\000\
\018\000\019\000\020\000\021\000\049\000\050\000\051\000\052\000\
\000\000\000\000\053\000\054\000\055\000\056\000\057\000\058\000\
\110\000\000\000\059\000\060\000\000\000\000\000\000\000\000\000\
\049\000\050\000\051\000\052\000\061\000\000\000\053\000\054\000\
\055\000\056\000\057\000\058\000\000\000\063\000\059\000\060\000\
\000\000\000\000\000\000\049\000\050\000\051\000\052\000\000\000\
\061\000\053\000\054\000\055\000\056\000\057\000\058\000\000\000\
\091\000\059\000\060\000\000\000\000\000\000\000\049\000\050\000\
\051\000\052\000\000\000\061\000\053\000\054\000\055\000\056\000\
\057\000\058\000\000\000\093\000\059\000\060\000\000\000\000\000\
\000\000\049\000\050\000\051\000\052\000\000\000\061\000\053\000\
\054\000\055\000\056\000\057\000\058\000\000\000\000\000\059\000\
\060\000\000\000\000\000\000\000\049\000\050\000\051\000\052\000\
\000\000\061\000\053\000\054\000\055\000\056\000\057\000\058\000\
\000\000\000\000\059\000\060\000\000\000\000\000\000\000\049\000\
\050\000\051\000\052\000\000\000\061\000\053\000\054\000\055\000\
\056\000\057\000\058\000\000\000\000\000\059\000\000\000\000\000\
\000\000\000\000\049\000\050\000\051\000\052\000\000\000\061\000\
\053\000\054\000\055\000\056\000\057\000\058\000\049\000\050\000\
\051\000\052\000\000\000\000\000\000\000\000\000\055\000\056\000\
\057\000\058\000\061\000\000\000\000\000\000\000\000\000\051\000\
\000\000\051\000\000\000\000\000\051\000\000\000\061\000\051\000\
\051\000\051\000\051\000\000\000\000\000\051\000\051\000\051\000\
\051\000\051\000\051\000\000\000\000\000\051\000\051\000\052\000\
\000\000\052\000\000\000\000\000\052\000\000\000\000\000\052\000\
\052\000\052\000\052\000\000\000\000\000\052\000\052\000\052\000\
\052\000\052\000\052\000\000\000\000\000\052\000\052\000\039\000\
\000\000\039\000\000\000\000\000\039\000\000\000\000\000\039\000\
\039\000\039\000\039\000\000\000\000\000\039\000\039\000\039\000\
\039\000\039\000\039\000\000\000\000\000\039\000\039\000\040\000\
\000\000\040\000\000\000\000\000\040\000\000\000\000\000\040\000\
\040\000\040\000\040\000\000\000\000\000\040\000\040\000\040\000\
\040\000\040\000\040\000\000\000\000\000\040\000\040\000\049\000\
\000\000\049\000\000\000\000\000\049\000\000\000\000\000\049\000\
\049\000\049\000\049\000\000\000\000\000\049\000\049\000\049\000\
\049\000\049\000\049\000\000\000\000\000\049\000\049\000\037\000\
\000\000\037\000\000\000\000\000\037\000\000\000\000\000\037\000\
\037\000\000\000\000\000\000\000\000\000\037\000\037\000\037\000\
\037\000\037\000\037\000\000\000\000\000\037\000\037\000\038\000\
\000\000\038\000\000\000\000\000\038\000\000\000\000\000\038\000\
\038\000\000\000\000\000\000\000\000\000\038\000\038\000\038\000\
\038\000\038\000\038\000\000\000\000\000\038\000\038\000\043\000\
\000\000\043\000\000\000\000\000\043\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\043\000\043\000\043\000\
\043\000\043\000\043\000\000\000\000\000\043\000\043\000\044\000\
\000\000\044\000\000\000\000\000\044\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\044\000\044\000\044\000\
\044\000\044\000\044\000\000\000\000\000\044\000\044\000\045\000\
\000\000\045\000\000\000\000\000\045\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\045\000\045\000\045\000\
\045\000\045\000\045\000\000\000\000\000\045\000\045\000\046\000\
\000\000\046\000\000\000\000\000\046\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\046\000\046\000\046\000\
\046\000\046\000\046\000\000\000\000\000\046\000\046\000"

let yycheck = "\006\000\
\000\000\005\000\004\001\007\000\008\000\005\001\001\000\011\000\
\091\000\001\001\093\000\003\001\002\001\002\001\006\001\009\001\
\010\001\011\001\012\001\001\001\001\001\003\001\003\001\015\001\
\016\001\006\001\109\000\002\001\032\000\033\000\034\000\023\001\
\024\001\000\000\034\001\035\001\036\001\037\001\121\000\033\001\
\042\001\003\001\046\000\047\000\006\001\049\000\050\000\051\000\
\052\000\053\000\054\000\055\000\056\000\057\000\058\000\059\000\
\060\000\061\000\042\001\001\001\002\001\001\001\042\001\003\001\
\011\001\012\001\006\001\071\000\010\001\001\001\003\001\003\001\
\014\001\006\001\006\001\015\001\016\001\042\001\033\001\021\001\
\022\001\042\001\013\001\023\001\024\001\094\000\033\001\096\000\
\092\000\031\001\032\001\023\001\024\001\002\001\098\000\004\001\
\005\001\039\001\040\001\041\001\042\001\010\001\001\001\042\001\
\003\001\014\001\110\000\006\001\001\001\003\001\002\001\118\000\
\021\001\022\001\027\001\006\001\025\001\026\001\042\001\028\001\
\029\001\030\001\031\001\032\001\002\001\024\001\002\001\006\001\
\004\001\005\001\039\001\040\001\041\001\042\001\010\001\013\001\
\003\001\001\001\014\001\003\001\042\001\001\001\006\001\001\001\
\003\001\021\001\022\001\004\001\001\001\025\001\026\001\003\001\
\028\001\029\001\030\001\031\001\032\001\042\001\003\001\002\001\
\110\000\004\001\003\001\039\001\040\001\041\001\042\001\010\001\
\003\001\003\001\113\000\014\001\002\001\034\001\035\001\036\001\
\037\001\038\001\021\001\022\001\010\001\255\255\025\001\026\001\
\014\001\028\001\029\001\030\001\031\001\032\001\255\255\021\001\
\022\001\255\255\255\255\255\255\039\001\040\001\041\001\042\001\
\255\255\031\001\032\001\034\001\035\001\036\001\037\001\255\255\
\255\255\039\001\040\001\041\001\042\001\001\001\255\255\003\001\
\255\255\255\255\006\001\255\255\255\255\009\001\010\001\011\001\
\012\001\255\255\255\255\015\001\016\001\017\001\018\001\019\001\
\020\001\001\001\255\255\023\001\024\001\255\255\255\255\255\255\
\255\255\009\001\010\001\011\001\012\001\033\001\255\255\015\001\
\016\001\017\001\018\001\019\001\020\001\255\255\255\255\023\001\
\024\001\255\255\002\001\255\255\004\001\005\001\255\255\255\255\
\255\255\033\001\010\001\255\255\255\255\255\255\014\001\255\255\
\255\255\255\255\255\255\255\255\255\255\021\001\022\001\255\255\
\255\255\025\001\026\001\255\255\028\001\029\001\030\001\031\001\
\032\001\255\255\255\255\002\001\255\255\004\001\255\255\039\001\
\040\001\041\001\042\001\010\001\255\255\255\255\255\255\014\001\
\255\255\255\255\255\255\255\255\255\255\255\255\021\001\022\001\
\255\255\255\255\025\001\026\001\255\255\028\001\029\001\030\001\
\031\001\032\001\255\255\255\255\001\001\255\255\255\255\255\255\
\039\001\040\001\041\001\042\001\009\001\010\001\011\001\012\001\
\255\255\255\255\015\001\016\001\017\001\018\001\019\001\020\001\
\001\001\255\255\023\001\024\001\255\255\255\255\255\255\255\255\
\009\001\010\001\011\001\012\001\033\001\255\255\015\001\016\001\
\017\001\018\001\019\001\020\001\255\255\003\001\023\001\024\001\
\255\255\255\255\255\255\009\001\010\001\011\001\012\001\255\255\
\033\001\015\001\016\001\017\001\018\001\019\001\020\001\255\255\
\003\001\023\001\024\001\255\255\255\255\255\255\009\001\010\001\
\011\001\012\001\255\255\033\001\015\001\016\001\017\001\018\001\
\019\001\020\001\255\255\003\001\023\001\024\001\255\255\255\255\
\255\255\009\001\010\001\011\001\012\001\255\255\033\001\015\001\
\016\001\017\001\018\001\019\001\020\001\255\255\255\255\023\001\
\024\001\255\255\255\255\255\255\009\001\010\001\011\001\012\001\
\255\255\033\001\015\001\016\001\017\001\018\001\019\001\020\001\
\255\255\255\255\023\001\024\001\255\255\255\255\255\255\009\001\
\010\001\011\001\012\001\255\255\033\001\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\255\255\255\255\
\255\255\255\255\009\001\010\001\011\001\012\001\255\255\033\001\
\015\001\016\001\017\001\018\001\019\001\020\001\009\001\010\001\
\011\001\012\001\255\255\255\255\255\255\255\255\017\001\018\001\
\019\001\020\001\033\001\255\255\255\255\255\255\255\255\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\033\001\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\009\001\
\010\001\011\001\012\001\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\009\001\
\010\001\255\255\255\255\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\009\001\
\010\001\255\255\255\255\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\015\001\016\001\017\001\
\018\001\019\001\020\001\255\255\255\255\023\001\024\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  COMMA\000\
  LBRACK\000\
  RBRACK\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  ASSIGN\000\
  NOT\000\
  EQ\000\
  NEQ\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  TRUE\000\
  FALSE\000\
  AND\000\
  OR\000\
  RETURN\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  DEF\000\
  GLOBAL\000\
  STRUCT\000\
  DOT\000\
  INT\000\
  FLOAT\000\
  BOOL\000\
  STRING\000\
  VOID\000\
  EOF\000\
  "

let yynames_block = "\
  INTLIT\000\
  FLOATLIT\000\
  STRINGLIT\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 43 "parser.mly"
            ( List.rev _1 )
# 435 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "parser.mly"
                   ( [] )
# 441 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 47 "parser.mly"
               ( _2 :: _1 )
# 449 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 50 "parser.mly"
              ( Expr _1 )
# 456 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "parser.mly"
                ( Return Noexpr )
# 462 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 52 "parser.mly"
                     ( Return _2 )
# 469 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 53 "parser.mly"
                        ( Block(List.rev _2) )
# 476 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 54 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 484 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 55 "parser.mly"
                                            ( If(_3, _5, _7) )
# 493 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 57 "parser.mly"
     ( For(_3, _5, _7, _9) )
# 503 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 58 "parser.mly"
                                  ( While(_3, _5) )
# 511 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'func) in
    Obj.repr(
# 59 "parser.mly"
             ( Func(_2) )
# 518 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'struct_decl) in
    Obj.repr(
# 60 "parser.mly"
                       ( Struct(_2) )
# 525 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parser.mly"
                  ( Noexpr )
# 531 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 64 "parser.mly"
                  ( _1 )
# 538 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
            ( String )
# 544 "parser.ml"
               : 'any_typ_not_void))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "parser.mly"
           ( Float )
# 550 "parser.ml"
               : 'any_typ_not_void))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "parser.mly"
            ( Int )
# 556 "parser.ml"
               : 'any_typ_not_void))
; (fun __caml_parser_env ->
    Obj.repr(
# 71 "parser.mly"
            ( Bool )
# 562 "parser.ml"
               : 'any_typ_not_void))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'any_typ_not_void) in
    Obj.repr(
# 74 "parser.mly"
                    ( _1 )
# 569 "parser.ml"
               : 'any_typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
           ( Void )
# 575 "parser.ml"
               : 'any_typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 78 "parser.mly"
  ( [] )
# 581 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 79 "parser.mly"
                     ( _2 :: _1 )
# 589 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'any_typ_not_void) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 82 "parser.mly"
                             ( (_1, _2) )
# 597 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : 'any_typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 4 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 86 "parser.mly"
   ( { typ = _1;
       fname = _2;
       formals = _4;
       body = List.rev _7 } )
# 610 "parser.ml"
               : 'func))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    Obj.repr(
# 93 "parser.mly"
  ( { sname = _1; 
      vdecls = List.rev _3  } )
# 619 "parser.ml"
               : 'struct_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 97 "parser.mly"
                  ( [] )
# 625 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 98 "parser.mly"
                  ( List.rev _1 )
# 632 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'any_typ_not_void) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 101 "parser.mly"
                        ( [(_1, _2)] )
# 640 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'any_typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 102 "parser.mly"
                                 ( (_3, _4)  :: _1 )
# 649 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 105 "parser.mly"
                    ( IntLit(_1) )
# 656 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 106 "parser.mly"
                    ( FloatLit(_1) )
# 663 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 107 "parser.mly"
                ( StringLit(unescape _1) )
# 670 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 108 "parser.mly"
                     ( BoolLit(true) )
# 676 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 109 "parser.mly"
                     ( BoolLit(false) )
# 682 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 110 "parser.mly"
                     ( Id(_1) )
# 689 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                     ( Binop(_1, Add,   _3) )
# 697 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 112 "parser.mly"
                     ( Binop(_1, Sub,   _3) )
# 705 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                     ( Binop(_1, Mult,  _3) )
# 713 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                     ( Binop(_1, Div,   _3) )
# 721 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                     ( Binop(_1, Equal, _3) )
# 729 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                     ( Binop(_1, Neq,   _3) )
# 737 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 117 "parser.mly"
                     ( Binop(_1, Less,  _3) )
# 745 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                     ( Binop(_1, Leq,   _3) )
# 753 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 119 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 761 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 120 "parser.mly"
                     ( Binop(_1, Geq,   _3) )
# 769 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 121 "parser.mly"
                     ( Binop(_1, And,   _3) )
# 777 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 122 "parser.mly"
                     ( Binop(_1, Or,    _3) )
# 785 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 123 "parser.mly"
                     ( Struct_access(_1, _3))
# 793 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 124 "parser.mly"
                       ( Struct_make(_2, _3))
# 801 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 125 "parser.mly"
                         ( Unop(Neg, _2) )
# 808 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 126 "parser.mly"
                     ( Unop(Not, _2) )
# 815 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 127 "parser.mly"
                     ( Assign(_1, _3) )
# 823 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 128 "parser.mly"
                                 ( Call(_1, _3) )
# 831 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 129 "parser.mly"
                       ( _2 )
# 838 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 130 "parser.mly"
                          ( GlobalAsn(_2, _4) )
# 846 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 133 "parser.mly"
                  ( [] )
# 852 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 134 "parser.mly"
                  ( List.rev _1 )
# 859 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 137 "parser.mly"
                            ( [_1] )
# 866 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 138 "parser.mly"
                            ( _3 :: _1 )
# 874 "parser.ml"
               : 'actuals_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
