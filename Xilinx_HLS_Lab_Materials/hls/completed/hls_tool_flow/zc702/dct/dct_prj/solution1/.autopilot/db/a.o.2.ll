; ModuleID = 'C:/training/hls/labs/hls_tool_flow/zc702/dct/dct_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table = internal unnamed_addr constant [8 x [8 x i16]] [[8 x i16] [i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192], [8 x i16] [i16 11363, i16 9633, i16 6436, i16 2260, i16 -2260, i16 -6436, i16 -9632, i16 -11362], [8 x i16] [i16 10703, i16 4433, i16 -4433, i16 -10703, i16 -10703, i16 -4433, i16 4433, i16 10703], [8 x i16] [i16 9633, i16 -2260, i16 -11362, i16 -6436, i16 6436, i16 11363, i16 2260, i16 -9632], [8 x i16] [i16 8192, i16 -8192, i16 -8192, i16 8192, i16 8192, i16 -8191, i16 -8191, i16 8192], [8 x i16] [i16 6436, i16 -11362, i16 2260, i16 9633, i16 -9632, i16 -2260, i16 11363, i16 -6436], [8 x i16] [i16 4433, i16 -10703, i16 10703, i16 -4433, i16 -4433, i16 10703, i16 -10703, i16 4433], [8 x i16] [i16 2260, i16 -6436, i16 9633, i16 -11362, i16 11363, i16 -9632, i16 6436, i16 -2260]], align 16 ; [#uses=1 type=[8 x [8 x i16]]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str6 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str3 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=24]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([8 x [8 x i16]]* nocapture %in_block, [8 x [8 x i16]]* nocapture %out_block) {
  %row_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_inbuf = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %in_block}, i64 0, metadata !17), !dbg !25 ; [debug line = 23:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %out_block}, i64 0, metadata !26), !dbg !27 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %col_inbuf}, metadata !28), !dbg !30 ; [debug line = 27:109] [debug variable = col_inbuf]
  br label %1, !dbg !31                           ; [debug line = 32:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.4, %3 ]             ; [#uses=4 type=i4]
  %exitcond5 = icmp eq i4 %i, -8, !dbg !31        ; [#uses=1 type=i1] [debug line = 32:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond5, label %.preheader7.preheader, label %3, !dbg !31 ; [debug line = 32:8]

.preheader7.preheader:                            ; preds = %1
  br label %.preheader7, !dbg !33                 ; [debug line = 37:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str2) nounwind, !dbg !35 ; [debug line = 32:66]
  call fastcc void @dct_1d([8 x [8 x i16]]* %in_block, i4 %i, [8 x [8 x i16]]* %row_outbuf, i4 %i), !dbg !37 ; [debug line = 33:7]
  %i.4 = add i4 %i, 1, !dbg !38                   ; [#uses=1 type=i4] [debug line = 32:60]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !39), !dbg !38 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !38                           ; [debug line = 32:60]

.preheader7:                                      ; preds = %9, %.preheader7.preheader
  %j = phi i4 [ %j.2, %9 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i4]
  %exitcond4 = icmp eq i4 %j, -8, !dbg !33        ; [#uses=1 type=i1] [debug line = 37:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond4, label %.preheader6.preheader, label %5, !dbg !33 ; [debug line = 37:9]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !41                 ; [debug line = 43:9]

; <label>:5                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str3) nounwind, !dbg !43 ; [debug line = 38:1]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str3), !dbg !43 ; [#uses=1 type=i32] [debug line = 38:1]
  %tmp. = zext i4 %j to i64, !dbg !45             ; [#uses=2 type=i64] [debug line = 40:10]
  br label %6, !dbg !48                           ; [debug line = 39:11]

; <label>:6                                       ; preds = %8, %5
  %i.1 = phi i4 [ 0, %5 ], [ %i.6, %8 ]           ; [#uses=3 type=i4]
  %exitcond3 = icmp eq i4 %i.1, -8, !dbg !48      ; [#uses=1 type=i1] [debug line = 39:11]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond3, label %9, label %8, !dbg !48  ; [debug line = 39:11]

; <label>:8                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str4) nounwind, !dbg !45 ; [debug line = 40:10]
  %tmp.3 = zext i4 %i.1 to i64, !dbg !45          ; [#uses=2 type=i64] [debug line = 40:10]
  %row_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i64 0, i64 %tmp.3, i64 %tmp., !dbg !45 ; [#uses=1 type=i16*] [debug line = 40:10]
  %row_outbuf.load = load i16* %row_outbuf.addr, align 2, !dbg !45 ; [#uses=1 type=i16] [debug line = 40:10]
  %col_inbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i64 0, i64 %tmp., i64 %tmp.3, !dbg !45 ; [#uses=1 type=i16*] [debug line = 40:10]
  store i16 %row_outbuf.load, i16* %col_inbuf.addr, align 2, !dbg !45 ; [debug line = 40:10]
  %i.6 = add i4 %i.1, 1, !dbg !49                 ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i.6}, i64 0, metadata !39), !dbg !49 ; [debug line = 39:63] [debug variable = i]
  br label %6, !dbg !49                           ; [debug line = 39:63]

; <label>:9                                       ; preds = %6
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str3, i32 %tmp.1), !dbg !50 ; [#uses=0 type=i32] [debug line = 40:43]
  %j.2 = add i4 %j, 1, !dbg !51                   ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j.2}, i64 0, metadata !52), !dbg !51 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader7, !dbg !51                 ; [debug line = 37:61]

.preheader6:                                      ; preds = %12, %.preheader6.preheader
  %i.2 = phi i4 [ %i.5, %12 ], [ 0, %.preheader6.preheader ] ; [#uses=4 type=i4]
  %exitcond2 = icmp eq i4 %i.2, -8, !dbg !41      ; [#uses=1 type=i1] [debug line = 43:9]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond2, label %.preheader.preheader, label %12, !dbg !41 ; [debug line = 43:9]

.preheader.preheader:                             ; preds = %.preheader6
  br label %.preheader, !dbg !53                  ; [debug line = 48:9]

; <label>:12                                      ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str5) nounwind, !dbg !55 ; [debug line = 43:67]
  call fastcc void @dct_1d([8 x [8 x i16]]* %col_inbuf, i4 %i.2, [8 x [8 x i16]]* %col_outbuf, i4 %i.2), !dbg !57 ; [debug line = 44:7]
  %i.5 = add i4 %i.2, 1, !dbg !58                 ; [#uses=1 type=i4] [debug line = 43:61]
  call void @llvm.dbg.value(metadata !{i4 %i.5}, i64 0, metadata !39), !dbg !58 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader6, !dbg !58                 ; [debug line = 43:61]

.preheader:                                       ; preds = %18, %.preheader.preheader
  %j.1 = phi i4 [ %j.3, %18 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %exitcond1 = icmp eq i4 %j.1, -8, !dbg !53      ; [#uses=1 type=i1] [debug line = 48:9]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %20, label %14, !dbg !53 ; [debug line = 48:9]

; <label>:14                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str6) nounwind, !dbg !59 ; [debug line = 49:1]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str6), !dbg !59 ; [#uses=1 type=i32] [debug line = 49:1]
  %tmp.4 = zext i4 %j.1 to i64, !dbg !61          ; [#uses=2 type=i64] [debug line = 51:10]
  br label %15, !dbg !64                          ; [debug line = 50:11]

; <label>:15                                      ; preds = %17, %14
  %i.3 = phi i4 [ 0, %14 ], [ %i.7, %17 ]         ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i.3, -8, !dbg !64       ; [#uses=1 type=i1] [debug line = 50:11]
  %16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %18, label %17, !dbg !64 ; [debug line = 50:11]

; <label>:17                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str7) nounwind, !dbg !61 ; [debug line = 51:10]
  %tmp.5 = zext i4 %i.3 to i64, !dbg !61          ; [#uses=2 type=i64] [debug line = 51:10]
  %col_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i64 0, i64 %tmp.5, i64 %tmp.4, !dbg !61 ; [#uses=1 type=i16*] [debug line = 51:10]
  %col_outbuf.load = load i16* %col_outbuf.addr, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 51:10]
  %out_block.addr = getelementptr [8 x [8 x i16]]* %out_block, i64 0, i64 %tmp.4, i64 %tmp.5, !dbg !61 ; [#uses=1 type=i16*] [debug line = 51:10]
  store i16 %col_outbuf.load, i16* %out_block.addr, align 2, !dbg !61 ; [debug line = 51:10]
  %i.7 = add i4 %i.3, 1, !dbg !65                 ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i.7}, i64 0, metadata !39), !dbg !65 ; [debug line = 50:63] [debug variable = i]
  br label %15, !dbg !65                          ; [debug line = 50:63]

; <label>:18                                      ; preds = %15
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str6, i32 %tmp.6), !dbg !66 ; [#uses=0 type=i32] [debug line = 51:43]
  %j.3 = add i4 %j.1, 1, !dbg !67                 ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j.3}, i64 0, metadata !52), !dbg !67 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !67                  ; [debug line = 48:61]

; <label>:20                                      ; preds = %.preheader
  ret void, !dbg !68                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_1d([8 x [8 x i16]]* nocapture %src, i4 %tmp.2, [8 x [8 x i16]]* nocapture %dst, i4 %tmp.21) {
  %tmp.21.cast = zext i4 %tmp.21 to i64           ; [#uses=2 type=i64]
  %tmp.2.cast = zext i4 %tmp.2 to i64             ; [#uses=2 type=i64]
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.2.cast), !hlsrange !69
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.21.cast), !hlsrange !69
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %src}, i64 0, metadata !70), !dbg !72 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %dst}, i64 0, metadata !73), !dbg !74 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !75                           ; [debug line = 13:9]

; <label>:1                                       ; preds = %7, %0
  %k = phi i4 [ 0, %0 ], [ %k.1, %7 ]             ; [#uses=3 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !75        ; [#uses=1 type=i1] [debug line = 13:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %9, label %3, !dbg !75  ; [debug line = 13:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !78 ; [debug line = 13:67]
  %tmp.4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 13:67]
  %tmp = zext i4 %k to i64, !dbg !80              ; [#uses=2 type=i64] [debug line = 16:48]
  br label %4, !dbg !83                           ; [debug line = 15:11]

; <label>:4                                       ; preds = %6, %3
  %n = phi i4 [ 0, %3 ], [ %n.1, %6 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %3 ], [ %tmp.3, %6 ]       ; [#uses=2 type=i32]
  %tmp1.cast = trunc i32 %tmp1 to i29, !dbg !83   ; [#uses=1 type=i29] [debug line = 15:11]
  %exitcond = icmp eq i4 %n, -8, !dbg !83         ; [#uses=1 type=i1] [debug line = 15:11]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %7, label %6, !dbg !83   ; [debug line = 15:11]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 15:78]
  %tmp.8 = zext i4 %n to i64, !dbg !80            ; [#uses=2 type=i64] [debug line = 16:48]
  %dct_coeff_table.addr = getelementptr inbounds [8 x [8 x i16]]* @dct_coeff_table, i64 0, i64 %tmp, i64 %tmp.8, !dbg !80 ; [#uses=1 type=i16*] [debug line = 16:48]
  %dct_coeff_table.load = load i16* %dct_coeff_table.addr, align 2, !dbg !80 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff = sext i16 %dct_coeff_table.load to i32, !dbg !80 ; [#uses=1 type=i32] [debug line = 16:48]
  call void @llvm.dbg.value(metadata !{i32 %coeff}, i64 0, metadata !85), !dbg !80 ; [debug line = 16:48] [debug variable = coeff]
  %src.addr = getelementptr [8 x [8 x i16]]* %src, i64 0, i64 %tmp.2.cast, i64 %tmp.8, !dbg !87 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.load = load i16* %src.addr, align 2, !dbg !87 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.9 = sext i16 %src.load to i32, !dbg !87    ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.1 = mul nsw i32 %coeff, %tmp.9, !dbg !87   ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.3 = add nsw i32 %tmp1, %tmp.1, !dbg !87    ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp.3}, i64 0, metadata !88), !dbg !87 ; [debug line = 17:10] [debug variable = tmp]
  %n.1 = add i4 %n, 1, !dbg !89                   ; [#uses=1 type=i4] [debug line = 15:72]
  call void @llvm.dbg.value(metadata !{i4 %n.1}, i64 0, metadata !90), !dbg !89 ; [debug line = 15:72] [debug variable = n]
  br label %4, !dbg !89                           ; [debug line = 15:72]

; <label>:7                                       ; preds = %4
  %tmp1.cast.lcssa = phi i29 [ %tmp1.cast, %4 ]   ; [#uses=1 type=i29]
  %tmp. = add i29 %tmp1.cast.lcssa, 4096, !dbg !91 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.6 = lshr i29 %tmp., 13, !dbg !91           ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.7 = trunc i29 %tmp.6 to i16, !dbg !91      ; [#uses=1 type=i16] [debug line = 19:7]
  %dst.addr = getelementptr [8 x [8 x i16]]* %dst, i64 0, i64 %tmp.21.cast, i64 %tmp, !dbg !91 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.7, i16* %dst.addr, align 2, !dbg !91 ; [debug line = 19:7]
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.4) nounwind, !dbg !92 ; [#uses=0 type=i32] [debug line = 20:4]
  %k.1 = add i4 %k, 1, !dbg !93                   ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k.1}, i64 0, metadata !94), !dbg !93 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !93                           ; [debug line = 13:61]

; <label>:9                                       ; preds = %1
  ret void, !dbg !95                              ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !96
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !102
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %buf_2d_in = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !106), !dbg !114 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !115), !dbg !116 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_in}, metadata !117), !dbg !120 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !121), !dbg !122 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !123) nounwind, !dbg !130 ; [debug line = 54:22@85:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_in}, i64 0, metadata !131) nounwind, !dbg !132 ; [debug line = 54:44@85:4] [debug variable = buf]
  br label %1, !dbg !133                          ; [debug line = 59:9@85:4]

; <label>:1                                       ; preds = %7, %0
  %r.i = phi i4 [ 0, %0 ], [ %r, %7 ]             ; [#uses=4 type=i4]
  %r.i.cast7 = zext i4 %r.i to i6, !dbg !133      ; [#uses=1 type=i6] [debug line = 59:9@85:4]
  %exitcond1.i = icmp eq i4 %r.i, -8, !dbg !133   ; [#uses=1 type=i1] [debug line = 59:9@85:4]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %read_data.exit, label %3, !dbg !133 ; [debug line = 59:9@85:4]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str8) nounwind, !dbg !136 ; [debug line = 59:67@85:4]
  %tmp.8.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str8) nounwind, !dbg !136 ; [#uses=1 type=i32] [debug line = 59:67@85:4]
  %tmp.i = shl i6 %r.i.cast7, 3, !dbg !138        ; [#uses=1 type=i6] [debug line = 62:10@85:4]
  %tmp.7.i = zext i4 %r.i to i64, !dbg !138       ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  br label %4, !dbg !141                          ; [debug line = 61:12@85:4]

; <label>:4                                       ; preds = %6, %3
  %c.i = phi i4 [ 0, %3 ], [ %c, %6 ]             ; [#uses=4 type=i4]
  %c.i.cast6 = zext i4 %c.i to i6, !dbg !141      ; [#uses=1 type=i6] [debug line = 61:12@85:4]
  %exitcond.i = icmp eq i4 %c.i, -8, !dbg !141    ; [#uses=1 type=i1] [debug line = 61:12@85:4]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %7, label %6, !dbg !141 ; [debug line = 61:12@85:4]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str9) nounwind, !dbg !138 ; [debug line = 62:10@85:4]
  %tmp.9.i = add i6 %c.i.cast6, %tmp.i, !dbg !138 ; [#uses=1 type=i6] [debug line = 62:10@85:4]
  %tmp..i = zext i6 %tmp.9.i to i64, !dbg !138    ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp..i, !dbg !138 ; [#uses=1 type=i16*] [debug line = 62:10@85:4]
  %input.load = load i16* %input.addr, align 2, !dbg !138 ; [#uses=1 type=i16] [debug line = 62:10@85:4]
  %tmp.1.i = zext i4 %c.i to i64, !dbg !138       ; [#uses=1 type=i64] [debug line = 62:10@85:4]
  %buf.assign.addr = getelementptr [8 x [8 x i16]]* %buf_2d_in, i64 0, i64 %tmp.7.i, i64 %tmp.1.i, !dbg !138 ; [#uses=1 type=i16*] [debug line = 62:10@85:4]
  store i16 %input.load, i16* %buf.assign.addr, align 2, !dbg !138 ; [debug line = 62:10@85:4]
  %c = add i4 %c.i, 1, !dbg !142                  ; [#uses=1 type=i4] [debug line = 61:64@85:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !143) nounwind, !dbg !142 ; [debug line = 61:64@85:4] [debug variable = c]
  br label %4, !dbg !142                          ; [debug line = 61:64@85:4]

; <label>:7                                       ; preds = %4
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str8, i32 %tmp.8.i) nounwind, !dbg !144 ; [#uses=0 type=i32] [debug line = 63:4@85:4]
  %r = add i4 %r.i, 1, !dbg !145                  ; [#uses=1 type=i4] [debug line = 59:61@85:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !146) nounwind, !dbg !145 ; [debug line = 59:61@85:4] [debug variable = r]
  br label %1, !dbg !145                          ; [debug line = 59:61@85:4]

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([8 x [8 x i16]]* %buf_2d_in, [8 x [8 x i16]]* %buf_2d_out) nounwind, !dbg !147 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_out}, i64 0, metadata !148) nounwind, !dbg !153 ; [debug line = 66:23@90:4] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !154) nounwind, !dbg !155 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %9, !dbg !156                          ; [debug line = 71:9@90:4]

; <label>:9                                       ; preds = %15, %read_data.exit
  %r.i2 = phi i4 [ 0, %read_data.exit ], [ %r.1, %15 ] ; [#uses=4 type=i4]
  %r.i2.cast4 = zext i4 %r.i2 to i6, !dbg !156    ; [#uses=1 type=i6] [debug line = 71:9@90:4]
  %exitcond1.i3 = icmp eq i4 %r.i2, -8, !dbg !156 ; [#uses=1 type=i1] [debug line = 71:9@90:4]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i3, label %write_data.exit, label %11, !dbg !156 ; [debug line = 71:9@90:4]

; <label>:11                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !159 ; [debug line = 71:67@90:4]
  %tmp.2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10) nounwind, !dbg !159 ; [#uses=1 type=i32] [debug line = 71:67@90:4]
  %tmp.i4 = zext i4 %r.i2 to i64, !dbg !161       ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %tmp.1.i5 = shl i6 %r.i2.cast4, 3, !dbg !161    ; [#uses=1 type=i6] [debug line = 74:10@90:4]
  br label %12, !dbg !164                         ; [debug line = 73:12@90:4]

; <label>:12                                      ; preds = %14, %11
  %c.i6 = phi i4 [ 0, %11 ], [ %c.1, %14 ]        ; [#uses=4 type=i4]
  %c.i6.cast2 = zext i4 %c.i6 to i6, !dbg !164    ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  %exitcond.i7 = icmp eq i4 %c.i6, -8, !dbg !164  ; [#uses=1 type=i1] [debug line = 73:12@90:4]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i7, label %15, label %14, !dbg !164 ; [debug line = 73:12@90:4]

; <label>:14                                      ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !161 ; [debug line = 74:10@90:4]
  %tmp.3.i = zext i4 %c.i6 to i64, !dbg !161      ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %buf.assign.1.addr = getelementptr [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.i4, i64 %tmp.3.i, !dbg !161 ; [#uses=1 type=i16*] [debug line = 74:10@90:4]
  %buf.assign.1.load = load i16* %buf.assign.1.addr, align 2, !dbg !161 ; [#uses=1 type=i16] [debug line = 74:10@90:4]
  %tmp.4.i = add i6 %c.i6.cast2, %tmp.1.i5, !dbg !161 ; [#uses=1 type=i6] [debug line = 74:10@90:4]
  %tmp.5.i = zext i6 %tmp.4.i to i64, !dbg !161   ; [#uses=1 type=i64] [debug line = 74:10@90:4]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5.i, !dbg !161 ; [#uses=1 type=i16*] [debug line = 74:10@90:4]
  store i16 %buf.assign.1.load, i16* %output.addr, align 2, !dbg !161 ; [debug line = 74:10@90:4]
  %c.1 = add i4 %c.i6, 1, !dbg !165               ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !166) nounwind, !dbg !165 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %12, !dbg !165                         ; [debug line = 73:64@90:4]

; <label>:15                                      ; preds = %12
  %16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.2.i) nounwind, !dbg !167 ; [#uses=0 type=i32] [debug line = 75:4@90:4]
  %r.1 = add i4 %r.i2, 1, !dbg !168               ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !169) nounwind, !dbg !168 ; [debug line = 71:61@90:4] [debug variable = r]
  br label %9, !dbg !168                          ; [debug line = 71:61@90:4]

write_data.exit:                                  ; preds = %9
  ret void, !dbg !170                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=12]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=12]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_SpecKeepAssert(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/hls/labs/hls_tool_flow/zc702/dct/dct_prj/solution1/.autopilot/db/dct.pragma.2.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Chls_tool_flow\5Czc702\5Cdct", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786484, i32 0, metadata !4, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"", metadata !5, i32 8, metadata !13, i32 1, i32 1, [8 x [8 x i16]]* @dct_coeff_table} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !5, i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !"dct.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Chls_tool_flow\5Czc702\5Cdct", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!7 = metadata !{null, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !5, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !14, metadata !15, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!15 = metadata !{metadata !16, metadata !16}
!16 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!17 = metadata !{i32 786689, metadata !18, metadata !"in_block", null, i32 23, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!18 = metadata !{i32 786478, i32 0, metadata !5, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !5, i32 23, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 25} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21, metadata !21}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !9, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{metadata !16}
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !9, metadata !15, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{i32 23, i32 24, metadata !18, null}
!26 = metadata !{i32 786689, metadata !18, metadata !"out_block", null, i32 24, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 24, i32 18, metadata !18, null}
!28 = metadata !{i32 786688, metadata !29, metadata !"col_inbuf", metadata !5, i32 27, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!29 = metadata !{i32 786443, metadata !18, i32 25, i32 1, metadata !5, i32 5} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 27, i32 109, metadata !29, null}
!31 = metadata !{i32 32, i32 8, metadata !32, null}
!32 = metadata !{i32 786443, metadata !29, i32 32, i32 4, metadata !5, i32 6} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 37, i32 9, metadata !34, null}
!34 = metadata !{i32 786443, metadata !29, i32 37, i32 4, metadata !5, i32 8} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 32, i32 66, metadata !36, null}
!36 = metadata !{i32 786443, metadata !32, i32 32, i32 65, metadata !5, i32 7} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 33, i32 7, metadata !36, null}
!38 = metadata !{i32 32, i32 60, metadata !32, null}
!39 = metadata !{i32 786688, metadata !29, metadata !"i", metadata !5, i32 28, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 43, i32 9, metadata !42, null}
!42 = metadata !{i32 786443, metadata !29, i32 43, i32 4, metadata !5, i32 12} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 38, i32 1, metadata !44, null}
!44 = metadata !{i32 786443, metadata !34, i32 38, i32 1, metadata !5, i32 9} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 40, i32 10, metadata !46, null}
!46 = metadata !{i32 786443, metadata !47, i32 40, i32 10, metadata !5, i32 11} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !44, i32 39, i32 7, metadata !5, i32 10} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 39, i32 11, metadata !47, null}
!49 = metadata !{i32 39, i32 63, metadata !47, null}
!50 = metadata !{i32 40, i32 43, metadata !47, null}
!51 = metadata !{i32 37, i32 61, metadata !34, null}
!52 = metadata !{i32 786688, metadata !29, metadata !"j", metadata !5, i32 28, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 48, i32 9, metadata !54, null}
!54 = metadata !{i32 786443, metadata !29, i32 48, i32 4, metadata !5, i32 14} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 43, i32 67, metadata !56, null}
!56 = metadata !{i32 786443, metadata !42, i32 43, i32 66, metadata !5, i32 13} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 44, i32 7, metadata !56, null}
!58 = metadata !{i32 43, i32 61, metadata !42, null}
!59 = metadata !{i32 49, i32 1, metadata !60, null}
!60 = metadata !{i32 786443, metadata !54, i32 49, i32 1, metadata !5, i32 15} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 51, i32 10, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 51, i32 10, metadata !5, i32 17} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !60, i32 50, i32 7, metadata !5, i32 16} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 50, i32 11, metadata !63, null}
!65 = metadata !{i32 50, i32 63, metadata !63, null}
!66 = metadata !{i32 51, i32 43, metadata !63, null}
!67 = metadata !{i32 48, i32 61, metadata !54, null}
!68 = metadata !{i32 52, i32 1, metadata !29, null}
!69 = metadata !{i4 0, i4 7, i4 0, i4 7}          
!70 = metadata !{i32 786689, metadata !4, metadata !"src", null, i32 4, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !9, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!72 = metadata !{i32 4, i32 24, metadata !4, null}
!73 = metadata !{i32 786689, metadata !4, metadata !"dst", null, i32 4, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 4, i32 81, metadata !4, null}
!75 = metadata !{i32 13, i32 9, metadata !76, null}
!76 = metadata !{i32 786443, metadata !77, i32 13, i32 4, metadata !5, i32 1} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786443, metadata !4, i32 5, i32 1, metadata !5, i32 0} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 13, i32 67, metadata !79, null}
!79 = metadata !{i32 786443, metadata !76, i32 13, i32 66, metadata !5, i32 2} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 16, i32 48, metadata !81, null}
!81 = metadata !{i32 786443, metadata !82, i32 15, i32 77, metadata !5, i32 4} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !79, i32 15, i32 7, metadata !5, i32 3} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 15, i32 11, metadata !82, null}
!84 = metadata !{i32 15, i32 78, metadata !81, null}
!85 = metadata !{i32 786688, metadata !81, metadata !"coeff", metadata !5, i32 16, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!87 = metadata !{i32 17, i32 10, metadata !81, null}
!88 = metadata !{i32 786688, metadata !77, metadata !"tmp", metadata !5, i32 7, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 15, i32 72, metadata !82, null}
!90 = metadata !{i32 786688, metadata !77, metadata !"n", metadata !5, i32 6, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 19, i32 7, metadata !79, null}
!92 = metadata !{i32 20, i32 4, metadata !79, null}
!93 = metadata !{i32 13, i32 61, metadata !76, null}
!94 = metadata !{i32 786688, metadata !77, metadata !"k", metadata !5, i32 6, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 21, i32 1, metadata !77, null}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 0, i32 15, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"input", metadata !100, metadata !"short", i32 0, i32 15}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 63, i32 1}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 15, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"output", metadata !100, metadata !"short", i32 0, i32 15}
!106 = metadata !{i32 786689, metadata !107, metadata !"input", null, i32 78, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 786478, i32 0, metadata !5, metadata !"dct", metadata !"dct", metadata !"", metadata !5, i32 78, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 79} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{null, metadata !110, metadata !110}
!110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!111 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !10, metadata !112, i32 0, i32 0} ; [ DW_TAG_array_type ]
!112 = metadata !{metadata !113}
!113 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!114 = metadata !{i32 78, i32 16, metadata !107, null}
!115 = metadata !{i32 786689, metadata !107, metadata !"output", null, i32 78, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 78, i32 38, metadata !107, null}
!117 = metadata !{i32 786688, metadata !118, metadata !"buf_2d_in", metadata !5, i32 81, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 786443, metadata !107, i32 79, i32 1, metadata !5, i32 28} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !10, metadata !15, i32 0, i32 0} ; [ DW_TAG_array_type ]
!120 = metadata !{i32 81, i32 10, metadata !118, null}
!121 = metadata !{i32 786688, metadata !118, metadata !"buf_2d_out", metadata !5, i32 82, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 82, i32 10, metadata !118, null}
!123 = metadata !{i32 786689, metadata !124, metadata !"input", null, i32 54, metadata !111, i32 0, metadata !129} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 786478, i32 0, metadata !5, metadata !"read_data", metadata !"read_data", metadata !"", metadata !5, i32 54, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 55} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!126 = metadata !{null, metadata !110, metadata !127}
!127 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ]
!128 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !10, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!129 = metadata !{i32 85, i32 4, metadata !118, null}
!130 = metadata !{i32 54, i32 22, metadata !124, metadata !129}
!131 = metadata !{i32 786689, metadata !124, metadata !"buf", null, i32 54, metadata !119, i32 0, metadata !129} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 54, i32 44, metadata !124, metadata !129}
!133 = metadata !{i32 59, i32 9, metadata !134, metadata !129}
!134 = metadata !{i32 786443, metadata !135, i32 59, i32 4, metadata !5, i32 19} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 786443, metadata !124, i32 55, i32 1, metadata !5, i32 18} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 59, i32 67, metadata !137, metadata !129}
!137 = metadata !{i32 786443, metadata !134, i32 59, i32 66, metadata !5, i32 20} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 62, i32 10, metadata !139, metadata !129}
!139 = metadata !{i32 786443, metadata !140, i32 62, i32 10, metadata !5, i32 22} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 786443, metadata !137, i32 61, i32 7, metadata !5, i32 21} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 61, i32 12, metadata !140, metadata !129}
!142 = metadata !{i32 61, i32 64, metadata !140, metadata !129}
!143 = metadata !{i32 786688, metadata !135, metadata !"c", metadata !5, i32 56, metadata !86, i32 0, metadata !129} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 63, i32 4, metadata !137, metadata !129}
!145 = metadata !{i32 59, i32 61, metadata !134, metadata !129}
!146 = metadata !{i32 786688, metadata !135, metadata !"r", metadata !5, i32 56, metadata !86, i32 0, metadata !129} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 87, i32 4, metadata !118, null}
!148 = metadata !{i32 786689, metadata !149, metadata !"buf", null, i32 66, metadata !119, i32 0, metadata !152} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 786478, i32 0, metadata !5, metadata !"write_data", metadata !"write_data", metadata !"", metadata !5, i32 66, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 67} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!151 = metadata !{null, metadata !127, metadata !110}
!152 = metadata !{i32 90, i32 4, metadata !118, null}
!153 = metadata !{i32 66, i32 23, metadata !149, metadata !152}
!154 = metadata !{i32 786689, metadata !149, metadata !"output", null, i32 66, metadata !111, i32 0, metadata !152} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 66, i32 116, metadata !149, metadata !152}
!156 = metadata !{i32 71, i32 9, metadata !157, metadata !152}
!157 = metadata !{i32 786443, metadata !158, i32 71, i32 4, metadata !5, i32 24} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !149, i32 67, i32 1, metadata !5, i32 23} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 71, i32 67, metadata !160, metadata !152}
!160 = metadata !{i32 786443, metadata !157, i32 71, i32 66, metadata !5, i32 25} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 74, i32 10, metadata !162, metadata !152}
!162 = metadata !{i32 786443, metadata !163, i32 74, i32 10, metadata !5, i32 27} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786443, metadata !160, i32 73, i32 7, metadata !5, i32 26} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 73, i32 12, metadata !163, metadata !152}
!165 = metadata !{i32 73, i32 64, metadata !163, metadata !152}
!166 = metadata !{i32 786688, metadata !158, metadata !"c", metadata !5, i32 68, metadata !86, i32 0, metadata !152} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 75, i32 4, metadata !160, metadata !152}
!168 = metadata !{i32 71, i32 61, metadata !157, metadata !152}
!169 = metadata !{i32 786688, metadata !158, metadata !"r", metadata !5, i32 68, metadata !86, i32 0, metadata !152} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 91, i32 1, metadata !118, null}
