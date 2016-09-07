; ModuleID = 'C:/training/hls/labs/hls_tool_flow/zc702/dct/dct_prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@dct_coeff_table = internal unnamed_addr constant [8 x [8 x i16]] [[8 x i16] [i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192], [8 x i16] [i16 11363, i16 9633, i16 6436, i16 2260, i16 -2260, i16 -6436, i16 -9632, i16 -11362], [8 x i16] [i16 10703, i16 4433, i16 -4433, i16 -10703, i16 -10703, i16 -4433, i16 4433, i16 10703], [8 x i16] [i16 9633, i16 -2260, i16 -11362, i16 -6436, i16 6436, i16 11363, i16 2260, i16 -9632], [8 x i16] [i16 8192, i16 -8192, i16 -8192, i16 8192, i16 8192, i16 -8191, i16 -8191, i16 8192], [8 x i16] [i16 6436, i16 -11362, i16 2260, i16 9633, i16 -9632, i16 -2260, i16 11363, i16 -6436], [8 x i16] [i16 4433, i16 -10703, i16 10703, i16 -4433, i16 -4433, i16 10703, i16 -10703, i16 4433], [8 x i16] [i16 2260, i16 -6436, i16 9633, i16 -11362, i16 11363, i16 -9632, i16 6436, i16 -2260]], align 16 ; [#uses=1 type=[8 x [8 x i16]]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str6 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str3 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]

; [#uses=1]
define internal fastcc void @write_data([8 x i16]* %buf, i16* %output) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf}, i64 0, metadata !39), !dbg !40 ; [debug line = 66:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i16* %output}, i64 0, metadata !41), !dbg !42 ; [debug line = 66:116] [debug variable = output]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %output, i32 64), !dbg !43 ; [debug line = 67:2]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %buf, i32 8), !dbg !45 ; [debug line = 67:41]
  br label %1, !dbg !46                           ; [debug line = 71:9]

; <label>:1                                       ; preds = %5, %0
  %r = phi i32 [ 0, %0 ], [ %r.1, %5 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %r, 8, !dbg !46        ; [#uses=1 type=i1] [debug line = 71:9]
  br i1 %exitcond1, label %6, label %2, !dbg !46  ; [debug line = 71:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0)), !dbg !48 ; [debug line = 71:67]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !48 ; [#uses=1 type=i32] [debug line = 71:67]
  %tmp = sext i32 %r to i64, !dbg !50             ; [#uses=1 type=i64] [debug line = 74:10]
  %tmp.1 = mul i32 %r, 8, !dbg !50                ; [#uses=1 type=i32] [debug line = 74:10]
  br label %3, !dbg !53                           ; [debug line = 73:12]

; <label>:3                                       ; preds = %4, %2
  %c = phi i32 [ 0, %2 ], [ %c.1, %4 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %c, 8, !dbg !53         ; [#uses=1 type=i1] [debug line = 73:12]
  br i1 %exitcond, label %5, label %4, !dbg !53   ; [debug line = 73:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0)), !dbg !50 ; [debug line = 74:10]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !50 ; [#uses=1 type=i32] [debug line = 74:10]
  %tmp.3 = sext i32 %c to i64, !dbg !50           ; [#uses=1 type=i64] [debug line = 74:10]
  %buf.addr = getelementptr inbounds [8 x i16]* %buf, i64 %tmp, i64 %tmp.3, !dbg !50 ; [#uses=1 type=i16*] [debug line = 74:10]
  %buf.load = load i16* %buf.addr, align 2, !dbg !50 ; [#uses=2 type=i16] [debug line = 74:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %buf.load) nounwind
  %tmp.4 = add nsw i32 %c, %tmp.1, !dbg !50       ; [#uses=1 type=i32] [debug line = 74:10]
  %tmp.5 = sext i32 %tmp.4 to i64, !dbg !50       ; [#uses=1 type=i64] [debug line = 74:10]
  %output.addr = getelementptr inbounds i16* %output, i64 %tmp.5, !dbg !50 ; [#uses=1 type=i16*] [debug line = 74:10]
  store i16 %buf.load, i16* %output.addr, align 2, !dbg !50 ; [debug line = 74:10]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !54 ; [#uses=0 type=i32] [debug line = 74:76]
  %c.1 = add nsw i32 %c, 1, !dbg !55              ; [#uses=1 type=i32] [debug line = 73:64]
  call void @llvm.dbg.value(metadata !{i32 %c.1}, i64 0, metadata !56), !dbg !55 ; [debug line = 73:64] [debug variable = c]
  br label %3, !dbg !55                           ; [debug line = 73:64]

; <label>:5                                       ; preds = %3
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !58 ; [#uses=0 type=i32] [debug line = 75:4]
  %r.1 = add nsw i32 %r, 1, !dbg !59              ; [#uses=1 type=i32] [debug line = 71:61]
  call void @llvm.dbg.value(metadata !{i32 %r.1}, i64 0, metadata !60), !dbg !59 ; [debug line = 71:61] [debug variable = r]
  br label %1, !dbg !59                           ; [debug line = 71:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !61                              ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @read_data(i16* %input, [8 x i16]* %buf) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i16* %input}, i64 0, metadata !62), !dbg !63 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf}, i64 0, metadata !64), !dbg !65 ; [debug line = 54:44] [debug variable = buf]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %input, i32 64), !dbg !66 ; [debug line = 55:2]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %buf, i32 8), !dbg !68 ; [debug line = 55:40]
  br label %1, !dbg !69                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %5, %0
  %r = phi i32 [ 0, %0 ], [ %r.2, %5 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %r, 8, !dbg !69        ; [#uses=1 type=i1] [debug line = 59:9]
  br i1 %exitcond1, label %6, label %2, !dbg !69  ; [debug line = 59:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)), !dbg !71 ; [debug line = 59:67]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !71 ; [#uses=1 type=i32] [debug line = 59:67]
  %tmp = mul i32 %r, 8, !dbg !73                  ; [#uses=1 type=i32] [debug line = 62:10]
  %tmp.7 = sext i32 %r to i64, !dbg !73           ; [#uses=1 type=i64] [debug line = 62:10]
  br label %3, !dbg !76                           ; [debug line = 61:12]

; <label>:3                                       ; preds = %4, %2
  %c = phi i32 [ 0, %2 ], [ %c.2, %4 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %c, 8, !dbg !76         ; [#uses=1 type=i1] [debug line = 61:12]
  br i1 %exitcond, label %5, label %4, !dbg !76   ; [debug line = 61:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)), !dbg !73 ; [debug line = 62:10]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 62:10]
  %tmp.9 = add nsw i32 %c, %tmp, !dbg !73         ; [#uses=1 type=i32] [debug line = 62:10]
  %tmp.10 = sext i32 %tmp.9 to i64, !dbg !73      ; [#uses=1 type=i64] [debug line = 62:10]
  %input.addr = getelementptr inbounds i16* %input, i64 %tmp.10, !dbg !73 ; [#uses=1 type=i16*] [debug line = 62:10]
  %input.load = load i16* %input.addr, align 2, !dbg !73 ; [#uses=2 type=i16] [debug line = 62:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %input.load) nounwind
  %tmp.11 = sext i32 %c to i64, !dbg !73          ; [#uses=1 type=i64] [debug line = 62:10]
  %buf.addr = getelementptr inbounds [8 x i16]* %buf, i64 %tmp.7, i64 %tmp.11, !dbg !73 ; [#uses=1 type=i16*] [debug line = 62:10]
  store i16 %input.load, i16* %buf.addr, align 2, !dbg !73 ; [debug line = 62:10]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 62:75]
  %c.2 = add nsw i32 %c, 1, !dbg !78              ; [#uses=1 type=i32] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i32 %c.2}, i64 0, metadata !79), !dbg !78 ; [debug line = 61:64] [debug variable = c]
  br label %3, !dbg !78                           ; [debug line = 61:64]

; <label>:5                                       ; preds = %3
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !80 ; [#uses=0 type=i32] [debug line = 63:4]
  %r.2 = add nsw i32 %r, 1, !dbg !81              ; [#uses=1 type=i32] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i32 %r.2}, i64 0, metadata !82), !dbg !81 ; [debug line = 59:61] [debug variable = r]
  br label %1, !dbg !81                           ; [debug line = 59:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !83                              ; [debug line = 64:1]
}

; [#uses=24]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([8 x i16]* %in_block, [8 x i16]* %out_block) nounwind uwtable {
  %row_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf = alloca [8 x [8 x i16]], align 16  ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_inbuf = alloca [8 x [8 x i16]], align 16   ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block}, i64 0, metadata !84), !dbg !85 ; [debug line = 23:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %out_block}, i64 0, metadata !86), !dbg !87 ; [debug line = 24:18] [debug variable = out_block]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %out_block, i32 8), !dbg !88 ; [debug line = 25:2]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %in_block, i32 8), !dbg !90 ; [debug line = 25:38]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %col_inbuf}, metadata !91), !dbg !93 ; [debug line = 27:109] [debug variable = col_inbuf]
  br label %1, !dbg !94                           ; [debug line = 32:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %2 ]            ; [#uses=3 type=i32]
  %exitcond5 = icmp eq i32 %i, 8, !dbg !94        ; [#uses=1 type=i1] [debug line = 32:8]
  br i1 %exitcond5, label %.preheader7.preheader, label %2, !dbg !94 ; [debug line = 32:8]

.preheader7.preheader:                            ; preds = %1
  br label %.preheader7, !dbg !96                 ; [debug line = 37:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)), !dbg !98 ; [debug line = 32:66]
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !98 ; [#uses=1 type=i32] [debug line = 32:66]
  %tmp = zext i32 %i to i64, !dbg !100            ; [#uses=2 type=i64] [debug line = 33:7]
  %in_block.addr = getelementptr inbounds [8 x i16]* %in_block, i64 %tmp, i64 0, !dbg !100 ; [#uses=1 type=i16*] [debug line = 33:7]
  %row_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i64 0, i64 %tmp, i64 0, !dbg !100 ; [#uses=1 type=i16*] [debug line = 33:7]
  call fastcc void @dct_1d(i16* %in_block.addr, i16* %row_outbuf.addr), !dbg !100 ; [debug line = 33:7]
  %rend9 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i32 %rbegin8) nounwind, !dbg !101 ; [#uses=0 type=i32] [debug line = 34:4]
  %i.4 = add i32 %i, 1, !dbg !102                 ; [#uses=1 type=i32] [debug line = 32:60]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !103), !dbg !102 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !102                          ; [debug line = 32:60]

.preheader7:                                      ; preds = %6, %.preheader7.preheader
  %j = phi i32 [ %j.2, %6 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i32]
  %exitcond4 = icmp eq i32 %j, 8, !dbg !96        ; [#uses=1 type=i1] [debug line = 37:9]
  br i1 %exitcond4, label %.preheader6.preheader, label %3, !dbg !96 ; [debug line = 37:9]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !105                ; [debug line = 43:9]

; <label>:3                                       ; preds = %.preheader7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0)), !dbg !107 ; [debug line = 38:1]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !107 ; [#uses=1 type=i32] [debug line = 38:1]
  %tmp.14 = zext i32 %j to i64, !dbg !109         ; [#uses=2 type=i64] [debug line = 40:10]
  br label %4, !dbg !112                          ; [debug line = 39:11]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i32 [ 0, %3 ], [ %i.6, %5 ]          ; [#uses=3 type=i32]
  %exitcond3 = icmp eq i32 %i.1, 8, !dbg !112     ; [#uses=1 type=i1] [debug line = 39:11]
  br i1 %exitcond3, label %6, label %5, !dbg !112 ; [debug line = 39:11]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0)), !dbg !109 ; [debug line = 40:10]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !109 ; [#uses=1 type=i32] [debug line = 40:10]
  %tmp.18 = zext i32 %i.1 to i64, !dbg !109       ; [#uses=2 type=i64] [debug line = 40:10]
  %row_outbuf.addr.1 = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i64 0, i64 %tmp.18, i64 %tmp.14, !dbg !109 ; [#uses=1 type=i16*] [debug line = 40:10]
  %row_outbuf.load = load i16* %row_outbuf.addr.1, align 2, !dbg !109 ; [#uses=2 type=i16] [debug line = 40:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %row_outbuf.load) nounwind
  %col_inbuf.addr.1 = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i64 0, i64 %tmp.14, i64 %tmp.18, !dbg !109 ; [#uses=1 type=i16*] [debug line = 40:10]
  store i16 %row_outbuf.load, i16* %col_inbuf.addr.1, align 2, !dbg !109 ; [debug line = 40:10]
  %rend15 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !113 ; [#uses=0 type=i32] [debug line = 40:43]
  %i.6 = add i32 %i.1, 1, !dbg !114               ; [#uses=1 type=i32] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !103), !dbg !114 ; [debug line = 39:63] [debug variable = i]
  br label %4, !dbg !114                          ; [debug line = 39:63]

; <label>:6                                       ; preds = %4
  %rend17 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !115 ; [#uses=0 type=i32] [debug line = 40:43]
  %j.2 = add i32 %j, 1, !dbg !116                 ; [#uses=1 type=i32] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !117), !dbg !116 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader7, !dbg !116                ; [debug line = 37:61]

.preheader6:                                      ; preds = %7, %.preheader6.preheader
  %i.2 = phi i32 [ %i.5, %7 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i.2, 8, !dbg !105     ; [#uses=1 type=i1] [debug line = 43:9]
  br i1 %exitcond2, label %.preheader.preheader, label %7, !dbg !105 ; [debug line = 43:9]

.preheader.preheader:                             ; preds = %.preheader6
  br label %.preheader, !dbg !118                 ; [debug line = 48:9]

; <label>:7                                       ; preds = %.preheader6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0)), !dbg !120 ; [debug line = 43:67]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !120 ; [#uses=1 type=i32] [debug line = 43:67]
  %tmp.15 = zext i32 %i.2 to i64, !dbg !122       ; [#uses=2 type=i64] [debug line = 44:7]
  %col_inbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i64 0, i64 %tmp.15, i64 0, !dbg !122 ; [#uses=1 type=i16*] [debug line = 44:7]
  %col_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i64 0, i64 %tmp.15, i64 0, !dbg !122 ; [#uses=1 type=i16*] [debug line = 44:7]
  call fastcc void @dct_1d(i16* %col_inbuf.addr, i16* %col_outbuf.addr), !dbg !122 ; [debug line = 44:7]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !123 ; [#uses=0 type=i32] [debug line = 45:4]
  %i.5 = add i32 %i.2, 1, !dbg !124               ; [#uses=1 type=i32] [debug line = 43:61]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !103), !dbg !124 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader6, !dbg !124                ; [debug line = 43:61]

.preheader:                                       ; preds = %11, %.preheader.preheader
  %j.1 = phi i32 [ %j.3, %11 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %j.1, 8, !dbg !118     ; [#uses=1 type=i1] [debug line = 48:9]
  br i1 %exitcond1, label %12, label %8, !dbg !118 ; [debug line = 48:9]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0)), !dbg !125 ; [debug line = 49:1]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !125 ; [#uses=1 type=i32] [debug line = 49:1]
  %tmp.20 = zext i32 %j.1 to i64, !dbg !127       ; [#uses=2 type=i64] [debug line = 51:10]
  br label %9, !dbg !130                          ; [debug line = 50:11]

; <label>:9                                       ; preds = %10, %8
  %i.3 = phi i32 [ 0, %8 ], [ %i.7, %10 ]         ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i.3, 8, !dbg !130      ; [#uses=1 type=i1] [debug line = 50:11]
  br i1 %exitcond, label %11, label %10, !dbg !130 ; [debug line = 50:11]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str7, i64 0, i64 0)), !dbg !127 ; [debug line = 51:10]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !127 ; [#uses=1 type=i32] [debug line = 51:10]
  %tmp.22 = zext i32 %i.3 to i64, !dbg !127       ; [#uses=2 type=i64] [debug line = 51:10]
  %col_outbuf.addr.1 = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i64 0, i64 %tmp.22, i64 %tmp.20, !dbg !127 ; [#uses=1 type=i16*] [debug line = 51:10]
  %col_outbuf.load = load i16* %col_outbuf.addr.1, align 2, !dbg !127 ; [#uses=2 type=i16] [debug line = 51:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %col_outbuf.load) nounwind
  %out_block.addr = getelementptr inbounds [8 x i16]* %out_block, i64 %tmp.20, i64 %tmp.22, !dbg !127 ; [#uses=1 type=i16*] [debug line = 51:10]
  store i16 %col_outbuf.load, i16* %out_block.addr, align 2, !dbg !127 ; [debug line = 51:10]
  %rend11 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str7, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !131 ; [#uses=0 type=i32] [debug line = 51:43]
  %i.7 = add i32 %i.3, 1, !dbg !132               ; [#uses=1 type=i32] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !103), !dbg !132 ; [debug line = 50:63] [debug variable = i]
  br label %9, !dbg !132                          ; [debug line = 50:63]

; <label>:11                                      ; preds = %9
  %rend13 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !133 ; [#uses=0 type=i32] [debug line = 51:43]
  %j.3 = add i32 %j.1, 1, !dbg !134               ; [#uses=1 type=i32] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !117), !dbg !134 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !134                 ; [debug line = 48:61]

; <label>:12                                      ; preds = %.preheader
  ret void, !dbg !135                             ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_1d(i16* %src, i16* %dst) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i16* %src}, i64 0, metadata !136), !dbg !137 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i16* %dst}, i64 0, metadata !138), !dbg !139 ; [debug line = 4:81] [debug variable = dst]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %dst, i32 8), !dbg !140 ; [debug line = 5:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %src, i32 8), !dbg !142 ; [debug line = 5:32]
  br label %1, !dbg !143                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %5, %0
  %k = phi i32 [ 0, %0 ], [ %k.1, %5 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %k, 8, !dbg !143       ; [#uses=1 type=i1] [debug line = 13:9]
  br i1 %exitcond1, label %6, label %2, !dbg !143 ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)), !dbg !145 ; [debug line = 13:67]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !145 ; [#uses=1 type=i32] [debug line = 13:67]
  %tmp = zext i32 %k to i64, !dbg !147            ; [#uses=2 type=i64] [debug line = 16:48]
  br label %3, !dbg !150                          ; [debug line = 15:11]

; <label>:3                                       ; preds = %4, %2
  %n = phi i32 [ 0, %2 ], [ %n.1, %4 ]            ; [#uses=3 type=i32]
  %tmp24 = phi i32 [ 0, %2 ], [ %tmp.32, %4 ]     ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %n, 8, !dbg !150        ; [#uses=1 type=i1] [debug line = 15:11]
  br i1 %exitcond, label %5, label %4, !dbg !150  ; [debug line = 15:11]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)), !dbg !151 ; [debug line = 15:78]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !151 ; [#uses=1 type=i32] [debug line = 15:78]
  %tmp.29 = zext i32 %n to i64, !dbg !147         ; [#uses=2 type=i64] [debug line = 16:48]
  %dct_coeff_table.addr = getelementptr inbounds [8 x [8 x i16]]* @dct_coeff_table, i64 0, i64 %tmp, i64 %tmp.29, !dbg !147 ; [#uses=1 type=i16*] [debug line = 16:48]
  %dct_coeff_table.load = load i16* %dct_coeff_table.addr, align 2, !dbg !147 ; [#uses=2 type=i16] [debug line = 16:48]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %dct_coeff_table.load) nounwind
  %coeff = sext i16 %dct_coeff_table.load to i32, !dbg !147 ; [#uses=1 type=i32] [debug line = 16:48]
  call void @llvm.dbg.value(metadata !{i32 %coeff}, i64 0, metadata !152), !dbg !147 ; [debug line = 16:48] [debug variable = coeff]
  %src.addr = getelementptr inbounds i16* %src, i64 %tmp.29, !dbg !153 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.load = load i16* %src.addr, align 2, !dbg !153 ; [#uses=2 type=i16] [debug line = 17:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %src.load) nounwind
  %tmp.30 = sext i16 %src.load to i32, !dbg !153  ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.31 = mul nsw i32 %tmp.30, %coeff, !dbg !153 ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.32 = add nsw i32 %tmp.31, %tmp24, !dbg !153 ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp.32}, i64 0, metadata !154), !dbg !153 ; [debug line = 17:10] [debug variable = tmp]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !155 ; [#uses=0 type=i32] [debug line = 18:7]
  %n.1 = add i32 %n, 1, !dbg !156                 ; [#uses=1 type=i32] [debug line = 15:72]
  call void @llvm.dbg.value(metadata !{i32 %n.1}, i64 0, metadata !157), !dbg !156 ; [debug line = 15:72] [debug variable = n]
  br label %3, !dbg !156                          ; [debug line = 15:72]

; <label>:5                                       ; preds = %3
  %tmp.0.lcssa = phi i32 [ %tmp24, %3 ]           ; [#uses=1 type=i32]
  %tmp.25 = add nsw i32 %tmp.0.lcssa, 4096, !dbg !158 ; [#uses=1 type=i32] [debug line = 19:7]
  %tmp.26 = lshr i32 %tmp.25, 13, !dbg !158       ; [#uses=1 type=i32] [debug line = 19:7]
  %tmp.27 = trunc i32 %tmp.26 to i16, !dbg !158   ; [#uses=1 type=i16] [debug line = 19:7]
  %dst.addr = getelementptr inbounds i16* %dst, i64 %tmp, !dbg !158 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.27, i16* %dst.addr, align 2, !dbg !158 ; [debug line = 19:7]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !159 ; [#uses=0 type=i32] [debug line = 20:4]
  %k.1 = add i32 %k, 1, !dbg !160                 ; [#uses=1 type=i32] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !161), !dbg !160 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !160                          ; [debug line = 13:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !162                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct(i16* %input, i16* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %buf_2d_in = alloca [8 x [8 x i16]], align 16   ; [#uses=1 type=[8 x [8 x i16]]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 16  ; [#uses=1 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{i16* %input}, i64 0, metadata !163), !dbg !164 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i16* %output}, i64 0, metadata !165), !dbg !166 ; [debug line = 78:38] [debug variable = output]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %output, i32 64), !dbg !167 ; [debug line = 79:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %input, i32 64), !dbg !169 ; [debug line = 79:41]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_in}, metadata !170), !dbg !172 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !173), !dbg !174 ; [debug line = 82:10] [debug variable = buf_2d_out]
  %buf_2d_in.addr = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_in, i64 0, i64 0, !dbg !175 ; [#uses=2 type=[8 x i16]*] [debug line = 85:4]
  call fastcc void @read_data(i16* %input, [8 x i16]* %buf_2d_in.addr), !dbg !175 ; [debug line = 85:4]
  %buf_2d_out.addr = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i64 0, i64 0, !dbg !176 ; [#uses=2 type=[8 x i16]*] [debug line = 87:4]
  call fastcc void @dct_2d([8 x i16]* %buf_2d_in.addr, [8 x i16]* %buf_2d_out.addr), !dbg !176 ; [debug line = 87:4]
  call fastcc void @write_data([8 x i16]* %buf_2d_out.addr, i16* %output), !dbg !177 ; [debug line = 90:4]
  ret void, !dbg !178                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=12]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=12]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=12]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=10]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/hls/labs/hls_tool_flow/zc702/dct/dct_prj/solution1/.autopilot/db/dct.pragma.2.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Chls_tool_flow\5Czc702\5Cdct", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !33} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !21, metadata !27, metadata !30}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16*)* @dct_1d, null, null, metadata !12, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"dct.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Chls_tool_flow\5Czc702\5Cdct", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !6, i32 23, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([8 x i16]*, [8 x i16]*)* @dct_2d, null, null, metadata !12, i32 25} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !17, metadata !17}
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !10, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"read_data", metadata !"read_data", metadata !"", metadata !6, i32 54, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, [8 x i16]*)* @read_data, null, null, metadata !12, i32 55} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !25}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !11, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{i32 786478, i32 0, metadata !6, metadata !"write_data", metadata !"write_data", metadata !"", metadata !6, i32 66, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([8 x i16]*, i16*)* @write_data, null, null, metadata !12, i32 67} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !25, metadata !24}
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dct", metadata !"dct", metadata !"", metadata !6, i32 78, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16*)* @dct, null, null, metadata !12, i32 79} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !24, metadata !24}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786484, i32 0, metadata !5, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"", metadata !6, i32 8, metadata !36, i32 1, i32 1, [8 x [8 x i16]]* @dct_coeff_table} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !37, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!38 = metadata !{metadata !20, metadata !20}
!39 = metadata !{i32 786689, metadata !27, metadata !"buf", metadata !6, i32 16777282, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 66, i32 23, metadata !27, null}
!41 = metadata !{i32 786689, metadata !27, metadata !"output", metadata !6, i32 33554498, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 66, i32 116, metadata !27, null}
!43 = metadata !{i32 67, i32 2, metadata !44, null}
!44 = metadata !{i32 786443, metadata !27, i32 67, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 67, i32 41, metadata !44, null}
!46 = metadata !{i32 71, i32 9, metadata !47, null}
!47 = metadata !{i32 786443, metadata !44, i32 71, i32 4, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 71, i32 67, metadata !49, null}
!49 = metadata !{i32 786443, metadata !47, i32 71, i32 66, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 74, i32 10, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 74, i32 10, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !49, i32 73, i32 7, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 73, i32 12, metadata !52, null}
!54 = metadata !{i32 74, i32 76, metadata !51, null}
!55 = metadata !{i32 73, i32 64, metadata !52, null}
!56 = metadata !{i32 786688, metadata !44, metadata !"c", metadata !6, i32 68, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!58 = metadata !{i32 75, i32 4, metadata !49, null}
!59 = metadata !{i32 71, i32 61, metadata !47, null}
!60 = metadata !{i32 786688, metadata !44, metadata !"r", metadata !6, i32 68, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 76, i32 1, metadata !44, null}
!62 = metadata !{i32 786689, metadata !21, metadata !"input", metadata !6, i32 16777270, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 54, i32 22, metadata !21, null}
!64 = metadata !{i32 786689, metadata !21, metadata !"buf", metadata !6, i32 33554486, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 54, i32 44, metadata !21, null}
!66 = metadata !{i32 55, i32 2, metadata !67, null}
!67 = metadata !{i32 786443, metadata !21, i32 55, i32 1, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 55, i32 40, metadata !67, null}
!69 = metadata !{i32 59, i32 9, metadata !70, null}
!70 = metadata !{i32 786443, metadata !67, i32 59, i32 4, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 59, i32 67, metadata !72, null}
!72 = metadata !{i32 786443, metadata !70, i32 59, i32 66, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 62, i32 10, metadata !74, null}
!74 = metadata !{i32 786443, metadata !75, i32 62, i32 10, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !72, i32 61, i32 7, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 61, i32 12, metadata !75, null}
!77 = metadata !{i32 62, i32 75, metadata !74, null}
!78 = metadata !{i32 61, i32 64, metadata !75, null}
!79 = metadata !{i32 786688, metadata !67, metadata !"c", metadata !6, i32 56, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 63, i32 4, metadata !72, null}
!81 = metadata !{i32 59, i32 61, metadata !70, null}
!82 = metadata !{i32 786688, metadata !67, metadata !"r", metadata !6, i32 56, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 64, i32 1, metadata !67, null}
!84 = metadata !{i32 786689, metadata !14, metadata !"in_block", metadata !6, i32 16777239, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 23, i32 24, metadata !14, null}
!86 = metadata !{i32 786689, metadata !14, metadata !"out_block", metadata !6, i32 33554456, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 24, i32 18, metadata !14, null}
!88 = metadata !{i32 25, i32 2, metadata !89, null}
!89 = metadata !{i32 786443, metadata !14, i32 25, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 25, i32 38, metadata !89, null}
!91 = metadata !{i32 786688, metadata !89, metadata !"col_inbuf", metadata !6, i32 27, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !10, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!93 = metadata !{i32 27, i32 109, metadata !89, null}
!94 = metadata !{i32 32, i32 8, metadata !95, null}
!95 = metadata !{i32 786443, metadata !89, i32 32, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 37, i32 9, metadata !97, null}
!97 = metadata !{i32 786443, metadata !89, i32 37, i32 4, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 32, i32 66, metadata !99, null}
!99 = metadata !{i32 786443, metadata !95, i32 32, i32 65, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 33, i32 7, metadata !99, null}
!101 = metadata !{i32 34, i32 4, metadata !99, null}
!102 = metadata !{i32 32, i32 60, metadata !95, null}
!103 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !6, i32 28, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!105 = metadata !{i32 43, i32 9, metadata !106, null}
!106 = metadata !{i32 786443, metadata !89, i32 43, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 38, i32 1, metadata !108, null}
!108 = metadata !{i32 786443, metadata !97, i32 38, i32 1, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 40, i32 10, metadata !110, null}
!110 = metadata !{i32 786443, metadata !111, i32 40, i32 10, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 786443, metadata !108, i32 39, i32 7, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 39, i32 11, metadata !111, null}
!113 = metadata !{i32 40, i32 43, metadata !110, null}
!114 = metadata !{i32 39, i32 63, metadata !111, null}
!115 = metadata !{i32 40, i32 43, metadata !111, null}
!116 = metadata !{i32 37, i32 61, metadata !97, null}
!117 = metadata !{i32 786688, metadata !89, metadata !"j", metadata !6, i32 28, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 48, i32 9, metadata !119, null}
!119 = metadata !{i32 786443, metadata !89, i32 48, i32 4, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 43, i32 67, metadata !121, null}
!121 = metadata !{i32 786443, metadata !106, i32 43, i32 66, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 44, i32 7, metadata !121, null}
!123 = metadata !{i32 45, i32 4, metadata !121, null}
!124 = metadata !{i32 43, i32 61, metadata !106, null}
!125 = metadata !{i32 49, i32 1, metadata !126, null}
!126 = metadata !{i32 786443, metadata !119, i32 49, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 51, i32 10, metadata !128, null}
!128 = metadata !{i32 786443, metadata !129, i32 51, i32 10, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !126, i32 50, i32 7, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 50, i32 11, metadata !129, null}
!131 = metadata !{i32 51, i32 43, metadata !128, null}
!132 = metadata !{i32 50, i32 63, metadata !129, null}
!133 = metadata !{i32 51, i32 43, metadata !129, null}
!134 = metadata !{i32 48, i32 61, metadata !119, null}
!135 = metadata !{i32 52, i32 1, metadata !89, null}
!136 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 4, i32 24, metadata !5, null}
!138 = metadata !{i32 786689, metadata !5, metadata !"dst", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 4, i32 81, metadata !5, null}
!140 = metadata !{i32 5, i32 2, metadata !141, null}
!141 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 5, i32 32, metadata !141, null}
!143 = metadata !{i32 13, i32 9, metadata !144, null}
!144 = metadata !{i32 786443, metadata !141, i32 13, i32 4, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 13, i32 67, metadata !146, null}
!146 = metadata !{i32 786443, metadata !144, i32 13, i32 66, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 16, i32 48, metadata !148, null}
!148 = metadata !{i32 786443, metadata !149, i32 15, i32 77, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !146, i32 15, i32 7, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 15, i32 11, metadata !149, null}
!151 = metadata !{i32 15, i32 78, metadata !148, null}
!152 = metadata !{i32 786688, metadata !148, metadata !"coeff", metadata !6, i32 16, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 17, i32 10, metadata !148, null}
!154 = metadata !{i32 786688, metadata !141, metadata !"tmp", metadata !6, i32 7, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 18, i32 7, metadata !148, null}
!156 = metadata !{i32 15, i32 72, metadata !149, null}
!157 = metadata !{i32 786688, metadata !141, metadata !"n", metadata !6, i32 6, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 19, i32 7, metadata !146, null}
!159 = metadata !{i32 20, i32 4, metadata !146, null}
!160 = metadata !{i32 13, i32 61, metadata !144, null}
!161 = metadata !{i32 786688, metadata !141, metadata !"k", metadata !6, i32 6, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 21, i32 1, metadata !141, null}
!163 = metadata !{i32 786689, metadata !30, metadata !"input", metadata !6, i32 16777294, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 78, i32 16, metadata !30, null}
!165 = metadata !{i32 786689, metadata !30, metadata !"output", metadata !6, i32 33554510, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 78, i32 38, metadata !30, null}
!167 = metadata !{i32 79, i32 2, metadata !168, null}
!168 = metadata !{i32 786443, metadata !30, i32 79, i32 1, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 79, i32 41, metadata !168, null}
!170 = metadata !{i32 786688, metadata !168, metadata !"buf_2d_in", metadata !6, i32 81, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !11, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!172 = metadata !{i32 81, i32 10, metadata !168, null}
!173 = metadata !{i32 786688, metadata !168, metadata !"buf_2d_out", metadata !6, i32 82, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 82, i32 10, metadata !168, null}
!175 = metadata !{i32 85, i32 4, metadata !168, null}
!176 = metadata !{i32 87, i32 4, metadata !168, null}
!177 = metadata !{i32 90, i32 4, metadata !168, null}
!178 = metadata !{i32 91, i32 1, metadata !168, null}
