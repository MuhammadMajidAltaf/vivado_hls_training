; ModuleID = 'C:/training/hls/labs/improve_performance/yuv_filter_prj/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@yuv_filter_str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@YUV_SCALE_LOOP_X_YUV_SCALE_LOO = internal unnamed_addr constant [34 x i8] c"YUV_SCALE_LOOP_X_YUV_SCALE_LOOP_Y\00" ; [#uses=1 type=[34 x i8]*]
@YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y_s = internal unnamed_addr constant [30 x i8] c"YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y\00" ; [#uses=1 type=[30 x i8]*]
@RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y_s = internal unnamed_addr constant [30 x i8] c"RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y\00" ; [#uses=1 type=[30 x i8]*]
@p_str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=3 type=[17 x i8]*]
@p_str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=3 type=[1 x i8]*]

; [#uses=0]
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
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %V_scale_read}, i64 0, metadata !59), !dbg !89 ; [debug line = 9:19] [debug variable = V_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale_read}, i64 0, metadata !90), !dbg !94 ; [debug line = 115:19@24:4] [debug variable = V_scale]
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %U_scale_read}, i64 0, metadata !95), !dbg !96 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale_read}, i64 0, metadata !97), !dbg !98 ; [debug line = 114:19@24:4] [debug variable = U_scale]
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale_read}, i64 0, metadata !99), !dbg !100 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale_read}, i64 0, metadata !101), !dbg !102 ; [debug line = 113:19@24:4] [debug variable = Y_scale]
  %p_yuv_channels_ch1 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_yuv_channels_ch2 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_yuv_channels_ch3 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_scale_channels_ch1 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_scale_channels_ch2 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  %p_scale_channels_ch3 = alloca [2457600 x i8], align 1 ; [#uses=2 type=[2457600 x i8]*]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !103), !dbg !110 ; [debug line = 5:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !111), !dbg !110 ; [debug line = 5:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !117), !dbg !110 ; [debug line = 5:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !123), !dbg !110 ; [debug line = 5:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !127), !dbg !110 ; [debug line = 5:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !131), !dbg !133 ; [debug line = 6:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !134), !dbg !133 ; [debug line = 6:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !135), !dbg !133 ; [debug line = 6:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !136), !dbg !133 ; [debug line = 6:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !137), !dbg !133 ; [debug line = 6:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !99), !dbg !100 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !95), !dbg !96 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !59), !dbg !89 ; [debug line = 9:19] [debug variable = V_scale]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_yuv_channels_ch1}, metadata !138), !dbg !140 ; [debug line = 17:12] [debug variable = _yuv.channels.ch1]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_yuv_channels_ch2}, metadata !141), !dbg !140 ; [debug line = 17:12] [debug variable = _yuv.channels.ch2]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_yuv_channels_ch3}, metadata !142), !dbg !140 ; [debug line = 17:12] [debug variable = _yuv.channels.ch3]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_scale_channels_ch1}, metadata !143), !dbg !145 ; [debug line = 18:12] [debug variable = _scale.channels.ch1]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_scale_channels_ch2}, metadata !146), !dbg !145 ; [debug line = 18:12] [debug variable = _scale.channels.ch2]
  call void @llvm.dbg.declare(metadata !{[2457600 x i8]* %p_scale_channels_ch3}, metadata !147), !dbg !145 ; [debug line = 18:12] [debug variable = _scale.channels.ch3]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_yuv_channels_ch1}, i64 0, metadata !148), !dbg !150 ; [debug line = 19:24] [debug variable = yuv.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_yuv_channels_ch2}, i64 0, metadata !151), !dbg !150 ; [debug line = 19:24] [debug variable = yuv.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_yuv_channels_ch3}, i64 0, metadata !152), !dbg !150 ; [debug line = 19:24] [debug variable = yuv.channels.ch3]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_scale_channels_ch1}, i64 0, metadata !153), !dbg !155 ; [debug line = 20:28] [debug variable = scale.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_scale_channels_ch2}, i64 0, metadata !156), !dbg !155 ; [debug line = 20:28] [debug variable = scale.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_scale_channels_ch3}, i64 0, metadata !157), !dbg !155 ; [debug line = 20:28] [debug variable = scale.channels.ch3]
  %in_width_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_width), !dbg !158 ; [#uses=1 type=i16] [debug line = 23:4]
  %in_height_read = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_height), !dbg !158 ; [#uses=1 type=i16] [debug line = 23:4]
  %call_ret = call fastcc { i16, i16 } @yuv_filter_rgb2yuv([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* %p_yuv_channels_ch1, [2457600 x i8]* %p_yuv_channels_ch2, [2457600 x i8]* %p_yuv_channels_ch3), !dbg !158 ; [#uses=2 type={ i16, i16 }] [debug line = 23:4]
  %p_yuv_width = extractvalue { i16, i16 } %call_ret, 0, !dbg !158 ; [#uses=2 type=i16] [debug line = 23:4]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_width}, i64 0, metadata !159), !dbg !158 ; [debug line = 23:4] [debug variable = _yuv.width]
  %p_yuv_height = extractvalue { i16, i16 } %call_ret, 1, !dbg !158 ; [#uses=3 type=i16] [debug line = 23:4]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_height}, i64 0, metadata !160), !dbg !158 ; [debug line = 23:4] [debug variable = _yuv.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_yuv_channels_ch1}, i64 0, metadata !161), !dbg !163 ; [debug line = 111:16@24:4] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_yuv_channels_ch2}, i64 0, metadata !164), !dbg !163 ; [debug line = 111:16@24:4] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_yuv_channels_ch3}, i64 0, metadata !165), !dbg !163 ; [debug line = 111:16@24:4] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_width}, i64 0, metadata !166), !dbg !163 ; [debug line = 111:16@24:4] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_height}, i64 0, metadata !167), !dbg !163 ; [debug line = 111:16@24:4] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_scale_channels_ch1}, i64 0, metadata !168), !dbg !170 ; [debug line = 112:16@24:4] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_scale_channels_ch2}, i64 0, metadata !171), !dbg !170 ; [debug line = 112:16@24:4] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %p_scale_channels_ch3}, i64 0, metadata !172), !dbg !170 ; [debug line = 112:16@24:4] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !101), !dbg !102 ; [debug line = 113:19@24:4] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !97), !dbg !98 ; [debug line = 114:19@24:4] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !90), !dbg !94 ; [debug line = 115:19@24:4] [debug variable = V_scale]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_width}, i64 0, metadata !173), !dbg !175 ; [debug line = 123:4@24:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_height}, i64 0, metadata !176), !dbg !177 ; [debug line = 124:4@24:4] [debug variable = height]
  %tmp_i_cast = zext i8 %Y_scale_read to i15, !dbg !178 ; [#uses=1 type=i15] [debug line = 138:10@24:4]
  %tmp_1_i_cast = zext i8 %U_scale_read to i15, !dbg !183 ; [#uses=1 type=i15] [debug line = 139:10@24:4]
  %tmp_2_i_cast = zext i8 %V_scale_read to i15, !dbg !184 ; [#uses=1 type=i15] [debug line = 129:9@24:4]
  %cast = zext i16 %p_yuv_width to i32            ; [#uses=1 type=i32]
  %cast1 = zext i16 %p_yuv_height to i32          ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %1, !dbg !184                          ; [debug line = 129:9@24:4]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %x_i = phi i16 [ 0, %0 ], [ %tmp_3_i_mid2_v, %.reset ] ; [#uses=2 type=i16]
  %y_i = phi i16 [ 0, %0 ], [ %y, %.reset ]       ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !185), !dbg !186 ; [debug line = 129:23@24:4] [debug variable = x]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %yuv_scale.exit, label %.reset

.reset:                                           ; preds = %1
  %x = add i16 1, %x_i, !dbg !186                 ; [#uses=1 type=i16] [debug line = 129:23@24:4]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !185), !dbg !186 ; [debug line = 129:23@24:4] [debug variable = x]
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @YUV_SCALE_LOOP_X_YUV_SCALE_LOO)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond_i5 = icmp eq i16 %y_i, %p_yuv_height, !dbg !187 ; [#uses=2 type=i1] [debug line = 132:12@24:4]
  %y_i_mid2 = select i1 %exitcond_i5, i16 0, i16 %y_i ; [#uses=2 type=i16]
  %tmp_3_i_mid2_v = select i1 %exitcond_i5, i16 %x, i16 %x_i, !dbg !188 ; [#uses=3 type=i16] [debug line = 134:2@24:4]
  %tmp = trunc i16 %tmp_3_i_mid2_v to i13         ; [#uses=1 type=i13]
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_1 = trunc i16 %tmp_3_i_mid2_v to i15       ; [#uses=1 type=i15]
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_1, i8 0), !dbg !189 ; [#uses=1 type=i23] [debug line = 141:10@24:4]
  %tmp_2 = add i23 %p_shl_cast, %p_shl3_cast, !dbg !189 ; [#uses=1 type=i23] [debug line = 141:10@24:4]
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str6) nounwind, !dbg !190 ; [debug line = 132:33@24:4]
  %tmp_14_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str6), !dbg !190 ; [#uses=1 type=i32] [debug line = 132:33@24:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !191 ; [debug line = 133:1@24:4]
  %tmp_5_i_cast = zext i16 %y_i_mid2 to i23, !dbg !189 ; [#uses=1 type=i23] [debug line = 141:10@24:4]
  %tmp_3 = add i23 %tmp_5_i_cast, %tmp_2, !dbg !189 ; [#uses=1 type=i23] [debug line = 141:10@24:4]
  %tmp_3_cast = zext i23 %tmp_3 to i64, !dbg !189 ; [#uses=6 type=i64] [debug line = 141:10@24:4]
  %scale_channels_ch2_addr = getelementptr [2457600 x i8]* %p_scale_channels_ch2, i64 0, i64 %tmp_3_cast, !dbg !189 ; [#uses=1 type=i8*] [debug line = 141:10@24:4]
  %scale_channels_ch3_addr = getelementptr [2457600 x i8]* %p_scale_channels_ch3, i64 0, i64 %tmp_3_cast, !dbg !192 ; [#uses=1 type=i8*] [debug line = 142:10@24:4]
  %yuv_channels_ch1_addr = getelementptr [2457600 x i8]* %p_yuv_channels_ch1, i64 0, i64 %tmp_3_cast, !dbg !188 ; [#uses=1 type=i8*] [debug line = 134:2@24:4]
  %yuv_channels_ch2_addr = getelementptr [2457600 x i8]* %p_yuv_channels_ch2, i64 0, i64 %tmp_3_cast, !dbg !193 ; [#uses=1 type=i8*] [debug line = 135:10@24:4]
  %yuv_channels_ch3_addr = getelementptr [2457600 x i8]* %p_yuv_channels_ch3, i64 0, i64 %tmp_3_cast, !dbg !194 ; [#uses=1 type=i8*] [debug line = 136:10@24:4]
  %scale_channels_ch1_addr = getelementptr [2457600 x i8]* %p_scale_channels_ch1, i64 0, i64 %tmp_3_cast, !dbg !195 ; [#uses=1 type=i8*] [debug line = 140:10@24:4]
  %Y = load i8* %yuv_channels_ch1_addr, align 1, !dbg !188 ; [#uses=1 type=i8] [debug line = 134:2@24:4]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !196), !dbg !188 ; [debug line = 134:2@24:4] [debug variable = Y]
  %U = load i8* %yuv_channels_ch2_addr, align 1, !dbg !193 ; [#uses=1 type=i8] [debug line = 135:10@24:4]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !197), !dbg !193 ; [debug line = 135:10@24:4] [debug variable = U]
  %V = load i8* %yuv_channels_ch3_addr, align 1, !dbg !194 ; [#uses=1 type=i8] [debug line = 136:10@24:4]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !198), !dbg !194 ; [debug line = 136:10@24:4] [debug variable = V]
  %tmp_6_i_cast = zext i8 %Y to i15, !dbg !199    ; [#uses=1 type=i15] [debug line = 137:10@24:4]
  %tmp_7_i = mul i15 %tmp_6_i_cast, %tmp_i_cast, !dbg !199 ; [#uses=1 type=i15] [debug line = 137:10@24:4]
  %tmp_9_i_cast = zext i8 %U to i15, !dbg !178    ; [#uses=1 type=i15] [debug line = 138:10@24:4]
  %tmp_i = mul i15 %tmp_9_i_cast, %tmp_1_i_cast, !dbg !178 ; [#uses=1 type=i15] [debug line = 138:10@24:4]
  %tmp_4_i_cast = zext i8 %V to i15, !dbg !183    ; [#uses=1 type=i15] [debug line = 139:10@24:4]
  %tmp_8_i = mul i15 %tmp_4_i_cast, %tmp_2_i_cast, !dbg !183 ; [#uses=1 type=i15] [debug line = 139:10@24:4]
  %tmp_10_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_7_i, i32 7, i32 14), !dbg !195 ; [#uses=1 type=i8] [debug line = 140:10@24:4]
  store i8 %tmp_10_i, i8* %scale_channels_ch1_addr, align 1, !dbg !195 ; [debug line = 140:10@24:4]
  %tmp_11_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_i, i32 7, i32 14), !dbg !189 ; [#uses=1 type=i8] [debug line = 141:10@24:4]
  store i8 %tmp_11_i, i8* %scale_channels_ch2_addr, align 1, !dbg !189 ; [debug line = 141:10@24:4]
  %tmp_12_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_8_i, i32 7, i32 14), !dbg !192 ; [#uses=1 type=i8] [debug line = 142:10@24:4]
  store i8 %tmp_12_i, i8* %scale_channels_ch3_addr, align 1, !dbg !192 ; [debug line = 142:10@24:4]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str6, i32 %tmp_14_i), !dbg !200 ; [#uses=0 type=i32] [debug line = 143:7@24:4]
  %y = add i16 1, %y_i_mid2, !dbg !201            ; [#uses=1 type=i16] [debug line = 132:27@24:4]
  call void @llvm.dbg.value(metadata !{i16 %y}, i64 0, metadata !202), !dbg !201 ; [debug line = 132:27@24:4] [debug variable = y]
  br label %1, !dbg !201                          ; [debug line = 132:27@24:4]

yuv_scale.exit:                                   ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_width}, i64 0, metadata !203), !dbg !170 ; [debug line = 112:16@24:4] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_height}, i64 0, metadata !204), !dbg !170 ; [debug line = 112:16@24:4] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_width}, i64 0, metadata !205), !dbg !92 ; [debug line = 24:4] [debug variable = _scale.width]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_height}, i64 0, metadata !206), !dbg !92 ; [debug line = 24:4] [debug variable = _scale.height]
  %call_ret1 = call fastcc { i16, i16 } @yuv_filter_yuv2rgb([2457600 x i8]* %p_scale_channels_ch1, [2457600 x i8]* %p_scale_channels_ch2, [2457600 x i8]* %p_scale_channels_ch3, i16 %p_yuv_width, i16 %p_yuv_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3), !dbg !207 ; [#uses=2 type={ i16, i16 }] [debug line = 25:4]
  %out_width_ret = extractvalue { i16, i16 } %call_ret1, 0, !dbg !207 ; [#uses=1 type=i16] [debug line = 25:4]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_width, i16 %out_width_ret), !dbg !207 ; [debug line = 25:4]
  %out_height_ret = extractvalue { i16, i16 } %call_ret1, 1, !dbg !207 ; [#uses=1 type=i16] [debug line = 25:4]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_height, i16 %out_height_ret), !dbg !207 ; [debug line = 25:4]
  ret void, !dbg !208                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @yuv_filter_yuv2rgb([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read) ; [#uses=3 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_1}, i64 0, metadata !209), !dbg !214 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_1}, i64 0, metadata !215), !dbg !217 ; [debug line = 69:16] [debug variable = out.height]
  %in_width_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read) ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_1}, i64 0, metadata !218), !dbg !214 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_1}, i64 0, metadata !219), !dbg !217 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !220), !dbg !214 ; [debug line = 68:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !221), !dbg !214 ; [debug line = 68:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !222), !dbg !214 ; [debug line = 68:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !218), !dbg !214 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !209), !dbg !214 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !223), !dbg !217 ; [debug line = 69:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !224), !dbg !217 ; [debug line = 69:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !225), !dbg !217 ; [debug line = 69:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !226), !dbg !228 ; [debug line = 83:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !229), !dbg !230 ; [debug line = 84:4] [debug variable = height]
  %cast = zext i16 %in_width_read_1 to i32        ; [#uses=1 type=i32]
  %cast1 = zext i16 %in_height_read_1 to i32      ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %1, !dbg !231                          ; [debug line = 89:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ] ; [#uses=2 type=i16]
  %y = phi i16 [ 0, %0 ], [ %y_1, %.reset ]       ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x_1}, i64 0, metadata !233), !dbg !234 ; [debug line = 89:23] [debug variable = x]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_1 = add i16 1, %x, !dbg !234                 ; [#uses=1 type=i16] [debug line = 89:23]
  call void @llvm.dbg.value(metadata !{i16 %x_1}, i64 0, metadata !233), !dbg !234 ; [debug line = 89:23] [debug variable = x]
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y_s)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond5 = icmp eq i16 %y, %in_height_read_1, !dbg !235 ; [#uses=2 type=i1] [debug line = 92:12]
  %y_mid2 = select i1 %exitcond5, i16 0, i16 %y   ; [#uses=2 type=i16]
  %tmp_mid2_v = select i1 %exitcond5, i16 %x_1, i16 %x, !dbg !238 ; [#uses=3 type=i16] [debug line = 94:2]
  %tmp = trunc i16 %tmp_mid2_v to i13             ; [#uses=1 type=i13]
  %p_shl2_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_5 = trunc i16 %tmp_mid2_v to i15           ; [#uses=1 type=i15]
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_5, i8 0), !dbg !238 ; [#uses=1 type=i23] [debug line = 94:2]
  %tmp_s = add i23 %p_shl3_cast, %p_shl2_cast, !dbg !238 ; [#uses=1 type=i23] [debug line = 94:2]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind, !dbg !240 ; [debug line = 92:33]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4), !dbg !240 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !241 ; [debug line = 93:1]
  %tmp_cast = zext i16 %y_mid2 to i23, !dbg !238  ; [#uses=1 type=i23] [debug line = 94:2]
  %tmp_1 = add i23 %tmp_s, %tmp_cast, !dbg !238   ; [#uses=1 type=i23] [debug line = 94:2]
  %tmp_21_cast = zext i23 %tmp_1 to i64, !dbg !238 ; [#uses=6 type=i64] [debug line = 94:2]
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_21_cast, !dbg !238 ; [#uses=1 type=i8*] [debug line = 94:2]
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_21_cast, !dbg !242 ; [#uses=1 type=i8*] [debug line = 95:10]
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_21_cast, !dbg !243 ; [#uses=1 type=i8*] [debug line = 96:10]
  %out_channels_ch1_addr = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_21_cast, !dbg !244 ; [#uses=1 type=i8*] [debug line = 103:10]
  %out_channels_ch2_addr = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_21_cast, !dbg !245 ; [#uses=1 type=i8*] [debug line = 104:10]
  %out_channels_ch3_addr = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_21_cast, !dbg !246 ; [#uses=1 type=i8*] [debug line = 105:10]
  %Y = load i8* %in_channels_ch1_addr, align 1, !dbg !238 ; [#uses=1 type=i8] [debug line = 94:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !247), !dbg !238 ; [debug line = 94:2] [debug variable = Y]
  %U = load i8* %in_channels_ch2_addr, align 1, !dbg !242 ; [#uses=1 type=i8] [debug line = 95:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !248), !dbg !242 ; [debug line = 95:10] [debug variable = U]
  %V = load i8* %in_channels_ch3_addr, align 1, !dbg !243 ; [#uses=1 type=i8] [debug line = 96:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !249), !dbg !243 ; [debug line = 96:10] [debug variable = V]
  %tmp_3_cast = zext i8 %Y to i9, !dbg !250       ; [#uses=1 type=i9] [debug line = 97:10]
  %C = add i9 -16, %tmp_3_cast, !dbg !250         ; [#uses=1 type=i9] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i9 %C}, i64 0, metadata !251), !dbg !250 ; [debug line = 97:10] [debug variable = C]
  %D = xor i8 %U, -128, !dbg !254                 ; [#uses=3 type=i8] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i8 %D}, i64 0, metadata !255), !dbg !254 ; [debug line = 98:10] [debug variable = D]
  %E = xor i8 %V, -128, !dbg !256                 ; [#uses=2 type=i8] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i8 %E}, i64 0, metadata !257), !dbg !256 ; [debug line = 99:10] [debug variable = E]
  %tmp_6_cast = sext i9 %C to i18, !dbg !258      ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_7 = mul i18 298, %tmp_6_cast, !dbg !258    ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_8_cast5 = sext i8 %E to i17, !dbg !259     ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp_8_cast = sext i8 %E to i18, !dbg !258      ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_9 = mul i18 409, %tmp_8_cast, !dbg !258    ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_3 = add i18 128, %tmp_7, !dbg !258         ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp_4 = add i18 %tmp_9, %tmp_3, !dbg !258      ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp_6 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_4, i32 16, i32 17), !dbg !258 ; [#uses=1 type=i2] [debug line = 100:10]
  %icmp = icmp eq i2 %tmp_6, 1, !dbg !258         ; [#uses=2 type=i1] [debug line = 100:10]
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_4, i32 17), !dbg !258 ; [#uses=1 type=i1] [debug line = 100:10]
  %phitmp = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_4, i32 8, i32 15), !dbg !258 ; [#uses=1 type=i8] [debug line = 100:10]
  %p_phitmp = select i1 %icmp, i8 -1, i8 0, !dbg !258 ; [#uses=1 type=i8] [debug line = 100:10]
  %tmp_10 = or i1 %icmp, %tmp_8, !dbg !258        ; [#uses=1 type=i1] [debug line = 100:10]
  %R = select i1 %tmp_10, i8 %p_phitmp, i8 %phitmp, !dbg !258 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !260), !dbg !258 ; [debug line = 100:10] [debug variable = R]
  %tmp_16_cast4_cast = sext i8 %D to i16, !dbg !259 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_11 = mul i16 -100, %tmp_16_cast4_cast, !dbg !259 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_11_cast = sext i16 %tmp_11 to i17, !dbg !259 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp_12 = mul i17 -208, %tmp_8_cast5, !dbg !259 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1 = add i17 %tmp_12, %tmp_11_cast, !dbg !259 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1_cast = sext i17 %tmp1 to i18, !dbg !259   ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp_13 = add i18 %tmp_3, %tmp1_cast, !dbg !259 ; [#uses=3 type=i18] [debug line = 101:10]
  %tmp_14 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_13, i32 16, i32 17), !dbg !259 ; [#uses=1 type=i2] [debug line = 101:10]
  %icmp1 = icmp eq i2 %tmp_14, 1, !dbg !259       ; [#uses=2 type=i1] [debug line = 101:10]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_13, i32 17), !dbg !259 ; [#uses=1 type=i1] [debug line = 101:10]
  %phitmp2 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_13, i32 8, i32 15), !dbg !259 ; [#uses=1 type=i8] [debug line = 101:10]
  %p_phitmp2 = select i1 %icmp1, i8 -1, i8 0, !dbg !259 ; [#uses=1 type=i8] [debug line = 101:10]
  %tmp_16 = or i1 %icmp1, %tmp_15, !dbg !259      ; [#uses=1 type=i1] [debug line = 101:10]
  %G = select i1 %tmp_16, i8 %p_phitmp2, i8 %phitmp2, !dbg !259 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !261), !dbg !259 ; [debug line = 101:10] [debug variable = G]
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8 %D, i9 0), !dbg !262 ; [#uses=1 type=i17] [debug line = 102:10]
  %p_shl_cast = sext i17 %p_shl to i19, !dbg !262 ; [#uses=1 type=i19] [debug line = 102:10]
  %p_shl1 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %D, i2 0), !dbg !262 ; [#uses=1 type=i10] [debug line = 102:10]
  %p_shl1_cast = sext i10 %p_shl1 to i18, !dbg !262 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2 = add i18 %tmp_3, %p_shl1_cast, !dbg !262 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2_cast = sext i18 %tmp2 to i19, !dbg !262   ; [#uses=1 type=i19] [debug line = 102:10]
  %tmp_17 = add i19 %p_shl_cast, %tmp2_cast, !dbg !262 ; [#uses=3 type=i19] [debug line = 102:10]
  %tmp_18 = call i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19 %tmp_17, i32 16, i32 18), !dbg !262 ; [#uses=1 type=i3] [debug line = 102:10]
  %icmp2 = icmp sgt i3 %tmp_18, 0, !dbg !262      ; [#uses=2 type=i1] [debug line = 102:10]
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i19.i32(i19 %tmp_17, i32 18), !dbg !262 ; [#uses=1 type=i1] [debug line = 102:10]
  %phitmp3 = call i8 @_ssdm_op_PartSelect.i8.i19.i32.i32(i19 %tmp_17, i32 8, i32 15), !dbg !262 ; [#uses=1 type=i8] [debug line = 102:10]
  %p_phitmp3 = select i1 %icmp2, i8 -1, i8 0, !dbg !262 ; [#uses=1 type=i8] [debug line = 102:10]
  %tmp_20 = or i1 %icmp2, %tmp_19, !dbg !262      ; [#uses=1 type=i1] [debug line = 102:10]
  %B = select i1 %tmp_20, i8 %p_phitmp3, i8 %phitmp3, !dbg !262 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !263), !dbg !262 ; [debug line = 102:10] [debug variable = B]
  store i8 %R, i8* %out_channels_ch1_addr, align 1, !dbg !244 ; [debug line = 103:10]
  store i8 %G, i8* %out_channels_ch2_addr, align 1, !dbg !245 ; [debug line = 104:10]
  store i8 %B, i8* %out_channels_ch3_addr, align 1, !dbg !246 ; [debug line = 105:10]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_2), !dbg !264 ; [#uses=0 type=i32] [debug line = 106:7]
  %y_1 = add i16 1, %y_mid2, !dbg !265            ; [#uses=1 type=i16] [debug line = 92:27]
  call void @llvm.dbg.value(metadata !{i16 %y_1}, i64 0, metadata !266), !dbg !265 ; [debug line = 92:27] [debug variable = y]
  br label %1, !dbg !265                          ; [debug line = 92:27]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !219), !dbg !217 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !215), !dbg !217 ; [debug line = 69:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_1, 0, !dbg !267 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read_1, 1, !dbg !267 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  ret { i16, i16 } %mrv_1, !dbg !267              ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @yuv_filter_rgb2yuv([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read11 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read) ; [#uses=3 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read11}, i64 0, metadata !268), !dbg !271 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read11}, i64 0, metadata !272), !dbg !274 ; [debug line = 31:16] [debug variable = out.height]
  %in_width_read_2 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read) ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_2}, i64 0, metadata !275), !dbg !271 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_2}, i64 0, metadata !276), !dbg !274 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !277), !dbg !271 ; [debug line = 30:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !278), !dbg !271 ; [debug line = 30:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !279), !dbg !271 ; [debug line = 30:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !275), !dbg !271 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !268), !dbg !271 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !280), !dbg !274 ; [debug line = 31:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !281), !dbg !274 ; [debug line = 31:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !282), !dbg !274 ; [debug line = 31:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !283), !dbg !285 ; [debug line = 43:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !286), !dbg !287 ; [debug line = 44:4] [debug variable = height]
  %cast = zext i16 %in_width_read_2 to i32        ; [#uses=1 type=i32]
  %cast1 = zext i16 %in_height_read11 to i32      ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %1, !dbg !288                          ; [debug line = 49:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i32 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %x = phi i16 [ 0, %0 ], [ %tmp_mid2_v, %.reset ] ; [#uses=2 type=i16]
  %y = phi i16 [ 0, %0 ], [ %y_2, %.reset ]       ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x_2}, i64 0, metadata !290), !dbg !291 ; [debug line = 49:23] [debug variable = x]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %x_2 = add i16 1, %x, !dbg !291                 ; [#uses=1 type=i16] [debug line = 49:23]
  call void @llvm.dbg.value(metadata !{i16 %x_2}, i64 0, metadata !290), !dbg !291 ; [debug line = 49:23] [debug variable = x]
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y_s)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond9 = icmp eq i16 %y, %in_height_read11, !dbg !292 ; [#uses=2 type=i1] [debug line = 52:12]
  %y_mid2 = select i1 %exitcond9, i16 0, i16 %y   ; [#uses=2 type=i16]
  %tmp_mid2_v = select i1 %exitcond9, i16 %x_2, i16 %x, !dbg !295 ; [#uses=3 type=i16] [debug line = 54:2]
  %tmp = trunc i16 %tmp_mid2_v to i13             ; [#uses=1 type=i13]
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_20 = trunc i16 %tmp_mid2_v to i15          ; [#uses=1 type=i15]
  %p_shl7_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_20, i8 0), !dbg !295 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_s = add i23 %p_shl_cast, %p_shl7_cast, !dbg !295 ; [#uses=1 type=i23] [debug line = 54:2]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind, !dbg !297 ; [debug line = 52:33]
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2), !dbg !297 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !298 ; [debug line = 53:1]
  %tmp_cast = zext i16 %y_mid2 to i23, !dbg !295  ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_22 = add i23 %tmp_cast, %tmp_s, !dbg !295  ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_24_cast = zext i23 %tmp_22 to i64, !dbg !295 ; [#uses=6 type=i64] [debug line = 54:2]
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_24_cast, !dbg !295 ; [#uses=1 type=i8*] [debug line = 54:2]
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_24_cast, !dbg !299 ; [#uses=1 type=i8*] [debug line = 55:10]
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_24_cast, !dbg !300 ; [#uses=1 type=i8*] [debug line = 56:10]
  %out_channels_ch1_addr = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_24_cast, !dbg !301 ; [#uses=1 type=i8*] [debug line = 60:10]
  %out_channels_ch2_addr = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_24_cast, !dbg !302 ; [#uses=1 type=i8*] [debug line = 61:10]
  %out_channels_ch3_addr = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_24_cast, !dbg !303 ; [#uses=1 type=i8*] [debug line = 62:10]
  %R = load i8* %in_channels_ch1_addr, align 1, !dbg !295 ; [#uses=4 type=i8] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !304), !dbg !295 ; [debug line = 54:2] [debug variable = R]
  %G = load i8* %in_channels_ch2_addr, align 1, !dbg !299 ; [#uses=3 type=i8] [debug line = 55:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !305), !dbg !299 ; [debug line = 55:10] [debug variable = G]
  %B = load i8* %in_channels_ch3_addr, align 1, !dbg !300 ; [#uses=4 type=i8] [debug line = 56:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !306), !dbg !300 ; [debug line = 56:10] [debug variable = B]
  %tmp_33_cast1 = zext i8 %R to i16, !dbg !307    ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_33_cast2 = zext i8 %R to i15, !dbg !307    ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl5 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R, i6 0), !dbg !307 ; [#uses=1 type=i14] [debug line = 57:10]
  %p_shl5_cast = zext i14 %p_shl5 to i15, !dbg !307 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R, i1 false), !dbg !307 ; [#uses=1 type=i9] [debug line = 57:10]
  %p_shl6_cast = zext i9 %p_shl6 to i15, !dbg !307 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp_35_cast1 = zext i8 %G to i16, !dbg !307    ; [#uses=2 type=i16] [debug line = 57:10]
  %tmp_35_cast2 = zext i8 %G to i9, !dbg !307     ; [#uses=1 type=i9] [debug line = 57:10]
  %p_shl4 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G, i7 0), !dbg !307 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl4_cast = zext i15 %p_shl4 to i16, !dbg !307 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_37_cast1 = zext i8 %B to i13, !dbg !307    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp_23 = mul i13 25, %tmp_37_cast1, !dbg !307  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp2 = add i15 %p_shl6_cast, %p_shl5_cast, !dbg !307 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp2_cast = zext i15 %tmp2 to i16, !dbg !307   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp1 = add i16 %tmp2_cast, %p_shl4_cast, !dbg !307 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp4 = add i9 128, %tmp_35_cast2, !dbg !307    ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp4_cast = zext i9 %tmp4 to i13, !dbg !307    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3 = add i13 %tmp4_cast, %tmp_23, !dbg !307  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3_cast = zext i13 %tmp3 to i16, !dbg !307   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_24 = add i16 %tmp3_cast, %tmp1, !dbg !307  ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_25 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_24, i32 8, i32 15), !dbg !307 ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 16, %tmp_25, !dbg !307              ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !308), !dbg !307 ; [debug line = 57:10] [debug variable = Y]
  %tmp_26 = mul i15 -38, %tmp_33_cast2, !dbg !309 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp_44_cast = sext i15 %tmp_26 to i16, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_27 = mul i16 -74, %tmp_35_cast1, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl2 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %B, i7 0), !dbg !309 ; [#uses=1 type=i15] [debug line = 58:10]
  %p_shl2_cast = zext i15 %p_shl2 to i16, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl3 = call i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8 %B, i4 0), !dbg !309 ; [#uses=2 type=i12] [debug line = 58:10]
  %p_shl3_cast9 = zext i12 %p_shl3 to i13, !dbg !309 ; [#uses=1 type=i13] [debug line = 58:10]
  %p_shl3_cast = zext i12 %p_shl3 to i16, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_28 = sub i16 %p_shl2_cast, %p_shl3_cast, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp5 = add i16 %tmp_44_cast, %tmp_27, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp6 = add i16 128, %tmp_28, !dbg !309         ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_29 = add i16 %tmp6, %tmp5, !dbg !309       ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_30 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_29, i32 8, i32 15), !dbg !309 ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp_30, -128, !dbg !309            ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !310), !dbg !309 ; [debug line = 58:10] [debug variable = U]
  %tmp_31 = mul i16 122, %tmp_33_cast1, !dbg !311 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_32 = mul i16 -94, %tmp_35_cast1, !dbg !311 ; [#uses=1 type=i16] [debug line = 59:10]
  %p_neg = sub i13 0, %p_shl3_cast9               ; [#uses=1 type=i13]
  %p_neg_cast = sext i13 %p_neg to i14            ; [#uses=1 type=i14]
  %p_shl1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %B, i1 false), !dbg !311 ; [#uses=1 type=i9] [debug line = 59:10]
  %p_shl1_cast = zext i9 %p_shl1 to i14, !dbg !311 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp_33 = sub i14 %p_neg_cast, %p_shl1_cast, !dbg !311 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp7 = add i16 %tmp_31, %tmp_32, !dbg !311     ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp8 = add i14 128, %tmp_33, !dbg !311         ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp8_cast = sext i14 %tmp8 to i16, !dbg !311   ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_34 = add i16 %tmp8_cast, %tmp7, !dbg !311  ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_35 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_34, i32 8, i32 15), !dbg !311 ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp_35, -128, !dbg !311            ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !312), !dbg !311 ; [debug line = 59:10] [debug variable = V]
  store i8 %Y, i8* %out_channels_ch1_addr, align 1, !dbg !301 ; [debug line = 60:10]
  store i8 %U, i8* %out_channels_ch2_addr, align 1, !dbg !302 ; [debug line = 61:10]
  store i8 %V, i8* %out_channels_ch3_addr, align 1, !dbg !303 ; [debug line = 62:10]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_21), !dbg !313 ; [#uses=0 type=i32] [debug line = 63:7]
  %y_2 = add i16 1, %y_mid2, !dbg !314            ; [#uses=1 type=i16] [debug line = 52:27]
  call void @llvm.dbg.value(metadata !{i16 %y_2}, i64 0, metadata !315), !dbg !314 ; [debug line = 52:27] [debug variable = y]
  br label %1, !dbg !314                          ; [debug line = 52:27]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !276), !dbg !274 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !272), !dbg !274 ; [debug line = 31:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_2, 0, !dbg !316 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read11, 1, !dbg !316 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  ret { i16, i16 } %mrv_1, !dbg !316              ; [debug line = 65:1]
}

; [#uses=3]
declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

; [#uses=3]
declare i18 @llvm.part.select.i18(i18, i32, i32) nounwind readnone

; [#uses=1]
declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

; [#uses=1]
declare i15 @llvm.part.select.i15(i15, i32, i32) nounwind readnone

; [#uses=1]
declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

; [#uses=1]
declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

; [#uses=103]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
define weak void @_ssdm_op_Write.ap_auto.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=13]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=2]
define weak i16 @_ssdm_op_Read.ap_auto.i16P(i16*) {
entry:
  %empty = load i16* %0                           ; [#uses=1 type=i16]
  ret i16 %empty
}

; [#uses=4]
define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_15 = trunc i19 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_15
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_16 = trunc i18 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_16
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_17 = trunc i16 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_17
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2) ; [#uses=1 type=i15]
  %empty_18 = trunc i15 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_18
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_19 = trunc i19 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_19
}

; [#uses=0]
define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_20 = trunc i11 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_20
}

; [#uses=2]
define weak i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_21 = trunc i18 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_21
}

; [#uses=0]
define weak i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2) ; [#uses=1 type=i10]
  %empty_22 = trunc i10 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_22
}

; [#uses=0]
declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
declare i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
define weak i11 @_ssdm_op_PartSelect.i11.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_23 = trunc i19 %empty to i11             ; [#uses=1 type=i11]
  ret i11 %empty_23
}

; [#uses=0]
define weak i10 @_ssdm_op_PartSelect.i10.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_24 = trunc i18 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_24
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i19.i32(i19, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i19                    ; [#uses=1 type=i19]
  %empty_25 = shl i19 1, %empty                   ; [#uses=1 type=i19]
  %empty_26 = and i19 %0, %empty_25               ; [#uses=1 type=i19]
  %empty_27 = icmp ne i19 %empty_26, 0            ; [#uses=1 type=i1]
  ret i1 %empty_27
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18                    ; [#uses=1 type=i18]
  %empty_28 = shl i18 1, %empty                   ; [#uses=1 type=i18]
  %empty_29 = and i18 %0, %empty_28               ; [#uses=1 type=i18]
  %empty_30 = icmp ne i18 %empty_29, 0            ; [#uses=1 type=i1]
  ret i1 %empty_30
}

; [#uses=2]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_31 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_32 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_33 = or i9 %empty_32, %empty_31          ; [#uses=1 type=i9]
  ret i9 %empty_33
}

; [#uses=3]
define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23                     ; [#uses=1 type=i23]
  %empty_34 = zext i8 %1 to i23                   ; [#uses=1 type=i23]
  %empty_35 = shl i23 %empty, 8                   ; [#uses=1 type=i23]
  %empty_36 = or i23 %empty_35, %empty_34         ; [#uses=1 type=i23]
  ret i23 %empty_36
}

; [#uses=3]
define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23                     ; [#uses=1 type=i23]
  %empty_37 = zext i10 %1 to i23                  ; [#uses=1 type=i23]
  %empty_38 = shl i23 %empty, 10                  ; [#uses=1 type=i23]
  %empty_39 = or i23 %empty_38, %empty_37         ; [#uses=1 type=i23]
  ret i23 %empty_39
}

; [#uses=1]
define weak i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %0 to i17                      ; [#uses=1 type=i17]
  %empty_40 = zext i9 %1 to i17                   ; [#uses=1 type=i17]
  %empty_41 = shl i17 %empty, 9                   ; [#uses=1 type=i17]
  %empty_42 = or i17 %empty_41, %empty_40         ; [#uses=1 type=i17]
  ret i17 %empty_42
}

; [#uses=2]
define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15                      ; [#uses=1 type=i15]
  %empty_43 = zext i7 %1 to i15                   ; [#uses=1 type=i15]
  %empty_44 = shl i15 %empty, 7                   ; [#uses=1 type=i15]
  %empty_45 = or i15 %empty_44, %empty_43         ; [#uses=1 type=i15]
  ret i15 %empty_45
}

; [#uses=1]
define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14                      ; [#uses=1 type=i14]
  %empty_46 = zext i6 %1 to i14                   ; [#uses=1 type=i14]
  %empty_47 = shl i14 %empty, 6                   ; [#uses=1 type=i14]
  %empty_48 = or i14 %empty_47, %empty_46         ; [#uses=1 type=i14]
  ret i14 %empty_48
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %0 to i12                      ; [#uses=1 type=i12]
  %empty_49 = zext i4 %1 to i12                   ; [#uses=1 type=i12]
  %empty_50 = shl i12 %empty, 4                   ; [#uses=1 type=i12]
  %empty_51 = or i12 %empty_50, %empty_49         ; [#uses=1 type=i12]
  ret i12 %empty_51
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10                      ; [#uses=1 type=i10]
  %empty_52 = zext i2 %1 to i10                   ; [#uses=1 type=i10]
  %empty_53 = shl i10 %empty, 2                   ; [#uses=1 type=i10]
  %empty_54 = or i10 %empty_53, %empty_52         ; [#uses=1 type=i10]
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
!59 = metadata !{i32 786689, metadata !60, metadata !"V_scale", metadata !61, i32 83886089, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786478, i32 0, metadata !61, metadata !"yuv_filter", metadata !"yuv_filter", metadata !"", metadata !61, i32 4, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !87, i32 11} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786473, metadata !"yuv_filter.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_performance", null} ; [ DW_TAG_file_type ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{null, metadata !64, metadata !64, metadata !86, metadata !86, metadata !86}
!64 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 786454, null, metadata !"image_t", metadata !61, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ]
!66 = metadata !{i32 786451, null, metadata !"", metadata !67, i32 26, i64 58982432, i64 16, i32 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!67 = metadata !{i32 786473, metadata !"./image_aux.h", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_performance", null} ; [ DW_TAG_file_type ]
!68 = metadata !{metadata !69, metadata !82, metadata !85}
!69 = metadata !{i32 786445, metadata !66, metadata !"channels", metadata !67, i32 27, i64 58982400, i64 8, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ]
!70 = metadata !{i32 786454, null, metadata !"channel_t", metadata !67, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ]
!71 = metadata !{i32 786451, null, metadata !"", metadata !67, i32 20, i64 58982400, i64 8, i32 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!72 = metadata !{metadata !73, metadata !80, metadata !81}
!73 = metadata !{i32 786445, metadata !71, metadata !"ch1", metadata !67, i32 21, i64 19660800, i64 8, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ]
!74 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 19660800, i64 8, i32 0, i32 0, metadata !75, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ]
!75 = metadata !{i32 786454, null, metadata !"image_pix_t", metadata !67, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ]
!76 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!77 = metadata !{metadata !78, metadata !79}
!78 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!79 = metadata !{i32 786465, i64 0, i64 1279}     ; [ DW_TAG_subrange_type ]
!80 = metadata !{i32 786445, metadata !71, metadata !"ch2", metadata !67, i32 22, i64 19660800, i64 8, i64 19660800, i32 0, metadata !74} ; [ DW_TAG_member ]
!81 = metadata !{i32 786445, metadata !71, metadata !"ch3", metadata !67, i32 23, i64 19660800, i64 8, i64 39321600, i32 0, metadata !74} ; [ DW_TAG_member ]
!82 = metadata !{i32 786445, metadata !66, metadata !"width", metadata !67, i32 28, i64 16, i64 16, i64 58982400, i32 0, metadata !83} ; [ DW_TAG_member ]
!83 = metadata !{i32 786454, null, metadata !"image_dim_t", metadata !67, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ]
!84 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 786445, metadata !66, metadata !"height", metadata !67, i32 29, i64 16, i64 16, i64 58982416, i32 0, metadata !83} ; [ DW_TAG_member ]
!86 = metadata !{i32 786454, null, metadata !"yuv_scale_t", metadata !61, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!89 = metadata !{i32 9, i32 19, metadata !60, null}
!90 = metadata !{i32 786689, metadata !91, metadata !"V_scale", metadata !61, i32 83886195, metadata !86, i32 0, metadata !92} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 786478, i32 0, metadata !61, metadata !"yuv_scale", metadata !"yuv_scale", metadata !"", metadata !61, i32 110, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !87, i32 117} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 24, i32 4, metadata !93, null}
!93 = metadata !{i32 786443, metadata !60, i32 11, i32 1, metadata !61, i32 0} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 115, i32 19, metadata !91, metadata !92}
!95 = metadata !{i32 786689, metadata !60, metadata !"U_scale", metadata !61, i32 67108872, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 8, i32 19, metadata !60, null}
!97 = metadata !{i32 786689, metadata !91, metadata !"U_scale", metadata !61, i32 67108978, metadata !86, i32 0, metadata !92} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 114, i32 19, metadata !91, metadata !92}
!99 = metadata !{i32 786689, metadata !60, metadata !"Y_scale", metadata !61, i32 50331655, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 7, i32 19, metadata !60, null}
!101 = metadata !{i32 786689, metadata !91, metadata !"Y_scale", metadata !61, i32 50331761, metadata !86, i32 0, metadata !92} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 113, i32 19, metadata !91, metadata !92}
!103 = metadata !{i32 790531, metadata !104, metadata !"in.channels.ch1", null, i32 5, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!104 = metadata !{i32 786689, metadata !60, metadata !"in", metadata !61, i32 16777221, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ]
!106 = metadata !{i32 786452, null, metadata !"", metadata !67, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786452, null, metadata !"", metadata !67, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!109 = metadata !{metadata !73}
!110 = metadata !{i32 5, i32 16, metadata !60, null}
!111 = metadata !{i32 790531, metadata !104, metadata !"in.channels.ch2", null, i32 5, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!112 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ]
!113 = metadata !{i32 786452, null, metadata !"", metadata !67, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!114 = metadata !{metadata !115}
!115 = metadata !{i32 786452, null, metadata !"", metadata !67, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!116 = metadata !{metadata !80}
!117 = metadata !{i32 790531, metadata !104, metadata !"in.channels.ch3", null, i32 5, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!118 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ]
!119 = metadata !{i32 786452, null, metadata !"", metadata !67, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!120 = metadata !{metadata !121}
!121 = metadata !{i32 786452, null, metadata !"", metadata !67, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!122 = metadata !{metadata !81}
!123 = metadata !{i32 790531, metadata !104, metadata !"in.width", null, i32 5, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!124 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ]
!125 = metadata !{i32 786452, null, metadata !"", metadata !67, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!126 = metadata !{metadata !82}
!127 = metadata !{i32 790531, metadata !104, metadata !"in.height", null, i32 5, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!128 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ]
!129 = metadata !{i32 786452, null, metadata !"", metadata !67, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!130 = metadata !{metadata !85}
!131 = metadata !{i32 790531, metadata !132, metadata !"out.channels.ch1", null, i32 6, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!132 = metadata !{i32 786689, metadata !60, metadata !"out", metadata !61, i32 33554438, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 6, i32 16, metadata !60, null}
!134 = metadata !{i32 790531, metadata !132, metadata !"out.channels.ch2", null, i32 6, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!135 = metadata !{i32 790531, metadata !132, metadata !"out.channels.ch3", null, i32 6, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!136 = metadata !{i32 790531, metadata !132, metadata !"out.width", null, i32 6, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!137 = metadata !{i32 790531, metadata !132, metadata !"out.height", null, i32 6, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!138 = metadata !{i32 790529, metadata !139, metadata !"_yuv.channels.ch1", null, i32 17, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!139 = metadata !{i32 786688, metadata !93, metadata !"_yuv", metadata !61, i32 17, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 17, i32 12, metadata !93, null}
!141 = metadata !{i32 790529, metadata !139, metadata !"_yuv.channels.ch2", null, i32 17, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!142 = metadata !{i32 790529, metadata !139, metadata !"_yuv.channels.ch3", null, i32 17, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!143 = metadata !{i32 790529, metadata !144, metadata !"_scale.channels.ch1", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!144 = metadata !{i32 786688, metadata !93, metadata !"_scale", metadata !61, i32 18, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 18, i32 12, metadata !93, null}
!146 = metadata !{i32 790529, metadata !144, metadata !"_scale.channels.ch2", null, i32 18, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!147 = metadata !{i32 790529, metadata !144, metadata !"_scale.channels.ch3", null, i32 18, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!148 = metadata !{i32 790529, metadata !149, metadata !"yuv.channels.ch1", null, i32 19, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!149 = metadata !{i32 786688, metadata !93, metadata !"yuv", metadata !61, i32 19, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 19, i32 24, metadata !93, null}
!151 = metadata !{i32 790529, metadata !149, metadata !"yuv.channels.ch2", null, i32 19, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!152 = metadata !{i32 790529, metadata !149, metadata !"yuv.channels.ch3", null, i32 19, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!153 = metadata !{i32 790529, metadata !154, metadata !"scale.channels.ch1", null, i32 20, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!154 = metadata !{i32 786688, metadata !93, metadata !"scale", metadata !61, i32 20, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 20, i32 28, metadata !93, null}
!156 = metadata !{i32 790529, metadata !154, metadata !"scale.channels.ch2", null, i32 20, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!157 = metadata !{i32 790529, metadata !154, metadata !"scale.channels.ch3", null, i32 20, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!158 = metadata !{i32 23, i32 4, metadata !93, null}
!159 = metadata !{i32 790529, metadata !139, metadata !"_yuv.width", null, i32 17, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!160 = metadata !{i32 790529, metadata !139, metadata !"_yuv.height", null, i32 17, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!161 = metadata !{i32 790531, metadata !162, metadata !"in.channels.ch1", null, i32 111, metadata !105, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field ]
!162 = metadata !{i32 786689, metadata !91, metadata !"in", metadata !61, i32 16777327, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 111, i32 16, metadata !91, metadata !92}
!164 = metadata !{i32 790531, metadata !162, metadata !"in.channels.ch2", null, i32 111, metadata !112, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field ]
!165 = metadata !{i32 790531, metadata !162, metadata !"in.channels.ch3", null, i32 111, metadata !118, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field ]
!166 = metadata !{i32 790533, metadata !162, metadata !"in.width", null, i32 111, metadata !124, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field_ro ]
!167 = metadata !{i32 790533, metadata !162, metadata !"in.height", null, i32 111, metadata !128, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field_ro ]
!168 = metadata !{i32 790531, metadata !169, metadata !"out.channels.ch1", null, i32 112, metadata !105, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field ]
!169 = metadata !{i32 786689, metadata !91, metadata !"out", metadata !61, i32 33554544, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 112, i32 16, metadata !91, metadata !92}
!171 = metadata !{i32 790531, metadata !169, metadata !"out.channels.ch2", null, i32 112, metadata !112, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field ]
!172 = metadata !{i32 790531, metadata !169, metadata !"out.channels.ch3", null, i32 112, metadata !118, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field ]
!173 = metadata !{i32 786688, metadata !174, metadata !"width", metadata !61, i32 119, metadata !83, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 786443, metadata !91, i32 117, i32 1, metadata !61, i32 11} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 123, i32 4, metadata !174, metadata !92}
!176 = metadata !{i32 786688, metadata !174, metadata !"height", metadata !61, i32 119, metadata !83, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 124, i32 4, metadata !174, metadata !92}
!178 = metadata !{i32 138, i32 10, metadata !179, metadata !92}
!179 = metadata !{i32 786443, metadata !180, i32 132, i32 32, metadata !61, i32 15} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 786443, metadata !181, i32 132, i32 7, metadata !61, i32 14} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786443, metadata !182, i32 129, i32 28, metadata !61, i32 13} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 786443, metadata !174, i32 129, i32 4, metadata !61, i32 12} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 139, i32 10, metadata !179, metadata !92}
!184 = metadata !{i32 129, i32 9, metadata !182, metadata !92}
!185 = metadata !{i32 786688, metadata !174, metadata !"x", metadata !61, i32 118, metadata !83, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 129, i32 23, metadata !182, metadata !92}
!187 = metadata !{i32 132, i32 12, metadata !180, metadata !92}
!188 = metadata !{i32 134, i32 2, metadata !179, metadata !92}
!189 = metadata !{i32 141, i32 10, metadata !179, metadata !92}
!190 = metadata !{i32 132, i32 33, metadata !179, metadata !92}
!191 = metadata !{i32 133, i32 1, metadata !179, metadata !92}
!192 = metadata !{i32 142, i32 10, metadata !179, metadata !92}
!193 = metadata !{i32 135, i32 10, metadata !179, metadata !92}
!194 = metadata !{i32 136, i32 10, metadata !179, metadata !92}
!195 = metadata !{i32 140, i32 10, metadata !179, metadata !92}
!196 = metadata !{i32 786688, metadata !174, metadata !"Y", metadata !61, i32 120, metadata !75, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 786688, metadata !174, metadata !"U", metadata !61, i32 120, metadata !75, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 786688, metadata !174, metadata !"V", metadata !61, i32 120, metadata !75, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 137, i32 10, metadata !179, metadata !92}
!200 = metadata !{i32 143, i32 7, metadata !179, metadata !92}
!201 = metadata !{i32 132, i32 27, metadata !180, metadata !92}
!202 = metadata !{i32 786688, metadata !174, metadata !"y", metadata !61, i32 118, metadata !83, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 790535, metadata !169, metadata !"out.width", null, i32 112, metadata !124, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field_wo ]
!204 = metadata !{i32 790535, metadata !169, metadata !"out.height", null, i32 112, metadata !128, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field_wo ]
!205 = metadata !{i32 790529, metadata !144, metadata !"_scale.width", null, i32 18, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!206 = metadata !{i32 790529, metadata !144, metadata !"_scale.height", null, i32 18, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!207 = metadata !{i32 25, i32 4, metadata !93, null}
!208 = metadata !{i32 26, i32 1, metadata !93, null}
!209 = metadata !{i32 790533, metadata !210, metadata !"in.height", null, i32 68, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!210 = metadata !{i32 786689, metadata !211, metadata !"in", metadata !61, i32 16777284, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!211 = metadata !{i32 786478, i32 0, metadata !61, metadata !"yuv2rgb", metadata !"yuv2rgb", metadata !"", metadata !61, i32 67, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !87, i32 71} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!213 = metadata !{null, metadata !64, metadata !64}
!214 = metadata !{i32 68, i32 16, metadata !211, null}
!215 = metadata !{i32 790535, metadata !216, metadata !"out.height", null, i32 69, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!216 = metadata !{i32 786689, metadata !211, metadata !"out", metadata !61, i32 33554501, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!217 = metadata !{i32 69, i32 16, metadata !211, null}
!218 = metadata !{i32 790533, metadata !210, metadata !"in.width", null, i32 68, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!219 = metadata !{i32 790535, metadata !216, metadata !"out.width", null, i32 69, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!220 = metadata !{i32 790531, metadata !210, metadata !"in.channels.ch1", null, i32 68, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!221 = metadata !{i32 790531, metadata !210, metadata !"in.channels.ch2", null, i32 68, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!222 = metadata !{i32 790531, metadata !210, metadata !"in.channels.ch3", null, i32 68, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!223 = metadata !{i32 790531, metadata !216, metadata !"out.channels.ch1", null, i32 69, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!224 = metadata !{i32 790531, metadata !216, metadata !"out.channels.ch2", null, i32 69, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!225 = metadata !{i32 790531, metadata !216, metadata !"out.channels.ch3", null, i32 69, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!226 = metadata !{i32 786688, metadata !227, metadata !"width", metadata !61, i32 73, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 786443, metadata !211, i32 71, i32 1, metadata !61, i32 6} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 83, i32 4, metadata !227, null}
!229 = metadata !{i32 786688, metadata !227, metadata !"height", metadata !61, i32 73, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 84, i32 4, metadata !227, null}
!231 = metadata !{i32 89, i32 9, metadata !232, null}
!232 = metadata !{i32 786443, metadata !227, i32 89, i32 4, metadata !61, i32 7} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 786688, metadata !227, metadata !"x", metadata !61, i32 72, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 89, i32 23, metadata !232, null}
!235 = metadata !{i32 92, i32 12, metadata !236, null}
!236 = metadata !{i32 786443, metadata !237, i32 92, i32 7, metadata !61, i32 9} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 786443, metadata !232, i32 89, i32 28, metadata !61, i32 8} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 94, i32 2, metadata !239, null}
!239 = metadata !{i32 786443, metadata !236, i32 92, i32 32, metadata !61, i32 10} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 92, i32 33, metadata !239, null}
!241 = metadata !{i32 93, i32 1, metadata !239, null}
!242 = metadata !{i32 95, i32 10, metadata !239, null}
!243 = metadata !{i32 96, i32 10, metadata !239, null}
!244 = metadata !{i32 103, i32 10, metadata !239, null}
!245 = metadata !{i32 104, i32 10, metadata !239, null}
!246 = metadata !{i32 105, i32 10, metadata !239, null}
!247 = metadata !{i32 786688, metadata !227, metadata !"Y", metadata !61, i32 75, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 786688, metadata !227, metadata !"U", metadata !61, i32 75, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 786688, metadata !227, metadata !"V", metadata !61, i32 75, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 97, i32 10, metadata !239, null}
!251 = metadata !{i32 786688, metadata !227, metadata !"C", metadata !61, i32 76, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !61, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !253} ; [ DW_TAG_typedef ]
!253 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!254 = metadata !{i32 98, i32 10, metadata !239, null}
!255 = metadata !{i32 786688, metadata !227, metadata !"D", metadata !61, i32 76, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 99, i32 10, metadata !239, null}
!257 = metadata !{i32 786688, metadata !227, metadata !"E", metadata !61, i32 76, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 100, i32 10, metadata !239, null}
!259 = metadata !{i32 101, i32 10, metadata !239, null}
!260 = metadata !{i32 786688, metadata !227, metadata !"R", metadata !61, i32 74, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 786688, metadata !227, metadata !"G", metadata !61, i32 74, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 102, i32 10, metadata !239, null}
!263 = metadata !{i32 786688, metadata !227, metadata !"B", metadata !61, i32 74, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 106, i32 7, metadata !239, null}
!265 = metadata !{i32 92, i32 27, metadata !236, null}
!266 = metadata !{i32 786688, metadata !227, metadata !"y", metadata !61, i32 72, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!267 = metadata !{i32 108, i32 1, metadata !227, null}
!268 = metadata !{i32 790533, metadata !269, metadata !"in.height", null, i32 30, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!269 = metadata !{i32 786689, metadata !270, metadata !"in", metadata !61, i32 16777246, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!270 = metadata !{i32 786478, i32 0, metadata !61, metadata !"rgb2yuv", metadata !"rgb2yuv", metadata !"", metadata !61, i32 29, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !87, i32 33} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 30, i32 16, metadata !270, null}
!272 = metadata !{i32 790535, metadata !273, metadata !"out.height", null, i32 31, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!273 = metadata !{i32 786689, metadata !270, metadata !"out", metadata !61, i32 33554463, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!274 = metadata !{i32 31, i32 16, metadata !270, null}
!275 = metadata !{i32 790533, metadata !269, metadata !"in.width", null, i32 30, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!276 = metadata !{i32 790535, metadata !273, metadata !"out.width", null, i32 31, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!277 = metadata !{i32 790531, metadata !269, metadata !"in.channels.ch1", null, i32 30, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!278 = metadata !{i32 790531, metadata !269, metadata !"in.channels.ch2", null, i32 30, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!279 = metadata !{i32 790531, metadata !269, metadata !"in.channels.ch3", null, i32 30, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!280 = metadata !{i32 790531, metadata !273, metadata !"out.channels.ch1", null, i32 31, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!281 = metadata !{i32 790531, metadata !273, metadata !"out.channels.ch2", null, i32 31, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!282 = metadata !{i32 790531, metadata !273, metadata !"out.channels.ch3", null, i32 31, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!283 = metadata !{i32 786688, metadata !284, metadata !"width", metadata !61, i32 35, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 786443, metadata !270, i32 33, i32 1, metadata !61, i32 1} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 43, i32 4, metadata !284, null}
!286 = metadata !{i32 786688, metadata !284, metadata !"height", metadata !61, i32 35, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!287 = metadata !{i32 44, i32 4, metadata !284, null}
!288 = metadata !{i32 49, i32 9, metadata !289, null}
!289 = metadata !{i32 786443, metadata !284, i32 49, i32 4, metadata !61, i32 2} ; [ DW_TAG_lexical_block ]
!290 = metadata !{i32 786688, metadata !284, metadata !"x", metadata !61, i32 34, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!291 = metadata !{i32 49, i32 23, metadata !289, null}
!292 = metadata !{i32 52, i32 12, metadata !293, null}
!293 = metadata !{i32 786443, metadata !294, i32 52, i32 7, metadata !61, i32 4} ; [ DW_TAG_lexical_block ]
!294 = metadata !{i32 786443, metadata !289, i32 49, i32 28, metadata !61, i32 3} ; [ DW_TAG_lexical_block ]
!295 = metadata !{i32 54, i32 2, metadata !296, null}
!296 = metadata !{i32 786443, metadata !293, i32 52, i32 32, metadata !61, i32 5} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 52, i32 33, metadata !296, null}
!298 = metadata !{i32 53, i32 1, metadata !296, null}
!299 = metadata !{i32 55, i32 10, metadata !296, null}
!300 = metadata !{i32 56, i32 10, metadata !296, null}
!301 = metadata !{i32 60, i32 10, metadata !296, null}
!302 = metadata !{i32 61, i32 10, metadata !296, null}
!303 = metadata !{i32 62, i32 10, metadata !296, null}
!304 = metadata !{i32 786688, metadata !284, metadata !"R", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 786688, metadata !284, metadata !"G", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!306 = metadata !{i32 786688, metadata !284, metadata !"B", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!307 = metadata !{i32 57, i32 10, metadata !296, null}
!308 = metadata !{i32 786688, metadata !284, metadata !"Y", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!309 = metadata !{i32 58, i32 10, metadata !296, null}
!310 = metadata !{i32 786688, metadata !284, metadata !"U", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!311 = metadata !{i32 59, i32 10, metadata !296, null}
!312 = metadata !{i32 786688, metadata !284, metadata !"V", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!313 = metadata !{i32 63, i32 7, metadata !296, null}
!314 = metadata !{i32 52, i32 27, metadata !293, null}
!315 = metadata !{i32 786688, metadata !284, metadata !"y", metadata !61, i32 34, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!316 = metadata !{i32 65, i32 1, metadata !284, null}
