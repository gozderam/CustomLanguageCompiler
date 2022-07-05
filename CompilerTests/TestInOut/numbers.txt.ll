; prolog
@int_res = constant [3 x i8] c"%d\00"
@int_res_hex = constant [5 x i8] c"0X%X\00"
@double_res = constant [4 x i8] c"%lf\00"
@bool_res_true = constant [5 x i8] c"True\00"
@bool_res_false = constant [6 x i8] c"False\00"
@int_read = constant [3 x i8] c"%d\00"
@int_hex_read = constant [3 x i8] c"%x\00"
@double_read = constant [4 x i8] c"%lf\00"
@const_1 = constant [2 x i8] c"\0A\00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%a = alloca i32
%b = alloca double
store i32 4, i32* %a
%t_2 = load i32, i32* %a
%t_3 = mul i32 4, %t_2
%t_4 = sitofp i32 %t_3 to double
store double %t_4, double* %b
%t_5 = load i32, i32* %a
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_5)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_1 to i8*))
%t_6 = load double, double* %b
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_6)
ret i32 0
}
