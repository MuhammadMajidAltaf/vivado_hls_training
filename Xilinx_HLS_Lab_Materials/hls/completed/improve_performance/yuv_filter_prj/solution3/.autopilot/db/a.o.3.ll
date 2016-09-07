; ModuleID = 'C:/training/hls/labs/improve_performance/yuv_filter_prj/solution3/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@yuv_filter_str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=45 type=[8 x i8]*]
@p_yuv_OC_width_OC_channel_str = internal unnamed_addr constant [19 x i8] c"_yuv.width.channel\00" ; [#uses=1 type=[19 x i8]*]
@p_yuv_OC_height_OC_channel_str = internal unnamed_addr constant [20 x i8] c"_yuv.height.channel\00" ; [#uses=1 type=[20 x i8]*]
@p_yuv_OC_channels_OC_ch3_OC_cha = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch3.channel\00" ; [#uses=1 type=[26 x i8]*]
@p_yuv_OC_channels_OC_ch3_str = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch3\00" ; [#uses=1 type=[18 x i8]*]
@p_yuv_OC_channels_OC_ch2_OC_cha = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch2.channel\00" ; [#uses=1 type=[26 x i8]*]
@p_yuv_OC_channels_OC_ch2_str = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch2\00" ; [#uses=1 type=[18 x i8]*]
@p_yuv_OC_channels_OC_ch1_OC_cha = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch1.channel\00" ; [#uses=1 type=[26 x i8]*]
@p_yuv_OC_channels_OC_ch1_str = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch1\00" ; [#uses=1 type=[18 x i8]*]
@p_scale_OC_width_OC_channel_str = internal unnamed_addr constant [21 x i8] c"_scale.width.channel\00" ; [#uses=1 type=[21 x i8]*]
@p_scale_OC_height_OC_channel_st = internal unnamed_addr constant [22 x i8] c"_scale.height.channel\00" ; [#uses=1 type=[22 x i8]*]
@p_scale_OC_channels_OC_ch3_OC_c = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch3.channel\00" ; [#uses=1 type=[28 x i8]*]
@p_scale_OC_channels_OC_ch3_str = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch3\00" ; [#uses=1 type=[20 x i8]*]
@p_scale_OC_channels_OC_ch2_OC_c = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch2.channel\00" ; [#uses=1 type=[28 x i8]*]
@p_scale_OC_channels_OC_ch2_str = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch2\00" ; [#uses=1 type=[20 x i8]*]
@p_scale_OC_channels_OC_ch1_OC_c = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch1.channel\00" ; [#uses=1 type=[28 x i8]*]
@p_scale_OC_channels_OC_ch1_str = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch1\00" ; [#uses=1 type=[20 x i8]*]
@Y_scale_channel_str = internal unnamed_addr constant [16 x i8] c"Y_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@YUV_SCALE_LOOP_X_YUV_SCALE_LOO = internal unnamed_addr constant [34 x i8] c"YUV_SCALE_LOOP_X_YUV_SCALE_LOOP_Y\00" ; [#uses=1 type=[34 x i8]*]
@YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y_s = internal unnamed_addr constant [30 x i8] c"YUV2RGB_LOOP_X_YUV2RGB_LOOP_Y\00" ; [#uses=1 type=[30 x i8]*]
@V_scale_channel_str = internal unnamed_addr constant [16 x i8] c"V_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@U_scale_channel_str = internal unnamed_addr constant [16 x i8] c"U_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y_s = internal unnamed_addr constant [30 x i8] c"RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y\00" ; [#uses=1 type=[30 x i8]*]
@p_str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=3 type=[17 x i8]*]
@p_str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=222 type=[1 x i8]*]

; [#uses=1]
define internal fastcc void @yuv_filter_yuv_scale(i8* %in_channels_ch1, i8* %in_channels_ch2, i8* %in_channels_ch3, i16* %in_width, i16* %in_height, i8* %out_channels_ch1, i8* %out_channels_ch2, i8* %out_channels_ch3, i16* %out_width, i16* %out_height, i8* nocapture %Y_scale, i8* nocapture %U_scale, i8* nocapture %V_scale) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_26 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %Y_scale) ; [#uses=1 type=i8]
  %U_scale_read = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %U_scale) ; [#uses=1 type=i8]
  %V_scale_read = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %V_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch1}, i64 0, metadata !0), !dbg !36 ; [debug line = 111:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch2}, i64 0, metadata !37), !dbg !36 ; [debug line = 111:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch3}, i64 0, metadata !43), !dbg !36 ; [debug line = 111:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !49), !dbg !36 ; [debug line = 111:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !53), !dbg !36 ; [debug line = 111:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch1}, i64 0, metadata !57), !dbg !59 ; [debug line = 112:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch2}, i64 0, metadata !60), !dbg !59 ; [debug line = 112:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch3}, i64 0, metadata !61), !dbg !59 ; [debug line = 112:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !62), !dbg !59 ; [debug line = 112:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !63), !dbg !59 ; [debug line = 112:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale_read}, i64 0, metadata !64), !dbg !65 ; [debug line = 113:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale_read}, i64 0, metadata !66), !dbg !67 ; [debug line = 114:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale_read}, i64 0, metadata !68), !dbg !69 ; [debug line = 115:19] [debug variable = V_scale]
  %width = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_width), !dbg !70 ; [#uses=2 type=i16] [debug line = 123:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !72), !dbg !70 ; [debug line = 123:4] [debug variable = width]
  %height = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_height), !dbg !73 ; [#uses=2 type=i16] [debug line = 124:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !74), !dbg !73 ; [debug line = 124:4] [debug variable = height]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_width, i16 %width), !dbg !75 ; [debug line = 125:4]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_height, i16 %height), !dbg !76 ; [debug line = 126:4]
  %tmp_cast_i = zext i8 %Y_scale_read to i15, !dbg !77 ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp_1_cast_i = zext i8 %U_scale_read to i15, !dbg !82 ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp_2_cast_i = zext i8 %V_scale_read to i15, !dbg !83 ; [#uses=1 type=i15] [debug line = 129:9]
  %cast = zext i16 %width to i32                  ; [#uses=1 type=i32]
  %cast1 = zext i16 %height to i32                ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %0, !dbg !83                           ; [debug line = 129:9]

; <label>:0                                       ; preds = %.reset, %entry
  %indvar_flatten = phi i32 [ 0, %entry ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %.exit, label %.reset

.reset:                                           ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @YUV_SCALE_LOOP_X_YUV_SCALE_LOO)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str6) nounwind, !dbg !84 ; [debug line = 132:33]
  %tmp_14_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str6), !dbg !84 ; [#uses=1 type=i32] [debug line = 132:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !85 ; [debug line = 133:1]
  %Y = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch1), !dbg !86 ; [#uses=1 type=i8] [debug line = 134:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !87), !dbg !86 ; [debug line = 134:2] [debug variable = Y]
  %U = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch2), !dbg !88 ; [#uses=1 type=i8] [debug line = 135:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !89), !dbg !88 ; [debug line = 135:10] [debug variable = U]
  %V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch3), !dbg !90 ; [#uses=1 type=i8] [debug line = 136:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !91), !dbg !90 ; [debug line = 136:10] [debug variable = V]
  %tmp_6_cast_i = zext i8 %Y to i15, !dbg !92     ; [#uses=1 type=i15] [debug line = 137:10]
  %tmp_7_i = mul i15 %tmp_6_cast_i, %tmp_cast_i, !dbg !92 ; [#uses=1 type=i15] [debug line = 137:10]
  %tmp_9_cast_i = zext i8 %U to i15, !dbg !77     ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp_i = mul i15 %tmp_9_cast_i, %tmp_1_cast_i, !dbg !77 ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp_4_cast_i = zext i8 %V to i15, !dbg !82     ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp_8_i = mul i15 %tmp_4_cast_i, %tmp_2_cast_i, !dbg !82 ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp_10_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_7_i, i32 7, i32 14), !dbg !93 ; [#uses=1 type=i8] [debug line = 140:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch1, i8 %tmp_10_i), !dbg !93 ; [debug line = 140:10]
  %tmp_11_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_i, i32 7, i32 14), !dbg !94 ; [#uses=1 type=i8] [debug line = 141:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch2, i8 %tmp_11_i), !dbg !94 ; [debug line = 141:10]
  %tmp_12_i = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %tmp_8_i, i32 7, i32 14), !dbg !95 ; [#uses=1 type=i8] [debug line = 142:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch3, i8 %tmp_12_i), !dbg !95 ; [debug line = 142:10]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str6, i32 %tmp_14_i), !dbg !96 ; [#uses=0 type=i32] [debug line = 143:7]
  br label %0, !dbg !97                           ; [debug line = 132:27]

.exit:                                            ; preds = %0
  ret void
}

; [#uses=0]
define void @yuv_filter([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16* %in_width, i16* %in_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3, i16* %out_width, i16* %out_height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %V_scale_read}, i64 0, metadata !98), !dbg !100 ; [debug line = 9:19] [debug variable = V_scale]
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %U_scale_read}, i64 0, metadata !101), !dbg !102 ; [debug line = 8:19] [debug variable = U_scale]
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale_read}, i64 0, metadata !103), !dbg !104 ; [debug line = 7:19] [debug variable = Y_scale]
  %p_scale_height = alloca i16, align 2           ; [#uses=5 type=i16*]
  %p_scale_width = alloca i16, align 2            ; [#uses=5 type=i16*]
  %p_yuv_height = alloca i16, align 2             ; [#uses=5 type=i16*]
  %p_yuv_width = alloca i16, align 2              ; [#uses=5 type=i16*]
  %V_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  %U_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  %Y_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind, !dbg !105 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch1), !map !107
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch2), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %in_channels_ch3), !map !118
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_width), !map !122
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in_height), !map !128
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch1), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch2), !map !136
  call void (...)* @_ssdm_op_SpecBitsMap([2457600 x i8]* %out_channels_ch3), !map !140
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_width), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out_height), !map !148
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Y_scale), !map !152
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %U_scale), !map !158
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %V_scale), !map !162
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter_str) nounwind
  %p_yuv_channels_ch1 = alloca i8, align 1        ; [#uses=8 type=i8*]
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @p_yuv_OC_channels_OC_ch1_OC_cha, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch1) ; [#uses=0 type=i32]
  %empty_30 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_yuv_channels_ch2 = alloca i8, align 1        ; [#uses=8 type=i8*]
  %empty_31 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @p_yuv_OC_channels_OC_ch2_OC_cha, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch2) ; [#uses=0 type=i32]
  %empty_32 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_yuv_channels_ch3 = alloca i8, align 1        ; [#uses=8 type=i8*]
  %empty_33 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @p_yuv_OC_channels_OC_ch3_OC_cha, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch3, i8* %p_yuv_channels_ch3) ; [#uses=0 type=i32]
  %empty_34 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_scale_channels_ch1 = alloca i8, align 1      ; [#uses=8 type=i8*]
  %empty_35 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @p_scale_OC_channels_OC_ch1_OC_c, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch1) ; [#uses=0 type=i32]
  %empty_36 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_scale_channels_ch2 = alloca i8, align 1      ; [#uses=8 type=i8*]
  %empty_37 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @p_scale_OC_channels_OC_ch2_OC_c, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch2) ; [#uses=0 type=i32]
  %empty_38 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %p_scale_channels_ch3 = alloca i8, align 1      ; [#uses=8 type=i8*]
  %empty_39 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @p_scale_OC_channels_OC_ch3_OC_c, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch3, i8* %p_scale_channels_ch3) ; [#uses=0 type=i32]
  %empty_40 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !166), !dbg !168 ; [debug line = 5:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !169), !dbg !168 ; [debug line = 5:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !170), !dbg !168 ; [debug line = 5:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !171), !dbg !168 ; [debug line = 5:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !172), !dbg !168 ; [debug line = 5:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !173), !dbg !175 ; [debug line = 6:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !176), !dbg !175 ; [debug line = 6:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !177), !dbg !175 ; [debug line = 6:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !178), !dbg !175 ; [debug line = 6:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !179), !dbg !175 ; [debug line = 6:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !103), !dbg !104 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !101), !dbg !102 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !98), !dbg !100 ; [debug line = 9:19] [debug variable = V_scale]
  call void @llvm.dbg.declare(metadata !{i8* %p_yuv_channels_ch1}, metadata !180), !dbg !182 ; [debug line = 17:12] [debug variable = _yuv.channels.ch1]
  call void @llvm.dbg.declare(metadata !{i8* %p_yuv_channels_ch2}, metadata !183), !dbg !182 ; [debug line = 17:12] [debug variable = _yuv.channels.ch2]
  call void @llvm.dbg.declare(metadata !{i8* %p_yuv_channels_ch3}, metadata !184), !dbg !182 ; [debug line = 17:12] [debug variable = _yuv.channels.ch3]
  call void @llvm.dbg.declare(metadata !{i16* %p_yuv_width}, metadata !185), !dbg !182 ; [debug line = 17:12] [debug variable = _yuv.width]
  call void @llvm.dbg.declare(metadata !{i16* %p_yuv_height}, metadata !186), !dbg !182 ; [debug line = 17:12] [debug variable = _yuv.height]
  call void @llvm.dbg.declare(metadata !{i8* %p_scale_channels_ch1}, metadata !187), !dbg !189 ; [debug line = 18:12] [debug variable = _scale.channels.ch1]
  call void @llvm.dbg.declare(metadata !{i8* %p_scale_channels_ch2}, metadata !190), !dbg !189 ; [debug line = 18:12] [debug variable = _scale.channels.ch2]
  call void @llvm.dbg.declare(metadata !{i8* %p_scale_channels_ch3}, metadata !191), !dbg !189 ; [debug line = 18:12] [debug variable = _scale.channels.ch3]
  call void @llvm.dbg.declare(metadata !{i16* %p_scale_width}, metadata !192), !dbg !189 ; [debug line = 18:12] [debug variable = _scale.width]
  call void @llvm.dbg.declare(metadata !{i16* %p_scale_height}, metadata !193), !dbg !189 ; [debug line = 18:12] [debug variable = _scale.height]
  call void @llvm.dbg.value(metadata !{i8* %p_yuv_channels_ch1}, i64 0, metadata !194), !dbg !196 ; [debug line = 19:24] [debug variable = yuv.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %p_yuv_channels_ch2}, i64 0, metadata !197), !dbg !196 ; [debug line = 19:24] [debug variable = yuv.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %p_yuv_channels_ch3}, i64 0, metadata !198), !dbg !196 ; [debug line = 19:24] [debug variable = yuv.channels.ch3]
  call void @llvm.dbg.value(metadata !{i8* %p_scale_channels_ch1}, i64 0, metadata !199), !dbg !201 ; [debug line = 20:28] [debug variable = scale.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %p_scale_channels_ch2}, i64 0, metadata !202), !dbg !201 ; [debug line = 20:28] [debug variable = scale.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %p_scale_channels_ch3}, i64 0, metadata !203), !dbg !201 ; [debug line = 20:28] [debug variable = scale.channels.ch3]
  %empty_41 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @Y_scale_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i8* %Y_scale_channel, i8* %Y_scale_channel) ; [#uses=0 type=i32]
  %empty_42 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_43 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @U_scale_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i8* %U_scale_channel, i8* %U_scale_channel) ; [#uses=0 type=i32]
  %empty_44 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_45 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @V_scale_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i8* %V_scale_channel, i8* %V_scale_channel) ; [#uses=0 type=i32]
  %empty_46 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call fastcc void @yuv_filter_rgb2yuv11([2457600 x i8]* %in_channels_ch1, [2457600 x i8]* %in_channels_ch2, [2457600 x i8]* %in_channels_ch3, i16* %in_width, i16* %in_height, i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch3, i16* %p_yuv_width, i16* %p_yuv_height, i8 %Y_scale_read, i8 %U_scale_read, i8 %V_scale_read, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel)
  %empty_47 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @p_yuv_OC_channels_OC_ch1_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch1) ; [#uses=0 type=i32]
  %empty_48 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_49 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @p_yuv_OC_channels_OC_ch2_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch2) ; [#uses=0 type=i32]
  %empty_50 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_51 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @p_yuv_OC_channels_OC_ch3_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_yuv_channels_ch3, i8* %p_yuv_channels_ch3) ; [#uses=0 type=i32]
  %empty_52 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_yuv_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_53 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @p_yuv_OC_width_OC_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_yuv_width, i16* %p_yuv_width) ; [#uses=0 type=i32]
  %empty_54 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_yuv_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_55 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_yuv_OC_height_OC_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_yuv_height, i16* %p_yuv_height) ; [#uses=0 type=i32]
  %empty_56 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_yuv_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call fastcc void @yuv_filter_yuv_scale(i8* %p_yuv_channels_ch1, i8* %p_yuv_channels_ch2, i8* %p_yuv_channels_ch3, i16* %p_yuv_width, i16* %p_yuv_height, i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch3, i16* %p_scale_width, i16* %p_scale_height, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel), !dbg !204 ; [debug line = 24:4]
  %empty_57 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_scale_OC_channels_OC_ch1_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch1) ; [#uses=0 type=i32]
  %empty_58 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_59 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_scale_OC_channels_OC_ch2_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch2) ; [#uses=0 type=i32]
  %empty_60 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_61 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @p_scale_OC_channels_OC_ch3_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2457600, i8* %p_scale_channels_ch3, i8* %p_scale_channels_ch3) ; [#uses=0 type=i32]
  %empty_62 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_scale_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_63 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @p_scale_OC_width_OC_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_scale_width, i16* %p_scale_width) ; [#uses=0 type=i32]
  %empty_64 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_scale_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_65 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @p_scale_OC_height_OC_channel_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i16* %p_scale_height, i16* %p_scale_height) ; [#uses=0 type=i32]
  %empty_66 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %p_scale_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call fastcc void @yuv_filter_yuv2rgb(i8* %p_scale_channels_ch1, i8* %p_scale_channels_ch2, i8* %p_scale_channels_ch3, i16* %p_scale_width, i16* %p_scale_height, [2457600 x i8]* %out_channels_ch1, [2457600 x i8]* %out_channels_ch2, [2457600 x i8]* %out_channels_ch3, i16* %out_width, i16* %out_height), !dbg !205 ; [debug line = 25:4]
  ret void, !dbg !206                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc void @yuv_filter_yuv2rgb(i8* %in_channels_ch1, i8* %in_channels_ch2, i8* %in_channels_ch3, i16* %in_width, i16* %in_height, [2457600 x i8]* nocapture %out_channels_ch1, [2457600 x i8]* nocapture %out_channels_ch2, [2457600 x i8]* nocapture %out_channels_ch3, i16* nocapture %out_width, i16* nocapture %out_height) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_67 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_68 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_69 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_70 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch1}, i64 0, metadata !207), !dbg !212 ; [debug line = 68:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch2}, i64 0, metadata !213), !dbg !212 ; [debug line = 68:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %in_channels_ch3}, i64 0, metadata !214), !dbg !212 ; [debug line = 68:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !215), !dbg !212 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !216), !dbg !212 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch1}, i64 0, metadata !217), !dbg !219 ; [debug line = 69:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch2}, i64 0, metadata !220), !dbg !219 ; [debug line = 69:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %out_channels_ch3}, i64 0, metadata !221), !dbg !219 ; [debug line = 69:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !222), !dbg !219 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !223), !dbg !219 ; [debug line = 69:16] [debug variable = out.height]
  %width = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_width), !dbg !224 ; [#uses=2 type=i16] [debug line = 83:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !226), !dbg !224 ; [debug line = 83:4] [debug variable = width]
  %height = call i16 @_ssdm_op_Read.ap_fifo.i16P(i16* %in_height), !dbg !227 ; [#uses=3 type=i16] [debug line = 84:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !228), !dbg !227 ; [debug line = 84:4] [debug variable = height]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_width, i16 %width), !dbg !229 ; [debug line = 85:4]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %out_height, i16 %height), !dbg !230 ; [debug line = 86:4]
  %cast = zext i16 %width to i32                  ; [#uses=1 type=i32]
  %cast1 = zext i16 %height to i32                ; [#uses=1 type=i32]
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
  %exitcond = icmp eq i16 %y, %height, !dbg !235  ; [#uses=2 type=i1] [debug line = 92:12]
  %y_mid2 = select i1 %exitcond, i16 0, i16 %y    ; [#uses=2 type=i16]
  %tmp_mid2_v = select i1 %exitcond, i16 %x_1, i16 %x, !dbg !238 ; [#uses=3 type=i16] [debug line = 94:2]
  %tmp = trunc i16 %tmp_mid2_v to i13             ; [#uses=1 type=i13]
  %p_shl2_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp, i10 0) ; [#uses=1 type=i23]
  %tmp_1 = trunc i16 %tmp_mid2_v to i15           ; [#uses=1 type=i15]
  %p_shl3_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_1, i8 0), !dbg !240 ; [#uses=1 type=i23] [debug line = 103:10]
  %tmp_7 = add i23 %p_shl3_cast, %p_shl2_cast, !dbg !240 ; [#uses=1 type=i23] [debug line = 103:10]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind, !dbg !241 ; [debug line = 92:33]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str4), !dbg !241 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !242 ; [debug line = 93:1]
  %tmp_cast = zext i16 %y_mid2 to i23, !dbg !240  ; [#uses=1 type=i23] [debug line = 103:10]
  %tmp_s = add i23 %tmp_7, %tmp_cast, !dbg !240   ; [#uses=1 type=i23] [debug line = 103:10]
  %tmp_19_cast = zext i23 %tmp_s to i64, !dbg !240 ; [#uses=3 type=i64] [debug line = 103:10]
  %out_channels_ch1_addr = getelementptr [2457600 x i8]* %out_channels_ch1, i64 0, i64 %tmp_19_cast, !dbg !240 ; [#uses=1 type=i8*] [debug line = 103:10]
  %out_channels_ch2_addr = getelementptr [2457600 x i8]* %out_channels_ch2, i64 0, i64 %tmp_19_cast, !dbg !243 ; [#uses=1 type=i8*] [debug line = 104:10]
  %out_channels_ch3_addr = getelementptr [2457600 x i8]* %out_channels_ch3, i64 0, i64 %tmp_19_cast, !dbg !244 ; [#uses=1 type=i8*] [debug line = 105:10]
  %Y = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch1), !dbg !238 ; [#uses=1 type=i8] [debug line = 94:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !245), !dbg !238 ; [debug line = 94:2] [debug variable = Y]
  %U = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch2), !dbg !246 ; [#uses=1 type=i8] [debug line = 95:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !247), !dbg !246 ; [debug line = 95:10] [debug variable = U]
  %V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_channels_ch3), !dbg !248 ; [#uses=1 type=i8] [debug line = 96:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !249), !dbg !248 ; [debug line = 96:10] [debug variable = V]
  %tmp_13_cast = zext i8 %Y to i9, !dbg !250      ; [#uses=1 type=i9] [debug line = 97:10]
  %C = add i9 -16, %tmp_13_cast, !dbg !250        ; [#uses=1 type=i9] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i9 %C}, i64 0, metadata !251), !dbg !250 ; [debug line = 97:10] [debug variable = C]
  %D = xor i8 %U, -128, !dbg !254                 ; [#uses=3 type=i8] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i8 %D}, i64 0, metadata !255), !dbg !254 ; [debug line = 98:10] [debug variable = D]
  %E = xor i8 %V, -128, !dbg !256                 ; [#uses=2 type=i8] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i8 %E}, i64 0, metadata !257), !dbg !256 ; [debug line = 99:10] [debug variable = E]
  %tmp_16_cast = sext i9 %C to i18, !dbg !258     ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_3 = mul i18 298, %tmp_16_cast, !dbg !258   ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_18_cast4 = sext i8 %E to i18, !dbg !259    ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp_18_cast4_cast = sext i8 %E to i17, !dbg !258 ; [#uses=1 type=i17] [debug line = 100:10]
  %tmp_4 = mul i18 409, %tmp_18_cast4, !dbg !258  ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp_5 = add i18 128, %tmp_3, !dbg !258         ; [#uses=4 type=i18] [debug line = 100:10]
  %tmp_20_cast = sext i18 %tmp_5 to i19, !dbg !258 ; [#uses=1 type=i19] [debug line = 100:10]
  %tmp_6 = add i18 %tmp_5, %tmp_4, !dbg !258      ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp_8 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_6, i32 16, i32 17), !dbg !258 ; [#uses=1 type=i2] [debug line = 100:10]
  %icmp = icmp eq i2 %tmp_8, 1, !dbg !258         ; [#uses=2 type=i1] [debug line = 100:10]
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_6, i32 17), !dbg !258 ; [#uses=1 type=i1] [debug line = 100:10]
  %phitmp = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_6, i32 8, i32 15), !dbg !258 ; [#uses=1 type=i8] [debug line = 100:10]
  %p_phitmp = select i1 %icmp, i8 -1, i8 0, !dbg !258 ; [#uses=1 type=i8] [debug line = 100:10]
  %tmp_12 = or i1 %icmp, %tmp_9, !dbg !258        ; [#uses=1 type=i1] [debug line = 100:10]
  %R = select i1 %tmp_12, i8 %p_phitmp, i8 %phitmp, !dbg !258 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !260), !dbg !258 ; [debug line = 100:10] [debug variable = R]
  %tmp_26_cast3_cast = sext i8 %D to i16, !dbg !259 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_10 = mul i16 -100, %tmp_26_cast3_cast, !dbg !259 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp_10_cast = sext i16 %tmp_10 to i17, !dbg !259 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp_11 = mul i17 -208, %tmp_18_cast4_cast, !dbg !259 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1 = add i17 %tmp_10_cast, %tmp_11, !dbg !259 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1_cast = sext i17 %tmp1 to i18, !dbg !259   ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp_13 = add i18 %tmp1_cast, %tmp_5, !dbg !259 ; [#uses=3 type=i18] [debug line = 101:10]
  %tmp_14 = call i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18 %tmp_13, i32 16, i32 17), !dbg !259 ; [#uses=1 type=i2] [debug line = 101:10]
  %icmp1 = icmp eq i2 %tmp_14, 1, !dbg !259       ; [#uses=2 type=i1] [debug line = 101:10]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %tmp_13, i32 17), !dbg !259 ; [#uses=1 type=i1] [debug line = 101:10]
  %phitmp2 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_13, i32 8, i32 15), !dbg !259 ; [#uses=1 type=i8] [debug line = 101:10]
  %p_phitmp2 = select i1 %icmp1, i8 -1, i8 0, !dbg !259 ; [#uses=1 type=i8] [debug line = 101:10]
  %tmp_16 = or i1 %icmp1, %tmp_15, !dbg !259      ; [#uses=1 type=i1] [debug line = 101:10]
  %G = select i1 %tmp_16, i8 %p_phitmp2, i8 %phitmp2, !dbg !259 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !261), !dbg !259 ; [debug line = 101:10] [debug variable = G]
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8 %D, i9 0), !dbg !262 ; [#uses=1 type=i17] [debug line = 102:10]
  %p_shl_cast = sext i17 %p_shl to i18, !dbg !262 ; [#uses=1 type=i18] [debug line = 102:10]
  %p_shl1 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %D, i2 0), !dbg !262 ; [#uses=1 type=i10] [debug line = 102:10]
  %p_shl1_cast = sext i10 %p_shl1 to i18, !dbg !262 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp_17 = add i18 %p_shl_cast, %p_shl1_cast, !dbg !262 ; [#uses=2 type=i18] [debug line = 102:10]
  %tmp_35_cast = sext i18 %tmp_17 to i19, !dbg !262 ; [#uses=1 type=i19] [debug line = 102:10]
  %tmp_19 = add i18 %tmp_17, %tmp_5               ; [#uses=1 type=i18]
  %tmp_18 = add i19 %tmp_20_cast, %tmp_35_cast, !dbg !262 ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp_20 = call i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19 %tmp_18, i32 16, i32 18), !dbg !262 ; [#uses=1 type=i3] [debug line = 102:10]
  %icmp2 = icmp sgt i3 %tmp_20, 0, !dbg !262      ; [#uses=2 type=i1] [debug line = 102:10]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i19.i32(i19 %tmp_18, i32 18), !dbg !262 ; [#uses=1 type=i1] [debug line = 102:10]
  %phitmp3 = call i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18 %tmp_19, i32 8, i32 15), !dbg !262 ; [#uses=1 type=i8] [debug line = 102:10]
  %p_phitmp3 = select i1 %icmp2, i8 -1, i8 0, !dbg !262 ; [#uses=1 type=i8] [debug line = 102:10]
  %tmp_22 = or i1 %icmp2, %tmp_21, !dbg !262      ; [#uses=1 type=i1] [debug line = 102:10]
  %B = select i1 %tmp_22, i8 %p_phitmp3, i8 %phitmp3, !dbg !262 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !263), !dbg !262 ; [debug line = 102:10] [debug variable = B]
  store i8 %R, i8* %out_channels_ch1_addr, align 1, !dbg !240 ; [debug line = 103:10]
  store i8 %G, i8* %out_channels_ch2_addr, align 1, !dbg !243 ; [debug line = 104:10]
  store i8 %B, i8* %out_channels_ch3_addr, align 1, !dbg !244 ; [debug line = 105:10]
  %empty_71 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str4, i32 %tmp_2), !dbg !264 ; [#uses=0 type=i32] [debug line = 106:7]
  %y_1 = add i16 1, %y_mid2, !dbg !265            ; [#uses=1 type=i16] [debug line = 92:27]
  call void @llvm.dbg.value(metadata !{i16 %y_1}, i64 0, metadata !266), !dbg !265 ; [debug line = 92:27] [debug variable = y]
  br label %1, !dbg !265                          ; [debug line = 92:27]

; <label>:2                                       ; preds = %1
  ret void, !dbg !267                             ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc void @yuv_filter_rgb2yuv11([2457600 x i8]* nocapture %in_channels_ch1, [2457600 x i8]* nocapture %in_channels_ch2, [2457600 x i8]* nocapture %in_channels_ch3, i16* nocapture %in_width, i16* nocapture %in_height, i8* %out_channels_ch1, i8* %out_channels_ch2, i8* %out_channels_ch3, i16* %out_width, i16* %out_height, i8 %Y_scale, i8 %U_scale, i8 %V_scale, i8* %Y_scale_out, i8* %U_scale_out, i8* %V_scale_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_height, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_72 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out_width, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_73 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_74 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_75 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out_channels_ch1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_76 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %V_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %V_scale) ; [#uses=1 type=i8]
  %U_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %U_scale) ; [#uses=1 type=i8]
  %Y_scale_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %Y_scale) ; [#uses=1 type=i8]
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %Y_scale_out, i8 %Y_scale_read)
  %empty_77 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %U_scale_out, i8 %U_scale_read)
  %empty_78 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %V_scale_out, i8 %V_scale_read)
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch1}, i64 0, metadata !268), !dbg !271 ; [debug line = 30:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch2}, i64 0, metadata !272), !dbg !271 ; [debug line = 30:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[2457600 x i8]* %in_channels_ch3}, i64 0, metadata !273), !dbg !271 ; [debug line = 30:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in_width}, i64 0, metadata !274), !dbg !271 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in_height}, i64 0, metadata !275), !dbg !271 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch1}, i64 0, metadata !276), !dbg !278 ; [debug line = 31:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch2}, i64 0, metadata !279), !dbg !278 ; [debug line = 31:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %out_channels_ch3}, i64 0, metadata !280), !dbg !278 ; [debug line = 31:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out_width}, i64 0, metadata !281), !dbg !278 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out_height}, i64 0, metadata !282), !dbg !278 ; [debug line = 31:16] [debug variable = out.height]
  %width = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_width), !dbg !283 ; [#uses=2 type=i16] [debug line = 43:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !285), !dbg !283 ; [debug line = 43:4] [debug variable = width]
  %height = call i16 @_ssdm_op_Read.ap_auto.i16P(i16* %in_height), !dbg !286 ; [#uses=3 type=i16] [debug line = 44:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !287), !dbg !286 ; [debug line = 44:4] [debug variable = height]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_width, i16 %width), !dbg !288 ; [debug line = 45:4]
  call void @_ssdm_op_Write.ap_fifo.i16P(i16* %out_height, i16 %height), !dbg !289 ; [debug line = 46:4]
  %cast = zext i16 %width to i32                  ; [#uses=1 type=i32]
  %cast1 = zext i16 %height to i32                ; [#uses=1 type=i32]
  %bound = mul i32 %cast1, %cast                  ; [#uses=1 type=i32]
  br label %0, !dbg !290                          ; [debug line = 49:9]

; <label>:0                                       ; preds = %.reset, %entry
  %indvar_flatten = phi i32 [ 0, %entry ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i32]
  %x_i_i = phi i16 [ 0, %entry ], [ %tmp_i_i_mid2_v, %.reset ] ; [#uses=2 type=i16]
  %y_i_i = phi i16 [ 0, %entry ], [ %y, %.reset ] ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !292), !dbg !293 ; [debug line = 49:23] [debug variable = x]
  %exitcond_flatten = icmp eq i32 %indvar_flatten, %bound ; [#uses=1 type=i1]
  %indvar_flatten_next = add i32 %indvar_flatten, 1 ; [#uses=1 type=i32]
  br i1 %exitcond_flatten, label %.exit, label %.reset

.reset:                                           ; preds = %0
  %x = add i16 1, %x_i_i, !dbg !293               ; [#uses=1 type=i16] [debug line = 49:23]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !292), !dbg !293 ; [debug line = 49:23] [debug variable = x]
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @RGB2YUV_LOOP_X_RGB2YUV_LOOP_Y_s)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 40000, i64 2457600, i64 784400)
  %exitcond_i_i = icmp eq i16 %y_i_i, %height, !dbg !294 ; [#uses=2 type=i1] [debug line = 52:12]
  %y_i_i_mid2 = select i1 %exitcond_i_i, i16 0, i16 %y_i_i ; [#uses=2 type=i16]
  %tmp_i_i_mid2_v = select i1 %exitcond_i_i, i16 %x, i16 %x_i_i, !dbg !297 ; [#uses=3 type=i16] [debug line = 54:2]
  %tmp_22 = trunc i16 %tmp_i_i_mid2_v to i13      ; [#uses=1 type=i13]
  %p_shl_cast = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp_22, i10 0) ; [#uses=1 type=i23]
  %tmp_23 = trunc i16 %tmp_i_i_mid2_v to i15      ; [#uses=1 type=i15]
  %p_shl1_cast = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_23, i8 0), !dbg !297 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_s = add i23 %p_shl_cast, %p_shl1_cast, !dbg !297 ; [#uses=1 type=i23] [debug line = 54:2]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str2) nounwind, !dbg !299 ; [debug line = 52:33]
  %tmp_69_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str2), !dbg !299 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !300 ; [debug line = 53:1]
  %tmp_i_i_cast = zext i16 %y_i_i_mid2 to i23, !dbg !297 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_24 = add i23 %tmp_i_i_cast, %tmp_s, !dbg !297 ; [#uses=1 type=i23] [debug line = 54:2]
  %tmp_28_cast = zext i23 %tmp_24 to i64, !dbg !297 ; [#uses=3 type=i64] [debug line = 54:2]
  %in_channels_ch1_addr = getelementptr [2457600 x i8]* %in_channels_ch1, i64 0, i64 %tmp_28_cast, !dbg !297 ; [#uses=1 type=i8*] [debug line = 54:2]
  %in_channels_ch2_addr = getelementptr [2457600 x i8]* %in_channels_ch2, i64 0, i64 %tmp_28_cast, !dbg !301 ; [#uses=1 type=i8*] [debug line = 55:10]
  %in_channels_ch3_addr = getelementptr [2457600 x i8]* %in_channels_ch3, i64 0, i64 %tmp_28_cast, !dbg !302 ; [#uses=1 type=i8*] [debug line = 56:10]
  %R = load i8* %in_channels_ch1_addr, align 1, !dbg !297 ; [#uses=3 type=i8] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !303), !dbg !297 ; [debug line = 54:2] [debug variable = R]
  %G = load i8* %in_channels_ch2_addr, align 1, !dbg !301 ; [#uses=3 type=i8] [debug line = 55:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !304), !dbg !301 ; [debug line = 55:10] [debug variable = G]
  %B = load i8* %in_channels_ch3_addr, align 1, !dbg !302 ; [#uses=4 type=i8] [debug line = 56:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !305), !dbg !302 ; [debug line = 56:10] [debug variable = B]
  %tmp_40_cast14_i_i = zext i8 %R to i15, !dbg !306 ; [#uses=2 type=i15] [debug line = 59:10]
  %p_shl5_i_i = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R, i6 0), !dbg !307 ; [#uses=1 type=i14] [debug line = 57:10]
  %p_shl5_cast_i_i = zext i14 %p_shl5_i_i to i15, !dbg !307 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl6_i_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R, i1 false), !dbg !307 ; [#uses=1 type=i9] [debug line = 57:10]
  %p_shl6_cast_i_i_cast = zext i9 %p_shl6_i_i to i10, !dbg !307 ; [#uses=1 type=i10] [debug line = 57:10]
  %tmp_42_cast11_i_i = zext i8 %G to i16, !dbg !307 ; [#uses=2 type=i16] [debug line = 57:10]
  %tmp_42_cast11_i_i_cast = zext i8 %G to i13, !dbg !307 ; [#uses=1 type=i13] [debug line = 57:10]
  %p_shl4_i_i = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G, i7 0), !dbg !307 ; [#uses=1 type=i15] [debug line = 57:10]
  %p_shl4_cast_i_i = zext i15 %p_shl4_i_i to i16, !dbg !307 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_44_cast10_i_i = zext i8 %B to i13, !dbg !307 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp_45_i_i = mul i13 25, %tmp_44_cast10_i_i, !dbg !307 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp = add i10 128, %p_shl6_cast_i_i_cast, !dbg !307 ; [#uses=1 type=i10] [debug line = 57:10]
  %tmp_cast = zext i10 %tmp to i15, !dbg !307     ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp_46_i_i = add i15 %tmp_cast, %p_shl5_cast_i_i, !dbg !307 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp_46_cast_i_i = zext i15 %tmp_46_i_i to i16, !dbg !307 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp1 = add i16 %p_shl4_cast_i_i, %tmp_46_cast_i_i, !dbg !307 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp2 = add i13 %tmp_45_i_i, %tmp_42_cast11_i_i_cast, !dbg !307 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp2_cast = zext i13 %tmp2 to i16, !dbg !307   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_48_i_i = add i16 %tmp2_cast, %tmp1, !dbg !307 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp_50_i_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_48_i_i, i32 8, i32 15), !dbg !307 ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 16, %tmp_50_i_i, !dbg !307          ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !308), !dbg !307 ; [debug line = 57:10] [debug variable = Y]
  %tmp_51_i_i = mul i15 -38, %tmp_40_cast14_i_i, !dbg !309 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp_52_i_i = mul i16 -74, %tmp_42_cast11_i_i, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl2_i_i = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %B, i7 0), !dbg !309 ; [#uses=1 type=i15] [debug line = 58:10]
  %p_shl2_cast_i_i = zext i15 %p_shl2_i_i to i16, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %p_shl3_i_i = call i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8 %B, i4 0), !dbg !309 ; [#uses=2 type=i12] [debug line = 58:10]
  %p_shl3_cast7_i_i = zext i12 %p_shl3_i_i to i13, !dbg !309 ; [#uses=1 type=i13] [debug line = 58:10]
  %p_shl3_cast_i_i = zext i12 %p_shl3_i_i to i16, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_53_i_i = sub i16 %p_shl2_cast_i_i, %p_shl3_cast_i_i, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_54_i_i = add i15 128, %tmp_51_i_i, !dbg !309 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp_54_cast_i_i = sext i15 %tmp_54_i_i to i16, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp3 = add i16 %tmp_53_i_i, %tmp_54_cast_i_i, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_56_i_i = add i16 %tmp3, %tmp_52_i_i, !dbg !309 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp_58_i_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_56_i_i, i32 8, i32 15), !dbg !309 ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp_58_i_i, -128, !dbg !309        ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !310), !dbg !309 ; [debug line = 58:10] [debug variable = U]
  %tmp_59_i_i = mul i15 122, %tmp_40_cast14_i_i, !dbg !306 ; [#uses=1 type=i15] [debug line = 59:10]
  %tmp_60_i_i = mul i16 -94, %tmp_42_cast11_i_i, !dbg !306 ; [#uses=1 type=i16] [debug line = 59:10]
  %p_neg_i_i = sub i13 0, %p_shl3_cast7_i_i       ; [#uses=1 type=i13]
  %p_neg_cast_i_i = sext i13 %p_neg_i_i to i14    ; [#uses=1 type=i14]
  %p_shl1_i_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %B, i1 false), !dbg !306 ; [#uses=1 type=i9] [debug line = 59:10]
  %p_shl1_cast_i_i = zext i9 %p_shl1_i_i to i14, !dbg !306 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp_61_i_i = sub i14 %p_neg_cast_i_i, %p_shl1_cast_i_i, !dbg !306 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp_61_cast_i_i = sext i14 %tmp_61_i_i to i16, !dbg !306 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_62_i_i = add i15 128, %tmp_59_i_i, !dbg !306 ; [#uses=1 type=i15] [debug line = 59:10]
  %tmp_62_cast_i_i = zext i15 %tmp_62_i_i to i16, !dbg !306 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp4 = add i16 %tmp_62_cast_i_i, %tmp_61_cast_i_i, !dbg !306 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_64_i_i = add i16 %tmp4, %tmp_60_i_i, !dbg !306 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp_66_i_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_64_i_i, i32 8, i32 15), !dbg !306 ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp_66_i_i, -128, !dbg !306        ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !311), !dbg !306 ; [debug line = 59:10] [debug variable = V]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch1, i8 %Y), !dbg !312 ; [debug line = 60:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch2, i8 %U), !dbg !313 ; [debug line = 61:10]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %out_channels_ch3, i8 %V), !dbg !314 ; [debug line = 62:10]
  %empty_79 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str2, i32 %tmp_69_i_i), !dbg !315 ; [#uses=0 type=i32] [debug line = 63:7]
  %y = add i16 1, %y_i_i_mid2, !dbg !316          ; [#uses=1 type=i16] [debug line = 52:27]
  call void @llvm.dbg.value(metadata !{i16 %y}, i64 0, metadata !317), !dbg !316 ; [debug line = 52:27] [debug variable = y]
  br label %0, !dbg !316                          ; [debug line = 52:27]

.exit:                                            ; preds = %0
  ret void
}

; [#uses=2]
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

; [#uses=85]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=10]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=6]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; [#uses=0 type=i8]
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_Write.ap_fifo.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; [#uses=0 type=i8]
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_Write.ap_fifo.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1) ; [#uses=0 type=i16]
  ret void
}

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

; [#uses=45]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=19]
define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

; [#uses=13]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=6]
define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)   ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=3]
define weak i8 @_ssdm_op_Read.ap_fifo.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)   ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=4]
define weak i16 @_ssdm_op_Read.ap_fifo.i16P(i16*) {
entry:
  %empty = call i16 @_autotb_FifoRead_i16(i16* %0) ; [#uses=1 type=i16]
  ret i16 %empty
}

; [#uses=6]
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

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_80 = trunc i18 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_80
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_81 = trunc i16 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_81
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2) ; [#uses=1 type=i15]
  %empty_82 = trunc i15 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_82
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_83 = trunc i19 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_83
}

; [#uses=0]
define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_84 = trunc i11 %empty to i3              ; [#uses=1 type=i3]
  ret i3 %empty_84
}

; [#uses=2]
define weak i2 @_ssdm_op_PartSelect.i2.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_85 = trunc i18 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_85
}

; [#uses=0]
define weak i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2) ; [#uses=1 type=i10]
  %empty_86 = trunc i10 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_86
}

; [#uses=0]
declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
declare i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
define weak i11 @_ssdm_op_PartSelect.i11.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2) ; [#uses=1 type=i19]
  %empty_87 = trunc i19 %empty to i11             ; [#uses=1 type=i11]
  ret i11 %empty_87
}

; [#uses=0]
define weak i10 @_ssdm_op_PartSelect.i10.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; [#uses=1 type=i18]
  %empty_88 = trunc i18 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_88
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i19.i32(i19, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i19                    ; [#uses=1 type=i19]
  %empty_89 = shl i19 1, %empty                   ; [#uses=1 type=i19]
  %empty_90 = and i19 %0, %empty_89               ; [#uses=1 type=i19]
  %empty_91 = icmp ne i19 %empty_90, 0            ; [#uses=1 type=i1]
  ret i1 %empty_91
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18                    ; [#uses=1 type=i18]
  %empty_92 = shl i18 1, %empty                   ; [#uses=1 type=i18]
  %empty_93 = and i18 %0, %empty_92               ; [#uses=1 type=i18]
  %empty_94 = icmp ne i18 %empty_93, 0            ; [#uses=1 type=i1]
  ret i1 %empty_94
}

; [#uses=2]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_95 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_96 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_97 = or i9 %empty_96, %empty_95          ; [#uses=1 type=i9]
  ret i9 %empty_97
}

; [#uses=2]
define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23                     ; [#uses=1 type=i23]
  %empty_98 = zext i8 %1 to i23                   ; [#uses=1 type=i23]
  %empty_99 = shl i23 %empty, 8                   ; [#uses=1 type=i23]
  %empty_100 = or i23 %empty_99, %empty_98        ; [#uses=1 type=i23]
  ret i23 %empty_100
}

; [#uses=2]
define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23                     ; [#uses=1 type=i23]
  %empty_101 = zext i10 %1 to i23                 ; [#uses=1 type=i23]
  %empty_102 = shl i23 %empty, 10                 ; [#uses=1 type=i23]
  %empty_103 = or i23 %empty_102, %empty_101      ; [#uses=1 type=i23]
  ret i23 %empty_103
}

; [#uses=1]
define weak i17 @_ssdm_op_BitConcatenate.i17.i8.i9(i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %0 to i17                      ; [#uses=1 type=i17]
  %empty_104 = zext i9 %1 to i17                  ; [#uses=1 type=i17]
  %empty_105 = shl i17 %empty, 9                  ; [#uses=1 type=i17]
  %empty_106 = or i17 %empty_105, %empty_104      ; [#uses=1 type=i17]
  ret i17 %empty_106
}

; [#uses=2]
define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15                      ; [#uses=1 type=i15]
  %empty_107 = zext i7 %1 to i15                  ; [#uses=1 type=i15]
  %empty_108 = shl i15 %empty, 7                  ; [#uses=1 type=i15]
  %empty_109 = or i15 %empty_108, %empty_107      ; [#uses=1 type=i15]
  ret i15 %empty_109
}

; [#uses=1]
define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14                      ; [#uses=1 type=i14]
  %empty_110 = zext i6 %1 to i14                  ; [#uses=1 type=i14]
  %empty_111 = shl i14 %empty, 6                  ; [#uses=1 type=i14]
  %empty_112 = or i14 %empty_111, %empty_110      ; [#uses=1 type=i14]
  ret i14 %empty_112
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %0 to i12                      ; [#uses=1 type=i12]
  %empty_113 = zext i4 %1 to i12                  ; [#uses=1 type=i12]
  %empty_114 = shl i12 %empty, 4                  ; [#uses=1 type=i12]
  %empty_115 = or i12 %empty_114, %empty_113      ; [#uses=1 type=i12]
  ret i12 %empty_115
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10                      ; [#uses=1 type=i10]
  %empty_116 = zext i2 %1 to i10                  ; [#uses=1 type=i10]
  %empty_117 = shl i10 %empty, 2                  ; [#uses=1 type=i10]
  %empty_118 = or i10 %empty_117, %empty_116      ; [#uses=1 type=i10]
  ret i10 %empty_118
}

; [#uses=2]
declare i8 @_autotb_FifoWrite_i8(i8*, i8)

; [#uses=1]
declare i16 @_autotb_FifoWrite_i16(i16*, i16)

; [#uses=2]
declare i8 @_autotb_FifoRead_i8(i8*)

; [#uses=1]
declare i16 @_autotb_FifoRead_i16(i16*)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 790531, metadata !1, metadata !"in.channels.ch1", null, i32 111, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1 = metadata !{i32 786689, metadata !2, metadata !"in", metadata !3, i32 16777327, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2 = metadata !{i32 786478, i32 0, metadata !3, metadata !"yuv_scale", metadata !"yuv_scale", metadata !"", metadata !3, i32 110, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 117} ; [ DW_TAG_subprogram ]
!3 = metadata !{i32 786473, metadata !"yuv_filter.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_performance", null} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{null, metadata !6, metadata !6, metadata !28, metadata !28, metadata !28}
!6 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 786454, null, metadata !"image_t", metadata !3, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!8 = metadata !{i32 786451, null, metadata !"", metadata !9, i32 26, i64 58982432, i64 16, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!9 = metadata !{i32 786473, metadata !"./image_aux.h", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_performance", null} ; [ DW_TAG_file_type ]
!10 = metadata !{metadata !11, metadata !24, metadata !27}
!11 = metadata !{i32 786445, metadata !8, metadata !"channels", metadata !9, i32 27, i64 58982400, i64 8, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ]
!12 = metadata !{i32 786454, null, metadata !"channel_t", metadata !9, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 786451, null, metadata !"", metadata !9, i32 20, i64 58982400, i64 8, i32 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!14 = metadata !{metadata !15, metadata !22, metadata !23}
!15 = metadata !{i32 786445, metadata !13, metadata !"ch1", metadata !9, i32 21, i64 19660800, i64 8, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 19660800, i64 8, i32 0, i32 0, metadata !17, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{i32 786454, null, metadata !"image_pix_t", metadata !9, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!19 = metadata !{metadata !20, metadata !21}
!20 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!21 = metadata !{i32 786465, i64 0, i64 1279}     ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 786445, metadata !13, metadata !"ch2", metadata !9, i32 22, i64 19660800, i64 8, i64 19660800, i32 0, metadata !16} ; [ DW_TAG_member ]
!23 = metadata !{i32 786445, metadata !13, metadata !"ch3", metadata !9, i32 23, i64 19660800, i64 8, i64 39321600, i32 0, metadata !16} ; [ DW_TAG_member ]
!24 = metadata !{i32 786445, metadata !8, metadata !"width", metadata !9, i32 28, i64 16, i64 16, i64 58982400, i32 0, metadata !25} ; [ DW_TAG_member ]
!25 = metadata !{i32 786454, null, metadata !"image_dim_t", metadata !9, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 786445, metadata !8, metadata !"height", metadata !9, i32 29, i64 16, i64 16, i64 58982416, i32 0, metadata !25} ; [ DW_TAG_member ]
!28 = metadata !{i32 786454, null, metadata !"yuv_scale_t", metadata !3, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786452, null, metadata !"", metadata !9, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786452, null, metadata !"", metadata !9, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!35 = metadata !{metadata !15}
!36 = metadata !{i32 111, i32 16, metadata !2, null}
!37 = metadata !{i32 790531, metadata !1, metadata !"in.channels.ch2", null, i32 111, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ]
!39 = metadata !{i32 786452, null, metadata !"", metadata !9, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786452, null, metadata !"", metadata !9, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!42 = metadata !{metadata !22}
!43 = metadata !{i32 790531, metadata !1, metadata !"in.channels.ch3", null, i32 111, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!44 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ]
!45 = metadata !{i32 786452, null, metadata !"", metadata !9, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786452, null, metadata !"", metadata !9, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!48 = metadata !{metadata !23}
!49 = metadata !{i32 790531, metadata !1, metadata !"in.width", null, i32 111, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!50 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ]
!51 = metadata !{i32 786452, null, metadata !"", metadata !9, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!52 = metadata !{metadata !24}
!53 = metadata !{i32 790531, metadata !1, metadata !"in.height", null, i32 111, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!54 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!55 = metadata !{i32 786452, null, metadata !"", metadata !9, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!56 = metadata !{metadata !27}
!57 = metadata !{i32 790531, metadata !58, metadata !"out.channels.ch1", null, i32 112, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!58 = metadata !{i32 786689, metadata !2, metadata !"out", metadata !3, i32 33554544, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 112, i32 16, metadata !2, null}
!60 = metadata !{i32 790531, metadata !58, metadata !"out.channels.ch2", null, i32 112, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!61 = metadata !{i32 790531, metadata !58, metadata !"out.channels.ch3", null, i32 112, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!62 = metadata !{i32 790531, metadata !58, metadata !"out.width", null, i32 112, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!63 = metadata !{i32 790531, metadata !58, metadata !"out.height", null, i32 112, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!64 = metadata !{i32 786689, metadata !2, metadata !"Y_scale", metadata !3, i32 50331761, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 113, i32 19, metadata !2, null}
!66 = metadata !{i32 786689, metadata !2, metadata !"U_scale", metadata !3, i32 67108978, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 114, i32 19, metadata !2, null}
!68 = metadata !{i32 786689, metadata !2, metadata !"V_scale", metadata !3, i32 83886195, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 115, i32 19, metadata !2, null}
!70 = metadata !{i32 123, i32 4, metadata !71, null}
!71 = metadata !{i32 786443, metadata !2, i32 117, i32 1, metadata !3, i32 11} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786688, metadata !71, metadata !"width", metadata !3, i32 119, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 124, i32 4, metadata !71, null}
!74 = metadata !{i32 786688, metadata !71, metadata !"height", metadata !3, i32 119, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 125, i32 4, metadata !71, null}
!76 = metadata !{i32 126, i32 4, metadata !71, null}
!77 = metadata !{i32 138, i32 10, metadata !78, null}
!78 = metadata !{i32 786443, metadata !79, i32 132, i32 32, metadata !3, i32 15} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786443, metadata !80, i32 132, i32 7, metadata !3, i32 14} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !81, i32 129, i32 28, metadata !3, i32 13} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !71, i32 129, i32 4, metadata !3, i32 12} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 139, i32 10, metadata !78, null}
!83 = metadata !{i32 129, i32 9, metadata !81, null}
!84 = metadata !{i32 132, i32 33, metadata !78, null}
!85 = metadata !{i32 133, i32 1, metadata !78, null}
!86 = metadata !{i32 134, i32 2, metadata !78, null}
!87 = metadata !{i32 786688, metadata !71, metadata !"Y", metadata !3, i32 120, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 135, i32 10, metadata !78, null}
!89 = metadata !{i32 786688, metadata !71, metadata !"U", metadata !3, i32 120, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 136, i32 10, metadata !78, null}
!91 = metadata !{i32 786688, metadata !71, metadata !"V", metadata !3, i32 120, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 137, i32 10, metadata !78, null}
!93 = metadata !{i32 140, i32 10, metadata !78, null}
!94 = metadata !{i32 141, i32 10, metadata !78, null}
!95 = metadata !{i32 142, i32 10, metadata !78, null}
!96 = metadata !{i32 143, i32 7, metadata !78, null}
!97 = metadata !{i32 132, i32 27, metadata !79, null}
!98 = metadata !{i32 786689, metadata !99, metadata !"V_scale", metadata !3, i32 83886089, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 786478, i32 0, metadata !3, metadata !"yuv_filter", metadata !"yuv_filter", metadata !"", metadata !3, i32 4, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 11} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 9, i32 19, metadata !99, null}
!101 = metadata !{i32 786689, metadata !99, metadata !"U_scale", metadata !3, i32 67108872, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 8, i32 19, metadata !99, null}
!103 = metadata !{i32 786689, metadata !99, metadata !"Y_scale", metadata !3, i32 50331655, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 7, i32 19, metadata !99, null}
!105 = metadata !{i32 12, i32 1, metadata !106, null}
!106 = metadata !{i32 786443, metadata !99, i32 11, i32 1, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 7, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"in.channels.ch1", metadata !111, metadata !"unsigned char", i32 0, i32 7}
!111 = metadata !{metadata !112, metadata !113}
!112 = metadata !{i32 0, i32 1919, i32 1}
!113 = metadata !{i32 0, i32 1279, i32 1}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 7, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"in.channels.ch2", metadata !111, metadata !"unsigned char", i32 0, i32 7}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 7, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"in.channels.ch3", metadata !111, metadata !"unsigned char", i32 0, i32 7}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 15, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"in.width", metadata !126, metadata !"unsigned short", i32 0, i32 15}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 0, i32 1}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 15, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"in.height", metadata !126, metadata !"unsigned short", i32 0, i32 15}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 7, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"out.channels.ch1", metadata !111, metadata !"unsigned char", i32 0, i32 7}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 0, i32 7, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"out.channels.ch2", metadata !111, metadata !"unsigned char", i32 0, i32 7}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 0, i32 7, metadata !142}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !"out.channels.ch3", metadata !111, metadata !"unsigned char", i32 0, i32 7}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 15, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"out.width", metadata !126, metadata !"unsigned short", i32 0, i32 15}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 0, i32 15, metadata !150}
!150 = metadata !{metadata !151}
!151 = metadata !{metadata !"out.height", metadata !126, metadata !"unsigned short", i32 0, i32 15}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 0, i32 7, metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{metadata !"Y_scale", metadata !156, metadata !"unsigned char", i32 0, i32 7}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 0, i32 0}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 0, i32 7, metadata !160}
!160 = metadata !{metadata !161}
!161 = metadata !{metadata !"U_scale", metadata !156, metadata !"unsigned char", i32 0, i32 7}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 0, i32 7, metadata !164}
!164 = metadata !{metadata !165}
!165 = metadata !{metadata !"V_scale", metadata !156, metadata !"unsigned char", i32 0, i32 7}
!166 = metadata !{i32 790531, metadata !167, metadata !"in.channels.ch1", null, i32 5, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!167 = metadata !{i32 786689, metadata !99, metadata !"in", metadata !3, i32 16777221, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 5, i32 16, metadata !99, null}
!169 = metadata !{i32 790531, metadata !167, metadata !"in.channels.ch2", null, i32 5, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!170 = metadata !{i32 790531, metadata !167, metadata !"in.channels.ch3", null, i32 5, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!171 = metadata !{i32 790531, metadata !167, metadata !"in.width", null, i32 5, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!172 = metadata !{i32 790531, metadata !167, metadata !"in.height", null, i32 5, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!173 = metadata !{i32 790531, metadata !174, metadata !"out.channels.ch1", null, i32 6, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!174 = metadata !{i32 786689, metadata !99, metadata !"out", metadata !3, i32 33554438, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 6, i32 16, metadata !99, null}
!176 = metadata !{i32 790531, metadata !174, metadata !"out.channels.ch2", null, i32 6, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!177 = metadata !{i32 790531, metadata !174, metadata !"out.channels.ch3", null, i32 6, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!178 = metadata !{i32 790531, metadata !174, metadata !"out.width", null, i32 6, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!179 = metadata !{i32 790531, metadata !174, metadata !"out.height", null, i32 6, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!180 = metadata !{i32 790529, metadata !181, metadata !"_yuv.channels.ch1", null, i32 17, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!181 = metadata !{i32 786688, metadata !106, metadata !"_yuv", metadata !3, i32 17, metadata !7, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 17, i32 12, metadata !106, null}
!183 = metadata !{i32 790529, metadata !181, metadata !"_yuv.channels.ch2", null, i32 17, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!184 = metadata !{i32 790529, metadata !181, metadata !"_yuv.channels.ch3", null, i32 17, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!185 = metadata !{i32 790529, metadata !181, metadata !"_yuv.width", null, i32 17, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!186 = metadata !{i32 790529, metadata !181, metadata !"_yuv.height", null, i32 17, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!187 = metadata !{i32 790529, metadata !188, metadata !"_scale.channels.ch1", null, i32 18, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!188 = metadata !{i32 786688, metadata !106, metadata !"_scale", metadata !3, i32 18, metadata !7, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 18, i32 12, metadata !106, null}
!190 = metadata !{i32 790529, metadata !188, metadata !"_scale.channels.ch2", null, i32 18, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!191 = metadata !{i32 790529, metadata !188, metadata !"_scale.channels.ch3", null, i32 18, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!192 = metadata !{i32 790529, metadata !188, metadata !"_scale.width", null, i32 18, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!193 = metadata !{i32 790529, metadata !188, metadata !"_scale.height", null, i32 18, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!194 = metadata !{i32 790529, metadata !195, metadata !"yuv.channels.ch1", null, i32 19, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!195 = metadata !{i32 786688, metadata !106, metadata !"yuv", metadata !3, i32 19, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 19, i32 24, metadata !106, null}
!197 = metadata !{i32 790529, metadata !195, metadata !"yuv.channels.ch2", null, i32 19, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!198 = metadata !{i32 790529, metadata !195, metadata !"yuv.channels.ch3", null, i32 19, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!199 = metadata !{i32 790529, metadata !200, metadata !"scale.channels.ch1", null, i32 20, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!200 = metadata !{i32 786688, metadata !106, metadata !"scale", metadata !3, i32 20, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 20, i32 28, metadata !106, null}
!202 = metadata !{i32 790529, metadata !200, metadata !"scale.channels.ch2", null, i32 20, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!203 = metadata !{i32 790529, metadata !200, metadata !"scale.channels.ch3", null, i32 20, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!204 = metadata !{i32 24, i32 4, metadata !106, null}
!205 = metadata !{i32 25, i32 4, metadata !106, null}
!206 = metadata !{i32 26, i32 1, metadata !106, null}
!207 = metadata !{i32 790531, metadata !208, metadata !"in.channels.ch1", null, i32 68, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!208 = metadata !{i32 786689, metadata !209, metadata !"in", metadata !3, i32 16777284, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 786478, i32 0, metadata !3, metadata !"yuv2rgb", metadata !"yuv2rgb", metadata !"", metadata !3, i32 67, metadata !210, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 71} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{null, metadata !6, metadata !6}
!212 = metadata !{i32 68, i32 16, metadata !209, null}
!213 = metadata !{i32 790531, metadata !208, metadata !"in.channels.ch2", null, i32 68, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!214 = metadata !{i32 790531, metadata !208, metadata !"in.channels.ch3", null, i32 68, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!215 = metadata !{i32 790531, metadata !208, metadata !"in.width", null, i32 68, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!216 = metadata !{i32 790531, metadata !208, metadata !"in.height", null, i32 68, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!217 = metadata !{i32 790531, metadata !218, metadata !"out.channels.ch1", null, i32 69, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!218 = metadata !{i32 786689, metadata !209, metadata !"out", metadata !3, i32 33554501, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 69, i32 16, metadata !209, null}
!220 = metadata !{i32 790531, metadata !218, metadata !"out.channels.ch2", null, i32 69, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!221 = metadata !{i32 790531, metadata !218, metadata !"out.channels.ch3", null, i32 69, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!222 = metadata !{i32 790531, metadata !218, metadata !"out.width", null, i32 69, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!223 = metadata !{i32 790531, metadata !218, metadata !"out.height", null, i32 69, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!224 = metadata !{i32 83, i32 4, metadata !225, null}
!225 = metadata !{i32 786443, metadata !209, i32 71, i32 1, metadata !3, i32 6} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 786688, metadata !225, metadata !"width", metadata !3, i32 73, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 84, i32 4, metadata !225, null}
!228 = metadata !{i32 786688, metadata !225, metadata !"height", metadata !3, i32 73, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 85, i32 4, metadata !225, null}
!230 = metadata !{i32 86, i32 4, metadata !225, null}
!231 = metadata !{i32 89, i32 9, metadata !232, null}
!232 = metadata !{i32 786443, metadata !225, i32 89, i32 4, metadata !3, i32 7} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 786688, metadata !225, metadata !"x", metadata !3, i32 72, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 89, i32 23, metadata !232, null}
!235 = metadata !{i32 92, i32 12, metadata !236, null}
!236 = metadata !{i32 786443, metadata !237, i32 92, i32 7, metadata !3, i32 9} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 786443, metadata !232, i32 89, i32 28, metadata !3, i32 8} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 94, i32 2, metadata !239, null}
!239 = metadata !{i32 786443, metadata !236, i32 92, i32 32, metadata !3, i32 10} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 103, i32 10, metadata !239, null}
!241 = metadata !{i32 92, i32 33, metadata !239, null}
!242 = metadata !{i32 93, i32 1, metadata !239, null}
!243 = metadata !{i32 104, i32 10, metadata !239, null}
!244 = metadata !{i32 105, i32 10, metadata !239, null}
!245 = metadata !{i32 786688, metadata !225, metadata !"Y", metadata !3, i32 75, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 95, i32 10, metadata !239, null}
!247 = metadata !{i32 786688, metadata !225, metadata !"U", metadata !3, i32 75, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 96, i32 10, metadata !239, null}
!249 = metadata !{i32 786688, metadata !225, metadata !"V", metadata !3, i32 75, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 97, i32 10, metadata !239, null}
!251 = metadata !{i32 786688, metadata !225, metadata !"C", metadata !3, i32 76, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !3, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !253} ; [ DW_TAG_typedef ]
!253 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!254 = metadata !{i32 98, i32 10, metadata !239, null}
!255 = metadata !{i32 786688, metadata !225, metadata !"D", metadata !3, i32 76, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 99, i32 10, metadata !239, null}
!257 = metadata !{i32 786688, metadata !225, metadata !"E", metadata !3, i32 76, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 100, i32 10, metadata !239, null}
!259 = metadata !{i32 101, i32 10, metadata !239, null}
!260 = metadata !{i32 786688, metadata !225, metadata !"R", metadata !3, i32 74, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 786688, metadata !225, metadata !"G", metadata !3, i32 74, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 102, i32 10, metadata !239, null}
!263 = metadata !{i32 786688, metadata !225, metadata !"B", metadata !3, i32 74, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 106, i32 7, metadata !239, null}
!265 = metadata !{i32 92, i32 27, metadata !236, null}
!266 = metadata !{i32 786688, metadata !225, metadata !"y", metadata !3, i32 72, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!267 = metadata !{i32 108, i32 1, metadata !225, null}
!268 = metadata !{i32 790531, metadata !269, metadata !"in.channels.ch1", null, i32 30, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!269 = metadata !{i32 786689, metadata !270, metadata !"in", metadata !3, i32 16777246, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!270 = metadata !{i32 786478, i32 0, metadata !3, metadata !"rgb2yuv", metadata !"rgb2yuv", metadata !"", metadata !3, i32 29, metadata !210, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 33} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 30, i32 16, metadata !270, null}
!272 = metadata !{i32 790531, metadata !269, metadata !"in.channels.ch2", null, i32 30, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!273 = metadata !{i32 790531, metadata !269, metadata !"in.channels.ch3", null, i32 30, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!274 = metadata !{i32 790531, metadata !269, metadata !"in.width", null, i32 30, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!275 = metadata !{i32 790531, metadata !269, metadata !"in.height", null, i32 30, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!276 = metadata !{i32 790531, metadata !277, metadata !"out.channels.ch1", null, i32 31, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!277 = metadata !{i32 786689, metadata !270, metadata !"out", metadata !3, i32 33554463, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!278 = metadata !{i32 31, i32 16, metadata !270, null}
!279 = metadata !{i32 790531, metadata !277, metadata !"out.channels.ch2", null, i32 31, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!280 = metadata !{i32 790531, metadata !277, metadata !"out.channels.ch3", null, i32 31, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!281 = metadata !{i32 790531, metadata !277, metadata !"out.width", null, i32 31, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!282 = metadata !{i32 790531, metadata !277, metadata !"out.height", null, i32 31, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!283 = metadata !{i32 43, i32 4, metadata !284, null}
!284 = metadata !{i32 786443, metadata !270, i32 33, i32 1, metadata !3, i32 1} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 786688, metadata !284, metadata !"width", metadata !3, i32 35, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 44, i32 4, metadata !284, null}
!287 = metadata !{i32 786688, metadata !284, metadata !"height", metadata !3, i32 35, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!288 = metadata !{i32 45, i32 4, metadata !284, null}
!289 = metadata !{i32 46, i32 4, metadata !284, null}
!290 = metadata !{i32 49, i32 9, metadata !291, null}
!291 = metadata !{i32 786443, metadata !284, i32 49, i32 4, metadata !3, i32 2} ; [ DW_TAG_lexical_block ]
!292 = metadata !{i32 786688, metadata !284, metadata !"x", metadata !3, i32 34, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!293 = metadata !{i32 49, i32 23, metadata !291, null}
!294 = metadata !{i32 52, i32 12, metadata !295, null}
!295 = metadata !{i32 786443, metadata !296, i32 52, i32 7, metadata !3, i32 4} ; [ DW_TAG_lexical_block ]
!296 = metadata !{i32 786443, metadata !291, i32 49, i32 28, metadata !3, i32 3} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 54, i32 2, metadata !298, null}
!298 = metadata !{i32 786443, metadata !295, i32 52, i32 32, metadata !3, i32 5} ; [ DW_TAG_lexical_block ]
!299 = metadata !{i32 52, i32 33, metadata !298, null}
!300 = metadata !{i32 53, i32 1, metadata !298, null}
!301 = metadata !{i32 55, i32 10, metadata !298, null}
!302 = metadata !{i32 56, i32 10, metadata !298, null}
!303 = metadata !{i32 786688, metadata !284, metadata !"R", metadata !3, i32 36, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!304 = metadata !{i32 786688, metadata !284, metadata !"G", metadata !3, i32 36, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 786688, metadata !284, metadata !"B", metadata !3, i32 36, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!306 = metadata !{i32 59, i32 10, metadata !298, null}
!307 = metadata !{i32 57, i32 10, metadata !298, null}
!308 = metadata !{i32 786688, metadata !284, metadata !"Y", metadata !3, i32 36, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!309 = metadata !{i32 58, i32 10, metadata !298, null}
!310 = metadata !{i32 786688, metadata !284, metadata !"U", metadata !3, i32 36, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!311 = metadata !{i32 786688, metadata !284, metadata !"V", metadata !3, i32 36, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!312 = metadata !{i32 60, i32 10, metadata !298, null}
!313 = metadata !{i32 61, i32 10, metadata !298, null}
!314 = metadata !{i32 62, i32 10, metadata !298, null}
!315 = metadata !{i32 63, i32 7, metadata !298, null}
!316 = metadata !{i32 52, i32 27, metadata !295, null}
!317 = metadata !{i32 786688, metadata !284, metadata !"y", metadata !3, i32 34, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
