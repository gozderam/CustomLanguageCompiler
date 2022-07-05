
%using QUT.Gppg;
%using CompilerProject;
%using System.Globalization;
%namespace GardensPoint

ident [a-zA-Z]+[a-zA-Z0-9]*
int_number [1-9]+[0-9]*|0
int_hex_number 0(x|X)[0-9a-fA-F]+ 
double_number [1-9]+[0-9]*\.[0-9]+|0\.[0-9]+
text \"[^\r\n]*\"

comment2 \/\/[^\r\n]*(\r\n|\n|\r)

%%
"program" { return (int)Tokens.PROGRAM_KW; }
"if" {return (int)Tokens.IF_KW; }
"else" {return (int)Tokens.ELSE_KW; }
"while" {return (int)Tokens.WHILE_KW; }
"read" { return (int)Tokens.READ_KW; }
"write" { return (int)Tokens.WRITE_KW; }
"return" { return (int)Tokens.RETURN_KW; }
"true" {yylval.syntaxTree_val = new BoolVal(Compiler.LineNumber, true); return (int)Tokens.TRUE_KW; }
"false" {yylval.syntaxTree_val = new BoolVal(Compiler.LineNumber, false); return (int)Tokens.FALSE_KW; }
"hex" {return (int)Tokens.HEX_KW; }

"int" { return (int)Tokens.INT_TP; }
"double" { return (int)Tokens.DOUBLE_TP; }
"bool" { return (int)Tokens.BOOL_TP; }

"=" { return (int)Tokens.ASSIGN; }
"&&" { return (int)Tokens.LOGICAL_AND;}
"||" { return (int)Tokens.LOGICAL_OR; }
"==" { return (int)Tokens.EQUAL;}
"!=" { return (int)Tokens.NOT_EQUAL;}
">" { return (int)Tokens.GREATER;}
">=" { return (int)Tokens.GREATER_OR_EQUAL;}
"<" { return (int)Tokens.LESS;}
"<=" { return (int)Tokens.LESS_OR_EQUAL;}
"+" { return (int)Tokens.PLUS; }
"-" { return (int)Tokens.MINUS; }
"*" { return (int)Tokens.MULTIPLIES; }
"/" { return (int)Tokens.DIVIDES; }
"&" { return (int)Tokens.BIT_AND; }
"|" { return (int)Tokens.BIT_OR; }
"~" { return (int)Tokens.BIT_NEG; }
"!" { return (int)Tokens.LOGICAL_NEG; }
"(" { return (int)Tokens.OPEN_PAR; }
")" { return (int)Tokens.CLOSE_PAR; }
"{" { return (int)Tokens.OPEN_CURLY_BR; }
"}" { return (int)Tokens.CLOSE_CURLY_BR; }
"," { return (int)Tokens.COLON; }
";" { return (int)Tokens.SEMICOLON; }
"\r\n" { Compiler.LineNumber++;}
"\n" { Compiler.LineNumber++;}
"\r" { Compiler.LineNumber++;}

{ident} { yylval.ident_val = new Ident(Compiler.LineNumber, yytext); return (int)Tokens.IDENT; }
{int_number} { yylval.syntaxTree_val = new IntNumber(Compiler.LineNumber, Int32.Parse(yytext)); return (int)Tokens.INT_NUMBER; }
{int_hex_number} { yylval.syntaxTree_val = new IntNumber(Compiler.LineNumber, Convert.ToInt32(yytext , 16)); return (int)Tokens.INT_NUMBER; }
{double_number} { yylval.syntaxTree_val = new DoubleNumber(Compiler.LineNumber, Double.Parse(yytext, CultureInfo.InvariantCulture)); return (int)Tokens.DOUBLE_NUMBER;}
{text} { yylval.syntaxTree_val = new Text(Compiler.LineNumber, yytext); return (int)Tokens.TEXT; }

<<EOF>> { return (int)Tokens.EOF; }
{comment2} { Compiler.LineNumber++; }

" " { }
"\t" { }

. { Compiler.AnnounceError("unrecognized character: " + yytext, Compiler.LineNumber); }

