; ModuleID = 'C:/training/hls/labs/hlx_flow/KC705/fir/fir_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@shift_reg = internal unnamed_addr global [11 x i32] zeroinitializer, align 16 ; [#uses=3 type=[11 x i32]*]
@fir_str = internal unnamed_addr constant [4 x i8] c"fir\00" ; [#uses=1 type=[4 x i8]*]
@c = internal unnamed_addr constant [11 x i7] [i7 0, i7 -10, i7 -9, i7 23, i7 56, i7 63, i7 56, i7 23, i7 -9, i7 -10, i7 0] ; [#uses=1 type=[11 x i7]*]
@p_str3 = private unnamed_addr constant [17 x i8] c"Shift_Accum_Loop\00", align 1 ; [#uses=1 type=[17 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=9 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [7 x i8] c"fir_io\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=3 type=[10 x i8]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fir(i32* %y, i32 %x) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %y) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %x) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fir_str) nounwind
  %x_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %x) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %x_read}, i64 0, metadata !12), !dbg !22 ; [debug line = 5:10] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !23), !dbg !24 ; [debug line = 4:11] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !12), !dbg !22 ; [debug line = 5:10] [debug variable = x]
  call void (...)* @_ssdm_op_SpecInterface(i32* %y, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !25 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !25 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %x, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !25 ; [debug line = 7:1]
  br label %1, !dbg !27                           ; [debug line = 14:26]

; <label>:1                                       ; preds = %5, %0
  %acc = phi i32 [ 0, %0 ], [ %acc_1, %5 ]        ; [#uses=2 type=i32]
  %i = phi i5 [ 10, %0 ], [ %i_1, %5 ]            ; [#uses=5 type=i5]
  %i_cast = sext i5 %i to i32, !dbg !27           ; [#uses=1 type=i32] [debug line = 14:26]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !27 ; [#uses=1 type=i1] [debug line = 14:26]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %6, label %2, !dbg !27        ; [debug line = 14:26]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str3) nounwind, !dbg !29 ; [debug line = 14:45]
  %tmp_1 = icmp eq i5 %i, 0, !dbg !31             ; [#uses=1 type=i1] [debug line = 15:6]
  br i1 %tmp_1, label %3, label %4, !dbg !31      ; [debug line = 15:6]

; <label>:3                                       ; preds = %2
  store i32 %x_read, i32* getelementptr inbounds ([11 x i32]* @shift_reg, i64 0, i64 0), align 16, !dbg !32 ; [debug line = 17:8]
  br label %5, !dbg !34                           ; [debug line = 18:6]

; <label>:4                                       ; preds = %2
  %tmp_2 = add i5 %i, -1, !dbg !35                ; [#uses=1 type=i5] [debug line = 19:4]
  %tmp_3 = zext i5 %tmp_2 to i64, !dbg !35        ; [#uses=1 type=i64] [debug line = 19:4]
  %shift_reg_addr = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp_3, !dbg !35 ; [#uses=1 type=i32*] [debug line = 19:4]
  %shift_reg_load = load i32* %shift_reg_addr, align 4, !dbg !35 ; [#uses=2 type=i32] [debug line = 19:4]
  %tmp_4 = zext i32 %i_cast to i64, !dbg !35      ; [#uses=2 type=i64] [debug line = 19:4]
  %shift_reg_addr_1 = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp_4, !dbg !35 ; [#uses=1 type=i32*] [debug line = 19:4]
  store i32 %shift_reg_load, i32* %shift_reg_addr_1, align 4, !dbg !35 ; [debug line = 19:4]
  %c_addr = getelementptr [11 x i7]* @c, i64 0, i64 %tmp_4, !dbg !37 ; [#uses=1 type=i7*] [debug line = 20:4]
  %c_load = load i7* %c_addr, align 1, !dbg !37   ; [#uses=1 type=i7] [debug line = 20:4]
  %c_load_cast = sext i7 %c_load to i32, !dbg !37 ; [#uses=1 type=i32] [debug line = 20:4]
  %tmp_5 = mul nsw i32 %shift_reg_load, %c_load_cast, !dbg !37 ; [#uses=1 type=i32] [debug line = 20:4]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %p_pn = phi i32 [ 0, %3 ], [ %tmp_5, %4 ]       ; [#uses=1 type=i32]
  %acc_1 = add nsw i32 %p_pn, %acc, !dbg !38      ; [#uses=1 type=i32] [debug line = 16:8]
  call void @llvm.dbg.value(metadata !{i32 %acc_1}, i64 0, metadata !39), !dbg !38 ; [debug line = 16:8] [debug variable = acc]
  %i_1 = add i5 %i, -1, !dbg !41                  ; [#uses=1 type=i5] [debug line = 14:39]
  call void @llvm.dbg.value(metadata !{i5 %i_1}, i64 0, metadata !42), !dbg !41 ; [debug line = 14:39] [debug variable = i]
  br label %1, !dbg !41                           ; [debug line = 14:39]

; <label>:6                                       ; preds = %1
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %y, i32 %acc) nounwind, !dbg !43 ; [debug line = 23:3]
  ret void, !dbg !44                              ; [debug line = 24:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.s_axilite.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
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

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5                     ; [#uses=1 type=i5]
  %empty_2 = shl i5 1, %empty                     ; [#uses=1 type=i5]
  %empty_3 = and i5 %0, %empty_2                  ; [#uses=1 type=i5]
  %empty_4 = icmp ne i5 %empty_3, 0               ; [#uses=1 type=i1]
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
!12 = metadata !{i32 786689, metadata !13, metadata !"x", metadata !14, i32 33554437, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 786478, i32 0, metadata !14, metadata !"fir", metadata !"fir", metadata !"", metadata !14, i32 3, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32)* @fir, null, null, metadata !20, i32 6} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786473, metadata !"fir.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Chlx_flow\5CKC705\5Cfir", null} ; [ DW_TAG_file_type ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !17, metadata !18}
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786454, null, metadata !"data_t", metadata !14, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 5, i32 10, metadata !13, null}
!23 = metadata !{i32 786689, metadata !13, metadata !"y", metadata !14, i32 16777220, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 4, i32 11, metadata !13, null}
!25 = metadata !{i32 7, i32 1, metadata !26, null}
!26 = metadata !{i32 786443, metadata !13, i32 6, i32 5, metadata !14, i32 0} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 14, i32 26, metadata !28, null}
!28 = metadata !{i32 786443, metadata !26, i32 14, i32 21, metadata !14, i32 1} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 14, i32 45, metadata !30, null}
!30 = metadata !{i32 786443, metadata !28, i32 14, i32 44, metadata !14, i32 2} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 15, i32 6, metadata !30, null}
!32 = metadata !{i32 17, i32 8, metadata !33, null}
!33 = metadata !{i32 786443, metadata !30, i32 15, i32 16, metadata !14, i32 3} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 18, i32 6, metadata !33, null}
!35 = metadata !{i32 19, i32 4, metadata !36, null}
!36 = metadata !{i32 786443, metadata !30, i32 18, i32 13, metadata !14, i32 4} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 20, i32 4, metadata !36, null}
!38 = metadata !{i32 16, i32 8, metadata !33, null}
!39 = metadata !{i32 786688, metadata !26, metadata !"acc", metadata !14, i32 10, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 786454, null, metadata !"acc_t", metadata !14, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!41 = metadata !{i32 14, i32 39, metadata !28, null}
!42 = metadata !{i32 786688, metadata !26, metadata !"i", metadata !14, i32 11, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 23, i32 3, metadata !26, null}
!44 = metadata !{i32 24, i32 1, metadata !26, null}
