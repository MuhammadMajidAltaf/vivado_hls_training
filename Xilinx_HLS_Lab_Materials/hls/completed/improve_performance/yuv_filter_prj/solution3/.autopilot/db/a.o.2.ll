; ModuleID = 'C:/training/hls/labs/improve_performance/yuv_filter_prj/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@yuv_filter.str = internal unnamed_addr constant [11 x i8] c"yuv_filter\00" ; [#uses=1 type=[11 x i8]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=45 type=[8 x i8]*]
@_yuv_OC_width_OC_channel.str = internal unnamed_addr constant [19 x i8] c"_yuv.width.channel\00" ; [#uses=1 type=[19 x i8]*]
@_yuv_OC_height_OC_channel.str = internal unnamed_addr constant [20 x i8] c"_yuv.height.channel\00" ; [#uses=1 type=[20 x i8]*]
@_yuv_OC_channels_OC_ch3_OC_channel.str = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch3.channel\00" ; [#uses=1 type=[26 x i8]*]
@_yuv_OC_channels_OC_ch3.str = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch3\00" ; [#uses=1 type=[18 x i8]*]
@_yuv_OC_channels_OC_ch2_OC_channel.str = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch2.channel\00" ; [#uses=1 type=[26 x i8]*]
@_yuv_OC_channels_OC_ch2.str = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch2\00" ; [#uses=1 type=[18 x i8]*]
@_yuv_OC_channels_OC_ch1_OC_channel.str = internal unnamed_addr constant [26 x i8] c"_yuv.channels.ch1.channel\00" ; [#uses=1 type=[26 x i8]*]
@_yuv_OC_channels_OC_ch1.str = internal unnamed_addr constant [18 x i8] c"_yuv.channels.ch1\00" ; [#uses=1 type=[18 x i8]*]
@_scale_OC_width_OC_channel.str = internal unnamed_addr constant [21 x i8] c"_scale.width.channel\00" ; [#uses=1 type=[21 x i8]*]
@_scale_OC_height_OC_channel.str = internal unnamed_addr constant [22 x i8] c"_scale.height.channel\00" ; [#uses=1 type=[22 x i8]*]
@_scale_OC_channels_OC_ch3_OC_channel.str = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch3.channel\00" ; [#uses=1 type=[28 x i8]*]
@_scale_OC_channels_OC_ch3.str = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch3\00" ; [#uses=1 type=[20 x i8]*]
@_scale_OC_channels_OC_ch2_OC_channel.str = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch2.channel\00" ; [#uses=1 type=[28 x i8]*]
@_scale_OC_channels_OC_ch2.str = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch2\00" ; [#uses=1 type=[20 x i8]*]
@_scale_OC_channels_OC_ch1_OC_channel.str = internal unnamed_addr constant [28 x i8] c"_scale.channels.ch1.channel\00" ; [#uses=1 type=[28 x i8]*]
@_scale_OC_channels_OC_ch1.str = internal unnamed_addr constant [20 x i8] c"_scale.channels.ch1\00" ; [#uses=1 type=[20 x i8]*]
@Y_scale_channel.str = internal unnamed_addr constant [16 x i8] c"Y_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@V_scale_channel.str = internal unnamed_addr constant [16 x i8] c"V_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@U_scale_channel.str = internal unnamed_addr constant [16 x i8] c"U_scale_channel\00" ; [#uses=1 type=[16 x i8]*]
@.str6 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_Y\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str5 = private unnamed_addr constant [17 x i8] c"YUV_SCALE_LOOP_X\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str3 = private unnamed_addr constant [15 x i8] c"YUV2RGB_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_Y\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"RGB2YUV_LOOP_X\00", align 1 ; [#uses=3 type=[15 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=228 type=[1 x i8]*]

; [#uses=1]
define internal fastcc void @yuv_scale(i8* %in.channels.ch1, i8* %in.channels.ch2, i8* %in.channels.ch3, i16* %in.width, i16* %in.height, i8* %out.channels.ch1, i8* %out.channels.ch2, i8* %out.channels.ch3, i16* %out.width, i16* %out.height, i8* nocapture %Y_scale, i8* nocapture %U_scale, i8* nocapture %V_scale) {
entry:
  %0 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %7 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %9 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %10 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %11 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %12 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %Y_scale.assign = load i8* %Y_scale, align 1    ; [#uses=1 type=i8]
  %U_scale.assign = load i8* %U_scale, align 1    ; [#uses=1 type=i8]
  %V_scale.assign = load i8* %V_scale, align 1    ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch1}, i64 0, metadata !52), !dbg !59 ; [debug line = 111:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch2}, i64 0, metadata !60), !dbg !59 ; [debug line = 111:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch3}, i64 0, metadata !66), !dbg !59 ; [debug line = 111:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !72), !dbg !59 ; [debug line = 111:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !76), !dbg !59 ; [debug line = 111:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch1}, i64 0, metadata !80), !dbg !82 ; [debug line = 112:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch2}, i64 0, metadata !83), !dbg !82 ; [debug line = 112:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch3}, i64 0, metadata !84), !dbg !82 ; [debug line = 112:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !85), !dbg !82 ; [debug line = 112:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !86), !dbg !82 ; [debug line = 112:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale.assign}, i64 0, metadata !87), !dbg !88 ; [debug line = 113:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale.assign}, i64 0, metadata !89), !dbg !90 ; [debug line = 114:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale.assign}, i64 0, metadata !91), !dbg !92 ; [debug line = 115:19] [debug variable = V_scale]
  %width = load i16* %in.width, align 2, !dbg !93 ; [#uses=2 type=i16] [debug line = 123:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !95), !dbg !93 ; [debug line = 123:4] [debug variable = width]
  %height = load i16* %in.height, align 2, !dbg !96 ; [#uses=2 type=i16] [debug line = 124:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !97), !dbg !96 ; [debug line = 124:4] [debug variable = height]
  store i16 %width, i16* %out.width, align 2, !dbg !98 ; [debug line = 125:4]
  store i16 %height, i16* %out.height, align 2, !dbg !99 ; [debug line = 126:4]
  %tmp.cast.i = zext i8 %Y_scale.assign to i15, !dbg !100 ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp.1.cast.i = zext i8 %U_scale.assign to i15, !dbg !105 ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp.2.cast.i = zext i8 %V_scale.assign to i15, !dbg !106 ; [#uses=1 type=i15] [debug line = 129:9]
  br label %13, !dbg !106                         ; [debug line = 129:9]

; <label>:13                                      ; preds = %18, %entry
  %x.i = phi i16 [ 0, %entry ], [ %x, %18 ]       ; [#uses=2 type=i16]
  %exitcond1.i = icmp eq i16 %x.i, %width, !dbg !106 ; [#uses=1 type=i1] [debug line = 129:9]
  br i1 %exitcond1.i, label %.exit, label %14, !dbg !106 ; [debug line = 129:9]

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str5) nounwind, !dbg !107 ; [debug line = 129:29]
  %tmp.13.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str5), !dbg !107 ; [#uses=1 type=i32] [debug line = 129:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str) nounwind, !dbg !108 ; [debug line = 130:1]
  br label %15, !dbg !109                         ; [debug line = 132:12]

; <label>:15                                      ; preds = %16, %14
  %y.i = phi i16 [ 0, %14 ], [ %y, %16 ]          ; [#uses=2 type=i16]
  %exitcond.i = icmp eq i16 %y.i, %height, !dbg !109 ; [#uses=1 type=i1] [debug line = 132:12]
  br i1 %exitcond.i, label %18, label %16, !dbg !109 ; [debug line = 132:12]

; <label>:16                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str6) nounwind, !dbg !110 ; [debug line = 132:33]
  %tmp.14.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str6), !dbg !110 ; [#uses=1 type=i32] [debug line = 132:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !111 ; [debug line = 133:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str) nounwind, !dbg !111 ; [debug line = 133:1]
  %Y = load volatile i8* %in.channels.ch1, align 1, !dbg !112 ; [#uses=1 type=i8] [debug line = 134:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !113), !dbg !112 ; [debug line = 134:2] [debug variable = Y]
  %U = load volatile i8* %in.channels.ch2, align 1, !dbg !114 ; [#uses=1 type=i8] [debug line = 135:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !115), !dbg !114 ; [debug line = 135:10] [debug variable = U]
  %V = load volatile i8* %in.channels.ch3, align 1, !dbg !116 ; [#uses=1 type=i8] [debug line = 136:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !117), !dbg !116 ; [debug line = 136:10] [debug variable = V]
  %tmp.6.cast.i = zext i8 %Y to i15, !dbg !118    ; [#uses=1 type=i15] [debug line = 137:10]
  %tmp.7.i = mul i15 %tmp.cast.i, %tmp.6.cast.i, !dbg !118 ; [#uses=1 type=i15] [debug line = 137:10]
  %Yn = lshr i15 %tmp.7.i, 7, !dbg !118           ; [#uses=1 type=i15] [debug line = 137:10]
  call void @llvm.dbg.value(metadata !{i15 %Yn}, i64 0, metadata !119), !dbg !118 ; [debug line = 137:10] [debug variable = Yn]
  %tmp.9.cast.i = zext i8 %U to i15, !dbg !100    ; [#uses=1 type=i15] [debug line = 138:10]
  %tmp..i = mul i15 %tmp.1.cast.i, %tmp.9.cast.i, !dbg !100 ; [#uses=1 type=i15] [debug line = 138:10]
  %Un = lshr i15 %tmp..i, 7, !dbg !100            ; [#uses=1 type=i15] [debug line = 138:10]
  call void @llvm.dbg.value(metadata !{i15 %Un}, i64 0, metadata !121), !dbg !100 ; [debug line = 138:10] [debug variable = Un]
  %tmp.4.cast.i = zext i8 %V to i15, !dbg !105    ; [#uses=1 type=i15] [debug line = 139:10]
  %tmp.8.i = mul i15 %tmp.2.cast.i, %tmp.4.cast.i, !dbg !105 ; [#uses=1 type=i15] [debug line = 139:10]
  %Vn = lshr i15 %tmp.8.i, 7, !dbg !105           ; [#uses=1 type=i15] [debug line = 139:10]
  call void @llvm.dbg.value(metadata !{i15 %Vn}, i64 0, metadata !122), !dbg !105 ; [debug line = 139:10] [debug variable = Vn]
  %tmp.10.i = trunc i15 %Yn to i8, !dbg !123      ; [#uses=1 type=i8] [debug line = 140:10]
  store volatile i8 %tmp.10.i, i8* %out.channels.ch1, align 1, !dbg !123 ; [debug line = 140:10]
  %tmp.11.i = trunc i15 %Un to i8, !dbg !124      ; [#uses=1 type=i8] [debug line = 141:10]
  store volatile i8 %tmp.11.i, i8* %out.channels.ch2, align 1, !dbg !124 ; [debug line = 141:10]
  %tmp.12.i = trunc i15 %Vn to i8, !dbg !125      ; [#uses=1 type=i8] [debug line = 142:10]
  store volatile i8 %tmp.12.i, i8* %out.channels.ch3, align 1, !dbg !125 ; [debug line = 142:10]
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str6, i32 %tmp.14.i), !dbg !126 ; [#uses=0 type=i32] [debug line = 143:7]
  %y = add i16 %y.i, 1, !dbg !127                 ; [#uses=1 type=i16] [debug line = 132:27]
  call void @llvm.dbg.value(metadata !{i16 %y}, i64 0, metadata !128), !dbg !127 ; [debug line = 132:27] [debug variable = y]
  br label %15, !dbg !127                         ; [debug line = 132:27]

; <label>:18                                      ; preds = %15
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str5, i32 %tmp.13.i), !dbg !129 ; [#uses=0 type=i32] [debug line = 144:4]
  %x = add i16 %x.i, 1, !dbg !130                 ; [#uses=1 type=i16] [debug line = 129:23]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !131), !dbg !130 ; [debug line = 129:23] [debug variable = x]
  br label %13, !dbg !130                         ; [debug line = 129:23]

.exit:                                            ; preds = %13
  ret void
}

; [#uses=0]
define void @yuv_filter([1920 x [1280 x i8]]* %in.channels.ch1, [1920 x [1280 x i8]]* %in.channels.ch2, [1920 x [1280 x i8]]* %in.channels.ch3, i16* %in.width, i16* %in.height, [1920 x [1280 x i8]]* %out.channels.ch1, [1920 x [1280 x i8]]* %out.channels.ch2, [1920 x [1280 x i8]]* %out.channels.ch3, i16* %out.width, i16* %out.height, i8 zeroext %Y_scale, i8 zeroext %U_scale, i8 zeroext %V_scale) {
  %_scale.height = alloca i16, align 2            ; [#uses=5 type=i16*]
  %_scale.width = alloca i16, align 2             ; [#uses=5 type=i16*]
  %_yuv.height = alloca i16, align 2              ; [#uses=5 type=i16*]
  %_yuv.width = alloca i16, align 2               ; [#uses=5 type=i16*]
  %V_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  %U_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  %Y_scale_channel = alloca i8, align 1           ; [#uses=5 type=i8*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str) nounwind, !dbg !132 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch1), !map !134
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch2), !map !141
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %in.channels.ch3), !map !145
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in.width), !map !149
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %in.height), !map !155
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch1), !map !159
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch2), !map !163
  call void (...)* @_ssdm_op_SpecBitsMap([1920 x [1280 x i8]]* %out.channels.ch3), !map !167
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out.width), !map !171
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %out.height), !map !175
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Y_scale), !map !179
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %U_scale), !map !185
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %V_scale), !map !189
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @yuv_filter.str) nounwind
  %_yuv.channels.ch1 = alloca i8, align 1         ; [#uses=8 type=i8*]
  %1 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @_yuv_OC_channels_OC_ch1_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch1, i8* %_yuv.channels.ch1) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_yuv.channels.ch2 = alloca i8, align 1         ; [#uses=8 type=i8*]
  %3 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @_yuv_OC_channels_OC_ch2_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch2, i8* %_yuv.channels.ch2) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_yuv.channels.ch3 = alloca i8, align 1         ; [#uses=8 type=i8*]
  %5 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @_yuv_OC_channels_OC_ch3_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch3, i8* %_yuv.channels.ch3) ; [#uses=0 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_scale.channels.ch1 = alloca i8, align 1       ; [#uses=8 type=i8*]
  %7 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @_scale_OC_channels_OC_ch1_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch1, i8* %_scale.channels.ch1) ; [#uses=0 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_scale.channels.ch2 = alloca i8, align 1       ; [#uses=8 type=i8*]
  %9 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @_scale_OC_channels_OC_ch2_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch2, i8* %_scale.channels.ch2) ; [#uses=0 type=i32]
  %10 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %_scale.channels.ch3 = alloca i8, align 1       ; [#uses=8 type=i8*]
  %11 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @_scale_OC_channels_OC_ch3_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch3, i8* %_scale.channels.ch3) ; [#uses=0 type=i32]
  %12 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !193), !dbg !195 ; [debug line = 5:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !196), !dbg !195 ; [debug line = 5:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !197), !dbg !195 ; [debug line = 5:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !198), !dbg !195 ; [debug line = 5:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !199), !dbg !195 ; [debug line = 5:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !200), !dbg !202 ; [debug line = 6:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !203), !dbg !202 ; [debug line = 6:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !204), !dbg !202 ; [debug line = 6:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !205), !dbg !202 ; [debug line = 6:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !206), !dbg !202 ; [debug line = 6:16] [debug variable = out.height]
  call void @llvm.dbg.value(metadata !{i8 %Y_scale}, i64 0, metadata !207), !dbg !208 ; [debug line = 7:19] [debug variable = Y_scale]
  call void @llvm.dbg.value(metadata !{i8 %U_scale}, i64 0, metadata !209), !dbg !210 ; [debug line = 8:19] [debug variable = U_scale]
  call void @llvm.dbg.value(metadata !{i8 %V_scale}, i64 0, metadata !211), !dbg !212 ; [debug line = 9:19] [debug variable = V_scale]
  call void @llvm.dbg.declare(metadata !{i8* %_yuv.channels.ch1}, metadata !213), !dbg !215 ; [debug line = 17:12] [debug variable = _yuv.channels.ch1]
  call void @llvm.dbg.declare(metadata !{i8* %_yuv.channels.ch2}, metadata !216), !dbg !215 ; [debug line = 17:12] [debug variable = _yuv.channels.ch2]
  call void @llvm.dbg.declare(metadata !{i8* %_yuv.channels.ch3}, metadata !217), !dbg !215 ; [debug line = 17:12] [debug variable = _yuv.channels.ch3]
  call void @llvm.dbg.declare(metadata !{i16* %_yuv.width}, metadata !218), !dbg !215 ; [debug line = 17:12] [debug variable = _yuv.width]
  call void @llvm.dbg.declare(metadata !{i16* %_yuv.height}, metadata !219), !dbg !215 ; [debug line = 17:12] [debug variable = _yuv.height]
  call void @llvm.dbg.declare(metadata !{i8* %_scale.channels.ch1}, metadata !220), !dbg !222 ; [debug line = 18:12] [debug variable = _scale.channels.ch1]
  call void @llvm.dbg.declare(metadata !{i8* %_scale.channels.ch2}, metadata !223), !dbg !222 ; [debug line = 18:12] [debug variable = _scale.channels.ch2]
  call void @llvm.dbg.declare(metadata !{i8* %_scale.channels.ch3}, metadata !224), !dbg !222 ; [debug line = 18:12] [debug variable = _scale.channels.ch3]
  call void @llvm.dbg.declare(metadata !{i16* %_scale.width}, metadata !225), !dbg !222 ; [debug line = 18:12] [debug variable = _scale.width]
  call void @llvm.dbg.declare(metadata !{i16* %_scale.height}, metadata !226), !dbg !222 ; [debug line = 18:12] [debug variable = _scale.height]
  call void @llvm.dbg.value(metadata !{i8* %_yuv.channels.ch1}, i64 0, metadata !227), !dbg !229 ; [debug line = 19:24] [debug variable = yuv.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %_yuv.channels.ch2}, i64 0, metadata !230), !dbg !229 ; [debug line = 19:24] [debug variable = yuv.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %_yuv.channels.ch3}, i64 0, metadata !231), !dbg !229 ; [debug line = 19:24] [debug variable = yuv.channels.ch3]
  call void @llvm.dbg.value(metadata !{i8* %_scale.channels.ch1}, i64 0, metadata !232), !dbg !234 ; [debug line = 20:28] [debug variable = scale.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %_scale.channels.ch2}, i64 0, metadata !235), !dbg !234 ; [debug line = 20:28] [debug variable = scale.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %_scale.channels.ch3}, i64 0, metadata !236), !dbg !234 ; [debug line = 20:28] [debug variable = scale.channels.ch3]
  %13 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @Y_scale_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i8* %Y_scale_channel, i8* %Y_scale_channel) ; [#uses=0 type=i32]
  %14 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %15 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @U_scale_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i8* %U_scale_channel, i8* %U_scale_channel) ; [#uses=0 type=i32]
  %16 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %17 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @V_scale_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i8* %V_scale_channel, i8* %V_scale_channel) ; [#uses=0 type=i32]
  %18 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call fastcc void @rgb2yuv11([1920 x [1280 x i8]]* %in.channels.ch1, [1920 x [1280 x i8]]* %in.channels.ch2, [1920 x [1280 x i8]]* %in.channels.ch3, i16* %in.width, i16* %in.height, i8* %_yuv.channels.ch1, i8* %_yuv.channels.ch2, i8* %_yuv.channels.ch3, i16* %_yuv.width, i16* %_yuv.height, i8 %Y_scale, i8 %U_scale, i8 %V_scale, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel)
  %19 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @_yuv_OC_channels_OC_ch1.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch1, i8* %_yuv.channels.ch1) ; [#uses=0 type=i32]
  %20 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %21 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @_yuv_OC_channels_OC_ch2.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch2, i8* %_yuv.channels.ch2) ; [#uses=0 type=i32]
  %22 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %23 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @_yuv_OC_channels_OC_ch3.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_yuv.channels.ch3, i8* %_yuv.channels.ch3) ; [#uses=0 type=i32]
  %24 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_yuv.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %25 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @_yuv_OC_width_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i16* %_yuv.width, i16* %_yuv.width) ; [#uses=0 type=i32]
  %26 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %_yuv.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %27 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @_yuv_OC_height_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i16* %_yuv.height, i16* %_yuv.height) ; [#uses=0 type=i32]
  %28 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %_yuv.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call fastcc void @yuv_scale(i8* %_yuv.channels.ch1, i8* %_yuv.channels.ch2, i8* %_yuv.channels.ch3, i16* %_yuv.width, i16* %_yuv.height, i8* %_scale.channels.ch1, i8* %_scale.channels.ch2, i8* %_scale.channels.ch3, i16* %_scale.width, i16* %_scale.height, i8* %Y_scale_channel, i8* %U_scale_channel, i8* %V_scale_channel), !dbg !237 ; [debug line = 24:4]
  %29 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @_scale_OC_channels_OC_ch1.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch1, i8* %_scale.channels.ch1) ; [#uses=0 type=i32]
  %30 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %31 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @_scale_OC_channels_OC_ch2.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch2, i8* %_scale.channels.ch2) ; [#uses=0 type=i32]
  %32 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %33 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @_scale_OC_channels_OC_ch3.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2457600, i8* %_scale.channels.ch3, i8* %_scale.channels.ch3) ; [#uses=0 type=i32]
  %34 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %_scale.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %35 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @_scale_OC_width_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i16* %_scale.width, i16* %_scale.width) ; [#uses=0 type=i32]
  %36 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %_scale.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %37 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @_scale_OC_height_OC_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 0, i16* %_scale.height, i16* %_scale.height) ; [#uses=0 type=i32]
  %38 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %_scale.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call fastcc void @yuv2rgb(i8* %_scale.channels.ch1, i8* %_scale.channels.ch2, i8* %_scale.channels.ch3, i16* %_scale.width, i16* %_scale.height, [1920 x [1280 x i8]]* %out.channels.ch1, [1920 x [1280 x i8]]* %out.channels.ch2, [1920 x [1280 x i8]]* %out.channels.ch3, i16* %out.width, i16* %out.height), !dbg !238 ; [debug line = 25:4]
  ret void, !dbg !239                             ; [debug line = 26:1]
}

; [#uses=1]
define internal fastcc void @yuv2rgb(i8* %in.channels.ch1, i8* %in.channels.ch2, i8* %in.channels.ch3, i16* %in.width, i16* %in.height, [1920 x [1280 x i8]]* nocapture %out.channels.ch1, [1920 x [1280 x i8]]* nocapture %out.channels.ch2, [1920 x [1280 x i8]]* nocapture %out.channels.ch3, i16* nocapture %out.width, i16* nocapture %out.height) {
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %in.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %in.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch1}, i64 0, metadata !240), !dbg !242 ; [debug line = 68:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch2}, i64 0, metadata !243), !dbg !242 ; [debug line = 68:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %in.channels.ch3}, i64 0, metadata !244), !dbg !242 ; [debug line = 68:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !245), !dbg !242 ; [debug line = 68:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !246), !dbg !242 ; [debug line = 68:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch1}, i64 0, metadata !247), !dbg !249 ; [debug line = 69:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch2}, i64 0, metadata !250), !dbg !249 ; [debug line = 69:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %out.channels.ch3}, i64 0, metadata !251), !dbg !249 ; [debug line = 69:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !252), !dbg !249 ; [debug line = 69:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !253), !dbg !249 ; [debug line = 69:16] [debug variable = out.height]
  %width = load i16* %in.width, align 2, !dbg !254 ; [#uses=2 type=i16] [debug line = 83:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !256), !dbg !254 ; [debug line = 83:4] [debug variable = width]
  %height = load i16* %in.height, align 2, !dbg !257 ; [#uses=2 type=i16] [debug line = 84:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !258), !dbg !257 ; [debug line = 84:4] [debug variable = height]
  store i16 %width, i16* %out.width, align 2, !dbg !259 ; [debug line = 85:4]
  store i16 %height, i16* %out.height, align 2, !dbg !260 ; [debug line = 86:4]
  br label %6, !dbg !261                          ; [debug line = 89:9]

; <label>:6                                       ; preds = %10, %0
  %x = phi i16 [ 0, %0 ], [ %x.1, %10 ]           ; [#uses=3 type=i16]
  %exitcond1 = icmp eq i16 %x, %width, !dbg !261  ; [#uses=1 type=i1] [debug line = 89:9]
  br i1 %exitcond1, label %12, label %7, !dbg !261 ; [debug line = 89:9]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str3) nounwind, !dbg !263 ; [debug line = 89:29]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str3), !dbg !263 ; [#uses=1 type=i32] [debug line = 89:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str) nounwind, !dbg !265 ; [debug line = 90:1]
  %tmp = zext i16 %x to i64, !dbg !266            ; [#uses=3 type=i64] [debug line = 94:2]
  br label %8, !dbg !269                          ; [debug line = 92:12]

; <label>:8                                       ; preds = %_ifconv, %7
  %y = phi i16 [ 0, %7 ], [ %y.1, %_ifconv ]      ; [#uses=3 type=i16]
  %exitcond = icmp eq i16 %y, %height, !dbg !269  ; [#uses=1 type=i1] [debug line = 92:12]
  br i1 %exitcond, label %10, label %_ifconv, !dbg !269 ; [debug line = 92:12]

_ifconv:                                          ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str4) nounwind, !dbg !270 ; [debug line = 92:33]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str4), !dbg !270 ; [#uses=1 type=i32] [debug line = 92:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !271 ; [debug line = 93:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str) nounwind, !dbg !271 ; [debug line = 93:1]
  %tmp. = zext i16 %y to i64, !dbg !266           ; [#uses=3 type=i64] [debug line = 94:2]
  %Y = load volatile i8* %in.channels.ch1, align 1, !dbg !266 ; [#uses=1 type=i8] [debug line = 94:2]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !272), !dbg !266 ; [debug line = 94:2] [debug variable = Y]
  %U = load volatile i8* %in.channels.ch2, align 1, !dbg !273 ; [#uses=1 type=i8] [debug line = 95:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !274), !dbg !273 ; [debug line = 95:10] [debug variable = U]
  %V = load volatile i8* %in.channels.ch3, align 1, !dbg !275 ; [#uses=1 type=i8] [debug line = 96:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !276), !dbg !275 ; [debug line = 96:10] [debug variable = V]
  %tmp.13.cast = zext i8 %Y to i9, !dbg !277      ; [#uses=1 type=i9] [debug line = 97:10]
  %C = add i9 %tmp.13.cast, -16, !dbg !277        ; [#uses=1 type=i9] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{i9 %C}, i64 0, metadata !278), !dbg !277 ; [debug line = 97:10] [debug variable = C]
  %D = xor i8 %U, -128, !dbg !279                 ; [#uses=3 type=i8] [debug line = 98:10]
  call void @llvm.dbg.value(metadata !{i8 %D}, i64 0, metadata !280), !dbg !279 ; [debug line = 98:10] [debug variable = D]
  %E = xor i8 %V, -128, !dbg !281                 ; [#uses=2 type=i8] [debug line = 99:10]
  call void @llvm.dbg.value(metadata !{i8 %E}, i64 0, metadata !282), !dbg !281 ; [debug line = 99:10] [debug variable = E]
  %tmp.16.cast = sext i9 %C to i18, !dbg !283     ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.3 = mul i18 %tmp.16.cast, 298, !dbg !283   ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.18.cast4 = sext i8 %E to i18, !dbg !284    ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp.18.cast4.cast = sext i8 %E to i17, !dbg !283 ; [#uses=1 type=i17] [debug line = 100:10]
  %tmp.4 = mul i18 %tmp.18.cast4, 409, !dbg !283  ; [#uses=1 type=i18] [debug line = 100:10]
  %tmp.5 = add i18 %tmp.3, 128, !dbg !283         ; [#uses=3 type=i18] [debug line = 100:10]
  %tmp.20.cast = sext i18 %tmp.5 to i19, !dbg !283 ; [#uses=1 type=i19] [debug line = 100:10]
  %tmp.6 = add i18 %tmp.5, %tmp.4, !dbg !283      ; [#uses=2 type=i18] [debug line = 100:10]
  %tmp.7 = lshr i18 %tmp.6, 8, !dbg !283          ; [#uses=2 type=i18] [debug line = 100:10]
  %tmp.12 = trunc i18 %tmp.7 to i10, !dbg !283    ; [#uses=1 type=i10] [debug line = 100:10]
  %tmp.8 = icmp sgt i10 %tmp.12, 255, !dbg !283   ; [#uses=2 type=i1] [debug line = 100:10]
  %tmp.9 = icmp slt i18 %tmp.6, 0, !dbg !283      ; [#uses=1 type=i1] [debug line = 100:10]
  %phitmp = trunc i18 %tmp.7 to i8, !dbg !283     ; [#uses=1 type=i8] [debug line = 100:10]
  %.phitmp = sext i1 %tmp.8 to i8, !dbg !283      ; [#uses=1 type=i8] [debug line = 100:10]
  %tmp.14 = or i1 %tmp.8, %tmp.9, !dbg !283       ; [#uses=1 type=i1] [debug line = 100:10]
  %R = select i1 %tmp.14, i8 %.phitmp, i8 %phitmp, !dbg !283 ; [#uses=1 type=i8] [debug line = 100:10]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !285), !dbg !283 ; [debug line = 100:10] [debug variable = R]
  %tmp.26.cast3.cast = sext i8 %D to i16, !dbg !284 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp.26.cast = zext i8 %D to i10, !dbg !284     ; [#uses=1 type=i10] [debug line = 101:10]
  %tmp.26.cast8 = zext i8 %D to i17, !dbg !284    ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.10 = mul i16 %tmp.26.cast3.cast, -100, !dbg !284 ; [#uses=1 type=i16] [debug line = 101:10]
  %tmp.10.cast = sext i16 %tmp.10 to i17, !dbg !284 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp.11 = mul i17 %tmp.18.cast4.cast, -208, !dbg !284 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1 = add i17 %tmp.10.cast, %tmp.11, !dbg !284 ; [#uses=1 type=i17] [debug line = 101:10]
  %tmp1.cast = sext i17 %tmp1 to i18, !dbg !284   ; [#uses=1 type=i18] [debug line = 101:10]
  %tmp.13 = add i18 %tmp1.cast, %tmp.5, !dbg !284 ; [#uses=2 type=i18] [debug line = 101:10]
  %tmp.19 = lshr i18 %tmp.13, 8, !dbg !284        ; [#uses=2 type=i18] [debug line = 101:10]
  %tmp.22 = trunc i18 %tmp.19 to i10, !dbg !284   ; [#uses=1 type=i10] [debug line = 101:10]
  %tmp.15 = icmp sgt i10 %tmp.22, 255, !dbg !284  ; [#uses=2 type=i1] [debug line = 101:10]
  %tmp.16 = icmp slt i18 %tmp.13, 0, !dbg !284    ; [#uses=1 type=i1] [debug line = 101:10]
  %phitmp2 = trunc i18 %tmp.19 to i8, !dbg !284   ; [#uses=1 type=i8] [debug line = 101:10]
  %.phitmp2 = sext i1 %tmp.15 to i8, !dbg !284    ; [#uses=1 type=i8] [debug line = 101:10]
  %tmp.23 = or i1 %tmp.15, %tmp.16, !dbg !284     ; [#uses=1 type=i1] [debug line = 101:10]
  %G = select i1 %tmp.23, i8 %.phitmp2, i8 %phitmp2, !dbg !284 ; [#uses=1 type=i8] [debug line = 101:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !286), !dbg !284 ; [debug line = 101:10] [debug variable = G]
  %_shl = shl nuw i17 %tmp.26.cast8, 9, !dbg !287 ; [#uses=1 type=i17] [debug line = 102:10]
  %_shl.cast = sext i17 %_shl to i18, !dbg !287   ; [#uses=1 type=i18] [debug line = 102:10]
  %_shl1 = shl nuw i10 %tmp.26.cast, 2, !dbg !287 ; [#uses=1 type=i10] [debug line = 102:10]
  %_shl1.cast = sext i10 %_shl1 to i18, !dbg !287 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp.17 = add i18 %_shl.cast, %_shl1.cast, !dbg !287 ; [#uses=1 type=i18] [debug line = 102:10]
  %tmp.35.cast = sext i18 %tmp.17 to i19, !dbg !287 ; [#uses=1 type=i19] [debug line = 102:10]
  %tmp.18 = add i19 %tmp.20.cast, %tmp.35.cast, !dbg !287 ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp.24 = lshr i19 %tmp.18, 8, !dbg !287        ; [#uses=2 type=i19] [debug line = 102:10]
  %tmp.25 = trunc i19 %tmp.24 to i11, !dbg !287   ; [#uses=1 type=i11] [debug line = 102:10]
  %tmp.20 = icmp sgt i11 %tmp.25, 255, !dbg !287  ; [#uses=2 type=i1] [debug line = 102:10]
  %tmp.21 = icmp slt i19 %tmp.18, 0, !dbg !287    ; [#uses=1 type=i1] [debug line = 102:10]
  %phitmp3 = trunc i19 %tmp.24 to i8, !dbg !287   ; [#uses=1 type=i8] [debug line = 102:10]
  %.phitmp3 = sext i1 %tmp.20 to i8, !dbg !287    ; [#uses=1 type=i8] [debug line = 102:10]
  %tmp.26 = or i1 %tmp.20, %tmp.21, !dbg !287     ; [#uses=1 type=i1] [debug line = 102:10]
  %B = select i1 %tmp.26, i8 %.phitmp3, i8 %phitmp3, !dbg !287 ; [#uses=1 type=i8] [debug line = 102:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !288), !dbg !287 ; [debug line = 102:10] [debug variable = B]
  %out.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch1, i64 0, i64 %tmp, i64 %tmp., !dbg !289 ; [#uses=1 type=i8*] [debug line = 103:10]
  store i8 %R, i8* %out.channels.ch1.addr, align 1, !dbg !289 ; [debug line = 103:10]
  %out.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch2, i64 0, i64 %tmp, i64 %tmp., !dbg !290 ; [#uses=1 type=i8*] [debug line = 104:10]
  store i8 %G, i8* %out.channels.ch2.addr, align 1, !dbg !290 ; [debug line = 104:10]
  %out.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %out.channels.ch3, i64 0, i64 %tmp, i64 %tmp., !dbg !291 ; [#uses=1 type=i8*] [debug line = 105:10]
  store i8 %B, i8* %out.channels.ch3.addr, align 1, !dbg !291 ; [debug line = 105:10]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str4, i32 %tmp.2), !dbg !292 ; [#uses=0 type=i32] [debug line = 106:7]
  %y.1 = add i16 %y, 1, !dbg !293                 ; [#uses=1 type=i16] [debug line = 92:27]
  call void @llvm.dbg.value(metadata !{i16 %y.1}, i64 0, metadata !294), !dbg !293 ; [debug line = 92:27] [debug variable = y]
  br label %8, !dbg !293                          ; [debug line = 92:27]

; <label>:10                                      ; preds = %8
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str3, i32 %tmp.1), !dbg !295 ; [#uses=0 type=i32] [debug line = 107:4]
  %x.1 = add i16 %x, 1, !dbg !296                 ; [#uses=1 type=i16] [debug line = 89:23]
  call void @llvm.dbg.value(metadata !{i16 %x.1}, i64 0, metadata !297), !dbg !296 ; [debug line = 89:23] [debug variable = x]
  br label %6, !dbg !296                          ; [debug line = 89:23]

; <label>:12                                      ; preds = %6
  ret void, !dbg !298                             ; [debug line = 108:1]
}

; [#uses=1]
define internal fastcc void @rgb2yuv11([1920 x [1280 x i8]]* nocapture %in.channels.ch1, [1920 x [1280 x i8]]* nocapture %in.channels.ch2, [1920 x [1280 x i8]]* nocapture %in.channels.ch3, i16* nocapture %in.width, i16* nocapture %in.height, i8* %out.channels.ch1, i8* %out.channels.ch2, i8* %out.channels.ch3, i16* %out.width, i16* %out.height, i8 %Y_scale, i8 %U_scale, i8 %V_scale, i8* %Y_scale_out, i8* %U_scale_out, i8* %V_scale_out) {
entry:
  %0 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out.height, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(i16* %out.width, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch3, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch2, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %out.channels.ch1, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %Y_scale_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  store i8 %Y_scale, i8* %Y_scale_out, align 1
  %6 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %U_scale_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  store i8 %U_scale, i8* %U_scale_out, align 1
  %7 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %V_scale_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str) ; [#uses=0 type=i32]
  store i8 %V_scale, i8* %V_scale_out, align 1
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch1}, i64 0, metadata !299), !dbg !301 ; [debug line = 30:16] [debug variable = in.channels.ch1]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch2}, i64 0, metadata !302), !dbg !301 ; [debug line = 30:16] [debug variable = in.channels.ch2]
  call void @llvm.dbg.value(metadata !{[1920 x [1280 x i8]]* %in.channels.ch3}, i64 0, metadata !303), !dbg !301 ; [debug line = 30:16] [debug variable = in.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %in.width}, i64 0, metadata !304), !dbg !301 ; [debug line = 30:16] [debug variable = in.width]
  call void @llvm.dbg.value(metadata !{i16* %in.height}, i64 0, metadata !305), !dbg !301 ; [debug line = 30:16] [debug variable = in.height]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch1}, i64 0, metadata !306), !dbg !308 ; [debug line = 31:16] [debug variable = out.channels.ch1]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch2}, i64 0, metadata !309), !dbg !308 ; [debug line = 31:16] [debug variable = out.channels.ch2]
  call void @llvm.dbg.value(metadata !{i8* %out.channels.ch3}, i64 0, metadata !310), !dbg !308 ; [debug line = 31:16] [debug variable = out.channels.ch3]
  call void @llvm.dbg.value(metadata !{i16* %out.width}, i64 0, metadata !311), !dbg !308 ; [debug line = 31:16] [debug variable = out.width]
  call void @llvm.dbg.value(metadata !{i16* %out.height}, i64 0, metadata !312), !dbg !308 ; [debug line = 31:16] [debug variable = out.height]
  %width = load i16* %in.width, align 2, !dbg !313 ; [#uses=2 type=i16] [debug line = 43:4]
  call void @llvm.dbg.value(metadata !{i16 %width}, i64 0, metadata !315), !dbg !313 ; [debug line = 43:4] [debug variable = width]
  %height = load i16* %in.height, align 2, !dbg !316 ; [#uses=2 type=i16] [debug line = 44:4]
  call void @llvm.dbg.value(metadata !{i16 %height}, i64 0, metadata !317), !dbg !316 ; [debug line = 44:4] [debug variable = height]
  store i16 %width, i16* %out.width, align 2, !dbg !318 ; [debug line = 45:4]
  store i16 %height, i16* %out.height, align 2, !dbg !319 ; [debug line = 46:4]
  br label %8, !dbg !320                          ; [debug line = 49:9]

; <label>:8                                       ; preds = %13, %entry
  %x.i.i = phi i16 [ 0, %entry ], [ %x, %13 ]     ; [#uses=3 type=i16]
  %exitcond1.i.i = icmp eq i16 %x.i.i, %width, !dbg !320 ; [#uses=1 type=i1] [debug line = 49:9]
  br i1 %exitcond1.i.i, label %.exit, label %9, !dbg !320 ; [debug line = 49:9]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str1) nounwind, !dbg !322 ; [debug line = 49:29]
  %tmp.68.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str1), !dbg !322 ; [#uses=1 type=i32] [debug line = 49:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1920, i32 1060, [1 x i8]* @.str) nounwind, !dbg !324 ; [debug line = 50:1]
  %tmp.i.i = zext i16 %x.i.i to i64, !dbg !325    ; [#uses=3 type=i64] [debug line = 54:2]
  br label %10, !dbg !328                         ; [debug line = 52:12]

; <label>:10                                      ; preds = %11, %9
  %y.i.i = phi i16 [ 0, %9 ], [ %y, %11 ]         ; [#uses=3 type=i16]
  %exitcond.i.i = icmp eq i16 %y.i.i, %height, !dbg !328 ; [#uses=1 type=i1] [debug line = 52:12]
  br i1 %exitcond.i.i, label %13, label %11, !dbg !328 ; [debug line = 52:12]

; <label>:11                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str2) nounwind, !dbg !329 ; [debug line = 52:33]
  %tmp.69.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @.str2), !dbg !329 ; [#uses=1 type=i32] [debug line = 52:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !330 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 200, i32 1280, i32 740, [1 x i8]* @.str) nounwind, !dbg !330 ; [debug line = 53:1]
  %tmp..i.i = zext i16 %y.i.i to i64, !dbg !325   ; [#uses=3 type=i64] [debug line = 54:2]
  %in.channels.ch1.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch1, i64 0, i64 %tmp.i.i, i64 %tmp..i.i, !dbg !325 ; [#uses=1 type=i8*] [debug line = 54:2]
  %R = load i8* %in.channels.ch1.addr, align 1, !dbg !325 ; [#uses=3 type=i8] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i8 %R}, i64 0, metadata !331), !dbg !325 ; [debug line = 54:2] [debug variable = R]
  %in.channels.ch2.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch2, i64 0, i64 %tmp.i.i, i64 %tmp..i.i, !dbg !332 ; [#uses=1 type=i8*] [debug line = 55:10]
  %G = load i8* %in.channels.ch2.addr, align 1, !dbg !332 ; [#uses=3 type=i8] [debug line = 55:10]
  call void @llvm.dbg.value(metadata !{i8 %G}, i64 0, metadata !333), !dbg !332 ; [debug line = 55:10] [debug variable = G]
  %in.channels.ch3.addr = getelementptr [1920 x [1280 x i8]]* %in.channels.ch3, i64 0, i64 %tmp.i.i, i64 %tmp..i.i, !dbg !334 ; [#uses=1 type=i8*] [debug line = 56:10]
  %B = load i8* %in.channels.ch3.addr, align 1, !dbg !334 ; [#uses=4 type=i8] [debug line = 56:10]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !335), !dbg !334 ; [debug line = 56:10] [debug variable = B]
  %tmp.40.cast14.i.i = zext i8 %R to i15, !dbg !336 ; [#uses=2 type=i15] [debug line = 59:10]
  %tmp.40.cast12.i.i = zext i8 %R to i9, !dbg !337 ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.40.cast.i.i = zext i8 %R to i14, !dbg !337 ; [#uses=1 type=i14] [debug line = 57:10]
  %_shl5.i.i = shl nuw i14 %tmp.40.cast.i.i, 6, !dbg !337 ; [#uses=1 type=i14] [debug line = 57:10]
  %_shl5.cast.i.i = zext i14 %_shl5.i.i to i15, !dbg !337 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl6.i.i = shl nuw i9 %tmp.40.cast12.i.i, 1, !dbg !337 ; [#uses=1 type=i9] [debug line = 57:10]
  %_shl6.cast.i.i.cast = zext i9 %_shl6.i.i to i10, !dbg !337 ; [#uses=1 type=i10] [debug line = 57:10]
  %tmp.42.cast11.i.i = zext i8 %G to i16, !dbg !337 ; [#uses=2 type=i16] [debug line = 57:10]
  %tmp.42.cast11.i.i.cast = zext i8 %G to i13, !dbg !337 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp.42.cast.i.i = zext i8 %G to i15, !dbg !337 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl4.i.i = shl nuw i15 %tmp.42.cast.i.i, 7, !dbg !337 ; [#uses=1 type=i15] [debug line = 57:10]
  %_shl4.cast.i.i = zext i15 %_shl4.i.i to i16, !dbg !337 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.44.cast10.i.i = zext i8 %B to i13, !dbg !337 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp.44.cast9.i.i = zext i8 %B to i12, !dbg !337 ; [#uses=1 type=i12] [debug line = 57:10]
  %tmp.44.cast8.i.i = zext i8 %B to i15, !dbg !337 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.44.cast.i.i = zext i8 %B to i9, !dbg !337  ; [#uses=1 type=i9] [debug line = 57:10]
  %tmp.45.i.i = mul i13 %tmp.44.cast10.i.i, 25, !dbg !337 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp = add i10 %_shl6.cast.i.i.cast, 128, !dbg !337 ; [#uses=1 type=i10] [debug line = 57:10]
  %tmp.cast = zext i10 %tmp to i15, !dbg !337     ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.46.i.i = add i15 %_shl5.cast.i.i, %tmp.cast, !dbg !337 ; [#uses=1 type=i15] [debug line = 57:10]
  %tmp.46.cast.i.i = zext i15 %tmp.46.i.i to i16, !dbg !337 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp1 = add i16 %tmp.46.cast.i.i, %_shl4.cast.i.i, !dbg !337 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp2 = add i13 %tmp.42.cast11.i.i.cast, %tmp.45.i.i, !dbg !337 ; [#uses=1 type=i13] [debug line = 57:10]
  %tmp2.cast = zext i13 %tmp2 to i16, !dbg !337   ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.48.i.i = add i16 %tmp1, %tmp2.cast, !dbg !337 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.4916.i.i = lshr i16 %tmp.48.i.i, 8, !dbg !337 ; [#uses=1 type=i16] [debug line = 57:10]
  %tmp.50.i.i = trunc i16 %tmp.4916.i.i to i8, !dbg !337 ; [#uses=1 type=i8] [debug line = 57:10]
  %Y = add i8 %tmp.50.i.i, 16, !dbg !337          ; [#uses=1 type=i8] [debug line = 57:10]
  call void @llvm.dbg.value(metadata !{i8 %Y}, i64 0, metadata !338), !dbg !337 ; [debug line = 57:10] [debug variable = Y]
  %tmp.51.i.i = mul i15 %tmp.40.cast14.i.i, -38, !dbg !339 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp.52.i.i = mul i16 %tmp.42.cast11.i.i, -74, !dbg !339 ; [#uses=1 type=i16] [debug line = 58:10]
  %_shl2.i.i = shl nuw i15 %tmp.44.cast8.i.i, 7, !dbg !339 ; [#uses=1 type=i15] [debug line = 58:10]
  %_shl2.cast.i.i = zext i15 %_shl2.i.i to i16, !dbg !339 ; [#uses=1 type=i16] [debug line = 58:10]
  %_shl3.i.i = shl nuw i12 %tmp.44.cast9.i.i, 4, !dbg !339 ; [#uses=2 type=i12] [debug line = 58:10]
  %_shl3.cast7.i.i = zext i12 %_shl3.i.i to i13, !dbg !339 ; [#uses=1 type=i13] [debug line = 58:10]
  %_shl3.cast.i.i = zext i12 %_shl3.i.i to i16, !dbg !339 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.53.i.i = sub i16 %_shl2.cast.i.i, %_shl3.cast.i.i, !dbg !339 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.54.i.i = add i15 %tmp.51.i.i, 128, !dbg !339 ; [#uses=1 type=i15] [debug line = 58:10]
  %tmp.54.cast.i.i = sext i15 %tmp.54.i.i to i16, !dbg !339 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp3 = add i16 %tmp.54.cast.i.i, %tmp.53.i.i, !dbg !339 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.56.i.i = add i16 %tmp.52.i.i, %tmp3, !dbg !339 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.5717.i.i = lshr i16 %tmp.56.i.i, 8, !dbg !339 ; [#uses=1 type=i16] [debug line = 58:10]
  %tmp.58.i.i = trunc i16 %tmp.5717.i.i to i8, !dbg !339 ; [#uses=1 type=i8] [debug line = 58:10]
  %U = xor i8 %tmp.58.i.i, -128, !dbg !339        ; [#uses=1 type=i8] [debug line = 58:10]
  call void @llvm.dbg.value(metadata !{i8 %U}, i64 0, metadata !340), !dbg !339 ; [debug line = 58:10] [debug variable = U]
  %tmp.59.i.i = mul i15 %tmp.40.cast14.i.i, 122, !dbg !336 ; [#uses=1 type=i15] [debug line = 59:10]
  %tmp.60.i.i = mul i16 %tmp.42.cast11.i.i, -94, !dbg !336 ; [#uses=1 type=i16] [debug line = 59:10]
  %_neg.i.i = sub i13 0, %_shl3.cast7.i.i         ; [#uses=1 type=i13]
  %_neg.cast.i.i = sext i13 %_neg.i.i to i14      ; [#uses=1 type=i14]
  %_shl1.i.i = shl nuw i9 %tmp.44.cast.i.i, 1, !dbg !336 ; [#uses=1 type=i9] [debug line = 59:10]
  %_shl1.cast.i.i = zext i9 %_shl1.i.i to i14, !dbg !336 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp.61.i.i = sub i14 %_neg.cast.i.i, %_shl1.cast.i.i, !dbg !336 ; [#uses=1 type=i14] [debug line = 59:10]
  %tmp.61.cast.i.i = sext i14 %tmp.61.i.i to i16, !dbg !336 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.62.i.i = add i15 %tmp.59.i.i, 128, !dbg !336 ; [#uses=1 type=i15] [debug line = 59:10]
  %tmp.62.cast.i.i = zext i15 %tmp.62.i.i to i16, !dbg !336 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp4 = add i16 %tmp.61.cast.i.i, %tmp.62.cast.i.i, !dbg !336 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.64.i.i = add i16 %tmp.60.i.i, %tmp4, !dbg !336 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.6518.i.i = lshr i16 %tmp.64.i.i, 8, !dbg !336 ; [#uses=1 type=i16] [debug line = 59:10]
  %tmp.66.i.i = trunc i16 %tmp.6518.i.i to i8, !dbg !336 ; [#uses=1 type=i8] [debug line = 59:10]
  %V = xor i8 %tmp.66.i.i, -128, !dbg !336        ; [#uses=1 type=i8] [debug line = 59:10]
  call void @llvm.dbg.value(metadata !{i8 %V}, i64 0, metadata !341), !dbg !336 ; [debug line = 59:10] [debug variable = V]
  store volatile i8 %Y, i8* %out.channels.ch1, align 1, !dbg !342 ; [debug line = 60:10]
  store volatile i8 %U, i8* %out.channels.ch2, align 1, !dbg !343 ; [debug line = 61:10]
  store volatile i8 %V, i8* %out.channels.ch3, align 1, !dbg !344 ; [debug line = 62:10]
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str2, i32 %tmp.69.i.i), !dbg !345 ; [#uses=0 type=i32] [debug line = 63:7]
  %y = add i16 %y.i.i, 1, !dbg !346               ; [#uses=1 type=i16] [debug line = 52:27]
  call void @llvm.dbg.value(metadata !{i16 %y}, i64 0, metadata !347), !dbg !346 ; [debug line = 52:27] [debug variable = y]
  br label %10, !dbg !346                         ; [debug line = 52:27]

; <label>:13                                      ; preds = %10
  %14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @.str1, i32 %tmp.68.i.i), !dbg !348 ; [#uses=0 type=i32] [debug line = 64:4]
  %x = add i16 %x.i.i, 1, !dbg !349               ; [#uses=1 type=i16] [debug line = 49:23]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !350), !dbg !349 ; [debug line = 49:23] [debug variable = x]
  br label %8, !dbg !349                          ; [debug line = 49:23]

.exit:                                            ; preds = %8
  ret void
}

; [#uses=85]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=10]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=45]
declare i32 @_ssdm_op_SpecInterface(...)

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=19]
declare i32 @_ssdm_op_SpecChannel(...)

; [#uses=13]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/hls/labs/improve_performance/yuv_filter_prj/solution3/.autopilot/db/yuv_filter.pragma.2.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_performance", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !39} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !34, metadata !37, metadata !38}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv_filter", metadata !"yuv_filter", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 11} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"yuv_filter.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_performance", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !31, metadata !31, metadata !31}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"image_t", metadata !6, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 26, i64 58982432, i64 16, i32 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!12 = metadata !{i32 786473, metadata !"./image_aux.h", metadata !"C:\5Ctraining\5Chls\5Clabs\5Cimprove_performance", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !27, metadata !30}
!14 = metadata !{i32 786445, metadata !11, metadata !"channels", metadata !12, i32 27, i64 58982400, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786454, null, metadata !"channel_t", metadata !12, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!16 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 20, i64 58982400, i64 8, i32 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!17 = metadata !{metadata !18, metadata !25, metadata !26}
!18 = metadata !{i32 786445, metadata !16, metadata !"ch1", metadata !12, i32 21, i64 19660800, i64 8, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 19660800, i64 8, i32 0, i32 0, metadata !20, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{i32 786454, null, metadata !"image_pix_t", metadata !12, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23, metadata !24}
!23 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!24 = metadata !{i32 786465, i64 0, i64 1279}     ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 786445, metadata !16, metadata !"ch2", metadata !12, i32 22, i64 19660800, i64 8, i64 19660800, i32 0, metadata !19} ; [ DW_TAG_member ]
!26 = metadata !{i32 786445, metadata !16, metadata !"ch3", metadata !12, i32 23, i64 19660800, i64 8, i64 39321600, i32 0, metadata !19} ; [ DW_TAG_member ]
!27 = metadata !{i32 786445, metadata !11, metadata !"width", metadata !12, i32 28, i64 16, i64 16, i64 58982400, i32 0, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 786454, null, metadata !"image_dim_t", metadata !12, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786445, metadata !11, metadata !"height", metadata !12, i32 29, i64 16, i64 16, i64 58982416, i32 0, metadata !28} ; [ DW_TAG_member ]
!31 = metadata !{i32 786454, null, metadata !"yuv_scale_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rgb2yuv", metadata !"rgb2yuv", metadata !"", metadata !6, i32 29, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 33} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{null, metadata !9, metadata !9}
!37 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv2rgb", metadata !"yuv2rgb", metadata !"", metadata !6, i32 67, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 71} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"yuv_scale", metadata !"yuv_scale", metadata !"", metadata !6, i32 110, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 117} ; [ DW_TAG_subprogram ]
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !41, metadata !48}
!41 = metadata !{i32 786484, i32 0, metadata !34, metadata !"Wrgb", metadata !"Wrgb", metadata !"", metadata !6, i32 37, metadata !42, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !43, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ]
!44 = metadata !{i32 786454, null, metadata !"rgb2yuv_coef_t", metadata !6, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!45 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!46 = metadata !{metadata !47, metadata !47}
!47 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!48 = metadata !{i32 786484, i32 0, metadata !37, metadata !"Wyuv", metadata !"Wyuv", metadata !"", metadata !6, i32 77, metadata !49, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !50, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_const_type ]
!51 = metadata !{i32 786454, null, metadata !"yuv2rgb_coef_t", metadata !6, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 790531, metadata !53, metadata !"in.channels.ch1", null, i32 111, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!53 = metadata !{i32 786689, metadata !38, metadata !"in", metadata !6, i32 16777327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!55 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!58 = metadata !{metadata !18}
!59 = metadata !{i32 111, i32 16, metadata !38, null}
!60 = metadata !{i32 790531, metadata !53, metadata !"in.channels.ch2", null, i32 111, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!61 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!62 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!65 = metadata !{metadata !25}
!66 = metadata !{i32 790531, metadata !53, metadata !"in.channels.ch3", null, i32 111, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 19660800, i64 16, i32 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 20, i64 19660800, i64 8, i32 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!71 = metadata !{metadata !26}
!72 = metadata !{i32 790531, metadata !53, metadata !"in.width", null, i32 111, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!75 = metadata !{metadata !27}
!76 = metadata !{i32 790531, metadata !53, metadata !"in.height", null, i32 111, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!77 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ]
!78 = metadata !{i32 786452, null, metadata !"", metadata !12, i32 26, i64 16, i64 16, i32 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!79 = metadata !{metadata !30}
!80 = metadata !{i32 790531, metadata !81, metadata !"out.channels.ch1", null, i32 112, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!81 = metadata !{i32 786689, metadata !38, metadata !"out", metadata !6, i32 33554544, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 112, i32 16, metadata !38, null}
!83 = metadata !{i32 790531, metadata !81, metadata !"out.channels.ch2", null, i32 112, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!84 = metadata !{i32 790531, metadata !81, metadata !"out.channels.ch3", null, i32 112, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!85 = metadata !{i32 790531, metadata !81, metadata !"out.width", null, i32 112, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!86 = metadata !{i32 790531, metadata !81, metadata !"out.height", null, i32 112, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!87 = metadata !{i32 786689, metadata !38, metadata !"Y_scale", metadata !6, i32 50331761, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 113, i32 19, metadata !38, null}
!89 = metadata !{i32 786689, metadata !38, metadata !"U_scale", metadata !6, i32 67108978, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 114, i32 19, metadata !38, null}
!91 = metadata !{i32 786689, metadata !38, metadata !"V_scale", metadata !6, i32 83886195, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 115, i32 19, metadata !38, null}
!93 = metadata !{i32 123, i32 4, metadata !94, null}
!94 = metadata !{i32 786443, metadata !38, i32 117, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786688, metadata !94, metadata !"width", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 124, i32 4, metadata !94, null}
!97 = metadata !{i32 786688, metadata !94, metadata !"height", metadata !6, i32 119, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 125, i32 4, metadata !94, null}
!99 = metadata !{i32 126, i32 4, metadata !94, null}
!100 = metadata !{i32 138, i32 10, metadata !101, null}
!101 = metadata !{i32 786443, metadata !102, i32 132, i32 32, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !103, i32 132, i32 7, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !104, i32 129, i32 28, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 786443, metadata !94, i32 129, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 139, i32 10, metadata !101, null}
!106 = metadata !{i32 129, i32 9, metadata !104, null}
!107 = metadata !{i32 129, i32 29, metadata !103, null}
!108 = metadata !{i32 130, i32 1, metadata !103, null}
!109 = metadata !{i32 132, i32 12, metadata !102, null}
!110 = metadata !{i32 132, i32 33, metadata !101, null}
!111 = metadata !{i32 133, i32 1, metadata !101, null}
!112 = metadata !{i32 134, i32 2, metadata !101, null}
!113 = metadata !{i32 786688, metadata !94, metadata !"Y", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 135, i32 10, metadata !101, null}
!115 = metadata !{i32 786688, metadata !94, metadata !"U", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 136, i32 10, metadata !101, null}
!117 = metadata !{i32 786688, metadata !94, metadata !"V", metadata !6, i32 120, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 137, i32 10, metadata !101, null}
!119 = metadata !{i32 786688, metadata !94, metadata !"Yn", metadata !6, i32 121, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 786454, null, metadata !"yuv_intrnl_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!121 = metadata !{i32 786688, metadata !94, metadata !"Un", metadata !6, i32 121, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 786688, metadata !94, metadata !"Vn", metadata !6, i32 121, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 140, i32 10, metadata !101, null}
!124 = metadata !{i32 141, i32 10, metadata !101, null}
!125 = metadata !{i32 142, i32 10, metadata !101, null}
!126 = metadata !{i32 143, i32 7, metadata !101, null}
!127 = metadata !{i32 132, i32 27, metadata !102, null}
!128 = metadata !{i32 786688, metadata !94, metadata !"y", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 144, i32 4, metadata !103, null}
!130 = metadata !{i32 129, i32 23, metadata !104, null}
!131 = metadata !{i32 786688, metadata !94, metadata !"x", metadata !6, i32 118, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 12, i32 1, metadata !133, null}
!133 = metadata !{i32 786443, metadata !5, i32 11, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!134 = metadata !{metadata !135}
!135 = metadata !{i32 0, i32 7, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"in.channels.ch1", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!138 = metadata !{metadata !139, metadata !140}
!139 = metadata !{i32 0, i32 1919, i32 1}
!140 = metadata !{i32 0, i32 1279, i32 1}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 7, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"in.channels.ch2", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 7, metadata !147}
!147 = metadata !{metadata !148}
!148 = metadata !{metadata !"in.channels.ch3", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!149 = metadata !{metadata !150}
!150 = metadata !{i32 0, i32 15, metadata !151}
!151 = metadata !{metadata !152}
!152 = metadata !{metadata !"in.width", metadata !153, metadata !"unsigned short", i32 0, i32 15}
!153 = metadata !{metadata !154}
!154 = metadata !{i32 0, i32 0, i32 1}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 0, i32 15, metadata !157}
!157 = metadata !{metadata !158}
!158 = metadata !{metadata !"in.height", metadata !153, metadata !"unsigned short", i32 0, i32 15}
!159 = metadata !{metadata !160}
!160 = metadata !{i32 0, i32 7, metadata !161}
!161 = metadata !{metadata !162}
!162 = metadata !{metadata !"out.channels.ch1", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 7, metadata !165}
!165 = metadata !{metadata !166}
!166 = metadata !{metadata !"out.channels.ch2", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 0, i32 7, metadata !169}
!169 = metadata !{metadata !170}
!170 = metadata !{metadata !"out.channels.ch3", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!171 = metadata !{metadata !172}
!172 = metadata !{i32 0, i32 15, metadata !173}
!173 = metadata !{metadata !174}
!174 = metadata !{metadata !"out.width", metadata !153, metadata !"unsigned short", i32 0, i32 15}
!175 = metadata !{metadata !176}
!176 = metadata !{i32 0, i32 15, metadata !177}
!177 = metadata !{metadata !178}
!178 = metadata !{metadata !"out.height", metadata !153, metadata !"unsigned short", i32 0, i32 15}
!179 = metadata !{metadata !180}
!180 = metadata !{i32 0, i32 7, metadata !181}
!181 = metadata !{metadata !182}
!182 = metadata !{metadata !"Y_scale", metadata !183, metadata !"unsigned char", i32 0, i32 7}
!183 = metadata !{metadata !184}
!184 = metadata !{i32 0, i32 0, i32 0}
!185 = metadata !{metadata !186}
!186 = metadata !{i32 0, i32 7, metadata !187}
!187 = metadata !{metadata !188}
!188 = metadata !{metadata !"U_scale", metadata !183, metadata !"unsigned char", i32 0, i32 7}
!189 = metadata !{metadata !190}
!190 = metadata !{i32 0, i32 7, metadata !191}
!191 = metadata !{metadata !192}
!192 = metadata !{metadata !"V_scale", metadata !183, metadata !"unsigned char", i32 0, i32 7}
!193 = metadata !{i32 790531, metadata !194, metadata !"in.channels.ch1", null, i32 5, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!194 = metadata !{i32 786689, metadata !5, metadata !"in", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 5, i32 16, metadata !5, null}
!196 = metadata !{i32 790531, metadata !194, metadata !"in.channels.ch2", null, i32 5, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!197 = metadata !{i32 790531, metadata !194, metadata !"in.channels.ch3", null, i32 5, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!198 = metadata !{i32 790531, metadata !194, metadata !"in.width", null, i32 5, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!199 = metadata !{i32 790531, metadata !194, metadata !"in.height", null, i32 5, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!200 = metadata !{i32 790531, metadata !201, metadata !"out.channels.ch1", null, i32 6, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!201 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 6, i32 16, metadata !5, null}
!203 = metadata !{i32 790531, metadata !201, metadata !"out.channels.ch2", null, i32 6, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!204 = metadata !{i32 790531, metadata !201, metadata !"out.channels.ch3", null, i32 6, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!205 = metadata !{i32 790531, metadata !201, metadata !"out.width", null, i32 6, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!206 = metadata !{i32 790531, metadata !201, metadata !"out.height", null, i32 6, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!207 = metadata !{i32 786689, metadata !5, metadata !"Y_scale", metadata !6, i32 50331655, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!208 = metadata !{i32 7, i32 19, metadata !5, null}
!209 = metadata !{i32 786689, metadata !5, metadata !"U_scale", metadata !6, i32 67108872, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 8, i32 19, metadata !5, null}
!211 = metadata !{i32 786689, metadata !5, metadata !"V_scale", metadata !6, i32 83886089, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 9, i32 19, metadata !5, null}
!213 = metadata !{i32 790529, metadata !214, metadata !"_yuv.channels.ch1", null, i32 17, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!214 = metadata !{i32 786688, metadata !133, metadata !"_yuv", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 17, i32 12, metadata !133, null}
!216 = metadata !{i32 790529, metadata !214, metadata !"_yuv.channels.ch2", null, i32 17, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!217 = metadata !{i32 790529, metadata !214, metadata !"_yuv.channels.ch3", null, i32 17, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!218 = metadata !{i32 790529, metadata !214, metadata !"_yuv.width", null, i32 17, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!219 = metadata !{i32 790529, metadata !214, metadata !"_yuv.height", null, i32 17, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!220 = metadata !{i32 790529, metadata !221, metadata !"_scale.channels.ch1", null, i32 18, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!221 = metadata !{i32 786688, metadata !133, metadata !"_scale", metadata !6, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 18, i32 12, metadata !133, null}
!223 = metadata !{i32 790529, metadata !221, metadata !"_scale.channels.ch2", null, i32 18, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!224 = metadata !{i32 790529, metadata !221, metadata !"_scale.channels.ch3", null, i32 18, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!225 = metadata !{i32 790529, metadata !221, metadata !"_scale.width", null, i32 18, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!226 = metadata !{i32 790529, metadata !221, metadata !"_scale.height", null, i32 18, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!227 = metadata !{i32 790529, metadata !228, metadata !"yuv.channels.ch1", null, i32 19, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!228 = metadata !{i32 786688, metadata !133, metadata !"yuv", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 19, i32 24, metadata !133, null}
!230 = metadata !{i32 790529, metadata !228, metadata !"yuv.channels.ch2", null, i32 19, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!231 = metadata !{i32 790529, metadata !228, metadata !"yuv.channels.ch3", null, i32 19, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!232 = metadata !{i32 790529, metadata !233, metadata !"scale.channels.ch1", null, i32 20, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!233 = metadata !{i32 786688, metadata !133, metadata !"scale", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 20, i32 28, metadata !133, null}
!235 = metadata !{i32 790529, metadata !233, metadata !"scale.channels.ch2", null, i32 20, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!236 = metadata !{i32 790529, metadata !233, metadata !"scale.channels.ch3", null, i32 20, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!237 = metadata !{i32 24, i32 4, metadata !133, null}
!238 = metadata !{i32 25, i32 4, metadata !133, null}
!239 = metadata !{i32 26, i32 1, metadata !133, null}
!240 = metadata !{i32 790531, metadata !241, metadata !"in.channels.ch1", null, i32 68, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!241 = metadata !{i32 786689, metadata !37, metadata !"in", metadata !6, i32 16777284, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!242 = metadata !{i32 68, i32 16, metadata !37, null}
!243 = metadata !{i32 790531, metadata !241, metadata !"in.channels.ch2", null, i32 68, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!244 = metadata !{i32 790531, metadata !241, metadata !"in.channels.ch3", null, i32 68, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!245 = metadata !{i32 790531, metadata !241, metadata !"in.width", null, i32 68, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!246 = metadata !{i32 790531, metadata !241, metadata !"in.height", null, i32 68, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!247 = metadata !{i32 790531, metadata !248, metadata !"out.channels.ch1", null, i32 69, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!248 = metadata !{i32 786689, metadata !37, metadata !"out", metadata !6, i32 33554501, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!249 = metadata !{i32 69, i32 16, metadata !37, null}
!250 = metadata !{i32 790531, metadata !248, metadata !"out.channels.ch2", null, i32 69, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!251 = metadata !{i32 790531, metadata !248, metadata !"out.channels.ch3", null, i32 69, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!252 = metadata !{i32 790531, metadata !248, metadata !"out.width", null, i32 69, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!253 = metadata !{i32 790531, metadata !248, metadata !"out.height", null, i32 69, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!254 = metadata !{i32 83, i32 4, metadata !255, null}
!255 = metadata !{i32 786443, metadata !37, i32 71, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!256 = metadata !{i32 786688, metadata !255, metadata !"width", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 84, i32 4, metadata !255, null}
!258 = metadata !{i32 786688, metadata !255, metadata !"height", metadata !6, i32 73, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 85, i32 4, metadata !255, null}
!260 = metadata !{i32 86, i32 4, metadata !255, null}
!261 = metadata !{i32 89, i32 9, metadata !262, null}
!262 = metadata !{i32 786443, metadata !255, i32 89, i32 4, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 89, i32 29, metadata !264, null}
!264 = metadata !{i32 786443, metadata !262, i32 89, i32 28, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 90, i32 1, metadata !264, null}
!266 = metadata !{i32 94, i32 2, metadata !267, null}
!267 = metadata !{i32 786443, metadata !268, i32 92, i32 32, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!268 = metadata !{i32 786443, metadata !264, i32 92, i32 7, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 92, i32 12, metadata !268, null}
!270 = metadata !{i32 92, i32 33, metadata !267, null}
!271 = metadata !{i32 93, i32 1, metadata !267, null}
!272 = metadata !{i32 786688, metadata !255, metadata !"Y", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!273 = metadata !{i32 95, i32 10, metadata !267, null}
!274 = metadata !{i32 786688, metadata !255, metadata !"U", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 96, i32 10, metadata !267, null}
!276 = metadata !{i32 786688, metadata !255, metadata !"V", metadata !6, i32 75, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 97, i32 10, metadata !267, null}
!278 = metadata !{i32 786688, metadata !255, metadata !"C", metadata !6, i32 76, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!279 = metadata !{i32 98, i32 10, metadata !267, null}
!280 = metadata !{i32 786688, metadata !255, metadata !"D", metadata !6, i32 76, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 99, i32 10, metadata !267, null}
!282 = metadata !{i32 786688, metadata !255, metadata !"E", metadata !6, i32 76, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!283 = metadata !{i32 100, i32 10, metadata !267, null}
!284 = metadata !{i32 101, i32 10, metadata !267, null}
!285 = metadata !{i32 786688, metadata !255, metadata !"R", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 786688, metadata !255, metadata !"G", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!287 = metadata !{i32 102, i32 10, metadata !267, null}
!288 = metadata !{i32 786688, metadata !255, metadata !"B", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!289 = metadata !{i32 103, i32 10, metadata !267, null}
!290 = metadata !{i32 104, i32 10, metadata !267, null}
!291 = metadata !{i32 105, i32 10, metadata !267, null}
!292 = metadata !{i32 106, i32 7, metadata !267, null}
!293 = metadata !{i32 92, i32 27, metadata !268, null}
!294 = metadata !{i32 786688, metadata !255, metadata !"y", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!295 = metadata !{i32 107, i32 4, metadata !264, null}
!296 = metadata !{i32 89, i32 23, metadata !262, null}
!297 = metadata !{i32 786688, metadata !255, metadata !"x", metadata !6, i32 72, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!298 = metadata !{i32 108, i32 1, metadata !255, null}
!299 = metadata !{i32 790531, metadata !300, metadata !"in.channels.ch1", null, i32 30, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!300 = metadata !{i32 786689, metadata !34, metadata !"in", metadata !6, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!301 = metadata !{i32 30, i32 16, metadata !34, null}
!302 = metadata !{i32 790531, metadata !300, metadata !"in.channels.ch2", null, i32 30, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!303 = metadata !{i32 790531, metadata !300, metadata !"in.channels.ch3", null, i32 30, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!304 = metadata !{i32 790531, metadata !300, metadata !"in.width", null, i32 30, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!305 = metadata !{i32 790531, metadata !300, metadata !"in.height", null, i32 30, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!306 = metadata !{i32 790531, metadata !307, metadata !"out.channels.ch1", null, i32 31, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!307 = metadata !{i32 786689, metadata !34, metadata !"out", metadata !6, i32 33554463, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 31, i32 16, metadata !34, null}
!309 = metadata !{i32 790531, metadata !307, metadata !"out.channels.ch2", null, i32 31, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!310 = metadata !{i32 790531, metadata !307, metadata !"out.channels.ch3", null, i32 31, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!311 = metadata !{i32 790531, metadata !307, metadata !"out.width", null, i32 31, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!312 = metadata !{i32 790531, metadata !307, metadata !"out.height", null, i32 31, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!313 = metadata !{i32 43, i32 4, metadata !314, null}
!314 = metadata !{i32 786443, metadata !34, i32 33, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!315 = metadata !{i32 786688, metadata !314, metadata !"width", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!316 = metadata !{i32 44, i32 4, metadata !314, null}
!317 = metadata !{i32 786688, metadata !314, metadata !"height", metadata !6, i32 35, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!318 = metadata !{i32 45, i32 4, metadata !314, null}
!319 = metadata !{i32 46, i32 4, metadata !314, null}
!320 = metadata !{i32 49, i32 9, metadata !321, null}
!321 = metadata !{i32 786443, metadata !314, i32 49, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!322 = metadata !{i32 49, i32 29, metadata !323, null}
!323 = metadata !{i32 786443, metadata !321, i32 49, i32 28, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!324 = metadata !{i32 50, i32 1, metadata !323, null}
!325 = metadata !{i32 54, i32 2, metadata !326, null}
!326 = metadata !{i32 786443, metadata !327, i32 52, i32 32, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!327 = metadata !{i32 786443, metadata !323, i32 52, i32 7, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!328 = metadata !{i32 52, i32 12, metadata !327, null}
!329 = metadata !{i32 52, i32 33, metadata !326, null}
!330 = metadata !{i32 53, i32 1, metadata !326, null}
!331 = metadata !{i32 786688, metadata !314, metadata !"R", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!332 = metadata !{i32 55, i32 10, metadata !326, null}
!333 = metadata !{i32 786688, metadata !314, metadata !"G", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!334 = metadata !{i32 56, i32 10, metadata !326, null}
!335 = metadata !{i32 786688, metadata !314, metadata !"B", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!336 = metadata !{i32 59, i32 10, metadata !326, null}
!337 = metadata !{i32 57, i32 10, metadata !326, null}
!338 = metadata !{i32 786688, metadata !314, metadata !"Y", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!339 = metadata !{i32 58, i32 10, metadata !326, null}
!340 = metadata !{i32 786688, metadata !314, metadata !"U", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!341 = metadata !{i32 786688, metadata !314, metadata !"V", metadata !6, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!342 = metadata !{i32 60, i32 10, metadata !326, null}
!343 = metadata !{i32 61, i32 10, metadata !326, null}
!344 = metadata !{i32 62, i32 10, metadata !326, null}
!345 = metadata !{i32 63, i32 7, metadata !326, null}
!346 = metadata !{i32 52, i32 27, metadata !327, null}
!347 = metadata !{i32 786688, metadata !314, metadata !"y", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!348 = metadata !{i32 64, i32 4, metadata !323, null}
!349 = metadata !{i32 49, i32 23, metadata !321, null}
!350 = metadata !{i32 786688, metadata !314, metadata !"x", metadata !6, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
