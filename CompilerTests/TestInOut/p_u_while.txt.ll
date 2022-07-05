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
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%b = alloca i1
%n = alloca i32
%k = alloca i32
store i32 0, i32* %n
store i32 10, i32* %k
store i1 0, i1* %b
br label %startlab_3
startlab_3:
%t_6 = load i32, i32* %n
%t_7 = icmp slt i32 %t_6, 5
br i1 %t_7, label %innerlab_4, label %endlab_5
innerlab_4:
%t_8 = load i32, i32* %n
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_8)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_1 to i8*))
%t_9 = load i32, i32* %n
%t_10 = add i32 %t_9, 1
store i32 %t_10, i32* %n
br label %startlab_3
endlab_5:
br label %startlab_11
startlab_11:
%t_14 = load i1, i1* %b
%t_15 = xor i1 %t_14, 1
br i1 %t_15, label %innerlab_12, label %endlab_13
innerlab_12:
%t_16 = load i32, i32* %k
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_16)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_2 to i8*))
%t_17 = load i32, i32* %k
%t_18 = sub i32 %t_17, 1
store i32 %t_18, i32* %k
%t_22 = load i32, i32* %k
%t_23 = icmp sle i32 %t_22, 0
br i1 %t_23, label %truelab_19, label %falselab_20
truelab_19:
store i1 1, i1* %b
br label %endlab_21
falselab_20:
br label %endlab_21
endlab_21:
br label %startlab_11
endlab_13:
br label %startlab_24
startlab_24:
%t_27 = load i1, i1* %b
%t_28 = xor i1 %t_27, 1
br i1 %t_28, label %innerlab_25, label %endlab_26
innerlab_25:
br label %startlab_24
endlab_26:
ret i32 0
}
