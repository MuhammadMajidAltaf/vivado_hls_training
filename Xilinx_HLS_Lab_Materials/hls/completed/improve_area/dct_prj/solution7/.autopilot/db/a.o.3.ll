; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution7/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table = internal unnamed_addr constant [8 x i127] [i127 42535944912128296218691764462974672896, i127 -58990447664026830905795916450469172125, i127 55573504569212691703635314403542378959, i127 -50012024272023034652441485723554798175, i127 42539839273422690665195578862551965696, i127 -33416722235422479620126768456641144540, i127 23021796304660295749636480429053776209, i127 -11734080920250769989864363945147758380] ; [#uses=2 type=[8 x i127]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@Xpose_Row_Outer_Loop_Xpose_Row = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@Xpose_Col_Outer_Loop_Xpose_Col = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@WR_Loop_Row_WR_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@RD_Loop_Row_RD_Loop_Col_str = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@p_str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=6 type=[15 x i8]*]
@p_str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]

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
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_6), !dbg !34 ; [#uses=0 type=i32] [debug line = 74:67]
  %c_1 = add i4 1, %c_mid2, !dbg !35              ; [#uses=1 type=i4] [debug line = 73:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !36), !dbg !35 ; [debug line = 73:64] [debug variable = c]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !37                              ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @dct_read_data([64 x i16]* nocapture %input, [8 x i128]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !38), !dbg !42 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i128]* %buf}, i64 0, metadata !43), !dbg !44 ; [debug line = 54:44] [debug variable = buf]
  br label %1, !dbg !45                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %tmp_mid2_v_v, %.reset ] ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_2, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %r_2 = add i4 1, %r, !dbg !48                   ; [#uses=1 type=i4] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i4 %r_2}, i64 0, metadata !49), !dbg !48 ; [debug line = 59:61] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond5 = icmp eq i4 %c, -8, !dbg !50        ; [#uses=2 type=i1] [debug line = 61:12]
  %c_mid2 = select i1 %exitcond5, i4 0, i4 %c     ; [#uses=3 type=i4]
  %tmp_mid2_v_v = select i1 %exitcond5, i4 %r_2, i4 %r, !dbg !53 ; [#uses=3 type=i4] [debug line = 62:1]
  %tmp = trunc i4 %tmp_mid2_v_v to i3             ; [#uses=1 type=i3]
  %tmp_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !53 ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp_7_mid2 = zext i4 %tmp_mid2_v_v to i64, !dbg !53 ; [#uses=1 type=i64] [debug line = 62:1]
  %c_cast2 = zext i4 %c_mid2 to i6, !dbg !50      ; [#uses=1 type=i6] [debug line = 61:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind, !dbg !55 ; [debug line = 62:2]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11), !dbg !55 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !56 ; [debug line = 63:1]
  %tmp_9 = add i6 %c_cast2, %tmp_mid2, !dbg !53   ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp_s = zext i6 %tmp_9 to i64, !dbg !53        ; [#uses=1 type=i64] [debug line = 62:1]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_s, !dbg !53 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input_load = load i16* %input_addr, align 2, !dbg !53 ; [#uses=1 type=i16] [debug line = 62:1]
  %buf_addr = getelementptr [8 x i128]* %buf, i64 0, i64 %tmp_7_mid2, !dbg !53 ; [#uses=2 type=i128*] [debug line = 62:1]
  %buf_load = load i128* %buf_addr, align 8, !dbg !53 ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_4 = trunc i4 %c_mid2 to i3                 ; [#uses=1 type=i3]
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %tmp_4, i4 0), !dbg !53 ; [#uses=3 type=i7] [debug line = 62:1]
  %tmp_3 = or i7 %tmp_2, 15                       ; [#uses=2 type=i7]
  %tmp_5 = icmp ugt i7 %tmp_2, %tmp_3             ; [#uses=4 type=i1]
  %tmp_6 = zext i7 %tmp_2 to i8, !dbg !53         ; [#uses=4 type=i8] [debug line = 62:1]
  %tmp_7 = zext i7 %tmp_3 to i8, !dbg !53         ; [#uses=2 type=i8] [debug line = 62:1]
  %tmp_8 = zext i16 %input_load to i128, !dbg !53 ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_10 = xor i8 %tmp_6, 127, !dbg !53          ; [#uses=1 type=i8] [debug line = 62:1]
  %tmp_11 = select i1 %tmp_5, i8 %tmp_6, i8 %tmp_7 ; [#uses=1 type=i8]
  %tmp_12 = select i1 %tmp_5, i8 %tmp_7, i8 %tmp_6 ; [#uses=1 type=i8]
  %tmp_13 = select i1 %tmp_5, i8 %tmp_10, i8 %tmp_6 ; [#uses=1 type=i8]
  %tmp_14 = xor i8 %tmp_11, 127, !dbg !53         ; [#uses=1 type=i8] [debug line = 62:1]
  %tmp_15 = zext i8 %tmp_13 to i128, !dbg !53     ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_16 = zext i8 %tmp_12 to i128, !dbg !53     ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_17 = zext i8 %tmp_14 to i128, !dbg !53     ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_18 = shl i128 %tmp_8, %tmp_15, !dbg !53    ; [#uses=2 type=i128] [debug line = 62:1]
  %tmp_19 = call i128 @llvm.part.select.i128(i128 %tmp_18, i32 127, i32 0), !dbg !53 ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_20 = select i1 %tmp_5, i128 %tmp_19, i128 %tmp_18 ; [#uses=1 type=i128]
  %tmp_21 = shl i128 -1, %tmp_16, !dbg !53        ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_22 = lshr i128 -1, %tmp_17, !dbg !53       ; [#uses=1 type=i128] [debug line = 62:1]
  %p_demorgan = and i128 %tmp_21, %tmp_22, !dbg !53 ; [#uses=2 type=i128] [debug line = 62:1]
  %tmp_23 = xor i128 %p_demorgan, -1, !dbg !53    ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_24 = and i128 %buf_load, %tmp_23, !dbg !53 ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_25 = and i128 %tmp_20, %p_demorgan, !dbg !53 ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp_26 = or i128 %tmp_24, %tmp_25, !dbg !53    ; [#uses=1 type=i128] [debug line = 62:1]
  store i128 %tmp_26, i128* %buf_addr, align 8, !dbg !53 ; [debug line = 62:1]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_1), !dbg !57 ; [#uses=0 type=i32] [debug line = 62:66]
  %c_2 = add i4 1, %c_mid2, !dbg !58              ; [#uses=1 type=i4] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i4 %c_2}, i64 0, metadata !59), !dbg !58 ; [debug line = 61:64] [debug variable = c]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !60                              ; [debug line = 64:1]
}

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=3]
declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

; [#uses=2]
declare i127 @llvm.part.select.i127(i127, i32, i32) nounwind readnone

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !61 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !66
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !72
  %row_outbuf_i = alloca [64 x i16], align 2      ; [#uses=2 type=[64 x i16]*]
  %col_outbuf_i = alloca [64 x i16], align 2      ; [#uses=2 type=[64 x i16]*]
  %col_inbuf = alloca [8 x i128], align 8         ; [#uses=2 type=[8 x i128]*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [8 x i128], align 8         ; [#uses=2 type=[8 x i128]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !76), !dbg !77 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !78), !dbg !79 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i128]* %col_inbuf}, metadata !80) nounwind, !dbg !89 ; [debug line = 27:109@87:4] [debug variable = col_inbuf]
  call void @llvm.dbg.declare(metadata !{[8 x i128]* %buf_2d_in}, metadata !91), !dbg !92 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_out}, metadata !93), !dbg !94 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @dct_read_data([64 x i16]* %input, [8 x i128]* %buf_2d_in) nounwind
  call fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i128]* %buf_2d_in, [64 x i16]* %row_outbuf_i)
  call fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* %row_outbuf_i, [8 x i128]* %col_inbuf)
  call fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i128]* %col_inbuf, [64 x i16]* %col_outbuf_i)
  call fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* %col_outbuf_i, [64 x i16]* %buf_2d_out)
  call fastcc void @dct_write_data([64 x i16]* %buf_2d_out, [64 x i16]* %output) nounwind, !dbg !95 ; [debug line = 90:4]
  ret void, !dbg !96                              ; [debug line = 91:1]
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
  %empty_11 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_11
}

; [#uses=14]
define weak i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128, i9, i9) nounwind readnone {
entry:
  %empty = zext i9 %1 to i32                      ; [#uses=1 type=i32]
  %empty_12 = zext i9 %2 to i32                   ; [#uses=1 type=i32]
  %empty_13 = call i128 @llvm.part.select.i128(i128 %0, i32 %empty, i32 %empty_12) ; [#uses=1 type=i128]
  %empty_14 = trunc i128 %empty_13 to i16         ; [#uses=1 type=i16]
  ret i16 %empty_14
}

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128, i32, i32) nounwind readnone

; [#uses=12]
define weak i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127, i32, i32) nounwind readnone {
entry:
  %empty = call i127 @llvm.part.select.i127(i127 %0, i32 %1, i32 %2) ; [#uses=1 type=i127]
  %empty_15 = trunc i127 %empty to i16            ; [#uses=1 type=i16]
  ret i16 %empty_15
}

; [#uses=2]
define weak i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127, i32, i32) nounwind readnone {
entry:
  %empty = call i127 @llvm.part.select.i127(i127 %0, i32 %1, i32 %2) ; [#uses=1 type=i127]
  %empty_16 = trunc i127 %empty to i15            ; [#uses=1 type=i15]
  ret i15 %empty_16
}

; [#uses=6]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_17 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_18 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_19 = or i7 %empty_18, %empty_17          ; [#uses=1 type=i7]
  ret i7 %empty_19
}

; [#uses=2]
define weak i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %0 to i7                       ; [#uses=1 type=i7]
  %empty_20 = zext i4 %1 to i7                    ; [#uses=1 type=i7]
  %empty_21 = shl i7 %empty, 4                    ; [#uses=1 type=i7]
  %empty_22 = or i7 %empty_21, %empty_20          ; [#uses=1 type=i7]
  ret i7 %empty_22
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_23 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_24 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_25 = or i6 %empty_24, %empty_23          ; [#uses=1 type=i6]
  ret i6 %empty_25
}

; [#uses=1]
define internal fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf_i, [8 x i128]* nocapture %col_inbuf) nounwind {
newFuncRoot:
  br label %0

.preheader6.i.exitStub:                           ; preds = %0
  ret void

.preheader7.i:                                    ; preds = %0
  %j = add i4 1, %j_0_i, !dbg !97                 ; [#uses=1 type=i4] [debug line = 37:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !99) nounwind, !dbg !97 ; [debug line = 37:61@87:4] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop_Xpose_Row)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond3_i2 = icmp eq i4 %i_1_i, -8, !dbg !101 ; [#uses=2 type=i1] [debug line = 39:11@87:4]
  %i_1_i_mid2 = select i1 %exitcond3_i2, i4 0, i4 %i_1_i ; [#uses=3 type=i4]
  %tmp_mid2_v = select i1 %exitcond3_i2, i4 %j, i4 %j_0_i, !dbg !104 ; [#uses=3 type=i4] [debug line = 40:1@87:4]
  %tmp_mid2 = zext i4 %tmp_mid2_v to i64, !dbg !104 ; [#uses=1 type=i64] [debug line = 40:1@87:4]
  %tmp_mid2_cast = zext i4 %tmp_mid2_v to i8, !dbg !106 ; [#uses=1 type=i8] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !106 ; [debug line = 40:2@87:4]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6) nounwind, !dbg !106 ; [#uses=1 type=i32] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !107 ; [debug line = 41:1@87:4]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_i_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_9_cast = zext i7 %tmp to i8, !dbg !104     ; [#uses=1 type=i8] [debug line = 40:1@87:4]
  %tmp_s = add i8 %tmp_9_cast, %tmp_mid2_cast, !dbg !104 ; [#uses=1 type=i8] [debug line = 40:1@87:4]
  %tmp_10_cast = zext i8 %tmp_s to i64, !dbg !104 ; [#uses=1 type=i64] [debug line = 40:1@87:4]
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_10_cast, !dbg !104 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %row_outbuf_i_load = load i16* %row_outbuf_i_addr, align 2, !dbg !104 ; [#uses=1 type=i16] [debug line = 40:1@87:4]
  %col_inbuf_addr = getelementptr [8 x i128]* %col_inbuf, i64 0, i64 %tmp_mid2, !dbg !104 ; [#uses=2 type=i128*] [debug line = 40:1@87:4]
  %col_inbuf_load = load i128* %col_inbuf_addr, align 8, !dbg !104 ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_27 = trunc i4 %i_1_i_mid2 to i3            ; [#uses=1 type=i3]
  %tmp_3 = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %tmp_27, i4 0), !dbg !104 ; [#uses=3 type=i7] [debug line = 40:1@87:4]
  %tmp_4 = or i7 %tmp_3, 15                       ; [#uses=2 type=i7]
  %tmp_28 = icmp ugt i7 %tmp_3, %tmp_4            ; [#uses=4 type=i1]
  %tmp_29 = zext i7 %tmp_3 to i8, !dbg !104       ; [#uses=4 type=i8] [debug line = 40:1@87:4]
  %tmp_30 = zext i7 %tmp_4 to i8, !dbg !104       ; [#uses=2 type=i8] [debug line = 40:1@87:4]
  %tmp_31 = zext i16 %row_outbuf_i_load to i128, !dbg !104 ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_32 = xor i8 %tmp_29, 127, !dbg !104        ; [#uses=1 type=i8] [debug line = 40:1@87:4]
  %tmp_33 = select i1 %tmp_28, i8 %tmp_29, i8 %tmp_30 ; [#uses=1 type=i8]
  %tmp_34 = select i1 %tmp_28, i8 %tmp_30, i8 %tmp_29 ; [#uses=1 type=i8]
  %tmp_35 = select i1 %tmp_28, i8 %tmp_32, i8 %tmp_29 ; [#uses=1 type=i8]
  %tmp_36 = xor i8 %tmp_33, 127, !dbg !104        ; [#uses=1 type=i8] [debug line = 40:1@87:4]
  %tmp_37 = zext i8 %tmp_35 to i128, !dbg !104    ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_38 = zext i8 %tmp_34 to i128, !dbg !104    ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_39 = zext i8 %tmp_36 to i128, !dbg !104    ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_40 = shl i128 %tmp_31, %tmp_37, !dbg !104  ; [#uses=2 type=i128] [debug line = 40:1@87:4]
  %tmp_41 = call i128 @llvm.part.select.i128(i128 %tmp_40, i32 127, i32 0), !dbg !104 ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_42 = select i1 %tmp_28, i128 %tmp_41, i128 %tmp_40 ; [#uses=1 type=i128]
  %tmp_43 = shl i128 -1, %tmp_38, !dbg !104       ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_44 = lshr i128 -1, %tmp_39, !dbg !104      ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %p_demorgan = and i128 %tmp_43, %tmp_44, !dbg !104 ; [#uses=2 type=i128] [debug line = 40:1@87:4]
  %tmp_45 = xor i128 %p_demorgan, -1, !dbg !104   ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_46 = and i128 %col_inbuf_load, %tmp_45, !dbg !104 ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_47 = and i128 %tmp_42, %p_demorgan, !dbg !104 ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp_48 = or i128 %tmp_46, %tmp_47, !dbg !104   ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  store i128 %tmp_48, i128* %col_inbuf_addr, align 8, !dbg !104 ; [debug line = 40:1@87:4]
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_2) nounwind, !dbg !108 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %i = add i4 1, %i_1_i_mid2, !dbg !109           ; [#uses=1 type=i4] [debug line = 39:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !110) nounwind, !dbg !109 ; [debug line = 39:63@87:4] [debug variable = i]
  br label %0

; <label>:0                                       ; preds = %.preheader7.i, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader7.i ] ; [#uses=2 type=i7]
  %j_0_i = phi i4 [ 0, %newFuncRoot ], [ %tmp_mid2_v, %.preheader7.i ] ; [#uses=2 type=i4]
  %i_1_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader7.i ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader6.i.exitStub, label %.preheader7.i
}

; [#uses=1]
define internal fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf_i, [64 x i16]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %0

dct_2d.exit.exitStub:                             ; preds = %0
  ret void

.preheader.i:                                     ; preds = %0
  %j = add i4 %j_1_i, 1, !dbg !111                ; [#uses=1 type=i4] [debug line = 48:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !99) nounwind, !dbg !111 ; [debug line = 48:61@87:4] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop_Xpose_Col)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i2 = icmp eq i4 %i_3_i, -8, !dbg !113 ; [#uses=2 type=i1] [debug line = 50:11@87:4]
  %i_3_i_mid2 = select i1 %exitcond_i2, i4 0, i4 %i_3_i ; [#uses=3 type=i4]
  %tmp_1_mid2_v = select i1 %exitcond_i2, i4 %j, i4 %j_1_i, !dbg !116 ; [#uses=3 type=i4] [debug line = 51:1@87:4]
  %tmp_1_mid2_cast = zext i4 %tmp_1_mid2_v to i8  ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_12_cast = zext i7 %tmp to i8, !dbg !118    ; [#uses=1 type=i8] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str9) nounwind, !dbg !118 ; [debug line = 51:2@87:4]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str9) nounwind, !dbg !118 ; [#uses=1 type=i32] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !119 ; [debug line = 52:1@87:4]
  %tmp_2_cast = zext i4 %i_3_i_mid2 to i8         ; [#uses=1 type=i8]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_i_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_14_cast = zext i7 %tmp_s to i8, !dbg !116  ; [#uses=1 type=i8] [debug line = 51:1@87:4]
  %tmp_1 = add i8 %tmp_1_mid2_cast, %tmp_14_cast, !dbg !116 ; [#uses=1 type=i8] [debug line = 51:1@87:4]
  %tmp_15_cast = zext i8 %tmp_1 to i64, !dbg !116 ; [#uses=1 type=i64] [debug line = 51:1@87:4]
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_15_cast, !dbg !116 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %tmp_2 = add i8 %tmp_2_cast, %tmp_12_cast, !dbg !116 ; [#uses=1 type=i8] [debug line = 51:1@87:4]
  %tmp_16_cast = zext i8 %tmp_2 to i64, !dbg !116 ; [#uses=1 type=i64] [debug line = 51:1@87:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_16_cast, !dbg !116 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %col_outbuf_i_load = load i16* %col_outbuf_i_addr, align 2, !dbg !116 ; [#uses=1 type=i16] [debug line = 51:1@87:4]
  store i16 %col_outbuf_i_load, i16* %buf_2d_out_addr, align 2, !dbg !116 ; [debug line = 51:1@87:4]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str9, i32 %tmp_6) nounwind, !dbg !120 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %i = add i4 %i_3_i_mid2, 1, !dbg !121           ; [#uses=1 type=i4] [debug line = 50:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !110) nounwind, !dbg !121 ; [debug line = 50:63@87:4] [debug variable = i]
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
define internal fastcc void @dct_Loop_Row_DCT_Loop_proc([8 x i128]* nocapture %buf_2d_in, [64 x i16]* nocapture %row_outbuf_i) nounwind {
newFuncRoot:
  br label %dct_1d.exit, !dbg !122                ; [debug line = 32:8@87:4]

.preheader7.i.exitStub:                           ; preds = %dct_1d.exit
  ret void

dct_1d.exit:                                      ; preds = %1, %newFuncRoot
  %i_0_i = phi i4 [ 0, %newFuncRoot ], [ %i, %1 ] ; [#uses=4 type=i4]
  %exitcond5_i = icmp eq i4 %i_0_i, -8, !dbg !122 ; [#uses=1 type=i1] [debug line = 32:8@87:4]
  %i = add i4 %i_0_i, 1, !dbg !124                ; [#uses=1 type=i4] [debug line = 32:60@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !110) nounwind, !dbg !124 ; [debug line = 32:60@87:4] [debug variable = i]
  br i1 %exitcond5_i, label %.preheader7.i.exitStub, label %0, !dbg !122 ; [debug line = 32:8@87:4]

; <label>:0                                       ; preds = %dct_1d.exit
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind, !dbg !125 ; [debug line = 32:66@87:4]
  %tmp_81_cast_i = zext i4 %i_0_i to i64          ; [#uses=1 type=i64]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i, i3 0) ; [#uses=1 type=i7]
  %tmp_18_cast = zext i7 %tmp_s to i8, !dbg !127  ; [#uses=1 type=i8] [debug line = 4:24]
  call void @llvm.dbg.value(metadata !{[8 x i128]* %buf_2d_in}, i64 0, metadata !132) nounwind, !dbg !127 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %row_outbuf_i}, i64 0, metadata !134) nounwind, !dbg !135 ; [debug line = 4:81] [debug variable = dst]
  %buf_2d_in_addr = getelementptr [8 x i128]* %buf_2d_in, i64 0, i64 %tmp_81_cast_i, !dbg !136 ; [#uses=1 type=i128*] [debug line = 17:10]
  br label %1, !dbg !142                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]             ; [#uses=4 type=i4]
  %exitcond1_i = icmp eq i4 %k_i, -8, !dbg !142   ; [#uses=1 type=i1] [debug line = 13:9]
  %k = add i4 %k_i, 1, !dbg !143                  ; [#uses=1 type=i4] [debug line = 13:61]
  br i1 %exitcond1_i, label %dct_1d.exit, label %2, !dbg !142 ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind, !dbg !144 ; [debug line = 13:67]
  %tmp_5_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2) nounwind, !dbg !144 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !145 ; [debug line = 14:1]
  %tmp_i = zext i4 %k_i to i64, !dbg !146         ; [#uses=1 type=i64] [debug line = 16:48]
  %tmp_i_cast = zext i4 %k_i to i8, !dbg !147     ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_3 = add i8 %tmp_i_cast, %tmp_18_cast, !dbg !147 ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_19_cast = zext i8 %tmp_3 to i64, !dbg !147 ; [#uses=1 type=i64] [debug line = 19:7]
  %row_outbuf_i_addr = getelementptr [64 x i16]* %row_outbuf_i, i64 0, i64 %tmp_19_cast, !dbg !147 ; [#uses=1 type=i16*] [debug line = 19:7]
  %dct_coeff_table_addr = getelementptr [8 x i127]* @dct_coeff_table, i64 0, i64 %tmp_i, !dbg !146 ; [#uses=1 type=i127*] [debug line = 16:48]
  %dct_coeff_table_load = load i127* %dct_coeff_table_addr, align 16, !dbg !146 ; [#uses=8 type=i127] [debug line = 16:48]
  %tmp_49 = trunc i127 %dct_coeff_table_load to i16, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_cast_i = sext i16 %tmp_49 to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %buf_2d_in_load = load i128* %buf_2d_in_addr, align 8, !dbg !136 ; [#uses=8 type=i128] [debug line = 17:10]
  %tmp_50 = trunc i128 %buf_2d_in_load to i16, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_cast_i = sext i16 %tmp_50 to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_i = mul i29 %coeff_cast_i, %tmp_5_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_10_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 16, i32 31) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_1_cast_i = sext i16 %tmp_10_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_11_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 16, i9 31) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_1_cast_i = sext i16 %tmp_11_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_1_i = mul i29 %coeff_1_cast_i, %tmp_5_1_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_12_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 32, i32 47) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_2_cast_i = sext i16 %tmp_12_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_13_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 32, i9 47) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_2_cast_i = sext i16 %tmp_13_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_2_i = mul i29 %coeff_2_cast_i, %tmp_5_2_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_14_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 48, i32 63) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_3_cast_i = sext i16 %tmp_14_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_15_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 48, i9 63) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_3_cast_i = sext i16 %tmp_15_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_3_i = mul i29 %coeff_3_cast_i, %tmp_5_3_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_16_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 64, i32 79) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_4_cast_i = sext i16 %tmp_16_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_17_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 64, i9 79) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_4_cast_i = sext i16 %tmp_17_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_4_i = mul i29 %coeff_4_cast_i, %tmp_5_4_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_18_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 80, i32 95) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_5_cast_i = sext i16 %tmp_18_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_19_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 80, i9 95) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_5_cast_i = sext i16 %tmp_19_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_5_i = mul i29 %coeff_5_cast_i, %tmp_5_5_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_20_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 96, i32 111) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_6_cast_i = sext i16 %tmp_20_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_21_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 96, i9 111) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_6_cast_i = sext i16 %tmp_21_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_6_i = mul i29 %coeff_6_cast_i, %tmp_5_6_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_1 = call i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127 %dct_coeff_table_load, i32 112, i32 126) nounwind, !dbg !146 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_7_cast_i = sext i15 %tmp_1 to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_23_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in_load, i9 112, i9 127) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_7_cast_i = sext i16 %tmp_23_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_7_i = mul i29 %tmp_5_7_cast_i, %coeff_7_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp1 = add i29 %tmp_6_i, %tmp_6_1_i, !dbg !147 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp2 = add i29 %tmp_6_2_i, %tmp_6_3_i, !dbg !147 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp = add i29 %tmp2, %tmp1, !dbg !147          ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp_6_4_i, %tmp_6_5_i, !dbg !147 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 4096, %tmp_6_7_i, !dbg !147     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp6, %tmp_6_6_i, !dbg !147    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp5, %tmp4, !dbg !147         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_i_29 = add i29 %tmp3, %tmp, !dbg !147      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_3_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_i_29, i32 13, i32 28), !dbg !147 ; [#uses=1 type=i16] [debug line = 19:7]
  store i16 %tmp_3_i, i16* %row_outbuf_i_addr, align 2, !dbg !147 ; [debug line = 19:7]
  %empty_30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_5_i) nounwind, !dbg !148 ; [#uses=0 type=i32] [debug line = 20:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !149) nounwind, !dbg !143 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !143                          ; [debug line = 13:61]
}

; [#uses=1]
define internal fastcc void @dct_Loop_Col_DCT_Loop_proc([8 x i128]* nocapture %col_inbuf, [64 x i16]* nocapture %col_outbuf_i) nounwind {
newFuncRoot:
  br label %.preheader6.i

.preheader.i.exitStub:                            ; preds = %.preheader6.i
  ret void

.preheader6.i:                                    ; preds = %1, %newFuncRoot
  %i_2_i = phi i4 [ 0, %newFuncRoot ], [ %i, %1 ] ; [#uses=4 type=i4]
  %exitcond2_i = icmp eq i4 %i_2_i, -8, !dbg !150 ; [#uses=1 type=i1] [debug line = 43:9@87:4]
  %i = add i4 %i_2_i, 1, !dbg !152                ; [#uses=1 type=i4] [debug line = 43:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !110) nounwind, !dbg !152 ; [debug line = 43:61@87:4] [debug variable = i]
  br i1 %exitcond2_i, label %.preheader.i.exitStub, label %0, !dbg !150 ; [debug line = 43:9@87:4]

; <label>:0                                       ; preds = %.preheader6.i
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str7) nounwind, !dbg !153 ; [debug line = 43:67@87:4]
  %tmp_81_cast_i = zext i4 %i_2_i to i64          ; [#uses=1 type=i64]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i, i3 0) ; [#uses=1 type=i7]
  %tmp_21_cast = zext i7 %tmp_s to i8, !dbg !127  ; [#uses=1 type=i8] [debug line = 4:24]
  call void @llvm.dbg.value(metadata !{[8 x i128]* %col_inbuf}, i64 0, metadata !132) nounwind, !dbg !127 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %col_outbuf_i}, i64 0, metadata !134) nounwind, !dbg !135 ; [debug line = 4:81] [debug variable = dst]
  %col_inbuf_addr = getelementptr [8 x i128]* %col_inbuf, i64 0, i64 %tmp_81_cast_i, !dbg !136 ; [#uses=1 type=i128*] [debug line = 17:10]
  br label %1, !dbg !142                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %2, %0
  %k_i = phi i4 [ 0, %0 ], [ %k, %2 ]             ; [#uses=4 type=i4]
  %exitcond1_i = icmp eq i4 %k_i, -8, !dbg !142   ; [#uses=1 type=i1] [debug line = 13:9]
  %k = add i4 %k_i, 1, !dbg !143                  ; [#uses=1 type=i4] [debug line = 13:61]
  br i1 %exitcond1_i, label %.preheader6.i, label %2, !dbg !142 ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind, !dbg !144 ; [debug line = 13:67]
  %tmp_5_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2) nounwind, !dbg !144 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !145 ; [debug line = 14:1]
  %tmp_i = zext i4 %k_i to i64, !dbg !146         ; [#uses=1 type=i64] [debug line = 16:48]
  %tmp_i_cast = zext i4 %k_i to i8, !dbg !147     ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_4 = add i8 %tmp_i_cast, %tmp_21_cast, !dbg !147 ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_22_cast = zext i8 %tmp_4 to i64, !dbg !147 ; [#uses=1 type=i64] [debug line = 19:7]
  %col_outbuf_i_addr = getelementptr [64 x i16]* %col_outbuf_i, i64 0, i64 %tmp_22_cast, !dbg !147 ; [#uses=1 type=i16*] [debug line = 19:7]
  %dct_coeff_table_addr = getelementptr [8 x i127]* @dct_coeff_table, i64 0, i64 %tmp_i, !dbg !146 ; [#uses=1 type=i127*] [debug line = 16:48]
  %dct_coeff_table_load = load i127* %dct_coeff_table_addr, align 16, !dbg !146 ; [#uses=8 type=i127] [debug line = 16:48]
  %tmp_51 = trunc i127 %dct_coeff_table_load to i16, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_cast_i = sext i16 %tmp_51 to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %col_inbuf_load = load i128* %col_inbuf_addr, align 8, !dbg !136 ; [#uses=8 type=i128] [debug line = 17:10]
  %tmp_52 = trunc i128 %col_inbuf_load to i16, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_cast_i = sext i16 %tmp_52 to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_i = mul i29 %coeff_cast_i, %tmp_5_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_10_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 16, i32 31) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_1_cast_i = sext i16 %tmp_10_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_11_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 16, i9 31) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_1_cast_i = sext i16 %tmp_11_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_1_i = mul i29 %coeff_1_cast_i, %tmp_5_1_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_12_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 32, i32 47) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_2_cast_i = sext i16 %tmp_12_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_13_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 32, i9 47) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_2_cast_i = sext i16 %tmp_13_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_2_i = mul i29 %coeff_2_cast_i, %tmp_5_2_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_14_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 48, i32 63) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_3_cast_i = sext i16 %tmp_14_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_15_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 48, i9 63) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_3_cast_i = sext i16 %tmp_15_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_3_i = mul i29 %coeff_3_cast_i, %tmp_5_3_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_16_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 64, i32 79) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_4_cast_i = sext i16 %tmp_16_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_17_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 64, i9 79) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_4_cast_i = sext i16 %tmp_17_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_4_i = mul i29 %coeff_4_cast_i, %tmp_5_4_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_18_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 80, i32 95) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_5_cast_i = sext i16 %tmp_18_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_19_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 80, i9 95) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_5_cast_i = sext i16 %tmp_19_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_5_i = mul i29 %coeff_5_cast_i, %tmp_5_5_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_20_i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table_load, i32 96, i32 111) nounwind, !dbg !146 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff_6_cast_i = sext i16 %tmp_20_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_21_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 96, i9 111) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_6_cast_i = sext i16 %tmp_21_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_6_i = mul i29 %coeff_6_cast_i, %tmp_5_6_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_2 = call i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127 %dct_coeff_table_load, i32 112, i32 126) nounwind, !dbg !146 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_7_cast_i = sext i15 %tmp_2 to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_23_i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf_load, i9 112, i9 127) nounwind, !dbg !136 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_5_7_cast_i = sext i16 %tmp_23_i to i29, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp_6_7_i = mul i29 %tmp_5_7_cast_i, %coeff_7_cast_i, !dbg !136 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp1 = add i29 %tmp_6_i, %tmp_6_1_i, !dbg !147 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp2 = add i29 %tmp_6_2_i, %tmp_6_3_i, !dbg !147 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp = add i29 %tmp2, %tmp1, !dbg !147          ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp_6_4_i, %tmp_6_5_i, !dbg !147 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 4096, %tmp_6_7_i, !dbg !147     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp6, %tmp_6_6_i, !dbg !147    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp5, %tmp4, !dbg !147         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_i_32 = add i29 %tmp3, %tmp, !dbg !147      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_3_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_i_32, i32 13, i32 28), !dbg !147 ; [#uses=1 type=i16] [debug line = 19:7]
  store i16 %tmp_3_i, i16* %col_outbuf_i_addr, align 2, !dbg !147 ; [debug line = 19:7]
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_5_i) nounwind, !dbg !148 ; [#uses=0 type=i32] [debug line = 20:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !149) nounwind, !dbg !143 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !143                          ; [debug line = 13:61]
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
!43 = metadata !{i32 786689, metadata !39, metadata !"buf", null, i32 54, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 54, i32 44, metadata !39, null}
!45 = metadata !{i32 59, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !47, i32 59, i32 4, metadata !2, i32 19} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !39, i32 55, i32 1, metadata !2, i32 18} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 59, i32 61, metadata !46, null}
!49 = metadata !{i32 786688, metadata !47, metadata !"r", metadata !2, i32 56, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 61, i32 12, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 61, i32 7, metadata !2, i32 21} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !46, i32 59, i32 66, metadata !2, i32 20} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 62, i32 1, metadata !54, null}
!54 = metadata !{i32 786443, metadata !51, i32 62, i32 1, metadata !2, i32 22} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 62, i32 2, metadata !54, null}
!56 = metadata !{i32 63, i32 1, metadata !54, null}
!57 = metadata !{i32 62, i32 66, metadata !54, null}
!58 = metadata !{i32 61, i32 64, metadata !51, null}
!59 = metadata !{i32 786688, metadata !47, metadata !"c", metadata !2, i32 56, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 64, i32 1, metadata !47, null}
!61 = metadata !{i32 80, i32 1, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 79, i32 1, metadata !2, i32 28} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct", metadata !"dct", metadata !"", metadata !2, i32 78, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 79} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{null, metadata !10, metadata !10}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 15, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"input", metadata !70, metadata !"short", i32 0, i32 15}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 63, i32 1}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 15, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"output", metadata !70, metadata !"short", i32 0, i32 15}
!76 = metadata !{i32 786689, metadata !63, metadata !"input", null, i32 78, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 78, i32 16, metadata !63, null}
!78 = metadata !{i32 786689, metadata !63, metadata !"output", null, i32 78, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 78, i32 38, metadata !63, null}
!80 = metadata !{i32 786688, metadata !81, metadata !"col_inbuf", metadata !2, i32 27, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 786443, metadata !82, i32 25, i32 1, metadata !2, i32 5} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !2, i32 23, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 25} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !85, metadata !85}
!85 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ]
!86 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !87, metadata !8, i32 0, i32 0} ; [ DW_TAG_array_type ]
!87 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !2, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!88 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !87, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!89 = metadata !{i32 27, i32 109, metadata !81, metadata !90}
!90 = metadata !{i32 87, i32 4, metadata !62, null}
!91 = metadata !{i32 786688, metadata !62, metadata !"buf_2d_in", metadata !2, i32 81, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 81, i32 10, metadata !62, null}
!93 = metadata !{i32 786688, metadata !62, metadata !"buf_2d_out", metadata !2, i32 82, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 82, i32 10, metadata !62, null}
!95 = metadata !{i32 90, i32 4, metadata !62, null}
!96 = metadata !{i32 91, i32 1, metadata !62, null}
!97 = metadata !{i32 37, i32 61, metadata !98, metadata !90}
!98 = metadata !{i32 786443, metadata !81, i32 37, i32 4, metadata !2, i32 8} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786688, metadata !81, metadata !"j", metadata !2, i32 28, metadata !100, i32 0, metadata !90} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!101 = metadata !{i32 39, i32 11, metadata !102, metadata !90}
!102 = metadata !{i32 786443, metadata !103, i32 39, i32 7, metadata !2, i32 10} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !98, i32 38, i32 1, metadata !2, i32 9} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 40, i32 1, metadata !105, metadata !90}
!105 = metadata !{i32 786443, metadata !102, i32 40, i32 1, metadata !2, i32 11} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 40, i32 2, metadata !105, metadata !90}
!107 = metadata !{i32 41, i32 1, metadata !105, metadata !90}
!108 = metadata !{i32 40, i32 34, metadata !105, metadata !90}
!109 = metadata !{i32 39, i32 63, metadata !102, metadata !90}
!110 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !2, i32 28, metadata !100, i32 0, metadata !90} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 48, i32 61, metadata !112, metadata !90}
!112 = metadata !{i32 786443, metadata !81, i32 48, i32 4, metadata !2, i32 14} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 50, i32 11, metadata !114, metadata !90}
!114 = metadata !{i32 786443, metadata !115, i32 50, i32 7, metadata !2, i32 16} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !112, i32 49, i32 1, metadata !2, i32 15} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 51, i32 1, metadata !117, metadata !90}
!117 = metadata !{i32 786443, metadata !114, i32 51, i32 1, metadata !2, i32 17} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 51, i32 2, metadata !117, metadata !90}
!119 = metadata !{i32 52, i32 1, metadata !117, metadata !90}
!120 = metadata !{i32 51, i32 34, metadata !117, metadata !90}
!121 = metadata !{i32 50, i32 63, metadata !114, metadata !90}
!122 = metadata !{i32 32, i32 8, metadata !123, metadata !90}
!123 = metadata !{i32 786443, metadata !81, i32 32, i32 4, metadata !2, i32 6} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 32, i32 60, metadata !123, metadata !90}
!125 = metadata !{i32 32, i32 66, metadata !126, metadata !90}
!126 = metadata !{i32 786443, metadata !123, i32 32, i32 65, metadata !2, i32 7} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 4, i32 24, metadata !128, null}
!128 = metadata !{i32 786478, i32 0, metadata !2, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !2, i32 4, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{null, metadata !131, metadata !131}
!131 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ]
!132 = metadata !{i32 786689, metadata !128, metadata !"src", null, i32 4, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !87, metadata !8, i32 0, i32 0} ; [ DW_TAG_array_type ]
!134 = metadata !{i32 786689, metadata !128, metadata !"dst", null, i32 4, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 4, i32 81, metadata !128, null}
!136 = metadata !{i32 17, i32 10, metadata !137, null}
!137 = metadata !{i32 786443, metadata !138, i32 15, i32 77, metadata !2, i32 4} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 786443, metadata !139, i32 15, i32 7, metadata !2, i32 3} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 786443, metadata !140, i32 13, i32 66, metadata !2, i32 2} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 786443, metadata !141, i32 13, i32 4, metadata !2, i32 1} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786443, metadata !128, i32 5, i32 1, metadata !2, i32 0} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 13, i32 9, metadata !140, null}
!143 = metadata !{i32 13, i32 61, metadata !140, null}
!144 = metadata !{i32 13, i32 67, metadata !139, null}
!145 = metadata !{i32 14, i32 1, metadata !139, null}
!146 = metadata !{i32 16, i32 48, metadata !137, null}
!147 = metadata !{i32 19, i32 7, metadata !139, null}
!148 = metadata !{i32 20, i32 4, metadata !139, null}
!149 = metadata !{i32 786688, metadata !141, metadata !"k", metadata !2, i32 6, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 43, i32 9, metadata !151, metadata !90}
!151 = metadata !{i32 786443, metadata !81, i32 43, i32 4, metadata !2, i32 12} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 43, i32 61, metadata !151, metadata !90}
!153 = metadata !{i32 43, i32 67, metadata !154, metadata !90}
!154 = metadata !{i32 786443, metadata !151, i32 43, i32 66, metadata !2, i32 13} ; [ DW_TAG_lexical_block ]
