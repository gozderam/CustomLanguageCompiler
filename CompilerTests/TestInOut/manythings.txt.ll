; prolog
@int_res = constant [3 x i8] c"%d\00"
@int_res_hex = constant [5 x i8] c"0X%X\00"
@double_res = constant [4 x i8] c"%lf\00"
@bool_res_true = constant [5 x i8] c"True\00"
@bool_res_false = constant [6 x i8] c"False\00"
@int_read = constant [3 x i8] c"%d\00"
@int_hex_read = constant [3 x i8] c"%x\00"
@double_read = constant [4 x i8] c"%lf\00"
@const_1 = constant [5 x i8] c"p = \00"
@const_2 = constant [2 x i8] c"\0A\00"
@const_3 = constant [5 x i8] c"q = \00"
@const_4 = constant [2 x i8] c"\0A\00"
@const_5 = constant [5 x i8] c"r = \00"
@const_6 = constant [2 x i8] c"\0A\00"
@const_7 = constant [5 x i8] c"k = \00"
@const_8 = constant [2 x i8] c"\0A\00"
@const_9 = constant [5 x i8] c"l = \00"
@const_10 = constant [2 x i8] c"\0A\00"
@const_11 = constant [5 x i8] c"l = \00"
@const_12 = constant [2 x i8] c"\0A\00"
@const_13 = constant [10 x i8] c"(int)l = \00"
@const_14 = constant [2 x i8] c"\0A\00"
@const_15 = constant [5 x i8] c"l = \00"
@const_16 = constant [2 x i8] c"\0A\00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%a = alloca i32
%b = alloca i32
%c = alloca i32
%k = alloca double
%l = alloca double
%m = alloca double
%p = alloca i1
%q = alloca i1
%r = alloca i1
store i1 0, i1* %p
%t_17 = load i1, i1* %p
%t_18 = xor i1 %t_17, 1
store i1 %t_18, i1* %q
%t_19 = load i1, i1* %p
%t_20 = xor i1 %t_19, 1
%t_21 = xor i1 %t_20, 1
%t_22 = xor i1 %t_21, 1
%t_23 = xor i1 %t_22, 1
%t_24 = xor i1 %t_23, 1
%t_25 = xor i1 %t_24, 1
%t_26 = xor i1 %t_25, 1
%t_27 = xor i1 %t_26, 1
%t_28 = xor i1 %t_27, 1
%t_29 = xor i1 %t_28, 1
%t_30 = xor i1 %t_29, 1
store i1 %t_30, i1* %r
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_1 to i8*))
%t_31 = load i1, i1* %p
br i1 %t_31, label %truelab_32, label %falselab_33
truelab_32:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_34
falselab_33:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_34
endlab_34:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_2 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_3 to i8*))
%t_35 = load i1, i1* %q
br i1 %t_35, label %truelab_36, label %falselab_37
truelab_36:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_38
falselab_37:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_38
endlab_38:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_4 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_5 to i8*))
%t_39 = load i1, i1* %r
br i1 %t_39, label %truelab_40, label %falselab_41
truelab_40:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_42
falselab_41:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_42
endlab_42:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_6 to i8*))
%t_47 = load i1, i1* %q
br label %left_finishlab_48
left_finishlab_48:
br i1 %t_47, label %right_startlab_49, label %end_lablab_51
right_startlab_49:
%t_52 = load i1, i1* %r
br label %right_finishlab_50
right_finishlab_50:
br label %end_lablab_51
end_lablab_51:
%t_46 = phi i1 [%t_47, %left_finishlab_48], [%t_52, %right_finishlab_50]
br i1 %t_46, label %truelab_43, label %falselab_44
truelab_43:
store double 3.565000000, double* %k
br label %endlab_45
falselab_44:
%t_53 = sitofp i32 10 to double
store double %t_53, double* %k
br label %endlab_45
endlab_45:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_7 to i8*))
%t_54 = load double, double* %k
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_54)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_8 to i8*))
%t_55 = load double, double* %k
%t_56 = sitofp i32 10 to double
%t_57 = fadd double %t_55, %t_56
store double %t_57, double* %l
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_9 to i8*))
%t_58 = load double, double* %l
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_58)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_10 to i8*))
%t_59 = load double, double* %k
%t_60 = fptosi double %t_59 to i32
%t_61 = mul i32 %t_60, 3
%t_62 = sitofp i32 %t_61 to double
store double %t_62, double* %l
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_11 to i8*))
%t_63 = load double, double* %l
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_63)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_12 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([10 x i8]* @const_13 to i8*))
%t_64 = load double, double* %l
%t_65 = fptosi double %t_64 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_65)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_14 to i8*))
%t_66 = sitofp i32 10 to double
store double %t_66, double* %l
store i32 40, i32* %c
%t_67 = load double, double* %k
%t_68 = fptosi double %t_67 to i32
%t_69 = add i32 2, %t_68
%t_70 = sitofp i32 %t_69 to double
%t_71 = fmul double 2.400000000, 5.400000000
%t_72 = fadd double %t_70, %t_71
%t_73 = sdiv i32 10, 3
%t_74 = sitofp i32 %t_73 to double
%t_75 = fadd double %t_74, 1.000532000
%t_76 = fmul double %t_72, %t_75
%t_77 = xor i32 3, -1
%t_78 = sitofp i32 %t_77 to double
%t_79 = fadd double %t_76, %t_78
%t_80 = sub i32 0, 4
%t_81 = sub i32 0, %t_80
%t_82 = xor i32 %t_81, -1
%t_83 = sub i32 0, %t_82
%t_84 = sitofp i32 %t_83 to double
%t_85 = fsub double %t_79, %t_84
%t_86 = sub i32 0, 6
%t_87 = sitofp i32 %t_86 to double
%t_88 = fadd double %t_85, %t_87
%t_89 = add i32 2012, 32
%t_90 = sitofp i32 %t_89 to double
%t_91 = sub i32 32, 123
%t_92 = and i32 1, 41
%t_93 = add i32 %t_91, %t_92
%t_94 = sitofp i32 %t_93 to double
%t_95 = fdiv double %t_94, 4.900000000
%t_96 = fmul double %t_90, %t_95
%t_97 = fadd double %t_88, %t_96
%t_102 = sitofp i32 3123 to double
%t_103 = mul i32 10, 12
%t_104 = sitofp i32 %t_103 to double
%t_105 = fsub double 0.0, 13.900000000
%t_106 = fdiv double %t_104, %t_105
%t_107 = fcmp ogt double %t_102, %t_106
br label %left_finishlab_108
left_finishlab_108:
br i1 %t_107, label %end_lablab_111, label %right_startlab_109
right_startlab_109:
%t_112 = load i1, i1* %q
br label %right_finishlab_110
right_finishlab_110:
br label %end_lablab_111
end_lablab_111:
%t_101 = phi i1 [%t_107, %left_finishlab_108], [%t_112, %right_finishlab_110]
br label %left_finishlab_113
left_finishlab_113:
br i1 %t_101, label %end_lablab_116, label %right_startlab_114
right_startlab_114:
%t_117 = mul i32 4, 12
%t_118 = load i32, i32* %c
%t_119 = mul i32 %t_118, 2
%t_120 = add i32 %t_119, 453
%t_121 = icmp sge i32 %t_117, %t_120
br label %right_finishlab_115
right_finishlab_115:
br label %end_lablab_116
end_lablab_116:
%t_100 = phi i1 [%t_101, %left_finishlab_113], [%t_121, %right_finishlab_115]
br label %left_finishlab_122
left_finishlab_122:
br i1 %t_100, label %end_lablab_125, label %right_startlab_123
right_startlab_123:
%t_126 = load i1, i1* %r
%t_127 = xor i1 %t_126, 1
%t_128 = xor i1 %t_127, 1
%t_129 = xor i1 %t_128, 1
%t_130 = xor i1 %t_129, 1
%t_131 = xor i1 %t_130, 1
%t_132 = xor i1 %t_131, 1
br label %right_finishlab_124
right_finishlab_124:
br label %end_lablab_125
end_lablab_125:
%t_99 = phi i1 [%t_100, %left_finishlab_122], [%t_132, %right_finishlab_124]
br label %left_finishlab_133
left_finishlab_133:
br i1 %t_99, label %right_startlab_134, label %end_lablab_136
right_startlab_134:
%t_138 = load i1, i1* %p
br label %left_finishlab_139
left_finishlab_139:
br i1 %t_138, label %end_lablab_142, label %right_startlab_140
right_startlab_140:
%t_143 = icmp ne i32 12, 13
br label %right_finishlab_141
right_finishlab_141:
br label %end_lablab_142
end_lablab_142:
%t_137 = phi i1 [%t_138, %left_finishlab_139], [%t_143, %right_finishlab_141]
br label %right_finishlab_135
right_finishlab_135:
br label %end_lablab_136
end_lablab_136:
%t_98 = phi i1 [%t_99, %left_finishlab_133], [%t_137, %right_finishlab_135]
%t_144 = zext i1 %t_98 to i32
%t_145 = or i32 64, 42
%t_147 = mul i32 %t_144, %t_145
%t_148 = sitofp i32 %t_147 to double
%t_149 = fdiv double %t_148, 12.020000000
%t_150 = fadd double %t_97, %t_149
%t_151 = sitofp i32 2 to double
%t_152 = fadd double %t_150, %t_151
%t_153 = sitofp i32 12 to double
%t_154 = sitofp i32 5 to double
%t_155 = fdiv double %t_153, %t_154
%t_156 = fadd double %t_152, %t_155
%t_157 = mul i32 5, 6
%t_158 = icmp sle i32 %t_157, 4
%t_159 = zext i1 %t_158 to i32
%t_160 = sitofp i32 %t_159 to double
%t_161 = fptosi double %t_160 to i32
%t_162 = sitofp i32 %t_161 to double
%t_163 = fadd double %t_156, %t_162
%t_164 = sitofp i32 10000 to double
%t_165 = fcmp olt double %t_164, 123.230000000
%t_166 = zext i1 %t_165 to i32
%t_167 = sitofp i32 %t_166 to double
%t_168 = fadd double %t_163, %t_167
store double %t_168, double* %l
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_15 to i8*))
%t_169 = load double, double* %l
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_169)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_16 to i8*))
ret i32 0
}
