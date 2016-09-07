; ModuleID = 'C:/training/hls/labs/improve_performance/yuv_filter_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@yuv_filter_str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@p_str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=3 type=[17 x i8]*]
@p_str5 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_X\00", align 1 ; [#uses=3 type=[17 x i8]*]
@p_str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str3 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]

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
  %p_yuv_height = extractvalue { i16, i16 } %call_ret, 1, !dbg !158 ; [#uses=2 type=i16] [debug line = 23:4]
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
  br label %1, !dbg !184                          ; [debug line = 129:9@24:4]

; <label>:1                                       ; preds = %5, %0
  %x_i = phi i16 [ 0, %0 ], [ %x, %5 ]            ; [#uses=4 type=i16]
  %exitcond1_i = icmp eq i16 %x_i, %p_yuv_width, !dbg !184 ; [#uses=1 type=i1] [debug line = 129:9@24:4]
  %x = add i16 %x_i, 1, !dbg !185                 ; [#uses=1 type=i16] [debug line = 129:23@24:4]
  br i1 %exitcond1_i, label %yuv_scale.exit, label %2, !dbg !184 ; [debug line = 129:9@24:4]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str5) nounwind, !dbg !186 ; [debug line = 129:29@24:4]
  %tmp_13_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str5), !dbg !186 ; [#uses=1 type=i32] [debug line = 129:29@24:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @p_str1) nounwind, !dbg !187 ; [debug line = 130:1@24:4]
  %tmp = trunc i16 %x_i to i13                    ; [#uses=1 type=i13]
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_1 = trunc i16 %x_i to i15                  ; [#uses=1 type=i15]
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_1, i8 0), !dbg !188 ; [#uses=1 type=i23] [debug line = 136:10@24:4]
  %tmp_2 = add i23 %p_shl_cast, %p_shl3_cast, !dbg !188 ; [#uses=1 type=i23] [debug line = 136:10@24:4]
  br label %3, !dbg !189                          ; [debug line = 132:12@24:4]

; <label>:3                                       ; preds = %4, %2
  %y_i = phi i16 [ 0, %2 ], [ %y, %4 ]            ; [#uses=3 type=i16]
  %exitcond_i = icmp eq i16 %y_i, %p_yuv_height, !dbg !189 ; [#uses=1 type=i1] [debug line = 132:12@24:4]
  %y = add i16 %y_i, 1, !dbg !190                 ; [#uses=1 type=i16] [debug line = 132:27@24:4]
  br i1 %exitcond_i, label %5, label %4, !dbg !189 ; [debug line = 132:12@24:4]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str6) nounwind, !dbg !191 ; [debug line = 132:33@24:4]
  %tmp_14_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str6), !dbg !191 ; [#uses=1 type=i32] [debug line = 132:33@24:4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @p_str1) nounwind, !dbg !192 ; [debug line = 133:1@24:4]
  %tmp_5_i_cast = zext i16 %y_i to i23, !dbg !188 ; [#uses=1 type=i23] [debug line = 136:10@24:4]
  %tmp_3 = add i23 %tmp_2, %tmp_5_i_cast, !dbg !188 ; [#uses=1 type=i23] [debug line = 136:10@24:4]
  %tmp_3_cast = zext i23 %tmp_3 to i64, !dbg !188 ; [#uses=6 type=i64] [debug line = 136:10@24:4]
  %yuv_channels_ch3_addr = getelementptr [2457600 x i8]* %p_yuv_channels_ch3, i64 0, i64 %tmp_3_cast, !dbg !188 ; [#uses=1 type=i8*] [debug line = 136:10@24:4]
  %scale_channels_ch3_addr = getelementptr [2457600 x i8]* %p_scale_channels_ch3, i64 0, i64 %tmp_3_cast, !dbg !193 ; [#uses=1 type=i8*] [debug line = 142:10@24:4]
  %scale_channels_ch1_addr = getelementptr [2457600 x i8]* %p_scale_channels_ch1, i64 0, i64 %tmp_3_cast, !dbg !194 ; [#uses=1 type=i8*] [debug line = 140:10@24:4]
  %scale_channels_ch2_addr = getelementptr [2457600 x i8]* %p_scale_channels_ch2, i64 0, i64 %tmp_3_cast, !dbg !195 ; [#uses=1 type=i8*] [debug line = 141:10@24:4]
  %yuv_channels_ch1_addr = getelementptr [2457600 x i8]* %p_yuv_channels_ch1, i64 0, i64 %tmp_3_cast, !dbg !196 ; [#uses=1 type=i8*] [debug line = 134:2@24:4]
  %yuv_channels_ch2_addr = getelementptr [2457600 x i8]* %p_yuv_channels_ch2, i64 0, i64 %tmp_3_cast, !dbg !197 ; [#uses=1 type=i8*] [debug line = 135:10@24:4]
  %Y = load i8* %yuv_channels_ch1_addr, align 1, !dbg !196 ; [#uses=1 type=i8] [debug line = 134:2@24:4]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !198), !dbg !196 ; [debug line = 134:2@24:4] [debug variable = Y]
  %U = load i8* %yuv_channels_ch2_addr, align 1, !dbg !197 ; [#uses=1 type=i8] [debug line = 135:10@24:4]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !199), !dbg !197 ; [debug line = 135:10@24:4] [debug variable = U]
  %V = load i8* %yuv_channels_ch3_addr, align 1, !dbg !188 ; [#uses=1 type=i8] [debug line = 136:10@24:4]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !200), !dbg !188 ; [debug line = 136:10@24:4] [debug variable = V]
  %tmp_6_i_cast = zext i8 %Y to i15, !dbg !201    ; [#uses=1 type=i15] [debug line = 137:10@24:4]
  %tmp_7_i = mul i15 %tmp_i_cast, %tmp_6_i_cast, !dbg !201 ; [#uses=1 type=i15] [debug line = 137:10@24:4]
  %tmp_9_i_cast = zext i8 %U to i15, !dbg !178    ; [#uses=1 type=i15] [debug line = 138:10@24:4]
  %tmp_i = mul i15 %tmp_1_i_cast, %tmp_9_i_cast, !dbg !178 ; [#uses=1 type=i15] [debug line = 138:10@24:4]
  %tmp_4_i_cast = zext i8 %V to i15, !dbg !183    ; [#uses=1 type=i15] [debug line = 139:10@24:4]
  %tmp_8_i = mul i15 %tmp_2_i_cast, %tmp_4_i_cast, !dbg !183 ; [#uses=1 type=i15] [debug line = 139:10@24:4]
  %tmp_10_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_7_i, i32 7, i32 14), !dbg !194 ; [#uses=1 type=i8] [debug line = 140:10@24:4]
  store i8 %tmp_10_i, i8* %scale_channels_ch1_addr, align 1, !dbg !194 ; [debug line = 140:10@24:4]
  %tmp_11_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_i, i32 7, i32 14), !dbg !195 ; [#uses=1 type=i8] [debug line = 141:10@24:4]
  store i8 %tmp_11_i, i8* %scale_channels_ch2_addr, align 1, !dbg !195 ; [debug line = 141:10@24:4]
  %tmp_12_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_8_i, i32 7, i32 14), !dbg !193 ; [#uses=1 type=i8] [debug line = 142:10@24:4]
  store i8 %tmp_12_i, i8* %scale_channels_ch3_addr, align 1, !dbg !193 ; [debug line = 142:10@24:4]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str6, i32 %tmp_14_i), !dbg !202 ; [#uses=0 type=i32] [debug line = 143:7@24:4]
  call void @llvm.dbg.value(metadata !{i16 %y}, i64 0, metadata !203), !dbg !190 ; [debug line = 132:27@24:4] [debug variable = y]
  br label %3, !dbg !190                          ; [debug line = 132:27@24:4]

; <label>:5                                       ; preds = %3
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str5, i32 %tmp_13_i), !dbg !204 ; [#uses=0 type=i32] [debug line = 144:4@24:4]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !205), !dbg !185 ; [debug line = 129:23@24:4] [debug variable = x]
  br label %1, !dbg !185                          ; [debug line = 129:23@24:4]

yuv_scale.exit:                                   ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_width}, i64 0, metadata !206), !dbg !170 ; [debug line = 112:16@24:4] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_height}, i64 0, metadata !207), !dbg !170 ; [debug line = 112:16@24:4] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_width}, i64 0, metadata !208), !dbg !92 ; [debug line = 24:4] [debug variable = _scale.width]
  call void @llvm.dbg.value(metadata !{i16 %p_yuv_height}, i64 0, metadata !209), !dbg !92 ; [debug line = 24:4] [debug variable = _scale.height]
  %call_ret1 = call fastcc { i16, i16 } @yuv_filter_yuv2rgb([2457600 x i8]* %p_scale_channels_ch1, [2457600 x i8]* %p_scale_channels_ch2, [2457600 x i8]* %p_scale_channels_ch3, i16 %p_yuv_width, i16 %p_yuv_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3), !dbg !210 ; [#uses=2 type={ i16, i16 }] [debug line = 25:4]
  %out_width_ret = extractvalue { i16, i16 } %call_ret1, 0, !dbg !210 ; [#uses=1 type=i16] [debug line = 25:4]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_width, i16 %out_width_ret), !dbg !210 ; [debug line = 25:4]
  %out_height_ret = extractvalue { i16, i16 } %call_ret1, 1, !dbg !210 ; [#uses=1 type=i16] [debug line = 25:4]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_height, i16 %out_height_ret), !dbg !210 ; [debug line = 25:4]
  ret void, !dbg !211                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @yuv_filter_yuv2rgb([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read) ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_1}, i64 0, metadata !212), !dbg !217 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_1}, i64 0, metadata !218), !dbg !220 ; [debug line = 69:16] [debug variable = out.height]
  %in_width_read_1 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read) ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_1}, i64 0, metadata !221), !dbg !217 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_1}, i64 0, metadata !222), !dbg !220 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !223), !dbg !217 ; [debug line = 68:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !224), !dbg !217 ; [debug line = 68:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !225), !dbg !217 ; [debug line = 68:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !221), !dbg !217 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !212), !dbg !217 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !226), !dbg !220 ; [debug line = 69:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !227), !dbg !220 ; [debug line = 69:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !228), !dbg !220 ; [debug line = 69:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !229), !dbg !231 ; [debug line = 83:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !232), !dbg !233 ; [debug line = 84:4] [debug variable = height]
  br label %1, !dbg !234                          ; [debug line = 89:9]

; <label>:1                                       ; preds = %4, %0
  %x = phi i16 [ 0, %0 ], [ %x_1, %4 ]            ; [#uses=4 type=i16]
  %exitcond1 = icmp eq i16 %x, %in_width_read_1, !dbg !234 ; [#uses=1 type=i1] [debug line = 89:9]
  %x_1 = add i16 %x, 1, !dbg !236                 ; [#uses=1 type=i16] [debug line = 89:23]
  br i1 %exitcond1, label %5, label %2, !dbg !234 ; [debug line = 89:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str3) nounwind, !dbg !237 ; [debug line = 89:29]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str3), !dbg !237 ; [#uses=1 type=i32] [debug line = 89:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @p_str1) nounwind, !dbg !239 ; [debug line = 90:1]
  %tmp = trunc i16 %x to i13                      ; [#uses=1 type=i13]
  %p_shl2_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_5 = trunc i16 %x to i15                    ; [#uses=1 type=i15]
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_5, i8 0), !dbg !240 ; [#uses=1 type=i23] [debug line = 94:2]
  %tmp_s = add i23 %p_shl2_cast, %p_shl3_cast, !dbg !240 ; [#uses=1 type=i23] [debug line = 94:2]
  br label %3, !dbg !243                          ; [debug line = 92:12]

; <label>:3                                       ; preds = %_ifconv, %2
  %y = phi i16 [ 0, %2 ], [ %y_1, %_ifconv ]      ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %in_height_read_1, !dbg !243 ; [#uses=1 type=i1] [debug line = 92:12]
  %y_1 = add i16 %y, 1, !dbg !244                 ; [#uses=1 type=i16] [debug line = 92:27]
  br i1 %exitcond, label %4, label %_ifconv, !dbg !243 ; [debug line = 92:12]

_ifconv:                                          ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind, !dbg !245 ; [debug line = 92:33]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4), !dbg !245 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @p_str1) nounwind, !dbg !246 ; [debug line = 93:1]
  %tmp_cast = zext i16 %y to i23, !dbg !240       ; [#uses=1 type=i23] [debug line = 94:2]
  %tmp_6 = add i23 %tmp_cast, %tmp_s, !dbg !240   ; [#uses=1 type=i23] [debug line = 94:2]
  %tmp_21_cast = zext i23 %tmp_6 to i64, !dbg !240 ; [#uses=6 type=i64] [debug line = 94:2]
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_21_cast, !dbg !240 ; [#uses=1 type=i8*] [debug line = 94:2]
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_21_cast, !dbg !247 ; [#uses=1 type=i8*] [debug line = 95:10]
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_21_cast, !dbg !248 ; [#uses=1 type=i8*] [debug line = 96:10]
  %out_channels_ch1_addr = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_21_cast, !dbg !249 ; [#uses=1 type=i8*] [debug line = 103:10]
  %out_channels_ch2_addr = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_21_cast, !dbg !250 ; [#uses=1 type=i8*] [debug line = 104:10]
  %out_channels_ch3_addr = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_21_cast, !dbg !251 ; [#uses=1 type=i8*] [debug line = 105:10]
  %Y = load i8* %in_channels_ch1_addr, align 1, !dbg !240 ; [#uses=1 type=i8] [debug line = 94:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !252), !dbg !240 ; [debug line = 94:2] [debug variable = Y]
  %U = load i8* %in_channels_ch2_addr, align 1, !dbg !247 ; [#uses=1 type=i8] [debug line = 95:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !253), !dbg !247 ; [debug line = 95:10] [debug variable = U]
  %V = load i8* %in_channels_ch3_addr, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 96:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !254), !dbg !248 ; [debug line = 96:10] [debug variable = V]
  %tmp_3_cast = zext i8 %Y to i9, !dbg !255       ; [#uses=1 type=i9] [debug line = 97:10]
  %C = add i9 -16, %tmp_3_cast, !dbg !255         ; [#uses=1 type=i9] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i9 %C}, i64 0, metadata !256), !dbg !255 ; [debug line = 97:10] [debug variable = C]
  %D = xor i8 %U, -128, !dbg !259                 ; [#uses=3 type=i8] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i8 %D}, i64 0, metadata !260), !dbg !259 ; [debug line = 98:10] [debug variable = D]
  %E = xor i8 %V, -128, !dbg !261                 ; [#uses=2 type=i8] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i8 %E}, i64 0, metadata !262), !dbg !261 ; [debug line = 99:10] [debug variable = E]
  %tmp_6_cast = sext i9 %C to i18, !dbg !263      ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_7 = mul i18 298, %tmp_6_cast, !dbg !263    ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_8_cast5 = sext i8 %E to i17, !dbg !264     ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp_8_cast = sext i8 %E to i18, !dbg !263      ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_9 = mul i18 409, %tmp_8_cast, !dbg !263    ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_3 = add i18 128, %tmp_7, !dbg !263         ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp_4 = add i18 %tmp_3, %tmp_9, !dbg !263      ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp_8 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_4, i32 16, i32 17), !dbg !263 ; [#uses=1 type=i2] [debug line = 100:10]
  %icmp = icmp eq i2 %tmp_8, 1, !dbg !263         ; [#uses=2 type=i1] [debug line = 100:10]
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_4, i32 17), !dbg !263 ; [#uses=1 type=i1] [debug line = 100:10]
  %phitmp = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_4, i32 8, i32 15), !dbg !263 ; [#uses=1 type=i8] [debug line = 100:10]
  %p_phitmp = select i1 %icmp, i8 -1, i8 0, !dbg !263 ; [#uses=1 type=i8] [debug line = 100:10]
  %tmp_11 = or i1 %icmp, %tmp_10, !dbg !263       ; [#uses=1 type=i1] [debug line = 100:10]
  %R = select i1 %tmp_11, i8 %p_phitmp, i8 %phitmp, !dbg !263 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !265), !dbg !263 ; [debug line = 100:10] [debug variable = R]
  %tmp_16_cast4_cast = sext i8 %D to i16, !dbg !264 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_12 = mul i16 -100, %tmp_16_cast4_cast, !dbg !264 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_12_cast = sext i16 %tmp_12 to i17, !dbg !264 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp_13 = mul i17 -208, %tmp_8_cast5, !dbg !264 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1 = add i17 %tmp_12_cast, %tmp_13, !dbg !264 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1_cast = sext i17 %tmp1 to i18, !dbg !264   ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp_14 = add i18 %tmp1_cast, %tmp_3, !dbg !264 ; [#uses=3 type=i18] [debug line = 101:10]
  %tmp_15 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_14, i32 16, i32 17), !dbg !264 ; [#uses=1 type=i2] [debug line = 101:10]
  %icmp9 = icmp eq i2 %tmp_15, 1, !dbg !264       ; [#uses=2 type=i1] [debug line = 101:10]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_14, i32 17), !dbg !264 ; [#uses=1 type=i1] [debug line = 101:10]
  %phitmp2 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_14, i32 8, i32 15), !dbg !264 ; [#uses=1 type=i8] [debug line = 101:10]
  %p_phitmp2 = select i1 %icmp9, i8 -1, i8 0, !dbg !264 ; [#uses=1 type=i8] [debug line = 101:10]
  %tmp_17 = or i1 %icmp9, %tmp_16, !dbg !264      ; [#uses=1 type=i1] [debug line = 101:10]
  %G = select i1 %tmp_17, i8 %p_phitmp2, i8 %phitmp2, !dbg !264 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !266), !dbg !264 ; [debug line = 101:10] [debug variable = G]
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8 %D, i9 0), !dbg !267 ; [#uses=1 type=i17] [debug line = 102:10]
  %p_shl_cast = sext i17 %p_shl to i19, !dbg !267 ; [#uses=1 type=i19] [debug line = 102:10]
  %p_shl1 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %D, i2 0), !dbg !267 ; [#uses=1 type=i10] [debug line = 102:10]
  %p_shl1_cast = sext i10 %p_shl1 to i18, !dbg !267 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2 = add i18 %p_shl1_cast, %tmp_3, !dbg !267 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp2_cast = sext i18 %tmp2 to i19, !dbg !267   ; [#uses=1 type=i19] [debug line = 102:10]
  %tmp_18 = add i19 %tmp2_cast, %p_shl_cast, !dbg !267 ; [#uses=3 type=i19] [debug line = 102:10]
  %tmp_19 = call i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19 %tmp_18, i32 16, i32 18), !dbg !267 ; [#uses=1 type=i3] [debug line = 102:10]
  %icmp1 = icmp sgt i3 %tmp_19, 0, !dbg !267      ; [#uses=2 type=i1] [debug line = 102:10]
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i19.i32(i19 %tmp_18, i32 18), !dbg !267 ; [#uses=1 type=i1] [debug line = 102:10]
  %phitmp3 = call i8 @_ssdm_op_PartSelect.i8.i19.i32.i32(i19 %tmp_18, i32 8, i32 15), !dbg !267 ; [#uses=1 type=i8] [debug line = 102:10]
  %p_phitmp3 = select i1 %icmp1, i8 -1, i8 0, !dbg !267 ; [#uses=1 type=i8] [debug line = 102:10]
  %tmp_21 = or i1 %icmp1, %tmp_20, !dbg !267      ; [#uses=1 type=i1] [debug line = 102:10]
  %B = select i1 %tmp_21, i8 %p_phitmp3, i8 %phitmp3, !dbg !267 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !268), !dbg !267 ; [debug line = 102:10] [debug variable = B]
  store i8 %R, i8* %out_channels_ch1_addr, align 1, !dbg !249 ; [debug line = 103:10]
  store i8 %G, i8* %out_channels_ch2_addr, align 1, !dbg !250 ; [debug line = 104:10]
  store i8 %B, i8* %out_channels_ch3_addr, align 1, !dbg !251 ; [debug line = 105:10]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_2), !dbg !269 ; [#uses=0 type=i32] [debug line = 106:7]
  call void @llvm.dbg.value(metadata !{i16 %y_1}, i64 0, metadata !270), !dbg !244 ; [debug line = 92:27] [debug variable = y]
  br label %3, !dbg !244                          ; [debug line = 92:27]

; <label>:4                                       ; preds = %3
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str3, i32 %tmp_1), !dbg !271 ; [#uses=0 type=i32] [debug line = 107:4]
  call void @llvm.dbg.value(metadata !{i16 %x_1}, i64 0, metadata !272), !dbg !236 ; [debug line = 89:23] [debug variable = x]
  br label %1, !dbg !236                          ; [debug line = 89:23]

; <label>:5                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !222), !dbg !220 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !218), !dbg !220 ; [debug line = 69:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_1, 0, !dbg !273 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read_1, 1, !dbg !273 ; [#uses=1 type={ i16, i16 }] [debug line = 108:1]
  ret { i16, i16 } %mrv_1, !dbg !273              ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc { i16, i16 } @yuv_filter_rgb2yuv([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16 %in_width_read, i16 %in_height_read, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3) {
  %in_height_read_2 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_height_read) ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_2}, i64 0, metadata !274), !dbg !277 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read_2}, i64 0, metadata !278), !dbg !280 ; [debug line = 31:16] [debug variable = out.height]
  %in_width_read_2 = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %in_width_read) ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_2}, i64 0, metadata !281), !dbg !277 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read_2}, i64 0, metadata !282), !dbg !280 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !283), !dbg !277 ; [debug line = 30:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !284), !dbg !277 ; [debug line = 30:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !285), !dbg !277 ; [debug line = 30:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !281), !dbg !277 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !274), !dbg !277 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !286), !dbg !280 ; [debug line = 31:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !287), !dbg !280 ; [debug line = 31:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !288), !dbg !280 ; [debug line = 31:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !289), !dbg !291 ; [debug line = 43:4] [debug variable = width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !292), !dbg !293 ; [debug line = 44:4] [debug variable = height]
  br label %1, !dbg !294                          ; [debug line = 49:9]

; <label>:1                                       ; preds = %5, %0
  %x = phi i16 [ 0, %0 ], [ %x_2, %5 ]            ; [#uses=4 type=i16]
  %exitcond1 = icmp eq i16 %x, %in_width_read_2, !dbg !294 ; [#uses=1 type=i1] [debug line = 49:9]
  %x_2 = add i16 %x, 1, !dbg !296                 ; [#uses=1 type=i16] [debug line = 49:23]
  br i1 %exitcond1, label %6, label %2, !dbg !294 ; [debug line = 49:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !297 ; [debug line = 49:29]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str), !dbg !297 ; [#uses=1 type=i32] [debug line = 49:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @p_str1) nounwind, !dbg !299 ; [debug line = 50:1]
  %tmp = trunc i16 %x to i13                      ; [#uses=1 type=i13]
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_21 = trunc i16 %x to i15                   ; [#uses=1 type=i15]
  %p_shl7_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_21, i8 0), !dbg !300 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_22 = add i23 %p_shl_cast, %p_shl7_cast, !dbg !300 ; [#uses=1 type=i23] [debug line = 54:2]
  br label %3, !dbg !303                          ; [debug line = 52:12]

; <label>:3                                       ; preds = %4, %2
  %y = phi i16 [ 0, %2 ], [ %y_2, %4 ]            ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %in_height_read_2, !dbg !303 ; [#uses=1 type=i1] [debug line = 52:12]
  %y_2 = add i16 %y, 1, !dbg !304                 ; [#uses=1 type=i16] [debug line = 52:27]
  br i1 %exitcond, label %5, label %4, !dbg !303  ; [debug line = 52:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind, !dbg !305 ; [debug line = 52:33]
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2), !dbg !305 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @p_str1) nounwind, !dbg !306 ; [debug line = 53:1]
  %tmp_cast = zext i16 %y to i23, !dbg !300       ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_24 = add i23 %tmp_cast, %tmp_22, !dbg !300 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_24_cast = zext i23 %tmp_24 to i64, !dbg !300 ; [#uses=6 type=i64] [debug line = 54:2]
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_24_cast, !dbg !300 ; [#uses=1 type=i8*] [debug line = 54:2]
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_24_cast, !dbg !307 ; [#uses=1 type=i8*] [debug line = 55:10]
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_24_cast, !dbg !308 ; [#uses=1 type=i8*] [debug line = 56:10]
  %out_channels_ch1_addr = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_24_cast, !dbg !309 ; [#uses=1 type=i8*] [debug line = 60:10]
  %out_channels_ch2_addr = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_24_cast, !dbg !310 ; [#uses=1 type=i8*] [debug line = 61:10]
  %out_channels_ch3_addr = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_24_cast, !dbg !311 ; [#uses=1 type=i8*] [debug line = 62:10]
  %R = load i8* %in_channels_ch1_addr, align 1, !dbg !300 ; [#uses=4 type=i8] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !312), !dbg !300 ; [debug line = 54:2] [debug variable = R]
  %G = load i8* %in_channels_ch2_addr, align 1, !dbg !307 ; [#uses=3 type=i8] [debug line = 55:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !313), !dbg !307 ; [debug line = 55:10] [debug variable = G]
  %B = load i8* %in_channels_ch3_addr, align 1, !dbg !308 ; [#uses=4 type=i8] [debug line = 56:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !314), !dbg !308 ; [debug line = 56:10] [debug variable = B]
  %tmp_33_cast1 = zext i8 %R to i16, !dbg !315    ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_33_cast2 = zext i8 %R to i15, !dbg !315    ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl5 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R, i6 0), !dbg !315 ; [#uses=1 type=i14] [debug line = 57:10]
  %p_shl5_cast = zext i14 %p_shl5 to i15, !dbg !315 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R, i1 false), !dbg !315 ; [#uses=1 type=i9] [debug line = 57:10]
  %p_shl6_cast = zext i9 %p_shl6 to i15, !dbg !315 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp_35_cast1 = zext i8 %G to i16, !dbg !315    ; [#uses=2 type=i16] [debug line = 57:10]
  %tmp_35_cast2 = zext i8 %G to i9, !dbg !315     ; [#uses=1 type=i9] [debug line = 57:10]
  %p_shl4 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G, i7 0), !dbg !315 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl4_cast = zext i15 %p_shl4 to i16, !dbg !315 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_37_cast1 = zext i8 %B to i13, !dbg !315    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp_25 = mul i13 %tmp_37_cast1, 25, !dbg !315  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp2 = add i15 %p_shl6_cast, %p_shl5_cast, !dbg !315 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp2_cast = zext i15 %tmp2 to i16, !dbg !315   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp1 = add i16 %tmp2_cast, %p_shl4_cast, !dbg !315 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp4 = add i9 %tmp_35_cast2, 128, !dbg !315    ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp4_cast = zext i9 %tmp4 to i13, !dbg !315    ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3 = add i13 %tmp4_cast, %tmp_25, !dbg !315  ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp3_cast = zext i13 %tmp3 to i16, !dbg !315   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_26 = add i16 %tmp3_cast, %tmp1, !dbg !315  ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_27 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_26, i32 8, i32 15), !dbg !315 ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 %tmp_27, 16, !dbg !315              ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !316), !dbg !315 ; [debug line = 57:10] [debug variable = Y]
  %tmp_28 = mul i15 %tmp_33_cast2, -38, !dbg !317 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp_44_cast = sext i15 %tmp_28 to i16, !dbg !317 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_29 = mul i16 %tmp_35_cast1, -74, !dbg !317 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl2 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %B, i7 0), !dbg !317 ; [#uses=1 type=i15] [debug line = 58:10]
  %p_shl2_cast = zext i15 %p_shl2 to i16, !dbg !317 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl3 = call i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8 %B, i4 0), !dbg !317 ; [#uses=2 type=i12] [debug line = 58:10]
  %p_shl3_cast9 = zext i12 %p_shl3 to i13, !dbg !317 ; [#uses=1 type=i13] [debug line = 58:10]
  %p_shl3_cast = zext i12 %p_shl3 to i16, !dbg !317 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_30 = sub i16 %p_shl2_cast, %p_shl3_cast, !dbg !317 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp5 = add i16 %tmp_44_cast, %tmp_29, !dbg !317 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp6 = add i16 %tmp_30, 128, !dbg !317         ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_31 = add i16 %tmp6, %tmp5, !dbg !317       ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_32 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_31, i32 8, i32 15), !dbg !317 ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp_32, -128, !dbg !317            ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !318), !dbg !317 ; [debug line = 58:10] [debug variable = U]
  %tmp_33 = mul i16 %tmp_33_cast1, 122, !dbg !319 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_34 = mul i16 %tmp_35_cast1, -94, !dbg !319 ; [#uses=1 type=i16] [debug line = 59:10]
  %p_neg = sub i13 0, %p_shl3_cast9               ; [#uses=1 type=i13]
  %p_neg_cast = sext i13 %p_neg to i14            ; [#uses=1 type=i14]
  %p_shl1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %B, i1 false), !dbg !319 ; [#uses=1 type=i9] [debug line = 59:10]
  %p_shl1_cast = zext i9 %p_shl1 to i14, !dbg !319 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp_35 = sub i14 %p_neg_cast, %p_shl1_cast, !dbg !319 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp7 = add i16 %tmp_33, %tmp_34, !dbg !319     ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp8 = add i14 %tmp_35, 128, !dbg !319         ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp8_cast = sext i14 %tmp8 to i16, !dbg !319   ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_36 = add i16 %tmp8_cast, %tmp7, !dbg !319  ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_37 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_36, i32 8, i32 15), !dbg !319 ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp_37, -128, !dbg !319            ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !320), !dbg !319 ; [debug line = 59:10] [debug variable = V]
  store i8 %Y, i8* %out_channels_ch1_addr, align 1, !dbg !309 ; [debug line = 60:10]
  store i8 %U, i8* %out_channels_ch2_addr, align 1, !dbg !310 ; [debug line = 61:10]
  store i8 %V, i8* %out_channels_ch3_addr, align 1, !dbg !311 ; [debug line = 62:10]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_23), !dbg !321 ; [#uses=0 type=i32] [debug line = 63:7]
  call void @llvm.dbg.value(metadata !{i16 %y_2}, i64 0, metadata !322), !dbg !304 ; [debug line = 52:27] [debug variable = y]
  br label %3, !dbg !304                          ; [debug line = 52:27]

; <label>:5                                       ; preds = %3
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_s), !dbg !323 ; [#uses=0 type=i32] [debug line = 64:4]
  call void @llvm.dbg.value(metadata !{i16 %x_2}, i64 0, metadata !324), !dbg !296 ; [debug line = 49:23] [debug variable = x]
  br label %1, !dbg !296                          ; [debug line = 49:23]

; <label>:6                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %in_width_read}, i64 0, metadata !282), !dbg !280 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16 %in_height_read}, i64 0, metadata !278), !dbg !280 ; [debug line = 31:16] [debug variable = out.height]
  %mrv = insertvalue { i16, i16 } undef, i16 %in_width_read_2, 0, !dbg !325 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  %mrv_1 = insertvalue { i16, i16 } %mrv, i16 %in_height_read_2, 1, !dbg !325 ; [#uses=1 type={ i16, i16 }] [debug line = 65:1]
  ret { i16, i16 } %mrv_1, !dbg !325              ; [debug line = 65:1]
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

; [#uses=100]
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
  %empty_18 = trunc i19 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_18
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_19 = trunc i18 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_19
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_20 = trunc i16 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_20
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2) ; [#uses=1 type=i15]
  %empty_21 = trunc i15 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_21
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_22 = trunc i19 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_22
}

; [#uses=0]
define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_23 = trunc i11 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_23
}

; [#uses=2]
define weak i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_24 = trunc i18 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_24
}

; [#uses=0]
define weak i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2) ; [#uses=1 type=i10]
  %empty_25 = trunc i10 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_25
}

; [#uses=0]
declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
declare i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
define weak i11 @_ssdm_op_PartSelect.i11.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_26 = trunc i19 %empty to i11             ; [#uses=1 type=i11]
  ret i11 %empty_26
}

; [#uses=0]
define weak i10 @_ssdm_op_PartSelect.i10.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_27 = trunc i18 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_27
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i19.i32(i19, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i19                    ; [#uses=1 type=i19]
  %empty_28 = shl i19 1, %empty                   ; [#uses=1 type=i19]
  %empty_29 = and i19 %0, %empty_28               ; [#uses=1 type=i19]
  %empty_30 = icmp ne i19 %empty_29, 0            ; [#uses=1 type=i1]
  ret i1 %empty_30
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18                    ; [#uses=1 type=i18]
  %empty_31 = shl i18 1, %empty                   ; [#uses=1 type=i18]
  %empty_32 = and i18 %0, %empty_31               ; [#uses=1 type=i18]
  %empty_33 = icmp ne i18 %empty_32, 0            ; [#uses=1 type=i1]
  ret i1 %empty_33
}

; [#uses=2]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_34 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_35 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_36 = or i9 %empty_35, %empty_34          ; [#uses=1 type=i9]
  ret i9 %empty_36
}

; [#uses=3]
define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23                     ; [#uses=1 type=i23]
  %empty_37 = zext i8 %1 to i23                   ; [#uses=1 type=i23]
  %empty_38 = shl i23 %empty, 8                   ; [#uses=1 type=i23]
  %empty_39 = or i23 %empty_38, %empty_37         ; [#uses=1 type=i23]
  ret i23 %empty_39
}

; [#uses=3]
define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23                     ; [#uses=1 type=i23]
  %empty_40 = zext i10 %1 to i23                  ; [#uses=1 type=i23]
  %empty_41 = shl i23 %empty, 10                  ; [#uses=1 type=i23]
  %empty_42 = or i23 %empty_41, %empty_40         ; [#uses=1 type=i23]
  ret i23 %empty_42
}

; [#uses=1]
define weak i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %0 to i17                      ; [#uses=1 type=i17]
  %empty_43 = zext i9 %1 to i17                   ; [#uses=1 type=i17]
  %empty_44 = shl i17 %empty, 9                   ; [#uses=1 type=i17]
  %empty_45 = or i17 %empty_44, %empty_43         ; [#uses=1 type=i17]
  ret i17 %empty_45
}

; [#uses=2]
define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15                      ; [#uses=1 type=i15]
  %empty_46 = zext i7 %1 to i15                   ; [#uses=1 type=i15]
  %empty_47 = shl i15 %empty, 7                   ; [#uses=1 type=i15]
  %empty_48 = or i15 %empty_47, %empty_46         ; [#uses=1 type=i15]
  ret i15 %empty_48
}

; [#uses=1]
define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14                      ; [#uses=1 type=i14]
  %empty_49 = zext i6 %1 to i14                   ; [#uses=1 type=i14]
  %empty_50 = shl i14 %empty, 6                   ; [#uses=1 type=i14]
  %empty_51 = or i14 %empty_50, %empty_49         ; [#uses=1 type=i14]
  ret i14 %empty_51
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %0 to i12                      ; [#uses=1 type=i12]
  %empty_52 = zext i4 %1 to i12                   ; [#uses=1 type=i12]
  %empty_53 = shl i12 %empty, 4                   ; [#uses=1 type=i12]
  %empty_54 = or i12 %empty_53, %empty_52         ; [#uses=1 type=i12]
  ret i12 %empty_54
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10                      ; [#uses=1 type=i10]
  %empty_55 = zext i2 %1 to i10                   ; [#uses=1 type=i10]
  %empty_56 = shl i10 %empty, 2                   ; [#uses=1 type=i10]
  %empty_57 = or i10 %empty_56, %empty_55         ; [#uses=1 type=i10]
  ret i10 %empty_57
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
!185 = metadata !{i32 129, i32 23, metadata !182, metadata !92}
!186 = metadata !{i32 129, i32 29, metadata !181, metadata !92}
!187 = metadata !{i32 130, i32 1, metadata !181, metadata !92}
!188 = metadata !{i32 136, i32 10, metadata !179, metadata !92}
!189 = metadata !{i32 132, i32 12, metadata !180, metadata !92}
!190 = metadata !{i32 132, i32 27, metadata !180, metadata !92}
!191 = metadata !{i32 132, i32 33, metadata !179, metadata !92}
!192 = metadata !{i32 133, i32 1, metadata !179, metadata !92}
!193 = metadata !{i32 142, i32 10, metadata !179, metadata !92}
!194 = metadata !{i32 140, i32 10, metadata !179, metadata !92}
!195 = metadata !{i32 141, i32 10, metadata !179, metadata !92}
!196 = metadata !{i32 134, i32 2, metadata !179, metadata !92}
!197 = metadata !{i32 135, i32 10, metadata !179, metadata !92}
!198 = metadata !{i32 786688, metadata !174, metadata !"Y", metadata !61, i32 120, metadata !75, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 786688, metadata !174, metadata !"U", metadata !61, i32 120, metadata !75, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 786688, metadata !174, metadata !"V", metadata !61, i32 120, metadata !75, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 137, i32 10, metadata !179, metadata !92}
!202 = metadata !{i32 143, i32 7, metadata !179, metadata !92}
!203 = metadata !{i32 786688, metadata !174, metadata !"y", metadata !61, i32 118, metadata !83, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 144, i32 4, metadata !181, metadata !92}
!205 = metadata !{i32 786688, metadata !174, metadata !"x", metadata !61, i32 118, metadata !83, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 790535, metadata !169, metadata !"out.width", null, i32 112, metadata !124, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field_wo ]
!207 = metadata !{i32 790535, metadata !169, metadata !"out.height", null, i32 112, metadata !128, i32 0, metadata !92} ; [ DW_TAG_arg_variable_field_wo ]
!208 = metadata !{i32 790529, metadata !144, metadata !"_scale.width", null, i32 18, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!209 = metadata !{i32 790529, metadata !144, metadata !"_scale.height", null, i32 18, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!210 = metadata !{i32 25, i32 4, metadata !93, null}
!211 = metadata !{i32 26, i32 1, metadata !93, null}
!212 = metadata !{i32 790533, metadata !213, metadata !"in.height", null, i32 68, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!213 = metadata !{i32 786689, metadata !214, metadata !"in", metadata !61, i32 16777284, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 786478, i32 0, metadata !61, metadata !"yuv2rgb", metadata !"yuv2rgb", metadata !"", metadata !61, i32 67, metadata !215, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !87, i32 71} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!216 = metadata !{null, metadata !64, metadata !64}
!217 = metadata !{i32 68, i32 16, metadata !214, null}
!218 = metadata !{i32 790535, metadata !219, metadata !"out.height", null, i32 69, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!219 = metadata !{i32 786689, metadata !214, metadata !"out", metadata !61, i32 33554501, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!220 = metadata !{i32 69, i32 16, metadata !214, null}
!221 = metadata !{i32 790533, metadata !213, metadata !"in.width", null, i32 68, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!222 = metadata !{i32 790535, metadata !219, metadata !"out.width", null, i32 69, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!223 = metadata !{i32 790531, metadata !213, metadata !"in.channels.ch1", null, i32 68, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!224 = metadata !{i32 790531, metadata !213, metadata !"in.channels.ch2", null, i32 68, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!225 = metadata !{i32 790531, metadata !213, metadata !"in.channels.ch3", null, i32 68, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!226 = metadata !{i32 790531, metadata !219, metadata !"out.channels.ch1", null, i32 69, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!227 = metadata !{i32 790531, metadata !219, metadata !"out.channels.ch2", null, i32 69, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!228 = metadata !{i32 790531, metadata !219, metadata !"out.channels.ch3", null, i32 69, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!229 = metadata !{i32 786688, metadata !230, metadata !"width", metadata !61, i32 73, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 786443, metadata !214, i32 71, i32 1, metadata !61, i32 6} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 83, i32 4, metadata !230, null}
!232 = metadata !{i32 786688, metadata !230, metadata !"height", metadata !61, i32 73, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 84, i32 4, metadata !230, null}
!234 = metadata !{i32 89, i32 9, metadata !235, null}
!235 = metadata !{i32 786443, metadata !230, i32 89, i32 4, metadata !61, i32 7} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 89, i32 23, metadata !235, null}
!237 = metadata !{i32 89, i32 29, metadata !238, null}
!238 = metadata !{i32 786443, metadata !235, i32 89, i32 28, metadata !61, i32 8} ; [ DW_TAG_lexical_block ]
!239 = metadata !{i32 90, i32 1, metadata !238, null}
!240 = metadata !{i32 94, i32 2, metadata !241, null}
!241 = metadata !{i32 786443, metadata !242, i32 92, i32 32, metadata !61, i32 10} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 786443, metadata !238, i32 92, i32 7, metadata !61, i32 9} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 92, i32 12, metadata !242, null}
!244 = metadata !{i32 92, i32 27, metadata !242, null}
!245 = metadata !{i32 92, i32 33, metadata !241, null}
!246 = metadata !{i32 93, i32 1, metadata !241, null}
!247 = metadata !{i32 95, i32 10, metadata !241, null}
!248 = metadata !{i32 96, i32 10, metadata !241, null}
!249 = metadata !{i32 103, i32 10, metadata !241, null}
!250 = metadata !{i32 104, i32 10, metadata !241, null}
!251 = metadata !{i32 105, i32 10, metadata !241, null}
!252 = metadata !{i32 786688, metadata !230, metadata !"Y", metadata !61, i32 75, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!253 = metadata !{i32 786688, metadata !230, metadata !"U", metadata !61, i32 75, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 786688, metadata !230, metadata !"V", metadata !61, i32 75, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!255 = metadata !{i32 97, i32 10, metadata !241, null}
!256 = metadata !{i32 786688, metadata !230, metadata !"C", metadata !61, i32 76, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !61, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !258} ; [ DW_TAG_typedef ]
!258 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!259 = metadata !{i32 98, i32 10, metadata !241, null}
!260 = metadata !{i32 786688, metadata !230, metadata !"D", metadata !61, i32 76, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 99, i32 10, metadata !241, null}
!262 = metadata !{i32 786688, metadata !230, metadata !"E", metadata !61, i32 76, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 100, i32 10, metadata !241, null}
!264 = metadata !{i32 101, i32 10, metadata !241, null}
!265 = metadata !{i32 786688, metadata !230, metadata !"R", metadata !61, i32 74, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 786688, metadata !230, metadata !"G", metadata !61, i32 74, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!267 = metadata !{i32 102, i32 10, metadata !241, null}
!268 = metadata !{i32 786688, metadata !230, metadata !"B", metadata !61, i32 74, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!269 = metadata !{i32 106, i32 7, metadata !241, null}
!270 = metadata !{i32 786688, metadata !230, metadata !"y", metadata !61, i32 72, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 107, i32 4, metadata !238, null}
!272 = metadata !{i32 786688, metadata !230, metadata !"x", metadata !61, i32 72, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!273 = metadata !{i32 108, i32 1, metadata !230, null}
!274 = metadata !{i32 790533, metadata !275, metadata !"in.height", null, i32 30, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!275 = metadata !{i32 786689, metadata !276, metadata !"in", metadata !61, i32 16777246, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!276 = metadata !{i32 786478, i32 0, metadata !61, metadata !"rgb2yuv", metadata !"rgb2yuv", metadata !"", metadata !61, i32 29, metadata !215, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !87, i32 33} ; [ DW_TAG_subprogram ]
!277 = metadata !{i32 30, i32 16, metadata !276, null}
!278 = metadata !{i32 790535, metadata !279, metadata !"out.height", null, i32 31, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!279 = metadata !{i32 786689, metadata !276, metadata !"out", metadata !61, i32 33554463, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!280 = metadata !{i32 31, i32 16, metadata !276, null}
!281 = metadata !{i32 790533, metadata !275, metadata !"in.width", null, i32 30, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!282 = metadata !{i32 790535, metadata !279, metadata !"out.width", null, i32 31, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!283 = metadata !{i32 790531, metadata !275, metadata !"in.channels.ch1", null, i32 30, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!284 = metadata !{i32 790531, metadata !275, metadata !"in.channels.ch2", null, i32 30, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!285 = metadata !{i32 790531, metadata !275, metadata !"in.channels.ch3", null, i32 30, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!286 = metadata !{i32 790531, metadata !279, metadata !"out.channels.ch1", null, i32 31, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!287 = metadata !{i32 790531, metadata !279, metadata !"out.channels.ch2", null, i32 31, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!288 = metadata !{i32 790531, metadata !279, metadata !"out.channels.ch3", null, i32 31, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!289 = metadata !{i32 786688, metadata !290, metadata !"width", metadata !61, i32 35, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 786443, metadata !276, i32 33, i32 1, metadata !61, i32 1} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 43, i32 4, metadata !290, null}
!292 = metadata !{i32 786688, metadata !290, metadata !"height", metadata !61, i32 35, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!293 = metadata !{i32 44, i32 4, metadata !290, null}
!294 = metadata !{i32 49, i32 9, metadata !295, null}
!295 = metadata !{i32 786443, metadata !290, i32 49, i32 4, metadata !61, i32 2} ; [ DW_TAG_lexical_block ]
!296 = metadata !{i32 49, i32 23, metadata !295, null}
!297 = metadata !{i32 49, i32 29, metadata !298, null}
!298 = metadata !{i32 786443, metadata !295, i32 49, i32 28, metadata !61, i32 3} ; [ DW_TAG_lexical_block ]
!299 = metadata !{i32 50, i32 1, metadata !298, null}
!300 = metadata !{i32 54, i32 2, metadata !301, null}
!301 = metadata !{i32 786443, metadata !302, i32 52, i32 32, metadata !61, i32 5} ; [ DW_TAG_lexical_block ]
!302 = metadata !{i32 786443, metadata !298, i32 52, i32 7, metadata !61, i32 4} ; [ DW_TAG_lexical_block ]
!303 = metadata !{i32 52, i32 12, metadata !302, null}
!304 = metadata !{i32 52, i32 27, metadata !302, null}
!305 = metadata !{i32 52, i32 33, metadata !301, null}
!306 = metadata !{i32 53, i32 1, metadata !301, null}
!307 = metadata !{i32 55, i32 10, metadata !301, null}
!308 = metadata !{i32 56, i32 10, metadata !301, null}
!309 = metadata !{i32 60, i32 10, metadata !301, null}
!310 = metadata !{i32 61, i32 10, metadata !301, null}
!311 = metadata !{i32 62, i32 10, metadata !301, null}
!312 = metadata !{i32 786688, metadata !290, metadata !"R", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!313 = metadata !{i32 786688, metadata !290, metadata !"G", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!314 = metadata !{i32 786688, metadata !290, metadata !"B", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!315 = metadata !{i32 57, i32 10, metadata !301, null}
!316 = metadata !{i32 786688, metadata !290, metadata !"Y", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!317 = metadata !{i32 58, i32 10, metadata !301, null}
!318 = metadata !{i32 786688, metadata !290, metadata !"U", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!319 = metadata !{i32 59, i32 10, metadata !301, null}
!320 = metadata !{i32 786688, metadata !290, metadata !"V", metadata !61, i32 36, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!321 = metadata !{i32 63, i32 7, metadata !301, null}
!322 = metadata !{i32 786688, metadata !290, metadata !"y", metadata !61, i32 34, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!323 = metadata !{i32 64, i32 4, metadata !298, null}
!324 = metadata !{i32 786688, metadata !290, metadata !"x", metadata !61, i32 34, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!325 = metadata !{i32 65, i32 1, metadata !290, null}
