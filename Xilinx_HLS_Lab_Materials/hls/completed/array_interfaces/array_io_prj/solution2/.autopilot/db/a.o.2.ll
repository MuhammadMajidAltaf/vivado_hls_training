; ModuleID = 'C:/training/hls/labs/array_interfaces/array_io_prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@array_io.str = internal unnamed_addr constant [9 x i8] c"array_io\00" ; [#uses=1 type=[9 x i8]*]
@acc.7 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc.6 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc.5 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc.4 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc.3 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc.2 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc.1 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@acc.0 = internal unnamed_addr global i32 0       ; [#uses=2 type=i32*]
@.str2 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=11 type=[1 x i8]*]
@.str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @array_io(i16* %d_o, [32 x i16]* %d_i) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %d_o) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i16]* %d_i) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @array_io.str) nounwind
  call void @llvm.dbg.value(metadata !{i16* %d_o}, i64 0, metadata !32), !dbg !36 ; [debug line = 57:23] [debug variable = d_o]
  call void @llvm.dbg.value(metadata !{[32 x i16]* %d_i}, i64 0, metadata !37), !dbg !39 ; [debug line = 57:41] [debug variable = d_i]
  call void (...)* @_ssdm_op_SpecInterface(i16* %d_o, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1)
  call void (...)* @_ssdm_op_SpecMemCore([32 x i16]* %d_i, [1 x i8]* @.str1, [12 x i8]* @.str2, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  %acc.0.load = load i32* @acc.0, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i.addr = getelementptr [32 x i16]* %d_i, i64 0, i64 0, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load = load i16* %d_i.addr, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2 = sext i16 %d_i.load to i32, !dbg !40    ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.0.loc.assign.2 = add nsw i32 %tmp.2, %acc.0.load, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3 = trunc i32 %acc.0.loc.assign.2 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %acc.1.load = load i32* @acc.1, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i.addr.1 = getelementptr [32 x i16]* %d_i, i64 0, i64 1, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.1 = load i16* %d_i.addr.1, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.1 = sext i16 %d_i.load.1 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.1.loc.assign.2 = add nsw i32 %tmp.2.1, %acc.1.load, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.1 = trunc i32 %acc.1.loc.assign.2 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.1, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %acc.2.load = load i32* @acc.2, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i.addr.2 = getelementptr [32 x i16]* %d_i, i64 0, i64 2, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.2 = load i16* %d_i.addr.2, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.2 = sext i16 %d_i.load.2 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.2.loc.assign.2 = add nsw i32 %tmp.2.2, %acc.2.load, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.2 = trunc i32 %acc.2.loc.assign.2 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.2, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %acc.3.load = load i32* @acc.3, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i.addr.3 = getelementptr [32 x i16]* %d_i, i64 0, i64 3, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.3 = load i16* %d_i.addr.3, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.3 = sext i16 %d_i.load.3 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.3.loc.assign.2 = add nsw i32 %tmp.2.3, %acc.3.load, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.3 = trunc i32 %acc.3.loc.assign.2 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.3, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %acc.4.load = load i32* @acc.4, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i.addr.4 = getelementptr [32 x i16]* %d_i, i64 0, i64 4, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.4 = load i16* %d_i.addr.4, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.4 = sext i16 %d_i.load.4 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.4.loc.assign.2 = add nsw i32 %tmp.2.4, %acc.4.load, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.4 = trunc i32 %acc.4.loc.assign.2 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.4, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %acc.5.load = load i32* @acc.5, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i.addr.5 = getelementptr [32 x i16]* %d_i, i64 0, i64 5, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.5 = load i16* %d_i.addr.5, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.5 = sext i16 %d_i.load.5 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.5.loc.assign.2 = add nsw i32 %tmp.2.5, %acc.5.load, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.5 = trunc i32 %acc.5.loc.assign.2 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.5, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %acc.6.load = load i32* @acc.6, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i.addr.6 = getelementptr [32 x i16]* %d_i, i64 0, i64 6, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.6 = load i16* %d_i.addr.6, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.6 = sext i16 %d_i.load.6 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.6.loc.assign.2 = add nsw i32 %tmp.2.6, %acc.6.load, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.6 = trunc i32 %acc.6.loc.assign.2 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.6, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %acc.7.load = load i32* @acc.7, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %d_i.addr.7 = getelementptr [32 x i16]* %d_i, i64 0, i64 7, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.7 = load i16* %d_i.addr.7, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.7 = sext i16 %d_i.load.7 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.7.loc.assign.2 = add nsw i32 %tmp.2.7, %acc.7.load, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.7 = trunc i32 %acc.7.loc.assign.2 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.7, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.8 = getelementptr [32 x i16]* %d_i, i64 0, i64 8, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.8 = load i16* %d_i.addr.8, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.8 = sext i16 %d_i.load.8 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.0.loc.assign.1 = add nsw i32 %tmp.2.8, %acc.0.loc.assign.2, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.8 = trunc i32 %acc.0.loc.assign.1 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.8, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.9 = getelementptr [32 x i16]* %d_i, i64 0, i64 9, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.9 = load i16* %d_i.addr.9, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.9 = sext i16 %d_i.load.9 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.1.loc.assign.1 = add nsw i32 %tmp.2.9, %acc.1.loc.assign.2, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.9 = trunc i32 %acc.1.loc.assign.1 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.9, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.10 = getelementptr [32 x i16]* %d_i, i64 0, i64 10, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.10 = load i16* %d_i.addr.10, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2. = sext i16 %d_i.load.10 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.2.loc.assign.1 = add nsw i32 %tmp.2., %acc.2.loc.assign.2, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3. = trunc i32 %acc.2.loc.assign.1 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3., i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.11 = getelementptr [32 x i16]* %d_i, i64 0, i64 11, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.11 = load i16* %d_i.addr.11, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.10 = sext i16 %d_i.load.11 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.3.loc.assign.1 = add nsw i32 %tmp.2.10, %acc.3.loc.assign.2, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.10 = trunc i32 %acc.3.loc.assign.1 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.10, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.12 = getelementptr [32 x i16]* %d_i, i64 0, i64 12, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.12 = load i16* %d_i.addr.12, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.11 = sext i16 %d_i.load.12 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.4.loc.assign.1 = add nsw i32 %tmp.2.11, %acc.4.loc.assign.2, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.11 = trunc i32 %acc.4.loc.assign.1 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.11, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.13 = getelementptr [32 x i16]* %d_i, i64 0, i64 13, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.13 = load i16* %d_i.addr.13, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.12 = sext i16 %d_i.load.13 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.5.loc.assign.1 = add nsw i32 %tmp.2.12, %acc.5.loc.assign.2, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.12 = trunc i32 %acc.5.loc.assign.1 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.12, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.14 = getelementptr [32 x i16]* %d_i, i64 0, i64 14, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.14 = load i16* %d_i.addr.14, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.13 = sext i16 %d_i.load.14 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.6.loc.assign.1 = add nsw i32 %tmp.2.13, %acc.6.loc.assign.2, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.13 = trunc i32 %acc.6.loc.assign.1 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.13, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.15 = getelementptr [32 x i16]* %d_i, i64 0, i64 15, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.15 = load i16* %d_i.addr.15, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.14 = sext i16 %d_i.load.15 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.7.loc.assign.1 = add nsw i32 %tmp.2.14, %acc.7.loc.assign.2, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.14 = trunc i32 %acc.7.loc.assign.1 to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.14, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.16 = getelementptr [32 x i16]* %d_i, i64 0, i64 16, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.16 = load i16* %d_i.addr.16, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.15 = sext i16 %d_i.load.16 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.0.loc = add nsw i32 %tmp.2.15, %acc.0.loc.assign.1, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.15 = trunc i32 %acc.0.loc to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.15, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.17 = getelementptr [32 x i16]* %d_i, i64 0, i64 17, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.17 = load i16* %d_i.addr.17, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.16 = sext i16 %d_i.load.17 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.1.loc = add nsw i32 %tmp.2.16, %acc.1.loc.assign.1, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.16 = trunc i32 %acc.1.loc to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.16, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.18 = getelementptr [32 x i16]* %d_i, i64 0, i64 18, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.18 = load i16* %d_i.addr.18, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.17 = sext i16 %d_i.load.18 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.2.loc = add nsw i32 %tmp.2.17, %acc.2.loc.assign.1, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.17 = trunc i32 %acc.2.loc to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.17, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.19 = getelementptr [32 x i16]* %d_i, i64 0, i64 19, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.19 = load i16* %d_i.addr.19, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.18 = sext i16 %d_i.load.19 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.3.loc = add nsw i32 %tmp.2.18, %acc.3.loc.assign.1, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.18 = trunc i32 %acc.3.loc to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.18, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.20 = getelementptr [32 x i16]* %d_i, i64 0, i64 20, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.20 = load i16* %d_i.addr.20, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.19 = sext i16 %d_i.load.20 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.4.loc = add nsw i32 %tmp.2.19, %acc.4.loc.assign.1, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.19 = trunc i32 %acc.4.loc to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.19, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.21 = getelementptr [32 x i16]* %d_i, i64 0, i64 21, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.21 = load i16* %d_i.addr.21, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.20 = sext i16 %d_i.load.21 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.5.loc = add nsw i32 %tmp.2.20, %acc.5.loc.assign.1, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.20 = trunc i32 %acc.5.loc to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.20, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.22 = getelementptr [32 x i16]* %d_i, i64 0, i64 22, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.22 = load i16* %d_i.addr.22, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.21 = sext i16 %d_i.load.22 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.6.loc = add nsw i32 %tmp.2.21, %acc.6.loc.assign.1, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.21 = trunc i32 %acc.6.loc to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.21, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.23 = getelementptr [32 x i16]* %d_i, i64 0, i64 23, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.23 = load i16* %d_i.addr.23, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.22 = sext i16 %d_i.load.23 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %acc.7.loc = add nsw i32 %tmp.2.22, %acc.7.loc.assign.1, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  %tmp.3.22 = trunc i32 %acc.7.loc to i16, !dbg !44 ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.22, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.24 = getelementptr [32 x i16]* %d_i, i64 0, i64 24, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.24 = load i16* %d_i.addr.24, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.23 = sext i16 %d_i.load.24 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp. = add nsw i32 %tmp.2.23, %acc.0.loc, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp., i32* @acc.0, align 16, !dbg !45 ; [debug line = 68:3]
  %tmp.3.23 = trunc i32 %temp. to i16, !dbg !44   ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.23, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.25 = getelementptr [32 x i16]* %d_i, i64 0, i64 25, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.25 = load i16* %d_i.addr.25, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.24 = sext i16 %d_i.load.25 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp.1 = add nsw i32 %tmp.2.24, %acc.1.loc, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp.1, i32* @acc.1, align 4, !dbg !45 ; [debug line = 68:3]
  %tmp.3.24 = trunc i32 %temp.1 to i16, !dbg !44  ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.24, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.26 = getelementptr [32 x i16]* %d_i, i64 0, i64 26, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.26 = load i16* %d_i.addr.26, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.25 = sext i16 %d_i.load.26 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp.2 = add nsw i32 %tmp.2.25, %acc.2.loc, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp.2, i32* @acc.2, align 8, !dbg !45 ; [debug line = 68:3]
  %tmp.3.25 = trunc i32 %temp.2 to i16, !dbg !44  ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.25, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.27 = getelementptr [32 x i16]* %d_i, i64 0, i64 27, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.27 = load i16* %d_i.addr.27, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.26 = sext i16 %d_i.load.27 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp.3 = add nsw i32 %tmp.2.26, %acc.3.loc, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp.3, i32* @acc.3, align 4, !dbg !45 ; [debug line = 68:3]
  %tmp.3.26 = trunc i32 %temp.3 to i16, !dbg !44  ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.26, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.28 = getelementptr [32 x i16]* %d_i, i64 0, i64 28, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.28 = load i16* %d_i.addr.28, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.27 = sext i16 %d_i.load.28 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp.4 = add nsw i32 %tmp.2.27, %acc.4.loc, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp.4, i32* @acc.4, align 16, !dbg !45 ; [debug line = 68:3]
  %tmp.3.27 = trunc i32 %temp.4 to i16, !dbg !44  ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.27, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.29 = getelementptr [32 x i16]* %d_i, i64 0, i64 29, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.29 = load i16* %d_i.addr.29, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.28 = sext i16 %d_i.load.29 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp.5 = add nsw i32 %tmp.2.28, %acc.5.loc, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp.5, i32* @acc.5, align 4, !dbg !45 ; [debug line = 68:3]
  %tmp.3.28 = trunc i32 %temp.5 to i16, !dbg !44  ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.28, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.30 = getelementptr [32 x i16]* %d_i, i64 0, i64 30, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.30 = load i16* %d_i.addr.30, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.29 = sext i16 %d_i.load.30 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp.6 = add nsw i32 %tmp.2.29, %acc.6.loc, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp.6, i32* @acc.6, align 8, !dbg !45 ; [debug line = 68:3]
  %tmp.3.29 = trunc i32 %temp.6 to i16, !dbg !44  ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.29, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  %d_i.addr.31 = getelementptr [32 x i16]* %d_i, i64 0, i64 31, !dbg !40 ; [#uses=1 type=i16*] [debug line = 67:3]
  %d_i.load.31 = load i16* %d_i.addr.31, align 2, !dbg !40 ; [#uses=1 type=i16] [debug line = 67:3]
  %tmp.2.30 = sext i16 %d_i.load.31 to i32, !dbg !40 ; [#uses=1 type=i32] [debug line = 67:3]
  %temp.7 = add nsw i32 %tmp.2.30, %acc.7.loc, !dbg !40 ; [#uses=2 type=i32] [debug line = 67:3]
  store i32 %temp.7, i32* @acc.7, align 4, !dbg !45 ; [debug line = 68:3]
  %tmp.3.30 = trunc i32 %temp.7 to i16, !dbg !44  ; [#uses=1 type=i16] [debug line = 69:3]
  store volatile i16 %tmp.3.30, i16* %d_o, align 2, !dbg !44 ; [debug line = 69:3]
  ret void, !dbg !46                              ; [debug line = 71:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecMemCore(...)

; [#uses=1]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

!hls.encrypted.func = !{}
!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/training/hls/labs/array_interfaces/array_io_prj/solution2/.autopilot/db/array_io.pragma.2.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Carray_interfaces", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !2, metadata !14} ; [ DW_TAG_compile_unit ]
!1 = metadata !{i32 0}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786478, i32 0, metadata !4, metadata !"array_io", metadata !"array_io", metadata !"", metadata !4, i32 57, metadata !5, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 57} ; [ DW_TAG_subprogram ]
!4 = metadata !{i32 786473, metadata !"array_io.c", metadata !"C:\5Ctraining\5Chls\5Clabs\5Carray_interfaces", null} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !6, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!6 = metadata !{null, metadata !7, metadata !10}
!7 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 786454, null, metadata !"dout_t", metadata !4, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!9 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786454, null, metadata !"din_t", metadata !4, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786484, i32 0, metadata !3, metadata !"acc", metadata !"acc", metadata !"", metadata !4, i32 61, metadata !17, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!17 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !18, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!18 = metadata !{i32 786454, null, metadata !"dacc_t", metadata !4, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 15, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"d_o", metadata !26, metadata !"short", i32 0, i32 15}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, i32 1}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 15, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"d_i", metadata !26, metadata !"short", i32 0, i32 15}
!32 = metadata !{i32 786689, metadata !3, metadata !"d_o", null, i32 57, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !8, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!36 = metadata !{i32 57, i32 23, metadata !3, null}
!37 = metadata !{i32 786689, metadata !3, metadata !"d_i", null, i32 57, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !11, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{i32 57, i32 41, metadata !3, null}
!40 = metadata !{i32 67, i32 3, metadata !41, null}
!41 = metadata !{i32 786443, metadata !42, i32 65, i32 34, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786443, metadata !43, i32 65, i32 12, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786443, metadata !3, i32 57, i32 53, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 69, i32 3, metadata !41, null}
!45 = metadata !{i32 68, i32 3, metadata !41, null}
!46 = metadata !{i32 71, i32 1, metadata !43, null}
