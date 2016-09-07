; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution6/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=2 type=[8 x i14]*]
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
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=6 type=[15 x i8]*]

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

; [#uses=27]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !75
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !81
  %row_outbuf_i = alloca [64 x i16], align 2      ; [#uses=2 type=[64 x i16]*]
  %col_outbuf_i = alloca [64 x i16], align 2      ; [#uses=2 type=[64 x i16]*]
  %col_inbuf_0 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_1 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_2 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_3 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_4 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_5 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_6 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
  %col_inbuf_7 = alloca [8 x i16], align 2        ; [#uses=2 type=[8 x i16]*]
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
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !85), !dbg !86 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !87), !dbg !88 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_0}, metadata !89), !dbg !100 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_1}, metadata !102), !dbg !100 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_2}, metadata !103), !dbg !100 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_3}, metadata !104), !dbg !100 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_4}, metadata !105), !dbg !100 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_5}, metadata !106), !dbg !100 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_6}, metadata !107), !dbg !100 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %col_inbuf_7}, metadata !108), !dbg !100 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[7]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_0}, metadata !109), !dbg !111 ; [debug line = 81:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_1}, metadata !112), !dbg !111 ; [debug line = 81:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_2}, metadata !113), !dbg !111 ; [debug line = 81:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_3}, metadata !114), !dbg !111 ; [debug line = 81:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_4}, metadata !115), !dbg !111 ; [debug line = 81:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_5}, metadata !116), !dbg !111 ; [debug line = 81:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_6}, metadata !117), !dbg !111 ; [debug line = 81:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %buf_2d_in_7}, metadata !118), !dbg !111 ; [debug line = 81:10] [debug variable = buf_2d_in[7]]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_out}, metadata !119), !dbg !120 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @dct_read_data([64 x i16]* %input, [8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7) nounwind, !dbg !121 ; [debug line = 85:4]
  call fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i16]* %buf_2d_in_0, [8 x i16]* %buf_2d_in_1, [8 x i16]* %buf_2d_in_2, [8 x i16]* %buf_2d_in_3, [8 x i16]* %buf_2d_in_4, [8 x i16]* %buf_2d_in_5, [8 x i16]* %buf_2d_in_6, [8 x i16]* %buf_2d_in_7, [64 x i16]* %row_outbuf_i)
  call fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* %row_outbuf_i, [8 x i16]* %col_inbuf_0, [8 x i16]* %col_inbuf_1, [8 x i16]* %col_inbuf_2, [8 x i16]* %col_inbuf_3, [8 x i16]* %col_inbuf_4, [8 x i16]* %col_inbuf_5, [8 x i16]* %col_inbuf_6, [8 x i16]* %col_inbuf_7)
  call fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i16]* %col_inbuf_0, [8 x i16]* %col_inbuf_1, [8 x i16]* %col_inbuf_2, [8 x i16]* %col_inbuf_3, [8 x i16]* %col_inbuf_4, [8 x i16]* %col_inbuf_5, [8 x i16]* %col_inbuf_6, [8 x i16]* %col_inbuf_7, [64 x i16]* %col_outbuf_i)
  call fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* %col_outbuf_i, [64 x i16]* %buf_2d_out)
  call fastcc void @dct_write_data([64 x i16]* %buf_2d_out, [64 x i16]* %output) nounwind, !dbg !122 ; [debug line = 90:4]
  ret void, !dbg !123                             ; [debug line = 91:1]
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

; [#uses=6]
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

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=2]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_7 = trunc i29 %empty to i16              ; [#uses=1 type=i16]
  ret i16 %empty_7
}

; [#uses=6]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_8 = zext i3 %1 to i7                     ; [#uses=1 type=i7]
  %empty_9 = shl i7 %empty, 3                     ; [#uses=1 type=i7]
  %empty_10 = or i7 %empty_9, %empty_8            ; [#uses=1 type=i7]
  ret i7 %empty_10
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_11 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_12 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_13 = or i6 %empty_12, %empty_11          ; [#uses=1 type=i6]
  ret i6 %empty_13
}

; [#uses=1]
define internal fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf_i, [8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7) nounwind {
newFuncRoot:
  br label %0

.preheader6.i.exitStub:                           ; preds = %0
  ret void

.preheader7.i:                                    ; preds = %0
  %j = add i4 1, %j_0_i, !dbg !124                ; [#uses=1 type=i4] [debug line = 37:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !126) nounwind, !dbg !124 ; [debug line = 37:61@87:4] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond3_i2 = icmp eq i4 %i_1_i, -8, !dbg !128 ; [#uses=2 type=i1] [debug line = 39:11@87:4]
  %i_1_i_mid2 = select i1 %exitcond3_i2, i4 0, i4 %i_1_i ; [#uses=3 type=i4]
  %tmp_mid2_v = select i1 %exitcond3_i2, i4 %j, i4 %j_0_i, !dbg !131 ; [#uses=3 type=i4] [debug line = 40:1@87:4]
  %tmp_mid2 = zext i4 %tmp_mid2_v to i64, !dbg !131 ; [#uses=8 type=i64] [debug line = 40:1@87:4]
  %tmp_mid2_cast = zext i4 %tmp_mid2_v to i8, !dbg !133 ; [#uses=1 type=i8] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !133 ; [debug line = 40:2@87:4]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6) nounwind, !dbg !133 ; [#uses=1 type=i32] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !134 ; [debug line = 41:1@87:4]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_i_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_8_cast = zext i7 %tmp to i8, !dbg !131     ; [#uses=1 type=i8] [debug line = 40:1@87:4]
  %tmp_9 = add i8 %tmp_8_cast, %tmp_mid2_cast, !dbg !131 ; [#uses=1 type=i8] [debug line = 40:1@87:4]
  %tmp_9_cast = zext i8 %tmp_9 to i64, !dbg !131  ; [#uses=1 type=i64] [debug line = 40:1@87:4]
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_9_cast, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %row_outbuf_i_load = load i16* %row_outbuf_i_addr, align 2, !dbg !131 ; [#uses=8 type=i16] [debug line = 40:1@87:4]
  %tmp_3 = trunc i4 %i_1_i_mid2 to i3             ; [#uses=1 type=i3]
  switch i3 %tmp_3, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !131                                    ; [debug line = 40:1@87:4]

; <label>:0                                       ; preds = %ifBlock, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %ifBlock ] ; [#uses=2 type=i7]
  %j_0_i = phi i4 [ 0, %newFuncRoot ], [ %tmp_mid2_v, %ifBlock ] ; [#uses=2 type=i4]
  %i_1_i = phi i4 [ 0, %newFuncRoot ], [ %i, %ifBlock ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader6.i.exitStub, label %.preheader7.i

ifBlock:                                          ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_2) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %i = add i4 %i_1_i_mid2, 1, !dbg !136           ; [#uses=1 type=i4] [debug line = 39:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !137) nounwind, !dbg !136 ; [debug line = 39:63@87:4] [debug variable = i]
  br label %0

branch0:                                          ; preds = %.preheader7.i
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_mid2, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_0_addr, align 2, !dbg !131 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !131                    ; [debug line = 40:1@87:4]

branch1:                                          ; preds = %.preheader7.i
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_mid2, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_1_addr, align 2, !dbg !131 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !131                    ; [debug line = 40:1@87:4]

branch2:                                          ; preds = %.preheader7.i
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_mid2, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_2_addr, align 2, !dbg !131 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !131                    ; [debug line = 40:1@87:4]

branch3:                                          ; preds = %.preheader7.i
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_mid2, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_3_addr, align 2, !dbg !131 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !131                    ; [debug line = 40:1@87:4]

branch4:                                          ; preds = %.preheader7.i
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_mid2, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_4_addr, align 2, !dbg !131 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !131                    ; [debug line = 40:1@87:4]

branch5:                                          ; preds = %.preheader7.i
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_mid2, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_5_addr, align 2, !dbg !131 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !131                    ; [debug line = 40:1@87:4]

branch6:                                          ; preds = %.preheader7.i
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_mid2, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_6_addr, align 2, !dbg !131 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !131                    ; [debug line = 40:1@87:4]

branch7:                                          ; preds = %.preheader7.i
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_mid2, !dbg !131 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  store i16 %row_outbuf_i_load, i16* %col_inbuf_7_addr, align 2, !dbg !131 ; [debug line = 40:1@87:4]
  br label %ifBlock, !dbg !131                    ; [debug line = 40:1@87:4]
}

; [#uses=1]
define internal fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf_i, [64 x i16]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %0

dct_2d.exit.exitStub:                             ; preds = %0
  ret void

.preheader.i:                                     ; preds = %0
  %j = add i4 %j_1_i, 1, !dbg !138                ; [#uses=1 type=i4] [debug line = 48:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !126) nounwind, !dbg !138 ; [debug line = 48:61@87:4] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i2 = icmp eq i4 %i_3_i, -8, !dbg !140 ; [#uses=2 type=i1] [debug line = 50:11@87:4]
  %i_3_i_mid2 = select i1 %exitcond_i2, i4 0, i4 %i_3_i ; [#uses=3 type=i4]
  %tmp_1_mid2_v = select i1 %exitcond_i2, i4 %j, i4 %j_1_i, !dbg !143 ; [#uses=3 type=i4] [debug line = 51:1@87:4]
  %tmp_1_mid2_cast = zext i4 %tmp_1_mid2_v to i8  ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_10_cast = zext i7 %tmp to i8, !dbg !145    ; [#uses=1 type=i8] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind, !dbg !145 ; [debug line = 51:2@87:4]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9) nounwind, !dbg !145 ; [#uses=1 type=i32] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !146 ; [debug line = 52:1@87:4]
  %tmp_2_cast = zext i4 %i_3_i_mid2 to i8         ; [#uses=1 type=i8]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_i_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_12_cast = zext i7 %tmp_s to i8, !dbg !143  ; [#uses=1 type=i8] [debug line = 51:1@87:4]
  %tmp_1 = add i8 %tmp_1_mid2_cast, %tmp_12_cast, !dbg !143 ; [#uses=1 type=i8] [debug line = 51:1@87:4]
  %tmp_13_cast = zext i8 %tmp_1 to i64, !dbg !143 ; [#uses=1 type=i64] [debug line = 51:1@87:4]
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_13_cast, !dbg !143 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %tmp_2 = add i8 %tmp_2_cast, %tmp_10_cast, !dbg !143 ; [#uses=1 type=i8] [debug line = 51:1@87:4]
  %tmp_14_cast = zext i8 %tmp_2 to i64, !dbg !143 ; [#uses=1 type=i64] [debug line = 51:1@87:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_14_cast, !dbg !143 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %col_outbuf_i_load = load i16* %col_outbuf_i_addr, align 2, !dbg !143 ; [#uses=1 type=i16] [debug line = 51:1@87:4]
  store i16 %col_outbuf_i_load, i16* %buf_2d_out_addr, align 2, !dbg !143 ; [debug line = 51:1@87:4]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_3) nounwind, !dbg !147 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %i = add i4 %i_3_i_mid2, 1, !dbg !148           ; [#uses=1 type=i4] [debug line = 50:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !137) nounwind, !dbg !148 ; [debug line = 50:63@87:4] [debug variable = i]
  br label %0

; <label>:0                                       ; preds = %.preheader.i, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader.i ] ; [#uses=2 type=i7]
  %j_1_i = phi i4 [ 0, %newFuncRoot ], [ %tmp_1_mid2_v, %.preheader.i ] ; [#uses=2 type=i4]
  %i_3_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader.i ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %dct_2d.exit.exitStub, label %.preheader.i
}

; [#uses=1]
define internal fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i16]* nocapture %buf_2d_in_0, [8 x i16]* nocapture %buf_2d_in_1, [8 x i16]* nocapture %buf_2d_in_2, [8 x i16]* nocapture %buf_2d_in_3, [8 x i16]* nocapture %buf_2d_in_4, [8 x i16]* nocapture %buf_2d_in_5, [8 x i16]* nocapture %buf_2d_in_6, [8 x i16]* nocapture %buf_2d_in_7, [64 x i16]* nocapture %row_outbuf_i) nounwind {
newFuncRoot:
  br label %dct_1d.exit, !dbg !149                ; [debug line = 32:8@87:4]

.preheader7.i.exitStub:                           ; preds = %dct_1d.exit
  ret void

dct_1d.exit:                                      ; preds = %1, %newFuncRoot
  %i_0_i = phi i4 [ 0, %newFuncRoot ], [ %i, %1 ] ; [#uses=4 type=i4]
  %exitcond5_i = icmp eq i4 %i_0_i, -8, !dbg !149 ; [#uses=1 type=i1] [debug line = 32:8@87:4]
  %i = add i4 %i_0_i, 1, !dbg !151                ; [#uses=1 type=i4] [debug line = 32:60@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !137) nounwind, !dbg !151 ; [debug line = 32:60@87:4] [debug variable = i]
  br i1 %exitcond5_i, label %.preheader7.i.exitStub, label %0, !dbg !149 ; [debug line = 32:8@87:4]

; <label>:0                                       ; preds = %dct_1d.exit
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind, !dbg !152 ; [debug line = 32:66@87:4]
  %tmp_81_cast_i = zext i4 %i_0_i to i64          ; [#uses=8 type=i64]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i, i3 0) ; [#uses=1 type=i7]
  %tmp_16_cast = zext i7 %tmp_s to i8, !dbg !154  ; [#uses=1 type=i8] [debug line = 4:81@33:7@87:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %row_outbuf_i}, i64 0, metadata !160) nounwind, !dbg !154 ; [debug line = 4:81@33:7@87:4] [debug variable = dst]
  %buf_2d_in_0_addr = getelementptr [8 x i16]* %buf_2d_in_0, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_1_addr = getelementptr [8 x i16]* %buf_2d_in_1, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_2_addr = getelementptr [8 x i16]* %buf_2d_in_2, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_3_addr = getelementptr [8 x i16]* %buf_2d_in_3, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_4_addr = getelementptr [8 x i16]* %buf_2d_in_4, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_5_addr = getelementptr [8 x i16]* %buf_2d_in_5, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_6_addr = getelementptr [8 x i16]* %buf_2d_in_6, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %buf_2d_in_7_addr = getelementptr [8 x i16]* %buf_2d_in_7, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  br label %1, !dbg !162                          ; [debug line = 13:9@33:7@87:4]

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]             ; [#uses=4 type=i4]
  %exitcond1_i = icmp eq i4 %k_i, -8, !dbg !162   ; [#uses=1 type=i1] [debug line = 13:9@33:7@87:4]
  %k = add i4 %k_i, 1, !dbg !165                  ; [#uses=1 type=i4] [debug line = 13:61@33:7@87:4]
  br i1 %exitcond1_i, label %dct_1d.exit, label %2, !dbg !162 ; [debug line = 13:9@33:7@87:4]

; <label>:2                                       ; preds = %1
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !166 ; [debug line = 13:67@33:7@87:4]
  %tmp_4_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !166 ; [#uses=1 type=i32] [debug line = 13:67@33:7@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !168 ; [debug line = 14:1@33:7@87:4]
  %tmp_i = zext i4 %k_i to i64, !dbg !169         ; [#uses=8 type=i64] [debug line = 16:48@33:7@87:4]
  %tmp_i_cast = zext i4 %k_i to i8, !dbg !172     ; [#uses=1 type=i8] [debug line = 19:7@33:7@87:4]
  %tmp_3 = add i8 %tmp_16_cast, %tmp_i_cast, !dbg !172 ; [#uses=1 type=i8] [debug line = 19:7@33:7@87:4]
  %tmp_17_cast = zext i8 %tmp_3 to i64, !dbg !172 ; [#uses=1 type=i64] [debug line = 19:7@33:7@87:4]
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_17_cast, !dbg !172 ; [#uses=1 type=i16*] [debug line = 19:7@33:7@87:4]
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i, !dbg !169 ; [#uses=1 type=i14*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2, !dbg !169 ; [#uses=1 type=i14] [debug line = 16:48@33:7@87:4]
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_0_load = load i16* %buf_2d_in_0_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_cast_i = sext i16 %buf_2d_in_0_load to i29, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_6_i = mul i29 %coeff_cast_i, %tmp_5_cast_i, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i, !dbg !169 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2, !dbg !169 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_1_load = load i16* %buf_2d_in_1_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_1_cast_i = sext i16 %buf_2d_in_1_load to i29, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_6_1_i = mul i29 %coeff_1_cast_i, %tmp_5_1_cast_i, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i, !dbg !169 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2, !dbg !169 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_2_load = load i16* %buf_2d_in_2_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_2_cast_i = sext i16 %buf_2d_in_2_load to i29, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_6_2_i = mul i29 %coeff_2_cast_i, %tmp_5_2_cast_i, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i, !dbg !169 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2, !dbg !169 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_3_load = load i16* %buf_2d_in_3_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_3_cast_i = sext i16 %buf_2d_in_3_load to i29, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_6_3_i = mul i29 %coeff_3_cast_i, %tmp_5_3_cast_i, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i, !dbg !169 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2, !dbg !169 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_4_load = load i16* %buf_2d_in_4_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_4_cast_i = sext i16 %buf_2d_in_4_load to i29, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_6_4_i = mul i29 %coeff_4_cast_i, %tmp_5_4_cast_i, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i, !dbg !169 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2, !dbg !169 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_5_load = load i16* %buf_2d_in_5_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_5_cast_i = sext i16 %buf_2d_in_5_load to i29, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_6_5_i = mul i29 %coeff_5_cast_i, %tmp_5_5_cast_i, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i, !dbg !169 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2, !dbg !169 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_6_load = load i16* %buf_2d_in_6_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_6_cast_i = sext i16 %buf_2d_in_6_load to i29, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_6_6_i = mul i29 %coeff_6_cast_i, %tmp_5_6_cast_i, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i, !dbg !169 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2, !dbg !169 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29 ; [#uses=1 type=i29]
  %buf_2d_in_7_load = load i16* %buf_2d_in_7_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_7_cast_i = sext i16 %buf_2d_in_7_load to i29, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp_6_7_i = mul i29 %coeff_7_cast_i, %tmp_5_7_cast_i, !dbg !173 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp1 = add i29 %tmp_6_1_i, %tmp_6_i, !dbg !172 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp2 = add i29 %tmp_6_3_i, %tmp_6_2_i, !dbg !172 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp = add i29 %tmp1, %tmp2, !dbg !172          ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp4 = add i29 %tmp_6_5_i, %tmp_6_4_i, !dbg !172 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp6 = add i29 %tmp_6_7_i, 4096, !dbg !172     ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp5 = add i29 %tmp_6_6_i, %tmp6, !dbg !172    ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp3 = add i29 %tmp4, %tmp5, !dbg !172         ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp_i_17 = add i29 %tmp, %tmp3, !dbg !172      ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp_3_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_i_17, i32 13, i32 28), !dbg !172 ; [#uses=1 type=i16] [debug line = 19:7@33:7@87:4]
  store i16 %tmp_3_i, i16* %row_outbuf_i_addr, align 2, !dbg !172 ; [debug line = 19:7@33:7@87:4]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_4_i) nounwind, !dbg !174 ; [#uses=0 type=i32] [debug line = 20:4@33:7@87:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !175) nounwind, !dbg !165 ; [debug line = 13:61@33:7@87:4] [debug variable = k]
  br label %1, !dbg !165                          ; [debug line = 13:61@33:7@87:4]
}

; [#uses=1]
define internal fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i16]* nocapture %col_inbuf_0, [8 x i16]* nocapture %col_inbuf_1, [8 x i16]* nocapture %col_inbuf_2, [8 x i16]* nocapture %col_inbuf_3, [8 x i16]* nocapture %col_inbuf_4, [8 x i16]* nocapture %col_inbuf_5, [8 x i16]* nocapture %col_inbuf_6, [8 x i16]* nocapture %col_inbuf_7, [64 x i16]* nocapture %col_outbuf_i) nounwind {
newFuncRoot:
  br label %.preheader6.i

.preheader.i.exitStub:                            ; preds = %.preheader6.i
  ret void

.preheader6.i:                                    ; preds = %1, %newFuncRoot
  %i_2_i = phi i4 [ 0, %newFuncRoot ], [ %i, %1 ] ; [#uses=4 type=i4]
  %exitcond2_i = icmp eq i4 %i_2_i, -8, !dbg !176 ; [#uses=1 type=i1] [debug line = 43:9@87:4]
  %i = add i4 %i_2_i, 1, !dbg !178                ; [#uses=1 type=i4] [debug line = 43:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !137) nounwind, !dbg !178 ; [debug line = 43:61@87:4] [debug variable = i]
  br i1 %exitcond2_i, label %.preheader.i.exitStub, label %0, !dbg !176 ; [debug line = 43:9@87:4]

; <label>:0                                       ; preds = %.preheader6.i
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind, !dbg !179 ; [debug line = 43:67@87:4]
  %tmp_81_cast_i = zext i4 %i_2_i to i64          ; [#uses=8 type=i64]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i, i3 0) ; [#uses=1 type=i7]
  %tmp_19_cast = zext i7 %tmp_s to i8, !dbg !181  ; [#uses=1 type=i8] [debug line = 4:81@44:7@87:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %col_outbuf_i}, i64 0, metadata !183) nounwind, !dbg !181 ; [debug line = 4:81@44:7@87:4] [debug variable = dst]
  %col_inbuf_0_addr = getelementptr [8 x i16]* %col_inbuf_0, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_1_addr = getelementptr [8 x i16]* %col_inbuf_1, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_2_addr = getelementptr [8 x i16]* %col_inbuf_2, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_3_addr = getelementptr [8 x i16]* %col_inbuf_3, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_4_addr = getelementptr [8 x i16]* %col_inbuf_4, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_5_addr = getelementptr [8 x i16]* %col_inbuf_5, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_6_addr = getelementptr [8 x i16]* %col_inbuf_6, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  %col_inbuf_7_addr = getelementptr [8 x i16]* %col_inbuf_7, i64 0, i64 %tmp_81_cast_i ; [#uses=1 type=i16*]
  br label %1, !dbg !184                          ; [debug line = 13:9@44:7@87:4]

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]             ; [#uses=4 type=i4]
  %exitcond1_i = icmp eq i4 %k_i, -8, !dbg !184   ; [#uses=1 type=i1] [debug line = 13:9@44:7@87:4]
  %k = add i4 %k_i, 1, !dbg !185                  ; [#uses=1 type=i4] [debug line = 13:61@44:7@87:4]
  br i1 %exitcond1_i, label %.preheader6.i, label %2, !dbg !184 ; [debug line = 13:9@44:7@87:4]

; <label>:2                                       ; preds = %1
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !186 ; [debug line = 13:67@44:7@87:4]
  %tmp_4_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !186 ; [#uses=1 type=i32] [debug line = 13:67@44:7@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !187 ; [debug line = 14:1@44:7@87:4]
  %tmp_i = zext i4 %k_i to i64, !dbg !188         ; [#uses=8 type=i64] [debug line = 16:48@44:7@87:4]
  %tmp_i_cast = zext i4 %k_i to i8, !dbg !189     ; [#uses=1 type=i8] [debug line = 19:7@44:7@87:4]
  %tmp_4 = add i8 %tmp_19_cast, %tmp_i_cast, !dbg !189 ; [#uses=1 type=i8] [debug line = 19:7@44:7@87:4]
  %tmp_20_cast = zext i8 %tmp_4 to i64, !dbg !189 ; [#uses=1 type=i64] [debug line = 19:7@44:7@87:4]
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_20_cast, !dbg !189 ; [#uses=1 type=i16*] [debug line = 19:7@44:7@87:4]
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i, !dbg !188 ; [#uses=1 type=i14*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2, !dbg !188 ; [#uses=1 type=i14] [debug line = 16:48@44:7@87:4]
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_0_load = load i16* %col_inbuf_0_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_cast_i = sext i16 %col_inbuf_0_load to i29, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_6_i = mul i29 %coeff_cast_i, %tmp_5_cast_i, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_1_load = load i16* %col_inbuf_1_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_1_cast_i = sext i16 %col_inbuf_1_load to i29, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_6_1_i = mul i29 %coeff_1_cast_i, %tmp_5_1_cast_i, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_2_load = load i16* %col_inbuf_2_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_2_cast_i = sext i16 %col_inbuf_2_load to i29, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_6_2_i = mul i29 %coeff_2_cast_i, %tmp_5_2_cast_i, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_3_load = load i16* %col_inbuf_3_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_3_cast_i = sext i16 %col_inbuf_3_load to i29, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_6_3_i = mul i29 %coeff_3_cast_i, %tmp_5_3_cast_i, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_4_load = load i16* %col_inbuf_4_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_4_cast_i = sext i16 %col_inbuf_4_load to i29, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_6_4_i = mul i29 %coeff_4_cast_i, %tmp_5_4_cast_i, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_5_load = load i16* %col_inbuf_5_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_5_cast_i = sext i16 %col_inbuf_5_load to i29, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_6_5_i = mul i29 %coeff_5_cast_i, %tmp_5_5_cast_i, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_6_load = load i16* %col_inbuf_6_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_6_cast_i = sext i16 %col_inbuf_6_load to i29, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_6_6_i = mul i29 %coeff_6_cast_i, %tmp_5_6_cast_i, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i, !dbg !188 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2, !dbg !188 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29 ; [#uses=1 type=i29]
  %col_inbuf_7_load = load i16* %col_inbuf_7_addr, align 2 ; [#uses=1 type=i16]
  %tmp_5_7_cast_i = sext i16 %col_inbuf_7_load to i29, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp_6_7_i = mul i29 %coeff_7_cast_i, %tmp_5_7_cast_i, !dbg !190 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp1 = add i29 %tmp_6_1_i, %tmp_6_i, !dbg !189 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp2 = add i29 %tmp_6_3_i, %tmp_6_2_i, !dbg !189 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp = add i29 %tmp1, %tmp2, !dbg !189          ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp4 = add i29 %tmp_6_5_i, %tmp_6_4_i, !dbg !189 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp6 = add i29 %tmp_6_7_i, 4096, !dbg !189     ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp5 = add i29 %tmp_6_6_i, %tmp6, !dbg !189    ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp3 = add i29 %tmp4, %tmp5, !dbg !189         ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp_i_20 = add i29 %tmp, %tmp3, !dbg !189      ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp_3_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_i_20, i32 13, i32 28), !dbg !189 ; [#uses=1 type=i16] [debug line = 19:7@44:7@87:4]
  store i16 %tmp_3_i, i16* %col_outbuf_i_addr, align 2, !dbg !189 ; [debug line = 19:7@44:7@87:4]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_4_i) nounwind, !dbg !191 ; [#uses=0 type=i32] [debug line = 20:4@44:7@87:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !192) nounwind, !dbg !185 ; [debug line = 13:61@44:7@87:4] [debug variable = k]
  br label %1, !dbg !185                          ; [debug line = 13:61@44:7@87:4]
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
!70 = metadata !{i32 80, i32 1, metadata !71, null}
!71 = metadata !{i32 786443, metadata !72, i32 79, i32 1, metadata !2, i32 28} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct", metadata !"dct", metadata !"", metadata !2, i32 78, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 79} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !10, metadata !10}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 15, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"input", metadata !79, metadata !"short", i32 0, i32 15}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 63, i32 1}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 15, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"output", metadata !79, metadata !"short", i32 0, i32 15}
!85 = metadata !{i32 786689, metadata !72, metadata !"input", null, i32 78, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 78, i32 16, metadata !72, null}
!87 = metadata !{i32 786689, metadata !72, metadata !"output", null, i32 78, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 78, i32 38, metadata !72, null}
!89 = metadata !{i32 790529, metadata !90, metadata !"col_inbuf[0]", null, i32 27, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!90 = metadata !{i32 786688, metadata !91, metadata !"col_inbuf", metadata !2, i32 27, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 786443, metadata !92, i32 25, i32 1, metadata !2, i32 5} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !2, i32 23, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 25} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !95, metadata !95}
!95 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ]
!96 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !97, metadata !8, i32 0, i32 0} ; [ DW_TAG_array_type ]
!97 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !2, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!98 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !97, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!99 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !97, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!100 = metadata !{i32 27, i32 109, metadata !91, metadata !101}
!101 = metadata !{i32 87, i32 4, metadata !71, null}
!102 = metadata !{i32 790529, metadata !90, metadata !"col_inbuf[1]", null, i32 27, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!103 = metadata !{i32 790529, metadata !90, metadata !"col_inbuf[2]", null, i32 27, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!104 = metadata !{i32 790529, metadata !90, metadata !"col_inbuf[3]", null, i32 27, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!105 = metadata !{i32 790529, metadata !90, metadata !"col_inbuf[4]", null, i32 27, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!106 = metadata !{i32 790529, metadata !90, metadata !"col_inbuf[5]", null, i32 27, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!107 = metadata !{i32 790529, metadata !90, metadata !"col_inbuf[6]", null, i32 27, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!108 = metadata !{i32 790529, metadata !90, metadata !"col_inbuf[7]", null, i32 27, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!109 = metadata !{i32 790529, metadata !110, metadata !"buf_2d_in[0]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!110 = metadata !{i32 786688, metadata !71, metadata !"buf_2d_in", metadata !2, i32 81, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 81, i32 10, metadata !71, null}
!112 = metadata !{i32 790529, metadata !110, metadata !"buf_2d_in[1]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!113 = metadata !{i32 790529, metadata !110, metadata !"buf_2d_in[2]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!114 = metadata !{i32 790529, metadata !110, metadata !"buf_2d_in[3]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!115 = metadata !{i32 790529, metadata !110, metadata !"buf_2d_in[4]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!116 = metadata !{i32 790529, metadata !110, metadata !"buf_2d_in[5]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!117 = metadata !{i32 790529, metadata !110, metadata !"buf_2d_in[6]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!118 = metadata !{i32 790529, metadata !110, metadata !"buf_2d_in[7]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!119 = metadata !{i32 786688, metadata !71, metadata !"buf_2d_out", metadata !2, i32 82, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 82, i32 10, metadata !71, null}
!121 = metadata !{i32 85, i32 4, metadata !71, null}
!122 = metadata !{i32 90, i32 4, metadata !71, null}
!123 = metadata !{i32 91, i32 1, metadata !71, null}
!124 = metadata !{i32 37, i32 61, metadata !125, metadata !101}
!125 = metadata !{i32 786443, metadata !91, i32 37, i32 4, metadata !2, i32 8} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 786688, metadata !91, metadata !"j", metadata !2, i32 28, metadata !127, i32 0, metadata !101} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!128 = metadata !{i32 39, i32 11, metadata !129, metadata !101}
!129 = metadata !{i32 786443, metadata !130, i32 39, i32 7, metadata !2, i32 10} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !125, i32 38, i32 1, metadata !2, i32 9} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 40, i32 1, metadata !132, metadata !101}
!132 = metadata !{i32 786443, metadata !129, i32 40, i32 1, metadata !2, i32 11} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 40, i32 2, metadata !132, metadata !101}
!134 = metadata !{i32 41, i32 1, metadata !132, metadata !101}
!135 = metadata !{i32 40, i32 34, metadata !132, metadata !101}
!136 = metadata !{i32 39, i32 63, metadata !129, metadata !101}
!137 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !2, i32 28, metadata !127, i32 0, metadata !101} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 48, i32 61, metadata !139, metadata !101}
!139 = metadata !{i32 786443, metadata !91, i32 48, i32 4, metadata !2, i32 14} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 50, i32 11, metadata !141, metadata !101}
!141 = metadata !{i32 786443, metadata !142, i32 50, i32 7, metadata !2, i32 16} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 786443, metadata !139, i32 49, i32 1, metadata !2, i32 15} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 51, i32 1, metadata !144, metadata !101}
!144 = metadata !{i32 786443, metadata !141, i32 51, i32 1, metadata !2, i32 17} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 51, i32 2, metadata !144, metadata !101}
!146 = metadata !{i32 52, i32 1, metadata !144, metadata !101}
!147 = metadata !{i32 51, i32 34, metadata !144, metadata !101}
!148 = metadata !{i32 50, i32 63, metadata !141, metadata !101}
!149 = metadata !{i32 32, i32 8, metadata !150, metadata !101}
!150 = metadata !{i32 786443, metadata !91, i32 32, i32 4, metadata !2, i32 6} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 32, i32 60, metadata !150, metadata !101}
!152 = metadata !{i32 32, i32 66, metadata !153, metadata !101}
!153 = metadata !{i32 786443, metadata !150, i32 32, i32 65, metadata !2, i32 7} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 4, i32 81, metadata !155, metadata !159}
!155 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !2, i32 4, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{null, metadata !158, metadata !158}
!158 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ]
!159 = metadata !{i32 33, i32 7, metadata !153, metadata !101}
!160 = metadata !{i32 786689, metadata !155, metadata !"dst", null, i32 4, metadata !161, i32 0, metadata !159} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !97, metadata !8, i32 0, i32 0} ; [ DW_TAG_array_type ]
!162 = metadata !{i32 13, i32 9, metadata !163, metadata !159}
!163 = metadata !{i32 786443, metadata !164, i32 13, i32 4, metadata !2, i32 1} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786443, metadata !155, i32 5, i32 1, metadata !2, i32 0} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 13, i32 61, metadata !163, metadata !159}
!166 = metadata !{i32 13, i32 67, metadata !167, metadata !159}
!167 = metadata !{i32 786443, metadata !163, i32 13, i32 66, metadata !2, i32 2} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 14, i32 1, metadata !167, metadata !159}
!169 = metadata !{i32 16, i32 48, metadata !170, metadata !159}
!170 = metadata !{i32 786443, metadata !171, i32 15, i32 77, metadata !2, i32 4} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786443, metadata !167, i32 15, i32 7, metadata !2, i32 3} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 19, i32 7, metadata !167, metadata !159}
!173 = metadata !{i32 17, i32 10, metadata !170, metadata !159}
!174 = metadata !{i32 20, i32 4, metadata !167, metadata !159}
!175 = metadata !{i32 786688, metadata !164, metadata !"k", metadata !2, i32 6, metadata !127, i32 0, metadata !159} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 43, i32 9, metadata !177, metadata !101}
!177 = metadata !{i32 786443, metadata !91, i32 43, i32 4, metadata !2, i32 12} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 43, i32 61, metadata !177, metadata !101}
!179 = metadata !{i32 43, i32 67, metadata !180, metadata !101}
!180 = metadata !{i32 786443, metadata !177, i32 43, i32 66, metadata !2, i32 13} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 4, i32 81, metadata !155, metadata !182}
!182 = metadata !{i32 44, i32 7, metadata !180, metadata !101}
!183 = metadata !{i32 786689, metadata !155, metadata !"dst", null, i32 4, metadata !161, i32 0, metadata !182} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 13, i32 9, metadata !163, metadata !182}
!185 = metadata !{i32 13, i32 61, metadata !163, metadata !182}
!186 = metadata !{i32 13, i32 67, metadata !167, metadata !182}
!187 = metadata !{i32 14, i32 1, metadata !167, metadata !182}
!188 = metadata !{i32 16, i32 48, metadata !170, metadata !182}
!189 = metadata !{i32 19, i32 7, metadata !167, metadata !182}
!190 = metadata !{i32 17, i32 10, metadata !170, metadata !182}
!191 = metadata !{i32 20, i32 4, metadata !167, metadata !182}
!192 = metadata !{i32 786688, metadata !164, metadata !"k", metadata !2, i32 6, metadata !127, i32 0, metadata !182} ; [ DW_TAG_auto_variable ]
