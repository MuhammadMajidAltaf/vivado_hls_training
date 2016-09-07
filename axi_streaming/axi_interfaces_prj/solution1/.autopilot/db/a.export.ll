; ModuleID = 'C:/training/Vivado_2016.1/hls/demos/axi_streaming/axi_interfaces_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@axi_interfaces_str = internal unnamed_addr constant [15 x i8] c"axi_interfaces\00"
@acc_7 = internal unnamed_addr global i32 0
@acc_6 = internal unnamed_addr global i32 0
@acc_5 = internal unnamed_addr global i32 0
@acc_4 = internal unnamed_addr global i32 0
@acc_3 = internal unnamed_addr global i32 0
@acc_2 = internal unnamed_addr global i32 0
@acc_1 = internal unnamed_addr global i32 0
@acc_0 = internal unnamed_addr global i32 0
@p_str4 = private unnamed_addr constant [9 x i8] c"For_Loop\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @axi_interfaces(i16* %d_o_0, i16* %d_o_1, i16* %d_o_2, i16* %d_o_3, i16* %d_o_4, i16* %d_o_5, i16* %d_o_6, i16* %d_o_7, i16* %d_i_0, i16* %d_i_1, i16* %d_i_2, i16* %d_i_3, i16* %d_i_4, i16* %d_i_5, i16* %d_i_6, i16* %d_i_7) {
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_0, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_1, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_2, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_3, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_4, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_5, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_6, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i_7, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_0, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_1, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_2, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_3, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_4, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_5, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_6, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_7, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  br label %rewind_header

; <label>:1                                       ; preds = %rewind_header, %rewind_init
  %i1_cast = zext i5 %i1 to i6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str4) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %acc_0_load = load i32* @acc_0, align 16
  %d_i_0_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_0)
  %tmp_2 = sext i16 %d_i_0_read to i32
  %tmp_3 = add nsw i32 %tmp_2, %acc_0_load
  store i32 %tmp_3, i32* @acc_0, align 16
  %tmp_1 = trunc i32 %tmp_3 to i16
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_0, i16 %tmp_1)
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str4, i32 %tmp) nounwind
  %acc_1_load = load i32* @acc_1, align 4
  %d_i_1_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_1)
  %tmp_2_1 = sext i16 %d_i_1_read to i32
  %tmp_3_1 = add nsw i32 %tmp_2_1, %acc_1_load
  store i32 %tmp_3_1, i32* @acc_1, align 4
  %tmp_4 = trunc i32 %tmp_3_1 to i16
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_1, i16 %tmp_4)
  %acc_2_load = load i32* @acc_2, align 8
  %d_i_2_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_2)
  %tmp_2_2 = sext i16 %d_i_2_read to i32
  %tmp_3_2 = add nsw i32 %tmp_2_2, %acc_2_load
  store i32 %tmp_3_2, i32* @acc_2, align 8
  %tmp_5 = trunc i32 %tmp_3_2 to i16
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_2, i16 %tmp_5)
  %acc_3_load = load i32* @acc_3, align 4
  %d_i_3_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_3)
  %tmp_2_3 = sext i16 %d_i_3_read to i32
  %tmp_3_3 = add nsw i32 %tmp_2_3, %acc_3_load
  store i32 %tmp_3_3, i32* @acc_3, align 4
  %tmp_6 = trunc i32 %tmp_3_3 to i16
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_3, i16 %tmp_6)
  %acc_4_load = load i32* @acc_4, align 16
  %d_i_4_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_4)
  %tmp_2_4 = sext i16 %d_i_4_read to i32
  %tmp_3_4 = add nsw i32 %tmp_2_4, %acc_4_load
  store i32 %tmp_3_4, i32* @acc_4, align 16
  %tmp_7 = trunc i32 %tmp_3_4 to i16
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_4, i16 %tmp_7)
  %acc_5_load = load i32* @acc_5, align 4
  %d_i_5_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_5)
  %tmp_2_5 = sext i16 %d_i_5_read to i32
  %tmp_3_5 = add nsw i32 %tmp_2_5, %acc_5_load
  store i32 %tmp_3_5, i32* @acc_5, align 4
  %tmp_8 = trunc i32 %tmp_3_5 to i16
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_5, i16 %tmp_8)
  %acc_6_load = load i32* @acc_6, align 8
  %d_i_6_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_6)
  %tmp_2_6 = sext i16 %d_i_6_read to i32
  %tmp_3_6 = add nsw i32 %tmp_2_6, %acc_6_load
  store i32 %tmp_3_6, i32* @acc_6, align 8
  %tmp_9 = trunc i32 %tmp_3_6 to i16
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_6, i16 %tmp_9)
  %acc_7_load = load i32* @acc_7, align 4
  %d_i_7_read = call i16 @_ssdm_op_Read.axis.volatile.i16P(i16* %d_i_7)
  %tmp_2_7 = sext i16 %d_i_7_read to i32
  %tmp_3_7 = add nsw i32 %tmp_2_7, %acc_7_load
  store i32 %tmp_3_7, i32* @acc_7, align 4
  %tmp_10 = trunc i32 %tmp_3_7 to i16
  call void @_ssdm_op_Write.axis.volatile.i16P(i16* %d_o_7, i16 %tmp_10)
  %i_1_7 = add i6 8, %i1_cast
  %tmp_11 = trunc i6 %i_1_7 to i5
  %exitcond = icmp eq i6 %i_1_7, -32
  br i1 %exitcond, label %2, label %rewind_header

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_Return()
  br label %rewind_header

rewind_init:                                      ; preds = %rewind_header
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_7), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_6), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_5), !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_4), !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_3), !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_2), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_1), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_0), !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_7), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_6), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_5), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_4), !map !60
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_3), !map !64
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_2), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_1), !map !72
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_0), !map !76
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @axi_interfaces_str) nounwind
  br label %1

rewind_header:                                    ; preds = %2, %1, %0
  %do_init = phi i1 [ true, %0 ], [ false, %1 ], [ true, %2 ]
  %i1 = phi i5 [ 0, %0 ], [ %tmp_11, %1 ], [ 0, %2 ]
  br i1 %do_init, label %rewind_init, label %1
}

define weak void @_ssdm_op_Write.axis.volatile.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
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

declare void @_ssdm_op_Return(...)

define weak i16 @_ssdm_op_Read.axis.volatile.i16P(i16*) {
entry:
  %empty = load i16* %0
  ret i16 %empty
}

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

declare void @_ssdm_SpecLoopRewind(...) nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 15, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"d_i", metadata !4, metadata !"short", i32 0, i32 15}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 7, i32 31, i32 8}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 15, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"d_i", metadata !10, metadata !"short", i32 0, i32 15}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 6, i32 30, i32 8}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 15, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"d_i", metadata !16, metadata !"short", i32 0, i32 15}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 5, i32 29, i32 8}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 15, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"d_i", metadata !22, metadata !"short", i32 0, i32 15}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 4, i32 28, i32 8}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 15, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"d_i", metadata !28, metadata !"short", i32 0, i32 15}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 3, i32 27, i32 8}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 15, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"d_i", metadata !34, metadata !"short", i32 0, i32 15}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 2, i32 26, i32 8}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 15, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"d_i", metadata !40, metadata !"short", i32 0, i32 15}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 1, i32 25, i32 8}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 15, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"d_i", metadata !46, metadata !"short", i32 0, i32 15}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 24, i32 8}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 15, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"d_o", metadata !4, metadata !"short", i32 0, i32 15}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 15, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"d_o", metadata !10, metadata !"short", i32 0, i32 15}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 15, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"d_o", metadata !16, metadata !"short", i32 0, i32 15}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 15, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"d_o", metadata !22, metadata !"short", i32 0, i32 15}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 15, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"d_o", metadata !28, metadata !"short", i32 0, i32 15}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 15, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"d_o", metadata !34, metadata !"short", i32 0, i32 15}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 15, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"d_o", metadata !40, metadata !"short", i32 0, i32 15}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 15, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"d_o", metadata !46, metadata !"short", i32 0, i32 15}
