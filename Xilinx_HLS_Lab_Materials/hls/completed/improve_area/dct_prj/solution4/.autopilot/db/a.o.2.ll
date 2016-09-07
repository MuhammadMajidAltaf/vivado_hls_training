; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution4/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table.7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table.0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=1 type=[8 x i14]*]
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
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=1]
define internal fastcc void @read_data([64 x i16]* nocapture %input, [8 x i16]* nocapture %"buf[0]", [8 x i16]* nocapture %"buf[1]", [8 x i16]* nocapture %"buf[2]", [8 x i16]* nocapture %"buf[3]", [8 x i16]* nocapture %"buf[4]", [8 x i16]* nocapture %"buf[5]", [8 x i16]* nocapture %"buf[6]", [8 x i16]* nocapture %"buf[7]") {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !37), !dbg !41 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[0]"}, i64 0, metadata !42), !dbg !46 ; [debug line = 54:44] [debug variable = buf[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[1]"}, i64 0, metadata !47), !dbg !46 ; [debug line = 54:44] [debug variable = buf[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[2]"}, i64 0, metadata !48), !dbg !46 ; [debug line = 54:44] [debug variable = buf[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[3]"}, i64 0, metadata !49), !dbg !46 ; [debug line = 54:44] [debug variable = buf[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[4]"}, i64 0, metadata !50), !dbg !46 ; [debug line = 54:44] [debug variable = buf[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[5]"}, i64 0, metadata !51), !dbg !46 ; [debug line = 54:44] [debug variable = buf[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[6]"}, i64 0, metadata !52), !dbg !46 ; [debug line = 54:44] [debug variable = buf[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"buf[7]"}, i64 0, metadata !53), !dbg !46 ; [debug line = 54:44] [debug variable = buf[7]]
  br label %1, !dbg !54                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %9, %0
  %r = phi i4 [ 0, %0 ], [ %r.1, %9 ]             ; [#uses=4 type=i4]
  %r.cast3 = zext i4 %r to i6, !dbg !54           ; [#uses=1 type=i6] [debug line = 59:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !54        ; [#uses=1 type=i1] [debug line = 59:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %11, label %3, !dbg !54 ; [debug line = 59:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !57 ; [debug line = 59:67]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10), !dbg !57 ; [#uses=1 type=i32] [debug line = 59:67]
  %tmp = shl i6 %r.cast3, 3, !dbg !59             ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp.7 = zext i4 %r to i64, !dbg !59            ; [#uses=8 type=i64] [debug line = 62:1]
  %"buf[0].addr" = getelementptr [8 x i16]* %"buf[0]", i64 0, i64 %tmp.7, !dbg !59 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[1].addr" = getelementptr [8 x i16]* %"buf[1]", i64 0, i64 %tmp.7, !dbg !59 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[2].addr" = getelementptr [8 x i16]* %"buf[2]", i64 0, i64 %tmp.7, !dbg !59 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[3].addr" = getelementptr [8 x i16]* %"buf[3]", i64 0, i64 %tmp.7, !dbg !59 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[4].addr" = getelementptr [8 x i16]* %"buf[4]", i64 0, i64 %tmp.7, !dbg !59 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[5].addr" = getelementptr [8 x i16]* %"buf[5]", i64 0, i64 %tmp.7, !dbg !59 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[6].addr" = getelementptr [8 x i16]* %"buf[6]", i64 0, i64 %tmp.7, !dbg !59 ; [#uses=1 type=i16*] [debug line = 62:1]
  %"buf[7].addr" = getelementptr [8 x i16]* %"buf[7]", i64 0, i64 %tmp.7, !dbg !59 ; [#uses=1 type=i16*] [debug line = 62:1]
  br label %4, !dbg !62                           ; [debug line = 61:12]

; <label>:4                                       ; preds = %7, %3
  %c = phi i4 [ 0, %3 ], [ %c.1, %7 ]             ; [#uses=4 type=i4]
  %c.cast2 = zext i4 %c to i6, !dbg !62           ; [#uses=1 type=i6] [debug line = 61:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !62         ; [#uses=1 type=i1] [debug line = 61:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %9, label %6, !dbg !62   ; [debug line = 61:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !63 ; [debug line = 62:2]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str11), !dbg !63 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !64 ; [debug line = 63:1]
  %tmp.9 = add i6 %c.cast2, %tmp, !dbg !59        ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp. = zext i6 %tmp.9 to i64, !dbg !59         ; [#uses=1 type=i64] [debug line = 62:1]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp., !dbg !59 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input.load = load i16* %input.addr, align 2, !dbg !59 ; [#uses=8 type=i16] [debug line = 62:1]
  %c.t = trunc i4 %c to i3                        ; [#uses=1 type=i3]
  switch i3 %c.t, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !59                                     ; [debug line = 62:1]

; <label>:7                                       ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str11, i32 %tmp.1), !dbg !65 ; [#uses=0 type=i32] [debug line = 62:66]
  %c.1 = add i4 %c, 1, !dbg !66                   ; [#uses=1 type=i4] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !67), !dbg !66 ; [debug line = 61:64] [debug variable = c]
  br label %4, !dbg !66                           ; [debug line = 61:64]

; <label>:9                                       ; preds = %4
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.8), !dbg !69 ; [#uses=0 type=i32] [debug line = 63:4]
  %r.1 = add i4 %r, 1, !dbg !70                   ; [#uses=1 type=i4] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !71), !dbg !70 ; [debug line = 59:61] [debug variable = r]
  br label %1, !dbg !70                           ; [debug line = 59:61]

; <label>:11                                      ; preds = %1
  ret void, !dbg !72                              ; [debug line = 64:1]

branch0:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[0].addr", align 2, !dbg !59 ; [debug line = 62:1]
  br label %7, !dbg !59                           ; [debug line = 62:1]

branch1:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[1].addr", align 2, !dbg !59 ; [debug line = 62:1]
  br label %7, !dbg !59                           ; [debug line = 62:1]

branch2:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[2].addr", align 2, !dbg !59 ; [debug line = 62:1]
  br label %7, !dbg !59                           ; [debug line = 62:1]

branch3:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[3].addr", align 2, !dbg !59 ; [debug line = 62:1]
  br label %7, !dbg !59                           ; [debug line = 62:1]

branch4:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[4].addr", align 2, !dbg !59 ; [debug line = 62:1]
  br label %7, !dbg !59                           ; [debug line = 62:1]

branch5:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[5].addr", align 2, !dbg !59 ; [debug line = 62:1]
  br label %7, !dbg !59                           ; [debug line = 62:1]

branch6:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[6].addr", align 2, !dbg !59 ; [debug line = 62:1]
  br label %7, !dbg !59                           ; [debug line = 62:1]

branch7:                                          ; preds = %6
  store i16 %input.load, i16* %"buf[7].addr", align 2, !dbg !59 ; [debug line = 62:1]
  br label %7, !dbg !59                           ; [debug line = 62:1]
}

; [#uses=34]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([8 x i16]* nocapture %"in_block[0]", [8 x i16]* nocapture %"in_block[1]", [8 x i16]* nocapture %"in_block[2]", [8 x i16]* nocapture %"in_block[3]", [8 x i16]* nocapture %"in_block[4]", [8 x i16]* nocapture %"in_block[5]", [8 x i16]* nocapture %"in_block[6]", [8 x i16]* nocapture %"in_block[7]", [8 x [8 x i16]]* nocapture %out_block) {
  %row_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %"col_inbuf[0]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[1]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[2]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[3]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[4]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[5]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[6]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  %"col_inbuf[7]" = alloca [8 x i16], align 2     ; [#uses=2 type=[8 x i16]*]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[0]"}, i64 0, metadata !73), !dbg !77 ; [debug line = 23:24] [debug variable = in_block[0]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[1]"}, i64 0, metadata !78), !dbg !77 ; [debug line = 23:24] [debug variable = in_block[1]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[2]"}, i64 0, metadata !79), !dbg !77 ; [debug line = 23:24] [debug variable = in_block[2]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[3]"}, i64 0, metadata !80), !dbg !77 ; [debug line = 23:24] [debug variable = in_block[3]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[4]"}, i64 0, metadata !81), !dbg !77 ; [debug line = 23:24] [debug variable = in_block[4]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[5]"}, i64 0, metadata !82), !dbg !77 ; [debug line = 23:24] [debug variable = in_block[5]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[6]"}, i64 0, metadata !83), !dbg !77 ; [debug line = 23:24] [debug variable = in_block[6]]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %"in_block[7]"}, i64 0, metadata !84), !dbg !77 ; [debug line = 23:24] [debug variable = in_block[7]]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %out_block}, i64 0, metadata !85), !dbg !86 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[0]"}, metadata !87), !dbg !90 ; [debug line = 27:109] [debug variable = col_inbuf[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[1]"}, metadata !91), !dbg !90 ; [debug line = 27:109] [debug variable = col_inbuf[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[2]"}, metadata !92), !dbg !90 ; [debug line = 27:109] [debug variable = col_inbuf[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[3]"}, metadata !93), !dbg !90 ; [debug line = 27:109] [debug variable = col_inbuf[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[4]"}, metadata !94), !dbg !90 ; [debug line = 27:109] [debug variable = col_inbuf[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[5]"}, metadata !95), !dbg !90 ; [debug line = 27:109] [debug variable = col_inbuf[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[6]"}, metadata !96), !dbg !90 ; [debug line = 27:109] [debug variable = col_inbuf[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"col_inbuf[7]"}, metadata !97), !dbg !90 ; [debug line = 27:109] [debug variable = col_inbuf[7]]
  br label %1, !dbg !98                           ; [debug line = 32:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.4, %3 ]             ; [#uses=4 type=i4]
  %exitcond5 = icmp eq i4 %i, -8, !dbg !98        ; [#uses=1 type=i1] [debug line = 32:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond5, label %.preheader7.preheader, label %3, !dbg !98 ; [debug line = 32:8]

.preheader7.preheader:                            ; preds = %1
  br label %.preheader7, !dbg !100                ; [debug line = 37:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str4) nounwind, !dbg !102 ; [debug line = 32:66]
  call fastcc void @dct_1d([8 x i16]* %"in_block[0]", [8 x i16]* %"in_block[1]", [8 x i16]* %"in_block[2]", [8 x i16]* %"in_block[3]", [8 x i16]* %"in_block[4]", [8 x i16]* %"in_block[5]", [8 x i16]* %"in_block[6]", [8 x i16]* %"in_block[7]", i4 %i, [8 x [8 x i16]]* %row_outbuf, i4 %i), !dbg !104 ; [debug line = 33:7]
  %i.4 = add i4 %i, 1, !dbg !105                  ; [#uses=1 type=i4] [debug line = 32:60]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !106), !dbg !105 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !105                          ; [debug line = 32:60]

.preheader7:                                      ; preds = %11, %.preheader7.preheader
  %j = phi i4 [ %j.2, %11 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i4]
  %exitcond4 = icmp eq i4 %j, -8, !dbg !100       ; [#uses=1 type=i1] [debug line = 37:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond4, label %.preheader6.preheader, label %5, !dbg !100 ; [debug line = 37:9]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !108                ; [debug line = 43:9]

; <label>:5                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str5) nounwind, !dbg !110 ; [debug line = 38:1]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str5), !dbg !110 ; [#uses=1 type=i32] [debug line = 38:1]
  %tmp. = zext i4 %j to i64, !dbg !112            ; [#uses=9 type=i64] [debug line = 40:1]
  %"col_inbuf[0].addr" = getelementptr [8 x i16]* %"col_inbuf[0]", i64 0, i64 %tmp., !dbg !112 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[1].addr" = getelementptr [8 x i16]* %"col_inbuf[1]", i64 0, i64 %tmp., !dbg !112 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[2].addr" = getelementptr [8 x i16]* %"col_inbuf[2]", i64 0, i64 %tmp., !dbg !112 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[3].addr" = getelementptr [8 x i16]* %"col_inbuf[3]", i64 0, i64 %tmp., !dbg !112 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[4].addr" = getelementptr [8 x i16]* %"col_inbuf[4]", i64 0, i64 %tmp., !dbg !112 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[5].addr" = getelementptr [8 x i16]* %"col_inbuf[5]", i64 0, i64 %tmp., !dbg !112 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[6].addr" = getelementptr [8 x i16]* %"col_inbuf[6]", i64 0, i64 %tmp., !dbg !112 ; [#uses=1 type=i16*] [debug line = 40:1]
  %"col_inbuf[7].addr" = getelementptr [8 x i16]* %"col_inbuf[7]", i64 0, i64 %tmp., !dbg !112 ; [#uses=1 type=i16*] [debug line = 40:1]
  br label %6, !dbg !115                          ; [debug line = 39:11]

; <label>:6                                       ; preds = %9, %5
  %i.1 = phi i4 [ 0, %5 ], [ %i.6, %9 ]           ; [#uses=4 type=i4]
  %exitcond3 = icmp eq i4 %i.1, -8, !dbg !115     ; [#uses=1 type=i1] [debug line = 39:11]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond3, label %11, label %8, !dbg !115 ; [debug line = 39:11]

; <label>:8                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str6) nounwind, !dbg !116 ; [debug line = 40:2]
  %tmp.7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str6), !dbg !116 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !117 ; [debug line = 41:1]
  %tmp.3 = zext i4 %i.1 to i64, !dbg !112         ; [#uses=1 type=i64] [debug line = 40:1]
  %row_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i64 0, i64 %tmp.3, i64 %tmp., !dbg !112 ; [#uses=1 type=i16*] [debug line = 40:1]
  %row_outbuf.load = load i16* %row_outbuf.addr, align 2, !dbg !112 ; [#uses=8 type=i16] [debug line = 40:1]
  %i.1.t = trunc i4 %i.1 to i3                    ; [#uses=1 type=i3]
  switch i3 %i.1.t, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ], !dbg !112                                    ; [debug line = 40:1]

; <label>:9                                       ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str6, i32 %tmp.7), !dbg !118 ; [#uses=0 type=i32] [debug line = 40:34]
  %i.6 = add i4 %i.1, 1, !dbg !119                ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i.6}, i64 0, metadata !106), !dbg !119 ; [debug line = 39:63] [debug variable = i]
  br label %6, !dbg !119                          ; [debug line = 39:63]

; <label>:11                                      ; preds = %6
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str5, i32 %tmp.6), !dbg !120 ; [#uses=0 type=i32] [debug line = 40:34]
  %j.2 = add i4 %j, 1, !dbg !121                  ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j.2}, i64 0, metadata !122), !dbg !121 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader7, !dbg !121                ; [debug line = 37:61]

.preheader6:                                      ; preds = %14, %.preheader6.preheader
  %i.2 = phi i4 [ %i.5, %14 ], [ 0, %.preheader6.preheader ] ; [#uses=4 type=i4]
  %exitcond2 = icmp eq i4 %i.2, -8, !dbg !108     ; [#uses=1 type=i1] [debug line = 43:9]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond2, label %.preheader.preheader, label %14, !dbg !108 ; [debug line = 43:9]

.preheader.preheader:                             ; preds = %.preheader6
  br label %.preheader, !dbg !123                 ; [debug line = 48:9]

; <label>:14                                      ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str7) nounwind, !dbg !125 ; [debug line = 43:67]
  call fastcc void @dct_1d([8 x i16]* %"col_inbuf[0]", [8 x i16]* %"col_inbuf[1]", [8 x i16]* %"col_inbuf[2]", [8 x i16]* %"col_inbuf[3]", [8 x i16]* %"col_inbuf[4]", [8 x i16]* %"col_inbuf[5]", [8 x i16]* %"col_inbuf[6]", [8 x i16]* %"col_inbuf[7]", i4 %i.2, [8 x [8 x i16]]* %col_outbuf, i4 %i.2), !dbg !127 ; [debug line = 44:7]
  %i.5 = add i4 %i.2, 1, !dbg !128                ; [#uses=1 type=i4] [debug line = 43:61]
  call void @llvm.dbg.value(metadata !{i4 %i.5}, i64 0, metadata !106), !dbg !128 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader6, !dbg !128                ; [debug line = 43:61]

.preheader:                                       ; preds = %21, %.preheader.preheader
  %j.1 = phi i4 [ %j.3, %21 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i4]
  %exitcond1 = icmp eq i4 %j.1, -8, !dbg !123     ; [#uses=1 type=i1] [debug line = 48:9]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %23, label %16, !dbg !123 ; [debug line = 48:9]

; <label>:16                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str8) nounwind, !dbg !129 ; [debug line = 49:1]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str8), !dbg !129 ; [#uses=1 type=i32] [debug line = 49:1]
  %tmp.4 = zext i4 %j.1 to i64, !dbg !131         ; [#uses=2 type=i64] [debug line = 51:1]
  br label %17, !dbg !134                         ; [debug line = 50:11]

; <label>:17                                      ; preds = %19, %16
  %i.3 = phi i4 [ 0, %16 ], [ %i.7, %19 ]         ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i.3, -8, !dbg !134      ; [#uses=1 type=i1] [debug line = 50:11]
  %18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %21, label %19, !dbg !134 ; [debug line = 50:11]

; <label>:19                                      ; preds = %17
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str9) nounwind, !dbg !135 ; [debug line = 51:2]
  %tmp.9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str9), !dbg !135 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !136 ; [debug line = 52:1]
  %tmp.5 = zext i4 %i.3 to i64, !dbg !131         ; [#uses=2 type=i64] [debug line = 51:1]
  %col_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i64 0, i64 %tmp.5, i64 %tmp.4, !dbg !131 ; [#uses=1 type=i16*] [debug line = 51:1]
  %col_outbuf.load = load i16* %col_outbuf.addr, align 2, !dbg !131 ; [#uses=1 type=i16] [debug line = 51:1]
  %out_block.addr = getelementptr [8 x [8 x i16]]* %out_block, i64 0, i64 %tmp.4, i64 %tmp.5, !dbg !131 ; [#uses=1 type=i16*] [debug line = 51:1]
  store i16 %col_outbuf.load, i16* %out_block.addr, align 2, !dbg !131 ; [debug line = 51:1]
  %20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str9, i32 %tmp.9), !dbg !137 ; [#uses=0 type=i32] [debug line = 51:34]
  %i.7 = add i4 %i.3, 1, !dbg !138                ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i.7}, i64 0, metadata !106), !dbg !138 ; [debug line = 50:63] [debug variable = i]
  br label %17, !dbg !138                         ; [debug line = 50:63]

; <label>:21                                      ; preds = %17
  %22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str8, i32 %tmp.8), !dbg !139 ; [#uses=0 type=i32] [debug line = 51:34]
  %j.3 = add i4 %j.1, 1, !dbg !140                ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j.3}, i64 0, metadata !122), !dbg !140 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !140                 ; [debug line = 48:61]

; <label>:23                                      ; preds = %.preheader
  ret void, !dbg !141                             ; [debug line = 52:1]

branch0:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[0].addr", align 2, !dbg !112 ; [debug line = 40:1]
  br label %9, !dbg !112                          ; [debug line = 40:1]

branch1:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[1].addr", align 2, !dbg !112 ; [debug line = 40:1]
  br label %9, !dbg !112                          ; [debug line = 40:1]

branch2:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[2].addr", align 2, !dbg !112 ; [debug line = 40:1]
  br label %9, !dbg !112                          ; [debug line = 40:1]

branch3:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[3].addr", align 2, !dbg !112 ; [debug line = 40:1]
  br label %9, !dbg !112                          ; [debug line = 40:1]

branch4:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[4].addr", align 2, !dbg !112 ; [debug line = 40:1]
  br label %9, !dbg !112                          ; [debug line = 40:1]

branch5:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[5].addr", align 2, !dbg !112 ; [debug line = 40:1]
  br label %9, !dbg !112                          ; [debug line = 40:1]

branch6:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[6].addr", align 2, !dbg !112 ; [debug line = 40:1]
  br label %9, !dbg !112                          ; [debug line = 40:1]

branch7:                                          ; preds = %8
  store i16 %row_outbuf.load, i16* %"col_inbuf[7].addr", align 2, !dbg !112 ; [debug line = 40:1]
  br label %9, !dbg !112                          ; [debug line = 40:1]
}

; [#uses=2]
define internal fastcc void @dct_1d([8 x i16]* nocapture %src, [8 x i16]* nocapture %src1, [8 x i16]* nocapture %src2, [8 x i16]* nocapture %src3, [8 x i16]* nocapture %src4, [8 x i16]* nocapture %src5, [8 x i16]* nocapture %src6, [8 x i16]* nocapture %src7, i4 %tmp.2, [8 x [8 x i16]]* nocapture %dst, i4 %tmp.21) {
  %tmp.21.cast = zext i4 %tmp.21 to i64           ; [#uses=2 type=i64]
  %tmp.2.cast = zext i4 %tmp.2 to i64             ; [#uses=9 type=i64]
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.2.cast), !hlsrange !142
  call void (...)* @_ssdm_SpecKeepAssert(i64 %tmp.21.cast), !hlsrange !142
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %dst}, i64 0, metadata !143), !dbg !145 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !146                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %3, %0
  %k = phi i4 [ 0, %0 ], [ %k.1, %3 ]             ; [#uses=3 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !146       ; [#uses=1 type=i1] [debug line = 13:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %5, label %3, !dbg !146 ; [debug line = 13:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str) nounwind, !dbg !149 ; [debug line = 13:67]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str) nounwind, !dbg !149 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !151 ; [debug line = 14:1]
  %tmp = zext i4 %k to i64, !dbg !152             ; [#uses=9 type=i64] [debug line = 16:48]
  %dct_coeff_table.0.addr = getelementptr [8 x i14]* @dct_coeff_table.0, i64 0, i64 %tmp, !dbg !152 ; [#uses=1 type=i14*] [debug line = 16:48]
  %dct_coeff_table.0.load = load i14* %dct_coeff_table.0.addr, align 2, !dbg !152 ; [#uses=1 type=i14] [debug line = 16:48]
  %coeff.cast = zext i14 %dct_coeff_table.0.load to i29 ; [#uses=1 type=i29]
  %src.addr = getelementptr [8 x i16]* %src, i64 0, i64 %tmp.2.cast ; [#uses=1 type=i16*]
  %src.load = load i16* %src.addr, align 2        ; [#uses=1 type=i16]
  %tmp.9.cast = sext i16 %src.load to i29, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.3 = mul i29 %tmp.9.cast, %coeff.cast, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.1.addr = getelementptr [8 x i15]* @dct_coeff_table.1, i64 0, i64 %tmp, !dbg !152 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.1.load = load i15* %dct_coeff_table.1.addr, align 2, !dbg !152 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.1.cast = sext i15 %dct_coeff_table.1.load to i29 ; [#uses=1 type=i29]
  %src1.addr = getelementptr [8 x i16]* %src1, i64 0, i64 %tmp.2.cast ; [#uses=1 type=i16*]
  %src1.load = load i16* %src1.addr, align 2      ; [#uses=1 type=i16]
  %tmp.9.1.cast = sext i16 %src1.load to i29, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.1 = mul i29 %tmp.9.1.cast, %coeff.1.cast, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.2.addr = getelementptr [8 x i15]* @dct_coeff_table.2, i64 0, i64 %tmp, !dbg !152 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.2.load = load i15* %dct_coeff_table.2.addr, align 2, !dbg !152 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.2.cast = sext i15 %dct_coeff_table.2.load to i29 ; [#uses=1 type=i29]
  %src2.addr = getelementptr [8 x i16]* %src2, i64 0, i64 %tmp.2.cast ; [#uses=1 type=i16*]
  %src2.load = load i16* %src2.addr, align 2      ; [#uses=1 type=i16]
  %tmp.9.2.cast = sext i16 %src2.load to i29, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.2 = mul i29 %tmp.9.2.cast, %coeff.2.cast, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.3.addr = getelementptr [8 x i15]* @dct_coeff_table.3, i64 0, i64 %tmp, !dbg !152 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.3.load = load i15* %dct_coeff_table.3.addr, align 2, !dbg !152 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.3.cast = sext i15 %dct_coeff_table.3.load to i29 ; [#uses=1 type=i29]
  %src3.addr = getelementptr [8 x i16]* %src3, i64 0, i64 %tmp.2.cast ; [#uses=1 type=i16*]
  %src3.load = load i16* %src3.addr, align 2      ; [#uses=1 type=i16]
  %tmp.9.3.cast = sext i16 %src3.load to i29, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.3 = mul i29 %tmp.9.3.cast, %coeff.3.cast, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.4.addr = getelementptr [8 x i15]* @dct_coeff_table.4, i64 0, i64 %tmp, !dbg !152 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.4.load = load i15* %dct_coeff_table.4.addr, align 2, !dbg !152 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.4.cast = sext i15 %dct_coeff_table.4.load to i29 ; [#uses=1 type=i29]
  %src4.addr = getelementptr [8 x i16]* %src4, i64 0, i64 %tmp.2.cast ; [#uses=1 type=i16*]
  %src4.load = load i16* %src4.addr, align 2      ; [#uses=1 type=i16]
  %tmp.9.4.cast = sext i16 %src4.load to i29, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.4 = mul i29 %tmp.9.4.cast, %coeff.4.cast, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.5.addr = getelementptr [8 x i15]* @dct_coeff_table.5, i64 0, i64 %tmp, !dbg !152 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.5.load = load i15* %dct_coeff_table.5.addr, align 2, !dbg !152 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.5.cast = sext i15 %dct_coeff_table.5.load to i29 ; [#uses=1 type=i29]
  %src5.addr = getelementptr [8 x i16]* %src5, i64 0, i64 %tmp.2.cast ; [#uses=1 type=i16*]
  %src5.load = load i16* %src5.addr, align 2      ; [#uses=1 type=i16]
  %tmp.9.5.cast = sext i16 %src5.load to i29, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.5 = mul i29 %tmp.9.5.cast, %coeff.5.cast, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.6.addr = getelementptr [8 x i15]* @dct_coeff_table.6, i64 0, i64 %tmp, !dbg !152 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.6.load = load i15* %dct_coeff_table.6.addr, align 2, !dbg !152 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.6.cast = sext i15 %dct_coeff_table.6.load to i29 ; [#uses=1 type=i29]
  %src6.addr = getelementptr [8 x i16]* %src6, i64 0, i64 %tmp.2.cast ; [#uses=1 type=i16*]
  %src6.load = load i16* %src6.addr, align 2      ; [#uses=1 type=i16]
  %tmp.9.6.cast = sext i16 %src6.load to i29, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.6 = mul i29 %tmp.9.6.cast, %coeff.6.cast, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %dct_coeff_table.7.addr = getelementptr [8 x i15]* @dct_coeff_table.7, i64 0, i64 %tmp, !dbg !152 ; [#uses=1 type=i15*] [debug line = 16:48]
  %dct_coeff_table.7.load = load i15* %dct_coeff_table.7.addr, align 2, !dbg !152 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.7.cast = sext i15 %dct_coeff_table.7.load to i29 ; [#uses=1 type=i29]
  %src7.addr = getelementptr [8 x i16]* %src7, i64 0, i64 %tmp.2.cast ; [#uses=1 type=i16*]
  %src7.load = load i16* %src7.addr, align 2      ; [#uses=1 type=i16]
  %tmp.9.7.cast = sext i16 %src7.load to i29, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.7 = mul i29 %tmp.9.7.cast, %coeff.7.cast, !dbg !155 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp2 = add i29 %tmp.10.1, %tmp.3, !dbg !156    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp.10.3, %tmp.10.2, !dbg !156 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp1 = add i29 %tmp2, %tmp3, !dbg !156         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp.10.5, %tmp.10.4, !dbg !156 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp7 = add i29 %tmp.10.7, 4096, !dbg !156      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 %tmp.10.6, %tmp7, !dbg !156     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp5, %tmp6, !dbg !156         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp. = add i29 %tmp1, %tmp4, !dbg !156         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.6 = lshr i29 %tmp., 13, !dbg !156          ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.7 = trunc i29 %tmp.6 to i16, !dbg !156     ; [#uses=1 type=i16] [debug line = 19:7]
  %dst.addr = getelementptr [8 x [8 x i16]]* %dst, i64 0, i64 %tmp.21.cast, i64 %tmp, !dbg !156 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.7, i16* %dst.addr, align 2, !dbg !156 ; [debug line = 19:7]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str, i32 %tmp.1) nounwind, !dbg !157 ; [#uses=0 type=i32] [debug line = 20:4]
  %k.1 = add i4 %k, 1, !dbg !158                  ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k.1}, i64 0, metadata !159), !dbg !158 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !158                          ; [debug line = 13:61]

; <label>:5                                       ; preds = %1
  ret void, !dbg !160                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !161
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !167
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
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !171), !dbg !172 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !173), !dbg !174 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[0]"}, metadata !175), !dbg !178 ; [debug line = 81:10] [debug variable = buf_2d_in[0]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[1]"}, metadata !179), !dbg !178 ; [debug line = 81:10] [debug variable = buf_2d_in[1]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[2]"}, metadata !180), !dbg !178 ; [debug line = 81:10] [debug variable = buf_2d_in[2]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[3]"}, metadata !181), !dbg !178 ; [debug line = 81:10] [debug variable = buf_2d_in[3]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[4]"}, metadata !182), !dbg !178 ; [debug line = 81:10] [debug variable = buf_2d_in[4]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[5]"}, metadata !183), !dbg !178 ; [debug line = 81:10] [debug variable = buf_2d_in[5]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[6]"}, metadata !184), !dbg !178 ; [debug line = 81:10] [debug variable = buf_2d_in[6]]
  call void @llvm.dbg.declare(metadata !{[8 x i16]* %"buf_2d_in[7]"}, metadata !185), !dbg !178 ; [debug line = 81:10] [debug variable = buf_2d_in[7]]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !186), !dbg !187 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @read_data([64 x i16]* %input, [8 x i16]* %"buf_2d_in[0]", [8 x i16]* %"buf_2d_in[1]", [8 x i16]* %"buf_2d_in[2]", [8 x i16]* %"buf_2d_in[3]", [8 x i16]* %"buf_2d_in[4]", [8 x i16]* %"buf_2d_in[5]", [8 x i16]* %"buf_2d_in[6]", [8 x i16]* %"buf_2d_in[7]") nounwind, !dbg !188 ; [debug line = 85:4]
  call fastcc void @dct_2d([8 x i16]* %"buf_2d_in[0]", [8 x i16]* %"buf_2d_in[1]", [8 x i16]* %"buf_2d_in[2]", [8 x i16]* %"buf_2d_in[3]", [8 x i16]* %"buf_2d_in[4]", [8 x i16]* %"buf_2d_in[5]", [8 x i16]* %"buf_2d_in[6]", [8 x i16]* %"buf_2d_in[7]", [8 x [8 x i16]]* %buf_2d_out) nounwind, !dbg !189 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf_2d_out}, i64 0, metadata !190) nounwind, !dbg !192 ; [debug line = 66:23@90:4] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !193) nounwind, !dbg !194 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %1, !dbg !195                          ; [debug line = 71:9@90:4]

; <label>:1                                       ; preds = %8, %0
  %r.i = phi i4 [ 0, %0 ], [ %r, %8 ]             ; [#uses=4 type=i4]
  %r.i.cast4 = zext i4 %r.i to i6, !dbg !195      ; [#uses=1 type=i6] [debug line = 71:9@90:4]
  %exitcond1.i = icmp eq i4 %r.i, -8, !dbg !195   ; [#uses=1 type=i1] [debug line = 71:9@90:4]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %write_data.exit, label %3, !dbg !195 ; [debug line = 71:9@90:4]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str12) nounwind, !dbg !198 ; [debug line = 71:67@90:4]
  %tmp.2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str12) nounwind, !dbg !198 ; [#uses=1 type=i32] [debug line = 71:67@90:4]
  %tmp.i = zext i4 %r.i to i64, !dbg !200         ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %tmp.1.i = shl i6 %r.i.cast4, 3, !dbg !200      ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  br label %4, !dbg !203                          ; [debug line = 73:12@90:4]

; <label>:4                                       ; preds = %6, %3
  %c.i = phi i4 [ 0, %3 ], [ %c, %6 ]             ; [#uses=4 type=i4]
  %c.i.cast2 = zext i4 %c.i to i6, !dbg !203      ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  %exitcond.i = icmp eq i4 %c.i, -8, !dbg !203    ; [#uses=1 type=i1] [debug line = 73:12@90:4]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %8, label %6, !dbg !203 ; [debug line = 73:12@90:4]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str13) nounwind, !dbg !204 ; [debug line = 74:2@90:4]
  %tmp.6.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str13) nounwind, !dbg !204 ; [#uses=1 type=i32] [debug line = 74:2@90:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !205 ; [debug line = 75:1@90:4]
  %tmp.3.i = zext i4 %c.i to i64, !dbg !200       ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %buf.assign.addr = getelementptr [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.i, i64 %tmp.3.i, !dbg !200 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  %buf.assign.load = load i16* %buf.assign.addr, align 2, !dbg !200 ; [#uses=1 type=i16] [debug line = 74:1@90:4]
  %tmp.4.i = add i6 %c.i.cast2, %tmp.1.i, !dbg !200 ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  %tmp.5.i = zext i6 %tmp.4.i to i64, !dbg !200   ; [#uses=1 type=i64] [debug line = 74:1@90:4]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5.i, !dbg !200 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  store i16 %buf.assign.load, i16* %output.addr, align 2, !dbg !200 ; [debug line = 74:1@90:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str13, i32 %tmp.6.i) nounwind, !dbg !206 ; [#uses=0 type=i32] [debug line = 74:67@90:4]
  %c = add i4 %c.i, 1, !dbg !207                  ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !208) nounwind, !dbg !207 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %4, !dbg !207                          ; [debug line = 73:64@90:4]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str12, i32 %tmp.2.i) nounwind, !dbg !209 ; [#uses=0 type=i32] [debug line = 75:4@90:4]
  %r = add i4 %r.i, 1, !dbg !210                  ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !211) nounwind, !dbg !210 ; [debug line = 71:61@90:4] [debug variable = r]
  br label %1, !dbg !210                          ; [debug line = 71:61@90:4]

write_data.exit:                                  ; preds = %1
  ret void, !dbg !212                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=11]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=11]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_SpecKeepAssert(...)

!hls.encrypted.func = !{}
!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/hls/labs/improve_area/dct_prj/solution4/.autopilot/db/dct.pragma.2.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_area", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !2, metadata !31} ; [ DW_TAG_compile_unit ]
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
!37 = metadata !{i32 786689, metadata !19, metadata !"input", null, i32 54, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !9, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!41 = metadata !{i32 54, i32 22, metadata !19, null}
!42 = metadata !{i32 790531, metadata !43, metadata !"buf[0]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!43 = metadata !{i32 786689, metadata !19, metadata !"buf", null, i32 54, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !9, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !9, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{i32 54, i32 44, metadata !19, null}
!47 = metadata !{i32 790531, metadata !43, metadata !"buf[1]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!48 = metadata !{i32 790531, metadata !43, metadata !"buf[2]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!49 = metadata !{i32 790531, metadata !43, metadata !"buf[3]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!50 = metadata !{i32 790531, metadata !43, metadata !"buf[4]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!51 = metadata !{i32 790531, metadata !43, metadata !"buf[5]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!52 = metadata !{i32 790531, metadata !43, metadata !"buf[6]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!53 = metadata !{i32 790531, metadata !43, metadata !"buf[7]", null, i32 54, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!54 = metadata !{i32 59, i32 9, metadata !55, null}
!55 = metadata !{i32 786443, metadata !56, i32 59, i32 4, metadata !4, i32 19} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 786443, metadata !19, i32 55, i32 1, metadata !4, i32 18} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 59, i32 67, metadata !58, null}
!58 = metadata !{i32 786443, metadata !55, i32 59, i32 66, metadata !4, i32 20} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 62, i32 1, metadata !60, null}
!60 = metadata !{i32 786443, metadata !61, i32 62, i32 1, metadata !4, i32 22} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786443, metadata !58, i32 61, i32 7, metadata !4, i32 21} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 61, i32 12, metadata !61, null}
!63 = metadata !{i32 62, i32 2, metadata !60, null}
!64 = metadata !{i32 63, i32 1, metadata !60, null}
!65 = metadata !{i32 62, i32 66, metadata !60, null}
!66 = metadata !{i32 61, i32 64, metadata !61, null}
!67 = metadata !{i32 786688, metadata !56, metadata !"c", metadata !4, i32 56, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 63, i32 4, metadata !58, null}
!70 = metadata !{i32 59, i32 61, metadata !55, null}
!71 = metadata !{i32 786688, metadata !56, metadata !"r", metadata !4, i32 56, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 64, i32 1, metadata !56, null}
!73 = metadata !{i32 790531, metadata !74, metadata !"in_block[0]", null, i32 23, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!74 = metadata !{i32 786689, metadata !12, metadata !"in_block", null, i32 23, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !8, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!76 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !8, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!77 = metadata !{i32 23, i32 24, metadata !12, null}
!78 = metadata !{i32 790531, metadata !74, metadata !"in_block[1]", null, i32 23, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!79 = metadata !{i32 790531, metadata !74, metadata !"in_block[2]", null, i32 23, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!80 = metadata !{i32 790531, metadata !74, metadata !"in_block[3]", null, i32 23, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!81 = metadata !{i32 790531, metadata !74, metadata !"in_block[4]", null, i32 23, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!82 = metadata !{i32 790531, metadata !74, metadata !"in_block[5]", null, i32 23, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!83 = metadata !{i32 790531, metadata !74, metadata !"in_block[6]", null, i32 23, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!84 = metadata !{i32 790531, metadata !74, metadata !"in_block[7]", null, i32 23, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!85 = metadata !{i32 786689, metadata !12, metadata !"out_block", null, i32 24, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 24, i32 18, metadata !12, null}
!87 = metadata !{i32 790529, metadata !88, metadata !"col_inbuf[0]", null, i32 27, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!88 = metadata !{i32 786688, metadata !89, metadata !"col_inbuf", metadata !4, i32 27, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 786443, metadata !12, i32 25, i32 1, metadata !4, i32 5} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 27, i32 109, metadata !89, null}
!91 = metadata !{i32 790529, metadata !88, metadata !"col_inbuf[1]", null, i32 27, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!92 = metadata !{i32 790529, metadata !88, metadata !"col_inbuf[2]", null, i32 27, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!93 = metadata !{i32 790529, metadata !88, metadata !"col_inbuf[3]", null, i32 27, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!94 = metadata !{i32 790529, metadata !88, metadata !"col_inbuf[4]", null, i32 27, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!95 = metadata !{i32 790529, metadata !88, metadata !"col_inbuf[5]", null, i32 27, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!96 = metadata !{i32 790529, metadata !88, metadata !"col_inbuf[6]", null, i32 27, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!97 = metadata !{i32 790529, metadata !88, metadata !"col_inbuf[7]", null, i32 27, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!98 = metadata !{i32 32, i32 8, metadata !99, null}
!99 = metadata !{i32 786443, metadata !89, i32 32, i32 4, metadata !4, i32 6} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 37, i32 9, metadata !101, null}
!101 = metadata !{i32 786443, metadata !89, i32 37, i32 4, metadata !4, i32 8} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 32, i32 66, metadata !103, null}
!103 = metadata !{i32 786443, metadata !99, i32 32, i32 65, metadata !4, i32 7} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 33, i32 7, metadata !103, null}
!105 = metadata !{i32 32, i32 60, metadata !99, null}
!106 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !4, i32 28, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!108 = metadata !{i32 43, i32 9, metadata !109, null}
!109 = metadata !{i32 786443, metadata !89, i32 43, i32 4, metadata !4, i32 12} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 38, i32 1, metadata !111, null}
!111 = metadata !{i32 786443, metadata !101, i32 38, i32 1, metadata !4, i32 9} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 40, i32 1, metadata !113, null}
!113 = metadata !{i32 786443, metadata !114, i32 40, i32 1, metadata !4, i32 11} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786443, metadata !111, i32 39, i32 7, metadata !4, i32 10} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 39, i32 11, metadata !114, null}
!116 = metadata !{i32 40, i32 2, metadata !113, null}
!117 = metadata !{i32 41, i32 1, metadata !113, null}
!118 = metadata !{i32 40, i32 34, metadata !113, null}
!119 = metadata !{i32 39, i32 63, metadata !114, null}
!120 = metadata !{i32 40, i32 34, metadata !114, null}
!121 = metadata !{i32 37, i32 61, metadata !101, null}
!122 = metadata !{i32 786688, metadata !89, metadata !"j", metadata !4, i32 28, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 48, i32 9, metadata !124, null}
!124 = metadata !{i32 786443, metadata !89, i32 48, i32 4, metadata !4, i32 14} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 43, i32 67, metadata !126, null}
!126 = metadata !{i32 786443, metadata !109, i32 43, i32 66, metadata !4, i32 13} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 44, i32 7, metadata !126, null}
!128 = metadata !{i32 43, i32 61, metadata !109, null}
!129 = metadata !{i32 49, i32 1, metadata !130, null}
!130 = metadata !{i32 786443, metadata !124, i32 49, i32 1, metadata !4, i32 15} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 51, i32 1, metadata !132, null}
!132 = metadata !{i32 786443, metadata !133, i32 51, i32 1, metadata !4, i32 17} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786443, metadata !130, i32 50, i32 7, metadata !4, i32 16} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 50, i32 11, metadata !133, null}
!135 = metadata !{i32 51, i32 2, metadata !132, null}
!136 = metadata !{i32 52, i32 1, metadata !132, null}
!137 = metadata !{i32 51, i32 34, metadata !132, null}
!138 = metadata !{i32 50, i32 63, metadata !133, null}
!139 = metadata !{i32 51, i32 34, metadata !133, null}
!140 = metadata !{i32 48, i32 61, metadata !124, null}
!141 = metadata !{i32 52, i32 1, metadata !89, null}
!142 = metadata !{i4 0, i4 7, i4 0, i4 7}         
!143 = metadata !{i32 786689, metadata !3, metadata !"dst", null, i32 4, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !8, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!145 = metadata !{i32 4, i32 81, metadata !3, null}
!146 = metadata !{i32 13, i32 9, metadata !147, null}
!147 = metadata !{i32 786443, metadata !148, i32 13, i32 4, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !3, i32 5, i32 1, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 13, i32 67, metadata !150, null}
!150 = metadata !{i32 786443, metadata !147, i32 13, i32 66, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 14, i32 1, metadata !150, null}
!152 = metadata !{i32 16, i32 48, metadata !153, null}
!153 = metadata !{i32 786443, metadata !154, i32 15, i32 77, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 786443, metadata !150, i32 15, i32 7, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 17, i32 10, metadata !153, null}
!156 = metadata !{i32 19, i32 7, metadata !150, null}
!157 = metadata !{i32 20, i32 4, metadata !150, null}
!158 = metadata !{i32 13, i32 61, metadata !147, null}
!159 = metadata !{i32 786688, metadata !148, metadata !"k", metadata !4, i32 6, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 21, i32 1, metadata !148, null}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 0, i32 15, metadata !163}
!163 = metadata !{metadata !164}
!164 = metadata !{metadata !"input", metadata !165, metadata !"short", i32 0, i32 15}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 0, i32 63, i32 1}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 0, i32 15, metadata !169}
!169 = metadata !{metadata !170}
!170 = metadata !{metadata !"output", metadata !165, metadata !"short", i32 0, i32 15}
!171 = metadata !{i32 786689, metadata !28, metadata !"input", null, i32 78, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!172 = metadata !{i32 78, i32 16, metadata !28, null}
!173 = metadata !{i32 786689, metadata !28, metadata !"output", null, i32 78, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 78, i32 38, metadata !28, null}
!175 = metadata !{i32 790529, metadata !176, metadata !"buf_2d_in[0]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!176 = metadata !{i32 786688, metadata !177, metadata !"buf_2d_in", metadata !4, i32 81, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 786443, metadata !28, i32 79, i32 1, metadata !4, i32 28} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 81, i32 10, metadata !177, null}
!179 = metadata !{i32 790529, metadata !176, metadata !"buf_2d_in[1]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!180 = metadata !{i32 790529, metadata !176, metadata !"buf_2d_in[2]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!181 = metadata !{i32 790529, metadata !176, metadata !"buf_2d_in[3]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!182 = metadata !{i32 790529, metadata !176, metadata !"buf_2d_in[4]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!183 = metadata !{i32 790529, metadata !176, metadata !"buf_2d_in[5]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!184 = metadata !{i32 790529, metadata !176, metadata !"buf_2d_in[6]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!185 = metadata !{i32 790529, metadata !176, metadata !"buf_2d_in[7]", null, i32 81, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!186 = metadata !{i32 786688, metadata !177, metadata !"buf_2d_out", metadata !4, i32 82, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 82, i32 10, metadata !177, null}
!188 = metadata !{i32 85, i32 4, metadata !177, null}
!189 = metadata !{i32 87, i32 4, metadata !177, null}
!190 = metadata !{i32 786689, metadata !25, metadata !"buf", null, i32 66, metadata !44, i32 0, metadata !191} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 90, i32 4, metadata !177, null}
!192 = metadata !{i32 66, i32 23, metadata !25, metadata !191}
!193 = metadata !{i32 786689, metadata !25, metadata !"output", null, i32 66, metadata !38, i32 0, metadata !191} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 66, i32 116, metadata !25, metadata !191}
!195 = metadata !{i32 71, i32 9, metadata !196, metadata !191}
!196 = metadata !{i32 786443, metadata !197, i32 71, i32 4, metadata !4, i32 24} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 786443, metadata !25, i32 67, i32 1, metadata !4, i32 23} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 71, i32 67, metadata !199, metadata !191}
!199 = metadata !{i32 786443, metadata !196, i32 71, i32 66, metadata !4, i32 25} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 74, i32 1, metadata !201, metadata !191}
!201 = metadata !{i32 786443, metadata !202, i32 74, i32 1, metadata !4, i32 27} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 786443, metadata !199, i32 73, i32 7, metadata !4, i32 26} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 73, i32 12, metadata !202, metadata !191}
!204 = metadata !{i32 74, i32 2, metadata !201, metadata !191}
!205 = metadata !{i32 75, i32 1, metadata !201, metadata !191}
!206 = metadata !{i32 74, i32 67, metadata !201, metadata !191}
!207 = metadata !{i32 73, i32 64, metadata !202, metadata !191}
!208 = metadata !{i32 786688, metadata !197, metadata !"c", metadata !4, i32 68, metadata !68, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 75, i32 4, metadata !199, metadata !191}
!210 = metadata !{i32 71, i32 61, metadata !196, metadata !191}
!211 = metadata !{i32 786688, metadata !197, metadata !"r", metadata !4, i32 68, metadata !68, i32 0, metadata !191} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 91, i32 1, metadata !177, null}
