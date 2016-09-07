; ModuleID = 'C:/training/hls/labs/array_interfaces/array_io_prj/solution4/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@array_io_str = internal unnamed_addr constant [9 x i8] c"array_io\00" ; [#uses=1 type=[9 x i8]*]
@acc_7 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_6 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_5 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_4 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_3 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_2 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_1 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc_0 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=4 type=[1 x i8]*]

; [#uses=64]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @array_io(i16* %d_o_0, i16* %d_o_1, i16* %d_o_2, i16* %d_o_3, i16* %d_o_4, i16* %d_o_5, i16* %d_o_6, i16* %d_o_7, i16* %d_o_8, i16* %d_o_9, i16* %d_o_10, i16* %d_o_11, i16* %d_o_12, i16* %d_o_13, i16* %d_o_14, i16* %d_o_15, i16* %d_o_16, i16* %d_o_17, i16* %d_o_18, i16* %d_o_19, i16* %d_o_20, i16* %d_o_21, i16* %d_o_22, i16* %d_o_23, i16* %d_o_24, i16* %d_o_25, i16* %d_o_26, i16* %d_o_27, i16* %d_o_28, i16* %d_o_29, i16* %d_o_30, i16* %d_o_31, i16* %d_i_0, i16* %d_i_1, i16* %d_i_2, i16* %d_i_3, i16* %d_i_4, i16* %d_i_5, i16* %d_i_6, i16* %d_i_7, i16* %d_i_8, i16* %d_i_9, i16* %d_i_10, i16* %d_i_11, i16* %d_i_12, i16* %d_i_13, i16* %d_i_14, i16* %d_i_15, i16* %d_i_16, i16* %d_i_17, i16* %d_i_18, i16* %d_i_19, i16* %d_i_20, i16* %d_i_21, i16* %d_i_22, i16* %d_i_23, i16* %d_i_24, i16* %d_i_25, i16* %d_i_26, i16* %d_i_27, i16* %d_i_28, i16* %d_i_29, i16* %d_i_30, i16* %d_i_31) {
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_31), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_30), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_29), !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_28), !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_27), !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_26), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_25), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_24), !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_23), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_22), !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_21), !map !60
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_20), !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_19), !map !72
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_18), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_17), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_16), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_15), !map !96
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_14), !map !102
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_13), !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_12), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_11), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_10), !map !126
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_9), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_8), !map !138
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_7), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_6), !map !150
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_5), !map !156
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_4), !map !162
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_3), !map !168
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_2), !map !174
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_1), !map !180
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_0), !map !186
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_31), !map !192
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_30), !map !196
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_29), !map !200
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_28), !map !204
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_27), !map !208
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_26), !map !212
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_25), !map !216
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_24), !map !220
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_23), !map !224
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_22), !map !228
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_21), !map !232
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_20), !map !236
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_19), !map !240
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_18), !map !244
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_17), !map !248
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_16), !map !252
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_15), !map !256
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_14), !map !260
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_13), !map !264
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_12), !map !268
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_11), !map !272
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_10), !map !276
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_9), !map !280
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_8), !map !284
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_7), !map !288
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_6), !map !292
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_5), !map !296
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_4), !map !300
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_3), !map !304
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_2), !map !308
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_1), !map !312
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_i_0), !map !316
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @array_io_str) nounwind
  call void @llvm.dbg.value(metadata !{i16* %d_o_0}, i64 0, metadata !320), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[0]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_1}, i64 0, metadata !337), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[1]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_2}, i64 0, metadata !338), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[2]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_3}, i64 0, metadata !339), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[3]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_4}, i64 0, metadata !340), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[4]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_5}, i64 0, metadata !341), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[5]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_6}, i64 0, metadata !342), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[6]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_7}, i64 0, metadata !343), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[7]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_8}, i64 0, metadata !344), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[8]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_9}, i64 0, metadata !345), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[9]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_10}, i64 0, metadata !346), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[10]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_11}, i64 0, metadata !347), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[11]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_12}, i64 0, metadata !348), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[12]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_13}, i64 0, metadata !349), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[13]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_14}, i64 0, metadata !350), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[14]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_15}, i64 0, metadata !351), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[15]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_16}, i64 0, metadata !352), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[16]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_17}, i64 0, metadata !353), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[17]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_18}, i64 0, metadata !354), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[18]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_19}, i64 0, metadata !355), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[19]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_20}, i64 0, metadata !356), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[20]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_21}, i64 0, metadata !357), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[21]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_22}, i64 0, metadata !358), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[22]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_23}, i64 0, metadata !359), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[23]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_24}, i64 0, metadata !360), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[24]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_25}, i64 0, metadata !361), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[25]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_26}, i64 0, metadata !362), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[26]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_27}, i64 0, metadata !363), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[27]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_28}, i64 0, metadata !364), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[28]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_29}, i64 0, metadata !365), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[29]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_30}, i64 0, metadata !366), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[30]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_31}, i64 0, metadata !367), !dbg !336 ; [debug line = 57:23] [debug variable = d_o[31]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_0}, i64 0, metadata !368), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[0]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_1}, i64 0, metadata !372), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[1]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_2}, i64 0, metadata !373), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[2]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_3}, i64 0, metadata !374), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[3]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_4}, i64 0, metadata !375), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[4]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_5}, i64 0, metadata !376), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[5]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_6}, i64 0, metadata !377), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[6]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_7}, i64 0, metadata !378), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[7]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_8}, i64 0, metadata !379), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[8]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_9}, i64 0, metadata !380), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[9]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_10}, i64 0, metadata !381), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[10]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_11}, i64 0, metadata !382), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[11]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_12}, i64 0, metadata !383), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[12]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_13}, i64 0, metadata !384), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[13]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_14}, i64 0, metadata !385), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[14]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_15}, i64 0, metadata !386), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[15]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_16}, i64 0, metadata !387), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[16]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_17}, i64 0, metadata !388), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[17]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_18}, i64 0, metadata !389), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[18]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_19}, i64 0, metadata !390), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[19]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_20}, i64 0, metadata !391), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[20]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_21}, i64 0, metadata !392), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[21]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_22}, i64 0, metadata !393), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[22]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_23}, i64 0, metadata !394), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[23]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_24}, i64 0, metadata !395), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[24]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_25}, i64 0, metadata !396), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[25]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_26}, i64 0, metadata !397), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[26]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_27}, i64 0, metadata !398), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[27]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_28}, i64 0, metadata !399), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[28]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_29}, i64 0, metadata !400), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[29]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_30}, i64 0, metadata !401), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[30]]
  call void @llvm.dbg.value(metadata !{i16* %d_i_31}, i64 0, metadata !402), !dbg !371 ; [debug line = 57:41] [debug variable = d_i[31]]
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_0, i16* %d_o_1, i16* %d_o_2, i16* %d_o_3, i16* %d_o_4, i16* %d_o_5, i16* %d_o_6, i16* %d_o_7, i16* %d_o_8, i16* %d_o_9, i16* %d_o_10, i16* %d_o_11, i16* %d_o_12, i16* %d_o_13, i16* %d_o_14, i16* %d_o_15, i16* %d_o_16, i16* %d_o_17, i16* %d_o_18, i16* %d_o_19, i16* %d_o_20, i16* %d_o_21, i16* %d_o_22, i16* %d_o_23, i16* %d_o_24, i16* %d_o_25, i16* %d_o_26, i16* %d_o_27, i16* %d_o_28, i16* %d_o_29, i16* %d_o_30, i16* %d_o_31, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %acc_0_load = load i32* @acc_0, align 4, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_0_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_0), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2 = sext i16 %d_i_0_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_0_loc_assign_2 = add nsw i32 %acc_0_load, %tmp_2, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp = trunc i32 %acc_0_loc_assign_2 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_0, i16 %tmp), !dbg !407 ; [debug line = 69:3]
  %acc_1_load = load i32* @acc_1, align 4, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_1_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_1), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_1 = sext i16 %d_i_1_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_1_loc_assign_2 = add nsw i32 %acc_1_load, %tmp_2_1, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_1 = trunc i32 %acc_1_loc_assign_2 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_1, i16 %tmp_1), !dbg !407 ; [debug line = 69:3]
  %acc_2_load = load i32* @acc_2, align 4, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_2_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_2), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_2 = sext i16 %d_i_2_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_2_loc_assign_2 = add nsw i32 %acc_2_load, %tmp_2_2, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_3 = trunc i32 %acc_2_loc_assign_2 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_2, i16 %tmp_3), !dbg !407 ; [debug line = 69:3]
  %acc_3_load = load i32* @acc_3, align 4, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_3_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_3), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_3 = sext i16 %d_i_3_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_3_loc_assign_2 = add nsw i32 %acc_3_load, %tmp_2_3, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_4 = trunc i32 %acc_3_loc_assign_2 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_3, i16 %tmp_4), !dbg !407 ; [debug line = 69:3]
  %acc_4_load = load i32* @acc_4, align 4, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_4_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_4), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_4 = sext i16 %d_i_4_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_4_loc_assign_2 = add nsw i32 %acc_4_load, %tmp_2_4, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_5 = trunc i32 %acc_4_loc_assign_2 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_4, i16 %tmp_5), !dbg !407 ; [debug line = 69:3]
  %acc_5_load = load i32* @acc_5, align 4, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_5_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_5), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_5 = sext i16 %d_i_5_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_5_loc_assign_2 = add nsw i32 %acc_5_load, %tmp_2_5, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_6 = trunc i32 %acc_5_loc_assign_2 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_5, i16 %tmp_6), !dbg !407 ; [debug line = 69:3]
  %acc_6_load = load i32* @acc_6, align 4, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_6_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_6), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_6 = sext i16 %d_i_6_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_6_loc_assign_2 = add nsw i32 %acc_6_load, %tmp_2_6, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_7 = trunc i32 %acc_6_loc_assign_2 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_6, i16 %tmp_7), !dbg !407 ; [debug line = 69:3]
  %acc_7_load = load i32* @acc_7, align 4, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_7_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_7), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_7 = sext i16 %d_i_7_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_7_loc_assign_2 = add nsw i32 %acc_7_load, %tmp_2_7, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_8 = trunc i32 %acc_7_loc_assign_2 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_7, i16 %tmp_8), !dbg !407 ; [debug line = 69:3]
  %d_i_8_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_8), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_8 = sext i16 %d_i_8_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_0_loc_assign_1 = add nsw i32 %acc_0_loc_assign_2, %tmp_2_8, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_9 = trunc i32 %acc_0_loc_assign_1 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_8, i16 %tmp_9), !dbg !407 ; [debug line = 69:3]
  %d_i_9_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_9), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_9 = sext i16 %d_i_9_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_1_loc_assign_1 = add nsw i32 %acc_1_loc_assign_2, %tmp_2_9, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_10 = trunc i32 %acc_1_loc_assign_1 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_9, i16 %tmp_10), !dbg !407 ; [debug line = 69:3]
  %d_i_10_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_10), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_s = sext i16 %d_i_10_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_2_loc_assign_1 = add nsw i32 %acc_2_loc_assign_2, %tmp_2_s, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_11 = trunc i32 %acc_2_loc_assign_1 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_10, i16 %tmp_11), !dbg !407 ; [debug line = 69:3]
  %d_i_11_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_11), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_10 = sext i16 %d_i_11_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_3_loc_assign_1 = add nsw i32 %acc_3_loc_assign_2, %tmp_2_10, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_12 = trunc i32 %acc_3_loc_assign_1 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_11, i16 %tmp_12), !dbg !407 ; [debug line = 69:3]
  %d_i_12_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_12), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_11 = sext i16 %d_i_12_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_4_loc_assign_1 = add nsw i32 %acc_4_loc_assign_2, %tmp_2_11, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_13 = trunc i32 %acc_4_loc_assign_1 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_12, i16 %tmp_13), !dbg !407 ; [debug line = 69:3]
  %d_i_13_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_13), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_12 = sext i16 %d_i_13_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_5_loc_assign_1 = add nsw i32 %acc_5_loc_assign_2, %tmp_2_12, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_14 = trunc i32 %acc_5_loc_assign_1 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_13, i16 %tmp_14), !dbg !407 ; [debug line = 69:3]
  %d_i_14_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_14), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_13 = sext i16 %d_i_14_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_6_loc_assign_1 = add nsw i32 %acc_6_loc_assign_2, %tmp_2_13, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_15 = trunc i32 %acc_6_loc_assign_1 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_14, i16 %tmp_15), !dbg !407 ; [debug line = 69:3]
  %d_i_15_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_15), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_14 = sext i16 %d_i_15_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_7_loc_assign_1 = add nsw i32 %acc_7_loc_assign_2, %tmp_2_14, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_16 = trunc i32 %acc_7_loc_assign_1 to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_15, i16 %tmp_16), !dbg !407 ; [debug line = 69:3]
  %d_i_16_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_16), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_15 = sext i16 %d_i_16_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_0_loc = add nsw i32 %acc_0_loc_assign_1, %tmp_2_15, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_17 = trunc i32 %acc_0_loc to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_16, i16 %tmp_17), !dbg !407 ; [debug line = 69:3]
  %d_i_17_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_17), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_16 = sext i16 %d_i_17_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_1_loc = add nsw i32 %acc_1_loc_assign_1, %tmp_2_16, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_18 = trunc i32 %acc_1_loc to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_17, i16 %tmp_18), !dbg !407 ; [debug line = 69:3]
  %d_i_18_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_18), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_17 = sext i16 %d_i_18_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_2_loc = add nsw i32 %acc_2_loc_assign_1, %tmp_2_17, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_19 = trunc i32 %acc_2_loc to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_18, i16 %tmp_19), !dbg !407 ; [debug line = 69:3]
  %d_i_19_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_19), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_18 = sext i16 %d_i_19_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_3_loc = add nsw i32 %acc_3_loc_assign_1, %tmp_2_18, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_20 = trunc i32 %acc_3_loc to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_19, i16 %tmp_20), !dbg !407 ; [debug line = 69:3]
  %d_i_20_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_20), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_19 = sext i16 %d_i_20_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_4_loc = add nsw i32 %acc_4_loc_assign_1, %tmp_2_19, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_21 = trunc i32 %acc_4_loc to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_20, i16 %tmp_21), !dbg !407 ; [debug line = 69:3]
  %d_i_21_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_21), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_20 = sext i16 %d_i_21_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_5_loc = add nsw i32 %acc_5_loc_assign_1, %tmp_2_20, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_22 = trunc i32 %acc_5_loc to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_21, i16 %tmp_22), !dbg !407 ; [debug line = 69:3]
  %d_i_22_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_22), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_21 = sext i16 %d_i_22_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_6_loc = add nsw i32 %acc_6_loc_assign_1, %tmp_2_21, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_23 = trunc i32 %acc_6_loc to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_22, i16 %tmp_23), !dbg !407 ; [debug line = 69:3]
  %d_i_23_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_23), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_22 = sext i16 %d_i_23_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_7_loc = add nsw i32 %acc_7_loc_assign_1, %tmp_2_22, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_24 = trunc i32 %acc_7_loc to i16, !dbg !407 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_23, i16 %tmp_24), !dbg !407 ; [debug line = 69:3]
  %d_i_24_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_24), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_23 = sext i16 %d_i_24_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_s = add nsw i32 %acc_0_loc, %tmp_2_23, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_s, i32* @acc_0, align 16, !dbg !408 ; [debug line = 68:3]
  %tmp_25 = trunc i32 %temp_s to i16, !dbg !407   ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_24, i16 %tmp_25), !dbg !407 ; [debug line = 69:3]
  %d_i_25_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_25), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_24 = sext i16 %d_i_25_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_1 = add nsw i32 %acc_1_loc, %tmp_2_24, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_1, i32* @acc_1, align 4, !dbg !408 ; [debug line = 68:3]
  %tmp_26 = trunc i32 %temp_1 to i16, !dbg !407   ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_25, i16 %tmp_26), !dbg !407 ; [debug line = 69:3]
  %d_i_26_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_26), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_25 = sext i16 %d_i_26_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_2 = add nsw i32 %acc_2_loc, %tmp_2_25, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_2, i32* @acc_2, align 8, !dbg !408 ; [debug line = 68:3]
  %tmp_27 = trunc i32 %temp_2 to i16, !dbg !407   ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_26, i16 %tmp_27), !dbg !407 ; [debug line = 69:3]
  %d_i_27_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_27), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_26 = sext i16 %d_i_27_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_3 = add nsw i32 %acc_3_loc, %tmp_2_26, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_3, i32* @acc_3, align 4, !dbg !408 ; [debug line = 68:3]
  %tmp_28 = trunc i32 %temp_3 to i16, !dbg !407   ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_27, i16 %tmp_28), !dbg !407 ; [debug line = 69:3]
  %d_i_28_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_28), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_27 = sext i16 %d_i_28_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_4 = add nsw i32 %acc_4_loc, %tmp_2_27, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_4, i32* @acc_4, align 16, !dbg !408 ; [debug line = 68:3]
  %tmp_29 = trunc i32 %temp_4 to i16, !dbg !407   ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_28, i16 %tmp_29), !dbg !407 ; [debug line = 69:3]
  %d_i_29_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_29), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_28 = sext i16 %d_i_29_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_5 = add nsw i32 %acc_5_loc, %tmp_2_28, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_5, i32* @acc_5, align 4, !dbg !408 ; [debug line = 68:3]
  %tmp_30 = trunc i32 %temp_5 to i16, !dbg !407   ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_29, i16 %tmp_30), !dbg !407 ; [debug line = 69:3]
  %d_i_30_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_30), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_29 = sext i16 %d_i_30_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_6 = add nsw i32 %acc_6_loc, %tmp_2_29, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_6, i32* @acc_6, align 8, !dbg !408 ; [debug line = 68:3]
  %tmp_31 = trunc i32 %temp_6 to i16, !dbg !407   ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_30, i16 %tmp_31), !dbg !407 ; [debug line = 69:3]
  %d_i_31_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_31), !dbg !403 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_30 = sext i16 %d_i_31_read to i32, !dbg !403 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_7 = add nsw i32 %acc_7_loc, %tmp_2_30, !dbg !403 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_7, i32* @acc_7, align 4, !dbg !408 ; [debug line = 68:3]
  %tmp_32 = trunc i32 %temp_7 to i16, !dbg !407   ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_31, i16 %tmp_32), !dbg !407 ; [debug line = 69:3]
  ret void, !dbg !409                             ; [debug line = 71:1]
}

; [#uses=32]
define weak void @_ssdm_op_Write.ap_fifo.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1) ; [#uses=0 type=i16]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=64]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=32]
define weak i16 @_ssdm_op_Read.ap_auto.i16P(i16*) {
entry:
  %empty = load i16* %0                           ; [#uses=1 type=i16]
  ret i16 %empty
}

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i16 @_autotb_FifoWrite_i16(i16*, i16)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 15, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"d_o", metadata !4, metadata !"short", i32 0, i32 15}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 31, i32 31, i32 2}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 15, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"d_o", metadata !10, metadata !"short", i32 0, i32 15}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 30, i32 30, i32 2}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 15, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"d_o", metadata !16, metadata !"short", i32 0, i32 15}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 29, i32 29, i32 2}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 15, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"d_o", metadata !22, metadata !"short", i32 0, i32 15}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 28, i32 28, i32 2}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 15, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"d_o", metadata !28, metadata !"short", i32 0, i32 15}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 27, i32 27, i32 2}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 15, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"d_o", metadata !34, metadata !"short", i32 0, i32 15}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 26, i32 26, i32 2}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 15, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"d_o", metadata !40, metadata !"short", i32 0, i32 15}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 25, i32 25, i32 2}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 15, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"d_o", metadata !46, metadata !"short", i32 0, i32 15}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 24, i32 24, i32 2}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 15, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"d_o", metadata !52, metadata !"short", i32 0, i32 15}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 23, i32 23, i32 2}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 15, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"d_o", metadata !58, metadata !"short", i32 0, i32 15}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 22, i32 22, i32 2}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 15, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"d_o", metadata !64, metadata !"short", i32 0, i32 15}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 21, i32 21, i32 2}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 15, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"d_o", metadata !70, metadata !"short", i32 0, i32 15}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 20, i32 20, i32 2}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 15, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"d_o", metadata !76, metadata !"short", i32 0, i32 15}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 19, i32 19, i32 2}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 15, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"d_o", metadata !82, metadata !"short", i32 0, i32 15}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 18, i32 18, i32 2}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 15, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"d_o", metadata !88, metadata !"short", i32 0, i32 15}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 17, i32 17, i32 2}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 15, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"d_o", metadata !94, metadata !"short", i32 0, i32 15}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 16, i32 16, i32 2}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 0, i32 15, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"d_o", metadata !100, metadata !"short", i32 0, i32 15}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 15, i32 15, i32 2}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 15, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"d_o", metadata !106, metadata !"short", i32 0, i32 15}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 14, i32 14, i32 2}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 15, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"d_o", metadata !112, metadata !"short", i32 0, i32 15}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 13, i32 13, i32 2}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 15, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"d_o", metadata !118, metadata !"short", i32 0, i32 15}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 12, i32 12, i32 2}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 15, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"d_o", metadata !124, metadata !"short", i32 0, i32 15}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 11, i32 11, i32 2}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 15, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"d_o", metadata !130, metadata !"short", i32 0, i32 15}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 10, i32 10, i32 2}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 15, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"d_o", metadata !136, metadata !"short", i32 0, i32 15}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 9, i32 9, i32 2}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 15, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"d_o", metadata !142, metadata !"short", i32 0, i32 15}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 8, i32 8, i32 2}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 15, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"d_o", metadata !148, metadata !"short", i32 0, i32 15}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 7, i32 7, i32 2}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 0, i32 15, metadata !152}
!152 = metadata !{metadata !153}
!153 = metadata !{metadata !"d_o", metadata !154, metadata !"short", i32 0, i32 15}
!154 = metadata !{metadata !155}
!155 = metadata !{i32 6, i32 6, i32 2}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 15, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"d_o", metadata !160, metadata !"short", i32 0, i32 15}
!160 = metadata !{metadata !161}
!161 = metadata !{i32 5, i32 5, i32 2}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 0, i32 15, metadata !164}
!164 = metadata !{metadata !165}
!165 = metadata !{metadata !"d_o", metadata !166, metadata !"short", i32 0, i32 15}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 4, i32 4, i32 2}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 0, i32 15, metadata !170}
!170 = metadata !{metadata !171}
!171 = metadata !{metadata !"d_o", metadata !172, metadata !"short", i32 0, i32 15}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 3, i32 3, i32 2}
!174 = metadata !{metadata !175}
!175 = metadata !{i32 0, i32 15, metadata !176}
!176 = metadata !{metadata !177}
!177 = metadata !{metadata !"d_o", metadata !178, metadata !"short", i32 0, i32 15}
!178 = metadata !{metadata !179}
!179 = metadata !{i32 2, i32 2, i32 2}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 15, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"d_o", metadata !184, metadata !"short", i32 0, i32 15}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 1, i32 1, i32 2}
!186 = metadata !{metadata !187}
!187 = metadata !{i32 0, i32 15, metadata !188}
!188 = metadata !{metadata !189}
!189 = metadata !{metadata !"d_o", metadata !190, metadata !"short", i32 0, i32 15}
!190 = metadata !{metadata !191}
!191 = metadata !{i32 0, i32 0, i32 2}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 0, i32 15, metadata !194}
!194 = metadata !{metadata !195}
!195 = metadata !{metadata !"d_i", metadata !4, metadata !"short", i32 0, i32 15}
!196 = metadata !{metadata !197}
!197 = metadata !{i32 0, i32 15, metadata !198}
!198 = metadata !{metadata !199}
!199 = metadata !{metadata !"d_i", metadata !10, metadata !"short", i32 0, i32 15}
!200 = metadata !{metadata !201}
!201 = metadata !{i32 0, i32 15, metadata !202}
!202 = metadata !{metadata !203}
!203 = metadata !{metadata !"d_i", metadata !16, metadata !"short", i32 0, i32 15}
!204 = metadata !{metadata !205}
!205 = metadata !{i32 0, i32 15, metadata !206}
!206 = metadata !{metadata !207}
!207 = metadata !{metadata !"d_i", metadata !22, metadata !"short", i32 0, i32 15}
!208 = metadata !{metadata !209}
!209 = metadata !{i32 0, i32 15, metadata !210}
!210 = metadata !{metadata !211}
!211 = metadata !{metadata !"d_i", metadata !28, metadata !"short", i32 0, i32 15}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 15, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"d_i", metadata !34, metadata !"short", i32 0, i32 15}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 0, i32 15, metadata !218}
!218 = metadata !{metadata !219}
!219 = metadata !{metadata !"d_i", metadata !40, metadata !"short", i32 0, i32 15}
!220 = metadata !{metadata !221}
!221 = metadata !{i32 0, i32 15, metadata !222}
!222 = metadata !{metadata !223}
!223 = metadata !{metadata !"d_i", metadata !46, metadata !"short", i32 0, i32 15}
!224 = metadata !{metadata !225}
!225 = metadata !{i32 0, i32 15, metadata !226}
!226 = metadata !{metadata !227}
!227 = metadata !{metadata !"d_i", metadata !52, metadata !"short", i32 0, i32 15}
!228 = metadata !{metadata !229}
!229 = metadata !{i32 0, i32 15, metadata !230}
!230 = metadata !{metadata !231}
!231 = metadata !{metadata !"d_i", metadata !58, metadata !"short", i32 0, i32 15}
!232 = metadata !{metadata !233}
!233 = metadata !{i32 0, i32 15, metadata !234}
!234 = metadata !{metadata !235}
!235 = metadata !{metadata !"d_i", metadata !64, metadata !"short", i32 0, i32 15}
!236 = metadata !{metadata !237}
!237 = metadata !{i32 0, i32 15, metadata !238}
!238 = metadata !{metadata !239}
!239 = metadata !{metadata !"d_i", metadata !70, metadata !"short", i32 0, i32 15}
!240 = metadata !{metadata !241}
!241 = metadata !{i32 0, i32 15, metadata !242}
!242 = metadata !{metadata !243}
!243 = metadata !{metadata !"d_i", metadata !76, metadata !"short", i32 0, i32 15}
!244 = metadata !{metadata !245}
!245 = metadata !{i32 0, i32 15, metadata !246}
!246 = metadata !{metadata !247}
!247 = metadata !{metadata !"d_i", metadata !82, metadata !"short", i32 0, i32 15}
!248 = metadata !{metadata !249}
!249 = metadata !{i32 0, i32 15, metadata !250}
!250 = metadata !{metadata !251}
!251 = metadata !{metadata !"d_i", metadata !88, metadata !"short", i32 0, i32 15}
!252 = metadata !{metadata !253}
!253 = metadata !{i32 0, i32 15, metadata !254}
!254 = metadata !{metadata !255}
!255 = metadata !{metadata !"d_i", metadata !94, metadata !"short", i32 0, i32 15}
!256 = metadata !{metadata !257}
!257 = metadata !{i32 0, i32 15, metadata !258}
!258 = metadata !{metadata !259}
!259 = metadata !{metadata !"d_i", metadata !100, metadata !"short", i32 0, i32 15}
!260 = metadata !{metadata !261}
!261 = metadata !{i32 0, i32 15, metadata !262}
!262 = metadata !{metadata !263}
!263 = metadata !{metadata !"d_i", metadata !106, metadata !"short", i32 0, i32 15}
!264 = metadata !{metadata !265}
!265 = metadata !{i32 0, i32 15, metadata !266}
!266 = metadata !{metadata !267}
!267 = metadata !{metadata !"d_i", metadata !112, metadata !"short", i32 0, i32 15}
!268 = metadata !{metadata !269}
!269 = metadata !{i32 0, i32 15, metadata !270}
!270 = metadata !{metadata !271}
!271 = metadata !{metadata !"d_i", metadata !118, metadata !"short", i32 0, i32 15}
!272 = metadata !{metadata !273}
!273 = metadata !{i32 0, i32 15, metadata !274}
!274 = metadata !{metadata !275}
!275 = metadata !{metadata !"d_i", metadata !124, metadata !"short", i32 0, i32 15}
!276 = metadata !{metadata !277}
!277 = metadata !{i32 0, i32 15, metadata !278}
!278 = metadata !{metadata !279}
!279 = metadata !{metadata !"d_i", metadata !130, metadata !"short", i32 0, i32 15}
!280 = metadata !{metadata !281}
!281 = metadata !{i32 0, i32 15, metadata !282}
!282 = metadata !{metadata !283}
!283 = metadata !{metadata !"d_i", metadata !136, metadata !"short", i32 0, i32 15}
!284 = metadata !{metadata !285}
!285 = metadata !{i32 0, i32 15, metadata !286}
!286 = metadata !{metadata !287}
!287 = metadata !{metadata !"d_i", metadata !142, metadata !"short", i32 0, i32 15}
!288 = metadata !{metadata !289}
!289 = metadata !{i32 0, i32 15, metadata !290}
!290 = metadata !{metadata !291}
!291 = metadata !{metadata !"d_i", metadata !148, metadata !"short", i32 0, i32 15}
!292 = metadata !{metadata !293}
!293 = metadata !{i32 0, i32 15, metadata !294}
!294 = metadata !{metadata !295}
!295 = metadata !{metadata !"d_i", metadata !154, metadata !"short", i32 0, i32 15}
!296 = metadata !{metadata !297}
!297 = metadata !{i32 0, i32 15, metadata !298}
!298 = metadata !{metadata !299}
!299 = metadata !{metadata !"d_i", metadata !160, metadata !"short", i32 0, i32 15}
!300 = metadata !{metadata !301}
!301 = metadata !{i32 0, i32 15, metadata !302}
!302 = metadata !{metadata !303}
!303 = metadata !{metadata !"d_i", metadata !166, metadata !"short", i32 0, i32 15}
!304 = metadata !{metadata !305}
!305 = metadata !{i32 0, i32 15, metadata !306}
!306 = metadata !{metadata !307}
!307 = metadata !{metadata !"d_i", metadata !172, metadata !"short", i32 0, i32 15}
!308 = metadata !{metadata !309}
!309 = metadata !{i32 0, i32 15, metadata !310}
!310 = metadata !{metadata !311}
!311 = metadata !{metadata !"d_i", metadata !178, metadata !"short", i32 0, i32 15}
!312 = metadata !{metadata !313}
!313 = metadata !{i32 0, i32 15, metadata !314}
!314 = metadata !{metadata !315}
!315 = metadata !{metadata !"d_i", metadata !184, metadata !"short", i32 0, i32 15}
!316 = metadata !{metadata !317}
!317 = metadata !{i32 0, i32 15, metadata !318}
!318 = metadata !{metadata !319}
!319 = metadata !{metadata !"d_i", metadata !190, metadata !"short", i32 0, i32 15}
!320 = metadata !{i32 790531, metadata !321, metadata !"d_o[0]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!321 = metadata !{i32 786689, metadata !322, metadata !"d_o", null, i32 57, metadata !333, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!322 = metadata !{i32 786478, i32 0, metadata !323, metadata !"array_io", metadata !"array_io", metadata !"", metadata !323, i32 57, metadata !324, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !331, i32 57} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786473, metadata !"array_io.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Carray_interfaces", null} ; [ DW_TAG_file_type ]
!324 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!325 = metadata !{null, metadata !326, metadata !329}
!326 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !327} ; [ DW_TAG_pointer_type ]
!327 = metadata !{i32 786454, null, metadata !"dout_t", metadata !323, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !328} ; [ DW_TAG_typedef ]
!328 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!329 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !330} ; [ DW_TAG_pointer_type ]
!330 = metadata !{i32 786454, null, metadata !"din_t", metadata !323, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !328} ; [ DW_TAG_typedef ]
!331 = metadata !{metadata !332}
!332 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!333 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !327, metadata !334, i32 0, i32 0} ; [ DW_TAG_array_type ]
!334 = metadata !{metadata !335}
!335 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!336 = metadata !{i32 57, i32 23, metadata !322, null}
!337 = metadata !{i32 790531, metadata !321, metadata !"d_o[1]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!338 = metadata !{i32 790531, metadata !321, metadata !"d_o[2]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!339 = metadata !{i32 790531, metadata !321, metadata !"d_o[3]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!340 = metadata !{i32 790531, metadata !321, metadata !"d_o[4]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!341 = metadata !{i32 790531, metadata !321, metadata !"d_o[5]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!342 = metadata !{i32 790531, metadata !321, metadata !"d_o[6]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!343 = metadata !{i32 790531, metadata !321, metadata !"d_o[7]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!344 = metadata !{i32 790531, metadata !321, metadata !"d_o[8]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!345 = metadata !{i32 790531, metadata !321, metadata !"d_o[9]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!346 = metadata !{i32 790531, metadata !321, metadata !"d_o[10]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!347 = metadata !{i32 790531, metadata !321, metadata !"d_o[11]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!348 = metadata !{i32 790531, metadata !321, metadata !"d_o[12]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!349 = metadata !{i32 790531, metadata !321, metadata !"d_o[13]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!350 = metadata !{i32 790531, metadata !321, metadata !"d_o[14]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!351 = metadata !{i32 790531, metadata !321, metadata !"d_o[15]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!352 = metadata !{i32 790531, metadata !321, metadata !"d_o[16]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!353 = metadata !{i32 790531, metadata !321, metadata !"d_o[17]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!354 = metadata !{i32 790531, metadata !321, metadata !"d_o[18]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!355 = metadata !{i32 790531, metadata !321, metadata !"d_o[19]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!356 = metadata !{i32 790531, metadata !321, metadata !"d_o[20]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!357 = metadata !{i32 790531, metadata !321, metadata !"d_o[21]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!358 = metadata !{i32 790531, metadata !321, metadata !"d_o[22]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!359 = metadata !{i32 790531, metadata !321, metadata !"d_o[23]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!360 = metadata !{i32 790531, metadata !321, metadata !"d_o[24]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!361 = metadata !{i32 790531, metadata !321, metadata !"d_o[25]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!362 = metadata !{i32 790531, metadata !321, metadata !"d_o[26]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!363 = metadata !{i32 790531, metadata !321, metadata !"d_o[27]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!364 = metadata !{i32 790531, metadata !321, metadata !"d_o[28]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!365 = metadata !{i32 790531, metadata !321, metadata !"d_o[29]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!366 = metadata !{i32 790531, metadata !321, metadata !"d_o[30]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!367 = metadata !{i32 790531, metadata !321, metadata !"d_o[31]", null, i32 57, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!368 = metadata !{i32 790531, metadata !369, metadata !"d_i[0]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!369 = metadata !{i32 786689, metadata !322, metadata !"d_i", null, i32 57, metadata !370, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!370 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !330, metadata !334, i32 0, i32 0} ; [ DW_TAG_array_type ]
!371 = metadata !{i32 57, i32 41, metadata !322, null}
!372 = metadata !{i32 790531, metadata !369, metadata !"d_i[1]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!373 = metadata !{i32 790531, metadata !369, metadata !"d_i[2]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!374 = metadata !{i32 790531, metadata !369, metadata !"d_i[3]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!375 = metadata !{i32 790531, metadata !369, metadata !"d_i[4]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!376 = metadata !{i32 790531, metadata !369, metadata !"d_i[5]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!377 = metadata !{i32 790531, metadata !369, metadata !"d_i[6]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!378 = metadata !{i32 790531, metadata !369, metadata !"d_i[7]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!379 = metadata !{i32 790531, metadata !369, metadata !"d_i[8]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!380 = metadata !{i32 790531, metadata !369, metadata !"d_i[9]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!381 = metadata !{i32 790531, metadata !369, metadata !"d_i[10]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!382 = metadata !{i32 790531, metadata !369, metadata !"d_i[11]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!383 = metadata !{i32 790531, metadata !369, metadata !"d_i[12]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!384 = metadata !{i32 790531, metadata !369, metadata !"d_i[13]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!385 = metadata !{i32 790531, metadata !369, metadata !"d_i[14]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!386 = metadata !{i32 790531, metadata !369, metadata !"d_i[15]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!387 = metadata !{i32 790531, metadata !369, metadata !"d_i[16]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!388 = metadata !{i32 790531, metadata !369, metadata !"d_i[17]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!389 = metadata !{i32 790531, metadata !369, metadata !"d_i[18]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!390 = metadata !{i32 790531, metadata !369, metadata !"d_i[19]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!391 = metadata !{i32 790531, metadata !369, metadata !"d_i[20]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!392 = metadata !{i32 790531, metadata !369, metadata !"d_i[21]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!393 = metadata !{i32 790531, metadata !369, metadata !"d_i[22]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!394 = metadata !{i32 790531, metadata !369, metadata !"d_i[23]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!395 = metadata !{i32 790531, metadata !369, metadata !"d_i[24]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!396 = metadata !{i32 790531, metadata !369, metadata !"d_i[25]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!397 = metadata !{i32 790531, metadata !369, metadata !"d_i[26]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!398 = metadata !{i32 790531, metadata !369, metadata !"d_i[27]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!399 = metadata !{i32 790531, metadata !369, metadata !"d_i[28]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!400 = metadata !{i32 790531, metadata !369, metadata !"d_i[29]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!401 = metadata !{i32 790531, metadata !369, metadata !"d_i[30]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!402 = metadata !{i32 790531, metadata !369, metadata !"d_i[31]", null, i32 57, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!403 = metadata !{i32 67, i32 3, metadata !404, null}
!404 = metadata !{i32 786443, metadata !405, i32 65, i32 34, metadata !323, i32 2} ; [ DW_TAG_lexical_block ]
!405 = metadata !{i32 786443, metadata !406, i32 65, i32 12, metadata !323, i32 1} ; [ DW_TAG_lexical_block ]
!406 = metadata !{i32 786443, metadata !322, i32 57, i32 53, metadata !323, i32 0} ; [ DW_TAG_lexical_block ]
!407 = metadata !{i32 69, i32 3, metadata !404, null}
!408 = metadata !{i32 68, i32 3, metadata !404, null}
!409 = metadata !{i32 71, i32 1, metadata !406, null}
