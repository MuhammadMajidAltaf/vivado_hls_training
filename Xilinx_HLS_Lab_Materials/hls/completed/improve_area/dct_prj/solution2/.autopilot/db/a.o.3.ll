; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260] ; [#uses=1 type=[64 x i15]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@Xpose_Row_Outer_Loop_Xpose_Row = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@Xpose_Col_Outer_Loop_Xpose_Col = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@WR_Loop_Row_WR_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@RD_Loop_Row_RD_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %in_block}, i64 0, metadata !0), !dbg !15 ; [debug line = 23:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %out_block}, i64 0, metadata !16), !dbg !17 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_inbuf}, metadata !18), !dbg !20 ; [debug line = 27:109] [debug variable = col_inbuf]
  br label %1, !dbg !21                           ; [debug line = 32:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %exitcond5 = icmp eq i4 %i, -8, !dbg !21        ; [#uses=1 type=i1] [debug line = 32:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !23                   ; [#uses=1 type=i4] [debug line = 32:60]
  br i1 %exitcond5, label %.preheader7.preheader, label %2, !dbg !21 ; [debug line = 32:8]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str3) nounwind, !dbg !24 ; [debug line = 32:66]
  call fastcc void @dct_dct_1d2([64 x i16]* %in_block, i4 %i, [64 x i16]* %row_outbuf, i4 %i), !dbg !26 ; [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !27), !dbg !23 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !23                           ; [debug line = 32:60]

.preheader7.preheader:                            ; preds = %.preheader7, %1
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader7 ], [ 0, %1 ] ; [#uses=2 type=i7]
  %j = phi i4 [ %tmp_mid2_v, %.preheader7 ], [ 0, %1 ] ; [#uses=2 type=i4]
  %i_1 = phi i4 [ %i_6, %.preheader7 ], [ 0, %1 ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader6, label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  %j_2 = add i4 %j, 1, !dbg !29                   ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !31), !dbg !29 ; [debug line = 37:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %i_1, -8, !dbg !32       ; [#uses=2 type=i1] [debug line = 39:11]
  %i_1_mid2 = select i1 %exitcond, i4 0, i4 %i_1  ; [#uses=3 type=i4]
  %tmp_mid2_v = select i1 %exitcond, i4 %j_2, i4 %j, !dbg !35 ; [#uses=3 type=i4] [debug line = 40:1]
  %tmp_mid2_cast = zext i4 %tmp_mid2_v to i8      ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_1_cast = zext i7 %tmp to i8, !dbg !37      ; [#uses=1 type=i8] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind, !dbg !37 ; [debug line = 40:2]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5), !dbg !37 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !38 ; [debug line = 41:1]
  %tmp_3_cast = zext i4 %i_1_mid2 to i8           ; [#uses=1 type=i8]
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_4_cast = zext i7 %tmp_2 to i8, !dbg !35    ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_7 = add i8 %tmp_mid2_cast, %tmp_4_cast, !dbg !35 ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_7_cast = zext i8 %tmp_7 to i64, !dbg !35   ; [#uses=1 type=i64] [debug line = 40:1]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_7_cast, !dbg !35 ; [#uses=1 type=i16*] [debug line = 40:1]
  %tmp_9 = add i8 %tmp_3_cast, %tmp_1_cast, !dbg !35 ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_9_cast = zext i8 %tmp_9 to i64, !dbg !35   ; [#uses=1 type=i64] [debug line = 40:1]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_9_cast, !dbg !35 ; [#uses=1 type=i16*] [debug line = 40:1]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !35 ; [#uses=1 type=i16] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2, !dbg !35 ; [debug line = 40:1]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_6), !dbg !39 ; [#uses=0 type=i32] [debug line = 40:34]
  %i_6 = add i4 %i_1_mid2, 1, !dbg !40            ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !27), !dbg !40 ; [debug line = 39:63] [debug variable = i]
  br label %.preheader7.preheader

.preheader6:                                      ; preds = %3, %.preheader7.preheader
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader7.preheader ] ; [#uses=4 type=i4]
  %exitcond2 = icmp eq i4 %i_2, -8, !dbg !41      ; [#uses=1 type=i1] [debug line = 43:9]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !43                 ; [#uses=1 type=i4] [debug line = 43:61]
  br i1 %exitcond2, label %.preheader.preheader, label %3, !dbg !41 ; [debug line = 43:9]

; <label>:3                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind, !dbg !44 ; [debug line = 43:67]
  call fastcc void @dct_dct_1d2([64 x i16]* %col_inbuf, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2), !dbg !46 ; [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !27), !dbg !43 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader6, !dbg !43                 ; [debug line = 43:61]

.preheader.preheader:                             ; preds = %.preheader, %.preheader6
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i7]
  %j_1 = phi i4 [ %tmp_4_mid2_v, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i4]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i4]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %j_3 = add i4 %j_1, 1, !dbg !47                 ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j_3}, i64 0, metadata !31), !dbg !47 ; [debug line = 48:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i4 %i_3, -8, !dbg !49      ; [#uses=2 type=i1] [debug line = 50:11]
  %i_3_mid2 = select i1 %exitcond4, i4 0, i4 %i_3 ; [#uses=3 type=i4]
  %tmp_4_mid2_v = select i1 %exitcond4, i4 %j_3, i4 %j_1, !dbg !52 ; [#uses=3 type=i4] [debug line = 51:1]
  %tmp_4_mid2_cast = zext i4 %tmp_4_mid2_v to i8  ; [#uses=1 type=i8]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_4_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_11_cast = zext i7 %tmp_s to i8, !dbg !54   ; [#uses=1 type=i8] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind, !dbg !54 ; [debug line = 51:2]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8), !dbg !54 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !55 ; [debug line = 52:1]
  %tmp_5_cast = zext i4 %i_3_mid2 to i8, !dbg !52 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_1 = add i8 %tmp_5_cast, %tmp_11_cast, !dbg !52 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_12_cast = zext i8 %tmp_1 to i64, !dbg !52  ; [#uses=1 type=i64] [debug line = 51:1]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_12_cast, !dbg !52 ; [#uses=1 type=i16*] [debug line = 51:1]
  %tmp_3 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_14_cast = zext i7 %tmp_3 to i8, !dbg !52   ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_4 = add i8 %tmp_4_mid2_cast, %tmp_14_cast, !dbg !52 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_15_cast = zext i8 %tmp_4 to i64, !dbg !52  ; [#uses=1 type=i64] [debug line = 51:1]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_15_cast, !dbg !52 ; [#uses=1 type=i16*] [debug line = 51:1]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !52 ; [#uses=1 type=i16] [debug line = 51:1]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !52 ; [debug line = 51:1]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_8), !dbg !56 ; [#uses=0 type=i32] [debug line = 51:34]
  %i_7 = add i4 %i_3_mid2, 1, !dbg !57            ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !27), !dbg !57 ; [debug line = 50:63] [debug variable = i]
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void, !dbg !58                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_dct_1d2([64 x i16]* nocapture %src, i4 %tmp_2, [64 x i16]* nocapture %dst, i4 %tmp_21) {
  %tmp_21_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_21) ; [#uses=1 type=i4]
  %tmp_2_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_2) ; [#uses=1 type=i4]
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_21_read, i3 0) ; [#uses=1 type=i7]
  %tmp_17_cast = zext i7 %tmp_6 to i8             ; [#uses=1 type=i8]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_2_read, i3 0) ; [#uses=1 type=i7]
  %tmp_19_cast = zext i7 %tmp_8 to i8, !dbg !59   ; [#uses=1 type=i8] [debug line = 4:24]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %src}, i64 0, metadata !64), !dbg !59 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !66), !dbg !67 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !68                           ; [debug line = 13:9]

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]             ; [#uses=4 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !68        ; [#uses=1 type=i1] [debug line = 13:9]
  %k_1 = add i4 %k, 1, !dbg !71                   ; [#uses=1 type=i4] [debug line = 13:61]
  br i1 %exitcond1, label %6, label %2, !dbg !68  ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !72 ; [debug line = 13:67]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 13:67]
  %tmp_cast = zext i4 %k to i8, !dbg !74          ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_9 = add i8 %tmp_cast, %tmp_17_cast, !dbg !74 ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_20_cast = zext i8 %tmp_9 to i64, !dbg !74  ; [#uses=1 type=i64] [debug line = 19:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_20_cast, !dbg !74 ; [#uses=1 type=i16*] [debug line = 19:7]
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0) ; [#uses=1 type=i7]
  %tmp_23_cast = zext i7 %tmp_10 to i8, !dbg !75  ; [#uses=1 type=i8] [debug line = 15:11]
  br label %3, !dbg !75                           ; [debug line = 15:11]

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_3, %4 ]       ; [#uses=2 type=i32]
  %exitcond = icmp eq i4 %n, -8, !dbg !75         ; [#uses=1 type=i1] [debug line = 15:11]
  %n_1 = add i4 %n, 1, !dbg !77                   ; [#uses=1 type=i4] [debug line = 15:72]
  br i1 %exitcond, label %5, label %4, !dbg !75   ; [debug line = 15:11]

; <label>:4                                       ; preds = %3
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind, !dbg !78 ; [debug line = 15:78]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 15:78]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !80 ; [debug line = 16:1]
  %tmp_8_cast = zext i4 %n to i8, !dbg !81        ; [#uses=2 type=i8] [debug line = 17:10]
  %tmp_11 = add i8 %tmp_19_cast, %tmp_8_cast, !dbg !81 ; [#uses=1 type=i8] [debug line = 17:10]
  %tmp_24_cast = zext i8 %tmp_11 to i64, !dbg !81 ; [#uses=1 type=i64] [debug line = 17:10]
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_24_cast, !dbg !81 ; [#uses=1 type=i16*] [debug line = 17:10]
  %tmp_12 = add i8 %tmp_23_cast, %tmp_8_cast, !dbg !82 ; [#uses=1 type=i8] [debug line = 16:48]
  %tmp_25_cast = zext i8 %tmp_12 to i64, !dbg !82 ; [#uses=1 type=i64] [debug line = 16:48]
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i64 0, i64 %tmp_25_cast, !dbg !82 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2, !dbg !82 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_cast = sext i15 %dct_coeff_table_load to i31, !dbg !82 ; [#uses=1 type=i31] [debug line = 16:48]
  %src_load = load i16* %src_addr, align 2, !dbg !81 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_9_cast = sext i16 %src_load to i31, !dbg !81 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_1 = mul i31 %coeff_cast, %tmp_9_cast, !dbg !81 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_1_cast = sext i31 %tmp_1 to i32, !dbg !81  ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp_3 = add nsw i32 %tmp1, %tmp_1_cast, !dbg !81 ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp_3}, i64 0, metadata !83), !dbg !81 ; [debug line = 17:10] [debug variable = tmp]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1, i32 %tmp_5) nounwind, !dbg !85 ; [#uses=0 type=i32] [debug line = 18:7]
  call void @llvm.dbg.value(metadata !{i4 %n_1}, i64 0, metadata !86), !dbg !77 ; [debug line = 15:72] [debug variable = n]
  br label %3, !dbg !77                           ; [debug line = 15:72]

; <label>:5                                       ; preds = %3
  %tmp = trunc i32 %tmp1 to i29, !dbg !75         ; [#uses=1 type=i29] [debug line = 15:11]
  %tmp_s = add i29 4096, %tmp, !dbg !74           ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_7 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_s, i32 13, i32 28), !dbg !74 ; [#uses=1 type=i16] [debug line = 19:7]
  store i16 %tmp_7, i16* %dst_addr, align 2, !dbg !74 ; [debug line = 19:7]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_4) nounwind, !dbg !87 ; [#uses=0 type=i32] [debug line = 20:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !88), !dbg !71 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !71                           ; [debug line = 13:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !89                              ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !90
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !96
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !100), !dbg !108 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !109), !dbg !110 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_in}, metadata !111), !dbg !114 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !115) nounwind, !dbg !122 ; [debug line = 54:22@85:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf_2d_in}, i64 0, metadata !123) nounwind, !dbg !124 ; [debug line = 54:44@85:4] [debug variable = buf]
  br label %1, !dbg !125                          ; [debug line = 59:9@85:4]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r_i = phi i4 [ 0, %0 ], [ %tmp_i_mid2_v_v, %.reset ] ; [#uses=2 type=i4]
  %c_i = phi i4 [ 0, %0 ], [ %c, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %read_data.exit, label %.reset

.reset:                                           ; preds = %1
  %r = add i4 1, %r_i, !dbg !128                  ; [#uses=1 type=i4] [debug line = 59:61@85:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !129) nounwind, !dbg !128 ; [debug line = 59:61@85:4] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i = icmp eq i4 %c_i, -8, !dbg !130    ; [#uses=2 type=i1] [debug line = 61:12@85:4]
  %c_i_mid2 = select i1 %exitcond_i, i4 0, i4 %c_i ; [#uses=3 type=i4]
  %tmp_i_mid2_v_v = select i1 %exitcond_i, i4 %r, i4 %r_i, !dbg !133 ; [#uses=3 type=i4] [debug line = 62:1@85:4]
  %tmp = trunc i4 %tmp_i_mid2_v_v to i3           ; [#uses=1 type=i3]
  %tmp_i_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !133 ; [#uses=1 type=i6] [debug line = 62:1@85:4]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_i_mid2_v_v, i3 0) ; [#uses=1 type=i7]
  %tmp_27_cast = zext i7 %tmp_s to i8, !dbg !130  ; [#uses=1 type=i8] [debug line = 61:12@85:4]
  %c_i_cast6 = zext i4 %c_i_mid2 to i6, !dbg !130 ; [#uses=1 type=i6] [debug line = 61:12@85:4]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !135 ; [debug line = 62:2@85:4]
  %tmp_10_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind, !dbg !135 ; [#uses=1 type=i32] [debug line = 62:2@85:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !136 ; [debug line = 63:1@85:4]
  %tmp_9_i = add i6 %c_i_cast6, %tmp_i_mid2, !dbg !133 ; [#uses=1 type=i6] [debug line = 62:1@85:4]
  %tmp_i = zext i6 %tmp_9_i to i64, !dbg !133     ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_i, !dbg !133 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  %input_load = load i16* %input_addr, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 62:1@85:4]
  %tmp_1_i_cast = zext i4 %c_i_mid2 to i8, !dbg !133 ; [#uses=1 type=i8] [debug line = 62:1@85:4]
  %tmp_13 = add i8 %tmp_27_cast, %tmp_1_i_cast, !dbg !133 ; [#uses=1 type=i8] [debug line = 62:1@85:4]
  %tmp_28_cast = zext i8 %tmp_13 to i64, !dbg !133 ; [#uses=1 type=i64] [debug line = 62:1@85:4]
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_28_cast, !dbg !133 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  store i16 %input_load, i16* %buf_2d_in_addr, align 2, !dbg !133 ; [debug line = 62:1@85:4]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_10_i) nounwind, !dbg !137 ; [#uses=0 type=i32] [debug line = 62:66@85:4]
  %c = add i4 1, %c_i_mid2, !dbg !138             ; [#uses=1 type=i4] [debug line = 61:64@85:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !139) nounwind, !dbg !138 ; [debug line = 61:64@85:4] [debug variable = c]
  br label %1

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_dct_2d([64 x i16]* %buf_2d_in, [64 x i16]* %buf_2d_out) nounwind, !dbg !140 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !141) nounwind, !dbg !146 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %2, !dbg !147                          ; [debug line = 71:9@90:4]

; <label>:2                                       ; preds = %.reset10, %read_data.exit
  %indvar_flatten2 = phi i7 [ 0, %read_data.exit ], [ %indvar_flatten_next2, %.reset10 ] ; [#uses=2 type=i7]
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %tmp_i4_mid2_v, %.reset10 ] ; [#uses=2 type=i4]
  %c_i6 = phi i4 [ 0, %read_data.exit ], [ %c_1, %.reset10 ] ; [#uses=2 type=i4]
  %exitcond_flatten2 = icmp eq i7 %indvar_flatten2, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next2 = add i7 %indvar_flatten2, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten2, label %write_data.exit, label %.reset10

.reset10:                                         ; preds = %2
  %r_1 = add i4 1, %r_i2, !dbg !150               ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r_1}, i64 0, metadata !151) nounwind, !dbg !150 ; [debug line = 71:61@90:4] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_Col_str)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i1 = icmp eq i4 %c_i6, -8, !dbg !152  ; [#uses=2 type=i1] [debug line = 73:12@90:4]
  %c_i6_mid2 = select i1 %exitcond_i1, i4 0, i4 %c_i6 ; [#uses=3 type=i4]
  %tmp_i4_mid2_v = select i1 %exitcond_i1, i4 %r_1, i4 %r_i2, !dbg !155 ; [#uses=3 type=i4] [debug line = 74:1@90:4]
  %tmp_14 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_i4_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_30_cast = zext i7 %tmp_14 to i8            ; [#uses=1 type=i8]
  %tmp_4 = trunc i4 %tmp_i4_mid2_v to i3          ; [#uses=1 type=i3]
  %tmp_1_i5_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_4, i3 0), !dbg !155 ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  %c_i6_cast2 = zext i4 %c_i6_mid2 to i6, !dbg !152 ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind, !dbg !157 ; [debug line = 74:2@90:4]
  %tmp_6_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12) nounwind, !dbg !157 ; [#uses=1 type=i32] [debug line = 74:2@90:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !158 ; [debug line = 75:1@90:4]
  %tmp_3_i_cast = zext i4 %c_i6_mid2 to i8, !dbg !155 ; [#uses=1 type=i8] [debug line = 74:1@90:4]
  %tmp_15 = add i8 %tmp_30_cast, %tmp_3_i_cast, !dbg !155 ; [#uses=1 type=i8] [debug line = 74:1@90:4]
  %tmp_32_cast = zext i8 %tmp_15 to i64, !dbg !155 ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_32_cast, !dbg !155 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2, !dbg !155 ; [#uses=1 type=i16] [debug line = 74:1@90:4]
  %tmp_4_i = add i6 %c_i6_cast2, %tmp_1_i5_mid2, !dbg !155 ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  %tmp_5_i = zext i6 %tmp_4_i to i64, !dbg !155   ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_5_i, !dbg !155 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  store i16 %buf_2d_out_load, i16* %output_addr, align 2, !dbg !155 ; [debug line = 74:1@90:4]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_6_i) nounwind, !dbg !159 ; [#uses=0 type=i32] [debug line = 74:67@90:4]
  %c_1 = add i4 1, %c_i6_mid2, !dbg !160          ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !161) nounwind, !dbg !160 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %2

write_data.exit:                                  ; preds = %2
  ret void, !dbg !162                             ; [debug line = 91:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=12]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=0]
declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_16 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_16
}

; [#uses=9]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_17 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_18 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_19 = or i7 %empty_18, %empty_17          ; [#uses=1 type=i7]
  ret i7 %empty_19
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_20 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_21 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_22 = or i6 %empty_21, %empty_20          ; [#uses=1 type=i6]
  ret i6 %empty_22
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786689, metadata !1, metadata !"in_block", null, i32 23, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !2, i32 23, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 25} ; [ DW_TAG_subprogram ]
!2 = metadata !{i32 786473, metadata !"dct.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_area", null} ; [ DW_TAG_file_type ]
!3 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5, metadata !5}
!5 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !7, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!7 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !2, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!8 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !7, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{metadata !10, metadata !10}
!15 = metadata !{i32 23, i32 24, metadata !1, null}
!16 = metadata !{i32 786689, metadata !1, metadata !"out_block", null, i32 24, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 24, i32 18, metadata !1, null}
!18 = metadata !{i32 786688, metadata !19, metadata !"col_inbuf", metadata !2, i32 27, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!19 = metadata !{i32 786443, metadata !1, i32 25, i32 1, metadata !2, i32 5} ; [ DW_TAG_lexical_block ]
!20 = metadata !{i32 27, i32 109, metadata !19, null}
!21 = metadata !{i32 32, i32 8, metadata !22, null}
!22 = metadata !{i32 786443, metadata !19, i32 32, i32 4, metadata !2, i32 6} ; [ DW_TAG_lexical_block ]
!23 = metadata !{i32 32, i32 60, metadata !22, null}
!24 = metadata !{i32 32, i32 66, metadata !25, null}
!25 = metadata !{i32 786443, metadata !22, i32 32, i32 65, metadata !2, i32 7} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 33, i32 7, metadata !25, null}
!27 = metadata !{i32 786688, metadata !19, metadata !"i", metadata !2, i32 28, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!28 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 37, i32 61, metadata !30, null}
!30 = metadata !{i32 786443, metadata !19, i32 37, i32 4, metadata !2, i32 8} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 786688, metadata !19, metadata !"j", metadata !2, i32 28, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 39, i32 11, metadata !33, null}
!33 = metadata !{i32 786443, metadata !34, i32 39, i32 7, metadata !2, i32 10} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786443, metadata !30, i32 38, i32 1, metadata !2, i32 9} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 40, i32 1, metadata !36, null}
!36 = metadata !{i32 786443, metadata !33, i32 40, i32 1, metadata !2, i32 11} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 40, i32 2, metadata !36, null}
!38 = metadata !{i32 41, i32 1, metadata !36, null}
!39 = metadata !{i32 40, i32 34, metadata !36, null}
!40 = metadata !{i32 39, i32 63, metadata !33, null}
!41 = metadata !{i32 43, i32 9, metadata !42, null}
!42 = metadata !{i32 786443, metadata !19, i32 43, i32 4, metadata !2, i32 12} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 43, i32 61, metadata !42, null}
!44 = metadata !{i32 43, i32 67, metadata !45, null}
!45 = metadata !{i32 786443, metadata !42, i32 43, i32 66, metadata !2, i32 13} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 44, i32 7, metadata !45, null}
!47 = metadata !{i32 48, i32 61, metadata !48, null}
!48 = metadata !{i32 786443, metadata !19, i32 48, i32 4, metadata !2, i32 14} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 50, i32 11, metadata !50, null}
!50 = metadata !{i32 786443, metadata !51, i32 50, i32 7, metadata !2, i32 16} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786443, metadata !48, i32 49, i32 1, metadata !2, i32 15} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 51, i32 1, metadata !53, null}
!53 = metadata !{i32 786443, metadata !50, i32 51, i32 1, metadata !2, i32 17} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 51, i32 2, metadata !53, null}
!55 = metadata !{i32 52, i32 1, metadata !53, null}
!56 = metadata !{i32 51, i32 34, metadata !53, null}
!57 = metadata !{i32 50, i32 63, metadata !50, null}
!58 = metadata !{i32 52, i32 1, metadata !19, null}
!59 = metadata !{i32 4, i32 24, metadata !60, null}
!60 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !2, i32 4, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !63, metadata !63}
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786689, metadata !60, metadata !"src", null, i32 4, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !7, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!66 = metadata !{i32 786689, metadata !60, metadata !"dst", null, i32 4, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 4, i32 81, metadata !60, null}
!68 = metadata !{i32 13, i32 9, metadata !69, null}
!69 = metadata !{i32 786443, metadata !70, i32 13, i32 4, metadata !2, i32 1} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !60, i32 5, i32 1, metadata !2, i32 0} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 13, i32 61, metadata !69, null}
!72 = metadata !{i32 13, i32 67, metadata !73, null}
!73 = metadata !{i32 786443, metadata !69, i32 13, i32 66, metadata !2, i32 2} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 19, i32 7, metadata !73, null}
!75 = metadata !{i32 15, i32 11, metadata !76, null}
!76 = metadata !{i32 786443, metadata !73, i32 15, i32 7, metadata !2, i32 3} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 15, i32 72, metadata !76, null}
!78 = metadata !{i32 15, i32 78, metadata !79, null}
!79 = metadata !{i32 786443, metadata !76, i32 15, i32 77, metadata !2, i32 4} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 16, i32 1, metadata !79, null}
!81 = metadata !{i32 17, i32 10, metadata !79, null}
!82 = metadata !{i32 16, i32 48, metadata !79, null}
!83 = metadata !{i32 786688, metadata !70, metadata !"tmp", metadata !2, i32 7, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 18, i32 7, metadata !79, null}
!86 = metadata !{i32 786688, metadata !70, metadata !"n", metadata !2, i32 6, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 20, i32 4, metadata !73, null}
!88 = metadata !{i32 786688, metadata !70, metadata !"k", metadata !2, i32 6, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 21, i32 1, metadata !70, null}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 15, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"input", metadata !94, metadata !"short", i32 0, i32 15}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 63, i32 1}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 0, i32 15, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"output", metadata !94, metadata !"short", i32 0, i32 15}
!100 = metadata !{i32 786689, metadata !101, metadata !"input", null, i32 78, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct", metadata !"dct", metadata !"", metadata !2, i32 78, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 79} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{null, metadata !104, metadata !104}
!104 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!105 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !8, metadata !106, i32 0, i32 0} ; [ DW_TAG_array_type ]
!106 = metadata !{metadata !107}
!107 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!108 = metadata !{i32 78, i32 16, metadata !101, null}
!109 = metadata !{i32 786689, metadata !101, metadata !"output", null, i32 78, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 78, i32 38, metadata !101, null}
!111 = metadata !{i32 786688, metadata !112, metadata !"buf_2d_in", metadata !2, i32 81, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 786443, metadata !101, i32 79, i32 1, metadata !2, i32 28} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !8, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!114 = metadata !{i32 81, i32 10, metadata !112, null}
!115 = metadata !{i32 786689, metadata !116, metadata !"input", null, i32 54, metadata !105, i32 0, metadata !121} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 786478, i32 0, metadata !2, metadata !"read_data", metadata !"read_data", metadata !"", metadata !2, i32 54, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 55} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{null, metadata !104, metadata !119}
!119 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ]
!120 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !8, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!121 = metadata !{i32 85, i32 4, metadata !112, null}
!122 = metadata !{i32 54, i32 22, metadata !116, metadata !121}
!123 = metadata !{i32 786689, metadata !116, metadata !"buf", null, i32 54, metadata !113, i32 0, metadata !121} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 54, i32 44, metadata !116, metadata !121}
!125 = metadata !{i32 59, i32 9, metadata !126, metadata !121}
!126 = metadata !{i32 786443, metadata !127, i32 59, i32 4, metadata !2, i32 19} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 786443, metadata !116, i32 55, i32 1, metadata !2, i32 18} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 59, i32 61, metadata !126, metadata !121}
!129 = metadata !{i32 786688, metadata !127, metadata !"r", metadata !2, i32 56, metadata !84, i32 0, metadata !121} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 61, i32 12, metadata !131, metadata !121}
!131 = metadata !{i32 786443, metadata !132, i32 61, i32 7, metadata !2, i32 21} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !126, i32 59, i32 66, metadata !2, i32 20} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 62, i32 1, metadata !134, metadata !121}
!134 = metadata !{i32 786443, metadata !131, i32 62, i32 1, metadata !2, i32 22} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 62, i32 2, metadata !134, metadata !121}
!136 = metadata !{i32 63, i32 1, metadata !134, metadata !121}
!137 = metadata !{i32 62, i32 66, metadata !134, metadata !121}
!138 = metadata !{i32 61, i32 64, metadata !131, metadata !121}
!139 = metadata !{i32 786688, metadata !127, metadata !"c", metadata !2, i32 56, metadata !84, i32 0, metadata !121} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 87, i32 4, metadata !112, null}
!141 = metadata !{i32 786689, metadata !142, metadata !"output", null, i32 66, metadata !105, i32 0, metadata !145} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 786478, i32 0, metadata !2, metadata !"write_data", metadata !"write_data", metadata !"", metadata !2, i32 66, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 67} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{null, metadata !119, metadata !104}
!145 = metadata !{i32 90, i32 4, metadata !112, null}
!146 = metadata !{i32 66, i32 116, metadata !142, metadata !145}
!147 = metadata !{i32 71, i32 9, metadata !148, metadata !145}
!148 = metadata !{i32 786443, metadata !149, i32 71, i32 4, metadata !2, i32 24} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !142, i32 67, i32 1, metadata !2, i32 23} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 71, i32 61, metadata !148, metadata !145}
!151 = metadata !{i32 786688, metadata !149, metadata !"r", metadata !2, i32 68, metadata !84, i32 0, metadata !145} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 73, i32 12, metadata !153, metadata !145}
!153 = metadata !{i32 786443, metadata !154, i32 73, i32 7, metadata !2, i32 26} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 786443, metadata !148, i32 71, i32 66, metadata !2, i32 25} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 74, i32 1, metadata !156, metadata !145}
!156 = metadata !{i32 786443, metadata !153, i32 74, i32 1, metadata !2, i32 27} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 74, i32 2, metadata !156, metadata !145}
!158 = metadata !{i32 75, i32 1, metadata !156, metadata !145}
!159 = metadata !{i32 74, i32 67, metadata !156, metadata !145}
!160 = metadata !{i32 73, i32 64, metadata !153, metadata !145}
!161 = metadata !{i32 786688, metadata !149, metadata !"c", metadata !2, i32 68, metadata !84, i32 0, metadata !145} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 91, i32 1, metadata !112, null}
