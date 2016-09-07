; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260] ; [#uses=1 type=[64 x i15]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@p_str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str8 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str5 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@p_str3 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
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
  br i1 %exitcond5, label %.preheader7, label %2, !dbg !21 ; [debug line = 32:8]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind, !dbg !24 ; [debug line = 32:66]
  call fastcc void @dct_dct_1d2([64 x i16]* %in_block, i4 %i, [64 x i16]* %row_outbuf, i4 %i), !dbg !26 ; [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !27), !dbg !23 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !23                           ; [debug line = 32:60]

.preheader7:                                      ; preds = %6, %1
  %j = phi i4 [ %j_2, %6 ], [ 0, %1 ]             ; [#uses=4 type=i4]
  %exitcond4 = icmp eq i4 %j, -8, !dbg !29        ; [#uses=1 type=i1] [debug line = 37:9]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_2 = add i4 %j, 1, !dbg !31                   ; [#uses=1 type=i4] [debug line = 37:61]
  br i1 %exitcond4, label %.preheader6, label %3, !dbg !29 ; [debug line = 37:9]

; <label>:3                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str3) nounwind, !dbg !32 ; [debug line = 38:1]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str3), !dbg !32 ; [#uses=1 type=i32] [debug line = 38:1]
  %tmp_cast = zext i4 %j to i8                    ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j, i3 0) ; [#uses=1 type=i7]
  %tmp_2_cast = zext i7 %tmp to i8, !dbg !34      ; [#uses=1 type=i8] [debug line = 39:11]
  br label %4, !dbg !34                           ; [debug line = 39:11]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ 0, %3 ], [ %i_6, %5 ]           ; [#uses=4 type=i4]
  %exitcond3 = icmp eq i4 %i_1, -8, !dbg !34      ; [#uses=1 type=i1] [debug line = 39:11]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_6 = add i4 %i_1, 1, !dbg !36                 ; [#uses=1 type=i4] [debug line = 39:63]
  br i1 %exitcond3, label %6, label %5, !dbg !34  ; [debug line = 39:11]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str4) nounwind, !dbg !37 ; [debug line = 40:10]
  %tmp_3_cast = zext i4 %i_1 to i8, !dbg !37      ; [#uses=1 type=i8] [debug line = 40:10]
  %tmp_7 = add i8 %tmp_3_cast, %tmp_2_cast, !dbg !37 ; [#uses=1 type=i8] [debug line = 40:10]
  %tmp_7_cast = zext i8 %tmp_7 to i64, !dbg !37   ; [#uses=1 type=i64] [debug line = 40:10]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_7_cast, !dbg !37 ; [#uses=1 type=i16*] [debug line = 40:10]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1, i3 0) ; [#uses=1 type=i7]
  %tmp_9_cast = zext i7 %tmp_8 to i8, !dbg !37    ; [#uses=1 type=i8] [debug line = 40:10]
  %tmp_2 = add i8 %tmp_cast, %tmp_9_cast, !dbg !37 ; [#uses=1 type=i8] [debug line = 40:10]
  %tmp_10_cast = zext i8 %tmp_2 to i64, !dbg !37  ; [#uses=1 type=i64] [debug line = 40:10]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_10_cast, !dbg !37 ; [#uses=1 type=i16*] [debug line = 40:10]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !37 ; [#uses=1 type=i16] [debug line = 40:10]
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2, !dbg !37 ; [debug line = 40:10]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !27), !dbg !36 ; [debug line = 39:63] [debug variable = i]
  br label %4, !dbg !36                           ; [debug line = 39:63]

; <label>:6                                       ; preds = %4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str3, i32 %tmp_1), !dbg !39 ; [#uses=0 type=i32] [debug line = 40:43]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !40), !dbg !31 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader7, !dbg !31                 ; [debug line = 37:61]

.preheader6:                                      ; preds = %7, %.preheader7
  %i_2 = phi i4 [ %i_5, %7 ], [ 0, %.preheader7 ] ; [#uses=4 type=i4]
  %exitcond2 = icmp eq i4 %i_2, -8, !dbg !41      ; [#uses=1 type=i1] [debug line = 43:9]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !43                 ; [#uses=1 type=i4] [debug line = 43:61]
  br i1 %exitcond2, label %.preheader, label %7, !dbg !41 ; [debug line = 43:9]

; <label>:7                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str5) nounwind, !dbg !44 ; [debug line = 43:67]
  call fastcc void @dct_dct_1d2([64 x i16]* %col_inbuf, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2), !dbg !46 ; [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !27), !dbg !43 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader6, !dbg !43                 ; [debug line = 43:61]

.preheader:                                       ; preds = %11, %.preheader6
  %j_1 = phi i4 [ %j_3, %11 ], [ 0, %.preheader6 ] ; [#uses=4 type=i4]
  %exitcond1 = icmp eq i4 %j_1, -8, !dbg !47      ; [#uses=1 type=i1] [debug line = 48:9]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_3 = add i4 %j_1, 1, !dbg !49                 ; [#uses=1 type=i4] [debug line = 48:61]
  br i1 %exitcond1, label %12, label %8, !dbg !47 ; [debug line = 48:9]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !50 ; [debug line = 49:1]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6), !dbg !50 ; [#uses=1 type=i32] [debug line = 49:1]
  %tmp_4_cast = zext i4 %j_1 to i8                ; [#uses=1 type=i8]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1, i3 0) ; [#uses=1 type=i7]
  %tmp_12_cast = zext i7 %tmp_s to i8, !dbg !52   ; [#uses=1 type=i8] [debug line = 50:11]
  br label %9, !dbg !52                           ; [debug line = 50:11]

; <label>:9                                       ; preds = %10, %8
  %i_3 = phi i4 [ 0, %8 ], [ %i_7, %10 ]          ; [#uses=4 type=i4]
  %exitcond = icmp eq i4 %i_3, -8, !dbg !52       ; [#uses=1 type=i1] [debug line = 50:11]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_7 = add i4 %i_3, 1, !dbg !54                 ; [#uses=1 type=i4] [debug line = 50:63]
  br i1 %exitcond, label %11, label %10, !dbg !52 ; [debug line = 50:11]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str7) nounwind, !dbg !55 ; [debug line = 51:10]
  %tmp_5_cast = zext i4 %i_3 to i8, !dbg !55      ; [#uses=1 type=i8] [debug line = 51:10]
  %tmp_3 = add i8 %tmp_5_cast, %tmp_12_cast, !dbg !55 ; [#uses=1 type=i8] [debug line = 51:10]
  %tmp_13_cast = zext i8 %tmp_3 to i64, !dbg !55  ; [#uses=1 type=i64] [debug line = 51:10]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_13_cast, !dbg !55 ; [#uses=1 type=i16*] [debug line = 51:10]
  %tmp_4 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3, i3 0) ; [#uses=1 type=i7]
  %tmp_15_cast = zext i7 %tmp_4 to i8, !dbg !55   ; [#uses=1 type=i8] [debug line = 51:10]
  %tmp_5 = add i8 %tmp_4_cast, %tmp_15_cast, !dbg !55 ; [#uses=1 type=i8] [debug line = 51:10]
  %tmp_16_cast = zext i8 %tmp_5 to i64, !dbg !55  ; [#uses=1 type=i64] [debug line = 51:10]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_16_cast, !dbg !55 ; [#uses=1 type=i16*] [debug line = 51:10]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !55 ; [#uses=1 type=i16] [debug line = 51:10]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !55 ; [debug line = 51:10]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !27), !dbg !54 ; [debug line = 50:63] [debug variable = i]
  br label %9, !dbg !54                           ; [debug line = 50:63]

; <label>:11                                      ; preds = %9
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_6), !dbg !57 ; [#uses=0 type=i32] [debug line = 51:43]
  call void @llvm.dbg.value(metadata !{i4 %j_3}, i64 0, metadata !40), !dbg !49 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !49                  ; [debug line = 48:61]

; <label>:12                                      ; preds = %.preheader
  ret void, !dbg !58                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_dct_1d2([64 x i16]* nocapture %src, i4 %tmp_2, [64 x i16]* nocapture %dst, i4 %tmp_21) {
  %tmp_21_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_21) ; [#uses=1 type=i4]
  %tmp_2_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_2) ; [#uses=1 type=i4]
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_21_read, i3 0) ; [#uses=1 type=i7]
  %tmp_18_cast = zext i7 %tmp_6 to i8             ; [#uses=1 type=i8]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_2_read, i3 0) ; [#uses=1 type=i7]
  %tmp_20_cast = zext i7 %tmp_8 to i8, !dbg !59   ; [#uses=1 type=i8] [debug line = 4:24]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %src}, i64 0, metadata !64), !dbg !59 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !66), !dbg !67 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !68                           ; [debug line = 13:9]

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]             ; [#uses=4 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !68        ; [#uses=1 type=i1] [debug line = 13:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %k_1 = add i4 %k, 1, !dbg !71                   ; [#uses=1 type=i4] [debug line = 13:61]
  br i1 %exitcond1, label %6, label %2, !dbg !68  ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !72 ; [debug line = 13:67]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 13:67]
  %tmp_cast = zext i4 %k to i8, !dbg !74          ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_9 = add i8 %tmp_cast, %tmp_18_cast, !dbg !74 ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_22_cast = zext i8 %tmp_9 to i64, !dbg !74  ; [#uses=1 type=i64] [debug line = 19:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_22_cast, !dbg !74 ; [#uses=1 type=i16*] [debug line = 19:7]
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0) ; [#uses=1 type=i7]
  %tmp_24_cast = zext i7 %tmp_10 to i8, !dbg !75  ; [#uses=1 type=i8] [debug line = 15:11]
  br label %3, !dbg !75                           ; [debug line = 15:11]

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_3, %4 ]       ; [#uses=2 type=i32]
  %exitcond = icmp eq i4 %n, -8, !dbg !75         ; [#uses=1 type=i1] [debug line = 15:11]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %n_1 = add i4 %n, 1, !dbg !77                   ; [#uses=1 type=i4] [debug line = 15:72]
  br i1 %exitcond, label %5, label %4, !dbg !75   ; [debug line = 15:11]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind, !dbg !78 ; [debug line = 15:78]
  %tmp_8_cast = zext i4 %n to i8, !dbg !80        ; [#uses=2 type=i8] [debug line = 17:10]
  %tmp_11 = add i8 %tmp_20_cast, %tmp_8_cast, !dbg !80 ; [#uses=1 type=i8] [debug line = 17:10]
  %tmp_25_cast = zext i8 %tmp_11 to i64, !dbg !80 ; [#uses=1 type=i64] [debug line = 17:10]
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_25_cast, !dbg !80 ; [#uses=1 type=i16*] [debug line = 17:10]
  %tmp_12 = add i8 %tmp_24_cast, %tmp_8_cast, !dbg !81 ; [#uses=1 type=i8] [debug line = 16:48]
  %tmp_26_cast = zext i8 %tmp_12 to i64, !dbg !81 ; [#uses=1 type=i64] [debug line = 16:48]
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i64 0, i64 %tmp_26_cast, !dbg !81 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2, !dbg !81 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_cast = sext i15 %dct_coeff_table_load to i31, !dbg !81 ; [#uses=1 type=i31] [debug line = 16:48]
  %src_load = load i16* %src_addr, align 2, !dbg !80 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_9_cast = sext i16 %src_load to i31, !dbg !80 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_1 = mul i31 %coeff_cast, %tmp_9_cast, !dbg !80 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_1_cast = sext i31 %tmp_1 to i32, !dbg !80  ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp_3 = add nsw i32 %tmp1, %tmp_1_cast, !dbg !80 ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp_3}, i64 0, metadata !82), !dbg !80 ; [debug line = 17:10] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i4 %n_1}, i64 0, metadata !84), !dbg !77 ; [debug line = 15:72] [debug variable = n]
  br label %3, !dbg !77                           ; [debug line = 15:72]

; <label>:5                                       ; preds = %3
  %tmp = trunc i32 %tmp1 to i29, !dbg !75         ; [#uses=1 type=i29] [debug line = 15:11]
  %tmp_s = add i29 4096, %tmp, !dbg !74           ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_7 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_s, i32 13, i32 28), !dbg !74 ; [#uses=1 type=i16] [debug line = 19:7]
  store i16 %tmp_7, i16* %dst_addr, align 2, !dbg !74 ; [debug line = 19:7]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_4) nounwind, !dbg !85 ; [#uses=0 type=i32] [debug line = 20:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !86), !dbg !71 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !71                           ; [debug line = 13:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !87                              ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !88
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !94
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !98), !dbg !106 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !107), !dbg !108 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_in}, metadata !109), !dbg !112 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !113) nounwind, !dbg !120 ; [debug line = 54:22@85:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf_2d_in}, i64 0, metadata !121) nounwind, !dbg !122 ; [debug line = 54:44@85:4] [debug variable = buf]
  br label %1, !dbg !123                          ; [debug line = 59:9@85:4]

; <label>:1                                       ; preds = %5, %0
  %r_i = phi i4 [ 0, %0 ], [ %r, %5 ]             ; [#uses=4 type=i4]
  %exitcond1_i = icmp eq i4 %r_i, -8, !dbg !123   ; [#uses=1 type=i1] [debug line = 59:9@85:4]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %r = add i4 %r_i, 1, !dbg !126                  ; [#uses=1 type=i4] [debug line = 59:61@85:4]
  br i1 %exitcond1_i, label %read_data.exit, label %2, !dbg !123 ; [debug line = 59:9@85:4]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str8) nounwind, !dbg !127 ; [debug line = 59:67@85:4]
  %tmp_8_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8) nounwind, !dbg !127 ; [#uses=1 type=i32] [debug line = 59:67@85:4]
  %tmp = trunc i4 %r_i to i3                      ; [#uses=1 type=i3]
  %tmp_i = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !129 ; [#uses=1 type=i6] [debug line = 62:10@85:4]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i, i3 0) ; [#uses=1 type=i7]
  %tmp_28_cast = zext i7 %tmp_s to i8, !dbg !132  ; [#uses=1 type=i8] [debug line = 61:12@85:4]
  br label %3, !dbg !132                          ; [debug line = 61:12@85:4]

; <label>:3                                       ; preds = %4, %2
  %c_i = phi i4 [ 0, %2 ], [ %c, %4 ]             ; [#uses=4 type=i4]
  %c_i_cast6 = zext i4 %c_i to i6, !dbg !132      ; [#uses=1 type=i6] [debug line = 61:12@85:4]
  %exitcond_i = icmp eq i4 %c_i, -8, !dbg !132    ; [#uses=1 type=i1] [debug line = 61:12@85:4]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %c = add i4 %c_i, 1, !dbg !133                  ; [#uses=1 type=i4] [debug line = 61:64@85:4]
  br i1 %exitcond_i, label %5, label %4, !dbg !132 ; [debug line = 61:12@85:4]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str9) nounwind, !dbg !129 ; [debug line = 62:10@85:4]
  %tmp_9_i = add i6 %c_i_cast6, %tmp_i, !dbg !129 ; [#uses=1 type=i6] [debug line = 62:10@85:4]
  %tmp_i_15 = zext i6 %tmp_9_i to i64, !dbg !129  ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_i_15, !dbg !129 ; [#uses=1 type=i16*] [debug line = 62:10@85:4]
  %input_load = load i16* %input_addr, align 2, !dbg !129 ; [#uses=1 type=i16] [debug line = 62:10@85:4]
  %tmp_1_i_cast = zext i4 %c_i to i8, !dbg !129   ; [#uses=1 type=i8] [debug line = 62:10@85:4]
  %tmp_14 = add i8 %tmp_28_cast, %tmp_1_i_cast, !dbg !129 ; [#uses=1 type=i8] [debug line = 62:10@85:4]
  %tmp_32_cast = zext i8 %tmp_14 to i64, !dbg !129 ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_32_cast, !dbg !129 ; [#uses=1 type=i16*] [debug line = 62:10@85:4]
  store i16 %input_load, i16* %buf_2d_in_addr, align 2, !dbg !129 ; [debug line = 62:10@85:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !134) nounwind, !dbg !133 ; [debug line = 61:64@85:4] [debug variable = c]
  br label %3, !dbg !133                          ; [debug line = 61:64@85:4]

; <label>:5                                       ; preds = %3
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_8_i) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 63:4@85:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !136) nounwind, !dbg !126 ; [debug line = 59:61@85:4] [debug variable = r]
  br label %1, !dbg !126                          ; [debug line = 59:61@85:4]

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_dct_2d([64 x i16]* %buf_2d_in, [64 x i16]* %buf_2d_out) nounwind, !dbg !137 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !138) nounwind, !dbg !143 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %6, !dbg !144                          ; [debug line = 71:9@90:4]

; <label>:6                                       ; preds = %10, %read_data.exit
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %r_1, %10 ] ; [#uses=4 type=i4]
  %exitcond1_i3 = icmp eq i4 %r_i2, -8, !dbg !144 ; [#uses=1 type=i1] [debug line = 71:9@90:4]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %r_1 = add i4 %r_i2, 1, !dbg !147               ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  br i1 %exitcond1_i3, label %write_data.exit, label %7, !dbg !144 ; [debug line = 71:9@90:4]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !148 ; [debug line = 71:67@90:4]
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind, !dbg !148 ; [#uses=1 type=i32] [debug line = 71:67@90:4]
  %tmp_13 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i2, i3 0) ; [#uses=1 type=i7]
  %tmp_30_cast = zext i7 %tmp_13 to i8            ; [#uses=1 type=i8]
  %tmp_4 = trunc i4 %r_i2 to i3                   ; [#uses=1 type=i3]
  %tmp_1_i5 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_4, i3 0), !dbg !150 ; [#uses=1 type=i6] [debug line = 74:10@90:4]
  br label %8, !dbg !153                          ; [debug line = 73:12@90:4]

; <label>:8                                       ; preds = %9, %7
  %c_i6 = phi i4 [ 0, %7 ], [ %c_1, %9 ]          ; [#uses=4 type=i4]
  %c_i6_cast2 = zext i4 %c_i6 to i6, !dbg !153    ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  %exitcond_i7 = icmp eq i4 %c_i6, -8, !dbg !153  ; [#uses=1 type=i1] [debug line = 73:12@90:4]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %c_1 = add i4 %c_i6, 1, !dbg !154               ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  br i1 %exitcond_i7, label %10, label %9, !dbg !153 ; [debug line = 73:12@90:4]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind, !dbg !150 ; [debug line = 74:10@90:4]
  %tmp_3_i_cast = zext i4 %c_i6 to i8, !dbg !150  ; [#uses=1 type=i8] [debug line = 74:10@90:4]
  %tmp_15 = add i8 %tmp_30_cast, %tmp_3_i_cast, !dbg !150 ; [#uses=1 type=i8] [debug line = 74:10@90:4]
  %tmp_33_cast = zext i8 %tmp_15 to i64, !dbg !150 ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_33_cast, !dbg !150 ; [#uses=1 type=i16*] [debug line = 74:10@90:4]
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2, !dbg !150 ; [#uses=1 type=i16] [debug line = 74:10@90:4]
  %tmp_4_i = add i6 %c_i6_cast2, %tmp_1_i5, !dbg !150 ; [#uses=1 type=i6] [debug line = 74:10@90:4]
  %tmp_5_i = zext i6 %tmp_4_i to i64, !dbg !150   ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_5_i, !dbg !150 ; [#uses=1 type=i16*] [debug line = 74:10@90:4]
  store i16 %buf_2d_out_load, i16* %output_addr, align 2, !dbg !150 ; [debug line = 74:10@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !155) nounwind, !dbg !154 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %8, !dbg !154                          ; [debug line = 73:64@90:4]

; <label>:10                                      ; preds = %8
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_2_i) nounwind, !dbg !156 ; [#uses=0 type=i32] [debug line = 75:4@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r_1}, i64 0, metadata !157) nounwind, !dbg !147 ; [debug line = 71:61@90:4] [debug variable = r]
  br label %6, !dbg !147                          ; [debug line = 71:61@90:4]

write_data.exit:                                  ; preds = %6
  ret void, !dbg !158                             ; [debug line = 91:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=12]
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
  %empty_20 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_20
}

; [#uses=9]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_21 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_22 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_23 = or i7 %empty_22, %empty_21          ; [#uses=1 type=i7]
  ret i7 %empty_23
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_24 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_25 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_26 = or i6 %empty_25, %empty_24          ; [#uses=1 type=i6]
  ret i6 %empty_26
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
!29 = metadata !{i32 37, i32 9, metadata !30, null}
!30 = metadata !{i32 786443, metadata !19, i32 37, i32 4, metadata !2, i32 8} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 37, i32 61, metadata !30, null}
!32 = metadata !{i32 38, i32 1, metadata !33, null}
!33 = metadata !{i32 786443, metadata !30, i32 38, i32 1, metadata !2, i32 9} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 39, i32 11, metadata !35, null}
!35 = metadata !{i32 786443, metadata !33, i32 39, i32 7, metadata !2, i32 10} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 39, i32 63, metadata !35, null}
!37 = metadata !{i32 40, i32 10, metadata !38, null}
!38 = metadata !{i32 786443, metadata !35, i32 40, i32 10, metadata !2, i32 11} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 40, i32 43, metadata !35, null}
!40 = metadata !{i32 786688, metadata !19, metadata !"j", metadata !2, i32 28, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 43, i32 9, metadata !42, null}
!42 = metadata !{i32 786443, metadata !19, i32 43, i32 4, metadata !2, i32 12} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 43, i32 61, metadata !42, null}
!44 = metadata !{i32 43, i32 67, metadata !45, null}
!45 = metadata !{i32 786443, metadata !42, i32 43, i32 66, metadata !2, i32 13} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 44, i32 7, metadata !45, null}
!47 = metadata !{i32 48, i32 9, metadata !48, null}
!48 = metadata !{i32 786443, metadata !19, i32 48, i32 4, metadata !2, i32 14} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 48, i32 61, metadata !48, null}
!50 = metadata !{i32 49, i32 1, metadata !51, null}
!51 = metadata !{i32 786443, metadata !48, i32 49, i32 1, metadata !2, i32 15} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 50, i32 11, metadata !53, null}
!53 = metadata !{i32 786443, metadata !51, i32 50, i32 7, metadata !2, i32 16} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 50, i32 63, metadata !53, null}
!55 = metadata !{i32 51, i32 10, metadata !56, null}
!56 = metadata !{i32 786443, metadata !53, i32 51, i32 10, metadata !2, i32 17} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 51, i32 43, metadata !53, null}
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
!80 = metadata !{i32 17, i32 10, metadata !79, null}
!81 = metadata !{i32 16, i32 48, metadata !79, null}
!82 = metadata !{i32 786688, metadata !70, metadata !"tmp", metadata !2, i32 7, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!84 = metadata !{i32 786688, metadata !70, metadata !"n", metadata !2, i32 6, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 20, i32 4, metadata !73, null}
!86 = metadata !{i32 786688, metadata !70, metadata !"k", metadata !2, i32 6, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 21, i32 1, metadata !70, null}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 15, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"input", metadata !92, metadata !"short", i32 0, i32 15}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 63, i32 1}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 15, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"output", metadata !92, metadata !"short", i32 0, i32 15}
!98 = metadata !{i32 786689, metadata !99, metadata !"input", null, i32 78, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct", metadata !"dct", metadata !"", metadata !2, i32 78, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 79} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !102, metadata !102}
!102 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!103 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !8, metadata !104, i32 0, i32 0} ; [ DW_TAG_array_type ]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!106 = metadata !{i32 78, i32 16, metadata !99, null}
!107 = metadata !{i32 786689, metadata !99, metadata !"output", null, i32 78, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 78, i32 38, metadata !99, null}
!109 = metadata !{i32 786688, metadata !110, metadata !"buf_2d_in", metadata !2, i32 81, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 786443, metadata !99, i32 79, i32 1, metadata !2, i32 28} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !8, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!112 = metadata !{i32 81, i32 10, metadata !110, null}
!113 = metadata !{i32 786689, metadata !114, metadata !"input", null, i32 54, metadata !103, i32 0, metadata !119} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 786478, i32 0, metadata !2, metadata !"read_data", metadata !"read_data", metadata !"", metadata !2, i32 54, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 55} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{null, metadata !102, metadata !117}
!117 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ]
!118 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !8, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!119 = metadata !{i32 85, i32 4, metadata !110, null}
!120 = metadata !{i32 54, i32 22, metadata !114, metadata !119}
!121 = metadata !{i32 786689, metadata !114, metadata !"buf", null, i32 54, metadata !111, i32 0, metadata !119} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 54, i32 44, metadata !114, metadata !119}
!123 = metadata !{i32 59, i32 9, metadata !124, metadata !119}
!124 = metadata !{i32 786443, metadata !125, i32 59, i32 4, metadata !2, i32 19} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !114, i32 55, i32 1, metadata !2, i32 18} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 59, i32 61, metadata !124, metadata !119}
!127 = metadata !{i32 59, i32 67, metadata !128, metadata !119}
!128 = metadata !{i32 786443, metadata !124, i32 59, i32 66, metadata !2, i32 20} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 62, i32 10, metadata !130, metadata !119}
!130 = metadata !{i32 786443, metadata !131, i32 62, i32 10, metadata !2, i32 22} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !128, i32 61, i32 7, metadata !2, i32 21} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 61, i32 12, metadata !131, metadata !119}
!133 = metadata !{i32 61, i32 64, metadata !131, metadata !119}
!134 = metadata !{i32 786688, metadata !125, metadata !"c", metadata !2, i32 56, metadata !83, i32 0, metadata !119} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 63, i32 4, metadata !128, metadata !119}
!136 = metadata !{i32 786688, metadata !125, metadata !"r", metadata !2, i32 56, metadata !83, i32 0, metadata !119} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 87, i32 4, metadata !110, null}
!138 = metadata !{i32 786689, metadata !139, metadata !"output", null, i32 66, metadata !103, i32 0, metadata !142} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 786478, i32 0, metadata !2, metadata !"write_data", metadata !"write_data", metadata !"", metadata !2, i32 66, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 67} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{null, metadata !117, metadata !102}
!142 = metadata !{i32 90, i32 4, metadata !110, null}
!143 = metadata !{i32 66, i32 116, metadata !139, metadata !142}
!144 = metadata !{i32 71, i32 9, metadata !145, metadata !142}
!145 = metadata !{i32 786443, metadata !146, i32 71, i32 4, metadata !2, i32 24} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786443, metadata !139, i32 67, i32 1, metadata !2, i32 23} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 71, i32 61, metadata !145, metadata !142}
!148 = metadata !{i32 71, i32 67, metadata !149, metadata !142}
!149 = metadata !{i32 786443, metadata !145, i32 71, i32 66, metadata !2, i32 25} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 74, i32 10, metadata !151, metadata !142}
!151 = metadata !{i32 786443, metadata !152, i32 74, i32 10, metadata !2, i32 27} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786443, metadata !149, i32 73, i32 7, metadata !2, i32 26} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 73, i32 12, metadata !152, metadata !142}
!154 = metadata !{i32 73, i32 64, metadata !152, metadata !142}
!155 = metadata !{i32 786688, metadata !146, metadata !"c", metadata !2, i32 68, metadata !83, i32 0, metadata !142} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 75, i32 4, metadata !149, metadata !142}
!157 = metadata !{i32 786688, metadata !146, metadata !"r", metadata !2, i32 68, metadata !83, i32 0, metadata !142} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 91, i32 1, metadata !110, null}
