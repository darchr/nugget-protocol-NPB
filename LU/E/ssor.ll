; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX28272054696D65207374657020272C20693429 = comdat any

$_QQclX8a037d8700b237ddc2b4eb6219084d8c = comdat any

$_QQclXf29500b12f6bbc4f2324e21aad40d9c3 = comdat any

@_QMlu_dataEa = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEb = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEc = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEd = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEdt = external local_unnamed_addr global double
@_QMlu_dataEflux = external global [1020 x [5 x double]]
@_QMlu_dataEiend = external global i32
@_QMlu_dataEinorm = external local_unnamed_addr global i32
@_QMlu_dataEist = external global i32
@_QMlu_dataEitmax = external local_unnamed_addr global i32
@_QMlu_dataEjend = external global i32
@_QMlu_dataEjst = external global i32
@_QMlu_dataEmaxtime = external local_unnamed_addr global double
@_QMlu_dataEnx = external global i32
@_QMlu_dataEnx0 = external global i32
@_QMlu_dataEny = external global i32
@_QMlu_dataEny0 = external global i32
@_QMlu_dataEnz = external global i32
@_QMlu_dataEnz0 = external global i32
@_QMlu_dataEomega = external global double
@_QMlu_dataErsd = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMlu_dataErsdnm = external global [5 x double]
@_QMlu_dataEtimeron = external local_unnamed_addr global i32
@_QMlu_dataEtolrsd = external local_unnamed_addr global [5 x double]
@_QMlu_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QQclX28272054696D65207374657020272C20693429 = linkonce constant [19 x i8] c"(' Time step ', i4)", comdat
@_QQclX8a037d8700b237ddc2b4eb6219084d8c = linkonce constant [58 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/LU/ssor.f90\00", comdat
@_QQclXf29500b12f6bbc4f2324e21aad40d9c3 = linkonce constant [66 x i8] c"(1x/1x,'convergence was achieved after ',i4, ' pseudo-time steps')", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 22, ptr @0 }, align 8

define void @ssor_(ptr nocapture readonly %0) local_unnamed_addr #0 {
  %structArg = alloca { ptr }, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %omp_global_thread_num5 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %18 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEa, i64 204000, ptr nonnull @_QMlu_dataEa.cache)
  %19 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEb, i64 204000, ptr nonnull @_QMlu_dataEb.cache)
  %20 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEc, i64 204000, ptr nonnull @_QMlu_dataEc.cache)
  %21 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEd, i64 204000, ptr nonnull @_QMlu_dataEd.cache)
  %22 = alloca [5 x double], align 8
  %23 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEflux, i64 40800, ptr nonnull @_QMlu_dataEflux.cache)
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = load double, ptr @_QMlu_dataEomega, align 8, !tbaa !4
  %27 = fsub contract double 2.000000e+00, %26
  %28 = fmul contract double %26, %27
  %29 = fdiv contract double 1.000000e+00, %28
  store double %29, ptr %25, align 8, !tbaa !10
  store i32 1, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %30 = load i32, ptr %24, align 4, !tbaa !10
  %31 = add i32 %30, 1
  store i32 %31, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %32 = load i32, ptr %24, align 4, !tbaa !10
  %33 = add i32 %32, 1
  store i32 %33, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %34 = load i32, ptr %24, align 4, !tbaa !10
  %35 = add i32 %34, 1
  store i32 %35, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %36 = load i32, ptr %24, align 4, !tbaa !10
  %37 = add i32 %36, 1
  store i32 %37, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %38 = load i32, ptr %24, align 4, !tbaa !10
  %39 = add i32 %38, 1
  store i32 %39, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %40 = load i32, ptr %24, align 4, !tbaa !10
  %41 = add i32 %40, 1
  store i32 %41, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %42 = load i32, ptr %24, align 4, !tbaa !10
  %43 = add i32 %42, 1
  store i32 %43, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %44 = load i32, ptr %24, align 4, !tbaa !10
  %45 = add i32 %44, 1
  store i32 %45, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %46 = load i32, ptr %24, align 4, !tbaa !10
  %47 = add i32 %46, 1
  store i32 %47, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %48 = load i32, ptr %24, align 4, !tbaa !10
  %49 = add i32 %48, 1
  store i32 %49, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %50 = load i32, ptr %24, align 4, !tbaa !10
  %51 = add i32 %50, 1
  store i32 %51, ptr %24, align 4, !tbaa !10
  call void @rhs_()
  store i32 1020, ptr %17, align 4, !tbaa !10
  store i32 1020, ptr %16, align 4, !tbaa !10
  store i32 1020, ptr %15, align 4, !tbaa !10
  %.unpack = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @l2norm_(ptr nonnull %17, ptr nonnull %16, ptr nonnull %15, ptr nonnull @_QMlu_dataEnx0, ptr nonnull @_QMlu_dataEny0, ptr nonnull @_QMlu_dataEnz0, ptr nonnull @_QMlu_dataEist, ptr nonnull @_QMlu_dataEiend, ptr nonnull @_QMlu_dataEjst, ptr nonnull @_QMlu_dataEjend, ptr %.unpack, ptr nonnull @_QMlu_dataErsdnm)
  store i32 1, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %52 = load i32, ptr %24, align 4, !tbaa !10
  %53 = add i32 %52, 1
  store i32 %53, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %54 = load i32, ptr %24, align 4, !tbaa !10
  %55 = add i32 %54, 1
  store i32 %55, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %56 = load i32, ptr %24, align 4, !tbaa !10
  %57 = add i32 %56, 1
  store i32 %57, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %58 = load i32, ptr %24, align 4, !tbaa !10
  %59 = add i32 %58, 1
  store i32 %59, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %60 = load i32, ptr %24, align 4, !tbaa !10
  %61 = add i32 %60, 1
  store i32 %61, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %62 = load i32, ptr %24, align 4, !tbaa !10
  %63 = add i32 %62, 1
  store i32 %63, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %64 = load i32, ptr %24, align 4, !tbaa !10
  %65 = add i32 %64, 1
  store i32 %65, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %66 = load i32, ptr %24, align 4, !tbaa !10
  %67 = add i32 %66, 1
  store i32 %67, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %68 = load i32, ptr %24, align 4, !tbaa !10
  %69 = add i32 %68, 1
  store i32 %69, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %70 = load i32, ptr %24, align 4, !tbaa !10
  %71 = add i32 %70, 1
  store i32 %71, ptr %24, align 4, !tbaa !10
  call void @timer_clear_(ptr nonnull %24)
  %72 = load i32, ptr %24, align 4, !tbaa !10
  %73 = add i32 %72, 1
  store i32 %73, ptr %24, align 4, !tbaa !10
  store i32 1, ptr %14, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %14)
  %74 = load i32, ptr %0, align 4, !tbaa !13
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %1
  call void @roi_begin_()
  %.pre = load i32, ptr %0, align 4, !tbaa !13
  br label %77

77:                                               ; preds = %76, %1
  %78 = phi i32 [ %.pre, %76 ], [ %74, %1 ]
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %77
  %.not317 = icmp eq i32 %78, 1
  br i1 %.not317, label %omp_parallel.peel, label %80

80:                                               ; preds = %.lr.ph.preheader
  %81 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272054696D65207374657020272C20693429, i64 19, ptr null, i32 6, ptr nonnull @_QQclX8a037d8700b237ddc2b4eb6219084d8c, i32 70)
  %82 = call i1 @_FortranAioOutputInteger32(ptr %81, i32 1)
  %83 = call i32 @_FortranAioEndIoStatement(ptr %81)
  br label %omp_parallel.peel

omp_parallel.peel:                                ; preds = %80, %.lr.ph.preheader
  store ptr %25, ptr %structArg, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @ssor_..omp_par, ptr nonnull %structArg)
  %84 = load i32, ptr @_QMlu_dataEinorm, align 4, !tbaa !16
  %85 = srem i32 1, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %omp_parallel.peel
  %88 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not.peel = icmp eq i32 %88, 0
  br i1 %.not.peel, label %90, label %89

89:                                               ; preds = %87
  store i32 11, ptr %13, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %13)
  br label %90

90:                                               ; preds = %89, %87
  store i32 1020, ptr %12, align 4, !tbaa !10
  store i32 1020, ptr %11, align 4, !tbaa !10
  store i32 1020, ptr %10, align 4, !tbaa !10
  %.unpack258.peel = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @l2norm_(ptr nonnull %12, ptr nonnull %11, ptr nonnull %10, ptr nonnull @_QMlu_dataEnx0, ptr nonnull @_QMlu_dataEny0, ptr nonnull @_QMlu_dataEnz0, ptr nonnull @_QMlu_dataEist, ptr nonnull @_QMlu_dataEiend, ptr nonnull @_QMlu_dataEjst, ptr nonnull @_QMlu_dataEjend, ptr %.unpack258.peel, ptr nonnull %22)
  %91 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not282.peel = icmp eq i32 %91, 0
  br i1 %.not282.peel, label %93, label %92

92:                                               ; preds = %90
  store i32 11, ptr %9, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %9)
  br label %93

93:                                               ; preds = %92, %90, %omp_parallel.peel
  call void @rhs_()
  %94 = load i32, ptr @_QMlu_dataEinorm, align 4, !tbaa !16
  %95 = srem i32 1, %94
  %96 = icmp eq i32 %95, 0
  %97 = load i32, ptr @_QMlu_dataEitmax, align 4, !tbaa !20
  %98 = icmp eq i32 %97, 1
  %99 = or i1 %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not283.peel = icmp eq i32 %101, 0
  br i1 %.not283.peel, label %103, label %102

102:                                              ; preds = %100
  store i32 11, ptr %8, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %8)
  br label %103

103:                                              ; preds = %102, %100
  store i32 1020, ptr %7, align 4, !tbaa !10
  store i32 1020, ptr %6, align 4, !tbaa !10
  store i32 1020, ptr %5, align 4, !tbaa !10
  %.unpack284.peel = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @l2norm_(ptr nonnull %7, ptr nonnull %6, ptr nonnull %5, ptr nonnull @_QMlu_dataEnx0, ptr nonnull @_QMlu_dataEny0, ptr nonnull @_QMlu_dataEnz0, ptr nonnull @_QMlu_dataEist, ptr nonnull @_QMlu_dataEiend, ptr nonnull @_QMlu_dataEjst, ptr nonnull @_QMlu_dataEjend, ptr %.unpack284.peel, ptr nonnull @_QMlu_dataErsdnm)
  %104 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not308.peel = icmp eq i32 %104, 0
  br i1 %.not308.peel, label %106, label %105

105:                                              ; preds = %103
  store i32 11, ptr %4, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %4)
  br label %106

106:                                              ; preds = %105, %103, %93
  %107 = load double, ptr @_QMlu_dataErsdnm, align 8, !tbaa !22
  %108 = load double, ptr @_QMlu_dataEtolrsd, align 8, !tbaa !24
  %109 = fcmp contract olt double %107, %108
  %110 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataErsdnm, i64 0, i64 1), align 8, !tbaa !22
  %111 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEtolrsd, i64 0, i64 1), align 8, !tbaa !24
  %112 = fcmp contract olt double %110, %111
  %113 = and i1 %109, %112
  %114 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataErsdnm, i64 0, i64 2), align 8, !tbaa !22
  %115 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEtolrsd, i64 0, i64 2), align 8, !tbaa !24
  %116 = fcmp contract olt double %114, %115
  %117 = and i1 %113, %116
  %118 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataErsdnm, i64 0, i64 3), align 8, !tbaa !22
  %119 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEtolrsd, i64 0, i64 3), align 8, !tbaa !24
  %120 = fcmp contract olt double %118, %119
  %121 = and i1 %117, %120
  %122 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataErsdnm, i64 0, i64 4), align 8, !tbaa !22
  %123 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEtolrsd, i64 0, i64 4), align 8, !tbaa !24
  %124 = fcmp contract olt double %122, %123
  %125 = and i1 %121, %124
  br i1 %125, label %.loopexit316, label %126

126:                                              ; preds = %106
  %exitcond.peel.not = icmp eq i32 %78, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %126, %183
  %.0312 = phi i32 [ %184, %183 ], [ 2, %126 ]
  %.urem = urem i32 %.0312, 20
  %127 = icmp eq i32 %.urem, 0
  %128 = load i32, ptr @_QMlu_dataEitmax, align 4, !tbaa !20
  %129 = icmp eq i32 %.0312, %128
  %130 = or i1 %127, %129
  br i1 %130, label %131, label %omp_parallel

131:                                              ; preds = %.lr.ph
  %132 = load i32, ptr %0, align 4, !tbaa !13
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %omp_parallel

134:                                              ; preds = %131
  %135 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272054696D65207374657020272C20693429, i64 19, ptr null, i32 6, ptr nonnull @_QQclX8a037d8700b237ddc2b4eb6219084d8c, i32 70)
  %136 = call i1 @_FortranAioOutputInteger32(ptr %135, i32 %.0312)
  %137 = call i32 @_FortranAioEndIoStatement(ptr %135)
  br label %omp_parallel

omp_parallel:                                     ; preds = %134, %131, %.lr.ph
  store ptr %25, ptr %structArg, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @ssor_..omp_par, ptr nonnull %structArg)
  %138 = load i32, ptr @_QMlu_dataEinorm, align 4, !tbaa !16
  %139 = srem i32 %.0312, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %omp_parallel
  %142 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not = icmp eq i32 %142, 0
  br i1 %.not, label %144, label %143

143:                                              ; preds = %141
  store i32 11, ptr %13, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %13)
  br label %144

144:                                              ; preds = %143, %141
  store i32 1020, ptr %12, align 4, !tbaa !10
  store i32 1020, ptr %11, align 4, !tbaa !10
  store i32 1020, ptr %10, align 4, !tbaa !10
  %.unpack258 = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @l2norm_(ptr nonnull %12, ptr nonnull %11, ptr nonnull %10, ptr nonnull @_QMlu_dataEnx0, ptr nonnull @_QMlu_dataEny0, ptr nonnull @_QMlu_dataEnz0, ptr nonnull @_QMlu_dataEist, ptr nonnull @_QMlu_dataEiend, ptr nonnull @_QMlu_dataEjst, ptr nonnull @_QMlu_dataEjend, ptr %.unpack258, ptr nonnull %22)
  %145 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not282 = icmp eq i32 %145, 0
  br i1 %.not282, label %147, label %146

146:                                              ; preds = %144
  store i32 11, ptr %9, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %9)
  br label %147

147:                                              ; preds = %146, %144, %omp_parallel
  call void @rhs_()
  %148 = load i32, ptr @_QMlu_dataEinorm, align 4, !tbaa !16
  %149 = srem i32 %.0312, %148
  %150 = icmp eq i32 %149, 0
  %151 = load i32, ptr @_QMlu_dataEitmax, align 4, !tbaa !20
  %152 = icmp eq i32 %.0312, %151
  %153 = or i1 %150, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not283 = icmp eq i32 %155, 0
  br i1 %.not283, label %157, label %156

156:                                              ; preds = %154
  store i32 11, ptr %8, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %8)
  br label %157

157:                                              ; preds = %156, %154
  store i32 1020, ptr %7, align 4, !tbaa !10
  store i32 1020, ptr %6, align 4, !tbaa !10
  store i32 1020, ptr %5, align 4, !tbaa !10
  %.unpack284 = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @l2norm_(ptr nonnull %7, ptr nonnull %6, ptr nonnull %5, ptr nonnull @_QMlu_dataEnx0, ptr nonnull @_QMlu_dataEny0, ptr nonnull @_QMlu_dataEnz0, ptr nonnull @_QMlu_dataEist, ptr nonnull @_QMlu_dataEiend, ptr nonnull @_QMlu_dataEjst, ptr nonnull @_QMlu_dataEjend, ptr %.unpack284, ptr nonnull @_QMlu_dataErsdnm)
  %158 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not308 = icmp eq i32 %158, 0
  br i1 %.not308, label %160, label %159

159:                                              ; preds = %157
  store i32 11, ptr %4, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %4)
  br label %160

160:                                              ; preds = %159, %157, %147
  %161 = load double, ptr @_QMlu_dataErsdnm, align 8, !tbaa !22
  %162 = load double, ptr @_QMlu_dataEtolrsd, align 8, !tbaa !24
  %163 = fcmp contract olt double %161, %162
  %164 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataErsdnm, i64 0, i64 1), align 8, !tbaa !22
  %165 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEtolrsd, i64 0, i64 1), align 8, !tbaa !24
  %166 = fcmp contract olt double %164, %165
  %167 = and i1 %163, %166
  %168 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataErsdnm, i64 0, i64 2), align 8, !tbaa !22
  %169 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEtolrsd, i64 0, i64 2), align 8, !tbaa !24
  %170 = fcmp contract olt double %168, %169
  %171 = and i1 %167, %170
  %172 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataErsdnm, i64 0, i64 3), align 8, !tbaa !22
  %173 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEtolrsd, i64 0, i64 3), align 8, !tbaa !24
  %174 = fcmp contract olt double %172, %173
  %175 = and i1 %171, %174
  %176 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataErsdnm, i64 0, i64 4), align 8, !tbaa !22
  %177 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEtolrsd, i64 0, i64 4), align 8, !tbaa !24
  %178 = fcmp contract olt double %176, %177
  %179 = and i1 %175, %178
  br i1 %179, label %.loopexit316, label %183

.loopexit316:                                     ; preds = %160, %106
  %.0312.lcssa = phi i32 [ 1, %106 ], [ %.0312, %160 ]
  %180 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXf29500b12f6bbc4f2324e21aad40d9c3, i64 66, ptr null, i32 6, ptr nonnull @_QQclX8a037d8700b237ddc2b4eb6219084d8c, i32 237)
  %181 = call i1 @_FortranAioOutputInteger32(ptr %180, i32 %.0312.lcssa)
  %182 = call i32 @_FortranAioEndIoStatement(ptr %180)
  br label %.loopexit

183:                                              ; preds = %160
  %184 = add nuw i32 %.0312, 1
  %exitcond.not = icmp eq i32 %.0312, %78
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !26

.loopexit:                                        ; preds = %183, %126, %77, %.loopexit316
  %185 = load i32, ptr %0, align 4, !tbaa !13
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %.loopexit
  call void @roi_end_()
  br label %188

188:                                              ; preds = %187, %.loopexit
  store i32 1, ptr %3, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %3)
  store i32 1, ptr %2, align 4, !tbaa !10
  %189 = call contract double @timer_read_(ptr nonnull %2)
  store double %189, ptr @_QMlu_dataEmaxtime, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind
define internal void @ssor_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_ = load ptr, ptr %0, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %p.lastiter108 = alloca i32, align 4
  %p.lowerbound109 = alloca i32, align 4
  %p.upperbound110 = alloca i32, align 4
  %p.stride111 = alloca i32, align 4
  %p.lastiter126 = alloca i32, align 4
  %p.lowerbound127 = alloca i32, align 4
  %p.upperbound128 = alloca i32, align 4
  %p.stride129 = alloca i32, align 4
  %p.lastiter144 = alloca i32, align 4
  %p.lowerbound145 = alloca i32, align 4
  %p.upperbound146 = alloca i32, align 4
  %p.stride147 = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %omp_global_thread_num148 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %30 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num148, ptr nonnull @_QMlu_dataEa, i64 204000, ptr nonnull @_QMlu_dataEa.cache)
  %31 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num148, ptr nonnull @_QMlu_dataEb, i64 204000, ptr nonnull @_QMlu_dataEb.cache)
  %32 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num148, ptr nonnull @_QMlu_dataEc, i64 204000, ptr nonnull @_QMlu_dataEc.cache)
  %33 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num148, ptr nonnull @_QMlu_dataEd, i64 204000, ptr nonnull @_QMlu_dataEd.cache)
  %34 = alloca i32, align 4
  %35 = tail call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  %.not = icmp eq i32 %35, 0
  br i1 %.not, label %omp_region.end, label %omp.master.region

omp_region.end:                                   ; preds = %omp.par.entry, %omp.region.cont18
  %36 = load double, ptr @_QMlu_dataEdt, align 8, !tbaa !30
  %37 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !32
  %38 = add i32 %37, -1
  %39 = load i32, ptr @_QMlu_dataEjst, align 4, !tbaa !34
  %40 = load i32, ptr @_QMlu_dataEjend, align 4, !tbaa !36
  %41 = icmp slt i32 %38, 2
  %42 = add i32 %37, -2
  %omp_loop.tripcount = select i1 %41, i32 0, i32 %42
  %43 = sub nsw i32 %40, %39
  %44 = icmp slt i32 %40, %39
  %45 = add i32 %43, 1
  %omp_loop.tripcount21 = select i1 %44, i32 0, i32 %45
  %46 = mul nuw i32 %omp_loop.tripcount21, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %47 = add i32 %46, -1
  store i32 %47, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num148, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %48 = load i32, ptr %p.lowerbound, align 4
  %49 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %49, %48
  %omp_collapsed.cmp555.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp555.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp_region.end
  %50 = load i32, ptr @_QMlu_dataEist, align 4, !tbaa !38
  %51 = sext i32 %50 to i64
  %52 = load i32, ptr @_QMlu_dataEiend, align 4, !tbaa !40
  %53 = sext i32 %52 to i64
  %reass.sub564 = sub nsw i64 %53, %51
  %54 = add nsw i64 %reass.sub564, 1
  %55 = icmp sgt i64 %reass.sub564, -1
  %.unpack521 = load ptr, ptr @_QMlu_dataErsd, align 8
  %.unpack528.unpack.unpack533 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack528.unpack529.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 1), align 8
  %.unpack528.unpack529.unpack536 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack528.unpack530.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 2), align 8
  %.unpack528.unpack530.unpack539 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack528.unpack531.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 3), align 8
  %56 = mul nsw i64 %.unpack528.unpack529.unpack536, %.unpack528.unpack.unpack533
  %57 = mul nsw i64 %.unpack528.unpack530.unpack539, %56
  br i1 %55, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %.unpack528.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7), align 8
  %58 = sub nsw i64 1, %.unpack528.unpack.unpack
  %59 = sub nsw i64 2, %.unpack528.unpack.unpack
  %60 = sub nsw i64 3, %.unpack528.unpack.unpack
  %61 = sub nsw i64 4, %.unpack528.unpack.unpack
  %62 = sub nsw i64 5, %.unpack528.unpack.unpack
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region33.omp.wsloop.region38_crit_edge.us
  %omp_collapsed.iv556.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region33.omp.wsloop.region38_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %63 = add i32 %omp_collapsed.iv556.us, %48
  %.frozen = freeze i32 %63
  %.frozen588 = freeze i32 %45
  %64 = udiv i32 %.frozen, %.frozen588
  %65 = mul i32 %64, %.frozen588
  %.decomposed = sub i32 %.frozen, %65
  %66 = add i32 %64, 2
  %67 = add i32 %.decomposed, %39
  %68 = sext i32 %67 to i64
  %69 = sext i32 %66 to i64
  %70 = sub nsw i64 %68, %.unpack528.unpack530.unpack
  %71 = mul nsw i64 %70, %56
  %72 = sub nsw i64 %69, %.unpack528.unpack531.unpack
  %73 = mul nsw i64 %57, %72
  %74 = getelementptr double, ptr %.unpack521, i64 %73
  %75 = getelementptr double, ptr %74, i64 %71
  br label %omp.wsloop.region35.preheader.us

omp.wsloop.region35.preheader.us:                 ; preds = %omp_collapsed.body.us, %omp.wsloop.region35.preheader.us
  %76 = phi i64 [ %54, %omp_collapsed.body.us ], [ %98, %omp.wsloop.region35.preheader.us ]
  %77 = phi i32 [ %50, %omp_collapsed.body.us ], [ %97, %omp.wsloop.region35.preheader.us ]
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %78, %.unpack528.unpack529.unpack
  %80 = mul nsw i64 %79, %.unpack528.unpack.unpack533
  %81 = getelementptr double, ptr %75, i64 %80
  %82 = getelementptr double, ptr %81, i64 %58
  %83 = load double, ptr %82, align 8, !tbaa !42
  %84 = fmul contract double %36, %83
  store double %84, ptr %82, align 8, !tbaa !42
  %85 = getelementptr double, ptr %81, i64 %59
  %86 = load double, ptr %85, align 8, !tbaa !42
  %87 = fmul contract double %36, %86
  store double %87, ptr %85, align 8, !tbaa !42
  %88 = getelementptr double, ptr %81, i64 %60
  %89 = load double, ptr %88, align 8, !tbaa !42
  %90 = fmul contract double %36, %89
  store double %90, ptr %88, align 8, !tbaa !42
  %91 = getelementptr double, ptr %81, i64 %61
  %92 = load double, ptr %91, align 8, !tbaa !42
  %93 = fmul contract double %36, %92
  store double %93, ptr %91, align 8, !tbaa !42
  %94 = getelementptr double, ptr %81, i64 %62
  %95 = load double, ptr %94, align 8, !tbaa !42
  %96 = fmul contract double %36, %95
  store double %96, ptr %94, align 8, !tbaa !42
  %97 = add i32 %77, 1
  %98 = add nsw i64 %76, -1
  %99 = icmp sgt i64 %76, 1
  br i1 %99, label %omp.wsloop.region35.preheader.us, label %omp.wsloop.region33.omp.wsloop.region38_crit_edge.us

omp.wsloop.region33.omp.wsloop.region38_crit_edge.us: ; preds = %omp.wsloop.region35.preheader.us
  %omp_collapsed.next.us = add nuw i32 %omp_collapsed.iv556.us, 1
  %exitcond.not = icmp eq i32 %omp_collapsed.iv556.us, %reass.sub
  br i1 %exitcond.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

omp_collapsed.exit:                               ; preds = %omp.wsloop.region33.omp.wsloop.region38_crit_edge.us, %omp_collapsed.body.lr.ph, %omp_region.end
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num148)
  %100 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  %.not317 = icmp eq i32 %100, 0
  br i1 %.not317, label %omp_region.end41, label %omp.master.region44

omp_region.end41:                                 ; preds = %omp_collapsed.exit, %omp.region.cont43
  %101 = load i32, ptr @_QMlu_dataEjend, align 4, !tbaa !36
  %102 = load i32, ptr @_QMlu_dataEjst, align 4, !tbaa !34
  %103 = sub i32 %101, %102
  store i32 %103, ptr %24, align 4, !tbaa !10
  call void @sync_init_(ptr nonnull %24) #2
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num148)
  %104 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !32
  %105 = add i32 %104, -1
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %omp.par.region8.preheader, label %omp.par.region9

omp.par.region8.preheader:                        ; preds = %omp_region.end41
  %107 = zext nneg i32 %105 to i64
  br label %omp.par.region8

omp.par.region9:                                  ; preds = %omp_loop.exit137, %omp_region.end41
  %.lcssa554 = phi i32 [ 2, %omp_region.end41 ], [ %240, %omp_loop.exit137 ]
  store i32 %.lcssa554, ptr %34, align 4, !tbaa !10
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num148)
  %108 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  %.not320 = icmp eq i32 %108, 0
  br i1 %.not320, label %omp_region.end52, label %omp.master.region55

omp_region.end52:                                 ; preds = %omp.par.region9, %omp.region.cont54
  %109 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !32
  %110 = add i32 %109, -1
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %omp.par.region11.preheader, label %omp.par.region12

omp.par.region11.preheader:                       ; preds = %omp_region.end52
  %112 = zext nneg i32 %110 to i64
  br label %omp.par.region11

omp.par.region12:                                 ; preds = %omp_loop.exit, %omp_region.end52
  %.lcssa = phi i32 [ %110, %omp_region.end52 ], [ %224, %omp_loop.exit ]
  store i32 %.lcssa, ptr %34, align 4, !tbaa !10
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num148)
  %113 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  %.not323 = icmp eq i32 %113, 0
  br i1 %.not323, label %omp_region.end62, label %omp.master.region65

omp_region.end62:                                 ; preds = %omp.par.region12, %omp.region.cont64
  %114 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  %.not325 = icmp eq i32 %114, 0
  br i1 %.not325, label %omp_region.end69, label %omp.master.region72

omp_region.end69:                                 ; preds = %omp_region.end62, %omp.region.cont71
  %115 = load double, ptr %loadgep_, align 8, !tbaa !10
  %116 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !32
  %117 = add i32 %116, -1
  %118 = load i32, ptr @_QMlu_dataEjst, align 4, !tbaa !34
  %119 = load i32, ptr @_QMlu_dataEjend, align 4, !tbaa !36
  %120 = icmp slt i32 %117, 2
  %121 = add i32 %116, -2
  %omp_loop.tripcount75 = select i1 %120, i32 0, i32 %121
  %122 = sub nsw i32 %119, %118
  %123 = icmp slt i32 %119, %118
  %124 = add i32 %122, 1
  %omp_loop.tripcount79 = select i1 %123, i32 0, i32 %124
  %125 = mul nuw i32 %omp_loop.tripcount79, %omp_loop.tripcount75
  store i32 0, ptr %p.lowerbound109, align 4
  %126 = add i32 %125, -1
  store i32 %126, ptr %p.upperbound110, align 4
  store i32 1, ptr %p.stride111, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num148, i32 34, ptr nonnull %p.lastiter108, ptr nonnull %p.lowerbound109, ptr nonnull %p.upperbound110, ptr nonnull %p.stride111, i32 1, i32 0)
  %127 = load i32, ptr %p.lowerbound109, align 4
  %128 = load i32, ptr %p.upperbound110, align 4
  %reass.sub568 = sub i32 %128, %127
  %omp_collapsed.cmp106562.not = icmp eq i32 %reass.sub568, -1
  br i1 %omp_collapsed.cmp106562.not, label %omp_collapsed.exit103, label %omp_collapsed.body101.lr.ph

omp_collapsed.body101.lr.ph:                      ; preds = %omp_region.end69
  %129 = load i32, ptr @_QMlu_dataEist, align 4, !tbaa !38
  %130 = sext i32 %129 to i64
  %131 = load i32, ptr @_QMlu_dataEiend, align 4, !tbaa !40
  %132 = sext i32 %131 to i64
  %reass.sub569 = sub nsw i64 %132, %130
  %133 = add nsw i64 %reass.sub569, 1
  %134 = icmp sgt i64 %reass.sub569, -1
  %.unpack = load ptr, ptr @_QMlu_dataEu, align 8
  %.unpack335.unpack.unpack340 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack335.unpack336.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8
  %.unpack335.unpack336.unpack343 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack335.unpack337.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8
  %.unpack335.unpack337.unpack346 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack335.unpack338.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8
  %135 = mul nsw i64 %.unpack335.unpack336.unpack343, %.unpack335.unpack.unpack340
  %136 = mul nsw i64 %.unpack335.unpack337.unpack346, %135
  %.unpack352 = load ptr, ptr @_QMlu_dataErsd, align 8
  %.unpack359.unpack.unpack364 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack359.unpack360.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 1), align 8
  %.unpack359.unpack360.unpack367 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack359.unpack361.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 2), align 8
  %.unpack359.unpack361.unpack370 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack359.unpack362.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7, i64 3), align 8
  %137 = mul nsw i64 %.unpack359.unpack360.unpack367, %.unpack359.unpack.unpack364
  %138 = mul nsw i64 %.unpack359.unpack361.unpack370, %137
  br i1 %134, label %omp_collapsed.body101.us.preheader, label %omp_collapsed.exit103

omp_collapsed.body101.us.preheader:               ; preds = %omp_collapsed.body101.lr.ph
  %.unpack359.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataErsd, i64 0, i32 7), align 8
  %.unpack335.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8
  %139 = sub nsw i64 1, %.unpack335.unpack.unpack
  %140 = sub nsw i64 1, %.unpack359.unpack.unpack
  %141 = sub nsw i64 2, %.unpack335.unpack.unpack
  %142 = sub nsw i64 2, %.unpack359.unpack.unpack
  %143 = sub nsw i64 3, %.unpack335.unpack.unpack
  %144 = sub nsw i64 3, %.unpack359.unpack.unpack
  %145 = sub nsw i64 4, %.unpack335.unpack.unpack
  %146 = sub nsw i64 4, %.unpack359.unpack.unpack
  %147 = sub nsw i64 5, %.unpack335.unpack.unpack
  %148 = sub nsw i64 5, %.unpack359.unpack.unpack
  br label %omp_collapsed.body101.us

omp_collapsed.body101.us:                         ; preds = %omp_collapsed.body101.us.preheader, %omp.wsloop.region92.omp.wsloop.region97_crit_edge.us
  %omp_collapsed.iv105563.us = phi i32 [ %omp_collapsed.next107.us, %omp.wsloop.region92.omp.wsloop.region97_crit_edge.us ], [ 0, %omp_collapsed.body101.us.preheader ]
  %149 = add i32 %omp_collapsed.iv105563.us, %127
  %.frozen589 = freeze i32 %149
  %.frozen590 = freeze i32 %124
  %150 = udiv i32 %.frozen589, %.frozen590
  %151 = mul i32 %150, %.frozen590
  %.decomposed591 = sub i32 %.frozen589, %151
  %152 = add i32 %150, 2
  %153 = add i32 %.decomposed591, %118
  %154 = sext i32 %153 to i64
  %155 = sext i32 %152 to i64
  %156 = sub nsw i64 %154, %.unpack335.unpack337.unpack
  %157 = mul nsw i64 %156, %135
  %158 = sub nsw i64 %155, %.unpack335.unpack338.unpack
  %159 = mul nsw i64 %136, %158
  %160 = getelementptr double, ptr %.unpack, i64 %159
  %161 = getelementptr double, ptr %160, i64 %157
  %162 = sub nsw i64 %154, %.unpack359.unpack361.unpack
  %163 = mul nsw i64 %162, %137
  %164 = sub nsw i64 %155, %.unpack359.unpack362.unpack
  %165 = mul nsw i64 %138, %164
  %166 = getelementptr double, ptr %.unpack352, i64 %165
  %167 = getelementptr double, ptr %166, i64 %163
  br label %omp.wsloop.region94.preheader.us

omp.wsloop.region94.preheader.us:                 ; preds = %omp_collapsed.body101.us, %omp.wsloop.region94.preheader.us
  %168 = phi i64 [ %133, %omp_collapsed.body101.us ], [ %208, %omp.wsloop.region94.preheader.us ]
  %169 = phi i32 [ %129, %omp_collapsed.body101.us ], [ %207, %omp.wsloop.region94.preheader.us ]
  %170 = sext i32 %169 to i64
  %171 = sub nsw i64 %170, %.unpack335.unpack336.unpack
  %172 = mul nsw i64 %171, %.unpack335.unpack.unpack340
  %173 = getelementptr double, ptr %161, i64 %172
  %174 = sub nsw i64 %170, %.unpack359.unpack360.unpack
  %175 = mul nsw i64 %174, %.unpack359.unpack.unpack364
  %176 = getelementptr double, ptr %167, i64 %175
  %177 = getelementptr double, ptr %173, i64 %139
  %178 = load double, ptr %177, align 8, !tbaa !45
  %179 = getelementptr double, ptr %176, i64 %140
  %180 = load double, ptr %179, align 8, !tbaa !42
  %181 = fmul contract double %115, %180
  %182 = fadd contract double %178, %181
  store double %182, ptr %177, align 8, !tbaa !45
  %183 = getelementptr double, ptr %173, i64 %141
  %184 = load double, ptr %183, align 8, !tbaa !45
  %185 = getelementptr double, ptr %176, i64 %142
  %186 = load double, ptr %185, align 8, !tbaa !42
  %187 = fmul contract double %115, %186
  %188 = fadd contract double %184, %187
  store double %188, ptr %183, align 8, !tbaa !45
  %189 = getelementptr double, ptr %173, i64 %143
  %190 = load double, ptr %189, align 8, !tbaa !45
  %191 = getelementptr double, ptr %176, i64 %144
  %192 = load double, ptr %191, align 8, !tbaa !42
  %193 = fmul contract double %115, %192
  %194 = fadd contract double %190, %193
  store double %194, ptr %189, align 8, !tbaa !45
  %195 = getelementptr double, ptr %173, i64 %145
  %196 = load double, ptr %195, align 8, !tbaa !45
  %197 = getelementptr double, ptr %176, i64 %146
  %198 = load double, ptr %197, align 8, !tbaa !42
  %199 = fmul contract double %115, %198
  %200 = fadd contract double %196, %199
  store double %200, ptr %195, align 8, !tbaa !45
  %201 = getelementptr double, ptr %173, i64 %147
  %202 = load double, ptr %201, align 8, !tbaa !45
  %203 = getelementptr double, ptr %176, i64 %148
  %204 = load double, ptr %203, align 8, !tbaa !42
  %205 = fmul contract double %115, %204
  %206 = fadd contract double %202, %205
  store double %206, ptr %201, align 8, !tbaa !45
  %207 = add i32 %169, 1
  %208 = add nsw i64 %168, -1
  %209 = icmp sgt i64 %168, 1
  br i1 %209, label %omp.wsloop.region94.preheader.us, label %omp.wsloop.region92.omp.wsloop.region97_crit_edge.us

omp.wsloop.region92.omp.wsloop.region97_crit_edge.us: ; preds = %omp.wsloop.region94.preheader.us
  %omp_collapsed.next107.us = add nuw i32 %omp_collapsed.iv105563.us, 1
  %exitcond579.not = icmp eq i32 %omp_collapsed.iv105563.us, %reass.sub568
  br i1 %exitcond579.not, label %omp_collapsed.exit103, label %omp_collapsed.body101.us

omp_collapsed.exit103:                            ; preds = %omp.wsloop.region92.omp.wsloop.region97_crit_edge.us, %omp_collapsed.body101.lr.ph, %omp_region.end69
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num148)
  %210 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  %.not327 = icmp eq i32 %210, 0
  br i1 %.not327, label %omp.par.outlined.exit.exitStub, label %omp.master.region117

omp.master.region117:                             ; preds = %omp_collapsed.exit103
  %211 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not328 = icmp eq i32 %211, 0
  br i1 %.not328, label %omp.region.cont116, label %omp.master.region118

omp.region.cont116:                               ; preds = %omp.master.region117, %omp.master.region118
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  br label %omp.par.outlined.exit.exitStub

omp.master.region118:                             ; preds = %omp.master.region117
  store i32 10, ptr %1, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %1) #2
  br label %omp.region.cont116

omp.master.region72:                              ; preds = %omp_region.end62
  %212 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not326 = icmp eq i32 %212, 0
  br i1 %.not326, label %omp.region.cont71, label %omp.master.region73

omp.region.cont71:                                ; preds = %omp.master.region72, %omp.master.region73
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  br label %omp_region.end69

omp.master.region73:                              ; preds = %omp.master.region72
  store i32 10, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2) #2
  br label %omp.region.cont71

omp.master.region65:                              ; preds = %omp.par.region12
  %213 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not324 = icmp eq i32 %213, 0
  br i1 %.not324, label %omp.region.cont64, label %omp.master.region66

omp.region.cont64:                                ; preds = %omp.master.region65, %omp.master.region66
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  br label %omp_region.end62

omp.master.region66:                              ; preds = %omp.master.region65
  store i32 9, ptr %3, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %3) #2
  br label %omp.region.cont64

omp.par.region11:                                 ; preds = %omp.par.region11.preheader, %omp_loop.exit
  %.in566 = phi i64 [ %215, %omp_loop.exit ], [ %112, %omp.par.region11.preheader ]
  %214 = phi i32 [ %224, %omp_loop.exit ], [ %110, %omp.par.region11.preheader ]
  %215 = add nsw i64 %.in566, -1
  store i32 %214, ptr %34, align 4, !tbaa !10
  store i32 1020, ptr %12, align 4, !tbaa !10
  store i32 1020, ptr %11, align 4, !tbaa !10
  store i32 1020, ptr %10, align 4, !tbaa !10
  %.unpack376 = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @sync_left_(ptr nonnull %12, ptr nonnull %11, ptr nonnull %10, ptr %.unpack376) #2
  %216 = load i32, ptr @_QMlu_dataEjend, align 4, !tbaa !36
  %217 = load i32, ptr @_QMlu_dataEjst, align 4, !tbaa !34
  %218 = sub nsw i32 %216, %217
  %219 = icmp slt i32 %216, %217
  store i32 0, ptr %p.lowerbound127, align 4
  %220 = select i1 %219, i32 -1, i32 %218
  store i32 %220, ptr %p.upperbound128, align 4
  store i32 1, ptr %p.stride129, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num148, i32 34, ptr nonnull %p.lastiter126, ptr nonnull %p.lowerbound127, ptr nonnull %p.upperbound128, ptr nonnull %p.stride129, i32 1, i32 0)
  %221 = load i32, ptr %p.lowerbound127, align 4
  %222 = load i32, ptr %p.upperbound128, align 4
  %reass.sub567 = sub i32 %222, %221
  %omp_loop.cmp559.not = icmp eq i32 %reass.sub567, -1
  br i1 %omp_loop.cmp559.not, label %omp_loop.exit, label %omp_loop.body122

omp_loop.exit:                                    ; preds = %omp_loop.body122, %omp.par.region11
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num148)
  store i32 1020, ptr %6, align 4, !tbaa !10
  store i32 1020, ptr %5, align 4, !tbaa !10
  store i32 1020, ptr %4, align 4, !tbaa !10
  %.unpack400 = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @sync_right_(ptr nonnull %6, ptr nonnull %5, ptr nonnull %4, ptr %.unpack400) #2
  %223 = load i32, ptr %34, align 4, !tbaa !10
  %224 = add i32 %223, -1
  %225 = icmp sgt i64 %.in566, 2
  br i1 %225, label %omp.par.region11, label %omp.par.region12

omp_loop.body122:                                 ; preds = %omp.par.region11, %omp_loop.body122
  %omp_loop.iv560 = phi i32 [ %omp_loop.next, %omp_loop.body122 ], [ 0, %omp.par.region11 ]
  %226 = add i32 %221, %omp_loop.iv560
  %227 = sub i32 %216, %226
  store i32 %227, ptr %28, align 4, !tbaa !10
  call void @jacu_(ptr nonnull %28, ptr nonnull %34) #2
  store i32 1020, ptr %9, align 4, !tbaa !10
  store i32 1020, ptr %8, align 4, !tbaa !10
  store i32 1020, ptr %7, align 4, !tbaa !10
  %.unpack424 = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @buts_(ptr nonnull %9, ptr nonnull %8, ptr nonnull %7, ptr nonnull @_QMlu_dataEnx, ptr nonnull @_QMlu_dataEny, ptr nonnull @_QMlu_dataEnz, ptr nonnull @_QMlu_dataEomega, ptr %.unpack424, ptr %33, ptr %30, ptr %31, ptr %32, ptr nonnull @_QMlu_dataEist, ptr nonnull @_QMlu_dataEiend, ptr nonnull %28, ptr nonnull %34) #2
  %omp_loop.next = add nuw i32 %omp_loop.iv560, 1
  %exitcond576.not = icmp eq i32 %omp_loop.iv560, %reass.sub567
  br i1 %exitcond576.not, label %omp_loop.exit, label %omp_loop.body122

omp.master.region55:                              ; preds = %omp.par.region9
  %228 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not321 = icmp eq i32 %228, 0
  br i1 %.not321, label %omp.region.cont54, label %omp.master.region57

omp.master.region57:                              ; preds = %omp.master.region55
  store i32 7, ptr %14, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %14) #2
  %.pr = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not322 = icmp eq i32 %.pr, 0
  br i1 %.not322, label %omp.region.cont54, label %omp.master.region58

omp.region.cont54:                                ; preds = %omp.master.region55, %omp.master.region57, %omp.master.region58
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  br label %omp_region.end52

omp.master.region58:                              ; preds = %omp.master.region57
  store i32 9, ptr %13, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %13) #2
  br label %omp.region.cont54

omp.par.region8:                                  ; preds = %omp.par.region8.preheader, %omp_loop.exit137
  %.in = phi i64 [ %230, %omp_loop.exit137 ], [ %107, %omp.par.region8.preheader ]
  %229 = phi i32 [ %240, %omp_loop.exit137 ], [ 2, %omp.par.region8.preheader ]
  %230 = add nsw i64 %.in, -1
  store i32 %229, ptr %34, align 4, !tbaa !10
  store i32 1020, ptr %23, align 4, !tbaa !10
  store i32 1020, ptr %22, align 4, !tbaa !10
  store i32 1020, ptr %21, align 4, !tbaa !10
  %.unpack448 = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @sync_left_(ptr nonnull %23, ptr nonnull %22, ptr nonnull %21, ptr %.unpack448) #2
  %231 = load i32, ptr @_QMlu_dataEjst, align 4, !tbaa !34
  %232 = load i32, ptr @_QMlu_dataEjend, align 4, !tbaa !36
  %233 = sub nsw i32 %232, %231
  %234 = icmp slt i32 %232, %231
  store i32 0, ptr %p.lowerbound145, align 4
  %235 = select i1 %234, i32 -1, i32 %233
  store i32 %235, ptr %p.upperbound146, align 4
  store i32 1, ptr %p.stride147, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num148, i32 34, ptr nonnull %p.lastiter144, ptr nonnull %p.lowerbound145, ptr nonnull %p.upperbound146, ptr nonnull %p.stride147, i32 1, i32 0)
  %236 = load i32, ptr %p.lowerbound145, align 4
  %237 = load i32, ptr %p.upperbound146, align 4
  %reass.sub565 = sub i32 %237, %236
  %omp_loop.cmp140557.not = icmp eq i32 %reass.sub565, -1
  br i1 %omp_loop.cmp140557.not, label %omp_loop.exit137, label %omp_loop.body135.lr.ph

omp_loop.body135.lr.ph:                           ; preds = %omp.par.region8
  %238 = add i32 %236, %231
  br label %omp_loop.body135

omp_loop.exit137:                                 ; preds = %omp_loop.body135, %omp.par.region8
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num148)
  store i32 1020, ptr %17, align 4, !tbaa !10
  store i32 1020, ptr %16, align 4, !tbaa !10
  store i32 1020, ptr %15, align 4, !tbaa !10
  %.unpack472 = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @sync_right_(ptr nonnull %17, ptr nonnull %16, ptr nonnull %15, ptr %.unpack472) #2
  %239 = load i32, ptr %34, align 4, !tbaa !10
  %240 = add i32 %239, 1
  %241 = icmp sgt i64 %.in, 2
  br i1 %241, label %omp.par.region8, label %omp.par.region9

omp_loop.body135:                                 ; preds = %omp_loop.body135.lr.ph, %omp_loop.body135
  %omp_loop.iv139558 = phi i32 [ 0, %omp_loop.body135.lr.ph ], [ %omp_loop.next141, %omp_loop.body135 ]
  %242 = add i32 %238, %omp_loop.iv139558
  store i32 %242, ptr %29, align 4, !tbaa !10
  call void @jacld_(ptr nonnull %29, ptr nonnull %34) #2
  store i32 1020, ptr %20, align 4, !tbaa !10
  store i32 1020, ptr %19, align 4, !tbaa !10
  store i32 1020, ptr %18, align 4, !tbaa !10
  %.unpack497 = load ptr, ptr @_QMlu_dataErsd, align 8, !tbaa !11
  call void @blts_(ptr nonnull %20, ptr nonnull %19, ptr nonnull %18, ptr nonnull @_QMlu_dataEnx, ptr nonnull @_QMlu_dataEny, ptr nonnull @_QMlu_dataEnz, ptr nonnull @_QMlu_dataEomega, ptr %.unpack497, ptr %30, ptr %31, ptr %32, ptr %33, ptr nonnull @_QMlu_dataEist, ptr nonnull @_QMlu_dataEiend, ptr nonnull %29, ptr nonnull %34) #2
  %omp_loop.next141 = add nuw i32 %omp_loop.iv139558, 1
  %exitcond575.not = icmp eq i32 %omp_loop.iv139558, %reass.sub565
  br i1 %exitcond575.not, label %omp_loop.exit137, label %omp_loop.body135

omp.master.region44:                              ; preds = %omp_collapsed.exit
  %243 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not318 = icmp eq i32 %243, 0
  br i1 %.not318, label %omp.region.cont43, label %omp.master.region46

omp.master.region46:                              ; preds = %omp.master.region44
  store i32 5, ptr %26, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %26) #2
  %.pr546 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not319 = icmp eq i32 %.pr546, 0
  br i1 %.not319, label %omp.region.cont43, label %omp.master.region47

omp.region.cont43:                                ; preds = %omp.master.region44, %omp.master.region46, %omp.master.region47
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  br label %omp_region.end41

omp.master.region47:                              ; preds = %omp.master.region46
  store i32 7, ptr %25, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %25) #2
  br label %omp.region.cont43

omp.master.region:                                ; preds = %omp.par.entry
  %244 = load i32, ptr @_QMlu_dataEtimeron, align 4, !tbaa !18
  %.not316 = icmp eq i32 %244, 0
  br i1 %.not316, label %omp.region.cont18, label %omp.master.region19

omp.region.cont18:                                ; preds = %omp.master.region, %omp.master.region19
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num148)
  br label %omp_region.end

omp.master.region19:                              ; preds = %omp.master.region
  store i32 5, ptr %27, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %27) #2
  br label %omp.region.cont18

omp.par.outlined.exit.exitStub:                   ; preds = %omp.region.cont116, %omp_collapsed.exit103
  ret void
}

declare void @timer_clear_(ptr) local_unnamed_addr

declare void @rhs_() local_unnamed_addr

declare void @l2norm_(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr) local_unnamed_addr

declare void @timer_start_(ptr) local_unnamed_addr

declare void @roi_begin_() local_unnamed_addr

declare ptr @_FortranAioBeginExternalFormattedOutput(ptr, i64, ptr, i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputInteger32(ptr, i32) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare void @timer_stop_(ptr) local_unnamed_addr

declare void @sync_init_(ptr) local_unnamed_addr

declare void @sync_left_(ptr, ptr, ptr, ptr) local_unnamed_addr

declare void @jacld_(ptr, ptr) local_unnamed_addr

declare void @blts_(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr) local_unnamed_addr

declare void @sync_right_(ptr, ptr, ptr, ptr) local_unnamed_addr

declare void @jacu_(ptr, ptr) local_unnamed_addr

declare void @buts_(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr) local_unnamed_addr

declare void @roi_end_() local_unnamed_addr

declare double @timer_read_(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_master(ptr, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_end_master(ptr, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !47 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #2

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #2 = { nounwind }
attributes #3 = { convergent nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QMlu_dataEomega", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPssor"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"descriptor member", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"dummy arg data/_QFssorEniter", !15, i64 0}
!15 = !{!"dummy arg data", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"global data/_QMlu_dataEinorm", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"global data/_QMlu_dataEtimeron", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"global data/_QMlu_dataEitmax", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"global data/_QMlu_dataErsdnm", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"global data/_QMlu_dataEtolrsd", !6, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.peeled.count", i32 1}
!28 = !{!29, !29, i64 0}
!29 = !{!"global data/_QMlu_dataEmaxtime", !6, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"global data/_QMlu_dataEdt", !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"global data/_QMlu_dataEnz", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"global data/_QMlu_dataEjst", !6, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"global data/_QMlu_dataEjend", !6, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"global data/_QMlu_dataEist", !6, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"global data/_QMlu_dataEiend", !6, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"direct data/_QMlu_dataErsd", !44, i64 0}
!44 = !{!"direct data", !7, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"direct data/_QMlu_dataEu", !44, i64 0}
!47 = !{!48}
!48 = !{i64 2, i64 -1, i64 -1, i1 true}
