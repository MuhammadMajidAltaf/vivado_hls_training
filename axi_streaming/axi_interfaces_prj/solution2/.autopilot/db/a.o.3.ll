; ModuleID = 'C:/training/Vivado_2016.1/hls/demos/axi_streaming/axi_interfaces_prj/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@axi_interfaces_str = internal unnamed_addr constant [15 x i8] c"axi_interfaces\00" ; [#uses=1 type=[15 x i8]*]
@acc = internal unnamed_addr global [8 x i32] zeroinitializer, align 16 ; [#uses=1 type=[8 x i32]*]
@p_str = private unnamed_addr constant [9 x i8] c"For_Loop\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @axi_interfaces([32 x i16]* %d_o, [32 x i16]* %d_i) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i16]* %d_o) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i16]* %d_i) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @axi_interfaces_str) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i16]* %d_o}, i64 0, metadata !10), !dbg !25 ; [debug line = 57:29] [debug variable = d_o]
  call void @llvm.dbg.value(metadata !{[32 x i16]* %d_i}, i64 0, metadata !26), !dbg !28 ; [debug line = 57:47] [debug variable = d_i]
  br label %1, !dbg !29                           ; [debug line = 64:17]

; <label>:1                                       ; preds = %2, %0
  %i = phi i6 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=4 type=i6]
  %rem = trunc i6 %i to i3, !dbg !29              ; [#uses=1 type=i3] [debug line = 64:17]
  %exitcond = icmp eq i6 %i, -32, !dbg !29        ; [#uses=1 type=i1] [debug line = 64:17]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %i_1 = add i6 1, %i, !dbg !32                   ; [#uses=1 type=i6] [debug line = 64:29]
  br i1 %exitcond, label %3, label %2, !dbg !29   ; [debug line = 64:17]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str) nounwind, !dbg !33 ; [debug line = 64:35]
  call void @llvm.dbg.value(metadata !{i3 %rem}, i64 0, metadata !35), !dbg !37 ; [debug line = 65:3] [debug variable = rem]
  %tmp = zext i3 %rem to i64, !dbg !38            ; [#uses=1 type=i64] [debug line = 66:3]
  %acc_addr = getelementptr inbounds [8 x i32]* @acc, i64 0, i64 %tmp, !dbg !38 ; [#uses=2 type=i32*] [debug line = 66:3]
  %acc_load = load i32* %acc_addr, align 4, !dbg !38 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_1 = zext i6 %i to i64, !dbg !38            ; [#uses=2 type=i64] [debug line = 66:3]
  %d_i_addr = getelementptr [32 x i16]* %d_i, i64 0, i64 %tmp_1, !dbg !38 ; [#uses=1 type=i16*] [debug line = 66:3]
  %d_i_load = load i16* %d_i_addr, align 2, !dbg !38 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp_2 = sext i16 %d_i_load to i32, !dbg !38    ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_3 = add nsw i32 %acc_load, %tmp_2, !dbg !38 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp_3, i32* %acc_addr, align 4, !dbg !38 ; [debug line = 66:3]
  %tmp_5 = trunc i32 %tmp_3 to i16, !dbg !39      ; [#uses=1 type=i16] [debug line = 67:3]
  %d_o_addr = getelementptr [32 x i16]* %d_o, i64 0, i64 %tmp_1, !dbg !39 ; [#uses=1 type=i16*] [debug line = 67:3]
  store i16 %tmp_5, i16* %d_o_addr, align 2, !dbg !39 ; [debug line = 67:3]
  call void @llvm.dbg.value(metadata !{i6 %i_1}, i64 0, metadata !40), !dbg !32 ; [debug line = 64:29] [debug variable = i]
  br label %1, !dbg !32                           ; [debug line = 64:29]

; <label>:3                                       ; preds = %1
  ret void, !dbg !41                              ; [debug line = 69:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 15, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"d_o", metadata !4, metadata !"short", i32 0, i32 15}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 31, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 15, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"d_i", metadata !4, metadata !"short", i32 0, i32 15}
!10 = metadata !{i32 786689, metadata !11, metadata !"d_o", null, i32 57, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!11 = metadata !{i32 786478, i32 0, metadata !12, metadata !"axi_interfaces", metadata !"axi_interfaces", metadata !"", metadata !12, i32 57, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 57} ; [ DW_TAG_subprogram ]
!12 = metadata !{i32 786473, metadata !"axi_interfaces.c", metadata !"C:\5Ctraining\5CVivado_2016.1\5Chls\5Cdemos\5Caxi_streaming", null} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !18}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"dout_t", metadata !12, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786454, null, metadata !"din_t", metadata !12, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !16, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 57, i32 29, metadata !11, null}
!26 = metadata !{i32 786689, metadata !11, metadata !"d_i", null, i32 57, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !19, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{i32 57, i32 47, metadata !11, null}
!29 = metadata !{i32 64, i32 17, metadata !30, null}
!30 = metadata !{i32 786443, metadata !31, i32 64, i32 12, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 786443, metadata !11, i32 57, i32 59, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 64, i32 29, metadata !30, null}
!33 = metadata !{i32 64, i32 35, metadata !34, null}
!34 = metadata !{i32 786443, metadata !30, i32 64, i32 34, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 786688, metadata !31, metadata !"rem", metadata !12, i32 58, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!37 = metadata !{i32 65, i32 3, metadata !34, null}
!38 = metadata !{i32 66, i32 3, metadata !34, null}
!39 = metadata !{i32 67, i32 3, metadata !34, null}
!40 = metadata !{i32 786688, metadata !31, metadata !"i", metadata !12, i32 58, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 69, i32 1, metadata !31, null}
