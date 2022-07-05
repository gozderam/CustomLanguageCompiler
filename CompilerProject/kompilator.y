
%using CompilerProject;
%using System.Linq;
%namespace GardensPoint

%union
{
public SyntaxTree syntaxTree_val;
public SyntaxTree[] syntaxTree_arr_val;
public Ident ident_val;
public Ident[] indent_arr_val;
public Types types_val;
}

%token 	PROGRAM_KW IF_KW ELSE_KW WHILE_KW READ_KW WRITE_KW RETURN_KW TRUE_KW FALSE_KW HEX_KW
		BOOL_TP INT_TP DOUBLE_TP
		ASSIGN
		LOGICAL_AND LOGICAL_OR
		EQUAL NOT_EQUAL, GREATER, GREATER_OR_EQUAL, LESS, LESS_OR_EQUAL
		PLUS MINUS MULTIPLIES DIVIDES 
		BIT_AND BIT_OR
		LOGICAL_NEG BIT_NEG
		OPEN_PAR CLOSE_PAR OPEN_CURLY_BR CLOSE_CURLY_BR 
		COLON SEMICOLON
		EOF ERROR
		
%token <syntaxTree_val> INT_NUMBER DOUBLE_NUMBER IDENT TEXT FALSE_KW TRUE_KW
%token <ident_val> IDENT

%type <types_val> type 
%type <syntaxTree_val> 	start program_code declr declaration statement block_stm exp_stm write_stm read_stm general_exp logical_exp relation_exp add_exp mult_exp bit_exp unary_exp factor 
						if_stm while_stm return_stm
%type <syntaxTree_arr_val> declaration_list statement_list
%type <indent_arr_val> ident_list 

%%
start 			: 	PROGRAM_KW OPEN_CURLY_BR program_code CLOSE_CURLY_BR EOF
						{ $$ = new Code(Compiler.LineNumber, $3); $$.CheckType(); if(Compiler.ErrorsCount==0) $$.GenCode(); }
				| 	PROGRAM_KW EOF
						{ Compiler.AnnounceError("unexpeced end of file", Compiler.LineNumber); YYABORT; }
				| 	PROGRAM_KW OPEN_CURLY_BR EOF
						{ Compiler.AnnounceError("unexpeced end of file", Compiler.LineNumber); YYABORT; }
				;	
				
program_code	:	declaration_list statement_list
						{ $$ = new ProgramCode(Compiler.LineNumber, $1, $2); }
				;
				
					
declaration_list:	declaration_list declaration
						{ $$ = $1.Append($2).ToArray();}
				|	
						{ $$ = new SyntaxTree[0]; }
				;
				
declaration		:	declr SEMICOLON
						{ $$ = $1; }
				|	error SEMICOLON
						{ Compiler.AnnounceError("syntax error", Compiler.LineNumber); yyerrok(); }
				;		
				
declr			:	type ident_list
						{ $$ = new DeclrStm(Compiler.LineNumber, $1, $2); }
				;

ident_list		:	ident_list COLON IDENT
						{ $$ = $1.Append($3).ToArray(); }
				|	IDENT
						{ $$ = new Ident[1] {$1};}
				;
				
type			: 	BOOL_TP 
						{ $$ = Types.Bool; }
				| 	INT_TP
						{ $$ = Types.Int; }
				| 	DOUBLE_TP
						{ $$ = Types.Double; } 
				;
				
		
statement_list	:	statement_list statement
						{ $$ = $1.Append($2).ToArray(); }
				|	statement_list	error 
						{ Compiler.AnnounceError("syntax error", Compiler.LineNumber);  }
				|	
						{ $$ = new SyntaxTree[0];}
				;
				
statement 		:	exp_stm
						{ $$ = $1; }
				|	write_stm
						{ $$ = $1; }
				|	read_stm
						{ $$ = $1; }
				| 	if_stm
						{ $$ = $1; }
				|	while_stm
						{ $$ = $1; }
				|	return_stm
						{ $$ = $1; }
				|	block_stm
						{ $$ = $1; }
				| 	error SEMICOLON
						{ Compiler.AnnounceError("syntax error", Compiler.LineNumber); yyerrok(); }
				;

block_stm		:	OPEN_CURLY_BR statement_list CLOSE_CURLY_BR
						{ $$ = new BlockStm(Compiler.LineNumber, $2); }
				;
			
exp_stm 		:	general_exp SEMICOLON
						{ $$ = new ExpStm(Compiler.LineNumber, $1); }
				;
				
general_exp		:	IDENT ASSIGN general_exp 
						{ $$ = new Assign(Compiler.LineNumber, $1, $3); }
				|	logical_exp
						{ $$ = $1; }
				;
				
logical_exp 	:	logical_exp LOGICAL_AND relation_exp
						{ $$ = new LogicalOp(Compiler.LineNumber, $1, $3, Tokens.LOGICAL_AND); } 
				|	logical_exp LOGICAL_OR relation_exp
						{ $$ = new LogicalOp(Compiler.LineNumber, $1, $3, Tokens.LOGICAL_OR); }
				|	relation_exp
						{ $$ = $1;}
				;
				
				
relation_exp	:	relation_exp EQUAL add_exp
						{ $$ = new RelationOp(Compiler.LineNumber, $1, $3, Tokens.EQUAL);}
				| 	relation_exp NOT_EQUAL add_exp
						{ $$ = new RelationOp(Compiler.LineNumber, $1, $3, Tokens.NOT_EQUAL);}
				| 	relation_exp GREATER add_exp
						{ $$ = new RelationOp(Compiler.LineNumber, $1, $3, Tokens.GREATER);}
				| 	relation_exp GREATER_OR_EQUAL add_exp
						{ $$ = new RelationOp(Compiler.LineNumber, $1, $3, Tokens.GREATER_OR_EQUAL);}
				| 	relation_exp LESS add_exp
						{ $$ = new RelationOp(Compiler.LineNumber, $1, $3, Tokens.LESS);}
				| 	relation_exp LESS_OR_EQUAL add_exp
						{ $$ = new RelationOp(Compiler.LineNumber, $1, $3, Tokens.LESS_OR_EQUAL);}
				|	add_exp
						{ $$ = $1;}
				;
				
add_exp			:	add_exp PLUS mult_exp
						{ $$ = new AddMulOp(Compiler.LineNumber, $1, $3, Tokens.PLUS); }
				|	add_exp MINUS mult_exp
						{ $$ = new AddMulOp(Compiler.LineNumber, $1, $3, Tokens.MINUS); }
				| 	mult_exp
						{ $$ = $1; }
				;
				
mult_exp 		: 	mult_exp MULTIPLIES bit_exp
						{ $$ = new AddMulOp(Compiler.LineNumber, $1, $3, Tokens.MULTIPLIES); }
				|	mult_exp DIVIDES bit_exp
						{ $$ = new AddMulOp(Compiler.LineNumber, $1, $3, Tokens.DIVIDES); }
				|	bit_exp
						{ $$ = $1; }
				;
				
bit_exp 		: 	bit_exp BIT_AND unary_exp
						{ $$ = new BitOp(Compiler.LineNumber, $1, $3, Tokens.BIT_AND); }
				|	bit_exp BIT_OR unary_exp
						{ $$ = new BitOp(Compiler.LineNumber, $1, $3, Tokens.BIT_OR); }
				|	unary_exp
						{ $$ = $1; }
				;
				
unary_exp		:	MINUS unary_exp 
						{ $$ = new UnaryOp(Compiler.LineNumber, $2, Tokens.MINUS);}
				|	BIT_NEG unary_exp
						{ $$ = new UnaryOp(Compiler.LineNumber, $2, Tokens.BIT_NEG); }
				|	LOGICAL_NEG unary_exp
						{ $$ = new UnaryOp(Compiler.LineNumber, $2, Tokens.LOGICAL_NEG); }
				|	OPEN_PAR INT_TP CLOSE_PAR unary_exp
						{ $$ = new UnaryOp(Compiler.LineNumber, $4, Tokens.INT_TP); }
				|	OPEN_PAR DOUBLE_TP CLOSE_PAR unary_exp
						{ $$ = new UnaryOp(Compiler.LineNumber, $4, Tokens.DOUBLE_TP); }
				|	factor
						{ $$ = $1; }
				;
				
factor			:	OPEN_PAR general_exp CLOSE_PAR
						{ $$ = $2; }
				|	INT_NUMBER
						{ $$ = $1; }
				|	DOUBLE_NUMBER
						{ $$ = $1; }
				|	IDENT
						{ $$ = $1; }
				|	TRUE_KW
						{ $$ = $1; }
				|	FALSE_KW
						{ $$ = $1; }
				;
				
				
write_stm		: 	WRITE_KW TEXT SEMICOLON
						{ $$ = new WriteTextStm(Compiler.LineNumber, $2); }
				| 	WRITE_KW general_exp SEMICOLON
						{ $$ = new WriteExpStm(Compiler.LineNumber, $2); }
				|	WRITE_KW general_exp COLON HEX_KW SEMICOLON
						{ $$ = new WriteExpHexStm(Compiler.LineNumber, $2); }
				;
				

read_stm		: 	READ_KW IDENT SEMICOLON
						{ $$ = new ReadStm(Compiler.LineNumber, $2);} 
				| 	READ_KW IDENT COLON HEX_KW SEMICOLON
						{ $$ = new ReadHexStm(Compiler.LineNumber, $2);} 
				;
				
				
if_stm			:	IF_KW OPEN_PAR general_exp CLOSE_PAR statement
						{ $$ = new IfStm(Compiler.LineNumber, $3, $5); }
				|	IF_KW OPEN_PAR general_exp CLOSE_PAR statement ELSE_KW statement
						{ $$ = new IfStm(Compiler.LineNumber, $3, $5, $7); }
				;
				
				
while_stm		:	WHILE_KW OPEN_PAR general_exp CLOSE_PAR statement
						{ $$ = new WhileStm(Compiler.LineNumber, $3, $5);}
				;
				
return_stm		:	RETURN_KW SEMICOLON
						{ $$ = new ReturnStm(Compiler.LineNumber);}
				;
		
%%	
public Parser(Scanner scanner) : base(scanner) { }