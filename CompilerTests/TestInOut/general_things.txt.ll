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
@const_2 = constant [2 x i8] c"\0A\00"
@const_3 = constant [2 x i8] c"\0A\00"
@const_4 = constant [2 x i8] c"\0A\00"
@const_5 = constant [2 x i8] c"\0A\00"
@const_6 = constant [2 x i8] c"\0A\00"
@const_7 = constant [2 x i8] c"\0A\00"
@const_8 = constant [2 x i8] c"\0A\00"
@const_9 = constant [18 x i8] c"ala ma kotai psa \00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%d = alloca double
%i = alloca i32
store double 1.300000000, double* %d
store double 123.123000000, double* %d
store double 0.123310000, double* %d
store double 1.120000000, double* %d
store double 0.000000000, double* %d
%t_10 = load double, double* %d
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_10)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_1 to i8*))
store i32 0, i32* %i
%t_11 = load i32, i32* %i
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_11)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_2 to i8*))
store i32 243, i32* %i
%t_12 = load i32, i32* %i
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_12)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_3 to i8*))
store i32 243, i32* %i
%t_13 = load i32, i32* %i
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_13)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_4 to i8*))
store i32 243, i32* %i
%t_14 = load i32, i32* %i
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_14)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_5 to i8*))
store i32 243, i32* %i
%t_15 = load i32, i32* %i
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_15)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_6 to i8*))
store i32 243, i32* %i
%t_16 = load i32, i32* %i
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_16)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_7 to i8*))
%t_17 = load i32, i32* %i
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 %t_17)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_8 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([18 x i8]* @const_9 to i8*))
%t_18 = load i32, i32* %i
ret i32 0
}
