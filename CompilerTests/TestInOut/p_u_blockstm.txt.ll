; prolog
@int_res = constant [3 x i8] c"%d\00"
@int_res_hex = constant [5 x i8] c"0X%X\00"
@double_res = constant [4 x i8] c"%lf\00"
@bool_res_true = constant [5 x i8] c"True\00"
@bool_res_false = constant [6 x i8] c"False\00"
@int_read = constant [3 x i8] c"%d\00"
@int_hex_read = constant [3 x i8] c"%x\00"
@double_read = constant [4 x i8] c"%lf\00"
@const_1 = constant [4 x i8] c"a>1\00"
@const_2 = constant [4 x i8] c"a<1\00"
@const_3 = constant [5 x i8] c"a==1\00"
@const_4 = constant [4 x i8] c"a>1\00"
@const_5 = constant [4 x i8] c"a<1\00"
@const_6 = constant [5 x i8] c"a==1\00"
@const_7 = constant [4 x i8] c"a>1\00"
@const_8 = constant [4 x i8] c"a<1\00"
@const_9 = constant [5 x i8] c"a==1\00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%a = alloca i32
%b = alloca i32
%c = alloca i32
store i32 3, i32* %a
%t_10 = load i32, i32* %a
%t_11 = add i32 %t_10, 4
store i32 %t_11, i32* %b
store i32 1, i32* %a
%t_15 = load i32, i32* %a
%t_16 = icmp sgt i32 %t_15, 1
br i1 %t_16, label %truelab_12, label %falselab_13
truelab_12:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @const_1 to i8*))
br label %endlab_14
falselab_13:
%t_20 = load i32, i32* %a
%t_21 = icmp slt i32 %t_20, 1
br i1 %t_21, label %truelab_17, label %falselab_18
truelab_17:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @const_2 to i8*))
br label %endlab_19
falselab_18:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_3 to i8*))
br label %endlab_19
endlab_19:
br label %endlab_14
endlab_14:
store i32 3, i32* %a
%t_22 = load i32, i32* %a
%t_23 = add i32 %t_22, 4
store i32 %t_23, i32* %b
%t_24 = sub i32 0, 1
store i32 %t_24, i32* %a
%t_28 = load i32, i32* %a
%t_29 = icmp sgt i32 %t_28, 1
br i1 %t_29, label %truelab_25, label %falselab_26
truelab_25:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @const_4 to i8*))
br label %endlab_27
falselab_26:
%t_33 = load i32, i32* %a
%t_34 = icmp slt i32 %t_33, 1
br i1 %t_34, label %truelab_30, label %falselab_31
truelab_30:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @const_5 to i8*))
br label %endlab_32
falselab_31:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_6 to i8*))
br label %endlab_32
endlab_32:
br label %endlab_27
endlab_27:
store i32 3, i32* %a
%t_35 = load i32, i32* %a
%t_36 = add i32 %t_35, 4
store i32 %t_36, i32* %b
store i32 901, i32* %a
%t_40 = load i32, i32* %a
%t_41 = icmp sgt i32 %t_40, 1
br i1 %t_41, label %truelab_37, label %falselab_38
truelab_37:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @const_7 to i8*))
br label %endlab_39
falselab_38:
%t_45 = load i32, i32* %a
%t_46 = icmp slt i32 %t_45, 1
br i1 %t_46, label %truelab_42, label %falselab_43
truelab_42:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @const_8 to i8*))
br label %endlab_44
falselab_43:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_9 to i8*))
br label %endlab_44
endlab_44:
br label %endlab_39
endlab_39:
ret i32 0
}
