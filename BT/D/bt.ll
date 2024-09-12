; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX746F74616C = comdat any

$_QQclX72687378 = comdat any

$_QQclX72687379 = comdat any

$_QQclX7268737A = comdat any

$_QQclX726873 = comdat any

$_QQclX78736F6C7665 = comdat any

$_QQclX79736F6C7665 = comdat any

$_QQclX7A736F6C7665 = comdat any

$_QQclX72656469737431 = comdat any

$_QQclX736F6C73756273 = comdat any

$_QQclX616464 = comdat any

$_QQclX017846adf5de660826902e50676aef7a = comdat any

$_QQclX3a592bb5badc01605e70efec90f8bd92 = comdat any

$_QQclX696E70757462742E64617461 = comdat any

$_QQclX6F6C64 = comdat any

$_QQclXc25701c66635b2509712a007a52da1d1 = comdat any

$_QQclX75505a0c76c546698c23da855ed19fe9 = comdat any

$_QQclX925fa4f14c0e6e2492aa90cb8722cfb5 = comdat any

$_QQclX394fb0fea300611b9f1420f79e43d855 = comdat any

$_QQclXf923a2af02906180bfbdd179b9b5c308 = comdat any

$_QQclX768663438754acb04b6aa80e02ec5698 = comdat any

$_QQclX28272054696D65207374657020272C20693429 = comdat any

$_QQclX4254 = comdat any

$_QQclX20202020202020202020666C6F6174696E6720706F696E74 = comdat any

$_QQclX332E342E32 = comdat any

$_QQclX3132205365702032303234 = comdat any

$_QQclX286E6F6E6529 = comdat any

$_QQclX2428464329 = comdat any

$_QQclX242846464C41475329 = comdat any

$_QQclX2827202053454354494F4E20202054696D65202873656373292729 = comdat any

$_QQclX2832782C61382C273A272C66392E332C27202028272C66362E322C2725292729 = comdat any

$_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a = comdat any

$_QQclX7375622D726873 = comdat any

$_QQclX726573742D726873 = comdat any

$_QQclX726573742D736F6C = comdat any

@_QMbt_dataEbuf = external global [5 x [409 x double]]
@_QMbt_dataEcuf = external global [409 x double]
@_QMbt_dataEdt = external global double
@_QMbt_dataEgrid_points = external global [3 x i32]
@_QMbt_dataEq = external global [409 x double]
@_QFEt_names = internal global [11 x [8 x i8]] zeroinitializer
@_QMbt_dataEtimeron = external global i32
@_QFEtrecs = internal unnamed_addr global [11 x double] zeroinitializer
@_QMbt_dataEue = external global [5 x [409 x double]]
@_QQclX746F74616C = linkonce local_unnamed_addr constant [5 x i8] c"total", comdat
@_QQclX72687378 = linkonce local_unnamed_addr constant [4 x i8] c"rhsx", comdat
@_QQclX72687379 = linkonce local_unnamed_addr constant [4 x i8] c"rhsy", comdat
@_QQclX7268737A = linkonce local_unnamed_addr constant [4 x i8] c"rhsz", comdat
@_QQclX726873 = linkonce local_unnamed_addr constant [3 x i8] c"rhs", comdat
@_QQclX78736F6C7665 = linkonce local_unnamed_addr constant [6 x i8] c"xsolve", comdat
@_QQclX79736F6C7665 = linkonce local_unnamed_addr constant [6 x i8] c"ysolve", comdat
@_QQclX7A736F6C7665 = linkonce local_unnamed_addr constant [6 x i8] c"zsolve", comdat
@_QQclX72656469737431 = linkonce local_unnamed_addr constant [7 x i8] c"redist1", comdat
@_QQclX736F6C73756273 = linkonce local_unnamed_addr constant [7 x i8] c"solsubs", comdat
@_QQclX616464 = linkonce local_unnamed_addr constant [3 x i8] c"add", comdat
@_QQclX017846adf5de660826902e50676aef7a = linkonce constant [67 x i8] c"(//, ' NAS Parallel Benchmarks (NPB3.4-OMP)', ' - BT Benchmark', /)", comdat
@_QQclX3a592bb5badc01605e70efec90f8bd92 = linkonce constant [56 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/BT/bt.f90\00", comdat
@_QQclX696E70757462742E64617461 = linkonce constant [12 x i8] c"inputbt.data", comdat
@_QQclX6F6C64 = linkonce constant [3 x i8] c"old", comdat
@_QQclXc25701c66635b2509712a007a52da1d1 = linkonce constant [41 x i8] c"(' Reading from input file inputbt.data')", comdat
@_QQclX75505a0c76c546698c23da855ed19fe9 = linkonce constant [56 x i8] c"(' No input file inputbt.data. Using compiled defaults')", comdat
@_QQclX925fa4f14c0e6e2492aa90cb8722cfb5 = linkonce constant [33 x i8] c"(' Size: ', i4, 'x', i4, 'x', i4)", comdat
@_QQclX394fb0fea300611b9f1420f79e43d855 = linkonce constant [43 x i8] c"(' Iterations: ', i4, '       dt: ', f11.7)", comdat
@_QQclXf923a2af02906180bfbdd179b9b5c308 = linkonce constant [38 x i8] c"(' Number of available threads: ', i5)", comdat
@_QQclX768663438754acb04b6aa80e02ec5698 = linkonce constant [46 x i8] c" Problem size too big for compiled array sizes", comdat
@_QQclX28272054696D65207374657020272C20693429 = linkonce constant [19 x i8] c"(' Time step ', i4)", comdat
@_QQclX4254 = linkonce local_unnamed_addr constant [2 x i8] c"BT", comdat
@_QQclX20202020202020202020666C6F6174696E6720706F696E74 = linkonce local_unnamed_addr constant [24 x i8] c"          floating point", comdat
@_QQclX332E342E32 = linkonce local_unnamed_addr constant [5 x i8] c"3.4.2", comdat
@_QQclX3132205365702032303234 = linkonce local_unnamed_addr constant [11 x i8] c"12 Sep 2024", comdat
@_QQclX286E6F6E6529 = linkonce local_unnamed_addr constant [6 x i8] c"(none)", comdat
@_QQclX2428464329 = linkonce local_unnamed_addr constant [5 x i8] c"$(FC)", comdat
@_QQclX242846464C41475329 = linkonce local_unnamed_addr constant [9 x i8] c"$(FFLAGS)", comdat
@_QQclX2827202053454354494F4E20202054696D65202873656373292729 = linkonce constant [27 x i8] c"('  SECTION   Time (secs)')", comdat
@_QQclX2832782C61382C273A272C66392E332C27202028272C66362E322C2725292729 = linkonce constant [32 x i8] c"(2x,a8,':',f9.3,'  (',f6.2,'%)')", comdat
@_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a = linkonce constant [40 x i8] c"('    --> ',a8,':',f9.3,'  (',f6.2,'%)')", comdat
@_QQclX7375622D726873 = linkonce constant [7 x i8] c"sub-rhs", comdat
@_QQclX726573742D726873 = linkonce constant [8 x i8] c"rest-rhs", comdat
@_QQclX726573742D736F6C = linkonce constant [8 x i8] c"rest-sol", comdat
@_QQEnvironmentDefaults = local_unnamed_addr constant ptr null
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMbt_dataEbuf.cache = common global ptr null, align 8
@_QMbt_dataEcuf.cache = common global ptr null, align 8
@_QMbt_dataEq.cache = common global ptr null, align 8
@_QMbt_dataEue.cache = common global ptr null, align 8

define void @_QQmain() local_unnamed_addr #0 {
  %1 = alloca [6 x i8], align 4
  %2 = alloca [9 x i8], align 4
  %3 = alloca [6 x i8], align 4
  %4 = alloca [6 x i8], align 4
  %5 = alloca [6 x i8], align 4
  %6 = alloca [5 x i8], align 4
  %7 = alloca [6 x i8], align 4
  %8 = alloca [11 x i8], align 4
  %9 = alloca [5 x i8], align 4
  %10 = alloca [24 x i8], align 4
  %11 = alloca [2 x i8], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %omp_global_thread_num3 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %15 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEbuf, i64 16360, ptr nonnull @_QMbt_dataEbuf.cache)
  %16 = alloca [1 x i8], align 4
  %17 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEcuf, i64 3272, ptr nonnull @_QMbt_dataEcuf.cache)
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEq, i64 3272, ptr nonnull @_QMbt_dataEq.cache)
  %22 = alloca double, align 8
  %23 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEue, i64 16360, ptr nonnull @_QMbt_dataEue.cache)
  %24 = alloca i32, align 4
  tail call void @check_timer_flag_(ptr nonnull @_QMbt_dataEtimeron)
  %25 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %25, 0
  br i1 %.not, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @_QFEt_names, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX746F74616C, i64 5, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 0, i64 5), i8 32, i64 3, i1 false), !tbaa !10
  %26 = load i32, ptr @_QQclX72687378, align 1
  store i32 %26, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 1), align 8
  store i32 538976288, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 1, i64 4), align 4
  %27 = load i32, ptr @_QQclX72687379, align 1
  store i32 %27, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 2), align 16
  store i32 538976288, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 2, i64 4), align 4
  %28 = load i32, ptr @_QQclX7268737A, align 1
  store i32 %28, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 3), align 8
  store i32 538976288, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 3, i64 4), align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 4), ptr noundef nonnull align 1 dereferenceable(3) @_QQclX726873, i64 3, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 4, i64 3), i8 32, i64 5, i1 false), !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 5), ptr noundef nonnull align 1 dereferenceable(6) @_QQclX78736F6C7665, i64 6, i1 false)
  store i16 8224, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 5, i64 6), align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 6), ptr noundef nonnull align 1 dereferenceable(6) @_QQclX79736F6C7665, i64 6, i1 false)
  store i16 8224, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 6, i64 6), align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 7), ptr noundef nonnull align 1 dereferenceable(6) @_QQclX7A736F6C7665, i64 6, i1 false)
  store i16 8224, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 7, i64 6), align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 8), ptr noundef nonnull align 1 dereferenceable(7) @_QQclX72656469737431, i64 7, i1 false)
  store i8 32, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 8, i64 7), align 1, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 9), ptr noundef nonnull align 1 dereferenceable(7) @_QQclX736F6C73756273, i64 7, i1 false)
  store i8 32, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 9, i64 7), align 1, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 10), ptr noundef nonnull align 1 dereferenceable(3) @_QQclX616464, i64 3, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 10, i64 3), i8 32, i64 5, i1 false), !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %29 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX017846adf5de660826902e50676aef7a, i64 67, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 83)
  %30 = tail call i32 @_FortranAioEndIoStatement(ptr %29)
  %31 = tail call ptr @_FortranAioBeginOpenUnit(i32 2, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 84)
  %32 = tail call {} @_FortranAioEnableHandlers(ptr %31, i1 true, i1 false, i1 false, i1 false, i1 false)
  %33 = tail call i1 @_FortranAioSetFile(ptr %31, ptr nonnull @_QQclX696E70757462742E64617461, i64 12)
  br i1 %33, label %34, label %36

34:                                               ; preds = %.loopexit
  %35 = tail call i1 @_FortranAioSetStatus(ptr %31, ptr nonnull @_QQclX6F6C64, i64 3)
  br label %36

36:                                               ; preds = %34, %.loopexit
  %37 = tail call i32 @_FortranAioEndIoStatement(ptr %31)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXc25701c66635b2509712a007a52da1d1, i64 41, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 87)
  %41 = tail call i32 @_FortranAioEndIoStatement(ptr %40)
  %42 = tail call ptr @_FortranAioBeginExternalListInput(i32 2, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 89)
  %43 = call i1 @_FortranAioInputInteger(ptr %42, ptr nonnull %20, i32 4)
  %44 = call i32 @_FortranAioEndIoStatement(ptr %42)
  %45 = call ptr @_FortranAioBeginExternalListInput(i32 2, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 90)
  %46 = call i1 @_FortranAioInputReal64(ptr %45, ptr nonnull @_QMbt_dataEdt)
  %47 = call i32 @_FortranAioEndIoStatement(ptr %45)
  %48 = call ptr @_FortranAioBeginExternalListInput(i32 2, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 91)
  %49 = call i1 @_FortranAioInputInteger(ptr %48, ptr nonnull @_QMbt_dataEgrid_points, i32 4)
  %50 = call i1 @_FortranAioInputInteger(ptr %48, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), i32 4)
  %51 = call i1 @_FortranAioInputInteger(ptr %48, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), i32 4)
  %52 = call i32 @_FortranAioEndIoStatement(ptr %48)
  %53 = call ptr @_FortranAioBeginClose(i32 2, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 92)
  %54 = call i32 @_FortranAioEndIoStatement(ptr %53)
  br label %58

55:                                               ; preds = %36
  %56 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX75505a0c76c546698c23da855ed19fe9, i64 56, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 94)
  %57 = tail call i32 @_FortranAioEndIoStatement(ptr %56)
  store i32 250, ptr %20, align 4, !tbaa !12
  store double 2.000000e-05, ptr @_QMbt_dataEdt, align 8, !tbaa !13
  store i32 408, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !15
  store i32 408, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  store i32 408, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  br label %58

58:                                               ; preds = %39, %55
  %59 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX925fa4f14c0e6e2492aa90cb8722cfb5, i64 33, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 103)
  %60 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !15
  %61 = call i1 @_FortranAioOutputInteger32(ptr %59, i32 %60)
  %62 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  %63 = call i1 @_FortranAioOutputInteger32(ptr %59, i32 %62)
  %64 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  %65 = call i1 @_FortranAioOutputInteger32(ptr %59, i32 %64)
  %66 = call i32 @_FortranAioEndIoStatement(ptr %59)
  %67 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX394fb0fea300611b9f1420f79e43d855, i64 43, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 104)
  %68 = load i32, ptr %20, align 4, !tbaa !12
  %69 = call i1 @_FortranAioOutputInteger32(ptr %67, i32 %68)
  %70 = load double, ptr @_QMbt_dataEdt, align 8, !tbaa !13
  %71 = call i1 @_FortranAioOutputReal64(ptr %67, double %70)
  %72 = call i32 @_FortranAioEndIoStatement(ptr %67)
  %73 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXf923a2af02906180bfbdd179b9b5c308, i64 38, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 106)
  %74 = call i32 @omp_get_max_threads_()
  %75 = call i1 @_FortranAioOutputInteger32(ptr %73, i32 %74)
  %76 = call i32 @_FortranAioEndIoStatement(ptr %73)
  %77 = call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 107)
  %78 = call i32 @_FortranAioEndIoStatement(ptr %77)
  %79 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !15
  %80 = icmp sgt i32 %79, 408
  %81 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  %82 = icmp sgt i32 %81, 408
  %83 = or i1 %80, %82
  %84 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  %85 = icmp sgt i32 %84, 408
  %86 = or i1 %83, %85
  br i1 %86, label %133, label %.preheader34.preheader

.preheader34.preheader:                           ; preds = %58
  store i32 1, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %87 = load i32, ptr %18, align 4, !tbaa !12
  %88 = add i32 %87, 1
  store i32 %88, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %89 = load i32, ptr %18, align 4, !tbaa !12
  %90 = add i32 %89, 1
  store i32 %90, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %91 = load i32, ptr %18, align 4, !tbaa !12
  %92 = add i32 %91, 1
  store i32 %92, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %93 = load i32, ptr %18, align 4, !tbaa !12
  %94 = add i32 %93, 1
  store i32 %94, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %95 = load i32, ptr %18, align 4, !tbaa !12
  %96 = add i32 %95, 1
  store i32 %96, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %97 = load i32, ptr %18, align 4, !tbaa !12
  %98 = add i32 %97, 1
  store i32 %98, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %99 = load i32, ptr %18, align 4, !tbaa !12
  %100 = add i32 %99, 1
  store i32 %100, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %101 = load i32, ptr %18, align 4, !tbaa !12
  %102 = add i32 %101, 1
  store i32 %102, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %103 = load i32, ptr %18, align 4, !tbaa !12
  %104 = add i32 %103, 1
  store i32 %104, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %105 = load i32, ptr %18, align 4, !tbaa !12
  %106 = add i32 %105, 1
  store i32 %106, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %107 = load i32, ptr %18, align 4, !tbaa !12
  %108 = add i32 %107, 1
  store i32 %108, ptr %18, align 4, !tbaa !12
  call void @alloc_space_()
  call void @set_constants_()
  call void @initialize_()
  call void @exact_rhs_()
  call void @adi_()
  call void @initialize_()
  store i32 1, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %109 = load i32, ptr %18, align 4, !tbaa !12
  %110 = add i32 %109, 1
  store i32 %110, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %111 = load i32, ptr %18, align 4, !tbaa !12
  %112 = add i32 %111, 1
  store i32 %112, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %113 = load i32, ptr %18, align 4, !tbaa !12
  %114 = add i32 %113, 1
  store i32 %114, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %115 = load i32, ptr %18, align 4, !tbaa !12
  %116 = add i32 %115, 1
  store i32 %116, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %117 = load i32, ptr %18, align 4, !tbaa !12
  %118 = add i32 %117, 1
  store i32 %118, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %119 = load i32, ptr %18, align 4, !tbaa !12
  %120 = add i32 %119, 1
  store i32 %120, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %121 = load i32, ptr %18, align 4, !tbaa !12
  %122 = add i32 %121, 1
  store i32 %122, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %123 = load i32, ptr %18, align 4, !tbaa !12
  %124 = add i32 %123, 1
  store i32 %124, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %125 = load i32, ptr %18, align 4, !tbaa !12
  %126 = add i32 %125, 1
  store i32 %126, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %127 = load i32, ptr %18, align 4, !tbaa !12
  %128 = add i32 %127, 1
  store i32 %128, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %129 = load i32, ptr %18, align 4, !tbaa !12
  %130 = add i32 %129, 1
  store i32 %130, ptr %18, align 4, !tbaa !12
  store i32 1, ptr %14, align 4, !tbaa !12
  call void @timer_start_(ptr nonnull %14)
  call void @roi_begin_()
  %131 = load i32, ptr %20, align 4, !tbaa !12
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %145, label %._crit_edge

133:                                              ; preds = %58
  %134 = call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 119)
  store i32 1, ptr %18, align 4, !tbaa !12
  %135 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !15
  %136 = call i1 @_FortranAioOutputInteger32(ptr %134, i32 %135)
  store i32 2, ptr %18, align 4, !tbaa !12
  %137 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  %138 = call i1 @_FortranAioOutputInteger32(ptr %134, i32 %137)
  store i32 3, ptr %18, align 4, !tbaa !12
  %139 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  %140 = call i1 @_FortranAioOutputInteger32(ptr %134, i32 %139)
  store i32 4, ptr %18, align 4, !tbaa !12
  %141 = call i32 @_FortranAioEndIoStatement(ptr %134)
  %142 = call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 120)
  %143 = call i1 @_FortranAioOutputAscii(ptr %142, ptr nonnull @_QQclX768663438754acb04b6aa80e02ec5698, i64 46)
  %144 = call i32 @_FortranAioEndIoStatement(ptr %142)
  br label %.loopexit49

145:                                              ; preds = %.preheader34.preheader
  %146 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272054696D65207374657020272C20693429, i64 19, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 153)
  %147 = call i1 @_FortranAioOutputInteger32(ptr %146, i32 1)
  %148 = call i32 @_FortranAioEndIoStatement(ptr %146)
  call void @adi_()
  %.not48 = icmp eq i32 %131, 1
  br i1 %.not48, label %._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %145
  %narrow = add nsw i32 %131, -1
  %149 = zext nneg i32 %narrow to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %157
  %150 = phi i64 [ %159, %157 ], [ %149, %.lr.ph.peel.next ]
  %151 = phi i32 [ %158, %157 ], [ 2, %.lr.ph.peel.next ]
  %.urem = urem i32 %151, 20
  %152 = icmp eq i32 %.urem, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %.lr.ph
  %154 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272054696D65207374657020272C20693429, i64 19, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 153)
  %155 = call i1 @_FortranAioOutputInteger32(ptr %154, i32 %151)
  %156 = call i32 @_FortranAioEndIoStatement(ptr %154)
  br label %157

157:                                              ; preds = %153, %.lr.ph
  call void @adi_()
  %158 = add nuw i32 %151, 1
  %159 = add nsw i64 %150, -1
  %160 = icmp sgt i64 %150, 1
  br i1 %160, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %157, %145, %.preheader34.preheader
  call void @roi_end_()
  store i32 1, ptr %13, align 4, !tbaa !12
  call void @timer_stop_(ptr nonnull %13)
  store i32 1, ptr %12, align 4, !tbaa !12
  %161 = call contract double @timer_read_(ptr nonnull %12)
  store double %161, ptr %22, align 8, !tbaa !12
  call void @verify_(ptr nonnull %20, ptr nonnull %16, ptr nonnull %24, i64 1)
  call void @free_space_()
  %162 = fcmp contract une double %161, 0.000000e+00
  br i1 %162, label %163, label %187

163:                                              ; preds = %._crit_edge
  %164 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !15
  %165 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  %166 = add i32 %165, %164
  %167 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  %168 = add i32 %166, %167
  %169 = sitofp i32 %168 to double
  %170 = fdiv contract double %169, 3.000000e+00
  %171 = sitofp i32 %164 to double
  %172 = sitofp i32 %165 to double
  %173 = fmul contract double %171, %172
  %174 = sitofp i32 %167 to double
  %175 = fmul contract double %173, %174
  %176 = load i32, ptr %20, align 4, !tbaa !12
  %177 = sitofp i32 %176 to double
  %178 = fmul contract double %177, 0x3EB0C6F7A0B5ED8D
  %179 = fmul contract double %175, 0x40AB2D99A0000000
  %180 = fmul double %170, %170
  %181 = fmul contract double %180, 0x40D13DECC0000000
  %182 = fsub contract double %179, %181
  %183 = fmul contract double %170, 0x40DB5DECC0000000
  %184 = fadd contract double %183, %182
  %185 = fmul contract double %178, %184
  %186 = fdiv contract double %185, %161
  br label %187

187:                                              ; preds = %._crit_edge, %163
  %storemerge = phi double [ %186, %163 ], [ 0.000000e+00, %._crit_edge ]
  store double %storemerge, ptr %19, align 8, !tbaa !12
  %188 = load i16, ptr @_QQclX4254, align 1
  store i16 %188, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %10, ptr noundef nonnull align 1 dereferenceable(24) @_QQclX20202020202020202020666C6F6174696E6720706F696E74, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %9, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX332E342E32, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %8, ptr noundef nonnull align 1 dereferenceable(11) @_QQclX3132205365702032303234, i64 11, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %7, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %6, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX2428464329, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %5, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @_QQclX242846464C41475329, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @print_results_(ptr nonnull %11, ptr nonnull %16, ptr nonnull @_QMbt_dataEgrid_points, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), ptr nonnull %20, ptr nonnull %22, ptr nonnull %19, ptr nonnull %10, ptr nonnull %24, ptr nonnull %9, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %5, ptr nonnull %4, ptr nonnull %3, ptr nonnull %2, ptr nonnull %1, i64 2, i64 1, i64 24, i64 5, i64 11, i64 6, i64 5, i64 6, i64 6, i64 6, i64 9, i64 6)
  %189 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not33 = icmp eq i32 %189, 0
  br i1 %.not33, label %.loopexit49, label %.preheader.preheader

.preheader.preheader:                             ; preds = %187
  store i32 1, ptr %18, align 4, !tbaa !12
  %190 = call contract double @timer_read_(ptr nonnull %18)
  %191 = load i32, ptr %18, align 4, !tbaa !12
  %192 = sext i32 %191 to i64
  %gep = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %192
  store double %190, ptr %gep, align 8, !tbaa !19
  %193 = add i32 %191, 1
  store i32 %193, ptr %18, align 4, !tbaa !12
  %194 = call contract double @timer_read_(ptr nonnull %18)
  %195 = load i32, ptr %18, align 4, !tbaa !12
  %196 = sext i32 %195 to i64
  %gep.1 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %196
  store double %194, ptr %gep.1, align 8, !tbaa !19
  %197 = add i32 %195, 1
  store i32 %197, ptr %18, align 4, !tbaa !12
  %198 = call contract double @timer_read_(ptr nonnull %18)
  %199 = load i32, ptr %18, align 4, !tbaa !12
  %200 = sext i32 %199 to i64
  %gep.2 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %200
  store double %198, ptr %gep.2, align 8, !tbaa !19
  %201 = add i32 %199, 1
  store i32 %201, ptr %18, align 4, !tbaa !12
  %202 = call contract double @timer_read_(ptr nonnull %18)
  %203 = load i32, ptr %18, align 4, !tbaa !12
  %204 = sext i32 %203 to i64
  %gep.3 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %204
  store double %202, ptr %gep.3, align 8, !tbaa !19
  %205 = add i32 %203, 1
  store i32 %205, ptr %18, align 4, !tbaa !12
  %206 = call contract double @timer_read_(ptr nonnull %18)
  %207 = load i32, ptr %18, align 4, !tbaa !12
  %208 = sext i32 %207 to i64
  %gep.4 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %208
  store double %206, ptr %gep.4, align 8, !tbaa !19
  %209 = add i32 %207, 1
  store i32 %209, ptr %18, align 4, !tbaa !12
  %210 = call contract double @timer_read_(ptr nonnull %18)
  %211 = load i32, ptr %18, align 4, !tbaa !12
  %212 = sext i32 %211 to i64
  %gep.5 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %212
  store double %210, ptr %gep.5, align 8, !tbaa !19
  %213 = add i32 %211, 1
  store i32 %213, ptr %18, align 4, !tbaa !12
  %214 = call contract double @timer_read_(ptr nonnull %18)
  %215 = load i32, ptr %18, align 4, !tbaa !12
  %216 = sext i32 %215 to i64
  %gep.6 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %216
  store double %214, ptr %gep.6, align 8, !tbaa !19
  %217 = add i32 %215, 1
  store i32 %217, ptr %18, align 4, !tbaa !12
  %218 = call contract double @timer_read_(ptr nonnull %18)
  %219 = load i32, ptr %18, align 4, !tbaa !12
  %220 = sext i32 %219 to i64
  %gep.7 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %220
  store double %218, ptr %gep.7, align 8, !tbaa !19
  %221 = add i32 %219, 1
  store i32 %221, ptr %18, align 4, !tbaa !12
  %222 = call contract double @timer_read_(ptr nonnull %18)
  %223 = load i32, ptr %18, align 4, !tbaa !12
  %224 = sext i32 %223 to i64
  %gep.8 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %224
  store double %222, ptr %gep.8, align 8, !tbaa !19
  %225 = add i32 %223, 1
  store i32 %225, ptr %18, align 4, !tbaa !12
  %226 = call contract double @timer_read_(ptr nonnull %18)
  %227 = load i32, ptr %18, align 4, !tbaa !12
  %228 = sext i32 %227 to i64
  %gep.9 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %228
  store double %226, ptr %gep.9, align 8, !tbaa !19
  %229 = add i32 %227, 1
  store i32 %229, ptr %18, align 4, !tbaa !12
  %230 = call contract double @timer_read_(ptr nonnull %18)
  %231 = load i32, ptr %18, align 4, !tbaa !12
  %232 = sext i32 %231 to i64
  %gep.10 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %232
  store double %230, ptr %gep.10, align 8, !tbaa !19
  %233 = add i32 %231, 1
  store i32 %233, ptr %18, align 4, !tbaa !12
  %234 = load double, ptr %22, align 8, !tbaa !12
  %235 = fcmp contract oeq double %234, 0.000000e+00
  br i1 %235, label %236, label %237

236:                                              ; preds = %.preheader.preheader
  store double 1.000000e+00, ptr %22, align 8, !tbaa !12
  br label %237

237:                                              ; preds = %236, %.preheader.preheader
  %238 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827202053454354494F4E20202054696D65202873656373292729, i64 27, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 195)
  %239 = call i32 @_FortranAioEndIoStatement(ptr %238)
  br label %240

240:                                              ; preds = %237, %301
  %241 = phi i64 [ 11, %237 ], [ %304, %301 ]
  %242 = phi i32 [ 1, %237 ], [ %303, %301 ]
  store i32 %242, ptr %18, align 4, !tbaa !12
  %243 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2832782C61382C273A272C66392E332C27202028272C66362E322C2725292729, i64 32, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 198)
  %244 = load i32, ptr %18, align 4, !tbaa !12
  %245 = sext i32 %244 to i64
  %gep39 = getelementptr [8 x i8], ptr getelementptr ([11 x [8 x i8]], ptr @_QFEt_names, i64 -1, i64 10, i64 0), i64 %245
  %246 = call i1 @_FortranAioOutputAscii(ptr %243, ptr %gep39, i64 8)
  %247 = load i32, ptr %18, align 4, !tbaa !12
  %248 = sext i32 %247 to i64
  %gep40 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %248
  %249 = load double, ptr %gep40, align 8, !tbaa !19
  %250 = call i1 @_FortranAioOutputReal64(ptr %243, double %249)
  %251 = load i32, ptr %18, align 4, !tbaa !12
  %252 = sext i32 %251 to i64
  %gep41 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %252
  %253 = load double, ptr %gep41, align 8, !tbaa !19
  %254 = fmul contract double %253, 1.000000e+02
  %255 = load double, ptr %22, align 8, !tbaa !12
  %256 = fdiv contract double %254, %255
  %257 = call i1 @_FortranAioOutputReal64(ptr %243, double %256)
  %258 = call i32 @_FortranAioEndIoStatement(ptr %243)
  %259 = load i32, ptr %18, align 4, !tbaa !12
  switch i32 %259, label %301 [
    i32 5, label %260
    i32 10, label %283
  ]

260:                                              ; preds = %240
  %261 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 1), align 8, !tbaa !19
  %262 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 2), align 16, !tbaa !19
  %263 = fadd contract double %261, %262
  %264 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 3), align 8, !tbaa !19
  %265 = fadd contract double %263, %264
  %266 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 201)
  %267 = call i1 @_FortranAioOutputAscii(ptr %266, ptr nonnull @_QQclX7375622D726873, i64 7)
  %268 = call i1 @_FortranAioOutputReal64(ptr %266, double %265)
  %269 = fmul contract double %265, 1.000000e+02
  %270 = load double, ptr %22, align 8, !tbaa !12
  %271 = fdiv contract double %269, %270
  %272 = call i1 @_FortranAioOutputReal64(ptr %266, double %271)
  %273 = call i32 @_FortranAioEndIoStatement(ptr %266)
  %274 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 4), align 16, !tbaa !19
  %275 = fsub contract double %274, %265
  %276 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 203)
  %277 = call i1 @_FortranAioOutputAscii(ptr %276, ptr nonnull @_QQclX726573742D726873, i64 8)
  %278 = call i1 @_FortranAioOutputReal64(ptr %276, double %275)
  %279 = fmul contract double %275, 1.000000e+02
  %280 = load double, ptr %22, align 8, !tbaa !12
  %281 = fdiv contract double %279, %280
  %282 = call i1 @_FortranAioOutputReal64(ptr %276, double %281)
  br label %.sink.split

283:                                              ; preds = %240
  %284 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 5), align 8, !tbaa !19
  %285 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 6), align 16, !tbaa !19
  %286 = fadd contract double %284, %285
  %287 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 7), align 8, !tbaa !19
  %288 = fadd contract double %286, %287
  %289 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 8), align 16, !tbaa !19
  %290 = fsub contract double %288, %289
  %291 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 9), align 8, !tbaa !19
  %292 = fsub contract double %290, %291
  %293 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX3a592bb5badc01605e70efec90f8bd92, i32 207)
  %294 = call i1 @_FortranAioOutputAscii(ptr %293, ptr nonnull @_QQclX726573742D736F6C, i64 8)
  %295 = call i1 @_FortranAioOutputReal64(ptr %293, double %292)
  %296 = fmul contract double %292, 1.000000e+02
  %297 = load double, ptr %22, align 8, !tbaa !12
  %298 = fdiv contract double %296, %297
  %299 = call i1 @_FortranAioOutputReal64(ptr %293, double %298)
  br label %.sink.split

.sink.split:                                      ; preds = %283, %260
  %.sink = phi ptr [ %276, %260 ], [ %293, %283 ]
  %300 = call i32 @_FortranAioEndIoStatement(ptr %.sink)
  br label %301

301:                                              ; preds = %.sink.split, %240
  %302 = load i32, ptr %18, align 4, !tbaa !12
  %303 = add i32 %302, 1
  %304 = add nsw i64 %241, -1
  %305 = icmp ugt i64 %241, 1
  br i1 %305, label %240, label %.loopexit49

.loopexit49:                                      ; preds = %301, %133, %187
  ret void
}

declare void @check_timer_flag_(ptr) local_unnamed_addr

declare ptr @_FortranAioBeginExternalFormattedOutput(ptr, i64, ptr, i32, ptr, i32) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare ptr @_FortranAioBeginOpenUnit(i32, ptr, i32) local_unnamed_addr

declare {} @_FortranAioEnableHandlers(ptr, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext) local_unnamed_addr

declare zeroext i1 @_FortranAioSetFile(ptr, ptr, i64) local_unnamed_addr

declare zeroext i1 @_FortranAioSetStatus(ptr, ptr, i64) local_unnamed_addr

declare ptr @_FortranAioBeginExternalListInput(i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioInputInteger(ptr, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioInputReal64(ptr, ptr) local_unnamed_addr

declare ptr @_FortranAioBeginClose(i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputInteger32(ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputReal64(ptr, double) local_unnamed_addr

declare i32 @omp_get_max_threads_() local_unnamed_addr

declare ptr @_FortranAioBeginExternalListOutput(i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputAscii(ptr, ptr, i64) local_unnamed_addr

declare void @timer_clear_(ptr) local_unnamed_addr

declare void @alloc_space_() local_unnamed_addr

declare void @set_constants_() local_unnamed_addr

declare void @initialize_() local_unnamed_addr

declare void @exact_rhs_() local_unnamed_addr

declare void @adi_() local_unnamed_addr

declare void @timer_start_(ptr) local_unnamed_addr

declare void @roi_begin_() local_unnamed_addr

declare void @roi_end_() local_unnamed_addr

declare void @timer_stop_(ptr) local_unnamed_addr

declare double @timer_read_(ptr) local_unnamed_addr

declare void @verify_(ptr, ptr, ptr, i64) local_unnamed_addr

declare void @free_space_() local_unnamed_addr

declare void @print_results_(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QMbt_dataEtimeron", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QQmain"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QFEt_names", !6, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMbt_dataEdt", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMbt_dataEgrid_points", !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.peeled.count", i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"global data/_QFEtrecs", !6, i64 0}
