; ModuleID = 'C:/training/Vivado_2016.1/hls/demos/axi_streaming/axi_interfaces_prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@axi_interfaces.str = internal unnamed_addr constant [15 x i8] c"axi_interfaces\00" ; [#uses=1 type=[15 x i8]*]
@acc = internal unnamed_addr global [8 x i32] zeroinitializer, align 16 ; [#uses=1 type=[8 x i32]*]
@.str = private unnamed_addr constant [9 x i8] c"For_Loop\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @axi_interfaces([32 x i16]* %d_o, [32 x i16]* %d_i) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i16]* %d_o) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i16]* %d_i) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @axi_interfaces.str) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i16]* %d_o}, i64 0, metadata !30), !dbg !34 ; [debug line = 57:29] [debug variable = d_o]
  call void @llvm.dbg.value(metadata !{[32 x i16]* %d_i}, i64 0, metadata !35), !dbg !37 ; [debug line = 57:47] [debug variable = d_i]
  br label %1, !dbg !38                           ; [debug line = 64:17]

; <label>:1                                       ; preds = %3, %0
  %i = phi i6 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=4 type=i6]
  %rem = trunc i6 %i to i3, !dbg !38              ; [#uses=1 type=i3] [debug line = 64:17]
  %exitcond = icmp eq i6 %i, -32, !dbg !38        ; [#uses=1 type=i1] [debug line = 64:17]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !38   ; [debug line = 64:17]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @.str) nounwind, !dbg !41 ; [debug line = 64:35]
  call void @llvm.dbg.value(metadata !{i3 %rem}, i64 0, metadata !43), !dbg !44 ; [debug line = 65:3] [debug variable = rem]
  %tmp = zext i3 %rem to i64, !dbg !45            ; [#uses=1 type=i64] [debug line = 66:3]
  %acc.addr = getelementptr inbounds [8 x i32]* @acc, i64 0, i64 %tmp, !dbg !45 ; [#uses=2 type=i32*] [debug line = 66:3]
  %acc.load = load i32* %acc.addr, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp.1 = zext i6 %i to i64, !dbg !45            ; [#uses=2 type=i64] [debug line = 66:3]
  %d_i.addr = getelementptr [32 x i16]* %d_i, i64 0, i64 %tmp.1, !dbg !45 ; [#uses=1 type=i16*] [debug line = 66:3]
  %d_i.load = load i16* %d_i.addr, align 2, !dbg !45 ; [#uses=1 type=i16] [debug line = 66:3]
  %tmp.2 = sext i16 %d_i.load to i32, !dbg !45    ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp.3 = add nsw i32 %tmp.2, %acc.load, !dbg !45 ; [#uses=2 type=i32] [debug line = 66:3]
  store i32 %tmp.3, i32* %acc.addr, align 4, !dbg !45 ; [debug line = 66:3]
  %tmp.4 = trunc i32 %tmp.3 to i16, !dbg !46      ; [#uses=1 type=i16] [debug line = 67:3]
  %d_o.addr = getelementptr [32 x i16]* %d_o, i64 0, i64 %tmp.1, !dbg !46 ; [#uses=1 type=i16*] [debug line = 67:3]
  store i16 %tmp.4, i16* %d_o.addr, align 2, !dbg !46 ; [debug line = 67:3]
  %i.1 = add i6 %i, 1, !dbg !47                   ; [#uses=1 type=i6] [debug line = 64:29]
  call void @llvm.dbg.value(metadata !{i6 %i.1}, i64 0, metadata !48), !dbg !47 ; [debug line = 64:29] [debug variable = i]
  br label %1, !dbg !47                           ; [debug line = 64:29]

; <label>:4                                       ; preds = %1
  ret void, !dbg !49                              ; [debug line = 69:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/Vivado_2016.1/hls/demos/axi_streaming/axi_interfaces_prj/solution2/.autopilot/db/axi_interfaces.pragma.2.c", metadata !"C:\5Ctraining\5CVivado_2016.1\5Chls\5Cdemos\5Caxi_streaming", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786484, i32 0, metadata !4, metadata !"acc", metadata !"acc", metadata !"", metadata !5, i32 61, metadata !15, i32 1, i32 1, [8 x i32]* @acc} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"axi_interfaces", metadata !"axi_interfaces", metadata !"", metadata !5, i32 57, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 57} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !"axi_interfaces.c", metadata !"C:\5Ctraining\5CVivado_2016.1\5Chls\5Cdemos\5Caxi_streaming", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!7 = metadata !{null, metadata !8, metadata !11}
!8 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 786454, null, metadata !"dout_t", metadata !5, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786454, null, metadata !"din_t", metadata !5, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !16, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ]
!16 = metadata !{i32 786454, null, metadata !"dacc_t", metadata !5, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 15, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"d_o", metadata !24, metadata !"short", i32 0, i32 15}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, i32 1}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 15, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"d_i", metadata !24, metadata !"short", i32 0, i32 15}
!30 = metadata !{i32 786689, metadata !4, metadata !"d_o", null, i32 57, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !9, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!34 = metadata !{i32 57, i32 29, metadata !4, null}
!35 = metadata !{i32 786689, metadata !4, metadata !"d_i", null, i32 57, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !12, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{i32 57, i32 47, metadata !4, null}
!38 = metadata !{i32 64, i32 17, metadata !39, null}
!39 = metadata !{i32 786443, metadata !40, i32 64, i32 12, metadata !5, i32 1} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 786443, metadata !4, i32 57, i32 59, metadata !5, i32 0} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 64, i32 35, metadata !42, null}
!42 = metadata !{i32 786443, metadata !39, i32 64, i32 34, metadata !5, i32 2} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786688, metadata !40, metadata !"rem", metadata !5, i32 58, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 65, i32 3, metadata !42, null}
!45 = metadata !{i32 66, i32 3, metadata !42, null}
!46 = metadata !{i32 67, i32 3, metadata !42, null}
!47 = metadata !{i32 64, i32 29, metadata !39, null}
!48 = metadata !{i32 786688, metadata !40, metadata !"i", metadata !5, i32 58, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 69, i32 1, metadata !40, null}
