; ModuleID = 'C:/training/hls/labs/hlx_flow/KC705/fir/fir_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@shift_reg = internal unnamed_addr global [11 x i32] zeroinitializer, align 16 ; [#uses=3 type=[11 x i32]*]
@fir.str = internal unnamed_addr constant [4 x i8] c"fir\00" ; [#uses=1 type=[4 x i8]*]
@c = internal unnamed_addr constant [11 x i7] [i7 0, i7 -10, i7 -9, i7 23, i7 56, i7 63, i7 56, i7 23, i7 -9, i7 -10, i7 0] ; [#uses=1 type=[11 x i7]*]
@.str3 = private unnamed_addr constant [17 x i8] c"Shift_Accum_Loop\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=9 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [7 x i8] c"fir_io\00", align 1 ; [#uses=3 type=[7 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=3 type=[10 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @fir(i32* %y, i32 %x) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %y) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %x) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fir.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !33), !dbg !34 ; [debug line = 4:11] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !35), !dbg !36 ; [debug line = 5:10] [debug variable = x]
  call void (...)* @_ssdm_op_SpecInterface(i32* %y, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind, !dbg !37 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind, !dbg !37 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %x, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [7 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2) nounwind, !dbg !37 ; [debug line = 7:1]
  br label %1, !dbg !39                           ; [debug line = 14:26]

; <label>:1                                       ; preds = %6, %0
  %acc = phi i32 [ 0, %0 ], [ %acc.1, %6 ]        ; [#uses=2 type=i32]
  %i = phi i5 [ 10, %0 ], [ %i.1, %6 ]            ; [#uses=5 type=i5]
  %i.cast = sext i5 %i to i32, !dbg !39           ; [#uses=1 type=i32] [debug line = 14:26]
  %tmp = icmp sgt i5 %i, -1, !dbg !39             ; [#uses=1 type=i1] [debug line = 14:26]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %7, !dbg !39        ; [debug line = 14:26]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str3) nounwind, !dbg !41 ; [debug line = 14:45]
  %tmp.1 = icmp eq i5 %i, 0, !dbg !43             ; [#uses=1 type=i1] [debug line = 15:6]
  br i1 %tmp.1, label %4, label %5, !dbg !43      ; [debug line = 15:6]

; <label>:4                                       ; preds = %3
  store i32 %x, i32* getelementptr inbounds ([11 x i32]* @shift_reg, i64 0, i64 0), align 16, !dbg !44 ; [debug line = 17:8]
  br label %6, !dbg !46                           ; [debug line = 18:6]

; <label>:5                                       ; preds = %3
  %tmp.2 = add i5 %i, -1, !dbg !47                ; [#uses=1 type=i5] [debug line = 19:4]
  %tmp.3 = zext i5 %tmp.2 to i64, !dbg !47        ; [#uses=1 type=i64] [debug line = 19:4]
  %shift_reg.addr = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp.3, !dbg !47 ; [#uses=1 type=i32*] [debug line = 19:4]
  %shift_reg.load = load i32* %shift_reg.addr, align 4, !dbg !47 ; [#uses=2 type=i32] [debug line = 19:4]
  %tmp.4 = zext i32 %i.cast to i64, !dbg !47      ; [#uses=2 type=i64] [debug line = 19:4]
  %shift_reg.addr.1 = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp.4, !dbg !47 ; [#uses=1 type=i32*] [debug line = 19:4]
  store i32 %shift_reg.load, i32* %shift_reg.addr.1, align 4, !dbg !47 ; [debug line = 19:4]
  %c.addr = getelementptr [11 x i7]* @c, i64 0, i64 %tmp.4, !dbg !49 ; [#uses=1 type=i7*] [debug line = 20:4]
  %c.load = load i7* %c.addr, align 1, !dbg !49   ; [#uses=1 type=i7] [debug line = 20:4]
  %c.load.cast = sext i7 %c.load to i32, !dbg !49 ; [#uses=1 type=i32] [debug line = 20:4]
  %tmp.5 = mul nsw i32 %c.load.cast, %shift_reg.load, !dbg !49 ; [#uses=1 type=i32] [debug line = 20:4]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %.pn = phi i32 [ 0, %4 ], [ %tmp.5, %5 ]        ; [#uses=1 type=i32]
  %acc.1 = add nsw i32 %acc, %.pn, !dbg !50       ; [#uses=1 type=i32] [debug line = 16:8]
  call void @llvm.dbg.value(metadata !{i32 %acc.1}, i64 0, metadata !51), !dbg !50 ; [debug line = 16:8] [debug variable = acc]
  %i.1 = add i5 %i, -1, !dbg !53                  ; [#uses=1 type=i5] [debug line = 14:39]
  call void @llvm.dbg.value(metadata !{i5 %i.1}, i64 0, metadata !54), !dbg !53 ; [debug line = 14:39] [debug variable = i]
  br label %1, !dbg !53                           ; [debug line = 14:39]

; <label>:7                                       ; preds = %1
  %acc.lcssa = phi i32 [ %acc, %1 ]               ; [#uses=1 type=i32]
  store i32 %acc.lcssa, i32* %y, align 4, !dbg !55 ; [debug line = 23:3]
  ret void, !dbg !56                              ; [debug line = 24:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/hls/labs/hlx_flow/KC705/fir/fir_prj/solution1/.autopilot/db/fir.pragma.2.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Chlx_flow\5CKC705\5Cfir", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !11, metadata !20}
!3 = metadata !{i32 786484, i32 0, null, metadata !"c", metadata !"c", metadata !"c", metadata !4, i32 8, metadata !5, i32 1, i32 1, [11 x i7]* @c} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786473, metadata !"fir.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Chlx_flow\5CKC705\5Cfir", null} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !6, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!6 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_const_type ]
!7 = metadata !{i32 786454, null, metadata !"coef_t", metadata !4, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!8 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!11 = metadata !{i32 786484, i32 0, metadata !12, metadata !"shift_reg", metadata !"shift_reg", metadata !"", metadata !4, i32 9, metadata !19, i32 1, i32 1, [11 x i32]* @shift_reg} ; [ DW_TAG_variable ]
!12 = metadata !{i32 786478, i32 0, metadata !4, metadata !"fir", metadata !"fir", metadata !"", metadata !4, i32 3, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32)* @fir, null, null, metadata !17, i32 6} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !16}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"data_t", metadata !4, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !16, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{i32 786484, i32 0, metadata !12, metadata !"c", metadata !"c", metadata !"", metadata !4, i32 8, metadata !5, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"y", metadata !25, metadata !"int", i32 0, i32 31}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, i32 1}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"x", metadata !31, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, i32 0}
!33 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !4, i32 16777220, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 4, i32 11, metadata !12, null}
!35 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !4, i32 33554437, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 5, i32 10, metadata !12, null}
!37 = metadata !{i32 7, i32 1, metadata !38, null}
!38 = metadata !{i32 786443, metadata !12, i32 6, i32 5, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 14, i32 26, metadata !40, null}
!40 = metadata !{i32 786443, metadata !38, i32 14, i32 21, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 14, i32 45, metadata !42, null}
!42 = metadata !{i32 786443, metadata !40, i32 14, i32 44, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 15, i32 6, metadata !42, null}
!44 = metadata !{i32 17, i32 8, metadata !45, null}
!45 = metadata !{i32 786443, metadata !42, i32 15, i32 16, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 18, i32 6, metadata !45, null}
!47 = metadata !{i32 19, i32 4, metadata !48, null}
!48 = metadata !{i32 786443, metadata !42, i32 18, i32 13, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 20, i32 4, metadata !48, null}
!50 = metadata !{i32 16, i32 8, metadata !45, null}
!51 = metadata !{i32 786688, metadata !38, metadata !"acc", metadata !4, i32 10, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 786454, null, metadata !"acc_t", metadata !4, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!53 = metadata !{i32 14, i32 39, metadata !40, null}
!54 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !4, i32 11, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 23, i32 3, metadata !38, null}
!56 = metadata !{i32 24, i32 1, metadata !38, null}
