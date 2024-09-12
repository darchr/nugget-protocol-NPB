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

$_QQclX72656469737432 = comdat any

$_QQclX747A65746172 = comdat any

$_QQclX6E696E7672 = comdat any

$_QQclX70696E7672 = comdat any

$_QQclX7478696E7672 = comdat any

$_QQclX616464 = comdat any

$_QQclXc49b421f0befb12aa9a75676761078f3 = comdat any

$_QQclX65d4783f678b80403c094735bdbacc6d = comdat any

$_QQclX696E70757473702E64617461 = comdat any

$_QQclX6F6C64 = comdat any

$_QQclX05bc0626a3621e9a4ec42898452f53af = comdat any

$_QQclXd85ed0c0ef83a9b736db30ff9fbcb25a = comdat any

$_QQclX925fa4f14c0e6e2492aa90cb8722cfb5 = comdat any

$_QQclXa4658133e7adc02a3083854f0e760120 = comdat any

$_QQclXf923a2af02906180bfbdd179b9b5c308 = comdat any

$_QQclX768663438754acb04b6aa80e02ec5698 = comdat any

$_QQclX28272054696D65207374657020272C20693429 = comdat any

$_QQclX5350 = comdat any

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

$_QQclX7375622D7A736F6C = comdat any

$_QQclX726564697374 = comdat any

@_QMsp_dataEbuf = external global [5 x [162 x double]]
@_QMsp_dataEcuf = external global [162 x double]
@_QMsp_dataEdt = external global double
@_QMsp_dataEgrid_points = external global [3 x i32]
@_QMsp_dataEnx2 = external local_unnamed_addr global i32
@_QMsp_dataEny2 = external local_unnamed_addr global i32
@_QMsp_dataEnz2 = external local_unnamed_addr global i32
@_QMsp_dataEq = external global [162 x double]
@_QFEt_names = internal global [15 x [8 x i8]] zeroinitializer
@_QMsp_dataEtimeron = external global i32
@_QFEtrecs = internal unnamed_addr global [15 x double] zeroinitializer
@_QMsp_dataEue = external global [5 x [162 x double]]
@_QQclX746F74616C = linkonce local_unnamed_addr constant [5 x i8] c"total", comdat
@_QQclX72687378 = linkonce local_unnamed_addr constant [4 x i8] c"rhsx", comdat
@_QQclX72687379 = linkonce local_unnamed_addr constant [4 x i8] c"rhsy", comdat
@_QQclX7268737A = linkonce local_unnamed_addr constant [4 x i8] c"rhsz", comdat
@_QQclX726873 = linkonce local_unnamed_addr constant [3 x i8] c"rhs", comdat
@_QQclX78736F6C7665 = linkonce local_unnamed_addr constant [6 x i8] c"xsolve", comdat
@_QQclX79736F6C7665 = linkonce local_unnamed_addr constant [6 x i8] c"ysolve", comdat
@_QQclX7A736F6C7665 = linkonce local_unnamed_addr constant [6 x i8] c"zsolve", comdat
@_QQclX72656469737431 = linkonce local_unnamed_addr constant [7 x i8] c"redist1", comdat
@_QQclX72656469737432 = linkonce local_unnamed_addr constant [7 x i8] c"redist2", comdat
@_QQclX747A65746172 = linkonce local_unnamed_addr constant [6 x i8] c"tzetar", comdat
@_QQclX6E696E7672 = linkonce local_unnamed_addr constant [5 x i8] c"ninvr", comdat
@_QQclX70696E7672 = linkonce local_unnamed_addr constant [5 x i8] c"pinvr", comdat
@_QQclX7478696E7672 = linkonce local_unnamed_addr constant [6 x i8] c"txinvr", comdat
@_QQclX616464 = linkonce local_unnamed_addr constant [3 x i8] c"add", comdat
@_QQclXc49b421f0befb12aa9a75676761078f3 = linkonce constant [67 x i8] c"(//, ' NAS Parallel Benchmarks (NPB3.4-OMP)', ' - SP Benchmark', /)", comdat
@_QQclX65d4783f678b80403c094735bdbacc6d = linkonce constant [56 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/SP/sp.f90\00", comdat
@_QQclX696E70757473702E64617461 = linkonce constant [12 x i8] c"inputsp.data", comdat
@_QQclX6F6C64 = linkonce constant [3 x i8] c"old", comdat
@_QQclX05bc0626a3621e9a4ec42898452f53af = linkonce constant [41 x i8] c"(' Reading from input file inputsp.data')", comdat
@_QQclXd85ed0c0ef83a9b736db30ff9fbcb25a = linkonce constant [56 x i8] c"(' No input file inputsp.data. Using compiled defaults')", comdat
@_QQclX925fa4f14c0e6e2492aa90cb8722cfb5 = linkonce constant [33 x i8] c"(' Size: ', i4, 'x', i4, 'x', i4)", comdat
@_QQclXa4658133e7adc02a3083854f0e760120 = linkonce constant [41 x i8] c"(' Iterations: ', i4, '    dt:  ', f11.7)", comdat
@_QQclXf923a2af02906180bfbdd179b9b5c308 = linkonce constant [38 x i8] c"(' Number of available threads: ', i5)", comdat
@_QQclX768663438754acb04b6aa80e02ec5698 = linkonce constant [46 x i8] c" Problem size too big for compiled array sizes", comdat
@_QQclX28272054696D65207374657020272C20693429 = linkonce constant [19 x i8] c"(' Time step ', i4)", comdat
@_QQclX5350 = linkonce local_unnamed_addr constant [2 x i8] c"SP", comdat
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
@_QQclX7375622D7A736F6C = linkonce constant [8 x i8] c"sub-zsol", comdat
@_QQclX726564697374 = linkonce constant [6 x i8] c"redist", comdat
@_QQEnvironmentDefaults = local_unnamed_addr constant ptr null
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMsp_dataEbuf.cache = common global ptr null, align 8
@_QMsp_dataEcuf.cache = common global ptr null, align 8
@_QMsp_dataEq.cache = common global ptr null, align 8
@_QMsp_dataEue.cache = common global ptr null, align 8

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
  %15 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEbuf, i64 6480, ptr nonnull @_QMsp_dataEbuf.cache)
  %16 = alloca [1 x i8], align 4
  %17 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEcuf, i64 1296, ptr nonnull @_QMsp_dataEcuf.cache)
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEq, i64 1296, ptr nonnull @_QMsp_dataEq.cache)
  %22 = alloca double, align 8
  %23 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEue, i64 6480, ptr nonnull @_QMsp_dataEue.cache)
  %24 = alloca i32, align 4
  tail call void @check_timer_flag_(ptr nonnull @_QMsp_dataEtimeron)
  %25 = load i32, ptr @_QMsp_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %25, 0
  br i1 %.not, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @_QFEt_names, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX746F74616C, i64 5, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 0, i64 5), i8 32, i64 3, i1 false), !tbaa !10
  %26 = load i32, ptr @_QQclX72687378, align 1
  store i32 %26, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 1), align 8
  store i32 538976288, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 1, i64 4), align 4
  %27 = load i32, ptr @_QQclX72687379, align 1
  store i32 %27, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 2), align 16
  store i32 538976288, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 2, i64 4), align 4
  %28 = load i32, ptr @_QQclX7268737A, align 1
  store i32 %28, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 3), align 8
  store i32 538976288, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 3, i64 4), align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 4), ptr noundef nonnull align 1 dereferenceable(3) @_QQclX726873, i64 3, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 4, i64 3), i8 32, i64 5, i1 false), !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 5), ptr noundef nonnull align 1 dereferenceable(6) @_QQclX78736F6C7665, i64 6, i1 false)
  store i16 8224, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 5, i64 6), align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 6), ptr noundef nonnull align 1 dereferenceable(6) @_QQclX79736F6C7665, i64 6, i1 false)
  store i16 8224, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 6, i64 6), align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 7), ptr noundef nonnull align 1 dereferenceable(6) @_QQclX7A736F6C7665, i64 6, i1 false)
  store i16 8224, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 7, i64 6), align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 8), ptr noundef nonnull align 1 dereferenceable(7) @_QQclX72656469737431, i64 7, i1 false)
  store i8 32, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 8, i64 7), align 1, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 9), ptr noundef nonnull align 1 dereferenceable(7) @_QQclX72656469737432, i64 7, i1 false)
  store i8 32, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 9, i64 7), align 1, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 13), ptr noundef nonnull align 1 dereferenceable(6) @_QQclX747A65746172, i64 6, i1 false)
  store i16 8224, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 13, i64 6), align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 12), ptr noundef nonnull align 1 dereferenceable(5) @_QQclX6E696E7672, i64 5, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 12, i64 5), i8 32, i64 3, i1 false), !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 11), ptr noundef nonnull align 1 dereferenceable(5) @_QQclX70696E7672, i64 5, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 11, i64 5), i8 32, i64 3, i1 false), !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 10), ptr noundef nonnull align 1 dereferenceable(6) @_QQclX7478696E7672, i64 6, i1 false)
  store i16 8224, ptr getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 10, i64 6), align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 14), ptr noundef nonnull align 1 dereferenceable(3) @_QQclX616464, i64 3, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([15 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 14, i64 3), i8 32, i64 5, i1 false), !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %29 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXc49b421f0befb12aa9a75676761078f3, i64 67, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 83)
  %30 = tail call i32 @_FortranAioEndIoStatement(ptr %29)
  %31 = tail call ptr @_FortranAioBeginOpenUnit(i32 2, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 84)
  %32 = tail call {} @_FortranAioEnableHandlers(ptr %31, i1 true, i1 false, i1 false, i1 false, i1 false)
  %33 = tail call i1 @_FortranAioSetFile(ptr %31, ptr nonnull @_QQclX696E70757473702E64617461, i64 12)
  br i1 %33, label %34, label %36

34:                                               ; preds = %.loopexit
  %35 = tail call i1 @_FortranAioSetStatus(ptr %31, ptr nonnull @_QQclX6F6C64, i64 3)
  br label %36

36:                                               ; preds = %34, %.loopexit
  %37 = tail call i32 @_FortranAioEndIoStatement(ptr %31)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX05bc0626a3621e9a4ec42898452f53af, i64 41, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 87)
  %41 = tail call i32 @_FortranAioEndIoStatement(ptr %40)
  %42 = tail call ptr @_FortranAioBeginExternalListInput(i32 2, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 89)
  %43 = call i1 @_FortranAioInputInteger(ptr %42, ptr nonnull %20, i32 4)
  %44 = call i32 @_FortranAioEndIoStatement(ptr %42)
  %45 = call ptr @_FortranAioBeginExternalListInput(i32 2, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 90)
  %46 = call i1 @_FortranAioInputReal64(ptr %45, ptr nonnull @_QMsp_dataEdt)
  %47 = call i32 @_FortranAioEndIoStatement(ptr %45)
  %48 = call ptr @_FortranAioBeginExternalListInput(i32 2, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 91)
  %49 = call i1 @_FortranAioInputInteger(ptr %48, ptr nonnull @_QMsp_dataEgrid_points, i32 4)
  %50 = call i1 @_FortranAioInputInteger(ptr %48, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 1), i32 4)
  %51 = call i1 @_FortranAioInputInteger(ptr %48, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 2), i32 4)
  %52 = call i32 @_FortranAioEndIoStatement(ptr %48)
  %53 = call ptr @_FortranAioBeginClose(i32 2, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 92)
  %54 = call i32 @_FortranAioEndIoStatement(ptr %53)
  br label %58

55:                                               ; preds = %36
  %56 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXd85ed0c0ef83a9b736db30ff9fbcb25a, i64 56, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 94)
  %57 = tail call i32 @_FortranAioEndIoStatement(ptr %56)
  store i32 400, ptr %20, align 4, !tbaa !12
  store double 6.700000e-04, ptr @_QMsp_dataEdt, align 8, !tbaa !13
  store i32 162, ptr @_QMsp_dataEgrid_points, align 4, !tbaa !15
  store i32 162, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  store i32 162, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  br label %58

58:                                               ; preds = %39, %55
  %59 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX925fa4f14c0e6e2492aa90cb8722cfb5, i64 33, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 103)
  %60 = load i32, ptr @_QMsp_dataEgrid_points, align 4, !tbaa !15
  %61 = call i1 @_FortranAioOutputInteger32(ptr %59, i32 %60)
  %62 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  %63 = call i1 @_FortranAioOutputInteger32(ptr %59, i32 %62)
  %64 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  %65 = call i1 @_FortranAioOutputInteger32(ptr %59, i32 %64)
  %66 = call i32 @_FortranAioEndIoStatement(ptr %59)
  %67 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXa4658133e7adc02a3083854f0e760120, i64 41, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 104)
  %68 = load i32, ptr %20, align 4, !tbaa !12
  %69 = call i1 @_FortranAioOutputInteger32(ptr %67, i32 %68)
  %70 = load double, ptr @_QMsp_dataEdt, align 8, !tbaa !13
  %71 = call i1 @_FortranAioOutputReal64(ptr %67, double %70)
  %72 = call i32 @_FortranAioEndIoStatement(ptr %67)
  %73 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXf923a2af02906180bfbdd179b9b5c308, i64 38, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 106)
  %74 = call i32 @omp_get_max_threads_()
  %75 = call i1 @_FortranAioOutputInteger32(ptr %73, i32 %74)
  %76 = call i32 @_FortranAioEndIoStatement(ptr %73)
  %77 = call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 107)
  %78 = call i32 @_FortranAioEndIoStatement(ptr %77)
  %79 = load i32, ptr @_QMsp_dataEgrid_points, align 4, !tbaa !15
  %80 = icmp sgt i32 %79, 162
  %81 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  %82 = icmp sgt i32 %81, 162
  %83 = or i1 %80, %82
  %84 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  %85 = icmp sgt i32 %84, 162
  %86 = or i1 %83, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %58
  %88 = call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 119)
  store i32 1, ptr %18, align 4, !tbaa !12
  %89 = load i32, ptr @_QMsp_dataEgrid_points, align 4, !tbaa !15
  %90 = call i1 @_FortranAioOutputInteger32(ptr %88, i32 %89)
  store i32 2, ptr %18, align 4, !tbaa !12
  %91 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  %92 = call i1 @_FortranAioOutputInteger32(ptr %88, i32 %91)
  store i32 3, ptr %18, align 4, !tbaa !12
  %93 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  %94 = call i1 @_FortranAioOutputInteger32(ptr %88, i32 %93)
  store i32 4, ptr %18, align 4, !tbaa !12
  %95 = call i32 @_FortranAioEndIoStatement(ptr %88)
  %96 = call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 120)
  %97 = call i1 @_FortranAioOutputAscii(ptr %96, ptr nonnull @_QQclX768663438754acb04b6aa80e02ec5698, i64 46)
  %98 = call i32 @_FortranAioEndIoStatement(ptr %96)
  br label %.loopexit55

99:                                               ; preds = %58
  %100 = add i32 %79, -2
  store i32 %100, ptr @_QMsp_dataEnx2, align 4, !tbaa !17
  %101 = add i32 %81, -2
  store i32 %101, ptr @_QMsp_dataEny2, align 4, !tbaa !19
  %102 = add i32 %84, -2
  store i32 %102, ptr @_QMsp_dataEnz2, align 4, !tbaa !21
  store i32 1, ptr %18, align 4, !tbaa !12
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
  call void @timer_clear_(ptr nonnull %18)
  %131 = load i32, ptr %18, align 4, !tbaa !12
  %132 = add i32 %131, 1
  store i32 %132, ptr %18, align 4, !tbaa !12
  call void @alloc_space_()
  call void @set_constants_()
  call void @exact_rhs_()
  call void @initialize_()
  call void @adi_()
  call void @initialize_()
  store i32 1, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %133 = load i32, ptr %18, align 4, !tbaa !12
  %134 = add i32 %133, 1
  store i32 %134, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %135 = load i32, ptr %18, align 4, !tbaa !12
  %136 = add i32 %135, 1
  store i32 %136, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %137 = load i32, ptr %18, align 4, !tbaa !12
  %138 = add i32 %137, 1
  store i32 %138, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %139 = load i32, ptr %18, align 4, !tbaa !12
  %140 = add i32 %139, 1
  store i32 %140, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %141 = load i32, ptr %18, align 4, !tbaa !12
  %142 = add i32 %141, 1
  store i32 %142, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %143 = load i32, ptr %18, align 4, !tbaa !12
  %144 = add i32 %143, 1
  store i32 %144, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %145 = load i32, ptr %18, align 4, !tbaa !12
  %146 = add i32 %145, 1
  store i32 %146, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %147 = load i32, ptr %18, align 4, !tbaa !12
  %148 = add i32 %147, 1
  store i32 %148, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %149 = load i32, ptr %18, align 4, !tbaa !12
  %150 = add i32 %149, 1
  store i32 %150, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %151 = load i32, ptr %18, align 4, !tbaa !12
  %152 = add i32 %151, 1
  store i32 %152, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %153 = load i32, ptr %18, align 4, !tbaa !12
  %154 = add i32 %153, 1
  store i32 %154, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %155 = load i32, ptr %18, align 4, !tbaa !12
  %156 = add i32 %155, 1
  store i32 %156, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %157 = load i32, ptr %18, align 4, !tbaa !12
  %158 = add i32 %157, 1
  store i32 %158, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %159 = load i32, ptr %18, align 4, !tbaa !12
  %160 = add i32 %159, 1
  store i32 %160, ptr %18, align 4, !tbaa !12
  call void @timer_clear_(ptr nonnull %18)
  %161 = load i32, ptr %18, align 4, !tbaa !12
  %162 = add i32 %161, 1
  store i32 %162, ptr %18, align 4, !tbaa !12
  store i32 1, ptr %14, align 4, !tbaa !12
  call void @timer_start_(ptr nonnull %14)
  call void @roi_begin_()
  %163 = load i32, ptr %20, align 4, !tbaa !12
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %._crit_edge

165:                                              ; preds = %99
  %166 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272054696D65207374657020272C20693429, i64 19, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 155)
  %167 = call i1 @_FortranAioOutputInteger32(ptr %166, i32 1)
  %168 = call i32 @_FortranAioEndIoStatement(ptr %166)
  call void @adi_()
  %.not54 = icmp eq i32 %163, 1
  br i1 %.not54, label %._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %165
  %narrow = add nsw i32 %163, -1
  %169 = zext nneg i32 %narrow to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %177
  %170 = phi i64 [ %179, %177 ], [ %169, %.lr.ph.peel.next ]
  %171 = phi i32 [ %178, %177 ], [ 2, %.lr.ph.peel.next ]
  %.urem = urem i32 %171, 20
  %172 = icmp eq i32 %.urem, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %.lr.ph
  %174 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272054696D65207374657020272C20693429, i64 19, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 155)
  %175 = call i1 @_FortranAioOutputInteger32(ptr %174, i32 %171)
  %176 = call i32 @_FortranAioEndIoStatement(ptr %174)
  br label %177

177:                                              ; preds = %173, %.lr.ph
  call void @adi_()
  %178 = add nuw i32 %171, 1
  %179 = add nsw i64 %170, -1
  %180 = icmp sgt i64 %170, 1
  br i1 %180, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %177, %165, %99
  call void @roi_end_()
  store i32 1, ptr %13, align 4, !tbaa !12
  call void @timer_stop_(ptr nonnull %13)
  store i32 1, ptr %12, align 4, !tbaa !12
  %181 = call contract double @timer_read_(ptr nonnull %12)
  store double %181, ptr %22, align 8, !tbaa !12
  call void @verify_(ptr nonnull %20, ptr nonnull %16, ptr nonnull %24, i64 1)
  call void @free_space_()
  %182 = fcmp contract une double %181, 0.000000e+00
  br i1 %182, label %183, label %208

183:                                              ; preds = %._crit_edge
  %184 = load i32, ptr @_QMsp_dataEgrid_points, align 4, !tbaa !15
  %185 = sitofp i32 %184 to double
  %186 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !15
  %187 = sitofp i32 %186 to double
  %188 = fmul contract double %185, %187
  %189 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !15
  %190 = sitofp i32 %189 to double
  %191 = fmul contract double %188, %190
  %192 = add i32 %186, %184
  %193 = add i32 %192, %189
  %194 = sitofp i32 %193 to double
  %195 = fdiv contract double %194, 3.000000e+00
  %196 = load i32, ptr %20, align 4, !tbaa !12
  %197 = sitofp i32 %196 to double
  %198 = fmul contract double %197, 0x3EB0C6F7A0B5ED8D
  %199 = fmul contract double %191, 0x408B896460000000
  %200 = fmul double %195, %195
  %201 = fmul contract double %200, 0x40B24BE900000000
  %202 = fsub contract double %199, %201
  %203 = fmul contract double %195, 1.148450e+04
  %204 = fadd contract double %203, %202
  %205 = fadd contract double %204, 0xC0D2D219A0000000
  %206 = fmul contract double %198, %205
  %207 = fdiv contract double %206, %181
  br label %208

208:                                              ; preds = %._crit_edge, %183
  %storemerge = phi double [ %207, %183 ], [ 0.000000e+00, %._crit_edge ]
  store double %storemerge, ptr %19, align 8, !tbaa !12
  %209 = load i16, ptr @_QQclX5350, align 1
  store i16 %209, ptr %11, align 4
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
  call void @print_results_(ptr nonnull %11, ptr nonnull %16, ptr nonnull @_QMsp_dataEgrid_points, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMsp_dataEgrid_points, i64 0, i64 2), ptr nonnull %20, ptr nonnull %22, ptr nonnull %19, ptr nonnull %10, ptr nonnull %24, ptr nonnull %9, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %5, ptr nonnull %4, ptr nonnull %3, ptr nonnull %2, ptr nonnull %1, i64 2, i64 1, i64 24, i64 5, i64 11, i64 6, i64 5, i64 6, i64 6, i64 6, i64 9, i64 6)
  %210 = load i32, ptr @_QMsp_dataEtimeron, align 4, !tbaa !4
  %.not40 = icmp eq i32 %210, 0
  br i1 %.not40, label %.loopexit55, label %.preheader.preheader

.preheader.preheader:                             ; preds = %208
  store i32 1, ptr %18, align 4, !tbaa !12
  %211 = call contract double @timer_read_(ptr nonnull %18)
  %212 = load i32, ptr %18, align 4, !tbaa !12
  %213 = sext i32 %212 to i64
  %gep = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %213
  store double %211, ptr %gep, align 8, !tbaa !25
  %214 = add i32 %212, 1
  store i32 %214, ptr %18, align 4, !tbaa !12
  %215 = call contract double @timer_read_(ptr nonnull %18)
  %216 = load i32, ptr %18, align 4, !tbaa !12
  %217 = sext i32 %216 to i64
  %gep.1 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %217
  store double %215, ptr %gep.1, align 8, !tbaa !25
  %218 = add i32 %216, 1
  store i32 %218, ptr %18, align 4, !tbaa !12
  %219 = call contract double @timer_read_(ptr nonnull %18)
  %220 = load i32, ptr %18, align 4, !tbaa !12
  %221 = sext i32 %220 to i64
  %gep.2 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %221
  store double %219, ptr %gep.2, align 8, !tbaa !25
  %222 = add i32 %220, 1
  store i32 %222, ptr %18, align 4, !tbaa !12
  %223 = call contract double @timer_read_(ptr nonnull %18)
  %224 = load i32, ptr %18, align 4, !tbaa !12
  %225 = sext i32 %224 to i64
  %gep.3 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %225
  store double %223, ptr %gep.3, align 8, !tbaa !25
  %226 = add i32 %224, 1
  store i32 %226, ptr %18, align 4, !tbaa !12
  %227 = call contract double @timer_read_(ptr nonnull %18)
  %228 = load i32, ptr %18, align 4, !tbaa !12
  %229 = sext i32 %228 to i64
  %gep.4 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %229
  store double %227, ptr %gep.4, align 8, !tbaa !25
  %230 = add i32 %228, 1
  store i32 %230, ptr %18, align 4, !tbaa !12
  %231 = call contract double @timer_read_(ptr nonnull %18)
  %232 = load i32, ptr %18, align 4, !tbaa !12
  %233 = sext i32 %232 to i64
  %gep.5 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %233
  store double %231, ptr %gep.5, align 8, !tbaa !25
  %234 = add i32 %232, 1
  store i32 %234, ptr %18, align 4, !tbaa !12
  %235 = call contract double @timer_read_(ptr nonnull %18)
  %236 = load i32, ptr %18, align 4, !tbaa !12
  %237 = sext i32 %236 to i64
  %gep.6 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %237
  store double %235, ptr %gep.6, align 8, !tbaa !25
  %238 = add i32 %236, 1
  store i32 %238, ptr %18, align 4, !tbaa !12
  %239 = call contract double @timer_read_(ptr nonnull %18)
  %240 = load i32, ptr %18, align 4, !tbaa !12
  %241 = sext i32 %240 to i64
  %gep.7 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %241
  store double %239, ptr %gep.7, align 8, !tbaa !25
  %242 = add i32 %240, 1
  store i32 %242, ptr %18, align 4, !tbaa !12
  %243 = call contract double @timer_read_(ptr nonnull %18)
  %244 = load i32, ptr %18, align 4, !tbaa !12
  %245 = sext i32 %244 to i64
  %gep.8 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %245
  store double %243, ptr %gep.8, align 8, !tbaa !25
  %246 = add i32 %244, 1
  store i32 %246, ptr %18, align 4, !tbaa !12
  %247 = call contract double @timer_read_(ptr nonnull %18)
  %248 = load i32, ptr %18, align 4, !tbaa !12
  %249 = sext i32 %248 to i64
  %gep.9 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %249
  store double %247, ptr %gep.9, align 8, !tbaa !25
  %250 = add i32 %248, 1
  store i32 %250, ptr %18, align 4, !tbaa !12
  %251 = call contract double @timer_read_(ptr nonnull %18)
  %252 = load i32, ptr %18, align 4, !tbaa !12
  %253 = sext i32 %252 to i64
  %gep.10 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %253
  store double %251, ptr %gep.10, align 8, !tbaa !25
  %254 = add i32 %252, 1
  store i32 %254, ptr %18, align 4, !tbaa !12
  %255 = call contract double @timer_read_(ptr nonnull %18)
  %256 = load i32, ptr %18, align 4, !tbaa !12
  %257 = sext i32 %256 to i64
  %gep.11 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %257
  store double %255, ptr %gep.11, align 8, !tbaa !25
  %258 = add i32 %256, 1
  store i32 %258, ptr %18, align 4, !tbaa !12
  %259 = call contract double @timer_read_(ptr nonnull %18)
  %260 = load i32, ptr %18, align 4, !tbaa !12
  %261 = sext i32 %260 to i64
  %gep.12 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %261
  store double %259, ptr %gep.12, align 8, !tbaa !25
  %262 = add i32 %260, 1
  store i32 %262, ptr %18, align 4, !tbaa !12
  %263 = call contract double @timer_read_(ptr nonnull %18)
  %264 = load i32, ptr %18, align 4, !tbaa !12
  %265 = sext i32 %264 to i64
  %gep.13 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %265
  store double %263, ptr %gep.13, align 8, !tbaa !25
  %266 = add i32 %264, 1
  store i32 %266, ptr %18, align 4, !tbaa !12
  %267 = call contract double @timer_read_(ptr nonnull %18)
  %268 = load i32, ptr %18, align 4, !tbaa !12
  %269 = sext i32 %268 to i64
  %gep.14 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %269
  store double %267, ptr %gep.14, align 8, !tbaa !25
  %270 = add i32 %268, 1
  store i32 %270, ptr %18, align 4, !tbaa !12
  %271 = load double, ptr %22, align 8, !tbaa !12
  %272 = fcmp contract oeq double %271, 0.000000e+00
  br i1 %272, label %273, label %274

273:                                              ; preds = %.preheader.preheader
  store double 1.000000e+00, ptr %22, align 8, !tbaa !12
  br label %274

274:                                              ; preds = %273, %.preheader.preheader
  %275 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827202053454354494F4E20202054696D65202873656373292729, i64 27, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 199)
  %276 = call i32 @_FortranAioEndIoStatement(ptr %275)
  br label %277

277:                                              ; preds = %274, %345
  %278 = phi i64 [ 15, %274 ], [ %348, %345 ]
  %279 = phi i32 [ 1, %274 ], [ %347, %345 ]
  store i32 %279, ptr %18, align 4, !tbaa !12
  %280 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2832782C61382C273A272C66392E332C27202028272C66362E322C2725292729, i64 32, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 203)
  %281 = load i32, ptr %18, align 4, !tbaa !12
  %282 = sext i32 %281 to i64
  %gep45 = getelementptr [8 x i8], ptr getelementptr ([15 x [8 x i8]], ptr @_QFEt_names, i64 -1, i64 14, i64 0), i64 %282
  %283 = call i1 @_FortranAioOutputAscii(ptr %280, ptr %gep45, i64 8)
  %284 = load i32, ptr %18, align 4, !tbaa !12
  %285 = sext i32 %284 to i64
  %gep46 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %285
  %286 = load double, ptr %gep46, align 8, !tbaa !25
  %287 = call i1 @_FortranAioOutputReal64(ptr %280, double %286)
  %288 = load i32, ptr %18, align 4, !tbaa !12
  %289 = sext i32 %288 to i64
  %gep47 = getelementptr double, ptr getelementptr ([15 x double], ptr @_QFEtrecs, i64 -1, i64 14), i64 %289
  %290 = load double, ptr %gep47, align 8, !tbaa !25
  %291 = fmul contract double %290, 1.000000e+02
  %292 = load double, ptr %22, align 8, !tbaa !12
  %293 = fdiv contract double %291, %292
  %294 = call i1 @_FortranAioOutputReal64(ptr %280, double %293)
  %295 = call i32 @_FortranAioEndIoStatement(ptr %280)
  %296 = load i32, ptr %18, align 4, !tbaa !12
  switch i32 %296, label %345 [
    i32 5, label %297
    i32 8, label %320
    i32 10, label %333
  ]

297:                                              ; preds = %277
  %298 = load double, ptr getelementptr inbounds ([15 x double], ptr @_QFEtrecs, i64 0, i64 1), align 8, !tbaa !25
  %299 = load double, ptr getelementptr inbounds ([15 x double], ptr @_QFEtrecs, i64 0, i64 2), align 16, !tbaa !25
  %300 = fadd contract double %298, %299
  %301 = load double, ptr getelementptr inbounds ([15 x double], ptr @_QFEtrecs, i64 0, i64 3), align 8, !tbaa !25
  %302 = fadd contract double %300, %301
  %303 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 206)
  %304 = call i1 @_FortranAioOutputAscii(ptr %303, ptr nonnull @_QQclX7375622D726873, i64 7)
  %305 = call i1 @_FortranAioOutputReal64(ptr %303, double %302)
  %306 = fmul contract double %302, 1.000000e+02
  %307 = load double, ptr %22, align 8, !tbaa !12
  %308 = fdiv contract double %306, %307
  %309 = call i1 @_FortranAioOutputReal64(ptr %303, double %308)
  %310 = call i32 @_FortranAioEndIoStatement(ptr %303)
  %311 = load double, ptr getelementptr inbounds ([15 x double], ptr @_QFEtrecs, i64 0, i64 4), align 16, !tbaa !25
  %312 = fsub contract double %311, %302
  %313 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 208)
  %314 = call i1 @_FortranAioOutputAscii(ptr %313, ptr nonnull @_QQclX726573742D726873, i64 8)
  %315 = call i1 @_FortranAioOutputReal64(ptr %313, double %312)
  %316 = fmul contract double %312, 1.000000e+02
  %317 = load double, ptr %22, align 8, !tbaa !12
  %318 = fdiv contract double %316, %317
  %319 = call i1 @_FortranAioOutputReal64(ptr %313, double %318)
  br label %.sink.split

320:                                              ; preds = %277
  %321 = load double, ptr getelementptr inbounds ([15 x double], ptr @_QFEtrecs, i64 0, i64 7), align 8, !tbaa !25
  %322 = load double, ptr getelementptr inbounds ([15 x double], ptr @_QFEtrecs, i64 0, i64 8), align 16, !tbaa !25
  %323 = fsub contract double %321, %322
  %324 = load double, ptr getelementptr inbounds ([15 x double], ptr @_QFEtrecs, i64 0, i64 9), align 8, !tbaa !25
  %325 = fsub contract double %323, %324
  %326 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 211)
  %327 = call i1 @_FortranAioOutputAscii(ptr %326, ptr nonnull @_QQclX7375622D7A736F6C, i64 8)
  %328 = call i1 @_FortranAioOutputReal64(ptr %326, double %325)
  %329 = fmul contract double %325, 1.000000e+02
  %330 = load double, ptr %22, align 8, !tbaa !12
  %331 = fdiv contract double %329, %330
  %332 = call i1 @_FortranAioOutputReal64(ptr %326, double %331)
  br label %.sink.split

333:                                              ; preds = %277
  %334 = load double, ptr getelementptr inbounds ([15 x double], ptr @_QFEtrecs, i64 0, i64 8), align 16, !tbaa !25
  %335 = load double, ptr getelementptr inbounds ([15 x double], ptr @_QFEtrecs, i64 0, i64 9), align 8, !tbaa !25
  %336 = fadd contract double %334, %335
  %337 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX65d4783f678b80403c094735bdbacc6d, i32 214)
  %338 = call i1 @_FortranAioOutputAscii(ptr %337, ptr nonnull @_QQclX726564697374, i64 6)
  %339 = call i1 @_FortranAioOutputReal64(ptr %337, double %336)
  %340 = fmul contract double %336, 1.000000e+02
  %341 = load double, ptr %22, align 8, !tbaa !12
  %342 = fdiv contract double %340, %341
  %343 = call i1 @_FortranAioOutputReal64(ptr %337, double %342)
  br label %.sink.split

.sink.split:                                      ; preds = %333, %320, %297
  %.sink = phi ptr [ %313, %297 ], [ %326, %320 ], [ %337, %333 ]
  %344 = call i32 @_FortranAioEndIoStatement(ptr %.sink)
  br label %345

345:                                              ; preds = %.sink.split, %277
  %346 = load i32, ptr %18, align 4, !tbaa !12
  %347 = add i32 %346, 1
  %348 = add nsw i64 %278, -1
  %349 = icmp ugt i64 %278, 1
  br i1 %349, label %277, label %.loopexit55

.loopexit55:                                      ; preds = %345, %87, %208
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

declare void @exact_rhs_() local_unnamed_addr

declare void @initialize_() local_unnamed_addr

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
!5 = !{!"global data/_QMsp_dataEtimeron", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QQmain"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QFEt_names", !6, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMsp_dataEdt", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMsp_dataEgrid_points", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"global data/_QMsp_dataEnx2", !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"global data/_QMsp_dataEny2", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"global data/_QMsp_dataEnz2", !6, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
!25 = !{!26, !26, i64 0}
!26 = !{!"global data/_QFEtrecs", !6, i64 0}
