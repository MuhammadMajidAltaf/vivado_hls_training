; ModuleID = 'C:/training/hls/labs/improve_area/dct_prj/solution7/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table = internal unnamed_addr constant [8 x i127] [i127 42535944912128296218691764462974672896, i127 -58990447664026830905795916450469172125, i127 55573504569212691703635314403542378959, i127 -50012024272023034652441485723554798175, i127 42539839273422690665195578862551965696, i127 -33416722235422479620126768456641144540, i127 23021796304660295749636480429053776209, i127 -11734080920250769989864363945147758380] ; [#uses=2 type=[8 x i127]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str7 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str6 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@.str4 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=6 type=[15 x i8]*]
@.str13 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]

; [#uses=1]
define internal fastcc void @write_data([8 x [8 x i16]]* nocapture %buf, [64 x i16]* nocapture %output) {
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %buf}, i64 0, metadata !12), !dbg !23 ; [debug line = 66:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !24), !dbg !28 ; [debug line = 66:116] [debug variable = output]
  br label %1, !dbg !29                           ; [debug line = 71:9]

; <label>:1                                       ; preds = %8, %0
  %r = phi i4 [ 0, %0 ], [ %r.1, %8 ]             ; [#uses=4 type=i4]
  %r.cast7 = zext i4 %r to i6, !dbg !29           ; [#uses=1 type=i6] [debug line = 71:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !29        ; [#uses=1 type=i1] [debug line = 71:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %10, label %3, !dbg !29 ; [debug line = 71:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str12) nounwind, !dbg !32 ; [debug line = 71:67]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str12), !dbg !32 ; [#uses=1 type=i32] [debug line = 71:67]
  %tmp = zext i4 %r to i64, !dbg !34              ; [#uses=1 type=i64] [debug line = 74:1]
  %tmp.1 = shl i6 %r.cast7, 3, !dbg !34           ; [#uses=1 type=i6] [debug line = 74:1]
  br label %4, !dbg !37                           ; [debug line = 73:12]

; <label>:4                                       ; preds = %6, %3
  %c = phi i4 [ 0, %3 ], [ %c.1, %6 ]             ; [#uses=4 type=i4]
  %c.cast6 = zext i4 %c to i6, !dbg !37           ; [#uses=1 type=i6] [debug line = 73:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !37         ; [#uses=1 type=i1] [debug line = 73:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %6, !dbg !37   ; [debug line = 73:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str13) nounwind, !dbg !38 ; [debug line = 74:2]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str13), !dbg !38 ; [#uses=1 type=i32] [debug line = 74:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !39 ; [debug line = 75:1]
  %tmp.3 = zext i4 %c to i64, !dbg !34            ; [#uses=1 type=i64] [debug line = 74:1]
  %buf.addr = getelementptr [8 x [8 x i16]]* %buf, i64 0, i64 %tmp, i64 %tmp.3, !dbg !34 ; [#uses=1 type=i16*] [debug line = 74:1]
  %buf.load = load i16* %buf.addr, align 2, !dbg !34 ; [#uses=1 type=i16] [debug line = 74:1]
  %tmp.4 = add i6 %c.cast6, %tmp.1, !dbg !34      ; [#uses=1 type=i6] [debug line = 74:1]
  %tmp.5 = zext i6 %tmp.4 to i64, !dbg !34        ; [#uses=1 type=i64] [debug line = 74:1]
  %output.addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp.5, !dbg !34 ; [#uses=1 type=i16*] [debug line = 74:1]
  store i16 %buf.load, i16* %output.addr, align 2, !dbg !34 ; [debug line = 74:1]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str13, i32 %tmp.6), !dbg !40 ; [#uses=0 type=i32] [debug line = 74:67]
  %c.1 = add i4 %c, 1, !dbg !41                   ; [#uses=1 type=i4] [debug line = 73:64]
  call void @llvm.dbg.value(metadata !{i4 %c.1}, i64 0, metadata !42), !dbg !41 ; [debug line = 73:64] [debug variable = c]
  br label %4, !dbg !41                           ; [debug line = 73:64]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str12, i32 %tmp.2), !dbg !44 ; [#uses=0 type=i32] [debug line = 75:4]
  %r.1 = add i4 %r, 1, !dbg !45                   ; [#uses=1 type=i4] [debug line = 71:61]
  call void @llvm.dbg.value(metadata !{i4 %r.1}, i64 0, metadata !46), !dbg !45 ; [debug line = 71:61] [debug variable = r]
  br label %1, !dbg !45                           ; [debug line = 71:61]

; <label>:10                                      ; preds = %1
  ret void, !dbg !47                              ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @read_data([64 x i16]* nocapture %input, [8 x i128]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !48), !dbg !52 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i128]* %buf}, i64 0, metadata !53), !dbg !54 ; [debug line = 54:44] [debug variable = buf]
  br label %1, !dbg !55                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %8, %0
  %r = phi i4 [ 0, %0 ], [ %r.2, %8 ]             ; [#uses=4 type=i4]
  %r.cast3 = zext i4 %r to i6, !dbg !55           ; [#uses=1 type=i6] [debug line = 59:9]
  %exitcond1 = icmp eq i4 %r, -8, !dbg !55        ; [#uses=1 type=i1] [debug line = 59:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %10, label %3, !dbg !55 ; [debug line = 59:9]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !58 ; [debug line = 59:67]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10), !dbg !58 ; [#uses=1 type=i32] [debug line = 59:67]
  %tmp = shl i6 %r.cast3, 3, !dbg !60             ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp.7 = zext i4 %r to i64, !dbg !60            ; [#uses=1 type=i64] [debug line = 62:1]
  %buf.addr = getelementptr [8 x i128]* %buf, i64 0, i64 %tmp.7, !dbg !60 ; [#uses=2 type=i128*] [debug line = 62:1]
  br label %4, !dbg !63                           ; [debug line = 61:12]

; <label>:4                                       ; preds = %6, %3
  %c = phi i4 [ 0, %3 ], [ %c.2, %6 ]             ; [#uses=4 type=i4]
  %c.cast2 = zext i4 %c to i6, !dbg !63           ; [#uses=1 type=i6] [debug line = 61:12]
  %exitcond = icmp eq i4 %c, -8, !dbg !63         ; [#uses=1 type=i1] [debug line = 61:12]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %6, !dbg !63   ; [debug line = 61:12]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str11) nounwind, !dbg !64 ; [debug line = 62:2]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str11), !dbg !64 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !65 ; [debug line = 63:1]
  %tmp.9 = add i6 %c.cast2, %tmp, !dbg !60        ; [#uses=1 type=i6] [debug line = 62:1]
  %tmp. = zext i6 %tmp.9 to i64, !dbg !60         ; [#uses=1 type=i64] [debug line = 62:1]
  %input.addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp., !dbg !60 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input.load = load i16* %input.addr, align 2, !dbg !60 ; [#uses=1 type=i16] [debug line = 62:1]
  %buf.load = load i128* %buf.addr, align 8, !dbg !60 ; [#uses=1 type=i128] [debug line = 62:1]
  %tmp.12.cast = zext i4 %c to i7, !dbg !60       ; [#uses=1 type=i7] [debug line = 62:1]
  %tmp.2 = shl i7 %tmp.12.cast, 4, !dbg !60       ; [#uses=2 type=i7] [debug line = 62:1]
  %tmp.13.cast = zext i7 %tmp.2 to i9, !dbg !60   ; [#uses=1 type=i9] [debug line = 62:1]
  %tmp.3 = or i7 %tmp.2, 15                       ; [#uses=1 type=i7]
  %tmp.14.cast = zext i7 %tmp.3 to i9             ; [#uses=1 type=i9]
  %tmp.4 = call i128 @_ssdm_op_PartSet.i128.i128.i16.i9.i9(i128 %buf.load, i16 %input.load, i9 %tmp.13.cast, i9 %tmp.14.cast), !dbg !60 ; [#uses=1 type=i128] [debug line = 62:1]
  store i128 %tmp.4, i128* %buf.addr, align 8, !dbg !60 ; [debug line = 62:1]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str11, i32 %tmp.1), !dbg !66 ; [#uses=0 type=i32] [debug line = 62:66]
  %c.2 = add i4 %c, 1, !dbg !67                   ; [#uses=1 type=i4] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i4 %c.2}, i64 0, metadata !68), !dbg !67 ; [debug line = 61:64] [debug variable = c]
  br label %4, !dbg !67                           ; [debug line = 61:64]

; <label>:8                                       ; preds = %4
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.8), !dbg !69 ; [#uses=0 type=i32] [debug line = 63:4]
  %r.2 = add i4 %r, 1, !dbg !70                   ; [#uses=1 type=i4] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i4 %r.2}, i64 0, metadata !71), !dbg !70 ; [debug line = 59:61] [debug variable = r]
  br label %1, !dbg !70                           ; [debug line = 59:61]

; <label>:10                                      ; preds = %1
  ret void, !dbg !72                              ; [debug line = 64:1]
}

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str1) nounwind, !dbg !73 ; [debug line = 80:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !78
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !84
  %row_outbuf.i = alloca [8 x [8 x i16]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf.i = alloca [8 x [8 x i16]], align 16 ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_inbuf = alloca [8 x i128], align 8         ; [#uses=2 type=[8 x i128]*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %buf_2d_in = alloca [8 x i128], align 8         ; [#uses=2 type=[8 x i128]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !88), !dbg !89 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !90), !dbg !91 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[8 x i128]* %col_inbuf}, metadata !92) nounwind, !dbg !100 ; [debug line = 27:109@87:4] [debug variable = col_inbuf]
  call void @llvm.dbg.declare(metadata !{[8 x i128]* %buf_2d_in}, metadata !102), !dbg !103 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !104), !dbg !105 ; [debug line = 82:10] [debug variable = buf_2d_out]
  call fastcc void @read_data([64 x i16]* %input, [8 x i128]* %buf_2d_in) nounwind
  call fastcc void @Loop_Row_DCT_Loop_proc([8 x i128]* %buf_2d_in, [8 x [8 x i16]]* %row_outbuf.i)
  call fastcc void @Loop_Xpose_Row_Outer_Loop_proc([8 x [8 x i16]]* %row_outbuf.i, [8 x i128]* %col_inbuf)
  call fastcc void @Loop_Col_DCT_Loop_proc([8 x i128]* %col_inbuf, [8 x [8 x i16]]* %col_outbuf.i)
  call fastcc void @Loop_Xpose_Col_Outer_Loop_proc([8 x [8 x i16]]* %col_outbuf.i, [8 x [8 x i16]]* %buf_2d_out)
  call fastcc void @write_data([8 x [8 x i16]]* %buf_2d_out, [64 x i16]* %output) nounwind, !dbg !106 ; [debug line = 90:4]
  ret void, !dbg !107                             ; [debug line = 91:1]
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

; [#uses=2]
declare i128 @_ssdm_op_PartSet.i128.i128.i16.i9.i9(i128, i16, i9, i9) nounwind readnone

; [#uses=16]
declare i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128, i9, i9) nounwind readnone

; [#uses=14]
declare i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127, i32, i32) nounwind readnone

; [#uses=2]
declare i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127, i32, i32) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=1]
define internal fastcc void @Loop_Xpose_Row_Outer_Loop_proc([8 x [8 x i16]]* nocapture %row_outbuf.i, [8 x i128]* nocapture %col_inbuf) nounwind {
newFuncRoot:
  br label %.preheader7.i

.preheader6.i.exitStub:                           ; preds = %.preheader7.i
  ret void

.preheader7.i:                                    ; preds = %1, %newFuncRoot
  %j.0.i = phi i4 [ %j, %1 ], [ 0, %newFuncRoot ] ; [#uses=3 type=i4]
  %exitcond4.i = icmp eq i4 %j.0.i, -8, !dbg !108 ; [#uses=1 type=i1] [debug line = 37:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond4.i, label %.preheader6.i.exitStub, label %5, !dbg !108 ; [debug line = 37:9@87:4]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str5, i32 %tmp.1) nounwind, !dbg !110 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %j = add i4 %j.0.i, 1, !dbg !113                ; [#uses=1 type=i4] [debug line = 37:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !114) nounwind, !dbg !113 ; [debug line = 37:61@87:4] [debug variable = j]
  br label %.preheader7.i, !dbg !113              ; [debug line = 37:61@87:4]

; <label>:3                                       ; preds = %6, %5
  %i.1.i = phi i4 [ 0, %5 ], [ %i, %6 ]           ; [#uses=4 type=i4]
  %exitcond3.i = icmp eq i4 %i.1.i, -8, !dbg !116 ; [#uses=1 type=i1] [debug line = 39:11@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3.i, label %1, label %6, !dbg !116 ; [debug line = 39:11@87:4]

; <label>:5                                       ; preds = %.preheader7.i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str5) nounwind, !dbg !117 ; [debug line = 38:1@87:4]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str5) nounwind, !dbg !117 ; [#uses=1 type=i32] [debug line = 38:1@87:4]
  %tmp. = zext i4 %j.0.i to i64, !dbg !118        ; [#uses=2 type=i64] [debug line = 40:1@87:4]
  %col_inbuf.addr = getelementptr [8 x i128]* %col_inbuf, i64 0, i64 %tmp., !dbg !118 ; [#uses=2 type=i128*] [debug line = 40:1@87:4]
  br label %3, !dbg !116                          ; [debug line = 39:11@87:4]

; <label>:6                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str6) nounwind, !dbg !120 ; [debug line = 40:2@87:4]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str6) nounwind, !dbg !120 ; [#uses=1 type=i32] [debug line = 40:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !121 ; [debug line = 41:1@87:4]
  %tmp.9 = zext i4 %i.1.i to i64, !dbg !118       ; [#uses=1 type=i64] [debug line = 40:1@87:4]
  %row_outbuf.i.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf.i, i64 0, i64 %tmp.9, i64 %tmp., !dbg !118 ; [#uses=1 type=i16*] [debug line = 40:1@87:4]
  %row_outbuf.i.load = load i16* %row_outbuf.i.addr, align 2, !dbg !118 ; [#uses=1 type=i16] [debug line = 40:1@87:4]
  %col_inbuf.load = load i128* %col_inbuf.addr, align 8, !dbg !118 ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  %tmp.47.cast = zext i4 %i.1.i to i7, !dbg !118  ; [#uses=1 type=i7] [debug line = 40:1@87:4]
  %tmp.3 = shl i7 %tmp.47.cast, 4, !dbg !118      ; [#uses=2 type=i7] [debug line = 40:1@87:4]
  %tmp.48.cast = zext i7 %tmp.3 to i9, !dbg !118  ; [#uses=1 type=i9] [debug line = 40:1@87:4]
  %tmp.4 = or i7 %tmp.3, 15                       ; [#uses=1 type=i7]
  %tmp.49.cast = zext i7 %tmp.4 to i9             ; [#uses=1 type=i9]
  %tmp.5 = call i128 @_ssdm_op_PartSet.i128.i128.i16.i9.i9(i128 %col_inbuf.load, i16 %row_outbuf.i.load, i9 %tmp.48.cast, i9 %tmp.49.cast), !dbg !118 ; [#uses=1 type=i128] [debug line = 40:1@87:4]
  store i128 %tmp.5, i128* %col_inbuf.addr, align 8, !dbg !118 ; [debug line = 40:1@87:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str6, i32 %tmp.2) nounwind, !dbg !122 ; [#uses=0 type=i32] [debug line = 40:34@87:4]
  %i = add i4 %i.1.i, 1, !dbg !123                ; [#uses=1 type=i4] [debug line = 39:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !124) nounwind, !dbg !123 ; [debug line = 39:63@87:4] [debug variable = i]
  br label %3, !dbg !123                          ; [debug line = 39:63@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Xpose_Col_Outer_Loop_proc([8 x [8 x i16]]* nocapture %col_outbuf.i, [8 x [8 x i16]]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %.preheader.i

dct_2d.exit.exitStub:                             ; preds = %.preheader.i
  ret void

.preheader.i:                                     ; preds = %1, %newFuncRoot
  %j.1.i = phi i4 [ %j, %1 ], [ 0, %newFuncRoot ] ; [#uses=3 type=i4]
  %exitcond1.i = icmp eq i4 %j.1.i, -8, !dbg !125 ; [#uses=1 type=i1] [debug line = 48:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %dct_2d.exit.exitStub, label %5, !dbg !125 ; [debug line = 48:9@87:4]

; <label>:1                                       ; preds = %3
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str8, i32 %tmp.) nounwind, !dbg !127 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %j = add i4 %j.1.i, 1, !dbg !130                ; [#uses=1 type=i4] [debug line = 48:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !114) nounwind, !dbg !130 ; [debug line = 48:61@87:4] [debug variable = j]
  br label %.preheader.i, !dbg !130               ; [debug line = 48:61@87:4]

; <label>:3                                       ; preds = %6, %5
  %i.3.i = phi i4 [ 0, %5 ], [ %i, %6 ]           ; [#uses=3 type=i4]
  %exitcond.i = icmp eq i4 %i.3.i, -8, !dbg !131  ; [#uses=1 type=i1] [debug line = 50:11@87:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %1, label %6, !dbg !131 ; [debug line = 50:11@87:4]

; <label>:5                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str8) nounwind, !dbg !132 ; [debug line = 49:1@87:4]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str8) nounwind, !dbg !132 ; [#uses=1 type=i32] [debug line = 49:1@87:4]
  %tmp.1 = zext i4 %j.1.i to i64, !dbg !133       ; [#uses=2 type=i64] [debug line = 51:1@87:4]
  br label %3, !dbg !131                          ; [debug line = 50:11@87:4]

; <label>:6                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @.str9) nounwind, !dbg !135 ; [debug line = 51:2@87:4]
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @.str9) nounwind, !dbg !135 ; [#uses=1 type=i32] [debug line = 51:2@87:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !136 ; [debug line = 52:1@87:4]
  %tmp.2 = zext i4 %i.3.i to i64, !dbg !133       ; [#uses=2 type=i64] [debug line = 51:1@87:4]
  %col_outbuf.i.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf.i, i64 0, i64 %tmp.2, i64 %tmp.1, !dbg !133 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  %col_outbuf.i.load = load i16* %col_outbuf.i.addr, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 51:1@87:4]
  %buf_2d_out.addr = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 %tmp.1, i64 %tmp.2, !dbg !133 ; [#uses=1 type=i16*] [debug line = 51:1@87:4]
  store i16 %col_outbuf.i.load, i16* %buf_2d_out.addr, align 2, !dbg !133 ; [debug line = 51:1@87:4]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @.str9, i32 %tmp.6) nounwind, !dbg !137 ; [#uses=0 type=i32] [debug line = 51:34@87:4]
  %i = add i4 %i.3.i, 1, !dbg !138                ; [#uses=1 type=i4] [debug line = 50:63@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !124) nounwind, !dbg !138 ; [debug line = 50:63@87:4] [debug variable = i]
  br label %3, !dbg !138                          ; [debug line = 50:63@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Row_DCT_Loop_proc([8 x i128]* nocapture %buf_2d_in, [8 x [8 x i16]]* nocapture %row_outbuf.i) nounwind {
newFuncRoot:
  br label %0, !dbg !139                          ; [debug line = 32:8@87:4]

.preheader7.i.exitStub:                           ; preds = %0
  ret void

; <label>:0                                       ; preds = %dct_1d.exit, %newFuncRoot
  %i.0.i = phi i4 [ 0, %newFuncRoot ], [ %i, %dct_1d.exit ] ; [#uses=6 type=i4]
  %exitcond5.i = icmp eq i4 %i.0.i, -8, !dbg !139 ; [#uses=1 type=i1] [debug line = 32:8@87:4]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond5.i, label %.preheader7.i.exitStub, label %2, !dbg !139 ; [debug line = 32:8@87:4]

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str4) nounwind, !dbg !141 ; [debug line = 32:66@87:4]
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.0.i) nounwind, !hlsrange !143
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.0.i) nounwind, !hlsrange !143
  %tmp.81.cast.i = zext i4 %i.0.i to i64          ; [#uses=1 type=i64]
  %tmp.8.cast.i = zext i4 %i.0.i to i64           ; [#uses=1 type=i64]
  call void @llvm.dbg.value(metadata !{[8 x i128]* %buf_2d_in}, i64 0, metadata !144) nounwind, !dbg !150 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %row_outbuf.i}, i64 0, metadata !151) nounwind, !dbg !152 ; [debug line = 4:81] [debug variable = dst]
  %buf_2d_in.addr = getelementptr [8 x i128]* %buf_2d_in, i64 0, i64 %tmp.8.cast.i, !dbg !153 ; [#uses=1 type=i128*] [debug line = 17:10]
  br label %3, !dbg !159                          ; [debug line = 13:9]

; <label>:3                                       ; preds = %5, %2
  %k.i = phi i4 [ 0, %2 ], [ %k, %5 ]             ; [#uses=3 type=i4]
  %exitcond1.i = icmp eq i4 %k.i, -8, !dbg !159   ; [#uses=1 type=i1] [debug line = 13:9]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %dct_1d.exit, label %5, !dbg !159 ; [debug line = 13:9]

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str2) nounwind, !dbg !160 ; [debug line = 13:67]
  %tmp.5.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str2) nounwind, !dbg !160 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !161 ; [debug line = 14:1]
  %tmp.i = zext i4 %k.i to i64, !dbg !162         ; [#uses=2 type=i64] [debug line = 16:48]
  %dct_coeff_table.addr = getelementptr [8 x i127]* @dct_coeff_table, i64 0, i64 %tmp.i, !dbg !162 ; [#uses=1 type=i127*] [debug line = 16:48]
  %dct_coeff_table.load = load i127* %dct_coeff_table.addr, align 16, !dbg !162 ; [#uses=8 type=i127] [debug line = 16:48]
  %tmp.7.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 0, i32 15) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.cast.i = sext i16 %tmp.7.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %buf_2d_in.load = load i128* %buf_2d_in.addr, align 8, !dbg !153 ; [#uses=8 type=i128] [debug line = 17:10]
  %tmp.9.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 0, i9 15) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.cast.i = sext i16 %tmp.9.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.i = mul i29 %tmp.5.cast.i, %coeff.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 16, i32 31) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.1.cast.i = sext i16 %tmp.10.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.11.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 16, i9 31) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.1.cast.i = sext i16 %tmp.11.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.1.i = mul i29 %tmp.5.1.cast.i, %coeff.1.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.12.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 32, i32 47) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.2.cast.i = sext i16 %tmp.12.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.13.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 32, i9 47) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.2.cast.i = sext i16 %tmp.13.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.2.i = mul i29 %tmp.5.2.cast.i, %coeff.2.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.14.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 48, i32 63) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.3.cast.i = sext i16 %tmp.14.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.15.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 48, i9 63) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.3.cast.i = sext i16 %tmp.15.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.3.i = mul i29 %tmp.5.3.cast.i, %coeff.3.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.16.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 64, i32 79) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.4.cast.i = sext i16 %tmp.16.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.17.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 64, i9 79) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.4.cast.i = sext i16 %tmp.17.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.4.i = mul i29 %tmp.5.4.cast.i, %coeff.4.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 80, i32 95) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.5.cast.i = sext i16 %tmp.18.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.19.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 80, i9 95) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.5.cast.i = sext i16 %tmp.19.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.5.i = mul i29 %tmp.5.5.cast.i, %coeff.5.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.20.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 96, i32 111) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.6.cast.i = sext i16 %tmp.20.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.21.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 96, i9 111) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.6.cast.i = sext i16 %tmp.21.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.6.i = mul i29 %tmp.5.6.cast.i, %coeff.6.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.1 = call i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127 %dct_coeff_table.load, i32 112, i32 126) nounwind, !dbg !162 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.7.cast.i = sext i15 %tmp.1 to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.23.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %buf_2d_in.load, i9 112, i9 127) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.7.cast.i = sext i16 %tmp.23.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.7.i = mul i29 %coeff.7.cast.i, %tmp.5.7.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp1 = add i29 %tmp.6.1.i, %tmp.6.i, !dbg !163 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp2 = add i29 %tmp.6.3.i, %tmp.6.2.i, !dbg !163 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp = add i29 %tmp1, %tmp2, !dbg !163          ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp.6.5.i, %tmp.6.4.i, !dbg !163 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 %tmp.6.7.i, 4096, !dbg !163     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp.6.6.i, %tmp6, !dbg !163    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp4, %tmp5, !dbg !163         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp..i = add i29 %tmp, %tmp3, !dbg !163        ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.2.i = lshr i29 %tmp..i, 13, !dbg !163      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.3.i = trunc i29 %tmp.2.i to i16, !dbg !163 ; [#uses=1 type=i16] [debug line = 19:7]
  %row_outbuf.i.addr = getelementptr [8 x [8 x i16]]* %row_outbuf.i, i64 0, i64 %tmp.81.cast.i, i64 %tmp.i, !dbg !163 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.3.i, i16* %row_outbuf.i.addr, align 2, !dbg !163 ; [debug line = 19:7]
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str2, i32 %tmp.5.i) nounwind, !dbg !164 ; [#uses=0 type=i32] [debug line = 20:4]
  %k = add i4 %k.i, 1, !dbg !165                  ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !166) nounwind, !dbg !165 ; [debug line = 13:61] [debug variable = k]
  br label %3, !dbg !165                          ; [debug line = 13:61]

dct_1d.exit:                                      ; preds = %3
  %i = add i4 %i.0.i, 1, !dbg !167                ; [#uses=1 type=i4] [debug line = 32:60@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !124) nounwind, !dbg !167 ; [debug line = 32:60@87:4] [debug variable = i]
  br label %0, !dbg !167                          ; [debug line = 32:60@87:4]
}

; [#uses=1]
define internal fastcc void @Loop_Col_DCT_Loop_proc([8 x i128]* nocapture %col_inbuf, [8 x [8 x i16]]* nocapture %col_outbuf.i) nounwind {
newFuncRoot:
  br label %.preheader6.i

.preheader.i.exitStub:                            ; preds = %.preheader6.i
  ret void

.preheader6.i:                                    ; preds = %dct_1d.exit, %newFuncRoot
  %i.2.i = phi i4 [ %i, %dct_1d.exit ], [ 0, %newFuncRoot ] ; [#uses=6 type=i4]
  %exitcond2.i = icmp eq i4 %i.2.i, -8, !dbg !168 ; [#uses=1 type=i1] [debug line = 43:9@87:4]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2.i, label %.preheader.i.exitStub, label %1, !dbg !168 ; [debug line = 43:9@87:4]

; <label>:1                                       ; preds = %.preheader6.i
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str7) nounwind, !dbg !170 ; [debug line = 43:67@87:4]
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.2.i) nounwind, !hlsrange !143
  call void (...)* @_ssdm_SpecKeepAssert(i4 %i.2.i) nounwind, !hlsrange !143
  %tmp.81.cast.i = zext i4 %i.2.i to i64          ; [#uses=1 type=i64]
  %tmp.8.cast.i = zext i4 %i.2.i to i64           ; [#uses=1 type=i64]
  call void @llvm.dbg.value(metadata !{[8 x i128]* %col_inbuf}, i64 0, metadata !144) nounwind, !dbg !150 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[8 x [8 x i16]]* %col_outbuf.i}, i64 0, metadata !151) nounwind, !dbg !152 ; [debug line = 4:81] [debug variable = dst]
  %col_inbuf.addr = getelementptr [8 x i128]* %col_inbuf, i64 0, i64 %tmp.8.cast.i, !dbg !153 ; [#uses=1 type=i128*] [debug line = 17:10]
  br label %2, !dbg !159                          ; [debug line = 13:9]

; <label>:2                                       ; preds = %4, %1
  %k.i = phi i4 [ 0, %1 ], [ %k, %4 ]             ; [#uses=3 type=i4]
  %exitcond1.i = icmp eq i4 %k.i, -8, !dbg !159   ; [#uses=1 type=i1] [debug line = 13:9]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %dct_1d.exit, label %4, !dbg !159 ; [debug line = 13:9]

; <label>:4                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str2) nounwind, !dbg !160 ; [debug line = 13:67]
  %tmp.5.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str2) nounwind, !dbg !160 ; [#uses=1 type=i32] [debug line = 13:67]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !161 ; [debug line = 14:1]
  %tmp.i = zext i4 %k.i to i64, !dbg !162         ; [#uses=2 type=i64] [debug line = 16:48]
  %dct_coeff_table.addr = getelementptr [8 x i127]* @dct_coeff_table, i64 0, i64 %tmp.i, !dbg !162 ; [#uses=1 type=i127*] [debug line = 16:48]
  %dct_coeff_table.load = load i127* %dct_coeff_table.addr, align 16, !dbg !162 ; [#uses=8 type=i127] [debug line = 16:48]
  %tmp.7.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 0, i32 15) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.cast.i = sext i16 %tmp.7.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %col_inbuf.load = load i128* %col_inbuf.addr, align 8, !dbg !153 ; [#uses=8 type=i128] [debug line = 17:10]
  %tmp.9.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 0, i9 15) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.cast.i = sext i16 %tmp.9.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.i = mul i29 %tmp.5.cast.i, %coeff.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.10.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 16, i32 31) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.1.cast.i = sext i16 %tmp.10.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.11.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 16, i9 31) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.1.cast.i = sext i16 %tmp.11.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.1.i = mul i29 %tmp.5.1.cast.i, %coeff.1.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.12.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 32, i32 47) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.2.cast.i = sext i16 %tmp.12.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.13.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 32, i9 47) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.2.cast.i = sext i16 %tmp.13.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.2.i = mul i29 %tmp.5.2.cast.i, %coeff.2.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.14.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 48, i32 63) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.3.cast.i = sext i16 %tmp.14.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.15.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 48, i9 63) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.3.cast.i = sext i16 %tmp.15.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.3.i = mul i29 %tmp.5.3.cast.i, %coeff.3.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.16.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 64, i32 79) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.4.cast.i = sext i16 %tmp.16.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.17.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 64, i9 79) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.4.cast.i = sext i16 %tmp.17.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.4.i = mul i29 %tmp.5.4.cast.i, %coeff.4.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.18.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 80, i32 95) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.5.cast.i = sext i16 %tmp.18.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.19.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 80, i9 95) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.5.cast.i = sext i16 %tmp.19.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.5.i = mul i29 %tmp.5.5.cast.i, %coeff.5.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.20.i = call i16 @_ssdm_op_PartSelect.i16.i127.i32.i32(i127 %dct_coeff_table.load, i32 96, i32 111) nounwind, !dbg !162 ; [#uses=1 type=i16] [debug line = 16:48]
  %coeff.6.cast.i = sext i16 %tmp.20.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.21.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 96, i9 111) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.6.cast.i = sext i16 %tmp.21.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.6.i = mul i29 %tmp.5.6.cast.i, %coeff.6.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.2 = call i15 @_ssdm_op_PartSelect.i15.i127.i32.i32(i127 %dct_coeff_table.load, i32 112, i32 126) nounwind, !dbg !162 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff.7.cast.i = sext i15 %tmp.2 to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.23.i = call i16 @_ssdm_op_PartSelect.i16.i128.i9.i9(i128 %col_inbuf.load, i9 112, i9 127) nounwind, !dbg !153 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp.5.7.cast.i = sext i16 %tmp.23.i to i29, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp.6.7.i = mul i29 %coeff.7.cast.i, %tmp.5.7.cast.i, !dbg !153 ; [#uses=1 type=i29] [debug line = 17:10]
  %tmp1 = add i29 %tmp.6.1.i, %tmp.6.i, !dbg !163 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp2 = add i29 %tmp.6.3.i, %tmp.6.2.i, !dbg !163 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp = add i29 %tmp1, %tmp2, !dbg !163          ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp4 = add i29 %tmp.6.5.i, %tmp.6.4.i, !dbg !163 ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp6 = add i29 %tmp.6.7.i, 4096, !dbg !163     ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp5 = add i29 %tmp.6.6.i, %tmp6, !dbg !163    ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp3 = add i29 %tmp4, %tmp5, !dbg !163         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp..i = add i29 %tmp, %tmp3, !dbg !163        ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.2.i = lshr i29 %tmp..i, 13, !dbg !163      ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp.3.i = trunc i29 %tmp.2.i to i16, !dbg !163 ; [#uses=1 type=i16] [debug line = 19:7]
  %col_outbuf.i.addr = getelementptr [8 x [8 x i16]]* %col_outbuf.i, i64 0, i64 %tmp.81.cast.i, i64 %tmp.i, !dbg !163 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.3.i, i16* %col_outbuf.i.addr, align 2, !dbg !163 ; [debug line = 19:7]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str2, i32 %tmp.5.i) nounwind, !dbg !164 ; [#uses=0 type=i32] [debug line = 20:4]
  %k = add i4 %k.i, 1, !dbg !165                  ; [#uses=1 type=i4] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !166) nounwind, !dbg !165 ; [debug line = 13:61] [debug variable = k]
  br label %2, !dbg !165                          ; [debug line = 13:61]

dct_1d.exit:                                      ; preds = %2
  %i = add i4 %i.2.i, 1, !dbg !172                ; [#uses=1 type=i4] [debug line = 43:61@87:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !124) nounwind, !dbg !172 ; [debug line = 43:61@87:4] [debug variable = i]
  br label %.preheader6.i, !dbg !172              ; [debug line = 43:61@87:4]
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/hls/labs/improve_area/dct_prj/solution7/.autopilot/db/dct.pragma.2.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_area", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !11}
!3 = metadata !{i32 786484, i32 0, null, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !4, i32 8, metadata !5, i32 1, i32 1, [8 x i127]* @dct_coeff_table} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786473, metadata !"dct.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_area", null} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !6, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!6 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_const_type ]
!7 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !4, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!8 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!9 = metadata !{metadata !10, metadata !10}
!10 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!11 = metadata !{i32 786484, i32 0, null, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !4, i32 8, metadata !5, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!12 = metadata !{i32 786689, metadata !13, metadata !"buf", null, i32 66, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 786478, i32 0, metadata !4, metadata !"write_data", metadata !"write_data", metadata !"", metadata !4, i32 66, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 67} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16, metadata !19}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !8, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ]
!18 = metadata !{metadata !10}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !8, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{i32 66, i32 23, metadata !13, null}
!24 = metadata !{i32 786689, metadata !13, metadata !"output", null, i32 66, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !8, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!28 = metadata !{i32 66, i32 116, metadata !13, null}
!29 = metadata !{i32 71, i32 9, metadata !30, null}
!30 = metadata !{i32 786443, metadata !31, i32 71, i32 4, metadata !4, i32 24} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 786443, metadata !13, i32 67, i32 1, metadata !4, i32 23} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 71, i32 67, metadata !33, null}
!33 = metadata !{i32 786443, metadata !30, i32 71, i32 66, metadata !4, i32 25} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 74, i32 1, metadata !35, null}
!35 = metadata !{i32 786443, metadata !36, i32 74, i32 1, metadata !4, i32 27} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 786443, metadata !33, i32 73, i32 7, metadata !4, i32 26} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 73, i32 12, metadata !36, null}
!38 = metadata !{i32 74, i32 2, metadata !35, null}
!39 = metadata !{i32 75, i32 1, metadata !35, null}
!40 = metadata !{i32 74, i32 67, metadata !35, null}
!41 = metadata !{i32 73, i32 64, metadata !36, null}
!42 = metadata !{i32 786688, metadata !31, metadata !"c", metadata !4, i32 68, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!44 = metadata !{i32 75, i32 4, metadata !33, null}
!45 = metadata !{i32 71, i32 61, metadata !30, null}
!46 = metadata !{i32 786688, metadata !31, metadata !"r", metadata !4, i32 68, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 76, i32 1, metadata !31, null}
!48 = metadata !{i32 786689, metadata !49, metadata !"input", null, i32 54, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 786478, i32 0, metadata !4, metadata !"read_data", metadata !"read_data", metadata !"", metadata !4, i32 54, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 55} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !19, metadata !16}
!52 = metadata !{i32 54, i32 22, metadata !49, null}
!53 = metadata !{i32 786689, metadata !49, metadata !"buf", null, i32 54, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 54, i32 44, metadata !49, null}
!55 = metadata !{i32 59, i32 9, metadata !56, null}
!56 = metadata !{i32 786443, metadata !57, i32 59, i32 4, metadata !4, i32 19} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786443, metadata !49, i32 55, i32 1, metadata !4, i32 18} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 59, i32 67, metadata !59, null}
!59 = metadata !{i32 786443, metadata !56, i32 59, i32 66, metadata !4, i32 20} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 62, i32 1, metadata !61, null}
!61 = metadata !{i32 786443, metadata !62, i32 62, i32 1, metadata !4, i32 22} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786443, metadata !59, i32 61, i32 7, metadata !4, i32 21} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 61, i32 12, metadata !62, null}
!64 = metadata !{i32 62, i32 2, metadata !61, null}
!65 = metadata !{i32 63, i32 1, metadata !61, null}
!66 = metadata !{i32 62, i32 66, metadata !61, null}
!67 = metadata !{i32 61, i32 64, metadata !62, null}
!68 = metadata !{i32 786688, metadata !57, metadata !"c", metadata !4, i32 56, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 63, i32 4, metadata !59, null}
!70 = metadata !{i32 59, i32 61, metadata !56, null}
!71 = metadata !{i32 786688, metadata !57, metadata !"r", metadata !4, i32 56, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 64, i32 1, metadata !57, null}
!73 = metadata !{i32 80, i32 1, metadata !74, null}
!74 = metadata !{i32 786443, metadata !75, i32 79, i32 1, metadata !4, i32 28} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786478, i32 0, metadata !4, metadata !"dct", metadata !"dct", metadata !"", metadata !4, i32 78, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 79} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !19, metadata !19}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 15, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"input", metadata !82, metadata !"short", i32 0, i32 15}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 63, i32 1}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 15, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"output", metadata !82, metadata !"short", i32 0, i32 15}
!88 = metadata !{i32 786689, metadata !75, metadata !"input", null, i32 78, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 78, i32 16, metadata !75, null}
!90 = metadata !{i32 786689, metadata !75, metadata !"output", null, i32 78, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 78, i32 38, metadata !75, null}
!92 = metadata !{i32 786688, metadata !93, metadata !"col_inbuf", metadata !4, i32 27, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 786443, metadata !94, i32 25, i32 1, metadata !4, i32 5} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786478, i32 0, metadata !4, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !4, i32 23, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 25} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{null, metadata !97, metadata !97}
!97 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ]
!98 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !7, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ]
!99 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !7, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!100 = metadata !{i32 27, i32 109, metadata !93, metadata !101}
!101 = metadata !{i32 87, i32 4, metadata !74, null}
!102 = metadata !{i32 786688, metadata !74, metadata !"buf_2d_in", metadata !4, i32 81, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 81, i32 10, metadata !74, null}
!104 = metadata !{i32 786688, metadata !74, metadata !"buf_2d_out", metadata !4, i32 82, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 82, i32 10, metadata !74, null}
!106 = metadata !{i32 90, i32 4, metadata !74, null}
!107 = metadata !{i32 91, i32 1, metadata !74, null}
!108 = metadata !{i32 37, i32 9, metadata !109, metadata !101}
!109 = metadata !{i32 786443, metadata !93, i32 37, i32 4, metadata !4, i32 8} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 40, i32 34, metadata !111, metadata !101}
!111 = metadata !{i32 786443, metadata !112, i32 39, i32 7, metadata !4, i32 10} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 786443, metadata !109, i32 38, i32 1, metadata !4, i32 9} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 37, i32 61, metadata !109, metadata !101}
!114 = metadata !{i32 786688, metadata !93, metadata !"j", metadata !4, i32 28, metadata !115, i32 0, metadata !101} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 39, i32 11, metadata !111, metadata !101}
!117 = metadata !{i32 38, i32 1, metadata !112, metadata !101}
!118 = metadata !{i32 40, i32 1, metadata !119, metadata !101}
!119 = metadata !{i32 786443, metadata !111, i32 40, i32 1, metadata !4, i32 11} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 40, i32 2, metadata !119, metadata !101}
!121 = metadata !{i32 41, i32 1, metadata !119, metadata !101}
!122 = metadata !{i32 40, i32 34, metadata !119, metadata !101}
!123 = metadata !{i32 39, i32 63, metadata !111, metadata !101}
!124 = metadata !{i32 786688, metadata !93, metadata !"i", metadata !4, i32 28, metadata !115, i32 0, metadata !101} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 48, i32 9, metadata !126, metadata !101}
!126 = metadata !{i32 786443, metadata !93, i32 48, i32 4, metadata !4, i32 14} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 51, i32 34, metadata !128, metadata !101}
!128 = metadata !{i32 786443, metadata !129, i32 50, i32 7, metadata !4, i32 16} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !126, i32 49, i32 1, metadata !4, i32 15} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 48, i32 61, metadata !126, metadata !101}
!131 = metadata !{i32 50, i32 11, metadata !128, metadata !101}
!132 = metadata !{i32 49, i32 1, metadata !129, metadata !101}
!133 = metadata !{i32 51, i32 1, metadata !134, metadata !101}
!134 = metadata !{i32 786443, metadata !128, i32 51, i32 1, metadata !4, i32 17} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 51, i32 2, metadata !134, metadata !101}
!136 = metadata !{i32 52, i32 1, metadata !134, metadata !101}
!137 = metadata !{i32 51, i32 34, metadata !134, metadata !101}
!138 = metadata !{i32 50, i32 63, metadata !128, metadata !101}
!139 = metadata !{i32 32, i32 8, metadata !140, metadata !101}
!140 = metadata !{i32 786443, metadata !93, i32 32, i32 4, metadata !4, i32 6} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 32, i32 66, metadata !142, metadata !101}
!142 = metadata !{i32 786443, metadata !140, i32 32, i32 65, metadata !4, i32 7} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i4 0, i4 7, i4 0, i4 7}         
!144 = metadata !{i32 786689, metadata !145, metadata !"src", null, i32 4, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 786478, i32 0, metadata !4, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !4, i32 4, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 5} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{null, metadata !148, metadata !148}
!148 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!149 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !7, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ]
!150 = metadata !{i32 4, i32 24, metadata !145, null}
!151 = metadata !{i32 786689, metadata !145, metadata !"dst", null, i32 4, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 4, i32 81, metadata !145, null}
!153 = metadata !{i32 17, i32 10, metadata !154, null}
!154 = metadata !{i32 786443, metadata !155, i32 15, i32 77, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786443, metadata !156, i32 15, i32 7, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 786443, metadata !157, i32 13, i32 66, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 786443, metadata !158, i32 13, i32 4, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !145, i32 5, i32 1, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 13, i32 9, metadata !157, null}
!160 = metadata !{i32 13, i32 67, metadata !156, null}
!161 = metadata !{i32 14, i32 1, metadata !156, null}
!162 = metadata !{i32 16, i32 48, metadata !154, null}
!163 = metadata !{i32 19, i32 7, metadata !156, null}
!164 = metadata !{i32 20, i32 4, metadata !156, null}
!165 = metadata !{i32 13, i32 61, metadata !157, null}
!166 = metadata !{i32 786688, metadata !158, metadata !"k", metadata !4, i32 6, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 32, i32 60, metadata !140, metadata !101}
!168 = metadata !{i32 43, i32 9, metadata !169, metadata !101}
!169 = metadata !{i32 786443, metadata !93, i32 43, i32 4, metadata !4, i32 12} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 43, i32 67, metadata !171, metadata !101}
!171 = metadata !{i32 786443, metadata !169, i32 43, i32 66, metadata !4, i32 13} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 43, i32 61, metadata !169, metadata !101}
