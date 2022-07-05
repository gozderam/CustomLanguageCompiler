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
@const_9 = constant [2 x i8] c"\0A\00"
@const_10 = constant [2 x i8] c"\0A\00"
@const_11 = constant [2 x i8] c"\0A\00"
@const_12 = constant [2 x i8] c"\0A\00"
@const_13 = constant [2 x i8] c"\0A\00"
@const_14 = constant [2 x i8] c"\0A\00"
@const_15 = constant [2 x i8] c"\0A\00"
@const_16 = constant [2 x i8] c"\0A\00"
@const_17 = constant [2 x i8] c"\0A\00"
@const_18 = constant [2 x i8] c"\0A\00"
@const_19 = constant [2 x i8] c"\0A\00"
@const_20 = constant [2 x i8] c"\0A\00"
@const_21 = constant [2 x i8] c"\0A\00"
@const_22 = constant [2 x i8] c"\0A\00"
@const_23 = constant [2 x i8] c"\0A\00"
@const_24 = constant [2 x i8] c"\0A\00"
@const_25 = constant [2 x i8] c"\0A\00"
@const_26 = constant [2 x i8] c"\0A\00"
@const_27 = constant [2 x i8] c"\0A\00"
@const_28 = constant [2 x i8] c"\0A\00"
@const_29 = constant [2 x i8] c"\0A\00"
@const_30 = constant [2 x i8] c"\0A\00"
@const_31 = constant [2 x i8] c"\0A\00"
@const_32 = constant [2 x i8] c"\0A\00"
@const_33 = constant [2 x i8] c"\0A\00"
@const_34 = constant [2 x i8] c"\0A\00"
@const_35 = constant [2 x i8] c"\0A\00"
@const_36 = constant [2 x i8] c"\0A\00"
@const_37 = constant [2 x i8] c"\0A\00"
@const_38 = constant [2 x i8] c"\0A\00"
@const_39 = constant [2 x i8] c"\0A\00"
@const_40 = constant [2 x i8] c"\0A\00"
@const_41 = constant [2 x i8] c"\0A\00"
@const_42 = constant [2 x i8] c"\0A\00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%a = alloca i32
%b = alloca i32
%qa = alloca i32
%qb = alloca i32
%qc = alloca i32
%c = alloca double
%d = alloca i1
%dd = alloca i1
%e = alloca double
%f = alloca double
store i32 3890, i32* %a
%t_43 = load i32, i32* %a
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_43)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_1 to i8*))
%t_44 = load i32, i32* %a
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 %t_44)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_2 to i8*))
store i32 5343, i32* %b
%t_45 = load i32, i32* %b
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_45)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_3 to i8*))
%t_46 = load i32, i32* %b
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 %t_46)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_4 to i8*))
store double 4.320000000, double* %c
%t_47 = sitofp i32 2 to double
%t_48 = load double, double* %c
%t_49 = fmul double %t_47, %t_48
store double %t_49, double* %e
%t_50 = sitofp i32 123 to double
store double %t_50, double* %f
%t_51 = load double, double* %c
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_51)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_5 to i8*))
%t_52 = load double, double* %e
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_52)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_6 to i8*))
%t_53 = load double, double* %f
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_53)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_7 to i8*))
store i1 1, i1* %d
%t_54 = load i1, i1* %d
br i1 %t_54, label %truelab_55, label %falselab_56
truelab_55:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_57
falselab_56:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_57
endlab_57:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_8 to i8*))
store i1 0, i1* %d
%t_58 = load i1, i1* %d
br i1 %t_58, label %truelab_59, label %falselab_60
truelab_59:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_61
falselab_60:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_61
endlab_61:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_9 to i8*))
br i1 1, label %truelab_62, label %falselab_63
truelab_62:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_64
falselab_63:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_64
endlab_64:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_10 to i8*))
br i1 0, label %truelab_65, label %falselab_66
truelab_65:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_67
falselab_66:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_67
endlab_67:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_11 to i8*))
%t_68 = xor i1 0, 1
br i1 %t_68, label %truelab_69, label %falselab_70
truelab_69:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_71
falselab_70:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_71
endlab_71:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_12 to i8*))
%t_72 = xor i1 1, 1
br i1 %t_72, label %truelab_73, label %falselab_74
truelab_73:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_75
falselab_74:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_75
endlab_75:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_13 to i8*))
br label %left_finishlab_80
left_finishlab_80:
br i1 1, label %end_lablab_83, label %right_startlab_81
right_startlab_81:
br label %right_finishlab_82
right_finishlab_82:
br label %end_lablab_83
end_lablab_83:
%t_79 = phi i1 [1, %left_finishlab_80], [0, %right_finishlab_82]
br label %left_finishlab_84
left_finishlab_84:
br i1 %t_79, label %end_lablab_87, label %right_startlab_85
right_startlab_85:
br label %right_finishlab_86
right_finishlab_86:
br label %end_lablab_87
end_lablab_87:
%t_78 = phi i1 [%t_79, %left_finishlab_84], [1, %right_finishlab_86]
br label %left_finishlab_88
left_finishlab_88:
br i1 %t_78, label %right_startlab_89, label %end_lablab_91
right_startlab_89:
br label %right_finishlab_90
right_finishlab_90:
br label %end_lablab_91
end_lablab_91:
%t_77 = phi i1 [%t_78, %left_finishlab_88], [0, %right_finishlab_90]
br label %left_finishlab_92
left_finishlab_92:
br i1 %t_77, label %end_lablab_95, label %right_startlab_93
right_startlab_93:
br label %left_finishlab_99
left_finishlab_99:
br i1 1, label %right_startlab_100, label %end_lablab_102
right_startlab_100:
br label %right_finishlab_101
right_finishlab_101:
br label %end_lablab_102
end_lablab_102:
%t_98 = phi i1 [1, %left_finishlab_99], [1, %right_finishlab_101]
br label %left_finishlab_103
left_finishlab_103:
br i1 %t_98, label %right_startlab_104, label %end_lablab_106
right_startlab_104:
br label %right_finishlab_105
right_finishlab_105:
br label %end_lablab_106
end_lablab_106:
%t_97 = phi i1 [%t_98, %left_finishlab_103], [1, %right_finishlab_105]
br label %left_finishlab_107
left_finishlab_107:
br i1 %t_97, label %end_lablab_110, label %right_startlab_108
right_startlab_108:
br label %right_finishlab_109
right_finishlab_109:
br label %end_lablab_110
end_lablab_110:
%t_96 = phi i1 [%t_97, %left_finishlab_107], [0, %right_finishlab_109]
br label %right_finishlab_94
right_finishlab_94:
br label %end_lablab_95
end_lablab_95:
%t_76 = phi i1 [%t_77, %left_finishlab_92], [%t_96, %right_finishlab_94]
br i1 %t_76, label %truelab_111, label %falselab_112
truelab_111:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_113
falselab_112:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_113
endlab_113:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_14 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_15 to i8*))
%t_114 = zext i1 1 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_114)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_16 to i8*))
%t_115 = zext i1 0 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_115)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_17 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_18 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 0)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_19 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double 0.000000000)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_20 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 0)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_21 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_22 to i8*))
%t_116 = sitofp i32 5 to double
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_116)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_23 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double 5.545400000)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_24 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 5)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_25 to i8*))
%t_119 = fptosi double 5.530000000 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_119)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_26 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_27 to i8*))
%t_120 = add i32 4, 6
%t_121 = add i32 %t_120, 3
%t_122 = add i32 %t_121, 3
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_122)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_28 to i8*))
%t_123 = add i32 4, 3
%t_124 = add i32 3, 1
%t_125 = mul i32 3, %t_124
%t_126 = add i32 1, %t_125
%t_127 = mul i32 %t_123, %t_126
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_127)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_29 to i8*))
%t_128 = sdiv i32 4, 3
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_128)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_30 to i8*))
%t_129 = sitofp i32 3 to double
%t_130 = fdiv double 4.000000000, %t_129
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_130)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_31 to i8*))
%t_131 = xor i32 4, -1
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_131)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_32 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 432)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_33 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 1073)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_34 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 64963)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_35 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 64963)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_36 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_37 to i8*))
store i32 5, i32* %b
store i32 5, i32* %a
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 5)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_38 to i8*))
store double 4.333300000, double* %f
store double 4.333300000, double* %e
store double 4.333300000, double* %c
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double 4.333300000)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_39 to i8*))
store i1 0, i1* %dd
store i1 0, i1* %d
br i1 0, label %truelab_132, label %falselab_133
truelab_132:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_134
falselab_133:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_134
endlab_134:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_40 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_41 to i8*))
store i32 5, i32* %qb
store i32 5, i32* %qa
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 5)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_42 to i8*))
store i32 10, i32* %qb
%t_135 = load i32, i32* %qb
%t_136 = mul i32 %t_135, 10
store i32 %t_136, i32* %qa
store i32 %t_136, i32* %qc
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_136)
ret i32 0
}
