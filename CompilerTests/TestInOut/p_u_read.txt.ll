; prolog
@int_res = constant [3 x i8] c"%d\00"
@int_res_hex = constant [5 x i8] c"0X%X\00"
@double_res = constant [4 x i8] c"%lf\00"
@bool_res_true = constant [5 x i8] c"True\00"
@bool_res_false = constant [6 x i8] c"False\00"
@int_read = constant [3 x i8] c"%d\00"
@int_hex_read = constant [3 x i8] c"%x\00"
@double_read = constant [4 x i8] c"%lf\00"
@const_1 = constant [5 x i8] c"a = \00"
@const_2 = constant [2 x i8] c"\0A\00"
@const_3 = constant [9 x i8] c"a_hex = \00"
@const_4 = constant [2 x i8] c"\0A\00"
@const_5 = constant [5 x i8] c"b = \00"
@const_6 = constant [2 x i8] c"\0A\00"
@const_7 = constant [9 x i8] c"b_hex = \00"
@const_8 = constant [2 x i8] c"\0A\00"
@const_9 = constant [7 x i8] c"b/2 = \00"
@const_10 = constant [2 x i8] c"\0A\00"
@const_11 = constant [5 x i8] c"b = \00"
@const_12 = constant [2 x i8] c"\0A\00"
@const_13 = constant [9 x i8] c"b_hex = \00"
@const_14 = constant [2 x i8] c"\0A\00"
@const_15 = constant [11 x i8] c"b + 10  = \00"
@const_16 = constant [2 x i8] c"\0A\00"
@const_17 = constant [5 x i8] c"b = \00"
@const_18 = constant [2 x i8] c"\0A\00"
@const_19 = constant [9 x i8] c"b_hex = \00"
@const_20 = constant [2 x i8] c"\0A\00"
@const_21 = constant [17 x i8] c"3*(b+10) + 2  = \00"
@const_22 = constant [2 x i8] c"\0A\00"
@const_23 = constant [5 x i8] c"c = \00"
@const_24 = constant [2 x i8] c"\0A\00"
@const_25 = constant [5 x i8] c"d = \00"
@const_26 = constant [2 x i8] c"\0A\00"
@const_27 = constant [9 x i8] c"c + d = \00"
@const_28 = constant [2 x i8] c"\0A\00"
@const_29 = constant [9 x i8] c"c / d = \00"
@const_30 = constant [2 x i8] c"\0A\00"
@const_31 = constant [23 x i8] c"c * d + (double)a/b;= \00"
@const_32 = constant [2 x i8] c"\0A\00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%a = alloca i32
%b = alloca i32
%c = alloca double
%d = alloca double
call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_read to i8*), i32* %a)
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_1 to i8*))
%t_33 = load i32, i32* %a
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_33)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_2 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @const_3 to i8*))
%t_34 = load i32, i32* %a
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 %t_34)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_4 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_hex_read to i8*), i32* %b)
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_5 to i8*))
%t_35 = load i32, i32* %b
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_35)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_6 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @const_7 to i8*))
%t_36 = load i32, i32* %b
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 %t_36)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_8 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @const_9 to i8*))
%t_37 = load i32, i32* %b
%t_38 = sdiv i32 %t_37, 2
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_38)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_10 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_hex_read to i8*), i32* %b)
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_11 to i8*))
%t_39 = load i32, i32* %b
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_39)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_12 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @const_13 to i8*))
%t_40 = load i32, i32* %b
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 %t_40)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_14 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([11 x i8]* @const_15 to i8*))
%t_41 = load i32, i32* %b
%t_42 = add i32 %t_41, 10
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_42)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_16 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_hex_read to i8*), i32* %b)
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_17 to i8*))
%t_43 = load i32, i32* %b
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_43)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_18 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @const_19 to i8*))
%t_44 = load i32, i32* %b
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 %t_44)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_20 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([17 x i8]* @const_21 to i8*))
%t_45 = load i32, i32* %b
%t_46 = add i32 %t_45, 10
%t_47 = mul i32 3, %t_46
%t_48 = add i32 %t_47, 2
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_48)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_22 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_read to i8*), double* %c)
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_23 to i8*))
%t_49 = load double, double* %c
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_49)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_24 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_read to i8*), double* %d)
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_25 to i8*))
%t_50 = load double, double* %d
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_50)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_26 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @const_27 to i8*))
%t_51 = load double, double* %c
%t_52 = load double, double* %d
%t_53 = fadd double %t_51, %t_52
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_53)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_28 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @const_29 to i8*))
%t_54 = load double, double* %c
%t_55 = load double, double* %d
%t_56 = fdiv double %t_54, %t_55
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_56)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_30 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([23 x i8]* @const_31 to i8*))
%t_57 = load double, double* %c
%t_58 = load double, double* %d
%t_59 = fmul double %t_57, %t_58
%t_60 = load i32, i32* %a
%t_61 = sitofp i32 %t_60 to double
%t_62 = load i32, i32* %b
%t_63 = sitofp i32 %t_62 to double
%t_64 = fdiv double %t_61, %t_63
%t_65 = fadd double %t_59, %t_64
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_65)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_32 to i8*))
ret i32 0
}
