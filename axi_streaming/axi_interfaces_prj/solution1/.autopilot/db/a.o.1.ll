; ModuleID = 'C:/training/Vivado_2016.1/hls/demos/axi_streaming/axi_interfaces_prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@axi_interfaces.str = internal unnamed_addr constant [15 x i8] c"axi_interfaces\00" ; [#uses=1 type=[15 x i8]*]
@acc = internal unnamed_addr global [8 x i32] zeroinitializer, align 16 ; [#uses=1 type=[8 x i32]*]
@.str4 = private unnamed_addr constant [9 x i8] c"For_Loop\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str3 = private unnamed_addr constant [7 x i8] c"CYCLIC\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @axi_interfaces(i16* %d_o, i16* %d_i) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @axi_interfaces.str) nounwind
  call void @llvm.dbg.value(metadata !{i16* %d_o}, i64 0, metadata !24), !dbg !25 ; [debug line = 57:29] [debug variable = d_o]
  call void @llvm.dbg.value(metadata !{i16* %d_i}, i64 0, metadata !26), !dbg !27 ; [debug line = 57:47] [debug variable = d_i]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %d_o, i32 32), !dbg !28 ; [debug line = 57:60]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %d_i, i32 32), !dbg !30 ; [debug line = 57:94]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !31 ; [debug line = 58:1]
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_i, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !31 ; [debug line = 58:1]
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !31 ; [debug line = 58:1]
  call void (...)* @_ssdm_SpecArrayPartition(i16* %d_o, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !31 ; [debug line = 58:1]
  call void (...)* @_ssdm_SpecArrayPartition(i16* %d_i, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !31 ; [debug line = 58:1]
  br label %1, !dbg !32                           ; [debug line = 64:17]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %i, 32, !dbg !32        ; [#uses=1 type=i1] [debug line = 64:17]
  br i1 %exitcond, label %3, label %2, !dbg !32   ; [debug line = 64:17]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)), !dbg !34 ; [debug line = 64:35]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !34 ; [#uses=1 type=i32] [debug line = 64:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !36 ; [debug line = 65:1]
  call void (...)* @_ssdm_SpecLoopRewind(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !37 ; [debug line = 65:41]
  call void (...)* @_ssdm_Unroll(i32 1, i32 0, i32 8, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !36 ; [debug line = 65:1]
  %rem = srem i32 %i, 8, !dbg !38                 ; [#uses=1 type=i32] [debug line = 65:3]
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !39), !dbg !38 ; [debug line = 65:3] [debug variable = rem]
  %tmp = sext i32 %rem to i64, !dbg !40           ; [#uses=1 type=i64] [debug line = 66:3]
  %acc.addr = getelementptr inbounds [8 x i32]* @acc, i64 0, i64 %tmp, !dbg !40 ; [#uses=2 type=i32*] [debug line = 66:3]
  %acc.load = load i32* %acc.addr, align 4, !dbg !40 ; [#uses=2 type=i32] [debug line = 66:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %acc.load) nounwind
  %tmp.1 = sext i32 %i to i64, !dbg !40           ; [#uses=2 type=i64] [debug line = 66:3]
  %d_i.addr = getelementptr inbounds i16* %d_i, i64 %tmp.1, !dbg !40 ; [#uses=1 type=i16*] [debug line = 66:3]
  %d_i.load = load i16* %d_i.addr, align 2, !dbg !40 ; [#uses=2 type=i16] [debug line = 66:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %d_i.load) nounwind
  %tmp.2 = sext i16 %d_i.load to i32, !dbg !40    ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp.3 = add nsw i32 %tmp.2, %acc.load, !dbg !40 ; [#uses=3 type=i32] [debug line = 66:3]
  store i32 %tmp.3, i32* %acc.addr, align 4, !dbg !40 ; [debug line = 66:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.3) nounwind
  %tmp.4 = trunc i32 %tmp.3 to i16, !dbg !41      ; [#uses=1 type=i16] [debug line = 67:3]
  %d_o.addr = getelementptr inbounds i16* %d_o, i64 %tmp.1, !dbg !41 ; [#uses=1 type=i16*] [debug line = 67:3]
  store i16 %tmp.4, i16* %d_o.addr, align 2, !dbg !41 ; [debug line = 67:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !42 ; [#uses=0 type=i32] [debug line = 68:2]
  %i.1 = add nsw i32 %i, 1, !dbg !43              ; [#uses=1 type=i32] [debug line = 64:29]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !44), !dbg !43 ; [debug line = 64:29] [debug variable = i]
  br label %1, !dbg !43                           ; [debug line = 64:29]

; <label>:3                                       ; preds = %1
  ret void, !dbg !45                              ; [debug line = 69:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecLoopRewind(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/Vivado_2016.1/hls/demos/axi_streaming/axi_interfaces_prj/solution1/.autopilot/db/axi_interfaces.pragma.2.c", metadata !"C:\5Ctraining\5CVivado_2016.1\5Chls\5Cdemos\5Caxi_streaming", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !16} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"axi_interfaces", metadata !"axi_interfaces", metadata !"", metadata !6, i32 57, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16*)* @axi_interfaces, null, null, metadata !14, i32 57} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"axi_interfaces.c", metadata !"C:\5Ctraining\5CVivado_2016.1\5Chls\5Cdemos\5Caxi_streaming", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"dout_t", metadata !6, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786454, null, metadata !"din_t", metadata !6, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786484, i32 0, metadata !5, metadata !"acc", metadata !"acc", metadata !"", metadata !6, i32 61, metadata !19, i32 1, i32 1, [8 x i32]* @acc} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !20, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{i32 786454, null, metadata !"dacc_t", metadata !6, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!24 = metadata !{i32 786689, metadata !5, metadata !"d_o", metadata !6, i32 16777273, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 57, i32 29, metadata !5, null}
!26 = metadata !{i32 786689, metadata !5, metadata !"d_i", metadata !6, i32 33554489, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 57, i32 47, metadata !5, null}
!28 = metadata !{i32 57, i32 60, metadata !29, null}
!29 = metadata !{i32 786443, metadata !5, i32 57, i32 59, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 57, i32 94, metadata !29, null}
!31 = metadata !{i32 58, i32 1, metadata !29, null}
!32 = metadata !{i32 64, i32 17, metadata !33, null}
!33 = metadata !{i32 786443, metadata !29, i32 64, i32 12, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 64, i32 35, metadata !35, null}
!35 = metadata !{i32 786443, metadata !33, i32 64, i32 34, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 65, i32 1, metadata !35, null}
!37 = metadata !{i32 65, i32 41, metadata !35, null}
!38 = metadata !{i32 65, i32 3, metadata !35, null}
!39 = metadata !{i32 786688, metadata !29, metadata !"rem", metadata !6, i32 58, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 66, i32 3, metadata !35, null}
!41 = metadata !{i32 67, i32 3, metadata !35, null}
!42 = metadata !{i32 68, i32 2, metadata !35, null}
!43 = metadata !{i32 64, i32 29, metadata !33, null}
!44 = metadata !{i32 786688, metadata !29, metadata !"i", metadata !6, i32 58, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 69, i32 1, metadata !29, null}
