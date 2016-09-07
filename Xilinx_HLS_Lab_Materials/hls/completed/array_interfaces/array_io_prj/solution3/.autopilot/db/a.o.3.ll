; ModuleID = 'C:/training/hls/labs/array_interfaces/array_io_prj/solution3/.autopilot/db/a.o.3.bc'
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
@p_str3 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=11 type=[1 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @array_io(i16* %d_o_0, i16* %d_o_1, i16* %d_o_2, i16* %d_o_3, [16 x i16]* %d_i_0, [16 x i16]* %d_i_1) {
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_3), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_2), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_1), !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o_0), !map !18
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i16]* %d_i_1), !map !24
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i16]* %d_i_0), !map !30
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @array_io_str) nounwind
  call void @llvm.dbg.value(metadata !{i16* %d_o_0}, i64 0, metadata !36), !dbg !52 ; [debug line = 57:23] [debug variable = d_o[0]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_1}, i64 0, metadata !53), !dbg !52 ; [debug line = 57:23] [debug variable = d_o[1]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_2}, i64 0, metadata !54), !dbg !52 ; [debug line = 57:23] [debug variable = d_o[2]]
  call void @llvm.dbg.value(metadata !{i16* %d_o_3}, i64 0, metadata !55), !dbg !52 ; [debug line = 57:23] [debug variable = d_o[3]]
  call void @llvm.dbg.value(metadata !{[16 x i16]* %d_i_0}, i64 0, metadata !56), !dbg !59 ; [debug line = 57:41] [debug variable = d_i[0]]
  call void @llvm.dbg.value(metadata !{[16 x i16]* %d_i_1}, i64 0, metadata !60), !dbg !59 ; [debug line = 57:41] [debug variable = d_i[1]]
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_0, i16* %d_o_1, i16* %d_o_2, i16* %d_o_3, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([16 x i16]* %d_i_0, [16 x i16]* %d_i_1, [1 x i8]* @p_str1, [12 x i8]* @p_str3, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %acc_0_load = load i32* @acc_0, align 4, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_0_addr = getelementptr [16 x i16]* %d_i_0, i64 0, i64 0 ; [#uses=1 type=i16*]
  %d_i_0_load = load i16* %d_i_0_addr, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2 = sext i16 %d_i_0_load to i32, !dbg !61  ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_0_loc_assign_2 = add nsw i32 %acc_0_load, %tmp_2, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp = trunc i32 %acc_0_loc_assign_2 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_0, i16 %tmp), !dbg !65 ; [debug line = 69:3]
  %acc_1_load = load i32* @acc_1, align 4, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_0_addr_1 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 1 ; [#uses=1 type=i16*]
  %d_i_0_load_1 = load i16* %d_i_0_addr_1, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_1 = sext i16 %d_i_0_load_1 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_1_loc_assign_2 = add nsw i32 %acc_1_load, %tmp_2_1, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_1 = trunc i32 %acc_1_loc_assign_2 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_0, i16 %tmp_1), !dbg !65 ; [debug line = 69:3]
  %acc_2_load = load i32* @acc_2, align 4, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_0_addr_2 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 2 ; [#uses=1 type=i16*]
  %d_i_0_load_2 = load i16* %d_i_0_addr_2, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_2 = sext i16 %d_i_0_load_2 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_2_loc_assign_2 = add nsw i32 %acc_2_load, %tmp_2_2, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_3 = trunc i32 %acc_2_loc_assign_2 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_0, i16 %tmp_3), !dbg !65 ; [debug line = 69:3]
  %acc_3_load = load i32* @acc_3, align 4, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_0_addr_3 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 3 ; [#uses=1 type=i16*]
  %d_i_0_load_3 = load i16* %d_i_0_addr_3, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_3 = sext i16 %d_i_0_load_3 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_3_loc_assign_2 = add nsw i32 %acc_3_load, %tmp_2_3, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_4 = trunc i32 %acc_3_loc_assign_2 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_0, i16 %tmp_4), !dbg !65 ; [debug line = 69:3]
  %acc_4_load = load i32* @acc_4, align 4, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_0_addr_4 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 4 ; [#uses=1 type=i16*]
  %d_i_0_load_4 = load i16* %d_i_0_addr_4, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_4 = sext i16 %d_i_0_load_4 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_4_loc_assign_2 = add nsw i32 %acc_4_load, %tmp_2_4, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_5 = trunc i32 %acc_4_loc_assign_2 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_0, i16 %tmp_5), !dbg !65 ; [debug line = 69:3]
  %acc_5_load = load i32* @acc_5, align 4, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_0_addr_5 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 5 ; [#uses=1 type=i16*]
  %d_i_0_load_5 = load i16* %d_i_0_addr_5, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_5 = sext i16 %d_i_0_load_5 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_5_loc_assign_2 = add nsw i32 %acc_5_load, %tmp_2_5, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_6 = trunc i32 %acc_5_loc_assign_2 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_0, i16 %tmp_6), !dbg !65 ; [debug line = 69:3]
  %acc_6_load = load i32* @acc_6, align 4, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_0_addr_6 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 6 ; [#uses=1 type=i16*]
  %d_i_0_load_6 = load i16* %d_i_0_addr_6, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_6 = sext i16 %d_i_0_load_6 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_6_loc_assign_2 = add nsw i32 %acc_6_load, %tmp_2_6, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_7 = trunc i32 %acc_6_loc_assign_2 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_0, i16 %tmp_7), !dbg !65 ; [debug line = 69:3]
  %acc_7_load = load i32* @acc_7, align 4, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i_0_addr_7 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 7 ; [#uses=1 type=i16*]
  %d_i_0_load_7 = load i16* %d_i_0_addr_7, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_7 = sext i16 %d_i_0_load_7 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_7_loc_assign_2 = add nsw i32 %acc_7_load, %tmp_2_7, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_8 = trunc i32 %acc_7_loc_assign_2 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_0, i16 %tmp_8), !dbg !65 ; [debug line = 69:3]
  %d_i_0_addr_8 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 8 ; [#uses=1 type=i16*]
  %d_i_0_load_8 = load i16* %d_i_0_addr_8, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_8 = sext i16 %d_i_0_load_8 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_0_loc_assign_1 = add nsw i32 %acc_0_loc_assign_2, %tmp_2_8, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_9 = trunc i32 %acc_0_loc_assign_1 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_1, i16 %tmp_9), !dbg !65 ; [debug line = 69:3]
  %d_i_0_addr_9 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 9 ; [#uses=1 type=i16*]
  %d_i_0_load_9 = load i16* %d_i_0_addr_9, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_9 = sext i16 %d_i_0_load_9 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_1_loc_assign_1 = add nsw i32 %acc_1_loc_assign_2, %tmp_2_9, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_10 = trunc i32 %acc_1_loc_assign_1 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_1, i16 %tmp_10), !dbg !65 ; [debug line = 69:3]
  %d_i_0_addr_10 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 10 ; [#uses=1 type=i16*]
  %d_i_0_load_10 = load i16* %d_i_0_addr_10, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_s = sext i16 %d_i_0_load_10 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_2_loc_assign_1 = add nsw i32 %acc_2_loc_assign_2, %tmp_2_s, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_11 = trunc i32 %acc_2_loc_assign_1 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_1, i16 %tmp_11), !dbg !65 ; [debug line = 69:3]
  %d_i_0_addr_11 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 11 ; [#uses=1 type=i16*]
  %d_i_0_load_11 = load i16* %d_i_0_addr_11, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_10 = sext i16 %d_i_0_load_11 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_3_loc_assign_1 = add nsw i32 %acc_3_loc_assign_2, %tmp_2_10, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_12 = trunc i32 %acc_3_loc_assign_1 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_1, i16 %tmp_12), !dbg !65 ; [debug line = 69:3]
  %d_i_0_addr_12 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 12 ; [#uses=1 type=i16*]
  %d_i_0_load_12 = load i16* %d_i_0_addr_12, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_11 = sext i16 %d_i_0_load_12 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_4_loc_assign_1 = add nsw i32 %acc_4_loc_assign_2, %tmp_2_11, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_13 = trunc i32 %acc_4_loc_assign_1 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_1, i16 %tmp_13), !dbg !65 ; [debug line = 69:3]
  %d_i_0_addr_13 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 13 ; [#uses=1 type=i16*]
  %d_i_0_load_13 = load i16* %d_i_0_addr_13, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_12 = sext i16 %d_i_0_load_13 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_5_loc_assign_1 = add nsw i32 %acc_5_loc_assign_2, %tmp_2_12, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_14 = trunc i32 %acc_5_loc_assign_1 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_1, i16 %tmp_14), !dbg !65 ; [debug line = 69:3]
  %d_i_0_addr_14 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 14 ; [#uses=1 type=i16*]
  %d_i_0_load_14 = load i16* %d_i_0_addr_14, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_13 = sext i16 %d_i_0_load_14 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_6_loc_assign_1 = add nsw i32 %acc_6_loc_assign_2, %tmp_2_13, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_15 = trunc i32 %acc_6_loc_assign_1 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_1, i16 %tmp_15), !dbg !65 ; [debug line = 69:3]
  %d_i_0_addr_15 = getelementptr [16 x i16]* %d_i_0, i64 0, i64 15 ; [#uses=1 type=i16*]
  %d_i_0_load_15 = load i16* %d_i_0_addr_15, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_14 = sext i16 %d_i_0_load_15 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_7_loc_assign_1 = add nsw i32 %acc_7_loc_assign_2, %tmp_2_14, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_16 = trunc i32 %acc_7_loc_assign_1 to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_1, i16 %tmp_16), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr = getelementptr [16 x i16]* %d_i_1, i64 0, i64 0 ; [#uses=1 type=i16*]
  %d_i_1_load = load i16* %d_i_1_addr, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_15 = sext i16 %d_i_1_load to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_0_loc = add nsw i32 %acc_0_loc_assign_1, %tmp_2_15, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_17 = trunc i32 %acc_0_loc to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_2, i16 %tmp_17), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_1 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 1 ; [#uses=1 type=i16*]
  %d_i_1_load_1 = load i16* %d_i_1_addr_1, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_16 = sext i16 %d_i_1_load_1 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_1_loc = add nsw i32 %acc_1_loc_assign_1, %tmp_2_16, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_18 = trunc i32 %acc_1_loc to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_2, i16 %tmp_18), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_2 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 2 ; [#uses=1 type=i16*]
  %d_i_1_load_2 = load i16* %d_i_1_addr_2, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_17 = sext i16 %d_i_1_load_2 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_2_loc = add nsw i32 %acc_2_loc_assign_1, %tmp_2_17, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_19 = trunc i32 %acc_2_loc to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_2, i16 %tmp_19), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_3 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 3 ; [#uses=1 type=i16*]
  %d_i_1_load_3 = load i16* %d_i_1_addr_3, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_18 = sext i16 %d_i_1_load_3 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_3_loc = add nsw i32 %acc_3_loc_assign_1, %tmp_2_18, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_20 = trunc i32 %acc_3_loc to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_2, i16 %tmp_20), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_4 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 4 ; [#uses=1 type=i16*]
  %d_i_1_load_4 = load i16* %d_i_1_addr_4, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_19 = sext i16 %d_i_1_load_4 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_4_loc = add nsw i32 %acc_4_loc_assign_1, %tmp_2_19, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_21 = trunc i32 %acc_4_loc to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_2, i16 %tmp_21), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_5 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 5 ; [#uses=1 type=i16*]
  %d_i_1_load_5 = load i16* %d_i_1_addr_5, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_20 = sext i16 %d_i_1_load_5 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_5_loc = add nsw i32 %acc_5_loc_assign_1, %tmp_2_20, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_22 = trunc i32 %acc_5_loc to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_2, i16 %tmp_22), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_6 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 6 ; [#uses=1 type=i16*]
  %d_i_1_load_6 = load i16* %d_i_1_addr_6, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_21 = sext i16 %d_i_1_load_6 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_6_loc = add nsw i32 %acc_6_loc_assign_1, %tmp_2_21, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_23 = trunc i32 %acc_6_loc to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_2, i16 %tmp_23), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_7 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 7 ; [#uses=1 type=i16*]
  %d_i_1_load_7 = load i16* %d_i_1_addr_7, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_22 = sext i16 %d_i_1_load_7 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc_7_loc = add nsw i32 %acc_7_loc_assign_1, %tmp_2_22, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp_24 = trunc i32 %acc_7_loc to i16, !dbg !65 ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_2, i16 %tmp_24), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_8 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 8 ; [#uses=1 type=i16*]
  %d_i_1_load_8 = load i16* %d_i_1_addr_8, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_23 = sext i16 %d_i_1_load_8 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_s = add nsw i32 %acc_0_loc, %tmp_2_23, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_s, i32* @acc_0, align 16, !dbg !66 ; [debug line = 68:3]
  %tmp_25 = trunc i32 %temp_s to i16, !dbg !65    ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_3, i16 %tmp_25), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_9 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 9 ; [#uses=1 type=i16*]
  %d_i_1_load_9 = load i16* %d_i_1_addr_9, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_24 = sext i16 %d_i_1_load_9 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_1 = add nsw i32 %acc_1_loc, %tmp_2_24, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_1, i32* @acc_1, align 4, !dbg !66 ; [debug line = 68:3]
  %tmp_26 = trunc i32 %temp_1 to i16, !dbg !65    ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_3, i16 %tmp_26), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_10 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 10 ; [#uses=1 type=i16*]
  %d_i_1_load_10 = load i16* %d_i_1_addr_10, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_25 = sext i16 %d_i_1_load_10 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_2 = add nsw i32 %acc_2_loc, %tmp_2_25, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_2, i32* @acc_2, align 8, !dbg !66 ; [debug line = 68:3]
  %tmp_27 = trunc i32 %temp_2 to i16, !dbg !65    ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_3, i16 %tmp_27), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_11 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 11 ; [#uses=1 type=i16*]
  %d_i_1_load_11 = load i16* %d_i_1_addr_11, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_26 = sext i16 %d_i_1_load_11 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_3 = add nsw i32 %acc_3_loc, %tmp_2_26, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_3, i32* @acc_3, align 4, !dbg !66 ; [debug line = 68:3]
  %tmp_28 = trunc i32 %temp_3 to i16, !dbg !65    ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_3, i16 %tmp_28), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_12 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 12 ; [#uses=1 type=i16*]
  %d_i_1_load_12 = load i16* %d_i_1_addr_12, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_27 = sext i16 %d_i_1_load_12 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_4 = add nsw i32 %acc_4_loc, %tmp_2_27, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_4, i32* @acc_4, align 16, !dbg !66 ; [debug line = 68:3]
  %tmp_29 = trunc i32 %temp_4 to i16, !dbg !65    ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_3, i16 %tmp_29), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_13 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 13 ; [#uses=1 type=i16*]
  %d_i_1_load_13 = load i16* %d_i_1_addr_13, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_28 = sext i16 %d_i_1_load_13 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_5 = add nsw i32 %acc_5_loc, %tmp_2_28, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_5, i32* @acc_5, align 4, !dbg !66 ; [debug line = 68:3]
  %tmp_30 = trunc i32 %temp_5 to i16, !dbg !65    ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_3, i16 %tmp_30), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_14 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 14 ; [#uses=1 type=i16*]
  %d_i_1_load_14 = load i16* %d_i_1_addr_14, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_29 = sext i16 %d_i_1_load_14 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_6 = add nsw i32 %acc_6_loc, %tmp_2_29, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_6, i32* @acc_6, align 8, !dbg !66 ; [debug line = 68:3]
  %tmp_31 = trunc i32 %temp_6 to i16, !dbg !65    ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_3, i16 %tmp_31), !dbg !65 ; [debug line = 69:3]
  %d_i_1_addr_15 = getelementptr [16 x i16]* %d_i_1, i64 0, i64 15 ; [#uses=1 type=i16*]
  %d_i_1_load_15 = load i16* %d_i_1_addr_15, align 2, !dbg !61 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp_2_30 = sext i16 %d_i_1_load_15 to i32, !dbg !61 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp_7 = add nsw i32 %acc_7_loc, %tmp_2_30, !dbg !61 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp_7, i32* @acc_7, align 4, !dbg !66 ; [debug line = 68:3]
  %tmp_32 = trunc i32 %temp_7 to i16, !dbg !65    ; [#uses=1 type=i16] [debug line = 69:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %d_o_3, i16 %tmp_32), !dbg !65 ; [debug line = 69:3]
  ret void, !dbg !67                              ; [debug line = 71:1]
}

; [#uses=32]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16*, i16) {
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
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
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
!5 = metadata !{i32 24, i32 31, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 15, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"d_o", metadata !10, metadata !"short", i32 0, i32 15}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 16, i32 23, i32 1}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 15, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"d_o", metadata !16, metadata !"short", i32 0, i32 15}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 8, i32 15, i32 1}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 15, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"d_o", metadata !22, metadata !"short", i32 0, i32 15}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 7, i32 1}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 15, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"d_i", metadata !28, metadata !"short", i32 0, i32 15}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 16, i32 31, i32 1}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 15, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"d_i", metadata !34, metadata !"short", i32 0, i32 15}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 15, i32 1}
!36 = metadata !{i32 790531, metadata !37, metadata !"d_o[0]", null, i32 57, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!37 = metadata !{i32 786689, metadata !38, metadata !"d_o", null, i32 57, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 786478, i32 0, metadata !39, metadata !"array_io", metadata !"array_io", metadata !"", metadata !39, i32 57, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !47, i32 57} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786473, metadata !"array_io.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Carray_interfaces", null} ; [ DW_TAG_file_type ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !42, metadata !45}
!42 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 786454, null, metadata !"dout_t", metadata !39, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!45 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ]
!46 = metadata !{i32 786454, null, metadata !"din_t", metadata !39, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !43, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!52 = metadata !{i32 57, i32 23, metadata !38, null}
!53 = metadata !{i32 790531, metadata !37, metadata !"d_o[1]", null, i32 57, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!54 = metadata !{i32 790531, metadata !37, metadata !"d_o[2]", null, i32 57, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!55 = metadata !{i32 790531, metadata !37, metadata !"d_o[3]", null, i32 57, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!56 = metadata !{i32 790531, metadata !57, metadata !"d_i[0]", null, i32 57, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!57 = metadata !{i32 786689, metadata !38, metadata !"d_i", null, i32 57, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !46, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!59 = metadata !{i32 57, i32 41, metadata !38, null}
!60 = metadata !{i32 790531, metadata !57, metadata !"d_i[1]", null, i32 57, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!61 = metadata !{i32 67, i32 3, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 65, i32 34, metadata !39, i32 2} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !64, i32 65, i32 12, metadata !39, i32 1} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !38, i32 57, i32 53, metadata !39, i32 0} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 69, i32 3, metadata !62, null}
!66 = metadata !{i32 68, i32 3, metadata !62, null}
!67 = metadata !{i32 71, i32 1, metadata !64, null}
