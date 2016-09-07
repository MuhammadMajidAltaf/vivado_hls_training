; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution5/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436]
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00"
@Xpose_Row_Outer_Loop_Xpose_Row = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00"
@Xpose_Col_Outer_Loop_Xpose_Col = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00"
@WR_Loop_Row_WR_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00"
@RD_Loop_Row_RD_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00"
@p_str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1
@p_str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1
@p_str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1
@p_str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1
@p_str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1

define internal fastcc void @dct_write_data([64 x i16]* nocapture %buf, [64 x i16]* nocapture %output) {
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %r = phi i4 [ 0, %0 ], [ %tmp_mid2_v, %.reset ]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %r_1 = add i4 1, %r
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond2 = icmp eq i4 %c, -8
  %c_mid2 = select i1 %exitcond2, i4 0, i4 %c
  %tmp_mid2_v = select i1 %exitcond2, i4 %r_1, i4 %r
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_mid2_v, i3 0)
  %tmp_1_cast = zext i7 %tmp to i8
  %tmp_1 = trunc i4 %tmp_mid2_v to i3
  %tmp_1_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_1, i3 0)
  %c_cast6 = zext i4 %c_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_3_cast = zext i4 %c_mid2 to i8
  %tmp_7 = add i8 %tmp_1_cast, %tmp_3_cast
  %tmp_7_cast = zext i8 %tmp_7 to i64
  %buf_addr = getelementptr [64 x i16]* %buf, i64 0, i64 %tmp_7_cast
  %buf_load = load i16* %buf_addr, align 2
  %tmp_4 = add i6 %c_cast6, %tmp_1_mid2
  %tmp_5 = zext i6 %tmp_4 to i64
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_5
  store i16 %buf_load, i16* %output_addr, align 2
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_6)
  %c_1 = add i4 1, %c_mid2
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define internal fastcc void @dct_read_data([64 x i16]* nocapture %input, [8 x i16]* nocapture %buf_0, [8 x i16]* nocapture %buf_1, [8 x i16]* nocapture %buf_2, [8 x i16]* nocapture %buf_3, [8 x i16]* nocapture %buf_4, [8 x i16]* nocapture %buf_5, [8 x i16]* nocapture %buf_6, [8 x i16]* nocapture %buf_7) {
  br label %1

; <label>:1                                       ; preds = %0, %ifBlock
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ]
  %r = phi i4 [ 0, %0 ], [ %tmp_mid2_v_v, %ifBlock ]
  %c = phi i4 [ 0, %0 ], [ %c_2, %ifBlock ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_1)
  %c_2 = add i4 %c_mid2, 1
  br label %1

.reset:                                           ; preds = %1
  %r_2 = add i4 1, %r
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_Col_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond = icmp eq i4 %c, -8
  %c_mid2 = select i1 %exitcond, i4 0, i4 %c
  %tmp_mid2_v_v = select i1 %exitcond, i4 %r_2, i4 %r
  %tmp = trunc i4 %tmp_mid2_v_v to i3
  %tmp_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0)
  %tmp_7_mid2 = zext i4 %tmp_mid2_v_v to i64
  %c_cast = zext i4 %c_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_9 = add i6 %c_cast, %tmp_mid2
  %tmp_s = zext i6 %tmp_9 to i64
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_s
  %input_load = load i16* %input_addr, align 2
  %tmp_2 = trunc i4 %c_mid2 to i3
  switch i3 %tmp_2, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ]

; <label>:2                                       ; preds = %1
  ret void

branch0:                                          ; preds = %.reset
  %buf_0_addr = getelementptr [8 x i16]* %buf_0, i64 0, i64 %tmp_7_mid2
  store i16 %input_load, i16* %buf_0_addr, align 2
  br label %ifBlock

branch1:                                          ; preds = %.reset
  %buf_1_addr = getelementptr [8 x i16]* %buf_1, i64 0, i64 %tmp_7_mid2
  store i16 %input_load, i16* %buf_1_addr, align 2
  br label %ifBlock

branch2:                                          ; preds = %.reset
  %buf_2_addr = getelementptr [8 x i16]* %buf_2, i64 0, i64 %tmp_7_mid2
  store i16 %input_load, i16* %buf_2_addr, align 2
  br label %ifBlock

branch3:                                          ; preds = %.reset
  %buf_3_addr = getelementptr [8 x i16]* %buf_3, i64 0, i64 %tmp_7_mid2
  store i16 %input_load, i16* %buf_3_addr, align 2
  br label %ifBlock

branch4:                                          ; preds = %.reset
  %buf_4_addr = getelementptr [8 x i16]* %buf_4, i64 0, i64 %tmp_7_mid2
  store i16 %input_load, i16* %buf_4_addr, align 2
  br label %ifBlock

branch5:                                          ; preds = %.reset
  %buf_5_addr = getelementptr [8 x i16]* %buf_5, i64 0, i64 %tmp_7_mid2
  store i16 %input_load, i16* %buf_5_addr, align 2
  br label %ifBlock

branch6:                                          ; preds = %.reset
  %buf_6_addr = getelementptr [8 x i16]* %buf_6, i64 0, i64 %tmp_7_mid2
  store i16 %input_load, i16* %buf_6_addr, align 2
  br label %ifBlock

branch7:                                          ; preds = %.reset
  %buf_7_addr = getelementptr [8 x i16]* %buf_7, i64 0, i64 %tmp_7_mid2
  store i16 %input_load, i16* %buf_7_addr, align 2
  br label %ifBlock
}

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @dct_dct_2d([8 x i16]* nocapture %in_block_0, [8 x i16]* nocapture %in_block_1, [8 x i16]* nocapture %in_block_2, [8 x i16]* nocapture %in_block_3, [8 x i16]* nocapture %in_block_4, [8 x i16]* nocapture %in_block_5, [8 x i16]* nocapture %in_block_6, [8 x i16]* nocapture %in_block_7, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2
  %col_outbuf = alloca [64 x i16], align 2
  %col_inbuf_0 = alloca [8 x i16], align 2
  %col_inbuf_1 = alloca [8 x i16], align 2
  %col_inbuf_2 = alloca [8 x i16], align 2
  %col_inbuf_3 = alloca [8 x i16], align 2
  %col_inbuf_4 = alloca [8 x i16], align 2
  %col_inbuf_5 = alloca [8 x i16], align 2
  %col_inbuf_6 = alloca [8 x i16], align 2
  %col_inbuf_7 = alloca [8 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]
  %exitcond5 = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_4 = add i4 %i, 1
  br i1 %exitcond5, label %.preheader7.preheader, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind
  call fastcc void @dct_dct_1d([8 x i16]* %in_block_0, [8 x i16]* %in_block_1, [8 x i16]* %in_block_2, [8 x i16]* %in_block_3, [8 x i16]* %in_block_4, [8 x i16]* %in_block_5, [8 x i16]* %in_block_6, [8 x i16]* %in_block_7, i4 %i, [64 x i16]* %row_outbuf, i4 %i)
  br label %1

.preheader7.preheader:                            ; preds = %1, %ifBlock
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %ifBlock ], [ 0, %1 ]
  %j = phi i4 [ %tmp_mid2_v, %ifBlock ], [ 0, %1 ]
  %i_1 = phi i4 [ %i_6, %ifBlock ], [ 0, %1 ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader6, label %.preheader7

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_6)
  %i_6 = add i4 %i_1_mid2, 1
  br label %.preheader7.preheader

.preheader7:                                      ; preds = %.preheader7.preheader
  %j_2 = add i4 1, %j
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond = icmp eq i4 %i_1, -8
  %i_1_mid2 = select i1 %exitcond, i4 0, i4 %i_1
  %tmp_mid2_v = select i1 %exitcond, i4 %j_2, i4 %j
  %tmp_mid2 = zext i4 %tmp_mid2_v to i64
  %tmp_mid2_cast = zext i4 %tmp_mid2_v to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0)
  %tmp_9_cast = zext i7 %tmp to i8
  %tmp_s = add i8 %tmp_9_cast, %tmp_mid2_cast
  %tmp_10_cast = zext i8 %tmp_s to i64
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_10_cast
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2
  %tmp_3 = trunc i4 %i_1_mid2 to i3
  switch i3 %tmp_3, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ]

.preheader6:                                      ; preds = %.preheader7.preheader, %3
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader7.preheader ]
  %exitcond2 = icmp eq i4 %i_2, -8
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_5 = add i4 %i_2, 1
  br i1 %exitcond2, label %.preheader.preheader, label %3

; <label>:3                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind
  call fastcc void @dct_dct_1d([8 x i16]* %col_inbuf_0, [8 x i16]* %col_inbuf_1, [8 x i16]* %col_inbuf_2, [8 x i16]* %col_inbuf_3, [8 x i16]* %col_inbuf_4, [8 x i16]* %col_inbuf_5, [8 x i16]* %col_inbuf_6, [8 x i16]* %col_inbuf_7, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2)
  br label %.preheader6

.preheader.preheader:                             ; preds = %.preheader6, %.preheader
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader6 ]
  %j_1 = phi i4 [ %tmp_4_mid2_v, %.preheader ], [ 0, %.preheader6 ]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader6 ]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %j_3 = add i4 %j_1, 1
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond4 = icmp eq i4 %i_3, -8
  %i_3_mid2 = select i1 %exitcond4, i4 0, i4 %i_3
  %tmp_4_mid2_v = select i1 %exitcond4, i4 %j_3, i4 %j_1
  %tmp_4_mid2_cast = zext i4 %tmp_4_mid2_v to i8
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_4_mid2_v, i3 0)
  %tmp_12_cast = zext i7 %tmp_1 to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_5_cast = zext i4 %i_3_mid2 to i8
  %tmp_2 = add i8 %tmp_5_cast, %tmp_12_cast
  %tmp_13_cast = zext i8 %tmp_2 to i64
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_13_cast
  %tmp_4 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0)
  %tmp_15_cast = zext i7 %tmp_4 to i8
  %tmp_5 = add i8 %tmp_4_mid2_cast, %tmp_15_cast
  %tmp_16_cast = zext i8 %tmp_5 to i64
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_16_cast
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_8)
  %i_7 = add i4 %i_3_mid2, 1
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void

branch0:                                          ; preds = %.preheader7
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_load, i16* %col_inbuf_0_addr, align 2
  br label %ifBlock

branch1:                                          ; preds = %.preheader7
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_load, i16* %col_inbuf_1_addr, align 2
  br label %ifBlock

branch2:                                          ; preds = %.preheader7
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_load, i16* %col_inbuf_2_addr, align 2
  br label %ifBlock

branch3:                                          ; preds = %.preheader7
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_load, i16* %col_inbuf_3_addr, align 2
  br label %ifBlock

branch4:                                          ; preds = %.preheader7
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_load, i16* %col_inbuf_4_addr, align 2
  br label %ifBlock

branch5:                                          ; preds = %.preheader7
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_load, i16* %col_inbuf_5_addr, align 2
  br label %ifBlock

branch6:                                          ; preds = %.preheader7
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_load, i16* %col_inbuf_6_addr, align 2
  br label %ifBlock

branch7:                                          ; preds = %.preheader7
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_load, i16* %col_inbuf_7_addr, align 2
  br label %ifBlock
}

define internal fastcc void @dct_dct_1d([8 x i16]* nocapture %src, [8 x i16]* nocapture %src1, [8 x i16]* nocapture %src2, [8 x i16]* nocapture %src3, [8 x i16]* nocapture %src4, [8 x i16]* nocapture %src5, [8 x i16]* nocapture %src6, [8 x i16]* nocapture %src7, i4 %tmp_2, [64 x i16]* nocapture %dst, i4 %tmp_21) {
  %tmp_21_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_21)
  %tmp_2_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_2)
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_21_read, i3 0)
  %tmp_18_cast = zext i7 %tmp_6 to i8
  %tmp_2_cast = zext i4 %tmp_2_read to i64
  %src_addr = getelementptr [8 x i16]* %src, i64 0, i64 %tmp_2_cast
  %src1_addr = getelementptr [8 x i16]* %src1, i64 0, i64 %tmp_2_cast
  %src2_addr = getelementptr [8 x i16]* %src2, i64 0, i64 %tmp_2_cast
  %src3_addr = getelementptr [8 x i16]* %src3, i64 0, i64 %tmp_2_cast
  %src4_addr = getelementptr [8 x i16]* %src4, i64 0, i64 %tmp_2_cast
  %src5_addr = getelementptr [8 x i16]* %src5, i64 0, i64 %tmp_2_cast
  %src6_addr = getelementptr [8 x i16]* %src6, i64 0, i64 %tmp_2_cast
  %src7_addr = getelementptr [8 x i16]* %src7, i64 0, i64 %tmp_2_cast
  br label %1

; <label>:1                                       ; preds = %2, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %2 ]
  %exitcond1 = icmp eq i4 %k, -8
  %k_1 = add i4 %k, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = zext i4 %k to i64
  %tmp_cast = zext i4 %k to i8
  %tmp_8 = add i8 %tmp_18_cast, %tmp_cast
  %tmp_19_cast = zext i8 %tmp_8 to i64
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_19_cast
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2
  %coeff_cast = zext i14 %dct_coeff_table_0_load to i29
  %src_load = load i16* %src_addr, align 2
  %tmp_9_cast = sext i16 %src_load to i29
  %tmp_1 = mul i29 %coeff_cast, %tmp_9_cast
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2
  %coeff_1_cast = sext i15 %dct_coeff_table_1_load to i29
  %src1_load = load i16* %src1_addr, align 2
  %tmp_9_1_cast = sext i16 %src1_load to i29
  %tmp_10_1 = mul i29 %coeff_1_cast, %tmp_9_1_cast
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2
  %coeff_2_cast = sext i15 %dct_coeff_table_2_load to i29
  %src2_load = load i16* %src2_addr, align 2
  %tmp_9_2_cast = sext i16 %src2_load to i29
  %tmp_10_2 = mul i29 %coeff_2_cast, %tmp_9_2_cast
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2
  %coeff_3_cast = sext i15 %dct_coeff_table_3_load to i29
  %src3_load = load i16* %src3_addr, align 2
  %tmp_9_3_cast = sext i16 %src3_load to i29
  %tmp_10_3 = mul i29 %coeff_3_cast, %tmp_9_3_cast
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2
  %coeff_4_cast = sext i15 %dct_coeff_table_4_load to i29
  %src4_load = load i16* %src4_addr, align 2
  %tmp_9_4_cast = sext i16 %src4_load to i29
  %tmp_10_4 = mul i29 %coeff_4_cast, %tmp_9_4_cast
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2
  %coeff_5_cast = sext i15 %dct_coeff_table_5_load to i29
  %src5_load = load i16* %src5_addr, align 2
  %tmp_9_5_cast = sext i16 %src5_load to i29
  %tmp_10_5 = mul i29 %coeff_5_cast, %tmp_9_5_cast
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2
  %coeff_6_cast = sext i15 %dct_coeff_table_6_load to i29
  %src6_load = load i16* %src6_addr, align 2
  %tmp_9_6_cast = sext i16 %src6_load to i29
  %tmp_10_6 = mul i29 %coeff_6_cast, %tmp_9_6_cast
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2
  %coeff_7_cast = sext i15 %dct_coeff_table_7_load to i29
  %src7_load = load i16* %src7_addr, align 2
  %tmp_9_7_cast = sext i16 %src7_load to i29
  %tmp_10_7 = mul i29 %coeff_7_cast, %tmp_9_7_cast
  %tmp2 = add i29 %tmp_10_1, %tmp_1
  %tmp3 = add i29 %tmp_10_3, %tmp_10_2
  %tmp1 = add i29 %tmp2, %tmp3
  %tmp5 = add i29 %tmp_10_5, %tmp_10_4
  %tmp7 = add i29 %tmp_10_7, 4096
  %tmp6 = add i29 %tmp_10_6, %tmp7
  %tmp4 = add i29 %tmp5, %tmp6
  %tmp_s = add i29 %tmp1, %tmp4
  %tmp_7 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_s, i32 13, i32 28)
  store i16 %tmp_7, i16* %dst_addr, align 2
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_9) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in_0 = alloca [8 x i16], align 2
  %buf_2d_in_1 = alloca [8 x i16], align 2
  %buf_2d_in_2 = alloca [8 x i16], align 2
  %buf_2d_in_3 = alloca [8 x i16], align 2
  %buf_2d_in_4 = alloca [8 x i16], align 2
  %buf_2d_in_5 = alloca [8 x i16], align 2
  %buf_2d_in_6 = alloca [8 x i16], align 2
  %buf_2d_in_7 = alloca [8 x i16], align 2
  %buf_2d_out = alloca [64 x i16], align 2
  call fastcc void @dct_read_data([64 x i16]* %input, [8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7) nounwind
  call fastcc void @dct_dct_2d([8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7, [64 x i16]* %buf_2d_out) nounwind
  call fastcc void @dct_write_data([64 x i16]* %buf_2d_out, [64 x i16]* %output) nounwind
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

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_13 = trunc i29 %empty to i16
  ret i16 %empty_13
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_14 = zext i3 %1 to i7
  %empty_15 = shl i7 %empty, 3
  %empty_16 = or i7 %empty_15, %empty_14
  ret i7 %empty_16
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_17 = zext i3 %1 to i6
  %empty_18 = shl i6 %empty, 3
  %empty_19 = or i6 %empty_18, %empty_17
  ret i6 %empty_19
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 15, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"input", metadata !4, metadata !"short", i32 0, i32 15}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 63, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 15, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"output", metadata !4, metadata !"short", i32 0, i32 15}
