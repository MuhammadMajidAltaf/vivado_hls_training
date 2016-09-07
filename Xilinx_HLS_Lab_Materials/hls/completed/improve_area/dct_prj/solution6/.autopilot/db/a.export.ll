; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution6/.autopilot/db/a.o.2.bc'
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

define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !6
  %row_outbuf_i = alloca [64 x i16], align 2
  %col_outbuf_i = alloca [64 x i16], align 2
  %col_inbuf_0 = alloca [8 x i16], align 2
  %col_inbuf_1 = alloca [8 x i16], align 2
  %col_inbuf_2 = alloca [8 x i16], align 2
  %col_inbuf_3 = alloca [8 x i16], align 2
  %col_inbuf_4 = alloca [8 x i16], align 2
  %col_inbuf_5 = alloca [8 x i16], align 2
  %col_inbuf_6 = alloca [8 x i16], align 2
  %col_inbuf_7 = alloca [8 x i16], align 2
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
  call fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7, [64 x i16]* %row_outbuf_i)
  call fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* %row_outbuf_i, [8 x i16]* %col_inbuf_0, [8 x i16]* %col_inbuf_1, [8 x i16]* %col_inbuf_2, [8 x i16]* %col_inbuf_3, [8 x i16]* %col_inbuf_4, [8 x i16]* %col_inbuf_5, [8 x i16]* %col_inbuf_6, [8 x i16]* %col_inbuf_7)
  call fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i16]* %col_inbuf_0, [8 x i16]* %col_inbuf_1, [8 x i16]* %col_inbuf_2, [8 x i16]* %col_inbuf_3, [8 x i16]* %col_inbuf_4, [8 x i16]* %col_inbuf_5, [8 x i16]* %col_inbuf_6, [8 x i16]* %col_inbuf_7, [64 x i16]* %col_outbuf_i)
  call fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* %col_outbuf_i, [64 x i16]* %buf_2d_out)
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

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_7 = trunc i29 %empty to i16
  ret i16 %empty_7
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_8 = zext i3 %1 to i7
  %empty_9 = shl i7 %empty, 3
  %empty_10 = or i7 %empty_9, %empty_8
  ret i7 %empty_10
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_11 = zext i3 %1 to i6
  %empty_12 = shl i6 %empty, 3
  %empty_13 = or i6 %empty_12, %empty_11
  ret i6 %empty_13
}

define internal fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf_i, [8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7) nounwind {
newFuncRoot:
  br label %0

.preheader6.i.exitStub:                           ; preds = %0
  ret void

.preheader7.i:                                    ; preds = %0
  %j = add i4 1, %j_0_i
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond3_i2 = icmp eq i4 %i_1_i, -8
  %i_1_i_mid2 = select i1 %exitcond3_i2, i4 0, i4 %i_1_i
  %tmp_mid2_v = select i1 %exitcond3_i2, i4 %j, i4 %j_0_i
  %tmp_mid2 = zext i4 %tmp_mid2_v to i64
  %tmp_mid2_cast = zext i4 %tmp_mid2_v to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_i_mid2, i3 0)
  %tmp_8_cast = zext i7 %tmp to i8
  %tmp_9 = add i8 %tmp_8_cast, %tmp_mid2_cast
  %tmp_9_cast = zext i8 %tmp_9 to i64
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_9_cast
  %row_outbuf_i_load = load i16* %row_outbuf_i_addr, align 2
  %tmp_3 = trunc i4 %i_1_i_mid2 to i3
  switch i3 %tmp_3, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ]

; <label>:0                                       ; preds = %ifBlock, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %ifBlock ]
  %j_0_i = phi i4 [ 0, %newFuncRoot ], [ %tmp_mid2_v, %ifBlock ]
  %i_1_i = phi i4 [ 0, %newFuncRoot ], [ %i, %ifBlock ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader6.i.exitStub, label %.preheader7.i

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_2) nounwind
  %i = add i4 %i_1_i_mid2, 1
  br label %0

branch0:                                          ; preds = %.preheader7.i
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_i_load, i16* %col_inbuf_0_addr, align 2
  br label %ifBlock

branch1:                                          ; preds = %.preheader7.i
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_i_load, i16* %col_inbuf_1_addr, align 2
  br label %ifBlock

branch2:                                          ; preds = %.preheader7.i
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_i_load, i16* %col_inbuf_2_addr, align 2
  br label %ifBlock

branch3:                                          ; preds = %.preheader7.i
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_i_load, i16* %col_inbuf_3_addr, align 2
  br label %ifBlock

branch4:                                          ; preds = %.preheader7.i
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_i_load, i16* %col_inbuf_4_addr, align 2
  br label %ifBlock

branch5:                                          ; preds = %.preheader7.i
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_i_load, i16* %col_inbuf_5_addr, align 2
  br label %ifBlock

branch6:                                          ; preds = %.preheader7.i
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_i_load, i16* %col_inbuf_6_addr, align 2
  br label %ifBlock

branch7:                                          ; preds = %.preheader7.i
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_mid2
  store i16 %row_outbuf_i_load, i16* %col_inbuf_7_addr, align 2
  br label %ifBlock
}

define internal fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf_i, [64 x i16]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %0

dct_2d.exit.exitStub:                             ; preds = %0
  ret void

.preheader.i:                                     ; preds = %0
  %j = add i4 %j_1_i, 1
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond_i2 = icmp eq i4 %i_3_i, -8
  %i_3_i_mid2 = select i1 %exitcond_i2, i4 0, i4 %i_3_i
  %tmp_1_mid2_v = select i1 %exitcond_i2, i4 %j, i4 %j_1_i
  %tmp_1_mid2_cast = zext i4 %tmp_1_mid2_v to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_mid2_v, i3 0)
  %tmp_10_cast = zext i7 %tmp to i8
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_2_cast = zext i4 %i_3_i_mid2 to i8
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_i_mid2, i3 0)
  %tmp_12_cast = zext i7 %tmp_s to i8
  %tmp_1 = add i8 %tmp_1_mid2_cast, %tmp_12_cast
  %tmp_13_cast = zext i8 %tmp_1 to i64
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_13_cast
  %tmp_2 = add i8 %tmp_2_cast, %tmp_10_cast
  %tmp_14_cast = zext i8 %tmp_2 to i64
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_14_cast
  %col_outbuf_i_load = load i16* %col_outbuf_i_addr, align 2
  store i16 %col_outbuf_i_load, i16* %buf_2d_out_addr, align 2
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_3) nounwind
  %i = add i4 %i_3_i_mid2, 1
  br label %0

; <label>:0                                       ; preds = %.preheader.i, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader.i ]
  %j_1_i = phi i4 [ 0, %newFuncRoot ], [ %tmp_1_mid2_v, %.preheader.i ]
  %i_3_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader.i ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %dct_2d.exit.exitStub, label %.preheader.i
}

define internal fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i16]* nocapture %buf_2d_in_0, [8 x i16]* nocapture %buf_2d_in_1, [8 x i16]* nocapture %buf_2d_in_2, [8 x i16]* nocapture %buf_2d_in_3, [8 x i16]* nocapture %buf_2d_in_4, [8 x i16]* nocapture %buf_2d_in_5, [8 x i16]* nocapture %buf_2d_in_6, [8 x i16]* nocapture %buf_2d_in_7, [64 x i16]* nocapture %row_outbuf_i) nounwind {
newFuncRoot:
  br label %dct_1d.exit

.preheader7.i.exitStub:                           ; preds = %dct_1d.exit
  ret void

dct_1d.exit:                                      ; preds = %1, %newFuncRoot
  %i_0_i = phi i4 [ 0, %newFuncRoot ], [ %i, %1 ]
  %exitcond5_i = icmp eq i4 %i_0_i, -8
  %i = add i4 %i_0_i, 1
  br i1 %exitcond5_i, label %.preheader7.i.exitStub, label %0

; <label>:0                                       ; preds = %dct_1d.exit
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind
  %tmp_81_cast_i = zext i4 %i_0_i to i64
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i, i3 0)
  %tmp_16_cast = zext i7 %tmp_s to i8
  %buf_2d_in_0_addr = getelementptr [8 x i16]* %buf_2d_in_0, i64 0, i64 %tmp_81_cast_i
  %buf_2d_in_1_addr = getelementptr [8 x i16]* %buf_2d_in_1, i64 0, i64 %tmp_81_cast_i
  %buf_2d_in_2_addr = getelementptr [8 x i16]* %buf_2d_in_2, i64 0, i64 %tmp_81_cast_i
  %buf_2d_in_3_addr = getelementptr [8 x i16]* %buf_2d_in_3, i64 0, i64 %tmp_81_cast_i
  %buf_2d_in_4_addr = getelementptr [8 x i16]* %buf_2d_in_4, i64 0, i64 %tmp_81_cast_i
  %buf_2d_in_5_addr = getelementptr [8 x i16]* %buf_2d_in_5, i64 0, i64 %tmp_81_cast_i
  %buf_2d_in_6_addr = getelementptr [8 x i16]* %buf_2d_in_6, i64 0, i64 %tmp_81_cast_i
  %buf_2d_in_7_addr = getelementptr [8 x i16]* %buf_2d_in_7, i64 0, i64 %tmp_81_cast_i
  br label %1

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]
  %exitcond1_i = icmp eq i4 %k_i, -8
  %k = add i4 %k_i, 1
  br i1 %exitcond1_i, label %dct_1d.exit, label %2

; <label>:2                                       ; preds = %1
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_4_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_i = zext i4 %k_i to i64
  %tmp_i_cast = zext i4 %k_i to i8
  %tmp_3 = add i8 %tmp_16_cast, %tmp_i_cast
  %tmp_17_cast = zext i8 %tmp_3 to i64
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_17_cast
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29
  %buf_2d_in_0_load = load i16* %buf_2d_in_0_addr, align 2
  %tmp_5_cast_i = sext i16 %buf_2d_in_0_load to i29
  %tmp_6_i = mul i29 %coeff_cast_i, %tmp_5_cast_i
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29
  %buf_2d_in_1_load = load i16* %buf_2d_in_1_addr, align 2
  %tmp_5_1_cast_i = sext i16 %buf_2d_in_1_load to i29
  %tmp_6_1_i = mul i29 %coeff_1_cast_i, %tmp_5_1_cast_i
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29
  %buf_2d_in_2_load = load i16* %buf_2d_in_2_addr, align 2
  %tmp_5_2_cast_i = sext i16 %buf_2d_in_2_load to i29
  %tmp_6_2_i = mul i29 %coeff_2_cast_i, %tmp_5_2_cast_i
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29
  %buf_2d_in_3_load = load i16* %buf_2d_in_3_addr, align 2
  %tmp_5_3_cast_i = sext i16 %buf_2d_in_3_load to i29
  %tmp_6_3_i = mul i29 %coeff_3_cast_i, %tmp_5_3_cast_i
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29
  %buf_2d_in_4_load = load i16* %buf_2d_in_4_addr, align 2
  %tmp_5_4_cast_i = sext i16 %buf_2d_in_4_load to i29
  %tmp_6_4_i = mul i29 %coeff_4_cast_i, %tmp_5_4_cast_i
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29
  %buf_2d_in_5_load = load i16* %buf_2d_in_5_addr, align 2
  %tmp_5_5_cast_i = sext i16 %buf_2d_in_5_load to i29
  %tmp_6_5_i = mul i29 %coeff_5_cast_i, %tmp_5_5_cast_i
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29
  %buf_2d_in_6_load = load i16* %buf_2d_in_6_addr, align 2
  %tmp_5_6_cast_i = sext i16 %buf_2d_in_6_load to i29
  %tmp_6_6_i = mul i29 %coeff_6_cast_i, %tmp_5_6_cast_i
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29
  %buf_2d_in_7_load = load i16* %buf_2d_in_7_addr, align 2
  %tmp_5_7_cast_i = sext i16 %buf_2d_in_7_load to i29
  %tmp_6_7_i = mul i29 %coeff_7_cast_i, %tmp_5_7_cast_i
  %tmp1 = add i29 %tmp_6_1_i, %tmp_6_i
  %tmp2 = add i29 %tmp_6_3_i, %tmp_6_2_i
  %tmp = add i29 %tmp1, %tmp2
  %tmp4 = add i29 %tmp_6_5_i, %tmp_6_4_i
  %tmp6 = add i29 %tmp_6_7_i, 4096
  %tmp5 = add i29 %tmp_6_6_i, %tmp6
  %tmp3 = add i29 %tmp4, %tmp5
  %tmp_i_17 = add i29 %tmp, %tmp3
  %tmp_3_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_i_17, i32 13, i32 28)
  store i16 %tmp_3_i, i16* %row_outbuf_i_addr, align 2
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_4_i) nounwind
  br label %1
}

define internal fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7, [64 x i16]* nocapture %col_outbuf_i) nounwind {
newFuncRoot:
  br label %.preheader6.i

.preheader.i.exitStub:                            ; preds = %.preheader6.i
  ret void

.preheader6.i:                                    ; preds = %1, %newFuncRoot
  %i_2_i = phi i4 [ 0, %newFuncRoot ], [ %i, %1 ]
  %exitcond2_i = icmp eq i4 %i_2_i, -8
  %i = add i4 %i_2_i, 1
  br i1 %exitcond2_i, label %.preheader.i.exitStub, label %0

; <label>:0                                       ; preds = %.preheader6.i
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind
  %tmp_81_cast_i = zext i4 %i_2_i to i64
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i, i3 0)
  %tmp_19_cast = zext i7 %tmp_s to i8
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_81_cast_i
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_81_cast_i
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_81_cast_i
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_81_cast_i
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_81_cast_i
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_81_cast_i
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_81_cast_i
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_81_cast_i
  br label %1

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]
  %exitcond1_i = icmp eq i4 %k_i, -8
  %k = add i4 %k_i, 1
  br i1 %exitcond1_i, label %.preheader6.i, label %2

; <label>:2                                       ; preds = %1
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_4_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_i = zext i4 %k_i to i64
  %tmp_i_cast = zext i4 %k_i to i8
  %tmp_4 = add i8 %tmp_19_cast, %tmp_i_cast
  %tmp_20_cast = zext i8 %tmp_4 to i64
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_20_cast
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29
  %col_inbuf_0_load = load i16* %col_inbuf_0_addr, align 2
  %tmp_5_cast_i = sext i16 %col_inbuf_0_load to i29
  %tmp_6_i = mul i29 %coeff_cast_i, %tmp_5_cast_i
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29
  %col_inbuf_1_load = load i16* %col_inbuf_1_addr, align 2
  %tmp_5_1_cast_i = sext i16 %col_inbuf_1_load to i29
  %tmp_6_1_i = mul i29 %coeff_1_cast_i, %tmp_5_1_cast_i
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29
  %col_inbuf_2_load = load i16* %col_inbuf_2_addr, align 2
  %tmp_5_2_cast_i = sext i16 %col_inbuf_2_load to i29
  %tmp_6_2_i = mul i29 %coeff_2_cast_i, %tmp_5_2_cast_i
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29
  %col_inbuf_3_load = load i16* %col_inbuf_3_addr, align 2
  %tmp_5_3_cast_i = sext i16 %col_inbuf_3_load to i29
  %tmp_6_3_i = mul i29 %coeff_3_cast_i, %tmp_5_3_cast_i
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29
  %col_inbuf_4_load = load i16* %col_inbuf_4_addr, align 2
  %tmp_5_4_cast_i = sext i16 %col_inbuf_4_load to i29
  %tmp_6_4_i = mul i29 %coeff_4_cast_i, %tmp_5_4_cast_i
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29
  %col_inbuf_5_load = load i16* %col_inbuf_5_addr, align 2
  %tmp_5_5_cast_i = sext i16 %col_inbuf_5_load to i29
  %tmp_6_5_i = mul i29 %coeff_5_cast_i, %tmp_5_5_cast_i
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29
  %col_inbuf_6_load = load i16* %col_inbuf_6_addr, align 2
  %tmp_5_6_cast_i = sext i16 %col_inbuf_6_load to i29
  %tmp_6_6_i = mul i29 %coeff_6_cast_i, %tmp_5_6_cast_i
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29
  %col_inbuf_7_load = load i16* %col_inbuf_7_addr, align 2
  %tmp_5_7_cast_i = sext i16 %col_inbuf_7_load to i29
  %tmp_6_7_i = mul i29 %coeff_7_cast_i, %tmp_5_7_cast_i
  %tmp1 = add i29 %tmp_6_1_i, %tmp_6_i
  %tmp2 = add i29 %tmp_6_3_i, %tmp_6_2_i
  %tmp = add i29 %tmp1, %tmp2
  %tmp4 = add i29 %tmp_6_5_i, %tmp_6_4_i
  %tmp6 = add i29 %tmp_6_7_i, 4096
  %tmp5 = add i29 %tmp_6_6_i, %tmp6
  %tmp3 = add i29 %tmp4, %tmp5
  %tmp_i_20 = add i29 %tmp, %tmp3
  %tmp_3_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_i_20, i32 13, i32 28)
  store i16 %tmp_3_i, i16* %col_outbuf_i_addr, align 2
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_4_i) nounwind
  br label %1
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
