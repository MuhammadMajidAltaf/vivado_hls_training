; ModuleID = 'C:/training/hls/labs/hlx_flow/KC705/fir/fir_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@shift_reg = internal unnamed_addr global [11 x i32] zeroinitializer, align 16
@fir_str = internal unnamed_addr constant [4 x i8] c"fir\00"
@c = internal unnamed_addr constant [11 x i7] [i7 0, i7 -10, i7 -9, i7 23, i7 56, i7 63, i7 56, i7 23, i7 -9, i7 -10, i7 0]
@p_str3 = private unnamed_addr constant [17 x i8] c"Shift_Accum_Loop\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [7 x i8] c"fir_io\00", align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @fir(i32* %y, i32 %x) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %y) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %x) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fir_str) nounwind
  %x_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %x) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %y, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %x, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %5, %0
  %acc = phi i32 [ 0, %0 ], [ %acc_1, %5 ]
  %i = phi i5 [ 10, %0 ], [ %i_1, %5 ]
  %i_cast = sext i5 %i to i32
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11) nounwind
  br i1 %tmp, label %6, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str3) nounwind
  %tmp_1 = icmp eq i5 %i, 0
  br i1 %tmp_1, label %3, label %4

; <label>:3                                       ; preds = %2
  store i32 %x_read, i32* getelementptr inbounds ([11 x i32]* @shift_reg, i64 0, i64 0), align 16
  br label %5

; <label>:4                                       ; preds = %2
  %tmp_2 = add i5 %i, -1
  %tmp_3 = zext i5 %tmp_2 to i64
  %shift_reg_addr = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp_3
  %shift_reg_load = load i32* %shift_reg_addr, align 4
  %tmp_4 = zext i32 %i_cast to i64
  %shift_reg_addr_1 = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp_4
  store i32 %shift_reg_load, i32* %shift_reg_addr_1, align 4
  %c_addr = getelementptr [11 x i7]* @c, i64 0, i64 %tmp_4
  %c_load = load i7* %c_addr, align 1
  %c_load_cast = sext i7 %c_load to i32
  %tmp_5 = mul nsw i32 %shift_reg_load, %c_load_cast
  br label %5

; <label>:5                                       ; preds = %4, %3
  %p_pn = phi i32 [ 0, %3 ], [ %tmp_5, %4 ]
  %acc_1 = add nsw i32 %p_pn, %acc
  %i_1 = add i5 %i, -1
  br label %1

; <label>:6                                       ; preds = %1
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %y, i32 %acc) nounwind
  ret void
}

define weak void @_ssdm_op_Write.s_axilite.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5
  %empty_2 = shl i5 1, %empty
  %empty_3 = and i5 %0, %empty_2
  %empty_4 = icmp ne i5 %empty_3, 0
  ret i1 %empty_4
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"y", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"x", metadata !10, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 0, i32 0}
