; ModuleID = 'C:/training/hls/labs/array_interfaces/array_io_prj/solution4/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@array_io_str = internal unnamed_addr constant [9 x i8] c"array_io\00"
@acc_7 = internal unnamed_addr global i32 0
@acc_6 = internal unnamed_addr global i32 0
@acc_5 = internal unnamed_addr global i32 0
@acc_4 = internal unnamed_addr global i32 0
@acc_3 = internal unnamed_addr global i32 0
@acc_2 = internal unnamed_addr global i32 0
@acc_1 = internal unnamed_addr global i32 0
@acc_0 = internal unnamed_addr global i32 0
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o_0, i16* %d_o_1, i16* %d_o_2, i16* %d_o_3, i16* %d_o_4, i16* %d_o_5, i16* %d_o_6, i16* %d_o_7, i16* %d_o_8, i16* %d_o_9, i16* %d_o_10, i16* %d_o_11, i16* %d_o_12, i16* %d_o_13, i16* %d_o_14, i16* %d_o_15, i16* %d_o_16, i16* %d_o_17, i16* %d_o_18, i16* %d_o_19, i16* %d_o_20, i16* %d_o_21, i16* %d_o_22, i16* %d_o_23, i16* %d_o_24, i16* %d_o_25, i16* %d_o_26, i16* %d_o_27, i16* %d_o_28, i16* %d_o_29, i16* %d_o_30, i16* %d_o_31, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %acc_0_load = load i32* @acc_0, align 4
  %d_i_0_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_0)
  %tmp_2 = sext i16 %d_i_0_read to i32
  %acc_0_loc_assign_2 = add nsw i32 %acc_0_load, %tmp_2
  %tmp = trunc i32 %acc_0_loc_assign_2 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_0, i16 %tmp)
  %acc_1_load = load i32* @acc_1, align 4
  %d_i_1_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_1)
  %tmp_2_1 = sext i16 %d_i_1_read to i32
  %acc_1_loc_assign_2 = add nsw i32 %acc_1_load, %tmp_2_1
  %tmp_1 = trunc i32 %acc_1_loc_assign_2 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_1, i16 %tmp_1)
  %acc_2_load = load i32* @acc_2, align 4
  %d_i_2_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_2)
  %tmp_2_2 = sext i16 %d_i_2_read to i32
  %acc_2_loc_assign_2 = add nsw i32 %acc_2_load, %tmp_2_2
  %tmp_3 = trunc i32 %acc_2_loc_assign_2 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_2, i16 %tmp_3)
  %acc_3_load = load i32* @acc_3, align 4
  %d_i_3_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_3)
  %tmp_2_3 = sext i16 %d_i_3_read to i32
  %acc_3_loc_assign_2 = add nsw i32 %acc_3_load, %tmp_2_3
  %tmp_4 = trunc i32 %acc_3_loc_assign_2 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_3, i16 %tmp_4)
  %acc_4_load = load i32* @acc_4, align 4
  %d_i_4_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_4)
  %tmp_2_4 = sext i16 %d_i_4_read to i32
  %acc_4_loc_assign_2 = add nsw i32 %acc_4_load, %tmp_2_4
  %tmp_5 = trunc i32 %acc_4_loc_assign_2 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_4, i16 %tmp_5)
  %acc_5_load = load i32* @acc_5, align 4
  %d_i_5_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_5)
  %tmp_2_5 = sext i16 %d_i_5_read to i32
  %acc_5_loc_assign_2 = add nsw i32 %acc_5_load, %tmp_2_5
  %tmp_6 = trunc i32 %acc_5_loc_assign_2 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_5, i16 %tmp_6)
  %acc_6_load = load i32* @acc_6, align 4
  %d_i_6_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_6)
  %tmp_2_6 = sext i16 %d_i_6_read to i32
  %acc_6_loc_assign_2 = add nsw i32 %acc_6_load, %tmp_2_6
  %tmp_7 = trunc i32 %acc_6_loc_assign_2 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_6, i16 %tmp_7)
  %acc_7_load = load i32* @acc_7, align 4
  %d_i_7_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_7)
  %tmp_2_7 = sext i16 %d_i_7_read to i32
  %acc_7_loc_assign_2 = add nsw i32 %acc_7_load, %tmp_2_7
  %tmp_8 = trunc i32 %acc_7_loc_assign_2 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_7, i16 %tmp_8)
  %d_i_8_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_8)
  %tmp_2_8 = sext i16 %d_i_8_read to i32
  %acc_0_loc_assign_1 = add nsw i32 %acc_0_loc_assign_2, %tmp_2_8
  %tmp_9 = trunc i32 %acc_0_loc_assign_1 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_8, i16 %tmp_9)
  %d_i_9_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_9)
  %tmp_2_9 = sext i16 %d_i_9_read to i32
  %acc_1_loc_assign_1 = add nsw i32 %acc_1_loc_assign_2, %tmp_2_9
  %tmp_10 = trunc i32 %acc_1_loc_assign_1 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_9, i16 %tmp_10)
  %d_i_10_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_10)
  %tmp_2_s = sext i16 %d_i_10_read to i32
  %acc_2_loc_assign_1 = add nsw i32 %acc_2_loc_assign_2, %tmp_2_s
  %tmp_11 = trunc i32 %acc_2_loc_assign_1 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_10, i16 %tmp_11)
  %d_i_11_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_11)
  %tmp_2_10 = sext i16 %d_i_11_read to i32
  %acc_3_loc_assign_1 = add nsw i32 %acc_3_loc_assign_2, %tmp_2_10
  %tmp_12 = trunc i32 %acc_3_loc_assign_1 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_11, i16 %tmp_12)
  %d_i_12_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_12)
  %tmp_2_11 = sext i16 %d_i_12_read to i32
  %acc_4_loc_assign_1 = add nsw i32 %acc_4_loc_assign_2, %tmp_2_11
  %tmp_13 = trunc i32 %acc_4_loc_assign_1 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_12, i16 %tmp_13)
  %d_i_13_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_13)
  %tmp_2_12 = sext i16 %d_i_13_read to i32
  %acc_5_loc_assign_1 = add nsw i32 %acc_5_loc_assign_2, %tmp_2_12
  %tmp_14 = trunc i32 %acc_5_loc_assign_1 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_13, i16 %tmp_14)
  %d_i_14_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_14)
  %tmp_2_13 = sext i16 %d_i_14_read to i32
  %acc_6_loc_assign_1 = add nsw i32 %acc_6_loc_assign_2, %tmp_2_13
  %tmp_15 = trunc i32 %acc_6_loc_assign_1 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_14, i16 %tmp_15)
  %d_i_15_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_15)
  %tmp_2_14 = sext i16 %d_i_15_read to i32
  %acc_7_loc_assign_1 = add nsw i32 %acc_7_loc_assign_2, %tmp_2_14
  %tmp_16 = trunc i32 %acc_7_loc_assign_1 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_15, i16 %tmp_16)
  %d_i_16_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_16)
  %tmp_2_15 = sext i16 %d_i_16_read to i32
  %acc_0_loc = add nsw i32 %acc_0_loc_assign_1, %tmp_2_15
  %tmp_17 = trunc i32 %acc_0_loc to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_16, i16 %tmp_17)
  %d_i_17_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_17)
  %tmp_2_16 = sext i16 %d_i_17_read to i32
  %acc_1_loc = add nsw i32 %acc_1_loc_assign_1, %tmp_2_16
  %tmp_18 = trunc i32 %acc_1_loc to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_17, i16 %tmp_18)
  %d_i_18_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_18)
  %tmp_2_17 = sext i16 %d_i_18_read to i32
  %acc_2_loc = add nsw i32 %acc_2_loc_assign_1, %tmp_2_17
  %tmp_19 = trunc i32 %acc_2_loc to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_18, i16 %tmp_19)
  %d_i_19_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_19)
  %tmp_2_18 = sext i16 %d_i_19_read to i32
  %acc_3_loc = add nsw i32 %acc_3_loc_assign_1, %tmp_2_18
  %tmp_20 = trunc i32 %acc_3_loc to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_19, i16 %tmp_20)
  %d_i_20_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_20)
  %tmp_2_19 = sext i16 %d_i_20_read to i32
  %acc_4_loc = add nsw i32 %acc_4_loc_assign_1, %tmp_2_19
  %tmp_21 = trunc i32 %acc_4_loc to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_20, i16 %tmp_21)
  %d_i_21_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_21)
  %tmp_2_20 = sext i16 %d_i_21_read to i32
  %acc_5_loc = add nsw i32 %acc_5_loc_assign_1, %tmp_2_20
  %tmp_22 = trunc i32 %acc_5_loc to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_21, i16 %tmp_22)
  %d_i_22_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_22)
  %tmp_2_21 = sext i16 %d_i_22_read to i32
  %acc_6_loc = add nsw i32 %acc_6_loc_assign_1, %tmp_2_21
  %tmp_23 = trunc i32 %acc_6_loc to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_22, i16 %tmp_23)
  %d_i_23_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_23)
  %tmp_2_22 = sext i16 %d_i_23_read to i32
  %acc_7_loc = add nsw i32 %acc_7_loc_assign_1, %tmp_2_22
  %tmp_24 = trunc i32 %acc_7_loc to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_23, i16 %tmp_24)
  %d_i_24_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_24)
  %tmp_2_23 = sext i16 %d_i_24_read to i32
  %temp_s = add nsw i32 %acc_0_loc, %tmp_2_23
  store i32 %temp_s, i32* @acc_0, align 16
  %tmp_25 = trunc i32 %temp_s to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_24, i16 %tmp_25)
  %d_i_25_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_25)
  %tmp_2_24 = sext i16 %d_i_25_read to i32
  %temp_1 = add nsw i32 %acc_1_loc, %tmp_2_24
  store i32 %temp_1, i32* @acc_1, align 4
  %tmp_26 = trunc i32 %temp_1 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_25, i16 %tmp_26)
  %d_i_26_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_26)
  %tmp_2_25 = sext i16 %d_i_26_read to i32
  %temp_2 = add nsw i32 %acc_2_loc, %tmp_2_25
  store i32 %temp_2, i32* @acc_2, align 8
  %tmp_27 = trunc i32 %temp_2 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_26, i16 %tmp_27)
  %d_i_27_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_27)
  %tmp_2_26 = sext i16 %d_i_27_read to i32
  %temp_3 = add nsw i32 %acc_3_loc, %tmp_2_26
  store i32 %temp_3, i32* @acc_3, align 4
  %tmp_28 = trunc i32 %temp_3 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_27, i16 %tmp_28)
  %d_i_28_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_28)
  %tmp_2_27 = sext i16 %d_i_28_read to i32
  %temp_4 = add nsw i32 %acc_4_loc, %tmp_2_27
  store i32 %temp_4, i32* @acc_4, align 16
  %tmp_29 = trunc i32 %temp_4 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_28, i16 %tmp_29)
  %d_i_29_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_29)
  %tmp_2_28 = sext i16 %d_i_29_read to i32
  %temp_5 = add nsw i32 %acc_5_loc, %tmp_2_28
  store i32 %temp_5, i32* @acc_5, align 4
  %tmp_30 = trunc i32 %temp_5 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_29, i16 %tmp_30)
  %d_i_30_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_30)
  %tmp_2_29 = sext i16 %d_i_30_read to i32
  %temp_6 = add nsw i32 %acc_6_loc, %tmp_2_29
  store i32 %temp_6, i32* @acc_6, align 8
  %tmp_31 = trunc i32 %temp_6 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_30, i16 %tmp_31)
  %d_i_31_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %d_i_31)
  %tmp_2_30 = sext i16 %d_i_31_read to i32
  %temp_7 = add nsw i32 %acc_7_loc, %tmp_2_30
  store i32 %temp_7, i32* @acc_7, align 4
  %tmp_32 = trunc i32 %temp_7 to i16
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %d_o_31, i16 %tmp_32)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i16 @_ssdm_op_Read.ap_auto.i16P(i16*) {
entry:
  %empty = load i16* %0
  ret i16 %empty
}

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

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
