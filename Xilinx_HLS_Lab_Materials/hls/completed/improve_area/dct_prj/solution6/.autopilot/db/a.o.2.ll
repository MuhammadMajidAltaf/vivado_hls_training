; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution6/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table.7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table.0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=2 type=[8 x i14]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=6 type=[15 x i8]*]

; [#uses=1]
define internal fastcc void @write_data([8 x [8 x i16]]* nocapture %buf, [64 x i16]* nocapture %output) {
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf}, i64 0, metadata !37), !dbg !39 ; [debug line = 66:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !40), !dbg !44 ; [debug line = 66:116] [debug variable = output]
  br label %1, !dbg !45                           ; [debug line = 71:9]

; <label>:1                                       ; preds = %8, %0
  %r = phi i4 [ 0, %0 ], [ %r.1, %8 ]             ; [#uses=4 type=i4]
  %r.cast7 = zext i4 %r to i6, !dbg !45           ; [#uses=1 type=i6] [debug line = 71:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !45        ; [#uses=1 type=i1] [debug line = 71:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %10, label %3, !dbg !45 ; [debug line = 71:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str12) nounwind, !dbg !48 ; [debug line = 71:67]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str12), !dbg !48 ; [#uses=1 type=i32] [debug line = 71:67]
  %tmp = zext i4 %r to i64, !dbg !50              ; [#uses=1 type=i64] [debug line = 74:1]
  %tmp.1 = shl i6 %r.cast7, 3, !dbg !50           ; [#uses=1 type=i6] [debug line = 74:1]
  br label %4, !dbg !53                           ; [debug line = 73:12]

; <label>:4                                       ; preds = %6, %3
  %c = phi i4 [ 0, %3 ], [ %c.1, %6 ]             ; [#uses=4 type=i4]
  %c.cast6 = zext i4 %c to i6, !dbg !53           ; [#uses=1 type=i6] [debug line = 73:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !53         ; [#uses=1 type=i1] [debug line = 73:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %6, !dbg !53   ; [debug line = 73:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str13) nounwind, !dbg !54 ; [debug line = 74:2]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str13), !dbg !54 ; [#uses=1 type=i32] [debug line = 74:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !55 ; [debug line = 75:1]
  %tmp.3 = zext i4 %c to i64, !dbg !50            ; [#uses=1 type=i64] [debug line = 74:1]
  %buf.addr = getelementptr [8 x [8 x i16]]* %buf, i64 0, i64 %tmp, i64 %tmp.3, !dbg !50 ; [#uses=1 type=i16*] [debug line = 74:1]
  %buf.load = load i16* %buf.addr, align 2, !dbg !50 ; [#uses=1 type=i16] [debug line = 74:1]
  %tmp.4 = add i6 %c.cast6, %tmp.1, !dbg !50      ; [#uses=1 type=i6] [debug line = 74:1]
  %tmp.5 = zext i6 %tmp.4 to i64, !dbg !50        ; [#uses=1 type=i64] [debug line = 74:1]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5, !dbg !50 ; [#uses=1 type=i16*] [debug line = 74:1]
  store i16 %buf.load, i16* %output.addr, align 2, !dbg !50 ; [debug line = 74:1]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str13, i32 %tmp.6), !dbg !56 ; [#uses=0 type=i32] [debug line = 74:67]
  %c.1 = add i4 %c, 1, !dbg !57                   ; [#uses=1 type=i4] [debug line = 73:64]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !58), !dbg !57 ; [debug line = 73:64] [debug variable = c]
  br label %4, !dbg !57                           ; [debug line = 73:64]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str12, i32 %tmp.2), !dbg !60 ; [#uses=0 type=i32] [debug line = 75:4]
  %r.1 = add i4 %r, 1, !dbg !61                   ; [#uses=1 type=i4] [debug line = 71:61]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !62), !dbg !61 ; [debug line = 71:61] [debug variable = r]
  br label %1, !dbg !61                           ; [debug line = 71:61]

; <label>:10                                      ; preds = %1
  ret void, !dbg !63                              ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @read_data([64 x i16]* nocapture %input, [8 x i16]* nocapture %"buf[0]", [8 x i16]* nocapture %"buf[1]", [8 x i16]* nocapture %"buf[2]", [8 x i16]* nocapture %"buf[3]", [8 x i16]* nocapture %"buf[4]", [8 x i16]* nocapture %"buf[5]", [8 x i16]* nocapture %"buf[6]", [8 x i16]* nocapture %"buf[7]") {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !64), !dbg !65 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[0]"}, i64 0, metadata !66), !dbg !69 ; [debug line = 54:44] [debug variable = buf[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[1]"}, i64 0, metadata !70), !dbg !69 ; [debug line = 54:44] [debug variable = buf[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[2]"}, i64 0, metadata !71), !dbg !69 ; [debug line = 54:44] [debug variable = buf[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[3]"}, i64 0, metadata !72), !dbg !69 ; [debug line = 54:44] [debug variable = buf[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[4]"}, i64 0, metadata !73), !dbg !69 ; [debug line = 54:44] [debug variable = buf[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[5]"}, i64 0, metadata !74), !dbg !69 ; [debug line = 54:44] [debug variable = buf[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[6]"}, i64 0, metadata !75), !dbg !69 ; [debug line = 54:44] [debug variable = buf[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[7]"}, i64 0, metadata !76), !dbg !69 ; [debug line = 54:44] [debug variable = buf[7]]
  br label %1, !dbg !77                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %9, %0
  %r = phi i4 [ 0, %0 ], [ %r.2, %9 ]             ; [#uses=4 type=i4]
  %r.cast = zext i4 %r to i6, !dbg !77            ; [#uses=1 type=i6] [debug line = 59:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !77        ; [#uses=1 type=i1] [debug line = 59:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %11, label %3, !dbg !77 ; [debug line = 59:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !80 ; [debug line = 59:67]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10), !dbg !80 ; [#uses=1 type=i32] [debug line = 59:67]
  %tmp = shl i6 %r.cast, 3, !dbg !82              ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp.7 = zext i4 %r to i64, !dbg !82            ; [#uses=8 type=i64] [debug line = 62:1]
  %"buf[0].addr" = getelementptr [8 x i16]* %"buf[0]", i64 0, i64 %tmp.7, !dbg !82 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[1].addr" = getelementptr [8 x i16]* %"buf[1]", i64 0, i64 %tmp.7, !dbg !82 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[2].addr" = getelementptr [8 x i16]* %"buf[2]", i64 0, i64 %tmp.7, !dbg !82 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[3].addr" = getelementptr [8 x i16]* %"buf[3]", i64 0, i64 %tmp.7, !dbg !82 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[4].addr" = getelementptr [8 x i16]* %"buf[4]", i64 0, i64 %tmp.7, !dbg !82 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[5].addr" = getelementptr [8 x i16]* %"buf[5]", i64 0, i64 %tmp.7, !dbg !82 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[6].addr" = getelementptr [8 x i16]* %"buf[6]", i64 0, i64 %tmp.7, !dbg !82 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[7].addr" = getelementptr [8 x i16]* %"buf[7]", i64 0, i64 %tmp.7, !dbg !82 ; [#uses=1 type=i16*] [debug line = 62:1]
  br label %4, !dbg !85                           ; [debug line = 61:12]

; <label>:4                                       ; preds = %7, %3
  %c = phi i4 [ 0, %3 ], [ %c.2, %7 ]             ; [#uses=4 type=i4]
  %c.cast = zext i4 %c to i6, !dbg !85            ; [#uses=1 type=i6] [debug line = 61:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !85         ; [#uses=1 type=i1] [debug line = 61:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %9, label %6, !dbg !85   ; [debug line = 61:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !86 ; [debug line = 62:2]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str11), !dbg !86 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !87 ; [debug line = 63:1]
  %tmp.9 = add i6 %c.cast, %tmp, !dbg !82         ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp. = zext i6 %tmp.9 to i64, !dbg !82         ; [#uses=1 type=i64] [debug line = 62:1]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp., !dbg !82 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input.load = load i16* %input.addr, align 2, !dbg !82 ; [#uses=8 type=i16] [debug line = 62:1]
  %c.t = trunc i4 %c to i3                        ; [#uses=1 type=i3]
  switch i3 %c.t, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !82                                     ; [debug line = 62:1]

; <label>:7                                       ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str11, i32 %tmp.1), !dbg !88 ; [#uses=0 type=i32] [debug line = 62:66]
  %c.2 = add i4 %c, 1, !dbg !89                   ; [#uses=1 type=i4] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i4 %c.2}, i64 0, metadata !90), !dbg !89 ; [debug line = 61:64] [debug variable = c]
  br label %4, !dbg !89                           ; [debug line = 61:64]

; <label>:9                                       ; preds = %4
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.8), !dbg !91 ; [#uses=0 type=i32] [debug line = 63:4]
  %r.2 = add i4 %r, 1, !dbg !92                   ; [#uses=1 type=i4] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i4 %r.2}, i64 0, metadata !93), !dbg !92 ; [debug line = 59:61] [debug variable = r]
  br label %1, !dbg !92                           ; [debug line = 59:61]

; <label>:11                                      ; preds = %1
  ret void, !dbg !94                              ; [debug line = 64:1]

branch0:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[0].addr", align 2, !dbg !82 ; [debug line = 62:1]
  br label %7, !dbg !82                           ; [debug line = 62:1]

branch1:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[1].addr", align 2, !dbg !82 ; [debug line = 62:1]
  br label %7, !dbg !82                           ; [debug line = 62:1]

branch2:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[2].addr", align 2, !dbg !82 ; [debug line = 62:1]
  br label %7, !dbg !82                           ; [debug line = 62:1]

branch3:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[3].addr", align 2, !dbg !82 ; [debug line = 62:1]
  br label %7, !dbg !82                           ; [debug line = 62:1]

branch4:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[4].addr", align 2, !dbg !82 ; [debug line = 62:1]
  br label %7, !dbg !82                           ; [debug line = 62:1]

branch5:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[5].addr", align 2, !dbg !82 ; [debug line = 62:1]
  br label %7, !dbg !82                           ; [debug line = 62:1]

branch6:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[6].addr", align 2, !dbg !82 ; [debug line = 62:1]
  br label %7, !dbg !82                           ; [debug line = 62:1]

branch7:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[7].addr", align 2, !dbg !82 ; [debug line = 62:1]
  br label %7, !dbg !82                           ; [debug line = 62:1]
}

; [#uses=27]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str1) nounwind, !dbg !95 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !97
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !103
  %row_outbuf.i = alloca [8 x [8 x i16]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf.i = alloca [8 x [8 x i16]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
  %"col_inbuf[0]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[1]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[2]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[3]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[4]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[5]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[6]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[7]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %"buf_2d_in[0]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[1]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[2]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[3]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[4]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[5]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[6]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"buf_2d_in[7]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !107), !dbg !108 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !109), !dbg !110 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[0]"}, metadata !111), !dbg !116 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[1]"}, metadata !118), !dbg !116 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[2]"}, metadata !119), !dbg !116 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[3]"}, metadata !120), !dbg !116 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[4]"}, metadata !121), !dbg !116 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[5]"}, metadata !122), !dbg !116 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[6]"}, metadata !123), !dbg !116 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[7]"}, metadata !124), !dbg !116 ; [debug line = 27:109@87:4] [debug variable = col_inbuf[7]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[0]"}, metadata !125), !dbg !127 ; [debug line = 81:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[1]"}, metadata !128), !dbg !127 ; [debug line = 81:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[2]"}, metadata !129), !dbg !127 ; [debug line = 81:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[3]"}, metadata !130), !dbg !127 ; [debug line = 81:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[4]"}, metadata !131), !dbg !127 ; [debug line = 81:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[5]"}, metadata !132), !dbg !127 ; [debug line = 81:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[6]"}, metadata !133), !dbg !127 ; [debug line = 81:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[7]"}, metadata !134), !dbg !127 ; [debug line = 81:10] [debug variable = buf_2d_in[7]]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !135), !dbg !136 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @read_data([64 x i16]* %input, [8 x i16]* %"buf_2d_in[0]", [8 x i16]* %"buf_2d_in[1]", [8 x i16]* %"buf_2d_in[2]", [8 x i16]* %"buf_2d_in[3]", [8 x i16]* %"buf_2d_in[4]", [8 x i16]* %"buf_2d_in[5]", [8 x i16]* %"buf_2d_in[6]", [8 x i16]* %"buf_2d_in[7]") nounwind, !dbg !137 ; [debug line = 85:4]
  call fastcc void @Loop_Row_DCT_Loop_proc([8 x i16]* %"buf_2d_in[0]", [8 x i16]* %"buf_2d_in[1]", [8 x i16]* %"buf_2d_in[2]", [8 x i16]* %"buf_2d_in[3]", [8 x i16]* %"buf_2d_in[4]", [8 x i16]* %"buf_2d_in[5]", [8 x i16]* %"buf_2d_in[6]", [8 x i16]* %"buf_2d_in[7]", [8 x [8 x i16]]* %row_outbuf.i)
  call fastcc void @Loop_Xpose_Row_Outer_Loop_proc([8 x [8 x i16]]* %row_outbuf.i, [8 x i16]* %"col_inbuf[0]", [8 x i16]* %"col_inbuf[1]", [8 x i16]* %"col_inbuf[2]", [8 x i16]* %"col_inbuf[3]", [8 x i16]* %"col_inbuf[4]", [8 x i16]* %"col_inbuf[5]", [8 x i16]* %"col_inbuf[6]", [8 x i16]* %"col_inbuf[7]")
  call fastcc void @Loop_Col_DCT_Loop_proc([8 x i16]* %"col_inbuf[0]", [8 x i16]* %"col_inbuf[1]", [8 x i16]* %"col_inbuf[2]", [8 x i16]* %"col_inbuf[3]", [8 x i16]* %"col_inbuf[4]", [8 x i16]* %"col_inbuf[5]", [8 x i16]* %"col_inbuf[6]", [8 x i16]* %"col_inbuf[7]", [8 x [8 x i16]]* %col_outbuf.i)
  call fastcc void @Loop_Xpose_Col_Outer_Loop_proc([8 x [8 x i16]]* %col_outbuf.i, [8 x [8 x i16]]* %buf_2d_out)
  call fastcc void @write_data([8 x [8 x i16]]* %buf_2d_out, [64 x i16]* %output) nounwind, !dbg !138 ; [debug line = 90:4]
  ret void, !dbg !139                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=12]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=12]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=4]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=1]
define internal fastcc void @Loop_Xpose_Row_Outer_Loop_proc([8 x [8 x i16]]* nocapture %row_outbuf.i, [8 x i16]* nocapture %"col_inbuf[0]", [8 x i16]* nocapture %"col_inbuf[1]", [8 x i16]* nocapture %"col_inbuf[2]", [8 x i16]* nocapture %"col_inbuf[3]", [8 x i16]* nocapture %"col_inbuf[4]", [8 x i16]* nocapture %"col_inbuf[5]", [8 x i16]* nocapture %"col_inbuf[6]", [8 x i16]* nocapture %"col_inbuf[7]") nounwind {
newFuncRoot:
  br label %.preheader7.i

.preheader6.i.exitStub:                           ; preds = %.preheader7.i
  ret void

.preheader7.i:                                    ; preds = %1, %newFuncRoot
  %j.0.i = phi i4 [ %j, %1 ], [ 0, %newFuncRoot ] ; [#uses=3 type=i4]
  %exitcond4.i = icmp eq i4 %j.0.i, -8, !dbg !140 ; [#uses=1 type=i1] [debug line = 37:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond4.i, label %.preheader6.i.exitStub, label %5, !dbg !140 ; [debug line = 37:9@87:4]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str5, i32 %tmp.1) nounwind, !dbg !142 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %j = add i4 %j.0.i, 1, !dbg !145                ; [#uses=1 type=i4] [debug line = 37:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !146) nounwind, !dbg !145 ; [debug line = 37:61@87:4] [debug variable = j]
  br label %.preheader7.i, !dbg !145              ; [debug line = 37:61@87:4]

; <label>:3                                       ; preds = %6, %5
  %i.1.i = phi i4 [ 0, %5 ], [ %i, %6 ]           ; [#uses=4 type=i4]
  %exitcond3.i = icmp eq i4 %i.1.i, -8, !dbg !148 ; [#uses=1 type=i1] [debug line = 39:11@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3.i, label %1, label %8, !dbg !148 ; [debug line = 39:11@87:4]

; <label>:5                                       ; preds = %.preheader7.i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str5) nounwind, !dbg !149 ; [debug line = 38:1@87:4]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str5) nounwind, !dbg !149 ; [#uses=1 type=i32] [debug line = 38:1@87:4]
  %tmp. = zext i4 %j.0.i to i64, !dbg !150        ; [#uses=9 type=i64] [debug line = 40:1@87:4]
  %"col_inbuf[0].addr" = getelementptr [8 x i16]* %"col_inbuf[0]", i64 0, i64 %tmp., !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[1].addr" = getelementptr [8 x i16]* %"col_inbuf[1]", i64 0, i64 %tmp., !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[2].addr" = getelementptr [8 x i16]* %"col_inbuf[2]", i64 0, i64 %tmp., !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[3].addr" = getelementptr [8 x i16]* %"col_inbuf[3]", i64 0, i64 %tmp., !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[4].addr" = getelementptr [8 x i16]* %"col_inbuf[4]", i64 0, i64 %tmp., !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[5].addr" = getelementptr [8 x i16]* %"col_inbuf[5]", i64 0, i64 %tmp., !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[6].addr" = getelementptr [8 x i16]* %"col_inbuf[6]", i64 0, i64 %tmp., !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %"col_inbuf[7].addr" = getelementptr [8 x i16]* %"col_inbuf[7]", i64 0, i64 %tmp., !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  br label %3, !dbg !148                          ; [debug line = 39:11@87:4]

; <label>:6                                       ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str6, i32 %tmp.2) nounwind, !dbg !152 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %i = add i4 %i.1.i, 1, !dbg !153                ; [#uses=1 type=i4] [debug line = 39:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !154) nounwind, !dbg !153 ; [debug line = 39:63@87:4] [debug variable = i]
  br label %3, !dbg !153                          ; [debug line = 39:63@87:4]

branch0:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[0].addr", align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %6, !dbg !150                          ; [debug line = 40:1@87:4]

; <label>:8                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str6) nounwind, !dbg !155 ; [debug line = 40:2@87:4]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str6) nounwind, !dbg !155 ; [#uses=1 type=i32] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !156 ; [debug line = 41:1@87:4]
  %tmp.9 = zext i4 %i.1.i to i64, !dbg !150       ; [#uses=1 type=i64] [debug line = 40:1@87:4]
  %row_outbuf.i.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf.i, i64 0, i64 %tmp.9, i64 %tmp., !dbg !150 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %row_outbuf.i.load = load i16* %row_outbuf.i.addr, align 2, !dbg !150 ; [#uses=8 type=i16] [debug line = 40:1@87:4]
  %i.1.i.t = trunc i4 %i.1.i to i3                ; [#uses=1 type=i3]
  switch i3 %i.1.i.t, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !150                                    ; [debug line = 40:1@87:4]

branch1:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[1].addr", align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %6, !dbg !150                          ; [debug line = 40:1@87:4]

branch2:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[2].addr", align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %6, !dbg !150                          ; [debug line = 40:1@87:4]

branch3:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[3].addr", align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %6, !dbg !150                          ; [debug line = 40:1@87:4]

branch4:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[4].addr", align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %6, !dbg !150                          ; [debug line = 40:1@87:4]

branch5:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[5].addr", align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %6, !dbg !150                          ; [debug line = 40:1@87:4]

branch6:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[6].addr", align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %6, !dbg !150                          ; [debug line = 40:1@87:4]

branch7:                                          ; preds = %8
  store i16 %row_outbuf.i.load, i16* %"col_inbuf[7].addr", align 2, !dbg !150 ; [debug line = 40:1@87:4]
  br label %6, !dbg !150                          ; [debug line = 40:1@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Xpose_Col_Outer_Loop_proc([8 x [8 x i16]]* nocapture %col_outbuf.i, [8 x [8 x i16]]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %.preheader.i

dct_2d.exit.exitStub:                             ; preds = %.preheader.i
  ret void

.preheader.i:                                     ; preds = %1, %newFuncRoot
  %j.1.i = phi i4 [ %j, %1 ], [ 0, %newFuncRoot ] ; [#uses=3 type=i4]
  %exitcond1.i = icmp eq i4 %j.1.i, -8, !dbg !157 ; [#uses=1 type=i1] [debug line = 48:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %dct_2d.exit.exitStub, label %5, !dbg !157 ; [debug line = 48:9@87:4]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str8, i32 %tmp.) nounwind, !dbg !159 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %j = add i4 %j.1.i, 1, !dbg !162                ; [#uses=1 type=i4] [debug line = 48:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !146) nounwind, !dbg !162 ; [debug line = 48:61@87:4] [debug variable = j]
  br label %.preheader.i, !dbg !162               ; [debug line = 48:61@87:4]

; <label>:3                                       ; preds = %6, %5
  %i.3.i = phi i4 [ 0, %5 ], [ %i, %6 ]           ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.3.i, -8, !dbg !163  ; [#uses=1 type=i1] [debug line = 50:11@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %1, label %6, !dbg !163 ; [debug line = 50:11@87:4]

; <label>:5                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str8) nounwind, !dbg !164 ; [debug line = 49:1@87:4]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str8) nounwind, !dbg !164 ; [#uses=1 type=i32] [debug line = 49:1@87:4]
  %tmp.1 = zext i4 %j.1.i to i64, !dbg !165       ; [#uses=2 type=i64] [debug line = 51:1@87:4]
  br label %3, !dbg !163                          ; [debug line = 50:11@87:4]

; <label>:6                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str9) nounwind, !dbg !167 ; [debug line = 51:2@87:4]
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str9) nounwind, !dbg !167 ; [#uses=1 type=i32] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !168 ; [debug line = 52:1@87:4]
  %tmp.2 = zext i4 %i.3.i to i64, !dbg !165       ; [#uses=2 type=i64] [debug line = 51:1@87:4]
  %col_outbuf.i.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf.i, i64 0, i64 %tmp.2, i64 %tmp.1, !dbg !165 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %col_outbuf.i.load = load i16* %col_outbuf.i.addr, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 51:1@87:4]
  %buf_2d_out.addr = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.1, i64 %tmp.2, !dbg !165 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  store i16 %col_outbuf.i.load, i16* %buf_2d_out.addr, align 2, !dbg !165 ; [debug line = 51:1@87:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str9, i32 %tmp.3) nounwind, !dbg !169 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %i = add i4 %i.3.i, 1, !dbg !170                ; [#uses=1 type=i4] [debug line = 50:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !154) nounwind, !dbg !170 ; [debug line = 50:63@87:4] [debug variable = i]
  br label %3, !dbg !170                          ; [debug line = 50:63@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Row_DCT_Loop_proc([8 x i16]* nocapture %"buf_2d_in[0]", [8 x i16]* nocapture %"buf_2d_in[1]", [8 x i16]* nocapture %"buf_2d_in[2]", [8 x i16]* nocapture %"buf_2d_in[3]", [8 x i16]* nocapture %"buf_2d_in[4]", [8 x i16]* nocapture %"buf_2d_in[5]", [8 x i16]* nocapture %"buf_2d_in[6]", [8 x i16]* nocapture %"buf_2d_in[7]", [8 x [8 x i16]]* nocapture %row_outbuf.i) nounwind {
newFuncRoot:
  br label %0, !dbg !171                          ; [debug line = 32:8@87:4]

.preheader7.i.exitStub:                           ; preds = %0
  ret void

; <label>:0                                       ; preds = %dct_1d.exit, %newFuncRoot
  %i.0.i = phi i4 [ 0, %newFuncRoot ], [ %i, %dct_1d.exit ] ; [#uses=6 type=i4]
  %exitcond5.i = icmp eq i4 %i.0.i, -8, !dbg !171 ; [#uses=1 type=i1] [debug line = 32:8@87:4]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond5.i, label %.preheader7.i.exitStub, label %2, !dbg !171 ; [debug line = 32:8@87:4]

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str4) nounwind, !dbg !173 ; [debug line = 32:66@87:4]
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.0.i) nounwind, !hlsrange !175
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.0.i) nounwind, !hlsrange !175
  %tmp.81.cast.i = zext i4 %i.0.i to i64          ; [#uses=1 type=i64]
  %tmp.8.cast.i = zext i4 %i.0.i to i64           ; [#uses=8 type=i64]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %row_outbuf.i}, i64 0, metadata !176) nounwind, !dbg !179 ; [debug line = 4:81@33:7@87:4] [debug variable = dst]
  br label %3, !dbg !180                          ; [debug line = 13:9@33:7@87:4]

; <label>:3                                       ; preds = %5, %2
  %k.i = phi i4 [ 0, %2 ], [ %k, %5 ]             ; [#uses=3 type=i4]
  %exitcond1.i = icmp eq i4 %k.i, -8, !dbg !180   ; [#uses=1 type=i1] [debug line = 13:9@33:7@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %dct_1d.exit, label %5, !dbg !180 ; [debug line = 13:9@33:7@87:4]

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !183 ; [debug line = 13:67@33:7@87:4]
  %tmp.4.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !183 ; [#uses=1 type=i32] [debug line = 13:67@33:7@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !185 ; [debug line = 14:1@33:7@87:4]
  %tmp.i = zext i4 %k.i to i64, !dbg !186         ; [#uses=9 type=i64] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.0.addr = getelementptr [8 x i14]* @dct_coeff_table.0, i64 0, i64 %tmp.i, !dbg !186 ; [#uses=1 type=i14*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.0.load = load i14* %dct_coeff_table.0.addr, align 2, !dbg !186 ; [#uses=1 type=i14] [debug line = 16:48@33:7@87:4]
  %coeff.cast.i = zext i14 %dct_coeff_table.0.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[0].addr" = getelementptr [8 x i16]* %"buf_2d_in[0]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[0].load" = load i16* %"buf_2d_in[0].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.cast.i = sext i16 %"buf_2d_in[0].load" to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.6.i = mul i29 %coeff.cast.i, %tmp.5.cast.i, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.1.addr = getelementptr [8 x i15]* @dct_coeff_table.1, i64 0, i64 %tmp.i, !dbg !186 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.1.load = load i15* %dct_coeff_table.1.addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.1.cast.i = sext i15 %dct_coeff_table.1.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[1].addr" = getelementptr [8 x i16]* %"buf_2d_in[1]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[1].load" = load i16* %"buf_2d_in[1].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.1.cast.i = sext i16 %"buf_2d_in[1].load" to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.6.1.i = mul i29 %coeff.1.cast.i, %tmp.5.1.cast.i, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.2.addr = getelementptr [8 x i15]* @dct_coeff_table.2, i64 0, i64 %tmp.i, !dbg !186 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.2.load = load i15* %dct_coeff_table.2.addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.2.cast.i = sext i15 %dct_coeff_table.2.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[2].addr" = getelementptr [8 x i16]* %"buf_2d_in[2]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[2].load" = load i16* %"buf_2d_in[2].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.2.cast.i = sext i16 %"buf_2d_in[2].load" to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.6.2.i = mul i29 %coeff.2.cast.i, %tmp.5.2.cast.i, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.3.addr = getelementptr [8 x i15]* @dct_coeff_table.3, i64 0, i64 %tmp.i, !dbg !186 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.3.load = load i15* %dct_coeff_table.3.addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.3.cast.i = sext i15 %dct_coeff_table.3.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[3].addr" = getelementptr [8 x i16]* %"buf_2d_in[3]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[3].load" = load i16* %"buf_2d_in[3].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.3.cast.i = sext i16 %"buf_2d_in[3].load" to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.6.3.i = mul i29 %coeff.3.cast.i, %tmp.5.3.cast.i, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.4.addr = getelementptr [8 x i15]* @dct_coeff_table.4, i64 0, i64 %tmp.i, !dbg !186 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.4.load = load i15* %dct_coeff_table.4.addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.4.cast.i = sext i15 %dct_coeff_table.4.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[4].addr" = getelementptr [8 x i16]* %"buf_2d_in[4]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[4].load" = load i16* %"buf_2d_in[4].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.4.cast.i = sext i16 %"buf_2d_in[4].load" to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.6.4.i = mul i29 %coeff.4.cast.i, %tmp.5.4.cast.i, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.5.addr = getelementptr [8 x i15]* @dct_coeff_table.5, i64 0, i64 %tmp.i, !dbg !186 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.5.load = load i15* %dct_coeff_table.5.addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.5.cast.i = sext i15 %dct_coeff_table.5.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[5].addr" = getelementptr [8 x i16]* %"buf_2d_in[5]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[5].load" = load i16* %"buf_2d_in[5].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.5.cast.i = sext i16 %"buf_2d_in[5].load" to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.6.5.i = mul i29 %coeff.5.cast.i, %tmp.5.5.cast.i, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.6.addr = getelementptr [8 x i15]* @dct_coeff_table.6, i64 0, i64 %tmp.i, !dbg !186 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.6.load = load i15* %dct_coeff_table.6.addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.6.cast.i = sext i15 %dct_coeff_table.6.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[6].addr" = getelementptr [8 x i16]* %"buf_2d_in[6]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[6].load" = load i16* %"buf_2d_in[6].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.6.cast.i = sext i16 %"buf_2d_in[6].load" to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.6.6.i = mul i29 %coeff.6.cast.i, %tmp.5.6.cast.i, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %dct_coeff_table.7.addr = getelementptr [8 x i15]* @dct_coeff_table.7, i64 0, i64 %tmp.i, !dbg !186 ; [#uses=1 type=i15*] [debug line = 16:48@33:7@87:4]
  %dct_coeff_table.7.load = load i15* %dct_coeff_table.7.addr, align 2, !dbg !186 ; [#uses=1 type=i15] [debug line = 16:48@33:7@87:4]
  %coeff.7.cast.i = sext i15 %dct_coeff_table.7.load to i29 ; [#uses=1 type=i29]
  %"buf_2d_in[7].addr" = getelementptr [8 x i16]* %"buf_2d_in[7]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"buf_2d_in[7].load" = load i16* %"buf_2d_in[7].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.7.cast.i = sext i16 %"buf_2d_in[7].load" to i29, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp.6.7.i = mul i29 %coeff.7.cast.i, %tmp.5.7.cast.i, !dbg !189 ; [#uses=1 type=i29] [debug line = 17:10@33:7@87:4]
  %tmp1 = add i29 %tmp.6.1.i, %tmp.6.i, !dbg !190 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp2 = add i29 %tmp.6.3.i, %tmp.6.2.i, !dbg !190 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp = add i29 %tmp1, %tmp2, !dbg !190          ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp4 = add i29 %tmp.6.5.i, %tmp.6.4.i, !dbg !190 ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp6 = add i29 %tmp.6.7.i, 4096, !dbg !190     ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp5 = add i29 %tmp.6.6.i, %tmp6, !dbg !190    ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp3 = add i29 %tmp4, %tmp5, !dbg !190         ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp..i = add i29 %tmp, %tmp3, !dbg !190        ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp.2.i = lshr i29 %tmp..i, 13, !dbg !190      ; [#uses=1 type=i29] [debug line = 19:7@33:7@87:4]
  %tmp.3.i = trunc i29 %tmp.2.i to i16, !dbg !190 ; [#uses=1 type=i16] [debug line = 19:7@33:7@87:4]
  %row_outbuf.i.addr = getelementptr [8 x [8 x i16]]* %row_outbuf.i, i64 0, i64 %tmp.81.cast.i, i64 %tmp.i, !dbg !190 ; [#uses=1 type=i16*] [debug line = 19:7@33:7@87:4]
  store i16 %tmp.3.i, i16* %row_outbuf.i.addr, align 2, !dbg !190 ; [debug line = 19:7@33:7@87:4]
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.4.i) nounwind, !dbg !191 ; [#uses=0 type=i32] [debug line = 20:4@33:7@87:4]
  %k = add i4 %k.i, 1, !dbg !192                  ; [#uses=1 type=i4] [debug line = 13:61@33:7@87:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !193) nounwind, !dbg !192 ; [debug line = 13:61@33:7@87:4] [debug variable = k]
  br label %3, !dbg !192                          ; [debug line = 13:61@33:7@87:4]

dct_1d.exit:                                      ; preds = %3
  %i = add i4 %i.0.i, 1, !dbg !194                ; [#uses=1 type=i4] [debug line = 32:60@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !154) nounwind, !dbg !194 ; [debug line = 32:60@87:4] [debug variable = i]
  br label %0, !dbg !194                          ; [debug line = 32:60@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Col_DCT_Loop_proc([8 x i16]* nocapture %"col_inbuf[0]", [8 x i16]* nocapture %"col_inbuf[1]", [8 x i16]* nocapture %"col_inbuf[2]", [8 x i16]* nocapture %"col_inbuf[3]", [8 x i16]* nocapture %"col_inbuf[4]", [8 x i16]* nocapture %"col_inbuf[5]", [8 x i16]* nocapture %"col_inbuf[6]", [8 x i16]* nocapture %"col_inbuf[7]", [8 x [8 x i16]]* nocapture %col_outbuf.i) nounwind {
newFuncRoot:
  br label %.preheader6.i

.preheader.i.exitStub:                            ; preds = %.preheader6.i
  ret void

.preheader6.i:                                    ; preds = %dct_1d.exit, %newFuncRoot
  %i.2.i = phi i4 [ %i, %dct_1d.exit ], [ 0, %newFuncRoot ] ; [#uses=6 type=i4]
  %exitcond2.i = icmp eq i4 %i.2.i, -8, !dbg !195 ; [#uses=1 type=i1] [debug line = 43:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2.i, label %.preheader.i.exitStub, label %1, !dbg !195 ; [debug line = 43:9@87:4]

; <label>:1                                       ; preds = %.preheader6.i
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str7) nounwind, !dbg !197 ; [debug line = 43:67@87:4]
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.2.i) nounwind, !hlsrange !175
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.2.i) nounwind, !hlsrange !175
  %tmp.81.cast.i = zext i4 %i.2.i to i64          ; [#uses=1 type=i64]
  %tmp.8.cast.i = zext i4 %i.2.i to i64           ; [#uses=8 type=i64]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %col_outbuf.i}, i64 0, metadata !199) nounwind, !dbg !201 ; [debug line = 4:81@44:7@87:4] [debug variable = dst]
  br label %2, !dbg !202                          ; [debug line = 13:9@44:7@87:4]

; <label>:2                                       ; preds = %4, %1
  %k.i = phi i4 [ 0, %1 ], [ %k, %4 ]             ; [#uses=3 type=i4]
  %exitcond1.i = icmp eq i4 %k.i, -8, !dbg !202   ; [#uses=1 type=i1] [debug line = 13:9@44:7@87:4]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %dct_1d.exit, label %4, !dbg !202 ; [debug line = 13:9@44:7@87:4]

; <label>:4                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !203 ; [debug line = 13:67@44:7@87:4]
  %tmp.4.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !203 ; [#uses=1 type=i32] [debug line = 13:67@44:7@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !204 ; [debug line = 14:1@44:7@87:4]
  %tmp.i = zext i4 %k.i to i64, !dbg !205         ; [#uses=9 type=i64] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.0.addr = getelementptr [8 x i14]* @dct_coeff_table.0, i64 0, i64 %tmp.i, !dbg !205 ; [#uses=1 type=i14*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.0.load = load i14* %dct_coeff_table.0.addr, align 2, !dbg !205 ; [#uses=1 type=i14] [debug line = 16:48@44:7@87:4]
  %coeff.cast.i = zext i14 %dct_coeff_table.0.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[0].addr" = getelementptr [8 x i16]* %"col_inbuf[0]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[0].load" = load i16* %"col_inbuf[0].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.cast.i = sext i16 %"col_inbuf[0].load" to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.6.i = mul i29 %coeff.cast.i, %tmp.5.cast.i, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.1.addr = getelementptr [8 x i15]* @dct_coeff_table.1, i64 0, i64 %tmp.i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.1.load = load i15* %dct_coeff_table.1.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.1.cast.i = sext i15 %dct_coeff_table.1.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[1].addr" = getelementptr [8 x i16]* %"col_inbuf[1]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[1].load" = load i16* %"col_inbuf[1].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.1.cast.i = sext i16 %"col_inbuf[1].load" to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.6.1.i = mul i29 %coeff.1.cast.i, %tmp.5.1.cast.i, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.2.addr = getelementptr [8 x i15]* @dct_coeff_table.2, i64 0, i64 %tmp.i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.2.load = load i15* %dct_coeff_table.2.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.2.cast.i = sext i15 %dct_coeff_table.2.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[2].addr" = getelementptr [8 x i16]* %"col_inbuf[2]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[2].load" = load i16* %"col_inbuf[2].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.2.cast.i = sext i16 %"col_inbuf[2].load" to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.6.2.i = mul i29 %coeff.2.cast.i, %tmp.5.2.cast.i, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.3.addr = getelementptr [8 x i15]* @dct_coeff_table.3, i64 0, i64 %tmp.i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.3.load = load i15* %dct_coeff_table.3.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.3.cast.i = sext i15 %dct_coeff_table.3.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[3].addr" = getelementptr [8 x i16]* %"col_inbuf[3]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[3].load" = load i16* %"col_inbuf[3].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.3.cast.i = sext i16 %"col_inbuf[3].load" to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.6.3.i = mul i29 %coeff.3.cast.i, %tmp.5.3.cast.i, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.4.addr = getelementptr [8 x i15]* @dct_coeff_table.4, i64 0, i64 %tmp.i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.4.load = load i15* %dct_coeff_table.4.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.4.cast.i = sext i15 %dct_coeff_table.4.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[4].addr" = getelementptr [8 x i16]* %"col_inbuf[4]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[4].load" = load i16* %"col_inbuf[4].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.4.cast.i = sext i16 %"col_inbuf[4].load" to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.6.4.i = mul i29 %coeff.4.cast.i, %tmp.5.4.cast.i, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.5.addr = getelementptr [8 x i15]* @dct_coeff_table.5, i64 0, i64 %tmp.i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.5.load = load i15* %dct_coeff_table.5.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.5.cast.i = sext i15 %dct_coeff_table.5.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[5].addr" = getelementptr [8 x i16]* %"col_inbuf[5]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[5].load" = load i16* %"col_inbuf[5].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.5.cast.i = sext i16 %"col_inbuf[5].load" to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.6.5.i = mul i29 %coeff.5.cast.i, %tmp.5.5.cast.i, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.6.addr = getelementptr [8 x i15]* @dct_coeff_table.6, i64 0, i64 %tmp.i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.6.load = load i15* %dct_coeff_table.6.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.6.cast.i = sext i15 %dct_coeff_table.6.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[6].addr" = getelementptr [8 x i16]* %"col_inbuf[6]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[6].load" = load i16* %"col_inbuf[6].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.6.cast.i = sext i16 %"col_inbuf[6].load" to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.6.6.i = mul i29 %coeff.6.cast.i, %tmp.5.6.cast.i, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %dct_coeff_table.7.addr = getelementptr [8 x i15]* @dct_coeff_table.7, i64 0, i64 %tmp.i, !dbg !205 ; [#uses=1 type=i15*] [debug line = 16:48@44:7@87:4]
  %dct_coeff_table.7.load = load i15* %dct_coeff_table.7.addr, align 2, !dbg !205 ; [#uses=1 type=i15] [debug line = 16:48@44:7@87:4]
  %coeff.7.cast.i = sext i15 %dct_coeff_table.7.load to i29 ; [#uses=1 type=i29]
  %"col_inbuf[7].addr" = getelementptr [8 x i16]* %"col_inbuf[7]", i64 0, i64 %tmp.8.cast.i ; [#uses=1 type=i16*]
  %"col_inbuf[7].load" = load i16* %"col_inbuf[7].addr", align 2 ; [#uses=1 type=i16]
  %tmp.5.7.cast.i = sext i16 %"col_inbuf[7].load" to i29, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp.6.7.i = mul i29 %coeff.7.cast.i, %tmp.5.7.cast.i, !dbg !206 ; [#uses=1 type=i29] [debug line = 17:10@44:7@87:4]
  %tmp1 = add i29 %tmp.6.1.i, %tmp.6.i, !dbg !207 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp2 = add i29 %tmp.6.3.i, %tmp.6.2.i, !dbg !207 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp = add i29 %tmp1, %tmp2, !dbg !207          ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp4 = add i29 %tmp.6.5.i, %tmp.6.4.i, !dbg !207 ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp6 = add i29 %tmp.6.7.i, 4096, !dbg !207     ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp5 = add i29 %tmp.6.6.i, %tmp6, !dbg !207    ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp3 = add i29 %tmp4, %tmp5, !dbg !207         ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp..i = add i29 %tmp, %tmp3, !dbg !207        ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp.2.i = lshr i29 %tmp..i, 13, !dbg !207      ; [#uses=1 type=i29] [debug line = 19:7@44:7@87:4]
  %tmp.3.i = trunc i29 %tmp.2.i to i16, !dbg !207 ; [#uses=1 type=i16] [debug line = 19:7@44:7@87:4]
  %col_outbuf.i.addr = getelementptr [8 x [8 x i16]]* %col_outbuf.i, i64 0, i64 %tmp.81.cast.i, i64 %tmp.i, !dbg !207 ; [#uses=1 type=i16*] [debug line = 19:7@44:7@87:4]
  store i16 %tmp.3.i, i16* %col_outbuf.i.addr, align 2, !dbg !207 ; [debug line = 19:7@44:7@87:4]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.4.i) nounwind, !dbg !208 ; [#uses=0 type=i32] [debug line = 20:4@44:7@87:4]
  %k = add i4 %k.i, 1, !dbg !209                  ; [#uses=1 type=i4] [debug line = 13:61@44:7@87:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !210) nounwind, !dbg !209 ; [debug line = 13:61@44:7@87:4] [debug variable = k]
  br label %2, !dbg !209                          ; [debug line = 13:61@44:7@87:4]

dct_1d.exit:                                      ; preds = %2
  %i = add i4 %i.2.i, 1, !dbg !211                ; [#uses=1 type=i4] [debug line = 43:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !154) nounwind, !dbg !211 ; [debug line = 43:61@87:4] [debug variable = i]
  br label %.preheader6.i, !dbg !211              ; [debug line = 43:61@87:4]
}

!hls.encrypted.func = !{}
!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/hls/labs/improve_area/dct_prj/solution6/.autopilot/db/dct.pragma.2.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_area", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !2, metadata !31} ; [ DW_TAG_compile_unit ]
!1 = metadata !{i32 0}
!2 = metadata !{metadata !3, metadata !12, metadata !19, metadata !25, metadata !28}
!3 = metadata !{i32 786478, i32 0, metadata !4, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !4, i32 4, metadata !5, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
!4 = metadata !{i32 786473, metadata !"dct.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_area", null} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !6, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!6 = metadata !{null, metadata !7, metadata !7}
!7 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !4, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!9 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !4, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !4, i32 23, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 25} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !8, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 786478, i32 0, metadata !4, metadata !"read_data", metadata !"read_data", metadata !"", metadata !4, i32 54, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 55} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22, metadata !23}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !9, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{i32 786478, i32 0, metadata !4, metadata !"write_data", metadata !"write_data", metadata !"", metadata !4, i32 66, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 67} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !23, metadata !22}
!28 = metadata !{i32 786478, i32 0, metadata !4, metadata !"dct", metadata !"dct", metadata !"", metadata !4, i32 78, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 79} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !22, metadata !22}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786484, i32 0, metadata !3, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"", metadata !4, i32 8, metadata !34, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !35, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ]
!36 = metadata !{metadata !18, metadata !18}
!37 = metadata !{i32 786689, metadata !25, metadata !"buf", null, i32 66, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !9, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{i32 66, i32 23, metadata !25, null}
!40 = metadata !{i32 786689, metadata !25, metadata !"output", null, i32 66, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !9, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!44 = metadata !{i32 66, i32 116, metadata !25, null}
!45 = metadata !{i32 71, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !47, i32 71, i32 4, metadata !4, i32 24} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !25, i32 67, i32 1, metadata !4, i32 23} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 71, i32 67, metadata !49, null}
!49 = metadata !{i32 786443, metadata !46, i32 71, i32 66, metadata !4, i32 25} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 74, i32 1, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 74, i32 1, metadata !4, i32 27} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !49, i32 73, i32 7, metadata !4, i32 26} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 73, i32 12, metadata !52, null}
!54 = metadata !{i32 74, i32 2, metadata !51, null}
!55 = metadata !{i32 75, i32 1, metadata !51, null}
!56 = metadata !{i32 74, i32 67, metadata !51, null}
!57 = metadata !{i32 73, i32 64, metadata !52, null}
!58 = metadata !{i32 786688, metadata !47, metadata !"c", metadata !4, i32 68, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!60 = metadata !{i32 75, i32 4, metadata !49, null}
!61 = metadata !{i32 71, i32 61, metadata !46, null}
!62 = metadata !{i32 786688, metadata !47, metadata !"r", metadata !4, i32 68, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 76, i32 1, metadata !47, null}
!64 = metadata !{i32 786689, metadata !19, metadata !"input", null, i32 54, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 54, i32 22, metadata !19, null}
!66 = metadata !{i32 790531, metadata !67, metadata !"buf[0]", null, i32 54, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!67 = metadata !{i32 786689, metadata !19, metadata !"buf", null, i32 54, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !9, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!69 = metadata !{i32 54, i32 44, metadata !19, null}
!70 = metadata !{i32 790531, metadata !67, metadata !"buf[1]", null, i32 54, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!71 = metadata !{i32 790531, metadata !67, metadata !"buf[2]", null, i32 54, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!72 = metadata !{i32 790531, metadata !67, metadata !"buf[3]", null, i32 54, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!73 = metadata !{i32 790531, metadata !67, metadata !"buf[4]", null, i32 54, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!74 = metadata !{i32 790531, metadata !67, metadata !"buf[5]", null, i32 54, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!75 = metadata !{i32 790531, metadata !67, metadata !"buf[6]", null, i32 54, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!76 = metadata !{i32 790531, metadata !67, metadata !"buf[7]", null, i32 54, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!77 = metadata !{i32 59, i32 9, metadata !78, null}
!78 = metadata !{i32 786443, metadata !79, i32 59, i32 4, metadata !4, i32 19} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786443, metadata !19, i32 55, i32 1, metadata !4, i32 18} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 59, i32 67, metadata !81, null}
!81 = metadata !{i32 786443, metadata !78, i32 59, i32 66, metadata !4, i32 20} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 62, i32 1, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 62, i32 1, metadata !4, i32 22} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !81, i32 61, i32 7, metadata !4, i32 21} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 61, i32 12, metadata !84, null}
!86 = metadata !{i32 62, i32 2, metadata !83, null}
!87 = metadata !{i32 63, i32 1, metadata !83, null}
!88 = metadata !{i32 62, i32 66, metadata !83, null}
!89 = metadata !{i32 61, i32 64, metadata !84, null}
!90 = metadata !{i32 786688, metadata !79, metadata !"c", metadata !4, i32 56, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 63, i32 4, metadata !81, null}
!92 = metadata !{i32 59, i32 61, metadata !78, null}
!93 = metadata !{i32 786688, metadata !79, metadata !"r", metadata !4, i32 56, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 64, i32 1, metadata !79, null}
!95 = metadata !{i32 80, i32 1, metadata !96, null}
!96 = metadata !{i32 786443, metadata !28, i32 79, i32 1, metadata !4, i32 28} ; [ DW_TAG_lexical_block ]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 15, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"input", metadata !101, metadata !"short", i32 0, i32 15}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 63, i32 1}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 15, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"output", metadata !101, metadata !"short", i32 0, i32 15}
!107 = metadata !{i32 786689, metadata !28, metadata !"input", null, i32 78, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 78, i32 16, metadata !28, null}
!109 = metadata !{i32 786689, metadata !28, metadata !"output", null, i32 78, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 78, i32 38, metadata !28, null}
!111 = metadata !{i32 790529, metadata !112, metadata !"col_inbuf[0]", null, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!112 = metadata !{i32 786688, metadata !113, metadata !"col_inbuf", metadata !4, i32 27, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 786443, metadata !12, i32 25, i32 1, metadata !4, i32 5} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !8, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!115 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !8, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!116 = metadata !{i32 27, i32 109, metadata !113, metadata !117}
!117 = metadata !{i32 87, i32 4, metadata !96, null}
!118 = metadata !{i32 790529, metadata !112, metadata !"col_inbuf[1]", null, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!119 = metadata !{i32 790529, metadata !112, metadata !"col_inbuf[2]", null, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!120 = metadata !{i32 790529, metadata !112, metadata !"col_inbuf[3]", null, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!121 = metadata !{i32 790529, metadata !112, metadata !"col_inbuf[4]", null, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!122 = metadata !{i32 790529, metadata !112, metadata !"col_inbuf[5]", null, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!123 = metadata !{i32 790529, metadata !112, metadata !"col_inbuf[6]", null, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!124 = metadata !{i32 790529, metadata !112, metadata !"col_inbuf[7]", null, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!125 = metadata !{i32 790529, metadata !126, metadata !"buf_2d_in[0]", null, i32 81, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!126 = metadata !{i32 786688, metadata !96, metadata !"buf_2d_in", metadata !4, i32 81, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 81, i32 10, metadata !96, null}
!128 = metadata !{i32 790529, metadata !126, metadata !"buf_2d_in[1]", null, i32 81, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!129 = metadata !{i32 790529, metadata !126, metadata !"buf_2d_in[2]", null, i32 81, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!130 = metadata !{i32 790529, metadata !126, metadata !"buf_2d_in[3]", null, i32 81, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!131 = metadata !{i32 790529, metadata !126, metadata !"buf_2d_in[4]", null, i32 81, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!132 = metadata !{i32 790529, metadata !126, metadata !"buf_2d_in[5]", null, i32 81, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!133 = metadata !{i32 790529, metadata !126, metadata !"buf_2d_in[6]", null, i32 81, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!134 = metadata !{i32 790529, metadata !126, metadata !"buf_2d_in[7]", null, i32 81, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!135 = metadata !{i32 786688, metadata !96, metadata !"buf_2d_out", metadata !4, i32 82, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 82, i32 10, metadata !96, null}
!137 = metadata !{i32 85, i32 4, metadata !96, null}
!138 = metadata !{i32 90, i32 4, metadata !96, null}
!139 = metadata !{i32 91, i32 1, metadata !96, null}
!140 = metadata !{i32 37, i32 9, metadata !141, metadata !117}
!141 = metadata !{i32 786443, metadata !113, i32 37, i32 4, metadata !4, i32 8} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 40, i32 34, metadata !143, metadata !117}
!143 = metadata !{i32 786443, metadata !144, i32 39, i32 7, metadata !4, i32 10} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 786443, metadata !141, i32 38, i32 1, metadata !4, i32 9} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 37, i32 61, metadata !141, metadata !117}
!146 = metadata !{i32 786688, metadata !113, metadata !"j", metadata !4, i32 28, metadata !147, i32 0, metadata !117} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!148 = metadata !{i32 39, i32 11, metadata !143, metadata !117}
!149 = metadata !{i32 38, i32 1, metadata !144, metadata !117}
!150 = metadata !{i32 40, i32 1, metadata !151, metadata !117}
!151 = metadata !{i32 786443, metadata !143, i32 40, i32 1, metadata !4, i32 11} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 40, i32 34, metadata !151, metadata !117}
!153 = metadata !{i32 39, i32 63, metadata !143, metadata !117}
!154 = metadata !{i32 786688, metadata !113, metadata !"i", metadata !4, i32 28, metadata !147, i32 0, metadata !117} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 40, i32 2, metadata !151, metadata !117}
!156 = metadata !{i32 41, i32 1, metadata !151, metadata !117}
!157 = metadata !{i32 48, i32 9, metadata !158, metadata !117}
!158 = metadata !{i32 786443, metadata !113, i32 48, i32 4, metadata !4, i32 14} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 51, i32 34, metadata !160, metadata !117}
!160 = metadata !{i32 786443, metadata !161, i32 50, i32 7, metadata !4, i32 16} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !158, i32 49, i32 1, metadata !4, i32 15} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 48, i32 61, metadata !158, metadata !117}
!163 = metadata !{i32 50, i32 11, metadata !160, metadata !117}
!164 = metadata !{i32 49, i32 1, metadata !161, metadata !117}
!165 = metadata !{i32 51, i32 1, metadata !166, metadata !117}
!166 = metadata !{i32 786443, metadata !160, i32 51, i32 1, metadata !4, i32 17} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 51, i32 2, metadata !166, metadata !117}
!168 = metadata !{i32 52, i32 1, metadata !166, metadata !117}
!169 = metadata !{i32 51, i32 34, metadata !166, metadata !117}
!170 = metadata !{i32 50, i32 63, metadata !160, metadata !117}
!171 = metadata !{i32 32, i32 8, metadata !172, metadata !117}
!172 = metadata !{i32 786443, metadata !113, i32 32, i32 4, metadata !4, i32 6} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 32, i32 66, metadata !174, metadata !117}
!174 = metadata !{i32 786443, metadata !172, i32 32, i32 65, metadata !4, i32 7} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i4 0, i4 7, i4 0, i4 7}         
!176 = metadata !{i32 786689, metadata !3, metadata !"dst", null, i32 4, metadata !177, i32 0, metadata !178} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !8, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!178 = metadata !{i32 33, i32 7, metadata !174, metadata !117}
!179 = metadata !{i32 4, i32 81, metadata !3, metadata !178}
!180 = metadata !{i32 13, i32 9, metadata !181, metadata !178}
!181 = metadata !{i32 786443, metadata !182, i32 13, i32 4, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 786443, metadata !3, i32 5, i32 1, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 13, i32 67, metadata !184, metadata !178}
!184 = metadata !{i32 786443, metadata !181, i32 13, i32 66, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 14, i32 1, metadata !184, metadata !178}
!186 = metadata !{i32 16, i32 48, metadata !187, metadata !178}
!187 = metadata !{i32 786443, metadata !188, i32 15, i32 77, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 786443, metadata !184, i32 15, i32 7, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 17, i32 10, metadata !187, metadata !178}
!190 = metadata !{i32 19, i32 7, metadata !184, metadata !178}
!191 = metadata !{i32 20, i32 4, metadata !184, metadata !178}
!192 = metadata !{i32 13, i32 61, metadata !181, metadata !178}
!193 = metadata !{i32 786688, metadata !182, metadata !"k", metadata !4, i32 6, metadata !147, i32 0, metadata !178} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 32, i32 60, metadata !172, metadata !117}
!195 = metadata !{i32 43, i32 9, metadata !196, metadata !117}
!196 = metadata !{i32 786443, metadata !113, i32 43, i32 4, metadata !4, i32 12} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 43, i32 67, metadata !198, metadata !117}
!198 = metadata !{i32 786443, metadata !196, i32 43, i32 66, metadata !4, i32 13} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 786689, metadata !3, metadata !"dst", null, i32 4, metadata !177, i32 0, metadata !200} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 44, i32 7, metadata !198, metadata !117}
!201 = metadata !{i32 4, i32 81, metadata !3, metadata !200}
!202 = metadata !{i32 13, i32 9, metadata !181, metadata !200}
!203 = metadata !{i32 13, i32 67, metadata !184, metadata !200}
!204 = metadata !{i32 14, i32 1, metadata !184, metadata !200}
!205 = metadata !{i32 16, i32 48, metadata !187, metadata !200}
!206 = metadata !{i32 17, i32 10, metadata !187, metadata !200}
!207 = metadata !{i32 19, i32 7, metadata !184, metadata !200}
!208 = metadata !{i32 20, i32 4, metadata !184, metadata !200}
!209 = metadata !{i32 13, i32 61, metadata !181, metadata !200}
!210 = metadata !{i32 786688, metadata !182, metadata !"k", metadata !4, i32 6, metadata !147, i32 0, metadata !200} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 43, i32 61, metadata !196, metadata !117}
