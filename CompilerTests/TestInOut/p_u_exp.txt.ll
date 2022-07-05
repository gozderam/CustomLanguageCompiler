; prolog
@int_res = constant [3 x i8] c"%d\00"
@int_res_hex = constant [5 x i8] c"0X%X\00"
@double_res = constant [4 x i8] c"%lf\00"
@bool_res_true = constant [5 x i8] c"True\00"
@bool_res_false = constant [6 x i8] c"False\00"
@int_read = constant [3 x i8] c"%d\00"
@int_hex_read = constant [3 x i8] c"%x\00"
@double_read = constant [4 x i8] c"%lf\00"
@const_1 = constant [13 x i8] c"minus unarny\00"
@const_2 = constant [2 x i8] c"\0A\00"
@const_3 = constant [2 x i8] c"\0A\00"
@const_4 = constant [2 x i8] c"\0A\00"
@const_5 = constant [2 x i8] c"\0A\00"
@const_6 = constant [15 x i8] c"negacja bitowa\00"
@const_7 = constant [2 x i8] c"\0A\00"
@const_8 = constant [2 x i8] c"\0A\00"
@const_9 = constant [2 x i8] c"\0A\00"
@const_10 = constant [17 x i8] c"negacja logiczna\00"
@const_11 = constant [2 x i8] c"\0A\00"
@const_12 = constant [2 x i8] c"\0A\00"
@const_13 = constant [2 x i8] c"\0A\00"
@const_14 = constant [18 x i8] c"rzutowanie na int\00"
@const_15 = constant [2 x i8] c"\0A\00"
@const_16 = constant [2 x i8] c"\0A\00"
@const_17 = constant [2 x i8] c"\0A\00"
@const_18 = constant [2 x i8] c"\0A\00"
@const_19 = constant [2 x i8] c"\0A\00"
@const_20 = constant [21 x i8] c"rzutowanie na double\00"
@const_21 = constant [2 x i8] c"\0A\00"
@const_22 = constant [2 x i8] c"\0A\00"
@const_23 = constant [2 x i8] c"\0A\00"
@const_24 = constant [2 x i8] c"\0A\00"
@const_25 = constant [2 x i8] c"\0A\00"
@const_26 = constant [10 x i8] c" | bitowe\00"
@const_27 = constant [2 x i8] c"\0A\00"
@const_28 = constant [2 x i8] c"\0A\00"
@const_29 = constant [10 x i8] c" & bitowe\00"
@const_30 = constant [2 x i8] c"\0A\00"
@const_31 = constant [2 x i8] c"\0A\00"
@const_32 = constant [2 x i8] c"\0A\00"
@const_33 = constant [19 x i8] c"mnozenie dzielenie\00"
@const_34 = constant [2 x i8] c"\0A\00"
@const_35 = constant [2 x i8] c"\0A\00"
@const_36 = constant [2 x i8] c"\0A\00"
@const_37 = constant [2 x i8] c"\0A\00"
@const_38 = constant [2 x i8] c"\0A\00"
@const_39 = constant [2 x i8] c"\0A\00"
@const_40 = constant [2 x i8] c"\0A\00"
@const_41 = constant [2 x i8] c"\0A\00"
@const_42 = constant [2 x i8] c"\0A\00"
@const_43 = constant [2 x i8] c"\0A\00"
@const_44 = constant [21 x i8] c"dodwanie odejmowanie\00"
@const_45 = constant [2 x i8] c"\0A\00"
@const_46 = constant [2 x i8] c"\0A\00"
@const_47 = constant [2 x i8] c"\0A\00"
@const_48 = constant [2 x i8] c"\0A\00"
@const_49 = constant [2 x i8] c"\0A\00"
@const_50 = constant [2 x i8] c"\0A\00"
@const_51 = constant [2 x i8] c"\0A\00"
@const_52 = constant [2 x i8] c"\0A\00"
@const_53 = constant [2 x i8] c"\0A\00"
@const_54 = constant [2 x i8] c"\0A\00"
@const_55 = constant [29 x i8] c"porowniania intow  < > <= >=\00"
@const_56 = constant [2 x i8] c"\0A\00"
@const_57 = constant [2 x i8] c"\0A\00"
@const_58 = constant [2 x i8] c"\0A\00"
@const_59 = constant [2 x i8] c"\0A\00"
@const_60 = constant [2 x i8] c"\0A\00"
@const_61 = constant [2 x i8] c"\0A\00"
@const_62 = constant [2 x i8] c"\0A\00"
@const_63 = constant [2 x i8] c"\0A\00"
@const_64 = constant [2 x i8] c"\0A\00"
@const_65 = constant [2 x i8] c"\0A\00"
@const_66 = constant [30 x i8] c"porowniania doubli  < > <= >=\00"
@const_67 = constant [2 x i8] c"\0A\00"
@const_68 = constant [2 x i8] c"\0A\00"
@const_69 = constant [2 x i8] c"\0A\00"
@const_70 = constant [2 x i8] c"\0A\00"
@const_71 = constant [2 x i8] c"\0A\00"
@const_72 = constant [2 x i8] c"\0A\00"
@const_73 = constant [2 x i8] c"\0A\00"
@const_74 = constant [2 x i8] c"\0A\00"
@const_75 = constant [2 x i8] c"\0A\00"
@const_76 = constant [2 x i8] c"\0A\00"
@const_77 = constant [37 x i8] c"porowniania doubli i intow < > <= >=\00"
@const_78 = constant [2 x i8] c"\0A\00"
@const_79 = constant [2 x i8] c"\0A\00"
@const_80 = constant [2 x i8] c"\0A\00"
@const_81 = constant [2 x i8] c"\0A\00"
@const_82 = constant [2 x i8] c"\0A\00"
@const_83 = constant [2 x i8] c"\0A\00"
@const_84 = constant [2 x i8] c"\0A\00"
@const_85 = constant [2 x i8] c"\0A\00"
@const_86 = constant [2 x i8] c"\0A\00"
@const_87 = constant [2 x i8] c"\0A\00"
@const_88 = constant [52 x i8] c"porowniania doubli i intow < > <= >= w druga strone\00"
@const_89 = constant [2 x i8] c"\0A\00"
@const_90 = constant [2 x i8] c"\0A\00"
@const_91 = constant [2 x i8] c"\0A\00"
@const_92 = constant [2 x i8] c"\0A\00"
@const_93 = constant [2 x i8] c"\0A\00"
@const_94 = constant [2 x i8] c"\0A\00"
@const_95 = constant [2 x i8] c"\0A\00"
@const_96 = constant [2 x i8] c"\0A\00"
@const_97 = constant [2 x i8] c"\0A\00"
@const_98 = constant [2 x i8] c"\0A\00"
@const_99 = constant [39 x i8] c"porowniania doubli i intow == FALSZYWE\00"
@const_100 = constant [2 x i8] c"\0A\00"
@const_101 = constant [2 x i8] c"\0A\00"
@const_102 = constant [2 x i8] c"\0A\00"
@const_103 = constant [2 x i8] c"\0A\00"
@const_104 = constant [2 x i8] c"\0A\00"
@const_105 = constant [2 x i8] c"\0A\00"
@const_106 = constant [40 x i8] c"porowniania doubli i intow == PRAWDZIWE\00"
@const_107 = constant [2 x i8] c"\0A\00"
@const_108 = constant [2 x i8] c"\0A\00"
@const_109 = constant [2 x i8] c"\0A\00"
@const_110 = constant [2 x i8] c"\0A\00"
@const_111 = constant [2 x i8] c"\0A\00"
@const_112 = constant [2 x i8] c"\0A\00"
@const_113 = constant [40 x i8] c"porowniania doubli i intow != PRAWDZIWE\00"
@const_114 = constant [2 x i8] c"\0A\00"
@const_115 = constant [2 x i8] c"\0A\00"
@const_116 = constant [2 x i8] c"\0A\00"
@const_117 = constant [2 x i8] c"\0A\00"
@const_118 = constant [2 x i8] c"\0A\00"
@const_119 = constant [2 x i8] c"\0A\00"
@const_120 = constant [39 x i8] c"porowniania doubli i intow != FALSZYWE\00"
@const_121 = constant [2 x i8] c"\0A\00"
@const_122 = constant [2 x i8] c"\0A\00"
@const_123 = constant [2 x i8] c"\0A\00"
@const_124 = constant [2 x i8] c"\0A\00"
@const_125 = constant [2 x i8] c"\0A\00"
@const_126 = constant [2 x i8] c"\0A\00"
@const_127 = constant [20 x i8] c"opearatory logiczne\00"
@const_128 = constant [2 x i8] c"\0A\00"
@const_129 = constant [2 x i8] c"\0A\00"
@const_130 = constant [2 x i8] c"\0A\00"
@const_131 = constant [2 x i8] c"\0A\00"
@const_132 = constant [2 x i8] c"\0A\00"
@const_133 = constant [2 x i8] c"\0A\00"
@const_134 = constant [2 x i8] c"\0A\00"
@const_135 = constant [2 x i8] c"\0A\00"
@const_136 = constant [2 x i8] c"\0A\00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
%ia = alloca i32
%ib = alloca i32
%da = alloca double
%db = alloca double
%ba = alloca i1
%bb = alloca i1
store i32 4, i32* %ia
store double 4.520000000, double* %da
store i1 1, i1* %ba
call i32 (i8*, ...) @printf(i8* bitcast ([13 x i8]* @const_1 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_2 to i8*))
%t_137 = load i32, i32* %ia
%t_138 = sub i32 0, %t_137
%t_139 = sub i32 0, %t_138
%t_140 = sub i32 0, %t_139
%t_141 = sub i32 0, %t_140
%t_142 = sub i32 0, %t_141
%t_143 = sub i32 0, %t_142
%t_144 = sub i32 0, %t_143
%t_145 = sub i32 0, %t_144
%t_146 = sub i32 0, %t_145
store i32 %t_146, i32* %ib
%t_147 = load double, double* %da
%t_148 = fsub double 0.0, %t_147
%t_149 = fsub double 0.0, %t_148
%t_150 = fsub double 0.0, %t_149
%t_151 = fsub double 0.0, %t_150
%t_152 = fsub double 0.0, %t_151
%t_153 = fsub double 0.0, %t_152
%t_154 = fsub double 0.0, %t_153
%t_155 = fsub double 0.0, %t_154
%t_156 = fsub double 0.0, %t_155
store double %t_156, double* %db
%t_157 = load i32, i32* %ib
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_157)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_3 to i8*))
%t_158 = load double, double* %db
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_158)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_4 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_5 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([15 x i8]* @const_6 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_7 to i8*))
%t_159 = load i32, i32* %ia
%t_160 = xor i32 %t_159, -1
%t_161 = xor i32 %t_160, -1
%t_162 = xor i32 %t_161, -1
%t_163 = xor i32 %t_162, -1
%t_164 = xor i32 %t_163, -1
%t_165 = xor i32 %t_164, -1
%t_166 = xor i32 %t_165, -1
%t_167 = xor i32 %t_166, -1
%t_168 = xor i32 %t_167, -1
store i32 %t_168, i32* %ib
%t_169 = load i32, i32* %ib
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_169)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_8 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_9 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([17 x i8]* @const_10 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_11 to i8*))
%t_170 = load i1, i1* %ba
%t_171 = xor i1 %t_170, 1
%t_172 = xor i1 %t_171, 1
%t_173 = xor i1 %t_172, 1
%t_174 = xor i1 %t_173, 1
%t_175 = xor i1 %t_174, 1
%t_176 = xor i1 %t_175, 1
%t_177 = xor i1 %t_176, 1
%t_178 = xor i1 %t_177, 1
%t_179 = xor i1 %t_178, 1
store i1 %t_179, i1* %bb
%t_180 = load i1, i1* %bb
br i1 %t_180, label %truelab_181, label %falselab_182
truelab_181:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_183
falselab_182:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_183
endlab_183:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_12 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_13 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([18 x i8]* @const_14 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_15 to i8*))
%t_184 = load i32, i32* %ia
store i32 %t_184, i32* %ib
%t_186 = load i32, i32* %ib
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_186)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_16 to i8*))
%t_187 = load double, double* %da
%t_188 = fptosi double %t_187 to i32
store i32 %t_188, i32* %ib
%t_189 = load i32, i32* %ib
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_189)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_17 to i8*))
%t_190 = load i1, i1* %ba
%t_191 = zext i1 %t_190 to i32
store i32 %t_191, i32* %ib
%t_192 = load i32, i32* %ib
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_192)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_18 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_19 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([21 x i8]* @const_20 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_21 to i8*))
%t_193 = load double, double* %da
store double %t_193, double* %db
%t_195 = load double, double* %db
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_195)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_22 to i8*))
%t_196 = load double, double* %da
store double %t_196, double* %db
%t_197 = load double, double* %db
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_197)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_23 to i8*))
%t_198 = load i32, i32* %ia
%t_199 = sitofp i32 %t_198 to double
store double %t_199, double* %db
%t_200 = load double, double* %db
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_200)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_24 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_25 to i8*))
store i32 3, i32* %ia
store i32 6, i32* %ib
store double 2.500000000, double* %da
store double 1.300000000, double* %db
call i32 (i8*, ...) @printf(i8* bitcast ([10 x i8]* @const_26 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_27 to i8*))
%t_201 = load i32, i32* %ia
%t_202 = load i32, i32* %ib
%t_203 = or i32 %t_201, %t_202
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_203)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_28 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([10 x i8]* @const_29 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_30 to i8*))
%t_204 = load i32, i32* %ia
%t_205 = load i32, i32* %ib
%t_206 = and i32 %t_204, %t_205
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_206)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_31 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_32 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([19 x i8]* @const_33 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_34 to i8*))
%t_207 = load i32, i32* %ia
%t_208 = load i32, i32* %ib
%t_209 = mul i32 %t_207, %t_208
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_209)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_35 to i8*))
%t_210 = load double, double* %da
%t_211 = load double, double* %db
%t_212 = fmul double %t_210, %t_211
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_212)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_36 to i8*))
%t_213 = load i32, i32* %ia
%t_214 = load i32, i32* %ib
%t_215 = sdiv i32 %t_213, %t_214
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_215)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_37 to i8*))
%t_216 = load double, double* %da
%t_217 = load double, double* %db
%t_218 = fdiv double %t_216, %t_217
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_218)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_38 to i8*))
%t_219 = load i32, i32* %ia
%t_220 = sitofp i32 %t_219 to double
%t_221 = load double, double* %db
%t_222 = fmul double %t_220, %t_221
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_222)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_39 to i8*))
%t_223 = load double, double* %da
%t_224 = load i32, i32* %ib
%t_225 = sitofp i32 %t_224 to double
%t_226 = fmul double %t_223, %t_225
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_226)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_40 to i8*))
%t_227 = load i32, i32* %ia
%t_228 = sitofp i32 %t_227 to double
%t_229 = load double, double* %db
%t_230 = fdiv double %t_228, %t_229
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_230)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_41 to i8*))
%t_231 = load double, double* %da
%t_232 = load i32, i32* %ib
%t_233 = sitofp i32 %t_232 to double
%t_234 = fdiv double %t_231, %t_233
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_234)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_42 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_43 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([21 x i8]* @const_44 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_45 to i8*))
%t_235 = load i32, i32* %ia
%t_236 = load i32, i32* %ib
%t_237 = add i32 %t_235, %t_236
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_237)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_46 to i8*))
%t_238 = load double, double* %da
%t_239 = load double, double* %db
%t_240 = fadd double %t_238, %t_239
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_240)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_47 to i8*))
%t_241 = load i32, i32* %ia
%t_242 = load i32, i32* %ib
%t_243 = sub i32 %t_241, %t_242
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t_243)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_48 to i8*))
%t_244 = load double, double* %da
%t_245 = load double, double* %db
%t_246 = fsub double %t_244, %t_245
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_246)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_49 to i8*))
%t_247 = load i32, i32* %ia
%t_248 = sitofp i32 %t_247 to double
%t_249 = load double, double* %db
%t_250 = fadd double %t_248, %t_249
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_250)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_50 to i8*))
%t_251 = load double, double* %da
%t_252 = load i32, i32* %ib
%t_253 = sitofp i32 %t_252 to double
%t_254 = fadd double %t_251, %t_253
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_254)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_51 to i8*))
%t_255 = load i32, i32* %ia
%t_256 = sitofp i32 %t_255 to double
%t_257 = load double, double* %db
%t_258 = fsub double %t_256, %t_257
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_258)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_52 to i8*))
%t_259 = load double, double* %da
%t_260 = load i32, i32* %ib
%t_261 = sitofp i32 %t_260 to double
%t_262 = fsub double %t_259, %t_261
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t_262)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_53 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_54 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([29 x i8]* @const_55 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_56 to i8*))
%t_263 = icmp slt i32 3, 6
br i1 %t_263, label %truelab_264, label %falselab_265
truelab_264:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_266
falselab_265:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_266
endlab_266:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_57 to i8*))
%t_267 = icmp sgt i32 3, 6
br i1 %t_267, label %truelab_268, label %falselab_269
truelab_268:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_270
falselab_269:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_270
endlab_270:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_58 to i8*))
%t_271 = icmp sle i32 3, 6
br i1 %t_271, label %truelab_272, label %falselab_273
truelab_272:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_274
falselab_273:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_274
endlab_274:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_59 to i8*))
%t_275 = icmp sge i32 3, 6
br i1 %t_275, label %truelab_276, label %falselab_277
truelab_276:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_278
falselab_277:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_278
endlab_278:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_60 to i8*))
%t_279 = load i32, i32* %ia
%t_280 = load i32, i32* %ib
%t_281 = icmp slt i32 %t_279, %t_280
br i1 %t_281, label %truelab_282, label %falselab_283
truelab_282:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_284
falselab_283:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_284
endlab_284:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_61 to i8*))
%t_285 = load i32, i32* %ia
%t_286 = load i32, i32* %ib
%t_287 = icmp sgt i32 %t_285, %t_286
br i1 %t_287, label %truelab_288, label %falselab_289
truelab_288:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_290
falselab_289:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_290
endlab_290:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_62 to i8*))
%t_291 = load i32, i32* %ia
%t_292 = load i32, i32* %ib
%t_293 = icmp sle i32 %t_291, %t_292
br i1 %t_293, label %truelab_294, label %falselab_295
truelab_294:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_296
falselab_295:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_296
endlab_296:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_63 to i8*))
%t_297 = load i32, i32* %ia
%t_298 = load i32, i32* %ib
%t_299 = icmp sge i32 %t_297, %t_298
br i1 %t_299, label %truelab_300, label %falselab_301
truelab_300:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_302
falselab_301:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_302
endlab_302:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_64 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_65 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([30 x i8]* @const_66 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_67 to i8*))
%t_303 = fcmp olt double 3.324000000, 6.324000000
br i1 %t_303, label %truelab_304, label %falselab_305
truelab_304:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_306
falselab_305:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_306
endlab_306:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_68 to i8*))
%t_307 = fcmp ogt double 3.324000000, 6.324000000
br i1 %t_307, label %truelab_308, label %falselab_309
truelab_308:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_310
falselab_309:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_310
endlab_310:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_69 to i8*))
%t_311 = fcmp ole double 3.324000000, 6.324000000
br i1 %t_311, label %truelab_312, label %falselab_313
truelab_312:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_314
falselab_313:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_314
endlab_314:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_70 to i8*))
%t_315 = fcmp oge double 3.324000000, 6.324000000
br i1 %t_315, label %truelab_316, label %falselab_317
truelab_316:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_318
falselab_317:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_318
endlab_318:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_71 to i8*))
%t_319 = load double, double* %da
%t_320 = load double, double* %db
%t_321 = fcmp olt double %t_319, %t_320
br i1 %t_321, label %truelab_322, label %falselab_323
truelab_322:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_324
falselab_323:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_324
endlab_324:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_72 to i8*))
%t_325 = load double, double* %da
%t_326 = load double, double* %db
%t_327 = fcmp ogt double %t_325, %t_326
br i1 %t_327, label %truelab_328, label %falselab_329
truelab_328:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_330
falselab_329:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_330
endlab_330:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_73 to i8*))
%t_331 = load double, double* %da
%t_332 = load double, double* %db
%t_333 = fcmp ole double %t_331, %t_332
br i1 %t_333, label %truelab_334, label %falselab_335
truelab_334:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_336
falselab_335:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_336
endlab_336:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_74 to i8*))
%t_337 = load double, double* %da
%t_338 = load double, double* %db
%t_339 = fcmp oge double %t_337, %t_338
br i1 %t_339, label %truelab_340, label %falselab_341
truelab_340:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_342
falselab_341:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_342
endlab_342:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_75 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_76 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([37 x i8]* @const_77 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_78 to i8*))
%t_343 = sitofp i32 6 to double
%t_344 = fcmp olt double 3.000000000, %t_343
br i1 %t_344, label %truelab_345, label %falselab_346
truelab_345:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_347
falselab_346:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_347
endlab_347:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_79 to i8*))
%t_348 = sitofp i32 3 to double
%t_349 = fcmp ogt double %t_348, 6.000000000
br i1 %t_349, label %truelab_350, label %falselab_351
truelab_350:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_352
falselab_351:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_352
endlab_352:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_80 to i8*))
%t_353 = sitofp i32 6 to double
%t_354 = fcmp ole double 3.000000000, %t_353
br i1 %t_354, label %truelab_355, label %falselab_356
truelab_355:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_357
falselab_356:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_357
endlab_357:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_81 to i8*))
%t_358 = sitofp i32 3 to double
%t_359 = fcmp oge double %t_358, 6.000000000
br i1 %t_359, label %truelab_360, label %falselab_361
truelab_360:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_362
falselab_361:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_362
endlab_362:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_82 to i8*))
%t_363 = load i32, i32* %ia
%t_364 = sitofp i32 %t_363 to double
%t_365 = load double, double* %db
%t_366 = fcmp olt double %t_364, %t_365
br i1 %t_366, label %truelab_367, label %falselab_368
truelab_367:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_369
falselab_368:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_369
endlab_369:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_83 to i8*))
%t_370 = load double, double* %da
%t_371 = load i32, i32* %ib
%t_372 = sitofp i32 %t_371 to double
%t_373 = fcmp ogt double %t_370, %t_372
br i1 %t_373, label %truelab_374, label %falselab_375
truelab_374:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_376
falselab_375:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_376
endlab_376:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_84 to i8*))
%t_377 = load i32, i32* %ia
%t_378 = sitofp i32 %t_377 to double
%t_379 = load double, double* %db
%t_380 = fcmp ole double %t_378, %t_379
br i1 %t_380, label %truelab_381, label %falselab_382
truelab_381:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_383
falselab_382:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_383
endlab_383:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_85 to i8*))
%t_384 = load double, double* %da
%t_385 = load i32, i32* %ib
%t_386 = sitofp i32 %t_385 to double
%t_387 = fcmp oge double %t_384, %t_386
br i1 %t_387, label %truelab_388, label %falselab_389
truelab_388:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_390
falselab_389:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_390
endlab_390:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_86 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_87 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([52 x i8]* @const_88 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_89 to i8*))
%t_391 = sitofp i32 6 to double
%t_392 = fcmp ogt double 3.000000000, %t_391
br i1 %t_392, label %truelab_393, label %falselab_394
truelab_393:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_395
falselab_394:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_395
endlab_395:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_90 to i8*))
%t_396 = sitofp i32 3 to double
%t_397 = fcmp olt double %t_396, 6.000000000
br i1 %t_397, label %truelab_398, label %falselab_399
truelab_398:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_400
falselab_399:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_400
endlab_400:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_91 to i8*))
%t_401 = sitofp i32 6 to double
%t_402 = fcmp oge double 3.000000000, %t_401
br i1 %t_402, label %truelab_403, label %falselab_404
truelab_403:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_405
falselab_404:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_405
endlab_405:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_92 to i8*))
%t_406 = sitofp i32 3 to double
%t_407 = fcmp ole double %t_406, 6.000000000
br i1 %t_407, label %truelab_408, label %falselab_409
truelab_408:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_410
falselab_409:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_410
endlab_410:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_93 to i8*))
%t_411 = load i32, i32* %ia
%t_412 = sitofp i32 %t_411 to double
%t_413 = load double, double* %db
%t_414 = fcmp ogt double %t_412, %t_413
br i1 %t_414, label %truelab_415, label %falselab_416
truelab_415:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_417
falselab_416:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_417
endlab_417:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_94 to i8*))
%t_418 = load double, double* %da
%t_419 = load i32, i32* %ib
%t_420 = sitofp i32 %t_419 to double
%t_421 = fcmp olt double %t_418, %t_420
br i1 %t_421, label %truelab_422, label %falselab_423
truelab_422:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_424
falselab_423:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_424
endlab_424:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_95 to i8*))
%t_425 = load i32, i32* %ia
%t_426 = sitofp i32 %t_425 to double
%t_427 = load double, double* %db
%t_428 = fcmp oge double %t_426, %t_427
br i1 %t_428, label %truelab_429, label %falselab_430
truelab_429:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_431
falselab_430:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_431
endlab_431:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_96 to i8*))
%t_432 = load double, double* %da
%t_433 = load i32, i32* %ib
%t_434 = sitofp i32 %t_433 to double
%t_435 = fcmp ole double %t_432, %t_434
br i1 %t_435, label %truelab_436, label %falselab_437
truelab_436:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_438
falselab_437:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_438
endlab_438:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_97 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_98 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([39 x i8]* @const_99 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_100 to i8*))
store i32 3, i32* %ia
store i32 4, i32* %ib
store double 3.600000000, double* %da
store double 1.200000000, double* %db
%t_439 = load i32, i32* %ia
%t_440 = load i32, i32* %ib
%t_441 = icmp eq i32 %t_439, %t_440
br i1 %t_441, label %truelab_442, label %falselab_443
truelab_442:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_444
falselab_443:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_444
endlab_444:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_101 to i8*))
%t_445 = load double, double* %da
%t_446 = load double, double* %db
%t_447 = fcmp oeq double %t_445, %t_446
br i1 %t_447, label %truelab_448, label %falselab_449
truelab_448:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_450
falselab_449:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_450
endlab_450:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_102 to i8*))
%t_451 = load i32, i32* %ia
%t_452 = sitofp i32 %t_451 to double
%t_453 = load double, double* %db
%t_454 = fcmp oeq double %t_452, %t_453
br i1 %t_454, label %truelab_455, label %falselab_456
truelab_455:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_457
falselab_456:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_457
endlab_457:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_103 to i8*))
%t_458 = load double, double* %da
%t_459 = load i32, i32* %ib
%t_460 = sitofp i32 %t_459 to double
%t_461 = fcmp oeq double %t_458, %t_460
br i1 %t_461, label %truelab_462, label %falselab_463
truelab_462:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_464
falselab_463:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_464
endlab_464:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_104 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_105 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([40 x i8]* @const_106 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_107 to i8*))
store i32 3, i32* %ia
store i32 3, i32* %ib
store double 3.000000000, double* %da
store double 3.000000000, double* %db
%t_465 = load i32, i32* %ia
%t_466 = load i32, i32* %ib
%t_467 = icmp eq i32 %t_465, %t_466
br i1 %t_467, label %truelab_468, label %falselab_469
truelab_468:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_470
falselab_469:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_470
endlab_470:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_108 to i8*))
%t_471 = load double, double* %da
%t_472 = load double, double* %db
%t_473 = fcmp oeq double %t_471, %t_472
br i1 %t_473, label %truelab_474, label %falselab_475
truelab_474:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_476
falselab_475:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_476
endlab_476:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_109 to i8*))
%t_477 = load i32, i32* %ia
%t_478 = sitofp i32 %t_477 to double
%t_479 = load double, double* %db
%t_480 = fcmp oeq double %t_478, %t_479
br i1 %t_480, label %truelab_481, label %falselab_482
truelab_481:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_483
falselab_482:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_483
endlab_483:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_110 to i8*))
%t_484 = load double, double* %da
%t_485 = load i32, i32* %ib
%t_486 = sitofp i32 %t_485 to double
%t_487 = fcmp oeq double %t_484, %t_486
br i1 %t_487, label %truelab_488, label %falselab_489
truelab_488:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_490
falselab_489:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_490
endlab_490:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_111 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_112 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([40 x i8]* @const_113 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_114 to i8*))
store i32 3, i32* %ia
store i32 4, i32* %ib
store double 3.600000000, double* %da
store double 1.200000000, double* %db
%t_491 = load i32, i32* %ia
%t_492 = load i32, i32* %ib
%t_493 = icmp ne i32 %t_491, %t_492
br i1 %t_493, label %truelab_494, label %falselab_495
truelab_494:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_496
falselab_495:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_496
endlab_496:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_115 to i8*))
%t_497 = load double, double* %da
%t_498 = load double, double* %db
%t_499 = fcmp one double %t_497, %t_498
br i1 %t_499, label %truelab_500, label %falselab_501
truelab_500:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_502
falselab_501:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_502
endlab_502:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_116 to i8*))
%t_503 = load i32, i32* %ia
%t_504 = sitofp i32 %t_503 to double
%t_505 = load double, double* %db
%t_506 = fcmp one double %t_504, %t_505
br i1 %t_506, label %truelab_507, label %falselab_508
truelab_507:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_509
falselab_508:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_509
endlab_509:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_117 to i8*))
%t_510 = load double, double* %da
%t_511 = load i32, i32* %ib
%t_512 = sitofp i32 %t_511 to double
%t_513 = fcmp one double %t_510, %t_512
br i1 %t_513, label %truelab_514, label %falselab_515
truelab_514:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_516
falselab_515:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_516
endlab_516:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_118 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_119 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([39 x i8]* @const_120 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_121 to i8*))
store i32 3, i32* %ia
store i32 3, i32* %ib
store double 3.000000000, double* %da
store double 3.000000000, double* %db
%t_517 = load i32, i32* %ia
%t_518 = load i32, i32* %ib
%t_519 = icmp ne i32 %t_517, %t_518
br i1 %t_519, label %truelab_520, label %falselab_521
truelab_520:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_522
falselab_521:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_522
endlab_522:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_122 to i8*))
%t_523 = load double, double* %da
%t_524 = load double, double* %db
%t_525 = fcmp one double %t_523, %t_524
br i1 %t_525, label %truelab_526, label %falselab_527
truelab_526:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_528
falselab_527:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_528
endlab_528:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_123 to i8*))
%t_529 = load i32, i32* %ia
%t_530 = sitofp i32 %t_529 to double
%t_531 = load double, double* %db
%t_532 = fcmp one double %t_530, %t_531
br i1 %t_532, label %truelab_533, label %falselab_534
truelab_533:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_535
falselab_534:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_535
endlab_535:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_124 to i8*))
%t_536 = load double, double* %da
%t_537 = load i32, i32* %ib
%t_538 = sitofp i32 %t_537 to double
%t_539 = fcmp one double %t_536, %t_538
br i1 %t_539, label %truelab_540, label %falselab_541
truelab_540:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_542
falselab_541:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_542
endlab_542:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_125 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_126 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([20 x i8]* @const_127 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_128 to i8*))
store i1 0, i1* %ba
store i1 1, i1* %bb
%t_544 = load i1, i1* %ba
br label %left_finishlab_545
left_finishlab_545:
br i1 %t_544, label %end_lablab_548, label %right_startlab_546
right_startlab_546:
%t_549 = load i1, i1* %bb
br label %right_finishlab_547
right_finishlab_547:
br label %end_lablab_548
end_lablab_548:
%t_543 = phi i1 [%t_544, %left_finishlab_545], [%t_549, %right_finishlab_547]
br i1 %t_543, label %truelab_550, label %falselab_551
truelab_550:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_552
falselab_551:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_552
endlab_552:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_129 to i8*))
%t_554 = load i1, i1* %ba
br label %left_finishlab_555
left_finishlab_555:
br i1 %t_554, label %right_startlab_556, label %end_lablab_558
right_startlab_556:
%t_559 = load i1, i1* %bb
br label %right_finishlab_557
right_finishlab_557:
br label %end_lablab_558
end_lablab_558:
%t_553 = phi i1 [%t_554, %left_finishlab_555], [%t_559, %right_finishlab_557]
br i1 %t_553, label %truelab_560, label %falselab_561
truelab_560:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_562
falselab_561:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_562
endlab_562:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_130 to i8*))
store i1 1, i1* %ba
store i1 0, i1* %bb
%t_564 = load i1, i1* %ba
br label %left_finishlab_565
left_finishlab_565:
br i1 %t_564, label %end_lablab_568, label %right_startlab_566
right_startlab_566:
%t_569 = load i1, i1* %bb
br label %right_finishlab_567
right_finishlab_567:
br label %end_lablab_568
end_lablab_568:
%t_563 = phi i1 [%t_564, %left_finishlab_565], [%t_569, %right_finishlab_567]
br i1 %t_563, label %truelab_570, label %falselab_571
truelab_570:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_572
falselab_571:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_572
endlab_572:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_131 to i8*))
%t_574 = load i1, i1* %ba
br label %left_finishlab_575
left_finishlab_575:
br i1 %t_574, label %right_startlab_576, label %end_lablab_578
right_startlab_576:
%t_579 = load i1, i1* %bb
br label %right_finishlab_577
right_finishlab_577:
br label %end_lablab_578
end_lablab_578:
%t_573 = phi i1 [%t_574, %left_finishlab_575], [%t_579, %right_finishlab_577]
br i1 %t_573, label %truelab_580, label %falselab_581
truelab_580:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_582
falselab_581:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_582
endlab_582:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_132 to i8*))
store i1 1, i1* %ba
store i1 1, i1* %bb
%t_584 = load i1, i1* %ba
br label %left_finishlab_585
left_finishlab_585:
br i1 %t_584, label %end_lablab_588, label %right_startlab_586
right_startlab_586:
%t_589 = load i1, i1* %bb
br label %right_finishlab_587
right_finishlab_587:
br label %end_lablab_588
end_lablab_588:
%t_583 = phi i1 [%t_584, %left_finishlab_585], [%t_589, %right_finishlab_587]
br i1 %t_583, label %truelab_590, label %falselab_591
truelab_590:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_592
falselab_591:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_592
endlab_592:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_133 to i8*))
%t_594 = load i1, i1* %ba
br label %left_finishlab_595
left_finishlab_595:
br i1 %t_594, label %right_startlab_596, label %end_lablab_598
right_startlab_596:
%t_599 = load i1, i1* %bb
br label %right_finishlab_597
right_finishlab_597:
br label %end_lablab_598
end_lablab_598:
%t_593 = phi i1 [%t_594, %left_finishlab_595], [%t_599, %right_finishlab_597]
br i1 %t_593, label %truelab_600, label %falselab_601
truelab_600:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_602
falselab_601:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_602
endlab_602:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_134 to i8*))
store i1 0, i1* %ba
store i1 0, i1* %bb
%t_604 = load i1, i1* %ba
br label %left_finishlab_605
left_finishlab_605:
br i1 %t_604, label %end_lablab_608, label %right_startlab_606
right_startlab_606:
%t_609 = load i1, i1* %bb
br label %right_finishlab_607
right_finishlab_607:
br label %end_lablab_608
end_lablab_608:
%t_603 = phi i1 [%t_604, %left_finishlab_605], [%t_609, %right_finishlab_607]
br i1 %t_603, label %truelab_610, label %falselab_611
truelab_610:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_612
falselab_611:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_612
endlab_612:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_135 to i8*))
%t_614 = load i1, i1* %ba
br label %left_finishlab_615
left_finishlab_615:
br i1 %t_614, label %right_startlab_616, label %end_lablab_618
right_startlab_616:
%t_619 = load i1, i1* %bb
br label %right_finishlab_617
right_finishlab_617:
br label %end_lablab_618
end_lablab_618:
%t_613 = phi i1 [%t_614, %left_finishlab_615], [%t_619, %right_finishlab_617]
br i1 %t_613, label %truelab_620, label %falselab_621
truelab_620:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))
br label %endlab_622
falselab_621:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))
br label %endlab_622
endlab_622:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_136 to i8*))
ret i32 0
}
