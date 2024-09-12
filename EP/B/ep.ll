; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX93686fb5f30bba826074b9969f476d62 = comdat any

$_QQclXa936c7ea8e3bfa5126a735e887df4e89 = comdat any

$_QQclX286631352E3029 = comdat any

$_QQclX2E = comdat any

$_QQclX4e4e649b96200f41b28127b1c4f7ba25 = comdat any

$_QQclX1dba85e7a8e5f1ae47438052d22db569 = comdat any

$_QQclXc5c37bc6b99903bb8146235474aa39be = comdat any

$_QQclX4550 = comdat any

$_QQclX42 = comdat any

$_QQclX52616E646F6D206E756D626572732067656E657261746564 = comdat any

$_QQclX332E342E32 = comdat any

$_QQclX3132205365702032303234 = comdat any

$_QQclX286E6F6E6529 = comdat any

$_QQclX2428464329 = comdat any

$_QQclX242846464C41475329 = comdat any

$_QQclX72616E646938 = comdat any

$_QQclX2831782C612C66392E332C272028272C66362E322C2725292729 = comdat any

$_QQclX546F74616C2074696D653A20202020 = comdat any

$_QQclX476175737369616E2070616972733A = comdat any

$_QQclX52616E646F6D206E756D626572733A = comdat any

@_QFEdum = internal global [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00]
@_QMep_dataEq = external global [10 x double]
@_QMep_dataEqq = external global [10 x double]
@_QMep_dataEx = external global [131072 x double]
@_QQclX93686fb5f30bba826074b9969f476d62 = linkonce constant [66 x i8] c"(//,' NAS Parallel Benchmarks (NPB3.4-OMP)', ' - EP Benchmark', /)", comdat
@_QQclXa936c7ea8e3bfa5126a735e887df4e89 = linkonce constant [56 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/EP/ep.f90\00", comdat
@_QQclX286631352E3029 = linkonce constant [7 x i8] c"(f15.0)", comdat
@_QQclX2E = linkonce constant [1 x i8] c".", comdat
@_QQclX4e4e649b96200f41b28127b1c4f7ba25 = linkonce constant [46 x i8] c"(' Number of random numbers generated: ', a15)", comdat
@_QQclX1dba85e7a8e5f1ae47438052d22db569 = linkonce constant [49 x i8] c"(' Number of available threads:        ', 2x,i13)", comdat
@_QQclXc5c37bc6b99903bb8146235474aa39be = linkonce constant [133 x i8] c"('EP Benchmark Results:'//'CPU Time =',f10.3/'N = 2^', i5/'No. Gaussian Pairs =',f15.0/'Sums = ',1p,2d25.15/ 'Counts:'/(i3,0p,f15.0))", comdat
@_QQclX4550 = linkonce local_unnamed_addr constant [2 x i8] c"EP", comdat
@_QQclX42 = linkonce local_unnamed_addr constant [1 x i8] c"B", comdat
@_QQclX52616E646F6D206E756D626572732067656E657261746564 = linkonce local_unnamed_addr constant [24 x i8] c"Random numbers generated", comdat
@_QQclX332E342E32 = linkonce local_unnamed_addr constant [5 x i8] c"3.4.2", comdat
@_QQclX3132205365702032303234 = linkonce local_unnamed_addr constant [11 x i8] c"12 Sep 2024", comdat
@_QQclX286E6F6E6529 = linkonce local_unnamed_addr constant [6 x i8] c"(none)", comdat
@_QQclX2428464329 = linkonce local_unnamed_addr constant [5 x i8] c"$(FC)", comdat
@_QQclX242846464C41475329 = linkonce local_unnamed_addr constant [9 x i8] c"$(FFLAGS)", comdat
@_QQclX72616E646938 = linkonce local_unnamed_addr constant [6 x i8] c"randi8", comdat
@_QQclX2831782C612C66392E332C272028272C66362E322C2725292729 = linkonce constant [26 x i8] c"(1x,a,f9.3,' (',f6.2,'%)')", comdat
@_QQclX546F74616C2074696D653A20202020 = linkonce constant [15 x i8] c"Total time:    ", comdat
@_QQclX476175737369616E2070616972733A = linkonce constant [15 x i8] c"Gaussian pairs:", comdat
@_QQclX52616E646F6D206E756D626572733A = linkonce constant [15 x i8] c"Random numbers:", comdat
@_QQEnvironmentDefaults = local_unnamed_addr constant ptr null
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMep_dataEqq.cache = common global ptr null, align 8
@_QMep_dataEx.cache = common global ptr null, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8

define void @_QQmain() local_unnamed_addr #0 {
omp_parallel:
  %structArg55 = alloca { ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %structArg = alloca { ptr }, align 8
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [6 x i8], align 4
  %4 = alloca [9 x i8], align 4
  %5 = alloca [6 x i8], align 4
  %6 = alloca [6 x i8], align 4
  %7 = alloca [6 x i8], align 4
  %8 = alloca [5 x i8], align 4
  %9 = alloca [6 x i8], align 4
  %10 = alloca [11 x i8], align 4
  %11 = alloca [5 x i8], align 4
  %12 = alloca [24 x i8], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [1 x i8], align 4
  %17 = alloca [2 x i8], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca [1 x i8], align 4
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %omp_global_thread_num12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %32 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num12, ptr nonnull @_QMep_dataEqq, i64 80, ptr nonnull @_QMep_dataEqq.cache)
  %33 = alloca [15 x i8], align 4
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca i32, align 4
  %38 = alloca double, align 8
  %39 = alloca i32, align 4
  %40 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num12, ptr nonnull @_QMep_dataEx, i64 1048576, ptr nonnull @_QMep_dataEx.cache)
  call void @check_timer_flag_(ptr nonnull %37)
  %41 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX93686fb5f30bba826074b9969f476d62, i64 66, ptr null, i32 6, ptr nonnull @_QQclXa936c7ea8e3bfa5126a735e887df4e89, i32 80)
  %42 = call i32 @_FortranAioEndIoStatement(ptr %41)
  %43 = call ptr @_FortranAioBeginInternalFormattedOutput(ptr nonnull %33, i64 15, ptr nonnull @_QQclX286631352E3029, i64 7, ptr null, ptr null, i64 0, ptr nonnull @_QQclXa936c7ea8e3bfa5126a735e887df4e89, i32 81)
  %44 = call i1 @_FortranAioOutputReal64(ptr %43, double 0x41E0000000000000)
  %45 = call i32 @_FortranAioEndIoStatement(ptr %43)
  %46 = getelementptr inbounds i8, ptr %33, i64 14
  %47 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %46, ptr nonnull @_QQclX2E, i64 1, i64 1)
  %48 = icmp eq i32 %47, 0
  %spec.select = select i1 %48, i64 14, i64 15
  %49 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX4e4e649b96200f41b28127b1c4f7ba25, i64 46, ptr null, i32 6, ptr nonnull @_QQclXa936c7ea8e3bfa5126a735e887df4e89, i32 84)
  %50 = call i1 @_FortranAioOutputAscii(ptr %49, ptr nonnull %33, i64 %spec.select)
  %51 = call i32 @_FortranAioEndIoStatement(ptr %49)
  %52 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX1dba85e7a8e5f1ae47438052d22db569, i64 49, ptr null, i32 6, ptr nonnull @_QQclXa936c7ea8e3bfa5126a735e887df4e89, i32 85)
  %53 = call i32 @omp_get_max_threads_()
  %54 = call i1 @_FortranAioOutputInteger32(ptr %52, i32 %53)
  %55 = call i32 @_FortranAioEndIoStatement(ptr %52)
  %56 = call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclXa936c7ea8e3bfa5126a735e887df4e89, i32 86)
  %57 = call i32 @_FortranAioEndIoStatement(ptr %56)
  store i32 16384, ptr %31, align 4, !tbaa !4
  store i32 0, ptr %24, align 4, !tbaa !4
  call void @vranlc_(ptr nonnull %24, ptr nonnull @_QFEdum, ptr nonnull getelementptr inbounds ([3 x double], ptr @_QFEdum, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x double], ptr @_QFEdum, i64 0, i64 2))
  %58 = call contract double @randlc_(ptr nonnull getelementptr inbounds ([3 x double], ptr @_QFEdum, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x double], ptr @_QFEdum, i64 0, i64 2))
  store double %58, ptr @_QFEdum, align 16, !tbaa !8
  store ptr %37, ptr %structArg, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_QQmain..omp_par, ptr nonnull %structArg)
  store i32 1, ptr %23, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %23)
  call void @roi_begin_()
  store double 0x41D2309CE5400000, ptr %36, align 8, !tbaa !4
  store i32 0, ptr %22, align 4, !tbaa !4
  store double 0x41D2309CE5400000, ptr %21, align 8, !tbaa !4
  call void @vranlc_(ptr nonnull %22, ptr nonnull %36, ptr nonnull %21, ptr %40)
  store double 0x41D2309CE5400000, ptr %36, align 8, !tbaa !4
  %59 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %60 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %61 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %62 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %63 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %64 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %65 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %66 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %67 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %68 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %69 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %70 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %71 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %72 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %73 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %74 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %75 = call contract double @randlc_(ptr nonnull %36, ptr nonnull %36)
  %76 = load double, ptr %36, align 8, !tbaa !4
  store double %76, ptr %25, align 8, !tbaa !4
  store double 0.000000e+00, ptr %34, align 8, !tbaa !4
  store double 0.000000e+00, ptr %35, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_QMep_dataEq, i8 0, i64 80, i1 false), !tbaa !11
  store i32 -1, ptr %28, align 4, !tbaa !4
  store ptr %31, ptr %structArg55, align 8
  %gep_57 = getelementptr inbounds i8, ptr %structArg55, i64 8
  store ptr %34, ptr %gep_57, align 8
  %gep_58 = getelementptr inbounds i8, ptr %structArg55, i64 16
  store ptr %35, ptr %gep_58, align 8
  %gep_59 = getelementptr inbounds i8, ptr %structArg55, i64 24
  store ptr %28, ptr %gep_59, align 8
  %gep_60 = getelementptr inbounds i8, ptr %structArg55, i64 32
  store ptr %25, ptr %gep_60, align 8
  %gep_61 = getelementptr inbounds i8, ptr %structArg55, i64 40
  store ptr %37, ptr %gep_61, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_QQmain..omp_par.1, ptr nonnull %structArg55)
  %77 = load double, ptr @_QMep_dataEq, align 8, !tbaa !11
  %78 = fadd contract double %77, 0.000000e+00
  %79 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 1), align 8, !tbaa !11
  %80 = fadd contract double %78, %79
  %81 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 2), align 8, !tbaa !11
  %82 = fadd contract double %80, %81
  %83 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 3), align 8, !tbaa !11
  %84 = fadd contract double %82, %83
  %85 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 4), align 8, !tbaa !11
  %86 = fadd contract double %84, %85
  %87 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 5), align 8, !tbaa !11
  %88 = fadd contract double %86, %87
  %89 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 6), align 8, !tbaa !11
  %90 = fadd contract double %88, %89
  %91 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 7), align 8, !tbaa !11
  %92 = fadd contract double %90, %91
  %93 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 8), align 8, !tbaa !11
  %94 = fadd contract double %92, %93
  %95 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 9), align 8, !tbaa !11
  %96 = fadd contract double %94, %95
  store double %96, ptr %27, align 8, !tbaa !4
  call void @roi_end_()
  store i32 1, ptr %20, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %20)
  store i32 1, ptr %19, align 4, !tbaa !4
  %97 = call contract double @timer_read_(ptr nonnull %19)
  store double %97, ptr %38, align 8, !tbaa !4
  store i32 30, ptr %18, align 4, !tbaa !4
  call void @verify_(ptr nonnull %18, ptr nonnull %34, ptr nonnull %35, ptr nonnull %27, ptr nonnull %39, ptr nonnull %26, i64 1)
  store i32 0, ptr %30, align 4, !tbaa !4
  %98 = fdiv contract double 0x41E0000000000000, %97
  %99 = fdiv contract double %98, 1.000000e+06
  store double %99, ptr %29, align 8, !tbaa !4
  %100 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXc5c37bc6b99903bb8146235474aa39be, i64 133, ptr null, i32 6, ptr nonnull @_QQclXa936c7ea8e3bfa5126a735e887df4e89, i32 226)
  %101 = call i1 @_FortranAioOutputReal64(ptr %100, double %97)
  %102 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 30)
  %103 = load double, ptr %27, align 8, !tbaa !4
  %104 = call i1 @_FortranAioOutputReal64(ptr %100, double %103)
  %105 = load double, ptr %34, align 8, !tbaa !4
  %106 = call i1 @_FortranAioOutputReal64(ptr %100, double %105)
  %107 = load double, ptr %35, align 8, !tbaa !4
  %108 = call i1 @_FortranAioOutputReal64(ptr %100, double %107)
  %109 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 0)
  %110 = load double, ptr @_QMep_dataEq, align 8, !tbaa !11
  %111 = call i1 @_FortranAioOutputReal64(ptr %100, double %110)
  %112 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 1)
  %113 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 1), align 8, !tbaa !11
  %114 = call i1 @_FortranAioOutputReal64(ptr %100, double %113)
  %115 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 2)
  %116 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 2), align 8, !tbaa !11
  %117 = call i1 @_FortranAioOutputReal64(ptr %100, double %116)
  %118 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 3)
  %119 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 3), align 8, !tbaa !11
  %120 = call i1 @_FortranAioOutputReal64(ptr %100, double %119)
  %121 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 4)
  %122 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 4), align 8, !tbaa !11
  %123 = call i1 @_FortranAioOutputReal64(ptr %100, double %122)
  %124 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 5)
  %125 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 5), align 8, !tbaa !11
  %126 = call i1 @_FortranAioOutputReal64(ptr %100, double %125)
  %127 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 6)
  %128 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 6), align 8, !tbaa !11
  %129 = call i1 @_FortranAioOutputReal64(ptr %100, double %128)
  %130 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 7)
  %131 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 7), align 8, !tbaa !11
  %132 = call i1 @_FortranAioOutputReal64(ptr %100, double %131)
  %133 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 8)
  %134 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 8), align 8, !tbaa !11
  %135 = call i1 @_FortranAioOutputReal64(ptr %100, double %134)
  %136 = call i1 @_FortranAioOutputInteger32(ptr %100, i32 9)
  %137 = load double, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 9), align 8, !tbaa !11
  %138 = call i1 @_FortranAioOutputReal64(ptr %100, double %137)
  %139 = call i32 @_FortranAioEndIoStatement(ptr %100)
  %140 = load i16, ptr @_QQclX4550, align 1
  store i16 %140, ptr %17, align 4
  %.unpack = load i8, ptr @_QQclX42, align 1, !tbaa !13
  store i8 %.unpack, ptr %16, align 4, !tbaa !4
  store i32 31, ptr %15, align 4, !tbaa !4
  store i32 0, ptr %14, align 4, !tbaa !4
  store i32 0, ptr %13, align 4, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 1 dereferenceable(24) @_QQclX52616E646F6D206E756D626572732067656E657261746564, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %11, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX332E342E32, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %10, ptr noundef nonnull align 1 dereferenceable(11) @_QQclX3132205365702032303234, i64 11, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %9, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %8, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX2428464329, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %7, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %5, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(9) @_QQclX242846464C41475329, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX72616E646938, i64 6, i1 false)
  call void @print_results_(ptr nonnull %17, ptr nonnull %16, ptr nonnull %15, ptr nonnull %14, ptr nonnull %13, ptr nonnull %30, ptr nonnull %38, ptr nonnull %29, ptr nonnull %12, ptr nonnull %39, ptr nonnull %11, ptr nonnull %10, ptr nonnull %9, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %5, ptr nonnull %4, ptr nonnull %3, i64 2, i64 1, i64 24, i64 5, i64 11, i64 6, i64 5, i64 6, i64 6, i64 6, i64 9, i64 6)
  %141 = load i32, ptr %37, align 4, !tbaa !4
  %.not = icmp eq i32 %141, 0
  br i1 %.not, label %174, label %142

142:                                              ; preds = %omp_parallel
  %143 = load double, ptr %38, align 8, !tbaa !4
  %144 = fcmp contract ugt double %143, 0.000000e+00
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  store double 1.000000e+00, ptr %38, align 8, !tbaa !4
  br label %146

146:                                              ; preds = %145, %142
  store i32 1, ptr %2, align 4, !tbaa !4
  %147 = call contract double @timer_read_(ptr nonnull %2)
  %148 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2831782C612C66392E332C272028272C66362E322C2725292729, i64 26, ptr null, i32 6, ptr nonnull @_QQclXa936c7ea8e3bfa5126a735e887df4e89, i32 241)
  %149 = call i1 @_FortranAioOutputAscii(ptr %148, ptr nonnull @_QQclX546F74616C2074696D653A20202020, i64 15)
  %150 = call i1 @_FortranAioOutputReal64(ptr %148, double %147)
  %151 = fmul contract double %147, 1.000000e+02
  %152 = load double, ptr %38, align 8, !tbaa !4
  %153 = fdiv contract double %151, %152
  %154 = call i1 @_FortranAioOutputReal64(ptr %148, double %153)
  %155 = call i32 @_FortranAioEndIoStatement(ptr %148)
  store i32 2, ptr %1, align 4, !tbaa !4
  %156 = call contract double @timer_read_(ptr nonnull %1)
  %157 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2831782C612C66392E332C272028272C66362E322C2725292729, i64 26, ptr null, i32 6, ptr nonnull @_QQclXa936c7ea8e3bfa5126a735e887df4e89, i32 243)
  %158 = call i1 @_FortranAioOutputAscii(ptr %157, ptr nonnull @_QQclX476175737369616E2070616972733A, i64 15)
  %159 = call i1 @_FortranAioOutputReal64(ptr %157, double %156)
  %160 = fmul contract double %156, 1.000000e+02
  %161 = load double, ptr %38, align 8, !tbaa !4
  %162 = fdiv contract double %160, %161
  %163 = call i1 @_FortranAioOutputReal64(ptr %157, double %162)
  %164 = call i32 @_FortranAioEndIoStatement(ptr %157)
  store i32 3, ptr %0, align 4, !tbaa !4
  %165 = call contract double @timer_read_(ptr nonnull %0)
  %166 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2831782C612C66392E332C272028272C66362E322C2725292729, i64 26, ptr null, i32 6, ptr nonnull @_QQclXa936c7ea8e3bfa5126a735e887df4e89, i32 245)
  %167 = call i1 @_FortranAioOutputAscii(ptr %166, ptr nonnull @_QQclX52616E646F6D206E756D626572733A, i64 15)
  %168 = call i1 @_FortranAioOutputReal64(ptr %166, double %165)
  %169 = fmul contract double %165, 1.000000e+02
  %170 = load double, ptr %38, align 8, !tbaa !4
  %171 = fdiv contract double %169, %170
  %172 = call i1 @_FortranAioOutputReal64(ptr %166, double %171)
  %173 = call i32 @_FortranAioEndIoStatement(ptr %166)
  br label %174

174:                                              ; preds = %146, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @_QQmain..omp_par.1(ptr noalias nocapture readnone %tid.addr13, ptr noalias nocapture readnone %zero.addr14, ptr nocapture readonly %0) #1 {
omp.par.entry15:
  %loadgep_ = load ptr, ptr %0, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 8
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %gep_3 = getelementptr i8, ptr %0, i64 16
  %loadgep_4 = load ptr, ptr %gep_3, align 8
  %gep_5 = getelementptr i8, ptr %0, i64 24
  %loadgep_6 = load ptr, ptr %gep_5, align 8
  %gep_7 = getelementptr i8, ptr %0, i64 32
  %loadgep_8 = load ptr, ptr %gep_7, align 8
  %gep_9 = getelementptr i8, ptr %0, i64 40
  %loadgep_10 = load ptr, ptr %gep_9, align 8
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %2, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %red.array = alloca [2 x ptr], align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %omp_global_thread_num52 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %9 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num52, ptr nonnull @_QMep_dataEqq, i64 80, ptr nonnull @_QMep_dataEqq.cache)
  %10 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num52, ptr nonnull @_QMep_dataEx, i64 1048576, ptr nonnull @_QMep_dataEx.cache)
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, i8 0, i64 80, i1 false), !tbaa !4
  %13 = load i32, ptr %loadgep_, align 4, !tbaa !4
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  store i32 0, ptr %p.lowerbound, align 4
  %14 = add nsw i32 %omp_loop.tripcount, -1
  store i32 %14, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num52, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %15 = load i32, ptr %p.lowerbound, align 4
  %16 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %16, %15
  %omp_loop.cmp47.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp47.not, label %omp_loop.exit, label %omp_loop.body.lr.ph

omp_loop.body.lr.ph:                              ; preds = %omp.par.entry15
  %17 = add i32 %15, 1
  %invariant.gep = getelementptr i8, ptr %10, i64 -8
  %invariant.gep59 = getelementptr i8, ptr %10, i64 -16
  br label %omp_loop.body

omp_loop.exit:                                    ; preds = %omp_loop.inc, %omp.par.entry15
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num52)
  %18 = load double, ptr %9, align 8, !tbaa !4
  %.atomic.load = load atomic i64, ptr @_QMep_dataEq monotonic, align 8
  br label %.atomic.cont

reduce.switch.nonatomic:                          ; preds = %.atomic.exit.9
  %red.value.0 = load double, ptr %loadgep_2, align 8
  %red.private.value.0 = load double, ptr %1, align 8
  %19 = fadd contract double %red.value.0, %red.private.value.0
  store double %19, ptr %loadgep_2, align 8
  %red.value.1 = load double, ptr %loadgep_4, align 8
  %red.private.value.1 = load double, ptr %2, align 8
  %20 = fadd contract double %red.value.1, %red.private.value.1
  store double %20, ptr %loadgep_4, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num52, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %omp.par.outlined.exit54.exitStub

.atomic.cont:                                     ; preds = %.atomic.cont, %omp_loop.exit
  %21 = phi i64 [ %.atomic.load, %omp_loop.exit ], [ %25, %.atomic.cont ]
  %.atomic.fltCast = bitcast i64 %21 to double
  %22 = fadd contract double %18, %.atomic.fltCast
  %23 = bitcast double %22 to i64
  %24 = cmpxchg ptr @_QMep_dataEq, i64 %21, i64 %23 monotonic monotonic, align 8
  %25 = extractvalue { i64, i1 } %24, 0
  %26 = extractvalue { i64, i1 } %24, 1
  br i1 %26, label %.atomic.exit, label %.atomic.cont

.atomic.exit:                                     ; preds = %.atomic.cont
  %27 = getelementptr i8, ptr %9, i64 8
  %28 = load double, ptr %27, align 8, !tbaa !4
  %.atomic.load.1 = load atomic i64, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 1) monotonic, align 8
  br label %.atomic.cont.1

.atomic.cont.1:                                   ; preds = %.atomic.cont.1, %.atomic.exit
  %29 = phi i64 [ %.atomic.load.1, %.atomic.exit ], [ %33, %.atomic.cont.1 ]
  %.atomic.fltCast.1 = bitcast i64 %29 to double
  %30 = fadd contract double %28, %.atomic.fltCast.1
  %31 = bitcast double %30 to i64
  %32 = cmpxchg ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 1), i64 %29, i64 %31 monotonic monotonic, align 8
  %33 = extractvalue { i64, i1 } %32, 0
  %34 = extractvalue { i64, i1 } %32, 1
  br i1 %34, label %.atomic.exit.1, label %.atomic.cont.1

.atomic.exit.1:                                   ; preds = %.atomic.cont.1
  %35 = getelementptr i8, ptr %9, i64 16
  %36 = load double, ptr %35, align 8, !tbaa !4
  %.atomic.load.2 = load atomic i64, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 2) monotonic, align 8
  br label %.atomic.cont.2

.atomic.cont.2:                                   ; preds = %.atomic.cont.2, %.atomic.exit.1
  %37 = phi i64 [ %.atomic.load.2, %.atomic.exit.1 ], [ %41, %.atomic.cont.2 ]
  %.atomic.fltCast.2 = bitcast i64 %37 to double
  %38 = fadd contract double %36, %.atomic.fltCast.2
  %39 = bitcast double %38 to i64
  %40 = cmpxchg ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 2), i64 %37, i64 %39 monotonic monotonic, align 8
  %41 = extractvalue { i64, i1 } %40, 0
  %42 = extractvalue { i64, i1 } %40, 1
  br i1 %42, label %.atomic.exit.2, label %.atomic.cont.2

.atomic.exit.2:                                   ; preds = %.atomic.cont.2
  %43 = getelementptr i8, ptr %9, i64 24
  %44 = load double, ptr %43, align 8, !tbaa !4
  %.atomic.load.3 = load atomic i64, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 3) monotonic, align 8
  br label %.atomic.cont.3

.atomic.cont.3:                                   ; preds = %.atomic.cont.3, %.atomic.exit.2
  %45 = phi i64 [ %.atomic.load.3, %.atomic.exit.2 ], [ %49, %.atomic.cont.3 ]
  %.atomic.fltCast.3 = bitcast i64 %45 to double
  %46 = fadd contract double %44, %.atomic.fltCast.3
  %47 = bitcast double %46 to i64
  %48 = cmpxchg ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 3), i64 %45, i64 %47 monotonic monotonic, align 8
  %49 = extractvalue { i64, i1 } %48, 0
  %50 = extractvalue { i64, i1 } %48, 1
  br i1 %50, label %.atomic.exit.3, label %.atomic.cont.3

.atomic.exit.3:                                   ; preds = %.atomic.cont.3
  %51 = getelementptr i8, ptr %9, i64 32
  %52 = load double, ptr %51, align 8, !tbaa !4
  %.atomic.load.4 = load atomic i64, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 4) monotonic, align 8
  br label %.atomic.cont.4

.atomic.cont.4:                                   ; preds = %.atomic.cont.4, %.atomic.exit.3
  %53 = phi i64 [ %.atomic.load.4, %.atomic.exit.3 ], [ %57, %.atomic.cont.4 ]
  %.atomic.fltCast.4 = bitcast i64 %53 to double
  %54 = fadd contract double %52, %.atomic.fltCast.4
  %55 = bitcast double %54 to i64
  %56 = cmpxchg ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 4), i64 %53, i64 %55 monotonic monotonic, align 8
  %57 = extractvalue { i64, i1 } %56, 0
  %58 = extractvalue { i64, i1 } %56, 1
  br i1 %58, label %.atomic.exit.4, label %.atomic.cont.4

.atomic.exit.4:                                   ; preds = %.atomic.cont.4
  %59 = getelementptr i8, ptr %9, i64 40
  %60 = load double, ptr %59, align 8, !tbaa !4
  %.atomic.load.5 = load atomic i64, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 5) monotonic, align 8
  br label %.atomic.cont.5

.atomic.cont.5:                                   ; preds = %.atomic.cont.5, %.atomic.exit.4
  %61 = phi i64 [ %.atomic.load.5, %.atomic.exit.4 ], [ %65, %.atomic.cont.5 ]
  %.atomic.fltCast.5 = bitcast i64 %61 to double
  %62 = fadd contract double %60, %.atomic.fltCast.5
  %63 = bitcast double %62 to i64
  %64 = cmpxchg ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 5), i64 %61, i64 %63 monotonic monotonic, align 8
  %65 = extractvalue { i64, i1 } %64, 0
  %66 = extractvalue { i64, i1 } %64, 1
  br i1 %66, label %.atomic.exit.5, label %.atomic.cont.5

.atomic.exit.5:                                   ; preds = %.atomic.cont.5
  %67 = getelementptr i8, ptr %9, i64 48
  %68 = load double, ptr %67, align 8, !tbaa !4
  %.atomic.load.6 = load atomic i64, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 6) monotonic, align 8
  br label %.atomic.cont.6

.atomic.cont.6:                                   ; preds = %.atomic.cont.6, %.atomic.exit.5
  %69 = phi i64 [ %.atomic.load.6, %.atomic.exit.5 ], [ %73, %.atomic.cont.6 ]
  %.atomic.fltCast.6 = bitcast i64 %69 to double
  %70 = fadd contract double %68, %.atomic.fltCast.6
  %71 = bitcast double %70 to i64
  %72 = cmpxchg ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 6), i64 %69, i64 %71 monotonic monotonic, align 8
  %73 = extractvalue { i64, i1 } %72, 0
  %74 = extractvalue { i64, i1 } %72, 1
  br i1 %74, label %.atomic.exit.6, label %.atomic.cont.6

.atomic.exit.6:                                   ; preds = %.atomic.cont.6
  %75 = getelementptr i8, ptr %9, i64 56
  %76 = load double, ptr %75, align 8, !tbaa !4
  %.atomic.load.7 = load atomic i64, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 7) monotonic, align 8
  br label %.atomic.cont.7

.atomic.cont.7:                                   ; preds = %.atomic.cont.7, %.atomic.exit.6
  %77 = phi i64 [ %.atomic.load.7, %.atomic.exit.6 ], [ %81, %.atomic.cont.7 ]
  %.atomic.fltCast.7 = bitcast i64 %77 to double
  %78 = fadd contract double %76, %.atomic.fltCast.7
  %79 = bitcast double %78 to i64
  %80 = cmpxchg ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 7), i64 %77, i64 %79 monotonic monotonic, align 8
  %81 = extractvalue { i64, i1 } %80, 0
  %82 = extractvalue { i64, i1 } %80, 1
  br i1 %82, label %.atomic.exit.7, label %.atomic.cont.7

.atomic.exit.7:                                   ; preds = %.atomic.cont.7
  %83 = getelementptr i8, ptr %9, i64 64
  %84 = load double, ptr %83, align 8, !tbaa !4
  %.atomic.load.8 = load atomic i64, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 8) monotonic, align 8
  br label %.atomic.cont.8

.atomic.cont.8:                                   ; preds = %.atomic.cont.8, %.atomic.exit.7
  %85 = phi i64 [ %.atomic.load.8, %.atomic.exit.7 ], [ %89, %.atomic.cont.8 ]
  %.atomic.fltCast.8 = bitcast i64 %85 to double
  %86 = fadd contract double %84, %.atomic.fltCast.8
  %87 = bitcast double %86 to i64
  %88 = cmpxchg ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 8), i64 %85, i64 %87 monotonic monotonic, align 8
  %89 = extractvalue { i64, i1 } %88, 0
  %90 = extractvalue { i64, i1 } %88, 1
  br i1 %90, label %.atomic.exit.8, label %.atomic.cont.8

.atomic.exit.8:                                   ; preds = %.atomic.cont.8
  %91 = getelementptr i8, ptr %9, i64 72
  %92 = load double, ptr %91, align 8, !tbaa !4
  %.atomic.load.9 = load atomic i64, ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 9) monotonic, align 8
  br label %.atomic.cont.9

.atomic.cont.9:                                   ; preds = %.atomic.cont.9, %.atomic.exit.8
  %93 = phi i64 [ %.atomic.load.9, %.atomic.exit.8 ], [ %97, %.atomic.cont.9 ]
  %.atomic.fltCast.9 = bitcast i64 %93 to double
  %94 = fadd contract double %92, %.atomic.fltCast.9
  %95 = bitcast double %94 to i64
  %96 = cmpxchg ptr getelementptr inbounds ([10 x double], ptr @_QMep_dataEq, i64 0, i64 9), i64 %93, i64 %95 monotonic monotonic, align 8
  %97 = extractvalue { i64, i1 } %96, 0
  %98 = extractvalue { i64, i1 } %96, 1
  br i1 %98, label %.atomic.exit.9, label %.atomic.cont.9

.atomic.exit.9:                                   ; preds = %.atomic.cont.9
  store ptr %1, ptr %red.array, align 8
  %red.array.elem.1 = getelementptr inbounds i8, ptr %red.array, i64 8
  store ptr %2, ptr %red.array.elem.1, align 8
  %reduce = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num52, i32 2, i64 16, ptr nonnull %red.array, ptr nonnull @.omp.reduction.func, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce, 1
  br i1 %cond, label %reduce.switch.nonatomic, label %omp.par.outlined.exit54.exitStub

omp_loop.body:                                    ; preds = %omp_loop.body.lr.ph, %omp_loop.inc
  %99 = phi double [ 0.000000e+00, %omp_loop.body.lr.ph ], [ %121, %omp_loop.inc ]
  %100 = phi double [ 0.000000e+00, %omp_loop.body.lr.ph ], [ %122, %omp_loop.inc ]
  %omp_loop.iv48 = phi i32 [ 0, %omp_loop.body.lr.ph ], [ %omp_loop.next, %omp_loop.inc ]
  %101 = load i32, ptr %loadgep_6, align 4, !tbaa !4
  %102 = add i32 %17, %omp_loop.iv48
  %103 = add i32 %102, %101
  store double 0x41B033C4D7000000, ptr %11, align 8, !tbaa !4
  %104 = load double, ptr %loadgep_8, align 8, !tbaa !4
  store double %104, ptr %12, align 8, !tbaa !4
  %105 = load i32, ptr %loadgep_10, align 4, !tbaa !4
  %.not = icmp eq i32 %105, 0
  br i1 %.not, label %omp.wsloop.region36.preheader, label %omp.wsloop.region33

omp.wsloop.region36.preheader:                    ; preds = %omp.wsloop.region33, %omp_loop.body
  br label %omp.wsloop.region36

omp.wsloop.region40:                              ; preds = %omp.wsloop.region38, %omp.wsloop.region39
  store i32 131072, ptr %7, align 4, !tbaa !4
  store double 0x41D2309CE5400000, ptr %6, align 8, !tbaa !4
  call void @vranlc_(ptr nonnull %7, ptr nonnull %11, ptr nonnull %6, ptr %10) #2
  %106 = load i32, ptr %loadgep_10, align 4, !tbaa !4
  %.not42 = icmp eq i32 %106, 0
  br i1 %.not42, label %omp.wsloop.region45.preheader, label %omp.wsloop.region42

omp.wsloop.region42:                              ; preds = %omp.wsloop.region40
  store i32 3, ptr %5, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %5) #2
  %.pr = load i32, ptr %loadgep_10, align 4, !tbaa !4
  %.not43 = icmp eq i32 %.pr, 0
  br i1 %.not43, label %omp.wsloop.region45.preheader, label %omp.wsloop.region43

omp.wsloop.region48:                              ; preds = %omp.wsloop.region47
  %107 = load i32, ptr %loadgep_10, align 4, !tbaa !4
  %.not44 = icmp eq i32 %107, 0
  br i1 %.not44, label %omp_loop.inc, label %omp.wsloop.region49

omp_loop.inc:                                     ; preds = %omp.wsloop.region49, %omp.wsloop.region48
  %omp_loop.next = add nuw i32 %omp_loop.iv48, 1
  %exitcond52.not = icmp eq i32 %omp_loop.iv48, %reass.sub
  br i1 %exitcond52.not, label %omp_loop.exit, label %omp_loop.body

omp.wsloop.region49:                              ; preds = %omp.wsloop.region48
  store i32 2, ptr %3, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %3) #2
  br label %omp_loop.inc

omp.wsloop.region45:                              ; preds = %omp.wsloop.region45.preheader, %omp.wsloop.region47
  %108 = phi double [ %121, %omp.wsloop.region47 ], [ %99, %omp.wsloop.region45.preheader ]
  %109 = phi double [ %122, %omp.wsloop.region47 ], [ %100, %omp.wsloop.region45.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %omp.wsloop.region47 ], [ 1, %omp.wsloop.region45.preheader ]
  %110 = shl nuw i64 %indvars.iv, 1
  %gep60 = getelementptr double, ptr %invariant.gep59, i64 %110
  %111 = load double, ptr %gep60, align 8, !tbaa !4
  %112 = fmul contract double %111, 2.000000e+00
  %113 = fadd contract double %112, -1.000000e+00
  %gep = getelementptr double, ptr %invariant.gep, i64 %110
  %114 = load double, ptr %gep, align 8, !tbaa !4
  %115 = fmul contract double %114, 2.000000e+00
  %116 = fadd contract double %115, -1.000000e+00
  %117 = fmul double %113, %113
  %118 = fmul double %116, %116
  %119 = fadd contract double %117, %118
  store double %119, ptr %11, align 8, !tbaa !4
  %120 = fcmp contract ugt double %119, 1.000000e+00
  br i1 %120, label %omp.wsloop.region47, label %omp.wsloop.region46

omp.wsloop.region47:                              ; preds = %omp.wsloop.region46, %omp.wsloop.region45
  %121 = phi double [ %139, %omp.wsloop.region46 ], [ %108, %omp.wsloop.region45 ]
  %122 = phi double [ %138, %omp.wsloop.region46 ], [ %109, %omp.wsloop.region45 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65537
  br i1 %exitcond.not, label %omp.wsloop.region48, label %omp.wsloop.region45

omp.wsloop.region46:                              ; preds = %omp.wsloop.region45
  %123 = call contract double @llvm.log.f64(double %119)
  %124 = fmul contract double %123, -2.000000e+00
  %125 = fdiv contract double %124, %119
  %126 = call contract double @llvm.sqrt.f64(double %125)
  store double %126, ptr %12, align 8, !tbaa !4
  %127 = fmul contract double %113, %126
  %128 = call contract double @llvm.fabs.f64(double %127)
  %129 = fmul contract double %116, %126
  %130 = call contract double @llvm.fabs.f64(double %129)
  %131 = fcmp contract ogt double %128, %130
  %132 = select i1 %131, double %128, double %130
  %133 = fptosi double %132 to i32
  %134 = sext i32 %133 to i64
  %135 = getelementptr double, ptr %9, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !4
  %137 = fadd contract double %136, 1.000000e+00
  store double %137, ptr %135, align 8, !tbaa !4
  %138 = fadd contract double %128, %109
  store double %138, ptr %1, align 8, !tbaa !15
  %139 = fadd contract double %130, %108
  store double %139, ptr %2, align 8, !tbaa !18
  br label %omp.wsloop.region47

omp.wsloop.region43:                              ; preds = %omp.wsloop.region42
  store i32 2, ptr %4, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %4) #2
  br label %omp.wsloop.region45.preheader

omp.wsloop.region45.preheader:                    ; preds = %omp.wsloop.region40, %omp.wsloop.region42, %omp.wsloop.region43
  br label %omp.wsloop.region45

omp.wsloop.region36:                              ; preds = %omp.wsloop.region36.preheader, %omp.wsloop.region39
  %.046 = phi i32 [ %144, %omp.wsloop.region39 ], [ 100, %omp.wsloop.region36.preheader ]
  %.03545 = phi i32 [ %140, %omp.wsloop.region39 ], [ %103, %omp.wsloop.region36.preheader ]
  %140 = sdiv i32 %.03545, 2
  %141 = shl nsw i32 %140, 1
  %.not41 = icmp eq i32 %141, %.03545
  br i1 %.not41, label %omp.wsloop.region38, label %omp.wsloop.region37

omp.wsloop.region38:                              ; preds = %omp.wsloop.region37, %omp.wsloop.region36
  %.035.off = add i32 %.03545, 1
  %142 = icmp ult i32 %.035.off, 3
  br i1 %142, label %omp.wsloop.region40, label %omp.wsloop.region39

omp.wsloop.region39:                              ; preds = %omp.wsloop.region38
  %143 = call contract double @randlc_(ptr nonnull %12, ptr nonnull %12) #2
  %144 = add nsw i32 %.046, -1
  %145 = icmp ugt i32 %.046, 1
  br i1 %145, label %omp.wsloop.region36, label %omp.wsloop.region40

omp.wsloop.region37:                              ; preds = %omp.wsloop.region36
  %146 = call contract double @randlc_(ptr nonnull %11, ptr nonnull %12) #2
  br label %omp.wsloop.region38

omp.wsloop.region33:                              ; preds = %omp_loop.body
  store i32 3, ptr %8, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %8) #2
  br label %omp.wsloop.region36.preheader

omp.par.outlined.exit54.exitStub:                 ; preds = %.atomic.exit.9, %reduce.switch.nonatomic
  ret void
}

; Function Attrs: nounwind
define internal void @_QQmain..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_ = load ptr, ptr %0, align 8
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %omp_global_thread_num11 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num11, ptr nonnull @_QMep_dataEx, i64 1048576, ptr nonnull @_QMep_dataEx.cache)
  %invariant.gep = getelementptr i8, ptr %4, i64 -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %omp.par.entry
  %index = phi i64 [ 0, %omp.par.entry ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %5 = getelementptr double, ptr %invariant.gep, i64 %offset.idx
  %6 = getelementptr i8, ptr %5, i64 16
  store <2 x double> <double 0xD47D42AEA2879F2E, double 0xD47D42AEA2879F2E>, ptr %5, align 8, !tbaa !4
  store <2 x double> <double 0xD47D42AEA2879F2E, double 0xD47D42AEA2879F2E>, ptr %6, align 8, !tbaa !4
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, 131072
  br i1 %7, label %omp.par.region6, label %vector.body, !llvm.loop !20

omp.par.region6:                                  ; preds = %vector.body
  store i32 1, ptr %3, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %3) #2
  %8 = load i32, ptr %loadgep_, align 4, !tbaa !4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %omp.par.outlined.exit.exitStub, label %omp.par.region8

omp.par.region8:                                  ; preds = %omp.par.region6
  store i32 2, ptr %2, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %2) #2
  %.pr = load i32, ptr %loadgep_, align 4, !tbaa !4
  %.not2 = icmp eq i32 %.pr, 0
  br i1 %.not2, label %omp.par.outlined.exit.exitStub, label %omp.par.region9

omp.par.region9:                                  ; preds = %omp.par.region8
  store i32 3, ptr %1, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %1) #2
  br label %omp.par.outlined.exit.exitStub

omp.par.outlined.exit.exitStub:                   ; preds = %omp.par.region6, %omp.par.region8, %omp.par.region9
  ret void
}

declare void @check_timer_flag_(ptr) local_unnamed_addr

declare ptr @_FortranAioBeginExternalFormattedOutput(ptr, i64, ptr, i32, ptr, i32) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare ptr @_FortranAioBeginInternalFormattedOutput(ptr, i64, ptr, i64, ptr, ptr, i64, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputReal64(ptr, double) local_unnamed_addr

declare i32 @_FortranACharacterCompareScalar1(ptr, ptr, i64, i64) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputAscii(ptr, ptr, i64) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputInteger32(ptr, i32) local_unnamed_addr

declare i32 @omp_get_max_threads_() local_unnamed_addr

declare ptr @_FortranAioBeginExternalListOutput(i32, ptr, i32) local_unnamed_addr

declare void @vranlc_(ptr, ptr, ptr, ptr) local_unnamed_addr

declare double @randlc_(ptr, ptr) local_unnamed_addr

declare void @timer_clear_(ptr) local_unnamed_addr

declare void @timer_start_(ptr) local_unnamed_addr

declare void @roi_begin_() local_unnamed_addr

declare void @timer_stop_(ptr) local_unnamed_addr

declare void @roi_end_() local_unnamed_addr

declare double @timer_read_(ptr) local_unnamed_addr

declare void @verify_(ptr, ptr, ptr, ptr, ptr, ptr, i64) local_unnamed_addr

declare void @print_results_(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func(ptr nocapture readonly %0, ptr nocapture readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = load double, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = load double, ptr %12, align 8
  %14 = fadd contract double %10, %13
  store double %14, ptr %9, align 8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(ptr, i32, ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !23 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #5 = { convergent nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"any data access", !6, i64 0}
!6 = !{!"any access", !7, i64 0}
!7 = !{!"Flang function root _QQmain"}
!8 = !{!9, !9, i64 0}
!9 = !{!"global data/_QFEdum", !10, i64 0}
!10 = !{!"global data", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMep_dataEq", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QQclX42", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"dummy arg data/_QFEsx", !17, i64 0}
!17 = !{!"dummy arg data", !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"dummy arg data/_QFEsy", !17, i64 0}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!24}
!24 = !{i64 2, i64 -1, i64 -1, i1 true}
