; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMlu_dataEa = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEb = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEc = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEd = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEflux = external global [1020 x [5 x double]]
@_QMlu_dataEnx = external global i32
@_QMlu_dataEny = external global i32
@_QMlu_dataEnz = external global i32
@_QMlu_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: nounwind
define void @setbv_() local_unnamed_addr #0 {
entry:
  %omp_global_thread_num5 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %0 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEa, i64 204000, ptr nonnull @_QMlu_dataEa.cache)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEb, i64 204000, ptr nonnull @_QMlu_dataEb.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEc, i64 204000, ptr nonnull @_QMlu_dataEc.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEd, i64 204000, ptr nonnull @_QMlu_dataEd.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEflux, i64 40800, ptr nonnull @_QMlu_dataEflux.cache)
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @setbv_..omp_par)
  ret void
}

; Function Attrs: nounwind
define internal void @setbv_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr) #0 {
omp.par.entry:
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %p.lastiter54 = alloca i32, align 4
  %p.lowerbound55 = alloca i32, align 4
  %p.upperbound56 = alloca i32, align 4
  %p.stride57 = alloca i32, align 4
  %p.lastiter90 = alloca i32, align 4
  %p.lowerbound91 = alloca i32, align 4
  %p.upperbound92 = alloca i32, align 4
  %p.stride93 = alloca i32, align 4
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x double], align 8
  %10 = alloca [5 x double], align 8
  %11 = load i32, ptr @_QMlu_dataEny, align 4, !tbaa !4
  %12 = load i32, ptr @_QMlu_dataEnx, align 4, !tbaa !10
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %11, i32 0)
  %omp_loop.tripcount7 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %13 = mul nuw i32 %omp_loop.tripcount7, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num94 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num94, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %15 = load i32, ptr %p.lowerbound, align 4
  %16 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %16, %15
  %omp_collapsed.cmp346.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp346.not, label %omp_collapsed.exit, label %omp_collapsed.body.preheader

omp_collapsed.body.preheader:                     ; preds = %omp.par.entry
  %17 = getelementptr inbounds i8, ptr %9, i64 8
  %18 = getelementptr inbounds i8, ptr %10, i64 8
  %19 = getelementptr inbounds i8, ptr %9, i64 16
  %20 = getelementptr inbounds i8, ptr %10, i64 16
  %21 = getelementptr inbounds i8, ptr %9, i64 24
  %22 = getelementptr inbounds i8, ptr %10, i64 24
  %23 = getelementptr inbounds i8, ptr %9, i64 32
  %24 = getelementptr inbounds i8, ptr %10, i64 32
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp_collapsed.body, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num94)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num94)
  %25 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !12
  %26 = load i32, ptr @_QMlu_dataEnx, align 4, !tbaa !10
  %omp_loop.tripcount24 = call i32 @llvm.smax.i32(i32 %25, i32 0)
  %omp_loop.tripcount28 = call i32 @llvm.smax.i32(i32 %26, i32 0)
  %27 = mul nuw i32 %omp_loop.tripcount28, %omp_loop.tripcount24
  store i32 0, ptr %p.lowerbound55, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %p.upperbound56, align 4
  store i32 1, ptr %p.stride57, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num94, i32 34, ptr nonnull %p.lastiter54, ptr nonnull %p.lowerbound55, ptr nonnull %p.upperbound56, ptr nonnull %p.stride57, i32 1, i32 0)
  %29 = load i32, ptr %p.lowerbound55, align 4
  %30 = load i32, ptr %p.upperbound56, align 4
  %reass.sub352 = sub i32 %30, %29
  %omp_collapsed.cmp52348.not = icmp eq i32 %reass.sub352, -1
  br i1 %omp_collapsed.cmp52348.not, label %omp_collapsed.exit49, label %omp_collapsed.body47.preheader

omp_collapsed.body47.preheader:                   ; preds = %omp_collapsed.exit
  %31 = getelementptr inbounds i8, ptr %9, i64 8
  %32 = getelementptr inbounds i8, ptr %10, i64 8
  %33 = getelementptr inbounds i8, ptr %9, i64 16
  %34 = getelementptr inbounds i8, ptr %10, i64 16
  %35 = getelementptr inbounds i8, ptr %9, i64 24
  %36 = getelementptr inbounds i8, ptr %10, i64 24
  %37 = getelementptr inbounds i8, ptr %9, i64 32
  %38 = getelementptr inbounds i8, ptr %10, i64 32
  br label %omp_collapsed.body47

omp_collapsed.exit49:                             ; preds = %omp_collapsed.body47, %omp_collapsed.exit
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num94)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num94)
  %39 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !12
  %40 = load i32, ptr @_QMlu_dataEny, align 4, !tbaa !4
  %omp_loop.tripcount60 = call i32 @llvm.smax.i32(i32 %39, i32 0)
  %omp_loop.tripcount64 = call i32 @llvm.smax.i32(i32 %40, i32 0)
  %41 = mul nuw i32 %omp_loop.tripcount64, %omp_loop.tripcount60
  store i32 0, ptr %p.lowerbound91, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %p.upperbound92, align 4
  store i32 1, ptr %p.stride93, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num94, i32 34, ptr nonnull %p.lastiter90, ptr nonnull %p.lowerbound91, ptr nonnull %p.upperbound92, ptr nonnull %p.stride93, i32 1, i32 0)
  %43 = load i32, ptr %p.lowerbound91, align 4
  %44 = load i32, ptr %p.upperbound92, align 4
  %reass.sub353 = sub i32 %44, %43
  %omp_collapsed.cmp88350.not = icmp eq i32 %reass.sub353, -1
  br i1 %omp_collapsed.cmp88350.not, label %omp_collapsed.exit85, label %omp_collapsed.body83.preheader

omp_collapsed.body83.preheader:                   ; preds = %omp_collapsed.exit49
  %45 = getelementptr inbounds i8, ptr %9, i64 8
  %46 = getelementptr inbounds i8, ptr %10, i64 8
  %47 = getelementptr inbounds i8, ptr %9, i64 16
  %48 = getelementptr inbounds i8, ptr %10, i64 16
  %49 = getelementptr inbounds i8, ptr %9, i64 24
  %50 = getelementptr inbounds i8, ptr %10, i64 24
  %51 = getelementptr inbounds i8, ptr %9, i64 32
  %52 = getelementptr inbounds i8, ptr %10, i64 32
  br label %omp_collapsed.body83

omp_collapsed.exit85:                             ; preds = %omp_collapsed.body83, %omp_collapsed.exit49
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num94)
  ret void

omp_collapsed.body83:                             ; preds = %omp_collapsed.body83.preheader, %omp_collapsed.body83
  %omp_collapsed.iv87351 = phi i32 [ %omp_collapsed.next89, %omp_collapsed.body83 ], [ 0, %omp_collapsed.body83.preheader ]
  %53 = add i32 %omp_collapsed.iv87351, %43
  %.frozen = freeze i32 %53
  %omp_loop.tripcount64.frozen = freeze i32 %omp_loop.tripcount64
  %54 = udiv i32 %.frozen, %omp_loop.tripcount64.frozen
  %55 = mul i32 %54, %omp_loop.tripcount64.frozen
  %.decomposed = sub i32 %.frozen, %55
  %56 = add i32 %54, 1
  %57 = add nuw nsw i32 %.decomposed, 1
  store i32 %56, ptr %4, align 4, !tbaa !14
  store i32 %57, ptr %3, align 4, !tbaa !14
  store i32 1, ptr %0, align 4, !tbaa !14
  call void @exact_(ptr nonnull %0, ptr nonnull %3, ptr nonnull %4, ptr nonnull %9) #1
  call void @exact_(ptr nonnull @_QMlu_dataEnx, ptr nonnull %3, ptr nonnull %4, ptr nonnull %10) #1
  %.unpack = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !15
  %.unpack207.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !15
  %.unpack207.unpack.unpack212 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !15
  %.unpack207.unpack208.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !15
  %.unpack207.unpack208.unpack215 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !15
  %.unpack207.unpack209.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !15
  %.unpack207.unpack209.unpack218 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !15
  %.unpack207.unpack210.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !15
  %58 = load i32, ptr %3, align 4, !tbaa !14
  %59 = sext i32 %58 to i64
  %60 = load i32, ptr %4, align 4, !tbaa !14
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 1, %.unpack207.unpack208.unpack
  %63 = mul nsw i64 %62, %.unpack207.unpack.unpack212
  %64 = mul nsw i64 %.unpack207.unpack208.unpack215, %.unpack207.unpack.unpack212
  %65 = sub nsw i64 %59, %.unpack207.unpack209.unpack
  %66 = mul nsw i64 %65, %64
  %67 = mul nsw i64 %.unpack207.unpack209.unpack218, %64
  %68 = sub nsw i64 %61, %.unpack207.unpack210.unpack
  %69 = mul nsw i64 %67, %68
  %70 = getelementptr double, ptr %.unpack, i64 %69
  %71 = getelementptr double, ptr %70, i64 %66
  %72 = getelementptr double, ptr %71, i64 %63
  %73 = load i32, ptr @_QMlu_dataEnx, align 4, !tbaa !10
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %.unpack207.unpack208.unpack
  %76 = mul nsw i64 %75, %.unpack207.unpack.unpack212
  %77 = getelementptr double, ptr %71, i64 %76
  %78 = load double, ptr %9, align 8, !tbaa !14
  %79 = sub nsw i64 1, %.unpack207.unpack.unpack
  %80 = getelementptr double, ptr %72, i64 %79
  store double %78, ptr %80, align 8, !tbaa !17
  %81 = load double, ptr %10, align 8, !tbaa !14
  %82 = getelementptr double, ptr %77, i64 %79
  store double %81, ptr %82, align 8, !tbaa !17
  %83 = load double, ptr %45, align 8, !tbaa !14
  %84 = sub nsw i64 2, %.unpack207.unpack.unpack
  %85 = getelementptr double, ptr %72, i64 %84
  store double %83, ptr %85, align 8, !tbaa !17
  %86 = load double, ptr %46, align 8, !tbaa !14
  %87 = getelementptr double, ptr %77, i64 %84
  store double %86, ptr %87, align 8, !tbaa !17
  %88 = load double, ptr %47, align 8, !tbaa !14
  %89 = sub nsw i64 3, %.unpack207.unpack.unpack
  %90 = getelementptr double, ptr %72, i64 %89
  store double %88, ptr %90, align 8, !tbaa !17
  %91 = load double, ptr %48, align 8, !tbaa !14
  %92 = getelementptr double, ptr %77, i64 %89
  store double %91, ptr %92, align 8, !tbaa !17
  %93 = load double, ptr %49, align 8, !tbaa !14
  %94 = sub nsw i64 4, %.unpack207.unpack.unpack
  %95 = getelementptr double, ptr %72, i64 %94
  store double %93, ptr %95, align 8, !tbaa !17
  %96 = load double, ptr %50, align 8, !tbaa !14
  %97 = getelementptr double, ptr %77, i64 %94
  store double %96, ptr %97, align 8, !tbaa !17
  %98 = load double, ptr %51, align 8, !tbaa !14
  %99 = sub nsw i64 5, %.unpack207.unpack.unpack
  %100 = getelementptr double, ptr %72, i64 %99
  store double %98, ptr %100, align 8, !tbaa !17
  %101 = load double, ptr %52, align 8, !tbaa !14
  %102 = getelementptr double, ptr %77, i64 %99
  store double %101, ptr %102, align 8, !tbaa !17
  %omp_collapsed.next89 = add nuw i32 %omp_collapsed.iv87351, 1
  %exitcond366.not = icmp eq i32 %omp_collapsed.iv87351, %reass.sub353
  br i1 %exitcond366.not, label %omp_collapsed.exit85, label %omp_collapsed.body83

omp_collapsed.body47:                             ; preds = %omp_collapsed.body47.preheader, %omp_collapsed.body47
  %omp_collapsed.iv51349 = phi i32 [ %omp_collapsed.next53, %omp_collapsed.body47 ], [ 0, %omp_collapsed.body47.preheader ]
  %103 = add i32 %omp_collapsed.iv51349, %29
  %.frozen367 = freeze i32 %103
  %omp_loop.tripcount28.frozen = freeze i32 %omp_loop.tripcount28
  %104 = udiv i32 %.frozen367, %omp_loop.tripcount28.frozen
  %105 = mul i32 %104, %omp_loop.tripcount28.frozen
  %.decomposed368 = sub i32 %.frozen367, %105
  %106 = add i32 %104, 1
  %107 = add nuw nsw i32 %.decomposed368, 1
  store i32 %106, ptr %6, align 4, !tbaa !14
  store i32 %107, ptr %5, align 4, !tbaa !14
  store i32 1, ptr %1, align 4, !tbaa !14
  call void @exact_(ptr nonnull %5, ptr nonnull %1, ptr nonnull %6, ptr nonnull %9) #1
  call void @exact_(ptr nonnull %5, ptr nonnull @_QMlu_dataEny, ptr nonnull %6, ptr nonnull %10) #1
  %.unpack248 = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !15
  %.unpack255.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !15
  %.unpack255.unpack.unpack260 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !15
  %.unpack255.unpack256.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !15
  %.unpack255.unpack256.unpack263 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !15
  %.unpack255.unpack257.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !15
  %.unpack255.unpack257.unpack266 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !15
  %.unpack255.unpack258.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !15
  %108 = load i32, ptr %5, align 4, !tbaa !14
  %109 = sext i32 %108 to i64
  %110 = load i32, ptr %6, align 4, !tbaa !14
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %109, %.unpack255.unpack256.unpack
  %113 = mul nsw i64 %112, %.unpack255.unpack.unpack260
  %114 = mul nsw i64 %.unpack255.unpack256.unpack263, %.unpack255.unpack.unpack260
  %115 = sub nsw i64 1, %.unpack255.unpack257.unpack
  %116 = mul nsw i64 %115, %114
  %117 = mul nsw i64 %.unpack255.unpack257.unpack266, %114
  %118 = sub nsw i64 %111, %.unpack255.unpack258.unpack
  %119 = mul nsw i64 %117, %118
  %120 = getelementptr double, ptr %.unpack248, i64 %119
  %121 = getelementptr double, ptr %120, i64 %116
  %122 = getelementptr double, ptr %121, i64 %113
  %123 = load i32, ptr @_QMlu_dataEny, align 4, !tbaa !4
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %124, %.unpack255.unpack257.unpack
  %126 = mul nsw i64 %125, %114
  %127 = getelementptr double, ptr %120, i64 %126
  %128 = getelementptr double, ptr %127, i64 %113
  %129 = load double, ptr %9, align 8, !tbaa !14
  %130 = sub nsw i64 1, %.unpack255.unpack.unpack
  %131 = getelementptr double, ptr %122, i64 %130
  store double %129, ptr %131, align 8, !tbaa !17
  %132 = load double, ptr %10, align 8, !tbaa !14
  %133 = getelementptr double, ptr %128, i64 %130
  store double %132, ptr %133, align 8, !tbaa !17
  %134 = load double, ptr %31, align 8, !tbaa !14
  %135 = sub nsw i64 2, %.unpack255.unpack.unpack
  %136 = getelementptr double, ptr %122, i64 %135
  store double %134, ptr %136, align 8, !tbaa !17
  %137 = load double, ptr %32, align 8, !tbaa !14
  %138 = getelementptr double, ptr %128, i64 %135
  store double %137, ptr %138, align 8, !tbaa !17
  %139 = load double, ptr %33, align 8, !tbaa !14
  %140 = sub nsw i64 3, %.unpack255.unpack.unpack
  %141 = getelementptr double, ptr %122, i64 %140
  store double %139, ptr %141, align 8, !tbaa !17
  %142 = load double, ptr %34, align 8, !tbaa !14
  %143 = getelementptr double, ptr %128, i64 %140
  store double %142, ptr %143, align 8, !tbaa !17
  %144 = load double, ptr %35, align 8, !tbaa !14
  %145 = sub nsw i64 4, %.unpack255.unpack.unpack
  %146 = getelementptr double, ptr %122, i64 %145
  store double %144, ptr %146, align 8, !tbaa !17
  %147 = load double, ptr %36, align 8, !tbaa !14
  %148 = getelementptr double, ptr %128, i64 %145
  store double %147, ptr %148, align 8, !tbaa !17
  %149 = load double, ptr %37, align 8, !tbaa !14
  %150 = sub nsw i64 5, %.unpack255.unpack.unpack
  %151 = getelementptr double, ptr %122, i64 %150
  store double %149, ptr %151, align 8, !tbaa !17
  %152 = load double, ptr %38, align 8, !tbaa !14
  %153 = getelementptr double, ptr %128, i64 %150
  store double %152, ptr %153, align 8, !tbaa !17
  %omp_collapsed.next53 = add nuw i32 %omp_collapsed.iv51349, 1
  %exitcond361.not = icmp eq i32 %omp_collapsed.iv51349, %reass.sub352
  br i1 %exitcond361.not, label %omp_collapsed.exit49, label %omp_collapsed.body47

omp_collapsed.body:                               ; preds = %omp_collapsed.body.preheader, %omp_collapsed.body
  %omp_collapsed.iv347 = phi i32 [ %omp_collapsed.next, %omp_collapsed.body ], [ 0, %omp_collapsed.body.preheader ]
  %154 = add i32 %omp_collapsed.iv347, %15
  %.frozen369 = freeze i32 %154
  %omp_loop.tripcount7.frozen = freeze i32 %omp_loop.tripcount7
  %155 = udiv i32 %.frozen369, %omp_loop.tripcount7.frozen
  %156 = mul i32 %155, %omp_loop.tripcount7.frozen
  %.decomposed370 = sub i32 %.frozen369, %156
  %157 = add i32 %155, 1
  %158 = add nuw nsw i32 %.decomposed370, 1
  store i32 %157, ptr %8, align 4, !tbaa !14
  store i32 %158, ptr %7, align 4, !tbaa !14
  store i32 1, ptr %2, align 4, !tbaa !14
  call void @exact_(ptr nonnull %7, ptr nonnull %8, ptr nonnull %2, ptr nonnull %9) #1
  call void @exact_(ptr nonnull %7, ptr nonnull %8, ptr nonnull @_QMlu_dataEnz, ptr nonnull %10) #1
  %.unpack296 = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !15
  %.unpack303.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !15
  %.unpack303.unpack.unpack308 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !15
  %.unpack303.unpack304.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !15
  %.unpack303.unpack304.unpack311 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !15
  %.unpack303.unpack305.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !15
  %.unpack303.unpack305.unpack314 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !15
  %.unpack303.unpack306.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !15
  %159 = load i32, ptr %7, align 4, !tbaa !14
  %160 = sext i32 %159 to i64
  %161 = load i32, ptr %8, align 4, !tbaa !14
  %162 = sext i32 %161 to i64
  %163 = sub nsw i64 %160, %.unpack303.unpack304.unpack
  %164 = mul nsw i64 %163, %.unpack303.unpack.unpack308
  %165 = mul nsw i64 %.unpack303.unpack304.unpack311, %.unpack303.unpack.unpack308
  %166 = sub nsw i64 %162, %.unpack303.unpack305.unpack
  %167 = mul nsw i64 %166, %165
  %168 = mul nsw i64 %.unpack303.unpack305.unpack314, %165
  %169 = sub nsw i64 1, %.unpack303.unpack306.unpack
  %170 = mul nsw i64 %169, %168
  %171 = getelementptr double, ptr %.unpack296, i64 %170
  %172 = getelementptr double, ptr %171, i64 %167
  %173 = getelementptr double, ptr %172, i64 %164
  %174 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !12
  %175 = sext i32 %174 to i64
  %176 = sub nsw i64 %175, %.unpack303.unpack306.unpack
  %177 = mul nsw i64 %176, %168
  %178 = getelementptr double, ptr %.unpack296, i64 %177
  %179 = getelementptr double, ptr %178, i64 %167
  %180 = getelementptr double, ptr %179, i64 %164
  %181 = load double, ptr %9, align 8, !tbaa !14
  %182 = sub nsw i64 1, %.unpack303.unpack.unpack
  %183 = getelementptr double, ptr %173, i64 %182
  store double %181, ptr %183, align 8, !tbaa !17
  %184 = load double, ptr %10, align 8, !tbaa !14
  %185 = getelementptr double, ptr %180, i64 %182
  store double %184, ptr %185, align 8, !tbaa !17
  %186 = load double, ptr %17, align 8, !tbaa !14
  %187 = sub nsw i64 2, %.unpack303.unpack.unpack
  %188 = getelementptr double, ptr %173, i64 %187
  store double %186, ptr %188, align 8, !tbaa !17
  %189 = load double, ptr %18, align 8, !tbaa !14
  %190 = getelementptr double, ptr %180, i64 %187
  store double %189, ptr %190, align 8, !tbaa !17
  %191 = load double, ptr %19, align 8, !tbaa !14
  %192 = sub nsw i64 3, %.unpack303.unpack.unpack
  %193 = getelementptr double, ptr %173, i64 %192
  store double %191, ptr %193, align 8, !tbaa !17
  %194 = load double, ptr %20, align 8, !tbaa !14
  %195 = getelementptr double, ptr %180, i64 %192
  store double %194, ptr %195, align 8, !tbaa !17
  %196 = load double, ptr %21, align 8, !tbaa !14
  %197 = sub nsw i64 4, %.unpack303.unpack.unpack
  %198 = getelementptr double, ptr %173, i64 %197
  store double %196, ptr %198, align 8, !tbaa !17
  %199 = load double, ptr %22, align 8, !tbaa !14
  %200 = getelementptr double, ptr %180, i64 %197
  store double %199, ptr %200, align 8, !tbaa !17
  %201 = load double, ptr %23, align 8, !tbaa !14
  %202 = sub nsw i64 5, %.unpack303.unpack.unpack
  %203 = getelementptr double, ptr %173, i64 %202
  store double %201, ptr %203, align 8, !tbaa !17
  %204 = load double, ptr %24, align 8, !tbaa !14
  %205 = getelementptr double, ptr %180, i64 %202
  store double %204, ptr %205, align 8, !tbaa !17
  %omp_collapsed.next = add nuw i32 %omp_collapsed.iv347, 1
  %exitcond.not = icmp eq i32 %omp_collapsed.iv347, %reass.sub
  br i1 %exitcond.not, label %omp_collapsed.exit, label %omp_collapsed.body
}

declare void @exact_(ptr, ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !callback !20 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind }
attributes #2 = { convergent nounwind }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QMlu_dataEny", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPsetbv"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QMlu_dataEnx", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"global data/_QMlu_dataEnz", !6, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"descriptor member", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"direct data/_QMlu_dataEu", !19, i64 0}
!19 = !{!"direct data", !7, i64 0}
!20 = !{!21}
!21 = !{i64 2, i64 -1, i64 -1, i1 true}
