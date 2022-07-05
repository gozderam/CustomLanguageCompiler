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
@const_2 = constant [7 x i8] c"w is: \00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%a = alloca i1
%b = alloca i1
%c = alloca i1
%k = alloca i32
%l = alloca i32
%w = alloca double
%x = alloca double
store i32 10, i32* %k
store i32 5, i32* %l
store i1 1, i1* %a
store i1 0, i1* %b
%t_4 = load i1, i1* %a
br label %left_finishlab_5
left_finishlab_5:
br i1 %t_4, label %end_lablab_8, label %right_startlab_6
right_startlab_6:
%t_9 = load i1, i1* %b
br label %right_finishlab_7
right_finishlab_7:
br label %end_lablab_8
end_lablab_8:
%t_3 = phi i1 [%t_4, %left_finishlab_5], [%t_9, %right_finishlab_7]
store i1 %t_3, i1* %c
%t_10 = load i32, i32* %k
%t_11 = load i32, i32* %l
%t_12 = sdiv i32 %t_10, %t_11
%t_13 = sitofp i32 %t_12 to double
store double %t_13, double* %w
%t_14 = load double, double* %w
%t_15 = fmul double %t_14, 2.500000000
store double %t_15, double* %x
%t_19 = load i32, i32* %k
%t_20 = icmp sgt i32 %t_19, 3
br i1 %t_20, label %truelab_16, label %falselab_17
truelab_16:
br label %endlab_18
falselab_17:
br label %endlab_18
endlab_18:
%t_24 = load i32, i32* %l
%t_25 = icmp slt i32 %t_24, 1000
br i1 %t_25, label %truelab_21, label %falselab_22
truelab_21:
br label %endlab_23
falselab_22:
br label %endlab_23
endlab_23:
%t_31 = load i1, i1* %a
br label %left_finishlab_32
left_finishlab_32:
br i1 %t_31, label %end_lablab_35, label %right_startlab_33
right_startlab_33:
%t_36 = load i1, i1* %b
br label %right_finishlab_34
right_finishlab_34:
br label %end_lablab_35
end_lablab_35:
%t_30 = phi i1 [%t_31, %left_finishlab_32], [%t_36, %right_finishlab_34]
br label %left_finishlab_37
left_finishlab_37:
br i1 %t_30, label %end_lablab_40, label %right_startlab_38
right_startlab_38:
%t_41 = load i1, i1* %c
br label %right_finishlab_39
right_finishlab_39:
br label %end_lablab_40
end_lablab_40:
%t_29 = phi i1 [%t_30, %left_finishlab_37], [%t_41, %right_finishlab_39]
br i1 %t_29, label %truelab_26, label %falselab_27
truelab_26:
%t_42 = load double, double* %x
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_42)
br label %endlab_28
falselab_27:
%t_43 = load double, double* %x
%t_44 = sitofp i32 1 to double
%t_45 = fadd double %t_43, %t_44
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_45)
br label %endlab_28
endlab_28:
%t_51 = load i1, i1* %a
br label %left_finishlab_52
left_finishlab_52:
br i1 %t_51, label %end_lablab_55, label %right_startlab_53
right_startlab_53:
%t_56 = load i1, i1* %b
br label %right_finishlab_54
right_finishlab_54:
br label %end_lablab_55
end_lablab_55:
%t_50 = phi i1 [%t_51, %left_finishlab_52], [%t_56, %right_finishlab_54]
br label %left_finishlab_57
left_finishlab_57:
br i1 %t_50, label %end_lablab_60, label %right_startlab_58
right_startlab_58:
%t_61 = load i1, i1* %c
br label %right_finishlab_59
right_finishlab_59:
br label %end_lablab_60
end_lablab_60:
%t_49 = phi i1 [%t_50, %left_finishlab_57], [%t_61, %right_finishlab_59]
%t_62 = xor i1 %t_49, 1
br i1 %t_62, label %truelab_46, label %falselab_47
truelab_46:
%t_63 = load double, double* %x
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_63)
br label %endlab_48
falselab_47:
%t_64 = load double, double* %x
%t_65 = sitofp i32 1 to double
%t_66 = fadd double %t_64, %t_65
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_66)
br label %endlab_48
endlab_48:
%t_72 = load i1, i1* %a
br label %left_finishlab_73
left_finishlab_73:
br i1 %t_72, label %end_lablab_76, label %right_startlab_74
right_startlab_74:
%t_77 = load i1, i1* %b
br label %right_finishlab_75
right_finishlab_75:
br label %end_lablab_76
end_lablab_76:
%t_71 = phi i1 [%t_72, %left_finishlab_73], [%t_77, %right_finishlab_75]
br label %left_finishlab_78
left_finishlab_78:
br i1 %t_71, label %end_lablab_81, label %right_startlab_79
right_startlab_79:
%t_82 = load i1, i1* %c
br label %right_finishlab_80
right_finishlab_80:
br label %end_lablab_81
end_lablab_81:
%t_70 = phi i1 [%t_71, %left_finishlab_78], [%t_82, %right_finishlab_80]
br i1 %t_70, label %truelab_67, label %falselab_68
truelab_67:
%t_83 = load double, double* %x
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_83)
br label %endlab_69
falselab_68:
%t_84 = load double, double* %x
%t_85 = sitofp i32 1 to double
%t_86 = fadd double %t_84, %t_85
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_86)
br label %endlab_69
endlab_69:
%t_92 = load i1, i1* %a
br label %left_finishlab_93
left_finishlab_93:
br i1 %t_92, label %end_lablab_96, label %right_startlab_94
right_startlab_94:
%t_97 = load i1, i1* %b
br label %right_finishlab_95
right_finishlab_95:
br label %end_lablab_96
end_lablab_96:
%t_91 = phi i1 [%t_92, %left_finishlab_93], [%t_97, %right_finishlab_95]
br label %left_finishlab_98
left_finishlab_98:
br i1 %t_91, label %end_lablab_101, label %right_startlab_99
right_startlab_99:
%t_102 = load i1, i1* %c
br label %right_finishlab_100
right_finishlab_100:
br label %end_lablab_101
end_lablab_101:
%t_90 = phi i1 [%t_91, %left_finishlab_98], [%t_102, %right_finishlab_100]
%t_103 = xor i1 %t_90, 1
br i1 %t_103, label %truelab_87, label %falselab_88
truelab_87:
%t_104 = load double, double* %x
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_104)
br label %endlab_89
falselab_88:
%t_105 = load double, double* %x
%t_106 = sitofp i32 1 to double
%t_107 = fadd double %t_105, %t_106
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_107)
br label %endlab_89
endlab_89:
%t_113 = load i1, i1* %a
br label %left_finishlab_114
left_finishlab_114:
br i1 %t_113, label %end_lablab_117, label %right_startlab_115
right_startlab_115:
%t_118 = load i1, i1* %b
br label %right_finishlab_116
right_finishlab_116:
br label %end_lablab_117
end_lablab_117:
%t_112 = phi i1 [%t_113, %left_finishlab_114], [%t_118, %right_finishlab_116]
br label %left_finishlab_119
left_finishlab_119:
br i1 %t_112, label %end_lablab_122, label %right_startlab_120
right_startlab_120:
%t_123 = load i1, i1* %c
br label %right_finishlab_121
right_finishlab_121:
br label %end_lablab_122
end_lablab_122:
%t_111 = phi i1 [%t_112, %left_finishlab_119], [%t_123, %right_finishlab_121]
br i1 %t_111, label %truelab_108, label %falselab_109
truelab_108:
%t_124 = load double, double* %x
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_124)
br label %endlab_110
falselab_109:
%t_125 = load double, double* %x
%t_126 = sitofp i32 1 to double
%t_127 = fadd double %t_125, %t_126
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_127)
br label %endlab_110
endlab_110:
%t_133 = load i1, i1* %a
br label %left_finishlab_134
left_finishlab_134:
br i1 %t_133, label %end_lablab_137, label %right_startlab_135
right_startlab_135:
%t_138 = load i1, i1* %b
br label %right_finishlab_136
right_finishlab_136:
br label %end_lablab_137
end_lablab_137:
%t_132 = phi i1 [%t_133, %left_finishlab_134], [%t_138, %right_finishlab_136]
br label %left_finishlab_139
left_finishlab_139:
br i1 %t_132, label %end_lablab_142, label %right_startlab_140
right_startlab_140:
%t_143 = load i1, i1* %c
br label %right_finishlab_141
right_finishlab_141:
br label %end_lablab_142
end_lablab_142:
%t_131 = phi i1 [%t_132, %left_finishlab_139], [%t_143, %right_finishlab_141]
%t_144 = xor i1 %t_131, 1
br i1 %t_144, label %truelab_128, label %falselab_129
truelab_128:
%t_145 = load double, double* %x
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_145)
br label %endlab_130
falselab_129:
%t_146 = load double, double* %x
%t_147 = sitofp i32 1 to double
%t_148 = fadd double %t_146, %t_147
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_148)
br label %endlab_130
endlab_130:
%t_154 = load i1, i1* %a
br label %left_finishlab_155
left_finishlab_155:
br i1 %t_154, label %end_lablab_158, label %right_startlab_156
right_startlab_156:
%t_159 = load i1, i1* %b
br label %right_finishlab_157
right_finishlab_157:
br label %end_lablab_158
end_lablab_158:
%t_153 = phi i1 [%t_154, %left_finishlab_155], [%t_159, %right_finishlab_157]
br label %left_finishlab_160
left_finishlab_160:
br i1 %t_153, label %end_lablab_163, label %right_startlab_161
right_startlab_161:
%t_164 = load i1, i1* %c
br label %right_finishlab_162
right_finishlab_162:
br label %end_lablab_163
end_lablab_163:
%t_152 = phi i1 [%t_153, %left_finishlab_160], [%t_164, %right_finishlab_162]
br i1 %t_152, label %truelab_149, label %falselab_150
truelab_149:
%t_165 = load double, double* %x
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_165)
br label %endlab_151
falselab_150:
%t_166 = load double, double* %x
%t_167 = sitofp i32 1 to double
%t_168 = fadd double %t_166, %t_167
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_168)
br label %endlab_151
endlab_151:
%t_174 = load i1, i1* %a
br label %left_finishlab_175
left_finishlab_175:
br i1 %t_174, label %end_lablab_178, label %right_startlab_176
right_startlab_176:
%t_179 = load i1, i1* %b
br label %right_finishlab_177
right_finishlab_177:
br label %end_lablab_178
end_lablab_178:
%t_173 = phi i1 [%t_174, %left_finishlab_175], [%t_179, %right_finishlab_177]
br label %left_finishlab_180
left_finishlab_180:
br i1 %t_173, label %end_lablab_183, label %right_startlab_181
right_startlab_181:
%t_184 = load i1, i1* %c
br label %right_finishlab_182
right_finishlab_182:
br label %end_lablab_183
end_lablab_183:
%t_172 = phi i1 [%t_173, %left_finishlab_180], [%t_184, %right_finishlab_182]
%t_185 = xor i1 %t_172, 1
br i1 %t_185, label %truelab_169, label %falselab_170
truelab_169:
%t_186 = load double, double* %x
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_186)
br label %endlab_171
falselab_170:
%t_187 = load double, double* %x
%t_188 = sitofp i32 1 to double
%t_189 = fadd double %t_187, %t_188
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_189)
br label %endlab_171
endlab_171:
%t_193 = load i1, i1* %a
br i1 %t_193, label %truelab_190, label %falselab_191
truelab_190:
%t_194 = sitofp i32 10 to double
%t_195 = load double, double* %w
%t_196 = fmul double %t_194, %t_195
store double %t_196, double* %w
%t_197 = load double, double* %w
%t_198 = sitofp i32 2 to double
%t_199 = fdiv double %t_197, %t_198
store double %t_199, double* %w
%t_200 = load i1, i1* %a
%t_201 = load i1, i1* %b
%t_202 = xor i1 %t_201, 1
%t_203 = icmp eq i1 %t_200, %t_202
%t_204 = zext i1 %t_203 to i32
%t_205 = sitofp i32 %t_204 to double
store double %t_205, double* %w
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_1 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @const_2 to i8*))
%t_206 = load double, double* %w
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_206)
br label %endlab_192
falselab_191:
br label %endlab_192
endlab_192:
ret i32 0
}
