; prolog
@int_res = constant [3 x i8] c"%d\00"
@int_res_hex = constant [5 x i8] c"0X%X\00"
@double_res = constant [4 x i8] c"%lf\00"
@bool_res_true = constant [5 x i8] c"True\00"
@bool_res_false = constant [6 x i8] c"False\00"
@int_read = constant [3 x i8] c"%d\00"
@int_hex_read = constant [3 x i8] c"%x\00"
@double_read = constant [4 x i8] c"%lf\00"
@const_1 = constant [18 x i8] c"Instructions only\00"
@const_2 = constant [2 x i8] c"\0A\00"
@const_3 = constant [13 x i8] c"### 3 is > 3\00"
@const_4 = constant [17 x i8] c"### 3 is not < 3\00"
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)
define i32 @main()
{
call i32 (i8*, ...) @printf(i8* bitcast ([18 x i8]* @const_1 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @const_2 to i8*))
%t8 = icmp sgt i32 3, 3
br i1 %t8, label %truelab_5, label %falselab_6
truelab_5:
call i32 (i8*, ...) @printf(i8* bitcast ([13 x i8]* @const_3 to i8*))
br label %endlab_7
falselab_6:
call i32 (i8*, ...) @printf(i8* bitcast ([17 x i8]* @const_4 to i8*))
br label %endlab_7
endlab_7:
ret i32 0
}
