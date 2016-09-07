; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution5/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=1 type=[8 x i14]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@Xpose_Row_Outer_Loop_Xpose_Row = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@Xpose_Col_Outer_Loop_Xpose_Col = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@WR_Loop_Row_WR_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@RD_Loop_Row_RD_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@p_str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=1]
define internal fastcc void @dct_write_data([64 x i16]* nocapture %buf, [64 x i16]* nocapture %output) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf}, i64 0, metadata !0), !dbg !15 ; [debug line = 66:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !16), !dbg !20 ; [debug line = 66:116] [debug variable = output]
  br label %1, !dbg !21                           ; [debug line = 71:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %tmp_mid2_v, %.reset ] ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %r_1 = add i4 1, %r, !dbg !24                   ; [#uses=1 type=i4] [debug line = 71:61]
  call void @llvm.dbg.value(metadata !{i4 %r_1}, i64 0, metadata !25), !dbg !24 ; [debug line = 71:61] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond2 = icmp eq i4 %c, -8, !dbg !27        ; [#uses=2 type=i1] [debug line = 73:12]
  %c_mid2 = select i1 %exitcond2, i4 0, i4 %c     ; [#uses=3 type=i4]
  %tmp_mid2_v = select i1 %exitcond2, i4 %r_1, i4 %r, !dbg !30 ; [#uses=3 type=i4] [debug line = 74:1]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_1_cast = zext i7 %tmp to i8                ; [#uses=1 type=i8]
  %tmp_1 = trunc i4 %tmp_mid2_v to i3             ; [#uses=1 type=i3]
  %tmp_1_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_1, i3 0), !dbg !30 ; [#uses=1 type=i6] [debug line = 74:1]
  %c_cast6 = zext i4 %c_mid2 to i6, !dbg !27      ; [#uses=1 type=i6] [debug line = 73:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind, !dbg !32 ; [debug line = 74:2]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13), !dbg !32 ; [#uses=1 type=i32] [debug line = 74:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !33 ; [debug line = 75:1]
  %tmp_3_cast = zext i4 %c_mid2 to i8, !dbg !30   ; [#uses=1 type=i8] [debug line = 74:1]
  %tmp_7 = add i8 %tmp_1_cast, %tmp_3_cast, !dbg !30 ; [#uses=1 type=i8] [debug line = 74:1]
  %tmp_7_cast = zext i8 %tmp_7 to i64, !dbg !30   ; [#uses=1 type=i64] [debug line = 74:1]
  %buf_addr = getelementptr [64 x i16]* %buf, i64 0, i64 %tmp_7_cast, !dbg !30 ; [#uses=1 type=i16*] [debug line = 74:1]
  %buf_load = load i16* %buf_addr, align 2, !dbg !30 ; [#uses=1 type=i16] [debug line = 74:1]
  %tmp_4 = add i6 %c_cast6, %tmp_1_mid2, !dbg !30 ; [#uses=1 type=i6] [debug line = 74:1]
  %tmp_5 = zext i6 %tmp_4 to i64, !dbg !30        ; [#uses=1 type=i64] [debug line = 74:1]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_5, !dbg !30 ; [#uses=1 type=i16*] [debug line = 74:1]
  store i16 %buf_load, i16* %output_addr, align 2, !dbg !30 ; [debug line = 74:1]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_6), !dbg !34 ; [#uses=0 type=i32] [debug line = 74:67]
  %c_1 = add i4 1, %c_mid2, !dbg !35              ; [#uses=1 type=i4] [debug line = 73:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !36), !dbg !35 ; [debug line = 73:64] [debug variable = c]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !37                              ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @dct_read_data([64 x i16]* nocapture %input, [8 x i16]* nocapture %buf_0, [8 x i16]* nocapture %buf_1, [8 x i16]* nocapture %buf_2, [8 x i16]* nocapture %buf_3, [8 x i16]* nocapture %buf_4, [8 x i16]* nocapture %buf_5, [8 x i16]* nocapture %buf_6, [8 x i16]* nocapture %buf_7) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !38), !dbg !42 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_0}, i64 0, metadata !43), !dbg !46 ; [debug line = 54:44] [debug variable = buf[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_1}, i64 0, metadata !47), !dbg !46 ; [debug line = 54:44] [debug variable = buf[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_2}, i64 0, metadata !48), !dbg !46 ; [debug line = 54:44] [debug variable = buf[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_3}, i64 0, metadata !49), !dbg !46 ; [debug line = 54:44] [debug variable = buf[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_4}, i64 0, metadata !50), !dbg !46 ; [debug line = 54:44] [debug variable = buf[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_5}, i64 0, metadata !51), !dbg !46 ; [debug line = 54:44] [debug variable = buf[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_6}, i64 0, metadata !52), !dbg !46 ; [debug line = 54:44] [debug variable = buf[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf_7}, i64 0, metadata !53), !dbg !46 ; [debug line = 54:44] [debug variable = buf[7]]
  br label %1, !dbg !54                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %ifBlock, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %tmp_mid2_v_v, %ifBlock ] ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_2, %ifBlock ]       ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_1), !dbg !57 ; [#uses=0 type=i32] [debug line = 62:66]
  %c_2 = add i4 %c_mid2, 1, !dbg !61              ; [#uses=1 type=i4] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i4 %c_2}, i64 0, metadata !62), !dbg !61 ; [debug line = 61:64] [debug variable = c]
  br label %1

.reset:                                           ; preds = %1
  %r_2 = add i4 1, %r, !dbg !63                   ; [#uses=1 type=i4] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i4 %r_2}, i64 0, metadata !64), !dbg !63 ; [debug line = 59:61] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_Col_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %c, -8, !dbg !65         ; [#uses=2 type=i1] [debug line = 61:12]
  %c_mid2 = select i1 %exitcond, i4 0, i4 %c      ; [#uses=3 type=i4]
  %tmp_mid2_v_v = select i1 %exitcond, i4 %r_2, i4 %r, !dbg !66 ; [#uses=3 type=i4] [debug line = 62:1]
  %tmp = trunc i4 %tmp_mid2_v_v to i3             ; [#uses=1 type=i3]
  %tmp_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !66 ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp_7_mid2 = zext i4 %tmp_mid2_v_v to i64, !dbg !66 ; [#uses=8 type=i64] [debug line = 62:1]
  %c_cast = zext i4 %c_mid2 to i6, !dbg !65       ; [#uses=1 type=i6] [debug line = 61:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind, !dbg !67 ; [debug line = 62:2]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11), !dbg !67 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !68 ; [debug line = 63:1]
  %tmp_9 = add i6 %c_cast, %tmp_mid2, !dbg !66    ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp_s = zext i6 %tmp_9 to i64, !dbg !66        ; [#uses=1 type=i64] [debug line = 62:1]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_s, !dbg !66 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input_load = load i16* %input_addr, align 2, !dbg !66 ; [#uses=8 type=i16] [debug line = 62:1]
  %tmp_2 = trunc i4 %c_mid2 to i3                 ; [#uses=1 type=i3]
  switch i3 %tmp_2, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !66                                     ; [debug line = 62:1]

; <label>:2                                       ; preds = %1
  ret void, !dbg !69                              ; [debug line = 64:1]

branch0:                                          ; preds = %.reset
  %buf_0_addr = getelementptr [8 x i16]* %buf_0, i64 0, i64 %tmp_7_mid2, !dbg !66 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_0_addr, align 2, !dbg !66 ; [debug line = 62:1]
  br label %ifBlock, !dbg !66                     ; [debug line = 62:1]

branch1:                                          ; preds = %.reset
  %buf_1_addr = getelementptr [8 x i16]* %buf_1, i64 0, i64 %tmp_7_mid2, !dbg !66 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_1_addr, align 2, !dbg !66 ; [debug line = 62:1]
  br label %ifBlock, !dbg !66                     ; [debug line = 62:1]

branch2:                                          ; preds = %.reset
  %buf_2_addr = getelementptr [8 x i16]* %buf_2, i64 0, i64 %tmp_7_mid2, !dbg !66 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_2_addr, align 2, !dbg !66 ; [debug line = 62:1]
  br label %ifBlock, !dbg !66                     ; [debug line = 62:1]

branch3:                                          ; preds = %.reset
  %buf_3_addr = getelementptr [8 x i16]* %buf_3, i64 0, i64 %tmp_7_mid2, !dbg !66 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_3_addr, align 2, !dbg !66 ; [debug line = 62:1]
  br label %ifBlock, !dbg !66                     ; [debug line = 62:1]

branch4:                                          ; preds = %.reset
  %buf_4_addr = getelementptr [8 x i16]* %buf_4, i64 0, i64 %tmp_7_mid2, !dbg !66 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_4_addr, align 2, !dbg !66 ; [debug line = 62:1]
  br label %ifBlock, !dbg !66                     ; [debug line = 62:1]

branch5:                                          ; preds = %.reset
  %buf_5_addr = getelementptr [8 x i16]* %buf_5, i64 0, i64 %tmp_7_mid2, !dbg !66 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_5_addr, align 2, !dbg !66 ; [debug line = 62:1]
  br label %ifBlock, !dbg !66                     ; [debug line = 62:1]

branch6:                                          ; preds = %.reset
  %buf_6_addr = getelementptr [8 x i16]* %buf_6, i64 0, i64 %tmp_7_mid2, !dbg !66 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_6_addr, align 2, !dbg !66 ; [debug line = 62:1]
  br label %ifBlock, !dbg !66                     ; [debug line = 62:1]

branch7:                                          ; preds = %.reset
  %buf_7_addr = getelementptr [8 x i16]* %buf_7, i64 0, i64 %tmp_7_mid2, !dbg !66 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input_load, i16* %buf_7_addr, align 2, !dbg !66 ; [debug line = 62:1]
  br label %ifBlock, !dbg !66                     ; [debug line = 62:1]
}

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=34]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_dct_2d([8 x i16]* nocapture %in_block_0, [8 x i16]* nocapture %in_block_1, [8 x i16]* nocapture %in_block_2, [8 x i16]* nocapture %in_block_3, [8 x i16]* nocapture %in_block_4, [8 x i16]* nocapture %in_block_5, [8 x i16]* nocapture %in_block_6, [8 x i16]* nocapture %in_block_7, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf_0 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_1 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_2 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_3 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_4 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_5 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_6 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_7 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_0}, i64 0, metadata !70), !dbg !80 ; [debug line = 23:24] [debug variable = in_block[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_1}, i64 0, metadata !81), !dbg !80 ; [debug line = 23:24] [debug variable = in_block[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_2}, i64 0, metadata !82), !dbg !80 ; [debug line = 23:24] [debug variable = in_block[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_3}, i64 0, metadata !83), !dbg !80 ; [debug line = 23:24] [debug variable = in_block[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_4}, i64 0, metadata !84), !dbg !80 ; [debug line = 23:24] [debug variable = in_block[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_5}, i64 0, metadata !85), !dbg !80 ; [debug line = 23:24] [debug variable = in_block[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_6}, i64 0, metadata !86), !dbg !80 ; [debug line = 23:24] [debug variable = in_block[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block_7}, i64 0, metadata !87), !dbg !80 ; [debug line = 23:24] [debug variable = in_block[7]]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %out_block}, i64 0, metadata !88), !dbg !89 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_0}, metadata !90), !dbg !93 ; [debug line = 27:109] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_1}, metadata !94), !dbg !93 ; [debug line = 27:109] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_2}, metadata !95), !dbg !93 ; [debug line = 27:109] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_3}, metadata !96), !dbg !93 ; [debug line = 27:109] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_4}, metadata !97), !dbg !93 ; [debug line = 27:109] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_5}, metadata !98), !dbg !93 ; [debug line = 27:109] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_6}, metadata !99), !dbg !93 ; [debug line = 27:109] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_7}, metadata !100), !dbg !93 ; [debug line = 27:109] [debug variable = col_inbuf[7]]
  br label %1, !dbg !101                          ; [debug line = 32:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %exitcond5 = icmp eq i4 %i, -8, !dbg !101       ; [#uses=1 type=i1] [debug line = 32:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !103                  ; [#uses=1 type=i4] [debug line = 32:60]
  br i1 %exitcond5, label %.preheader7.preheader, label %2, !dbg !101 ; [debug line = 32:8]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind, !dbg !104 ; [debug line = 32:66]
  call fastcc void @dct_dct_1d([8 x i16]* %in_block_0, [8 x i16]* %in_block_1, [8 x i16]* %in_block_2, [8 x i16]* %in_block_3, [8 x i16]* %in_block_4, [8 x i16]* %in_block_5, [8 x i16]* %in_block_6, [8 x i16]* %in_block_7, i4 %i, [64 x i16]* %row_outbuf, i4 %i), !dbg !106 ; [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !107), !dbg !103 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !103                          ; [debug line = 32:60]

.preheader7.preheader:                            ; preds = %ifBlock, %1
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %ifBlock ], [ 0, %1 ] ; [#uses=2 type=i7]
  %j = phi i4 [ %tmp_mid2_v, %ifBlock ], [ 0, %1 ] ; [#uses=2 type=i4]
  %i_1 = phi i4 [ %i_6, %ifBlock ], [ 0, %1 ]     ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader6, label %.preheader7

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_6), !dbg !109 ; [#uses=0 type=i32] [debug line = 40:34]
  %i_6 = add i4 %i_1_mid2, 1, !dbg !114           ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !107), !dbg !114 ; [debug line = 39:63] [debug variable = i]
  br label %.preheader7.preheader

.preheader7:                                      ; preds = %.preheader7.preheader
  %j_2 = add i4 1, %j, !dbg !115                  ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !116), !dbg !115 ; [debug line = 37:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %i_1, -8, !dbg !117      ; [#uses=2 type=i1] [debug line = 39:11]
  %i_1_mid2 = select i1 %exitcond, i4 0, i4 %i_1  ; [#uses=3 type=i4]
  %tmp_mid2_v = select i1 %exitcond, i4 %j_2, i4 %j, !dbg !118 ; [#uses=3 type=i4] [debug line = 40:1]
  %tmp_mid2 = zext i4 %tmp_mid2_v to i64, !dbg !118 ; [#uses=8 type=i64] [debug line = 40:1]
  %tmp_mid2_cast = zext i4 %tmp_mid2_v to i8, !dbg !119 ; [#uses=1 type=i8] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !119 ; [debug line = 40:2]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6), !dbg !119 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !120 ; [debug line = 41:1]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_9_cast = zext i7 %tmp to i8, !dbg !118     ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_s = add i8 %tmp_9_cast, %tmp_mid2_cast, !dbg !118 ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_10_cast = zext i8 %tmp_s to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 40:1]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_10_cast, !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !118 ; [#uses=8 type=i16] [debug line = 40:1]
  %tmp_3 = trunc i4 %i_1_mid2 to i3               ; [#uses=1 type=i3]
  switch i3 %tmp_3, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !118                                    ; [debug line = 40:1]

.preheader6:                                      ; preds = %3, %.preheader7.preheader
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader7.preheader ] ; [#uses=4 type=i4]
  %exitcond2 = icmp eq i4 %i_2, -8, !dbg !121     ; [#uses=1 type=i1] [debug line = 43:9]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !123                ; [#uses=1 type=i4] [debug line = 43:61]
  br i1 %exitcond2, label %.preheader.preheader, label %3, !dbg !121 ; [debug line = 43:9]

; <label>:3                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind, !dbg !124 ; [debug line = 43:67]
  call fastcc void @dct_dct_1d([8 x i16]* %col_inbuf_0, [8 x i16]* %col_inbuf_1, [8 x i16]* %col_inbuf_2, [8 x i16]* %col_inbuf_3, [8 x i16]* %col_inbuf_4, [8 x i16]* %col_inbuf_5, [8 x i16]* %col_inbuf_6, [8 x i16]* %col_inbuf_7, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2), !dbg !126 ; [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !107), !dbg !123 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader6, !dbg !123                ; [debug line = 43:61]

.preheader.preheader:                             ; preds = %.preheader, %.preheader6
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i7]
  %j_1 = phi i4 [ %tmp_4_mid2_v, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i4]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader6 ] ; [#uses=2 type=i4]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %j_3 = add i4 %j_1, 1, !dbg !127                ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j_3}, i64 0, metadata !116), !dbg !127 ; [debug line = 48:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i4 %i_3, -8, !dbg !129     ; [#uses=2 type=i1] [debug line = 50:11]
  %i_3_mid2 = select i1 %exitcond4, i4 0, i4 %i_3 ; [#uses=3 type=i4]
  %tmp_4_mid2_v = select i1 %exitcond4, i4 %j_3, i4 %j_1, !dbg !132 ; [#uses=3 type=i4] [debug line = 51:1]
  %tmp_4_mid2_cast = zext i4 %tmp_4_mid2_v to i8  ; [#uses=1 type=i8]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_4_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_12_cast = zext i7 %tmp_1 to i8, !dbg !134  ; [#uses=1 type=i8] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind, !dbg !134 ; [debug line = 51:2]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9), !dbg !134 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !135 ; [debug line = 52:1]
  %tmp_5_cast = zext i4 %i_3_mid2 to i8, !dbg !132 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_2 = add i8 %tmp_5_cast, %tmp_12_cast, !dbg !132 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_13_cast = zext i8 %tmp_2 to i64, !dbg !132 ; [#uses=1 type=i64] [debug line = 51:1]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_13_cast, !dbg !132 ; [#uses=1 type=i16*] [debug line = 51:1]
  %tmp_4 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_15_cast = zext i7 %tmp_4 to i8, !dbg !132  ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_5 = add i8 %tmp_4_mid2_cast, %tmp_15_cast, !dbg !132 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_16_cast = zext i8 %tmp_5 to i64, !dbg !132 ; [#uses=1 type=i64] [debug line = 51:1]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_16_cast, !dbg !132 ; [#uses=1 type=i16*] [debug line = 51:1]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !132 ; [#uses=1 type=i16] [debug line = 51:1]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !132 ; [debug line = 51:1]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_8), !dbg !136 ; [#uses=0 type=i32] [debug line = 51:34]
  %i_7 = add i4 %i_3_mid2, 1, !dbg !137           ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !107), !dbg !137 ; [debug line = 50:63] [debug variable = i]
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void, !dbg !138                             ; [debug line = 52:1]

branch0:                                          ; preds = %.preheader7
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_mid2, !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_0_addr, align 2, !dbg !118 ; [debug line = 40:1]
  br label %ifBlock, !dbg !118                    ; [debug line = 40:1]

branch1:                                          ; preds = %.preheader7
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_mid2, !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_1_addr, align 2, !dbg !118 ; [debug line = 40:1]
  br label %ifBlock, !dbg !118                    ; [debug line = 40:1]

branch2:                                          ; preds = %.preheader7
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_mid2, !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_2_addr, align 2, !dbg !118 ; [debug line = 40:1]
  br label %ifBlock, !dbg !118                    ; [debug line = 40:1]

branch3:                                          ; preds = %.preheader7
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_mid2, !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_3_addr, align 2, !dbg !118 ; [debug line = 40:1]
  br label %ifBlock, !dbg !118                    ; [debug line = 40:1]

branch4:                                          ; preds = %.preheader7
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_mid2, !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_4_addr, align 2, !dbg !118 ; [debug line = 40:1]
  br label %ifBlock, !dbg !118                    ; [debug line = 40:1]

branch5:                                          ; preds = %.preheader7
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_mid2, !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_5_addr, align 2, !dbg !118 ; [debug line = 40:1]
  br label %ifBlock, !dbg !118                    ; [debug line = 40:1]

branch6:                                          ; preds = %.preheader7
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_mid2, !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_6_addr, align 2, !dbg !118 ; [debug line = 40:1]
  br label %ifBlock, !dbg !118                    ; [debug line = 40:1]

branch7:                                          ; preds = %.preheader7
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_mid2, !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_7_addr, align 2, !dbg !118 ; [debug line = 40:1]
  br label %ifBlock, !dbg !118                    ; [debug line = 40:1]
}

; [#uses=2]
define internal fastcc void @dct_dct_1d([8 x i16]* nocapture %src, [8 x i16]* nocapture %src1, [8 x i16]* nocapture %src2, [8 x i16]* nocapture %src3, [8 x i16]* nocapture %src4, [8 x i16]* nocapture %src5, [8 x i16]* nocapture %src6, [8 x i16]* nocapture %src7, i4 %tmp_2, [64 x i16]* nocapture %dst, i4 %tmp_21) {
  %tmp_21_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_21) ; [#uses=1 type=i4]
  %tmp_2_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_2) ; [#uses=1 type=i4]
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_21_read, i3 0) ; [#uses=1 type=i7]
  %tmp_18_cast = zext i7 %tmp_6 to i8             ; [#uses=1 type=i8]
  %tmp_2_cast = zext i4 %tmp_2_read to i64        ; [#uses=8 type=i64]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !139), !dbg !145 ; [debug line = 4:81] [debug variable = dst]
  %src_addr = getelementptr [8 x i16]* %src, i64 0, i64 %tmp_2_cast ; [#uses=1 type=i16*]
  %src1_addr = getelementptr [8 x i16]* %src1, i64 0, i64 %tmp_2_cast ; [#uses=1 type=i16*]
  %src2_addr = getelementptr [8 x i16]* %src2, i64 0, i64 %tmp_2_cast ; [#uses=1 type=i16*]
  %src3_addr = getelementptr [8 x i16]* %src3, i64 0, i64 %tmp_2_cast ; [#uses=1 type=i16*]
  %src4_addr = getelementptr [8 x i16]* %src4, i64 0, i64 %tmp_2_cast ; [#uses=1 type=i16*]
  %src5_addr = getelementptr [8 x i16]* %src5, i64 0, i64 %tmp_2_cast ; [#uses=1 type=i16*]
  %src6_addr = getelementptr [8 x i16]* %src6, i64 0, i64 %tmp_2_cast ; [#uses=1 type=i16*]
  %src7_addr = getelementptr [8 x i16]* %src7, i64 0, i64 %tmp_2_cast ; [#uses=1 type=i16*]
  br label %1, !dbg !146                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %2, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %2 ]             ; [#uses=4 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !146       ; [#uses=1 type=i1] [debug line = 13:9]
  %k_1 = add i4 %k, 1, !dbg !149                  ; [#uses=1 type=i4] [debug line = 13:61]
  br i1 %exitcond1, label %3, label %2, !dbg !146 ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !150 ; [debug line = 13:67]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !150 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !152 ; [debug line = 14:1]
  %tmp = zext i4 %k to i64, !dbg !153             ; [#uses=8 type=i64] [debug line = 16:48]
  %tmp_cast = zext i4 %k to i8, !dbg !156         ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_8 = add i8 %tmp_18_cast, %tmp_cast, !dbg !156 ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_19_cast = zext i8 %tmp_8 to i64, !dbg !156 ; [#uses=1 type=i64] [debug line = 19:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_19_cast, !dbg !156 ; [#uses=1 type=i16*] [debug line = 19:7]
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp, !dbg !153 ; [#uses=1 type=i14*] [debug line = 16:48]
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2, !dbg !153 ; [#uses=1 type=i14] [debug line = 16:48]
  %coeff_cast = zext i14 %dct_coeff_table_0_load to i29 ; [#uses=1 type=i29]
  %src_load = load i16* %src_addr, align 2        ; [#uses=1 type=i16]
  %tmp_9_cast = sext i16 %src_load to i29, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_1 = mul i29 %coeff_cast, %tmp_9_cast, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp, !dbg !153 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2, !dbg !153 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_1_cast = sext i15 %dct_coeff_table_1_load to i29 ; [#uses=1 type=i29]
  %src1_load = load i16* %src1_addr, align 2      ; [#uses=1 type=i16]
  %tmp_9_1_cast = sext i16 %src1_load to i29, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_10_1 = mul i29 %coeff_1_cast, %tmp_9_1_cast, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp, !dbg !153 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2, !dbg !153 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_2_cast = sext i15 %dct_coeff_table_2_load to i29 ; [#uses=1 type=i29]
  %src2_load = load i16* %src2_addr, align 2      ; [#uses=1 type=i16]
  %tmp_9_2_cast = sext i16 %src2_load to i29, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_10_2 = mul i29 %coeff_2_cast, %tmp_9_2_cast, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp, !dbg !153 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2, !dbg !153 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_3_cast = sext i15 %dct_coeff_table_3_load to i29 ; [#uses=1 type=i29]
  %src3_load = load i16* %src3_addr, align 2      ; [#uses=1 type=i16]
  %tmp_9_3_cast = sext i16 %src3_load to i29, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_10_3 = mul i29 %coeff_3_cast, %tmp_9_3_cast, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp, !dbg !153 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2, !dbg !153 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_4_cast = sext i15 %dct_coeff_table_4_load to i29 ; [#uses=1 type=i29]
  %src4_load = load i16* %src4_addr, align 2      ; [#uses=1 type=i16]
  %tmp_9_4_cast = sext i16 %src4_load to i29, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_10_4 = mul i29 %coeff_4_cast, %tmp_9_4_cast, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp, !dbg !153 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2, !dbg !153 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_5_cast = sext i15 %dct_coeff_table_5_load to i29 ; [#uses=1 type=i29]
  %src5_load = load i16* %src5_addr, align 2      ; [#uses=1 type=i16]
  %tmp_9_5_cast = sext i16 %src5_load to i29, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_10_5 = mul i29 %coeff_5_cast, %tmp_9_5_cast, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp, !dbg !153 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2, !dbg !153 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_6_cast = sext i15 %dct_coeff_table_6_load to i29 ; [#uses=1 type=i29]
  %src6_load = load i16* %src6_addr, align 2      ; [#uses=1 type=i16]
  %tmp_9_6_cast = sext i16 %src6_load to i29, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_10_6 = mul i29 %coeff_6_cast, %tmp_9_6_cast, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp, !dbg !153 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2, !dbg !153 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_7_cast = sext i15 %dct_coeff_table_7_load to i29 ; [#uses=1 type=i29]
  %src7_load = load i16* %src7_addr, align 2      ; [#uses=1 type=i16]
  %tmp_9_7_cast = sext i16 %src7_load to i29, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_10_7 = mul i29 %coeff_7_cast, %tmp_9_7_cast, !dbg !157 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp2 = add i29 %tmp_10_1, %tmp_1, !dbg !156    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp_10_3, %tmp_10_2, !dbg !156 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp1 = add i29 %tmp2, %tmp3, !dbg !156         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp_10_5, %tmp_10_4, !dbg !156 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp7 = add i29 %tmp_10_7, 4096, !dbg !156      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 %tmp_10_6, %tmp7, !dbg !156     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp5, %tmp6, !dbg !156         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_s = add i29 %tmp1, %tmp4, !dbg !156        ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_7 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_s, i32 13, i32 28), !dbg !156 ; [#uses=1 type=i16] [debug line = 19:7]
  store i16 %tmp_7, i16* %dst_addr, align 2, !dbg !156 ; [debug line = 19:7]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_9) nounwind, !dbg !158 ; [#uses=0 type=i32] [debug line = 20:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !159), !dbg !149 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !149                          ; [debug line = 13:61]

; <label>:3                                       ; preds = %1
  ret void, !dbg !160                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !161 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !166
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !172
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in_0 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_1 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_2 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_3 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_4 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_5 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_6 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_in_7 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !176), !dbg !177 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !178), !dbg !179 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_0}, metadata !180), !dbg !182 ; [debug line = 81:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_1}, metadata !183), !dbg !182 ; [debug line = 81:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_2}, metadata !184), !dbg !182 ; [debug line = 81:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_3}, metadata !185), !dbg !182 ; [debug line = 81:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_4}, metadata !186), !dbg !182 ; [debug line = 81:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_5}, metadata !187), !dbg !182 ; [debug line = 81:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_6}, metadata !188), !dbg !182 ; [debug line = 81:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_7}, metadata !189), !dbg !182 ; [debug line = 81:10] [debug variable = buf_2d_in[7]]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_out}, metadata !190), !dbg !191 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @dct_read_data([64 x i16]* %input, [8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7) nounwind, !dbg !192 ; [debug line = 85:4]
  call fastcc void @dct_dct_2d([8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7, [64 x i16]* %buf_2d_out) nounwind, !dbg !193 ; [debug line = 87:4]
  call fastcc void @dct_write_data([64 x i16]* %buf_2d_out, [64 x i16]* %output) nounwind, !dbg !194 ; [debug line = 90:4]
  ret void, !dbg !195                             ; [debug line = 91:1]
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

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=7]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=11]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
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

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_13 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_13
}

; [#uses=5]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_14 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_15 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_16 = or i7 %empty_15, %empty_14          ; [#uses=1 type=i7]
  ret i7 %empty_16
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_17 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_18 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_19 = or i6 %empty_18, %empty_17          ; [#uses=1 type=i6]
  ret i6 %empty_19
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786689, metadata !1, metadata !"buf", null, i32 66, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1 = metadata !{i32 786478, i32 0, metadata !2, metadata !"write_data", metadata !"write_data", metadata !"", metadata !2, i32 66, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 67} ; [ DW_TAG_subprogram ]
!2 = metadata !{i32 786473, metadata !"dct.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_area", null} ; [ DW_TAG_file_type ]
!3 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5, metadata !10}
!5 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !7, metadata !8, i32 0, i32 0} ; [ DW_TAG_array_type ]
!7 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 786465, i64 0, i64 7}         ; [ DW_TAG_subrange_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !7, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{metadata !9, metadata !9}
!15 = metadata !{i32 66, i32 23, metadata !1, null}
!16 = metadata !{i32 786689, metadata !1, metadata !"output", null, i32 66, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !7, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!20 = metadata !{i32 66, i32 116, metadata !1, null}
!21 = metadata !{i32 71, i32 9, metadata !22, null}
!22 = metadata !{i32 786443, metadata !23, i32 71, i32 4, metadata !2, i32 24} ; [ DW_TAG_lexical_block ]
!23 = metadata !{i32 786443, metadata !1, i32 67, i32 1, metadata !2, i32 23} ; [ DW_TAG_lexical_block ]
!24 = metadata !{i32 71, i32 61, metadata !22, null}
!25 = metadata !{i32 786688, metadata !23, metadata !"r", metadata !2, i32 68, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!26 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 73, i32 12, metadata !28, null}
!28 = metadata !{i32 786443, metadata !29, i32 73, i32 7, metadata !2, i32 26} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 786443, metadata !22, i32 71, i32 66, metadata !2, i32 25} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 74, i32 1, metadata !31, null}
!31 = metadata !{i32 786443, metadata !28, i32 74, i32 1, metadata !2, i32 27} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 74, i32 2, metadata !31, null}
!33 = metadata !{i32 75, i32 1, metadata !31, null}
!34 = metadata !{i32 74, i32 67, metadata !31, null}
!35 = metadata !{i32 73, i32 64, metadata !28, null}
!36 = metadata !{i32 786688, metadata !23, metadata !"c", metadata !2, i32 68, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!37 = metadata !{i32 76, i32 1, metadata !23, null}
!38 = metadata !{i32 786689, metadata !39, metadata !"input", null, i32 54, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786478, i32 0, metadata !2, metadata !"read_data", metadata !"read_data", metadata !"", metadata !2, i32 54, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 55} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !10, metadata !5}
!42 = metadata !{i32 54, i32 22, metadata !39, null}
!43 = metadata !{i32 790531, metadata !44, metadata !"buf[0]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!44 = metadata !{i32 786689, metadata !39, metadata !"buf", null, i32 54, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !7, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{i32 54, i32 44, metadata !39, null}
!47 = metadata !{i32 790531, metadata !44, metadata !"buf[1]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!48 = metadata !{i32 790531, metadata !44, metadata !"buf[2]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!49 = metadata !{i32 790531, metadata !44, metadata !"buf[3]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!50 = metadata !{i32 790531, metadata !44, metadata !"buf[4]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!51 = metadata !{i32 790531, metadata !44, metadata !"buf[5]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!52 = metadata !{i32 790531, metadata !44, metadata !"buf[6]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!53 = metadata !{i32 790531, metadata !44, metadata !"buf[7]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!54 = metadata !{i32 59, i32 9, metadata !55, null}
!55 = metadata !{i32 786443, metadata !56, i32 59, i32 4, metadata !2, i32 19} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 786443, metadata !39, i32 55, i32 1, metadata !2, i32 18} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 62, i32 66, metadata !58, null}
!58 = metadata !{i32 786443, metadata !59, i32 62, i32 1, metadata !2, i32 22} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786443, metadata !60, i32 61, i32 7, metadata !2, i32 21} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !55, i32 59, i32 66, metadata !2, i32 20} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 61, i32 64, metadata !59, null}
!62 = metadata !{i32 786688, metadata !56, metadata !"c", metadata !2, i32 56, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 59, i32 61, metadata !55, null}
!64 = metadata !{i32 786688, metadata !56, metadata !"r", metadata !2, i32 56, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 61, i32 12, metadata !59, null}
!66 = metadata !{i32 62, i32 1, metadata !58, null}
!67 = metadata !{i32 62, i32 2, metadata !58, null}
!68 = metadata !{i32 63, i32 1, metadata !58, null}
!69 = metadata !{i32 64, i32 1, metadata !56, null}
!70 = metadata !{i32 790531, metadata !71, metadata !"in_block[0]", null, i32 23, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!71 = metadata !{i32 786689, metadata !72, metadata !"in_block", null, i32 23, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !2, i32 23, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 25} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !75, metadata !75}
!75 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !77, metadata !8, i32 0, i32 0} ; [ DW_TAG_array_type ]
!77 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !2, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!78 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !77, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!79 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !77, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!80 = metadata !{i32 23, i32 24, metadata !72, null}
!81 = metadata !{i32 790531, metadata !71, metadata !"in_block[1]", null, i32 23, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!82 = metadata !{i32 790531, metadata !71, metadata !"in_block[2]", null, i32 23, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!83 = metadata !{i32 790531, metadata !71, metadata !"in_block[3]", null, i32 23, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!84 = metadata !{i32 790531, metadata !71, metadata !"in_block[4]", null, i32 23, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!85 = metadata !{i32 790531, metadata !71, metadata !"in_block[5]", null, i32 23, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!86 = metadata !{i32 790531, metadata !71, metadata !"in_block[6]", null, i32 23, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!87 = metadata !{i32 790531, metadata !71, metadata !"in_block[7]", null, i32 23, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!88 = metadata !{i32 786689, metadata !72, metadata !"out_block", null, i32 24, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 24, i32 18, metadata !72, null}
!90 = metadata !{i32 790529, metadata !91, metadata !"col_inbuf[0]", null, i32 27, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!91 = metadata !{i32 786688, metadata !92, metadata !"col_inbuf", metadata !2, i32 27, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 786443, metadata !72, i32 25, i32 1, metadata !2, i32 5} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 27, i32 109, metadata !92, null}
!94 = metadata !{i32 790529, metadata !91, metadata !"col_inbuf[1]", null, i32 27, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!95 = metadata !{i32 790529, metadata !91, metadata !"col_inbuf[2]", null, i32 27, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!96 = metadata !{i32 790529, metadata !91, metadata !"col_inbuf[3]", null, i32 27, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!97 = metadata !{i32 790529, metadata !91, metadata !"col_inbuf[4]", null, i32 27, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!98 = metadata !{i32 790529, metadata !91, metadata !"col_inbuf[5]", null, i32 27, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!99 = metadata !{i32 790529, metadata !91, metadata !"col_inbuf[6]", null, i32 27, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!100 = metadata !{i32 790529, metadata !91, metadata !"col_inbuf[7]", null, i32 27, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!101 = metadata !{i32 32, i32 8, metadata !102, null}
!102 = metadata !{i32 786443, metadata !92, i32 32, i32 4, metadata !2, i32 6} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 32, i32 60, metadata !102, null}
!104 = metadata !{i32 32, i32 66, metadata !105, null}
!105 = metadata !{i32 786443, metadata !102, i32 32, i32 65, metadata !2, i32 7} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 33, i32 7, metadata !105, null}
!107 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !2, i32 28, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!109 = metadata !{i32 40, i32 34, metadata !110, null}
!110 = metadata !{i32 786443, metadata !111, i32 40, i32 1, metadata !2, i32 11} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 786443, metadata !112, i32 39, i32 7, metadata !2, i32 10} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786443, metadata !113, i32 38, i32 1, metadata !2, i32 9} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786443, metadata !92, i32 37, i32 4, metadata !2, i32 8} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 39, i32 63, metadata !111, null}
!115 = metadata !{i32 37, i32 61, metadata !113, null}
!116 = metadata !{i32 786688, metadata !92, metadata !"j", metadata !2, i32 28, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 39, i32 11, metadata !111, null}
!118 = metadata !{i32 40, i32 1, metadata !110, null}
!119 = metadata !{i32 40, i32 2, metadata !110, null}
!120 = metadata !{i32 41, i32 1, metadata !110, null}
!121 = metadata !{i32 43, i32 9, metadata !122, null}
!122 = metadata !{i32 786443, metadata !92, i32 43, i32 4, metadata !2, i32 12} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 43, i32 61, metadata !122, null}
!124 = metadata !{i32 43, i32 67, metadata !125, null}
!125 = metadata !{i32 786443, metadata !122, i32 43, i32 66, metadata !2, i32 13} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 44, i32 7, metadata !125, null}
!127 = metadata !{i32 48, i32 61, metadata !128, null}
!128 = metadata !{i32 786443, metadata !92, i32 48, i32 4, metadata !2, i32 14} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 50, i32 11, metadata !130, null}
!130 = metadata !{i32 786443, metadata !131, i32 50, i32 7, metadata !2, i32 16} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !128, i32 49, i32 1, metadata !2, i32 15} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 51, i32 1, metadata !133, null}
!133 = metadata !{i32 786443, metadata !130, i32 51, i32 1, metadata !2, i32 17} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 51, i32 2, metadata !133, null}
!135 = metadata !{i32 52, i32 1, metadata !133, null}
!136 = metadata !{i32 51, i32 34, metadata !133, null}
!137 = metadata !{i32 50, i32 63, metadata !130, null}
!138 = metadata !{i32 52, i32 1, metadata !92, null}
!139 = metadata !{i32 786689, metadata !140, metadata !"dst", null, i32 4, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !2, i32 4, metadata !141, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!142 = metadata !{null, metadata !143, metadata !143}
!143 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ]
!144 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !77, metadata !8, i32 0, i32 0} ; [ DW_TAG_array_type ]
!145 = metadata !{i32 4, i32 81, metadata !140, null}
!146 = metadata !{i32 13, i32 9, metadata !147, null}
!147 = metadata !{i32 786443, metadata !148, i32 13, i32 4, metadata !2, i32 1} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !140, i32 5, i32 1, metadata !2, i32 0} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 13, i32 61, metadata !147, null}
!150 = metadata !{i32 13, i32 67, metadata !151, null}
!151 = metadata !{i32 786443, metadata !147, i32 13, i32 66, metadata !2, i32 2} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 14, i32 1, metadata !151, null}
!153 = metadata !{i32 16, i32 48, metadata !154, null}
!154 = metadata !{i32 786443, metadata !155, i32 15, i32 77, metadata !2, i32 4} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786443, metadata !151, i32 15, i32 7, metadata !2, i32 3} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 19, i32 7, metadata !151, null}
!157 = metadata !{i32 17, i32 10, metadata !154, null}
!158 = metadata !{i32 20, i32 4, metadata !151, null}
!159 = metadata !{i32 786688, metadata !148, metadata !"k", metadata !2, i32 6, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 21, i32 1, metadata !148, null}
!161 = metadata !{i32 80, i32 1, metadata !162, null}
!162 = metadata !{i32 786443, metadata !163, i32 79, i32 1, metadata !2, i32 28} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct", metadata !"dct", metadata !"", metadata !2, i32 78, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 79} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{null, metadata !10, metadata !10}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 0, i32 15, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"input", metadata !170, metadata !"short", i32 0, i32 15}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 0, i32 63, i32 1}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 0, i32 15, metadata !174}
!174 = metadata !{metadata !175}
!175 = metadata !{metadata !"output", metadata !170, metadata !"short", i32 0, i32 15}
!176 = metadata !{i32 786689, metadata !163, metadata !"input", null, i32 78, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 78, i32 16, metadata !163, null}
!178 = metadata !{i32 786689, metadata !163, metadata !"output", null, i32 78, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 78, i32 38, metadata !163, null}
!180 = metadata !{i32 790529, metadata !181, metadata !"buf_2d_in[0]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!181 = metadata !{i32 786688, metadata !162, metadata !"buf_2d_in", metadata !2, i32 81, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 81, i32 10, metadata !162, null}
!183 = metadata !{i32 790529, metadata !181, metadata !"buf_2d_in[1]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!184 = metadata !{i32 790529, metadata !181, metadata !"buf_2d_in[2]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!185 = metadata !{i32 790529, metadata !181, metadata !"buf_2d_in[3]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!186 = metadata !{i32 790529, metadata !181, metadata !"buf_2d_in[4]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!187 = metadata !{i32 790529, metadata !181, metadata !"buf_2d_in[5]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!188 = metadata !{i32 790529, metadata !181, metadata !"buf_2d_in[6]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!189 = metadata !{i32 790529, metadata !181, metadata !"buf_2d_in[7]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!190 = metadata !{i32 786688, metadata !162, metadata !"buf_2d_out", metadata !2, i32 82, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 82, i32 10, metadata !162, null}
!192 = metadata !{i32 85, i32 4, metadata !162, null}
!193 = metadata !{i32 87, i32 4, metadata !162, null}
!194 = metadata !{i32 90, i32 4, metadata !162, null}
!195 = metadata !{i32 91, i32 1, metadata !162, null}
