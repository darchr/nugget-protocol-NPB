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

$_QQclX6A61636C64 = comdat any

$_QQclX626C7473 = comdat any

$_QQclX6A616375 = comdat any

$_QQclX62757473 = comdat any

$_QQclX616464 = comdat any

$_QQclX6C326E6F726D = comdat any

$_QQclX4C55 = comdat any

$_QQclX20202020202020202020666C6F6174696E6720706F696E74 = comdat any

$_QQclX332E342E32 = comdat any

$_QQclX3132205365702032303234 = comdat any

$_QQclX286E6F6E6529 = comdat any

$_QQclX2428464329 = comdat any

$_QQclX242846464C41475329 = comdat any

$_QQclX2827202053454354494F4E202020202054696D65202873656373292729 = comdat any

$_QQclX41a7c4af207d8d32d64faf6bb4bc44cf = comdat any

$_QQclX2832782C61382C273A272C66392E332C27202028272C66362E322C2725292729 = comdat any

$_QQclX4cb2ce6ecfb00433a1a961c67d524bde = comdat any

$_QQclX7375622D726873 = comdat any

$_QQclX726573742D726873 = comdat any

@_QMlu_dataEa = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEb = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEc = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEd = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEerrnm = external global [5 x double]
@_QMlu_dataEflux = external global [162 x [5 x double]]
@_QMlu_dataEfrc = external global double
@_QMlu_dataEitmax = external global i32
@_QMlu_dataEmaxtime = external global double
@_QMlu_dataEnx0 = external global i32
@_QMlu_dataEny0 = external global i32
@_QMlu_dataEnz0 = external global i32
@_QMlu_dataErsdnm = external global [5 x double]
@_QFEt_names = internal global [11 x [8 x i8]] zeroinitializer
@_QMlu_dataEtimeron = external global i32
@_QFEtrecs = internal unnamed_addr global [11 x double] zeroinitializer
@_QQclX746F74616C = linkonce local_unnamed_addr constant [5 x i8] c"total", comdat
@_QQclX72687378 = linkonce local_unnamed_addr constant [4 x i8] c"rhsx", comdat
@_QQclX72687379 = linkonce local_unnamed_addr constant [4 x i8] c"rhsy", comdat
@_QQclX7268737A = linkonce local_unnamed_addr constant [4 x i8] c"rhsz", comdat
@_QQclX726873 = linkonce local_unnamed_addr constant [3 x i8] c"rhs", comdat
@_QQclX6A61636C64 = linkonce local_unnamed_addr constant [5 x i8] c"jacld", comdat
@_QQclX626C7473 = linkonce local_unnamed_addr constant [4 x i8] c"blts", comdat
@_QQclX6A616375 = linkonce local_unnamed_addr constant [4 x i8] c"jacu", comdat
@_QQclX62757473 = linkonce local_unnamed_addr constant [4 x i8] c"buts", comdat
@_QQclX616464 = linkonce local_unnamed_addr constant [3 x i8] c"add", comdat
@_QQclX6C326E6F726D = linkonce local_unnamed_addr constant [6 x i8] c"l2norm", comdat
@_QQclX4C55 = linkonce local_unnamed_addr constant [2 x i8] c"LU", comdat
@_QQclX20202020202020202020666C6F6174696E6720706F696E74 = linkonce local_unnamed_addr constant [24 x i8] c"          floating point", comdat
@_QQclX332E342E32 = linkonce local_unnamed_addr constant [5 x i8] c"3.4.2", comdat
@_QQclX3132205365702032303234 = linkonce local_unnamed_addr constant [11 x i8] c"12 Sep 2024", comdat
@_QQclX286E6F6E6529 = linkonce local_unnamed_addr constant [6 x i8] c"(none)", comdat
@_QQclX2428464329 = linkonce local_unnamed_addr constant [5 x i8] c"$(FC)", comdat
@_QQclX242846464C41475329 = linkonce local_unnamed_addr constant [9 x i8] c"$(FFLAGS)", comdat
@_QQclX2827202053454354494F4E202020202054696D65202873656373292729 = linkonce constant [29 x i8] c"('  SECTION     Time (secs)')", comdat
@_QQclX41a7c4af207d8d32d64faf6bb4bc44cf = linkonce constant [56 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/LU/lu.f90\00", comdat
@_QQclX2832782C61382C273A272C66392E332C27202028272C66362E322C2725292729 = linkonce constant [32 x i8] c"(2x,a8,':',f9.3,'  (',f6.2,'%)')", comdat
@_QQclX4cb2ce6ecfb00433a1a961c67d524bde = linkonce constant [39 x i8] c"(5x,'--> ',a8,':',f9.3,'  (',f6.2,'%)')", comdat
@_QQclX7375622D726873 = linkonce constant [7 x i8] c"sub-rhs", comdat
@_QQclX726573742D726873 = linkonce constant [8 x i8] c"rest-rhs", comdat
@_QQEnvironmentDefaults = local_unnamed_addr constant ptr null
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8

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
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %13 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEa, i64 32400, ptr nonnull @_QMlu_dataEa.cache)
  %14 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEb, i64 32400, ptr nonnull @_QMlu_dataEb.cache)
  %15 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEc, i64 32400, ptr nonnull @_QMlu_dataEc.cache)
  %16 = alloca [1 x i8], align 4
  %17 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEd, i64 32400, ptr nonnull @_QMlu_dataEd.cache)
  %18 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEflux, i64 6480, ptr nonnull @_QMlu_dataEflux.cache)
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  tail call void @check_timer_flag_(ptr nonnull @_QMlu_dataEtimeron)
  %22 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @_QFEt_names, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX746F74616C, i64 5, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 0, i64 5), i8 32, i64 3, i1 false), !tbaa !10
  %23 = load i32, ptr @_QQclX72687378, align 1
  store i32 %23, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 1), align 8
  store i32 538976288, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 1, i64 4), align 4
  %24 = load i32, ptr @_QQclX72687379, align 1
  store i32 %24, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 2), align 16
  store i32 538976288, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 2, i64 4), align 4
  %25 = load i32, ptr @_QQclX7268737A, align 1
  store i32 %25, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 3), align 8
  store i32 538976288, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 3, i64 4), align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 4), ptr noundef nonnull align 1 dereferenceable(3) @_QQclX726873, i64 3, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 4, i64 3), i8 32, i64 5, i1 false), !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 5), ptr noundef nonnull align 1 dereferenceable(5) @_QQclX6A61636C64, i64 5, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 5, i64 5), i8 32, i64 3, i1 false), !tbaa !10
  %26 = load i32, ptr @_QQclX626C7473, align 1
  store i32 %26, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 6), align 16
  store i32 538976288, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 6, i64 4), align 4
  %27 = load i32, ptr @_QQclX6A616375, align 1
  store i32 %27, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 7), align 8
  store i32 538976288, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 7, i64 4), align 4
  %28 = load i32, ptr @_QQclX62757473, align 1
  store i32 %28, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 8), align 16
  store i32 538976288, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 8, i64 4), align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 9), ptr noundef nonnull align 1 dereferenceable(3) @_QQclX616464, i64 3, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 9, i64 3), i8 32, i64 5, i1 false), !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 10), ptr noundef nonnull align 1 dereferenceable(6) @_QQclX6C326E6F726D, i64 6, i1 false)
  store i16 8224, ptr getelementptr inbounds ([11 x [8 x i8]], ptr @_QFEt_names, i64 0, i64 10, i64 6), align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  tail call void @read_input_()
  tail call void @domain_()
  tail call void @alloc_space_()
  tail call void @setcoeff_()
  tail call void @setbv_()
  tail call void @setiv_()
  tail call void @erhs_()
  store i32 1, ptr %12, align 4, !tbaa !12
  call void @ssor_(ptr nonnull %12)
  call void @setbv_()
  call void @setiv_()
  call void @ssor_(ptr nonnull @_QMlu_dataEitmax)
  call void @error_()
  call void @pintgr_()
  call void @verify_(ptr nonnull @_QMlu_dataErsdnm, ptr nonnull @_QMlu_dataEerrnm, ptr nonnull @_QMlu_dataEfrc, ptr nonnull %16, ptr nonnull %21, i64 1)
  call void @free_space_()
  %29 = load i32, ptr @_QMlu_dataEitmax, align 4, !tbaa !13
  %30 = sitofp i32 %29 to double
  %31 = fmul contract double %30, 0x3EB0C6F7A0B5ED8D
  %32 = load i32, ptr @_QMlu_dataEnx0, align 4, !tbaa !15
  %33 = sitofp i32 %32 to double
  %34 = fmul contract double %33, 0x409F031480000000
  %35 = load i32, ptr @_QMlu_dataEny0, align 4, !tbaa !17
  %36 = sitofp i32 %35 to double
  %37 = fmul contract double %34, %36
  %38 = load i32, ptr @_QMlu_dataEnz0, align 4, !tbaa !19
  %39 = sitofp i32 %38 to double
  %40 = fmul contract double %37, %39
  %41 = add i32 %35, %32
  %42 = add i32 %41, %38
  %43 = sitofp i32 %42 to double
  %44 = fdiv contract double %43, 3.000000e+00
  %45 = fmul double %44, %44
  %46 = fmul contract double %45, 0x40C555A660000000
  %47 = fsub contract double %40, %46
  %48 = fmul contract double %43, 0x40DB1EB9A0000000
  %49 = fdiv contract double %48, 3.000000e+00
  %50 = fadd contract double %49, %47
  %51 = fadd contract double %50, -1.440100e+05
  %52 = fmul contract double %31, %51
  %53 = load double, ptr @_QMlu_dataEmaxtime, align 8, !tbaa !21
  %54 = fdiv contract double %52, %53
  store double %54, ptr %20, align 8, !tbaa !12
  %55 = load i16, ptr @_QQclX4C55, align 1
  store i16 %55, ptr %11, align 4
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
  call void @print_results_(ptr nonnull %11, ptr nonnull %16, ptr nonnull @_QMlu_dataEnx0, ptr nonnull @_QMlu_dataEny0, ptr nonnull @_QMlu_dataEnz0, ptr nonnull @_QMlu_dataEitmax, ptr nonnull @_QMlu_dataEmaxtime, ptr nonnull %20, ptr nonnull %10, ptr nonnull %21, ptr nonnull %9, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %5, ptr nonnull %4, ptr nonnull %3, ptr nonnull %2, ptr nonnull %1, i64 2, i64 1, i64 24, i64 5, i64 11, i64 6, i64 5, i64 6, i64 6, i64 6, i64 9, i64 6)
  %56 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !4
  %.not27 = icmp eq i32 %56, 0
  br i1 %.not27, label %.loopexit34, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  store i32 1, ptr %19, align 4, !tbaa !12
  %57 = call contract double @timer_read_(ptr nonnull %19)
  %58 = load i32, ptr %19, align 4, !tbaa !12
  %59 = sext i32 %58 to i64
  %gep = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %59
  store double %57, ptr %gep, align 8, !tbaa !23
  %60 = add i32 %58, 1
  store i32 %60, ptr %19, align 4, !tbaa !12
  %61 = call contract double @timer_read_(ptr nonnull %19)
  %62 = load i32, ptr %19, align 4, !tbaa !12
  %63 = sext i32 %62 to i64
  %gep.1 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %63
  store double %61, ptr %gep.1, align 8, !tbaa !23
  %64 = add i32 %62, 1
  store i32 %64, ptr %19, align 4, !tbaa !12
  %65 = call contract double @timer_read_(ptr nonnull %19)
  %66 = load i32, ptr %19, align 4, !tbaa !12
  %67 = sext i32 %66 to i64
  %gep.2 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %67
  store double %65, ptr %gep.2, align 8, !tbaa !23
  %68 = add i32 %66, 1
  store i32 %68, ptr %19, align 4, !tbaa !12
  %69 = call contract double @timer_read_(ptr nonnull %19)
  %70 = load i32, ptr %19, align 4, !tbaa !12
  %71 = sext i32 %70 to i64
  %gep.3 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %71
  store double %69, ptr %gep.3, align 8, !tbaa !23
  %72 = add i32 %70, 1
  store i32 %72, ptr %19, align 4, !tbaa !12
  %73 = call contract double @timer_read_(ptr nonnull %19)
  %74 = load i32, ptr %19, align 4, !tbaa !12
  %75 = sext i32 %74 to i64
  %gep.4 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %75
  store double %73, ptr %gep.4, align 8, !tbaa !23
  %76 = add i32 %74, 1
  store i32 %76, ptr %19, align 4, !tbaa !12
  %77 = call contract double @timer_read_(ptr nonnull %19)
  %78 = load i32, ptr %19, align 4, !tbaa !12
  %79 = sext i32 %78 to i64
  %gep.5 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %79
  store double %77, ptr %gep.5, align 8, !tbaa !23
  %80 = add i32 %78, 1
  store i32 %80, ptr %19, align 4, !tbaa !12
  %81 = call contract double @timer_read_(ptr nonnull %19)
  %82 = load i32, ptr %19, align 4, !tbaa !12
  %83 = sext i32 %82 to i64
  %gep.6 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %83
  store double %81, ptr %gep.6, align 8, !tbaa !23
  %84 = add i32 %82, 1
  store i32 %84, ptr %19, align 4, !tbaa !12
  %85 = call contract double @timer_read_(ptr nonnull %19)
  %86 = load i32, ptr %19, align 4, !tbaa !12
  %87 = sext i32 %86 to i64
  %gep.7 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %87
  store double %85, ptr %gep.7, align 8, !tbaa !23
  %88 = add i32 %86, 1
  store i32 %88, ptr %19, align 4, !tbaa !12
  %89 = call contract double @timer_read_(ptr nonnull %19)
  %90 = load i32, ptr %19, align 4, !tbaa !12
  %91 = sext i32 %90 to i64
  %gep.8 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %91
  store double %89, ptr %gep.8, align 8, !tbaa !23
  %92 = add i32 %90, 1
  store i32 %92, ptr %19, align 4, !tbaa !12
  %93 = call contract double @timer_read_(ptr nonnull %19)
  %94 = load i32, ptr %19, align 4, !tbaa !12
  %95 = sext i32 %94 to i64
  %gep.9 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %95
  store double %93, ptr %gep.9, align 8, !tbaa !23
  %96 = add i32 %94, 1
  store i32 %96, ptr %19, align 4, !tbaa !12
  %97 = call contract double @timer_read_(ptr nonnull %19)
  %98 = load i32, ptr %19, align 4, !tbaa !12
  %99 = sext i32 %98 to i64
  %gep.10 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %99
  store double %97, ptr %gep.10, align 8, !tbaa !23
  %100 = add i32 %98, 1
  store i32 %100, ptr %19, align 4, !tbaa !12
  %101 = load double, ptr @_QMlu_dataEmaxtime, align 8, !tbaa !21
  %102 = fcmp contract oeq double %101, 0.000000e+00
  %.0 = select i1 %102, double 1.000000e+00, double %101
  %103 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827202053454354494F4E202020202054696D65202873656373292729, i64 29, ptr null, i32 6, ptr nonnull @_QQclX41a7c4af207d8d32d64faf6bb4bc44cf, i32 176)
  %104 = call i32 @_FortranAioEndIoStatement(ptr %103)
  br label %105

105:                                              ; preds = %.preheader.preheader, %.thread
  %106 = phi i64 [ 11, %.preheader.preheader ], [ %151, %.thread ]
  %107 = phi i32 [ 1, %.preheader.preheader ], [ %150, %.thread ]
  store i32 %107, ptr %19, align 4, !tbaa !12
  switch i32 %107, label %108 [
    i32 8, label %.thread
    i32 6, label %.thread
  ]

108:                                              ; preds = %105
  %109 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2832782C61382C273A272C66392E332C27202028272C66362E322C2725292729, i64 32, ptr null, i32 6, ptr nonnull @_QQclX41a7c4af207d8d32d64faf6bb4bc44cf, i32 180)
  %110 = load i32, ptr %19, align 4, !tbaa !12
  %111 = sext i32 %110 to i64
  %gep29 = getelementptr [8 x i8], ptr getelementptr ([11 x [8 x i8]], ptr @_QFEt_names, i64 -1, i64 10, i64 0), i64 %111
  %112 = call i1 @_FortranAioOutputAscii(ptr %109, ptr %gep29, i64 8)
  %113 = load i32, ptr %19, align 4, !tbaa !12
  %114 = sext i32 %113 to i64
  %gep30 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %114
  %115 = load double, ptr %gep30, align 8, !tbaa !23
  %116 = call i1 @_FortranAioOutputReal64(ptr %109, double %115)
  %117 = load i32, ptr %19, align 4, !tbaa !12
  %118 = sext i32 %117 to i64
  %gep31 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %118
  %119 = load double, ptr %gep31, align 8, !tbaa !23
  %120 = fmul contract double %119, 1.000000e+02
  %121 = fdiv contract double %120, %.0
  %122 = call i1 @_FortranAioOutputReal64(ptr %109, double %121)
  %123 = call i32 @_FortranAioEndIoStatement(ptr %109)
  %.pr = load i32, ptr %19, align 4, !tbaa !12
  %124 = icmp eq i32 %.pr, 5
  br i1 %124, label %125, label %.thread

125:                                              ; preds = %108
  %126 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 1), align 8, !tbaa !23
  %127 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 2), align 16, !tbaa !23
  %128 = fadd contract double %126, %127
  %129 = load double, ptr getelementptr inbounds ([11 x double], ptr @_QFEtrecs, i64 0, i64 3), align 8, !tbaa !23
  %130 = fadd contract double %128, %129
  %131 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX4cb2ce6ecfb00433a1a961c67d524bde, i64 39, ptr null, i32 6, ptr nonnull @_QQclX41a7c4af207d8d32d64faf6bb4bc44cf, i32 184)
  %132 = call i1 @_FortranAioOutputAscii(ptr %131, ptr nonnull @_QQclX7375622D726873, i64 7)
  %133 = call i1 @_FortranAioOutputReal64(ptr %131, double %130)
  %134 = fmul contract double %130, 1.000000e+02
  %135 = fdiv contract double %134, %.0
  %136 = call i1 @_FortranAioOutputReal64(ptr %131, double %135)
  %137 = call i32 @_FortranAioEndIoStatement(ptr %131)
  %138 = load i32, ptr %19, align 4, !tbaa !12
  %139 = sext i32 %138 to i64
  %gep32 = getelementptr double, ptr getelementptr ([11 x double], ptr @_QFEtrecs, i64 -1, i64 10), i64 %139
  %140 = load double, ptr %gep32, align 8, !tbaa !23
  %141 = fsub contract double %140, %130
  %142 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX4cb2ce6ecfb00433a1a961c67d524bde, i64 39, ptr null, i32 6, ptr nonnull @_QQclX41a7c4af207d8d32d64faf6bb4bc44cf, i32 186)
  %143 = call i1 @_FortranAioOutputAscii(ptr %142, ptr nonnull @_QQclX726573742D726873, i64 8)
  %144 = call i1 @_FortranAioOutputReal64(ptr %142, double %141)
  %145 = fmul contract double %141, 1.000000e+02
  %146 = fdiv contract double %145, %.0
  %147 = call i1 @_FortranAioOutputReal64(ptr %142, double %146)
  %148 = call i32 @_FortranAioEndIoStatement(ptr %142)
  %.pre = load i32, ptr %19, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %105, %105, %125, %108
  %149 = phi i32 [ %107, %105 ], [ %107, %105 ], [ %.pre, %125 ], [ %.pr, %108 ]
  %150 = add i32 %149, 1
  %151 = add nsw i64 %106, -1
  %152 = icmp ugt i64 %106, 1
  br i1 %152, label %105, label %.loopexit34

.loopexit34:                                      ; preds = %.thread, %.loopexit
  ret void
}

declare void @check_timer_flag_(ptr) local_unnamed_addr

declare void @read_input_() local_unnamed_addr

declare void @domain_() local_unnamed_addr

declare void @alloc_space_() local_unnamed_addr

declare void @setcoeff_() local_unnamed_addr

declare void @setbv_() local_unnamed_addr

declare void @setiv_() local_unnamed_addr

declare void @erhs_() local_unnamed_addr

declare void @ssor_(ptr) local_unnamed_addr

declare void @error_() local_unnamed_addr

declare void @pintgr_() local_unnamed_addr

declare void @verify_(ptr, ptr, ptr, ptr, ptr, i64) local_unnamed_addr

declare void @free_space_() local_unnamed_addr

declare void @print_results_(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr

declare double @timer_read_(ptr) local_unnamed_addr

declare ptr @_FortranAioBeginExternalFormattedOutput(ptr, i64, ptr, i32, ptr, i32) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputAscii(ptr, ptr, i64) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputReal64(ptr, double) local_unnamed_addr

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
!5 = !{!"global data/_QMlu_dataEtimeron", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QQmain"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QFEt_names", !6, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMlu_dataEitmax", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMlu_dataEnx0", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"global data/_QMlu_dataEny0", !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"global data/_QMlu_dataEnz0", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"global data/_QMlu_dataEmaxtime", !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"global data/_QFEtrecs", !6, i64 0}
