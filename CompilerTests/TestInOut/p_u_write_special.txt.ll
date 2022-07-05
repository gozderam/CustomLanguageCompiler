; prolog
@int_res = constant [3 x i8] c"%d\00"
@int_res_hex = constant [5 x i8] c"0X%X\00"
@double_res = constant [4 x i8] c"%lf\00"
@bool_res_true = constant [5 x i8] c"True\00"
@bool_res_false = constant [6 x i8] c"False\00"
@int_read = constant [3 x i8] c"%d\00"
@int_hex_read = constant [3 x i8] c"%x\00"
@double_read = constant [4 x i8] c"%lf\00"
@const_1 = constant [1 x i8] c"\00"
@const_2 = constant [2 x i8] c"\0A\00"
@const_3 = constant [2 x i8] c"\0A\00"
@const_4 = constant [2 x i8] c"\22\00"
@const_5 = constant [2 x i8] c"\0A\00"
@const_6 = constant [2 x i8] c"\\\00"
@const_7 = constant [2 x i8] c"\0A\00"
@const_8 = constant [3 x i8] c"\\\\\00"
@const_9 = constant [2 x i8] c"\0A\00"
@const_10 = constant [7 x i8] c"\\\\\22\0A\22\\\00"
@const_11 = constant [2 x i8] c"\0A\00"
@const_12 = constant [13 x i8] c"\\rw\\kd\\\\\22\0A\22\\\00"
@const_13 = constant [2 x i8] c"\0A\00"
@const_14 = constant [7 x i8] c"rwphkr\00"
@const_15 = constant [2 x i8] c"\0A\00"
@const_16 = constant [8 x i8] c"rwphkr\\\00"
@const_17 = constant [2 x i8] c"\0A\00"
@const_18 = constant [14 x i8] c"\\rwpikikihkr\\\00"
@const_19 = constant [2 x i8] c"\0A\00"
@const_20 = constant [5 x i8] c"aaaa\00"
@const_21 = constant [2 x i8] c"\0A\00"
@const_22 = constant [13 x i8] c"ala\0Ama\0Akota\0A\00"
@const_23 = constant [5 x i8] c"a\\na\00"
@const_24 = constant [2 x i8] c"\0A\00"
@const_25 = constant [13 x i8] c"aaar\\nasdasd\00"
@const_26 = constant [2 x i8] c"\0A\00"
@const_27 = constant [4 x i8] c"ss\\\00"
@const_28 = constant [2 x i8] c"\0A\00"
@const_29 = constant [6 x i8] c"ss\\\0Ak\00"
@const_30 = constant [2 x i8] c"\0A\00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
call i32 (i8*, ...) @printf(i8* bitcast ([1 x i8]* @const_1 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_2 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_3 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_4 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_5 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_6 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_7 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @const_8 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_9 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @const_10 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_11 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([13 x i8]* @const_12 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_13 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @const_14 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_15 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([8 x i8]* @const_16 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_17 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([14 x i8]* @const_18 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_19 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_20 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_21 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([13 x i8]* @const_22 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @const_23 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_24 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([13 x i8]* @const_25 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_26 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @const_27 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_28 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @const_29 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_30 to i8*))
ret i32 0
}
