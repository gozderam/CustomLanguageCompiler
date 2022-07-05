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
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%b = alloca i1
%c = alloca i1
%d = alloca i1
%e = alloca i1
%f = alloca i1
%g = alloca i1
store i1 1, i1* %b
store i1 0, i1* %c
%t_5 = load i1, i1* %b
%t_6 = xor i1 %t_5, 1
store i1 %t_6, i1* %d
%t_10 = load i1, i1* %b
br label %left_finishlab_11
left_finishlab_11:
br i1 %t_10, label %end_lablab_14, label %right_startlab_12
right_startlab_12:
%t_15 = load i1, i1* %c
br label %right_finishlab_13
right_finishlab_13:
br label %end_lablab_14
end_lablab_14:
%t_9 = phi i1 [%t_10, %left_finishlab_11], [%t_15, %right_finishlab_13]
br label %left_finishlab_16
left_finishlab_16:
br i1 %t_9, label %end_lablab_19, label %right_startlab_17
right_startlab_17:
%t_20 = load i1, i1* %d
br label %right_finishlab_18
right_finishlab_18:
br label %end_lablab_19
end_lablab_19:
%t_8 = phi i1 [%t_9, %left_finishlab_16], [%t_20, %right_finishlab_18]
br label %left_finishlab_21
left_finishlab_21:
br i1 %t_8, label %end_lablab_24, label %right_startlab_22
right_startlab_22:
%t_26 = load i1, i1* %b
br label %left_finishlab_27
left_finishlab_27:
br i1 %t_26, label %right_startlab_28, label %end_lablab_30
right_startlab_28:
%t_31 = load i1, i1* %c
br label %right_finishlab_29
right_finishlab_29:
br label %end_lablab_30
end_lablab_30:
%t_25 = phi i1 [%t_26, %left_finishlab_27], [%t_31, %right_finishlab_29]
br label %right_finishlab_23
right_finishlab_23:
br label %end_lablab_24
end_lablab_24:
%t_7 = phi i1 [%t_8, %left_finishlab_21], [%t_25, %right_finishlab_23]
store i1 %t_7, i1* %e
%t_34 = load i1, i1* %b
br label %left_finishlab_35
left_finishlab_35:
br i1 %t_34, label %right_startlab_36, label %end_lablab_38
right_startlab_36:
%t_39 = load i1, i1* %c
br label %right_finishlab_37
right_finishlab_37:
br label %end_lablab_38
end_lablab_38:
%t_33 = phi i1 [%t_34, %left_finishlab_35], [%t_39, %right_finishlab_37]
br label %left_finishlab_40
left_finishlab_40:
br i1 %t_33, label %right_startlab_41, label %end_lablab_43
right_startlab_41:
%t_44 = load i1, i1* %e
br label %right_finishlab_42
right_finishlab_42:
br label %end_lablab_43
end_lablab_43:
%t_32 = phi i1 [%t_33, %left_finishlab_40], [%t_44, %right_finishlab_42]
store i1 %t_32, i1* %f
%t_47 = load i1, i1* %b
%t_48 = xor i1 %t_47, 1
%t_49 = xor i1 %t_48, 1
br label %left_finishlab_50
left_finishlab_50:
br i1 %t_49, label %right_startlab_51, label %end_lablab_53
right_startlab_51:
%t_54 = load i1, i1* %c
%t_55 = xor i1 %t_54, 1
br label %right_finishlab_52
right_finishlab_52:
br label %end_lablab_53
end_lablab_53:
%t_46 = phi i1 [%t_49, %left_finishlab_50], [%t_55, %right_finishlab_52]
br label %left_finishlab_56
left_finishlab_56:
br i1 %t_46, label %right_startlab_57, label %end_lablab_59
right_startlab_57:
%t_60 = load i1, i1* %e
br label %right_finishlab_58
right_finishlab_58:
br label %end_lablab_59
end_lablab_59:
%t_45 = phi i1 [%t_46, %left_finishlab_56], [%t_60, %right_finishlab_58]
store i1 %t_45, i1* %g
%t_61 = load i1, i1* %b
br i1 %t_61, label %truelab_62, label %falselab_63
truelab_62:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_64
falselab_63:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_64
endlab_64:
%t_65 = load i1, i1* %c
br i1 %t_65, label %truelab_66, label %falselab_67
truelab_66:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_68
falselab_67:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_68
endlab_68:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_1 to i8*))
%t_69 = load i1, i1* %d
br i1 %t_69, label %truelab_70, label %falselab_71
truelab_70:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_72
falselab_71:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_72
endlab_72:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_2 to i8*))
%t_73 = load i1, i1* %e
br i1 %t_73, label %truelab_74, label %falselab_75
truelab_74:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_76
falselab_75:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_76
endlab_76:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_3 to i8*))
%t_77 = load i1, i1* %f
br i1 %t_77, label %truelab_78, label %falselab_79
truelab_78:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_80
falselab_79:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_80
endlab_80:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_4 to i8*))
%t_81 = load i1, i1* %g
br i1 %t_81, label %truelab_82, label %falselab_83
truelab_82:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_84
falselab_83:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_84
endlab_84:
ret i32 0
}
