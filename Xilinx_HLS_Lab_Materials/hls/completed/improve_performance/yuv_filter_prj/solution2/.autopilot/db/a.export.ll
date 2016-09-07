; ModuleID = 'C:/training/hls/labs/improve_performance/yuv_filter_prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@yuv_filter_str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00"
@YUV_SCALE_LOOP_X_YUV_SCALE_LOO = internal unnamed_addr constant [34 x i8] c"YUV_SCALE_LOOP_X_YUV_SCALE_LOOP_Y\00"
@YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y_s = internal unnamed_addr constant [30 x i8] c"YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y\00"
@RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y_s = internal unnamed_addr constant [30 x i8] c"RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y\00"
@p_str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1
@p_str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1
@p_str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @yuv_filter([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16* %in_width, i16* %in_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3, i16* %out_width, i16* %out_height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch1), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch2), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch3), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_width), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_height), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch1), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch2), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch3), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_width), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_height), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Y_scale), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %U_scale), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %V_scale), !map !55
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter_str) nounwind
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale)
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale)
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale)
  %p_yuv_channels_ch1 = alloca [2457600 x i8], align 1
  %p_yuv_channels_ch2 = alloca [2457600 x i8], align 1
  %p_yuv_channels_ch3 = alloca [2457600 x i8], align 1
  %p_scale_channels_ch1 = alloca [2457600 x i8], align 1
  %p_scale_channels_ch2 = alloca [2457600 x i8], align 1
  %p_scale_channels_ch3 = alloca [2457600 x i8], align 1
  %in_width_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_width)
  %in_height_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_height)
  %call_ret = call fastcc { i16, i16 } @yuv_filter_rgb2yuv([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* %p_yuv_channels_ch1, [2457600 x i8]* %p_yuv_channels_ch2, [2457600 x i8]* %p_yuv_channels_ch3)
  %p_yuv_width = extractvalue { i16, i16 } %call_ret, 0
  %p_yuv_height = extractvalue { i16, i16 } %call_ret, 1
  %tmp_i_cast = zext i8 %Y_scale_read to i15
  %tmp_1_i_cast = zext i8 %U_scale_read to i15
  %tmp_2_i_cast = zext i8 %V_scale_read to i15
  %cast = zext i16 %p_yuv_width to i32
  %cast1 = zext i16 %p_yuv_height to i32
  %bound = mul i32 %cast1, %cast
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %x_i = phi i16 [ 0, %0 ], [ %tmp_3_i_mid2_v, %.reset ]
  %y_i = phi i16 [ 0, %0 ], [ %y, %.reset ]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound
  %indvar_flatten_next = add i32 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %yuv_scale.exit, label %.reset

.reset:                                           ; preds = %1
  %x = add i16 1, %x_i
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @YUV_SCALE_LOOP_X_YUV_SCALE_LOO)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond_i5 = icmp eq i16 %y_i, %p_yuv_height
  %y_i_mid2 = select i1 %exitcond_i5, i16 0, i16 %y_i
  %tmp_3_i_mid2_v = select i1 %exitcond_i5, i16 %x, i16 %x_i
  %tmp = trunc i16 %tmp_3_i_mid2_v to i13
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0)
  %tmp_1 = trunc i16 %tmp_3_i_mid2_v to i15
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_1, i8 0)
  %tmp_2 = add i23 %p_shl_cast, %p_shl3_cast
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str6) nounwind
  %tmp_14_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_5_i_cast = zext i16 %y_i_mid2 to i23
  %tmp_3 = add i23 %tmp_5_i_cast, %tmp_2
  %tmp_3_cast = zext i23 %tmp_3 to i64
  %scale_channels_ch2_addr = getelementptr [2457600 x i8]* %p_scale_channels_ch2, i64 0, i64 %tmp_3_cast
  %scale_channels_ch3_addr = getelementptr [2457600 x i8]* %p_scale_channels_ch3, i64 0, i64 %tmp_3_cast
  %yuv_channels_ch1_addr = getelementptr [2457600 x i8]* %p_yuv_channels_ch1, i64 0, i64 %tmp_3_cast
  %yuv_channels_ch2_addr = getelementptr [2457600 x i8]* %p_yuv_channels_ch2, i64 0, i64 %tmp_3_cast
  %yuv_channels_ch3_addr = getelementptr [2457600 x i8]* %p_yuv_channels_ch3, i64 0, i64 %tmp_3_cast
  %scale_channels_ch1_addr = getelementptr [2457600 x i8]* %p_scale_channels_ch1, i64 0, i64 %tmp_3_cast
  %Y = load i8* %yuv_channels_ch1_addr, align 1
  %U = load i8* %yuv_channels_ch2_addr, align 1
  %V = load i8* %yuv_channels_ch3_addr, align 1
  %tmp_6_i_cast = zext i8 %Y to i15
  %tmp_7_i = mul i15 %tmp_6_i_cast, %tmp_i_cast
  %tmp_9_i_cast = zext i8 %U to i15
  %tmp_i = mul i15 %tmp_9_i_cast, %tmp_1_i_cast
  %tmp_4_i_cast = zext i8 %V to i15
  %tmp_8_i = mul i15 %tmp_4_i_cast, %tmp_2_i_cast
  %tmp_10_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_7_i, i32 7, i32 14)
  store i8 %tmp_10_i, i8* %scale_channels_ch1_addr, align 1
  %tmp_11_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_i, i32 7, i32 14)
  store i8 %tmp_11_i, i8* %scale_channels_ch2_addr, align 1
  %tmp_12_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_8_i, i32 7, i32 14)
  store i8 %tmp_12_i, i8* %scale_channels_ch3_addr, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str6, i32 %tmp_14_i)
  %y = add i16 1, %y_i_mid2
  br label %1

yuv_scale.exit:                                   ; preds = %1
  %call_ret1 = call fastcc { i16, i16 } @yuv_filter_yuv2rgb([2457600 x i8]* %p_scale_channels_ch1, [2457600 x i8]* %p_scale_channels_ch2, [2457600 x i8]* %p_scale_channels_ch3, i16 %p_yuv_width, i16 %p_yuv_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3)
  %out_width_ret = extractvalue { i16, i16 } %call_ret1, 0
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_width, i16 %out_width_ret)
  %out_height_ret = extractvalue { i16, i16 } %call_ret1, 1
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_height, i16 %out_height_ret)
  ret void
}

define internal fastcc { i16, i16 } @yuv_filter_yuv2rgb([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read)
  %in_width_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read)
  %cast = zext i16 %in_width_read_1 to i32
  %cast1 = zext i16 %in_height_read_1 to i32
  %bound = mul i32 %cast1, %cast
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ]
  %y = phi i16 [ 0, %0 ], [ %y_1, %.reset ]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound
  %indvar_flatten_next = add i32 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_1 = add i16 1, %x
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y_s)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond5 = icmp eq i16 %y, %in_height_read_1
  %y_mid2 = select i1 %exitcond5, i16 0, i16 %y
  %tmp_mid2_v = select i1 %exitcond5, i16 %x_1, i16 %x
  %tmp = trunc i16 %tmp_mid2_v to i13
  %p_shl2_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0)
  %tmp_5 = trunc i16 %tmp_mid2_v to i15
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_5, i8 0)
  %tmp_s = add i23 %p_shl3_cast, %p_shl2_cast
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_cast = zext i16 %y_mid2 to i23
  %tmp_1 = add i23 %tmp_s, %tmp_cast
  %tmp_21_cast = zext i23 %tmp_1 to i64
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_21_cast
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_21_cast
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_21_cast
  %out_channels_ch1_addr = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_21_cast
  %out_channels_ch2_addr = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_21_cast
  %out_channels_ch3_addr = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_21_cast
  %Y = load i8* %in_channels_ch1_addr, align 1
  %U = load i8* %in_channels_ch2_addr, align 1
  %V = load i8* %in_channels_ch3_addr, align 1
  %tmp_3_cast = zext i8 %Y to i9
  %C = add i9 -16, %tmp_3_cast
  %D = xor i8 %U, -128
  %E = xor i8 %V, -128
  %tmp_6_cast = sext i9 %C to i18
  %tmp_7 = mul i18 298, %tmp_6_cast
  %tmp_8_cast5 = sext i8 %E to i17
  %tmp_8_cast = sext i8 %E to i18
  %tmp_9 = mul i18 409, %tmp_8_cast
  %tmp_3 = add i18 128, %tmp_7
  %tmp_4 = add i18 %tmp_9, %tmp_3
  %tmp_6 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_4, i32 16, i32 17)
  %icmp = icmp eq i2 %tmp_6, 1
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_4, i32 17)
  %phitmp = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_4, i32 8, i32 15)
  %p_phitmp = select i1 %icmp, i8 -1, i8 0
  %tmp_10 = or i1 %icmp, %tmp_8
  %R = select i1 %tmp_10, i8 %p_phitmp, i8 %phitmp
  %tmp_16_cast4_cast = sext i8 %D to i16
  %tmp_11 = mul i16 -100, %tmp_16_cast4_cast
  %tmp_11_cast = sext i16 %tmp_11 to i17
  %tmp_12 = mul i17 -208, %tmp_8_cast5
  %tmp1 = add i17 %tmp_12, %tmp_11_cast
  %tmp1_cast = sext i17 %tmp1 to i18
  %tmp_13 = add i18 %tmp_3, %tmp1_cast
  %tmp_14 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_13, i32 16, i32 17)
  %icmp1 = icmp eq i2 %tmp_14, 1
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_13, i32 17)
  %phitmp2 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_13, i32 8, i32 15)
  %p_phitmp2 = select i1 %icmp1, i8 -1, i8 0
  %tmp_16 = or i1 %icmp1, %tmp_15
  %G = select i1 %tmp_16, i8 %p_phitmp2, i8 %phitmp2
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8 %D, i9 0)
  %p_shl_cast = sext i17 %p_shl to i19
  %p_shl1 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %D, i2 0)
  %p_shl1_cast = sext i10 %p_shl1 to i18
  %tmp2 = add i18 %tmp_3, %p_shl1_cast
  %tmp2_cast = sext i18 %tmp2 to i19
  %tmp_17 = add i19 %p_shl_cast, %tmp2_cast
  %tmp_18 = call i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19 %tmp_17, i32 16, i32 18)
  %icmp2 = icmp sgt i3 %tmp_18, 0
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i19.i32(i19 %tmp_17, i32 18)
  %phitmp3 = call i8 @_ssdm_op_PartSelect.i8.i19.i32.i32(i19 %tmp_17, i32 8, i32 15)
  %p_phitmp3 = select i1 %icmp2, i8 -1, i8 0
  %tmp_20 = or i1 %icmp2, %tmp_19
  %B = select i1 %tmp_20, i8 %p_phitmp3, i8 %phitmp3
  store i8 %R, i8* %out_channels_ch1_addr, align 1
  store i8 %G, i8* %out_channels_ch2_addr, align 1
  store i8 %B, i8* %out_channels_ch3_addr, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_2)
  %y_1 = add i16 1, %y_mid2
  br label %1

; <label>:2                                       ; preds = %1
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_1, 0
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read_1, 1
  ret { i16, i16 } %mrv_1
}

define internal fastcc { i16, i16 } @yuv_filter_rgb2yuv([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read11 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read)
  %in_width_read_2 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read)
  %cast = zext i16 %in_width_read_2 to i32
  %cast1 = zext i16 %in_height_read11 to i32
  %bound = mul i32 %cast1, %cast
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ]
  %y = phi i16 [ 0, %0 ], [ %y_2, %.reset ]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound
  %indvar_flatten_next = add i32 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_2 = add i16 1, %x
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y_s)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond9 = icmp eq i16 %y, %in_height_read11
  %y_mid2 = select i1 %exitcond9, i16 0, i16 %y
  %tmp_mid2_v = select i1 %exitcond9, i16 %x_2, i16 %x
  %tmp = trunc i16 %tmp_mid2_v to i13
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0)
  %tmp_20 = trunc i16 %tmp_mid2_v to i15
  %p_shl7_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_20, i8 0)
  %tmp_s = add i23 %p_shl_cast, %p_shl7_cast
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_cast = zext i16 %y_mid2 to i23
  %tmp_22 = add i23 %tmp_cast, %tmp_s
  %tmp_24_cast = zext i23 %tmp_22 to i64
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_24_cast
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_24_cast
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_24_cast
  %out_channels_ch1_addr = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_24_cast
  %out_channels_ch2_addr = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_24_cast
  %out_channels_ch3_addr = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_24_cast
  %R = load i8* %in_channels_ch1_addr, align 1
  %G = load i8* %in_channels_ch2_addr, align 1
  %B = load i8* %in_channels_ch3_addr, align 1
  %tmp_33_cast1 = zext i8 %R to i16
  %tmp_33_cast2 = zext i8 %R to i15
  %p_shl5 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R, i6 0)
  %p_shl5_cast = zext i14 %p_shl5 to i15
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R, i1 false)
  %p_shl6_cast = zext i9 %p_shl6 to i15
  %tmp_35_cast1 = zext i8 %G to i16
  %tmp_35_cast2 = zext i8 %G to i9
  %p_shl4 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G, i7 0)
  %p_shl4_cast = zext i15 %p_shl4 to i16
  %tmp_37_cast1 = zext i8 %B to i13
  %tmp_23 = mul i13 25, %tmp_37_cast1
  %tmp2 = add i15 %p_shl6_cast, %p_shl5_cast
  %tmp2_cast = zext i15 %tmp2 to i16
  %tmp1 = add i16 %tmp2_cast, %p_shl4_cast
  %tmp4 = add i9 128, %tmp_35_cast2
  %tmp4_cast = zext i9 %tmp4 to i13
  %tmp3 = add i13 %tmp4_cast, %tmp_23
  %tmp3_cast = zext i13 %tmp3 to i16
  %tmp_24 = add i16 %tmp3_cast, %tmp1
  %tmp_25 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_24, i32 8, i32 15)
  %Y = add i8 16, %tmp_25
  %tmp_26 = mul i15 -38, %tmp_33_cast2
  %tmp_44_cast = sext i15 %tmp_26 to i16
  %tmp_27 = mul i16 -74, %tmp_35_cast1
  %p_shl2 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %B, i7 0)
  %p_shl2_cast = zext i15 %p_shl2 to i16
  %p_shl3 = call i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8 %B, i4 0)
  %p_shl3_cast9 = zext i12 %p_shl3 to i13
  %p_shl3_cast = zext i12 %p_shl3 to i16
  %tmp_28 = sub i16 %p_shl2_cast, %p_shl3_cast
  %tmp5 = add i16 %tmp_44_cast, %tmp_27
  %tmp6 = add i16 128, %tmp_28
  %tmp_29 = add i16 %tmp6, %tmp5
  %tmp_30 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_29, i32 8, i32 15)
  %U = xor i8 %tmp_30, -128
  %tmp_31 = mul i16 122, %tmp_33_cast1
  %tmp_32 = mul i16 -94, %tmp_35_cast1
  %p_neg = sub i13 0, %p_shl3_cast9
  %p_neg_cast = sext i13 %p_neg to i14
  %p_shl1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %B, i1 false)
  %p_shl1_cast = zext i9 %p_shl1 to i14
  %tmp_33 = sub i14 %p_neg_cast, %p_shl1_cast
  %tmp7 = add i16 %tmp_31, %tmp_32
  %tmp8 = add i14 128, %tmp_33
  %tmp8_cast = sext i14 %tmp8 to i16
  %tmp_34 = add i16 %tmp8_cast, %tmp7
  %tmp_35 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_34, i32 8, i32 15)
  %V = xor i8 %tmp_35, -128
  store i8 %Y, i8* %out_channels_ch1_addr, align 1
  store i8 %U, i8* %out_channels_ch2_addr, align 1
  store i8 %V, i8* %out_channels_ch3_addr, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_21)
  %y_2 = add i16 1, %y_mid2
  br label %1

; <label>:2                                       ; preds = %1
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_2, 0
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read11, 1
  ret { i16, i16 } %mrv_1
}

declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

declare i18 @llvm.part.select.i18(i18, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i15 @llvm.part.select.i15(i15, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_auto.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
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

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i16 @_ssdm_op_Read.ap_auto.i16P(i16*) {
entry:
  %empty = load i16* %0
  ret i16 %empty
}

define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_15 = trunc i19 %empty to i8
  ret i8 %empty_15
}

define weak i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_16 = trunc i18 %empty to i8
  ret i8 %empty_16
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_17 = trunc i16 %empty to i8
  ret i8 %empty_17
}

define weak i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2)
  %empty_18 = trunc i15 %empty to i8
  ret i8 %empty_18
}

define weak i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_19 = trunc i19 %empty to i3
  ret i3 %empty_19
}

define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_20 = trunc i11 %empty to i3
  ret i3 %empty_20
}

define weak i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_21 = trunc i18 %empty to i2
  ret i2 %empty_21
}

define weak i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_22 = trunc i10 %empty to i2
  ret i2 %empty_22
}

declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_23 = trunc i19 %empty to i11
  ret i11 %empty_23
}

define weak i10 @_ssdm_op_PartSelect.i10.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2)
  %empty_24 = trunc i18 %empty to i10
  ret i10 %empty_24
}

define weak i1 @_ssdm_op_BitSelect.i1.i19.i32(i19, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i19
  %empty_25 = shl i19 1, %empty
  %empty_26 = and i19 %0, %empty_25
  %empty_27 = icmp ne i19 %empty_26, 0
  ret i1 %empty_27
}

define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18
  %empty_28 = shl i18 1, %empty
  %empty_29 = and i18 %0, %empty_28
  %empty_30 = icmp ne i18 %empty_29, 0
  ret i1 %empty_30
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_31 = zext i1 %1 to i9
  %empty_32 = shl i9 %empty, 1
  %empty_33 = or i9 %empty_32, %empty_31
  ret i9 %empty_33
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23
  %empty_34 = zext i8 %1 to i23
  %empty_35 = shl i23 %empty, 8
  %empty_36 = or i23 %empty_35, %empty_34
  ret i23 %empty_36
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23
  %empty_37 = zext i10 %1 to i23
  %empty_38 = shl i23 %empty, 10
  %empty_39 = or i23 %empty_38, %empty_37
  ret i23 %empty_39
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %0 to i17
  %empty_40 = zext i9 %1 to i17
  %empty_41 = shl i17 %empty, 9
  %empty_42 = or i17 %empty_41, %empty_40
  ret i17 %empty_42
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15
  %empty_43 = zext i7 %1 to i15
  %empty_44 = shl i15 %empty, 7
  %empty_45 = or i15 %empty_44, %empty_43
  ret i15 %empty_45
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14
  %empty_46 = zext i6 %1 to i14
  %empty_47 = shl i14 %empty, 6
  %empty_48 = or i14 %empty_47, %empty_46
  ret i14 %empty_48
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %0 to i12
  %empty_49 = zext i4 %1 to i12
  %empty_50 = shl i12 %empty, 4
  %empty_51 = or i12 %empty_50, %empty_49
  ret i12 %empty_51
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10
  %empty_52 = zext i2 %1 to i10
  %empty_53 = shl i10 %empty, 2
  %empty_54 = or i10 %empty_53, %empty_52
  ret i10 %empty_54
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 7, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in.channels.ch1", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 0, i32 1919, i32 1}
!6 = metadata !{i32 0, i32 1279, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"in.channels.ch2", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 7, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"in.channels.ch3", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 15, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"in.width", metadata !19, metadata !"unsigned short", i32 0, i32 15}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, i32 1}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 15, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"in.height", metadata !19, metadata !"unsigned short", i32 0, i32 15}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 7, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"out.channels.ch1", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 7, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"out.channels.ch2", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 7, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"out.channels.ch3", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 15, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"out.width", metadata !19, metadata !"unsigned short", i32 0, i32 15}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 15, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"out.height", metadata !19, metadata !"unsigned short", i32 0, i32 15}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 7, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"Y_scale", metadata !49, metadata !"unsigned char", i32 0, i32 7}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 0, i32 0}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 7, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"U_scale", metadata !49, metadata !"unsigned char", i32 0, i32 7}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"V_scale", metadata !49, metadata !"unsigned char", i32 0, i32 7}
