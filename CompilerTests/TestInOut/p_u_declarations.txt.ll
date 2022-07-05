; prolog
@int_res = constant [3 x i8] c"%d\00"
@int_res_hex = constant [5 x i8] c"0X%X\00"
@double_res = constant [4 x i8] c"%lf\00"
@bool_res_true = constant [5 x i8] c"True\00"
@bool_res_false = constant [6 x i8] c"False\00"
@int_read = constant [3 x i8] c"%d\00"
@int_hex_read = constant [3 x i8] c"%x\00"
@double_read = constant [4 x i8] c"%lf\00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%n = alloca i32
%i = alloca i32
%j = alloca i32
%k = alloca i32
%wynik = alloca double
%x = alloca double
%y = alloca double
%isOK = alloca i1
%b1 = alloca i1
%b2 = alloca i1
%b3 = alloca i1
%MojaBardzoDlugaNazwaZmiennej = alloca double
%AToBARDZIEJKROTka111111231212414aa = alloca double
ret i32 0
}
