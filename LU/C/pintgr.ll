; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMlu_dataEa = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEb = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEc = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEd = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEdeta = external local_unnamed_addr global double
@_QMlu_dataEdxi = external local_unnamed_addr global double
@_QMlu_dataEdzeta = external local_unnamed_addr global double
@_QMlu_dataEflux = external global [162 x [5 x double]]
@_QMlu_dataEfrc = external local_unnamed_addr global double
@_QMlu_dataEii1 = external local_unnamed_addr global i32
@_QMlu_dataEii2 = external local_unnamed_addr global i32
@_QMlu_dataEji1 = external local_unnamed_addr global i32
@_QMlu_dataEji2 = external local_unnamed_addr global i32
@_QMlu_dataEki1 = external local_unnamed_addr global i32
@_QMlu_dataEki2 = external local_unnamed_addr global i32
@_QMlu_dataEphi1 = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }
@_QMlu_dataEphi2 = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }
@_QMlu_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8

; Function Attrs: nounwind
define void @pintgr_() local_unnamed_addr #0 {
entry:
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %omp_global_thread_num5 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %0 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEa, i64 32400, ptr nonnull @_QMlu_dataEa.cache)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEb, i64 32400, ptr nonnull @_QMlu_dataEb.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEc, i64 32400, ptr nonnull @_QMlu_dataEc.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEd, i64 32400, ptr nonnull @_QMlu_dataEd.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEflux, i64 6480, ptr nonnull @_QMlu_dataEflux.cache)
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, ptr @_QMlu_dataEii1, align 4, !tbaa !4
  store i32 %14, ptr %8, align 4, !tbaa !10
  %15 = load i32, ptr @_QMlu_dataEii2, align 4, !tbaa !11
  store i32 %15, ptr %9, align 4, !tbaa !10
  %16 = load i32, ptr @_QMlu_dataEji1, align 4, !tbaa !13
  store i32 %16, ptr %11, align 4, !tbaa !10
  %17 = load i32, ptr @_QMlu_dataEji2, align 4, !tbaa !15
  store i32 %17, ptr %12, align 4, !tbaa !10
  %18 = add i32 %15, -1
  store i32 %18, ptr %10, align 4, !tbaa !10
  %19 = add i32 %17, -1
  store i32 %19, ptr %13, align 4, !tbaa !10
  store ptr %11, ptr %structArg, align 8
  %gep_298 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %12, ptr %gep_298, align 8
  %gep_299 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %8, ptr %gep_299, align 8
  %gep_300 = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %9, ptr %gep_300, align 8
  %gep_301 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %13, ptr %gep_301, align 8
  %gep_302 = getelementptr inbounds i8, ptr %structArg, i64 40
  store ptr %10, ptr %gep_302, align 8
  %gep_303 = getelementptr inbounds i8, ptr %structArg, i64 48
  store ptr %5, ptr %gep_303, align 8
  %gep_304 = getelementptr inbounds i8, ptr %structArg, i64 56
  store ptr %6, ptr %gep_304, align 8
  %gep_305 = getelementptr inbounds i8, ptr %structArg, i64 64
  store ptr %7, ptr %gep_305, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @pintgr_..omp_par, ptr nonnull %structArg)
  %20 = load double, ptr %5, align 8, !tbaa !10
  %21 = load double, ptr %6, align 8, !tbaa !10
  %22 = fadd contract double %20, %21
  %23 = load double, ptr %7, align 8, !tbaa !10
  %24 = fadd contract double %22, %23
  %25 = fmul contract double %24, 2.500000e-01
  store double %25, ptr @_QMlu_dataEfrc, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind
define internal void @pintgr_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #0 {
omp.par.entry:
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
  %gep_11 = getelementptr i8, ptr %0, i64 48
  %loadgep_12 = load ptr, ptr %gep_11, align 8
  %gep_13 = getelementptr i8, ptr %0, i64 56
  %loadgep_14 = load ptr, ptr %gep_13, align 8
  %gep_15 = getelementptr i8, ptr %0, i64 64
  %loadgep_16 = load ptr, ptr %gep_15, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %1 = alloca double, align 8
  %p.lastiter50 = alloca i32, align 4
  %p.lowerbound51 = alloca i32, align 4
  %p.upperbound52 = alloca i32, align 4
  %p.stride53 = alloca i32, align 4
  %red.array = alloca [1 x ptr], align 8
  %p.lastiter89 = alloca i32, align 4
  %p.lowerbound90 = alloca i32, align 4
  %p.upperbound91 = alloca i32, align 4
  %p.stride92 = alloca i32, align 4
  %p.lastiter121 = alloca i32, align 4
  %p.lowerbound122 = alloca i32, align 4
  %p.upperbound123 = alloca i32, align 4
  %p.stride124 = alloca i32, align 4
  %2 = alloca double, align 8
  %p.lastiter159 = alloca i32, align 4
  %p.lowerbound160 = alloca i32, align 4
  %p.upperbound161 = alloca i32, align 4
  %p.stride162 = alloca i32, align 4
  %red.array166 = alloca [1 x ptr], align 8
  %p.lastiter207 = alloca i32, align 4
  %p.lowerbound208 = alloca i32, align 4
  %p.upperbound209 = alloca i32, align 4
  %p.stride210 = alloca i32, align 4
  %p.lastiter239 = alloca i32, align 4
  %p.lowerbound240 = alloca i32, align 4
  %p.upperbound241 = alloca i32, align 4
  %p.stride242 = alloca i32, align 4
  %3 = alloca double, align 8
  %p.lastiter277 = alloca i32, align 4
  %p.lowerbound278 = alloca i32, align 4
  %p.upperbound279 = alloca i32, align 4
  %p.stride280 = alloca i32, align 4
  %red.array284 = alloca [1 x ptr], align 8
  %4 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %5 = load i32, ptr %loadgep_2, align 4, !tbaa !10
  %6 = load i32, ptr %loadgep_4, align 4, !tbaa !10
  %7 = load i32, ptr %loadgep_6, align 4, !tbaa !10
  %8 = icmp slt i32 %5, %4
  %reass.sub945 = sub i32 %5, %4
  %9 = add i32 %reass.sub945, 1
  %omp_loop.tripcount = select i1 %8, i32 0, i32 %9
  %10 = sub nsw i32 %7, %6
  %11 = icmp slt i32 %7, %6
  %12 = add i32 %10, 1
  %omp_loop.tripcount7 = select i1 %11, i32 0, i32 %12
  %13 = mul nuw i32 %omp_loop.tripcount7, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num293 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num293, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %15 = load i32, ptr %p.lowerbound, align 4
  %16 = load i32, ptr %p.upperbound, align 4
  %reass.sub946 = sub i32 %16, %15
  %omp_collapsed.cmp924.not = icmp eq i32 %reass.sub946, -1
  br i1 %omp_collapsed.cmp924.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %17 = load i32, ptr @_QMlu_dataEki1, align 4, !tbaa !19
  %.unpack819 = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !21
  %.unpack826.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !21
  %.unpack826.unpack.unpack831 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack826.unpack827.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !21
  %.unpack826.unpack827.unpack834 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !21
  %.unpack826.unpack828.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !21
  %.unpack826.unpack828.unpack837 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !21
  %.unpack826.unpack829.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !21
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %.unpack826.unpack827.unpack834, %.unpack826.unpack.unpack831
  %20 = mul nsw i64 %.unpack826.unpack828.unpack837, %19
  %21 = sub nsw i64 %18, %.unpack826.unpack829.unpack
  %22 = mul nsw i64 %21, %20
  %23 = getelementptr double, ptr %.unpack819, i64 %22
  %.unpack848 = load ptr, ptr @_QMlu_dataEphi1, align 8, !tbaa !21
  %.unpack855.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7), align 8, !tbaa !21
  %.unpack855.unpack.unpack858 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack855.unpack856.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 1), align 8, !tbaa !21
  %24 = load i32, ptr @_QMlu_dataEki2, align 4, !tbaa !23
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %.unpack826.unpack829.unpack
  %27 = mul nsw i64 %26, %20
  %28 = getelementptr double, ptr %.unpack819, i64 %27
  %.unpack893 = load ptr, ptr @_QMlu_dataEphi2, align 8, !tbaa !21
  %.unpack900.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7), align 8, !tbaa !21
  %.unpack900.unpack.unpack903 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack900.unpack901.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 1), align 8, !tbaa !21
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp_collapsed.body, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num293)
  %29 = call i32 @__kmpc_single(ptr nonnull @1, i32 %omp_global_thread_num293)
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %omp_region.end, label %omp.single.region

omp_region.end:                                   ; preds = %omp_collapsed.exit, %omp.single.region
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num293)
  %30 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %31 = load i32, ptr %loadgep_8, align 4, !tbaa !10
  %32 = load i32, ptr %loadgep_4, align 4, !tbaa !10
  %33 = load i32, ptr %loadgep_10, align 4, !tbaa !10
  store double 0.000000e+00, ptr %1, align 8
  %34 = icmp slt i32 %31, %30
  %reass.sub947 = sub i32 %31, %30
  %35 = add i32 %reass.sub947, 1
  %omp_loop.tripcount23 = select i1 %34, i32 0, i32 %35
  %36 = sub nsw i32 %33, %32
  %37 = icmp slt i32 %33, %32
  %38 = add i32 %36, 1
  %omp_loop.tripcount27 = select i1 %37, i32 0, i32 %38
  %39 = mul nuw i32 %omp_loop.tripcount27, %omp_loop.tripcount23
  store i32 0, ptr %p.lowerbound51, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %p.upperbound52, align 4
  store i32 1, ptr %p.stride53, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num293, i32 34, ptr nonnull %p.lastiter50, ptr nonnull %p.lowerbound51, ptr nonnull %p.upperbound52, ptr nonnull %p.stride53, i32 1, i32 0)
  %41 = load i32, ptr %p.lowerbound51, align 4
  %42 = load i32, ptr %p.upperbound52, align 4
  %reass.sub948 = sub i32 %42, %41
  %omp_collapsed.cmp48926.not = icmp eq i32 %reass.sub948, -1
  br i1 %omp_collapsed.cmp48926.not, label %omp_collapsed.exit45, label %omp_collapsed.body43.lr.ph

omp_collapsed.body43.lr.ph:                       ; preds = %omp_region.end
  %.promoted = load double, ptr %1, align 8, !tbaa !25
  %.unpack787 = load ptr, ptr @_QMlu_dataEphi1, align 8, !tbaa !21
  %.unpack794.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7), align 8, !tbaa !21
  %.unpack794.unpack.unpack797 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack794.unpack795.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 1), align 8, !tbaa !21
  %.unpack803 = load ptr, ptr @_QMlu_dataEphi2, align 8, !tbaa !21
  %.unpack810.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7), align 8, !tbaa !21
  %.unpack810.unpack.unpack813 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack810.unpack811.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 1), align 8, !tbaa !21
  br label %omp_collapsed.body43

omp_collapsed.header41.omp_collapsed.exit45_crit_edge: ; preds = %omp_collapsed.body43
  store double %477, ptr %1, align 8, !tbaa !25
  br label %omp_collapsed.exit45

omp_collapsed.exit45:                             ; preds = %omp_collapsed.header41.omp_collapsed.exit45_crit_edge, %omp_region.end
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num293)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num293)
  store ptr %1, ptr %red.array, align 8
  %reduce = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num293, i32 1, i64 8, ptr nonnull %red.array, ptr nonnull @.omp.reduction.func, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce, 1
  br i1 %cond, label %reduce.switch.nonatomic, label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_collapsed.exit45
  %red.value.0 = load double, ptr %loadgep_12, align 8
  %red.private.value.0 = load double, ptr %1, align 8
  %43 = fadd contract double %red.value.0, %red.private.value.0
  store double %43, ptr %loadgep_12, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num293, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %omp_collapsed.exit45, %reduce.switch.nonatomic
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num293)
  %44 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num293)
  %.not540 = icmp eq i32 %44, 0
  br i1 %.not540, label %omp_region.end59, label %omp.master.region

omp_region.end59:                                 ; preds = %reduce.finalize, %omp.master.region
  %45 = load i32, ptr @_QMlu_dataEki1, align 4, !tbaa !19
  %46 = load i32, ptr @_QMlu_dataEki2, align 4, !tbaa !23
  %47 = load i32, ptr %loadgep_4, align 4, !tbaa !10
  %48 = load i32, ptr %loadgep_6, align 4, !tbaa !10
  %49 = icmp slt i32 %46, %45
  %reass.sub949 = sub i32 %46, %45
  %50 = add i32 %reass.sub949, 1
  %omp_loop.tripcount62 = select i1 %49, i32 0, i32 %50
  %51 = sub nsw i32 %48, %47
  %52 = icmp slt i32 %48, %47
  %53 = add i32 %51, 1
  %omp_loop.tripcount66 = select i1 %52, i32 0, i32 %53
  %54 = mul nuw i32 %omp_loop.tripcount66, %omp_loop.tripcount62
  store i32 0, ptr %p.lowerbound90, align 4
  %55 = add i32 %54, -1
  store i32 %55, ptr %p.upperbound91, align 4
  store i32 1, ptr %p.stride92, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num293, i32 34, ptr nonnull %p.lastiter89, ptr nonnull %p.lowerbound90, ptr nonnull %p.upperbound91, ptr nonnull %p.stride92, i32 1, i32 0)
  %56 = load i32, ptr %p.lowerbound90, align 4
  %57 = load i32, ptr %p.upperbound91, align 4
  %reass.sub950 = sub i32 %57, %56
  %omp_collapsed.cmp87928.not = icmp eq i32 %reass.sub950, -1
  br i1 %omp_collapsed.cmp87928.not, label %omp_collapsed.exit84, label %omp_collapsed.body82.lr.ph

omp_collapsed.body82.lr.ph:                       ; preds = %omp_region.end59
  %.unpack742 = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !21
  %.unpack749.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !21
  %.unpack749.unpack.unpack754 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack749.unpack750.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !21
  %.unpack749.unpack750.unpack757 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !21
  %.unpack749.unpack751.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !21
  %.unpack749.unpack751.unpack760 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !21
  %.unpack749.unpack752.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !21
  %58 = mul nsw i64 %.unpack749.unpack750.unpack757, %.unpack749.unpack.unpack754
  %59 = mul nsw i64 %.unpack749.unpack751.unpack760, %58
  %.unpack771 = load ptr, ptr @_QMlu_dataEphi1, align 8, !tbaa !21
  %.unpack778.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7), align 8, !tbaa !21
  %.unpack778.unpack.unpack781 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack778.unpack779.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 1), align 8, !tbaa !21
  br label %omp_collapsed.body82

omp_collapsed.exit84:                             ; preds = %omp_collapsed.body82, %omp_region.end59
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num293)
  %60 = load i32, ptr @_QMlu_dataEki1, align 4, !tbaa !19
  %61 = load i32, ptr @_QMlu_dataEki2, align 4, !tbaa !23
  %62 = load i32, ptr %loadgep_4, align 4, !tbaa !10
  %63 = load i32, ptr %loadgep_6, align 4, !tbaa !10
  %64 = icmp slt i32 %61, %60
  %reass.sub951 = sub i32 %61, %60
  %65 = add i32 %reass.sub951, 1
  %omp_loop.tripcount94 = select i1 %64, i32 0, i32 %65
  %66 = sub nsw i32 %63, %62
  %67 = icmp slt i32 %63, %62
  %68 = add i32 %66, 1
  %omp_loop.tripcount98 = select i1 %67, i32 0, i32 %68
  %69 = mul nuw i32 %omp_loop.tripcount98, %omp_loop.tripcount94
  store i32 0, ptr %p.lowerbound122, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %p.upperbound123, align 4
  store i32 1, ptr %p.stride124, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num293, i32 34, ptr nonnull %p.lastiter121, ptr nonnull %p.lowerbound122, ptr nonnull %p.upperbound123, ptr nonnull %p.stride124, i32 1, i32 0)
  %71 = load i32, ptr %p.lowerbound122, align 4
  %72 = load i32, ptr %p.upperbound123, align 4
  %reass.sub952 = sub i32 %72, %71
  %omp_collapsed.cmp119930.not = icmp eq i32 %reass.sub952, -1
  br i1 %omp_collapsed.cmp119930.not, label %omp_collapsed.exit116, label %omp_collapsed.body114.lr.ph

omp_collapsed.body114.lr.ph:                      ; preds = %omp_collapsed.exit84
  %.unpack697 = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !21
  %.unpack704.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !21
  %.unpack704.unpack.unpack709 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack704.unpack705.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !21
  %.unpack704.unpack705.unpack712 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !21
  %.unpack704.unpack706.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !21
  %.unpack704.unpack706.unpack715 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !21
  %.unpack704.unpack707.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !21
  %73 = mul nsw i64 %.unpack704.unpack705.unpack712, %.unpack704.unpack.unpack709
  %74 = mul nsw i64 %.unpack704.unpack706.unpack715, %73
  %.unpack726 = load ptr, ptr @_QMlu_dataEphi2, align 8, !tbaa !21
  %.unpack733.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7), align 8, !tbaa !21
  %.unpack733.unpack.unpack736 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack733.unpack734.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 1), align 8, !tbaa !21
  br label %omp_collapsed.body114

omp_collapsed.exit116:                            ; preds = %omp_collapsed.body114, %omp_collapsed.exit84
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num293)
  %75 = call i32 @__kmpc_single(ptr nonnull @1, i32 %omp_global_thread_num293)
  %.not541 = icmp eq i32 %75, 0
  br i1 %.not541, label %omp_region.end127, label %omp.single.region130

omp_region.end127:                                ; preds = %omp_collapsed.exit116, %omp.single.region130
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num293)
  %76 = load i32, ptr @_QMlu_dataEki1, align 4, !tbaa !19
  %77 = load i32, ptr @_QMlu_dataEki2, align 4, !tbaa !23
  %78 = add i32 %77, -1
  %79 = load i32, ptr %loadgep_4, align 4, !tbaa !10
  %80 = load i32, ptr %loadgep_10, align 4, !tbaa !10
  %81 = icmp slt i32 %78, %76
  %82 = sub i32 %77, %76
  %omp_loop.tripcount132 = select i1 %81, i32 0, i32 %82
  %83 = sub nsw i32 %80, %79
  %84 = icmp slt i32 %80, %79
  %85 = add i32 %83, 1
  %omp_loop.tripcount136 = select i1 %84, i32 0, i32 %85
  %86 = mul nuw i32 %omp_loop.tripcount136, %omp_loop.tripcount132
  store i32 0, ptr %p.lowerbound160, align 4
  %87 = add i32 %86, -1
  store i32 %87, ptr %p.upperbound161, align 4
  store i32 1, ptr %p.stride162, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num293, i32 34, ptr nonnull %p.lastiter159, ptr nonnull %p.lowerbound160, ptr nonnull %p.upperbound161, ptr nonnull %p.stride162, i32 1, i32 0)
  %88 = load i32, ptr %p.lowerbound160, align 4
  %89 = load i32, ptr %p.upperbound161, align 4
  %reass.sub953 = sub i32 %89, %88
  %omp_collapsed.cmp157934.not = icmp eq i32 %reass.sub953, -1
  br i1 %omp_collapsed.cmp157934.not, label %omp_collapsed.exit154, label %omp_collapsed.body152.lr.ph

omp_collapsed.body152.lr.ph:                      ; preds = %omp_region.end127
  %.unpack665 = load ptr, ptr @_QMlu_dataEphi1, align 8, !tbaa !21
  %.unpack672.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7), align 8, !tbaa !21
  %.unpack672.unpack.unpack675 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack672.unpack673.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 1), align 8, !tbaa !21
  %.unpack681 = load ptr, ptr @_QMlu_dataEphi2, align 8, !tbaa !21
  %.unpack688.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7), align 8, !tbaa !21
  %.unpack688.unpack.unpack691 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack688.unpack689.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 1), align 8, !tbaa !21
  br label %omp_collapsed.body152

omp_collapsed.exit154:                            ; preds = %omp_collapsed.body152, %omp_region.end127
  %.lcssa933 = phi double [ 0.000000e+00, %omp_region.end127 ], [ %336, %omp_collapsed.body152 ]
  store double %.lcssa933, ptr %2, align 8, !tbaa !28
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num293)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num293)
  store ptr %2, ptr %red.array166, align 8
  %reduce169 = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num293, i32 1, i64 8, ptr nonnull %red.array166, ptr nonnull @.omp.reduction.func.1, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond17 = icmp eq i32 %reduce169, 1
  br i1 %cond17, label %reduce.switch.nonatomic170, label %reduce.finalize165

reduce.switch.nonatomic170:                       ; preds = %omp_collapsed.exit154
  %red.value.0172 = load double, ptr %loadgep_14, align 8
  %red.private.value.0173 = load double, ptr %2, align 8
  %90 = fadd contract double %red.value.0172, %red.private.value.0173
  store double %90, ptr %loadgep_14, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num293, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize165

reduce.finalize165:                               ; preds = %omp_collapsed.exit154, %reduce.switch.nonatomic170
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num293)
  %91 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num293)
  %.not542 = icmp eq i32 %91, 0
  br i1 %.not542, label %omp_region.end176, label %omp.master.region179

omp_region.end176:                                ; preds = %reduce.finalize165, %omp.master.region179
  %92 = load i32, ptr @_QMlu_dataEki1, align 4, !tbaa !19
  %93 = load i32, ptr @_QMlu_dataEki2, align 4, !tbaa !23
  %94 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %95 = load i32, ptr %loadgep_2, align 4, !tbaa !10
  %96 = icmp slt i32 %93, %92
  %reass.sub954 = sub i32 %93, %92
  %97 = add i32 %reass.sub954, 1
  %omp_loop.tripcount180 = select i1 %96, i32 0, i32 %97
  %98 = sub nsw i32 %95, %94
  %99 = icmp slt i32 %95, %94
  %100 = add i32 %98, 1
  %omp_loop.tripcount184 = select i1 %99, i32 0, i32 %100
  %101 = mul nuw i32 %omp_loop.tripcount184, %omp_loop.tripcount180
  store i32 0, ptr %p.lowerbound208, align 4
  %102 = add i32 %101, -1
  store i32 %102, ptr %p.upperbound209, align 4
  store i32 1, ptr %p.stride210, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num293, i32 34, ptr nonnull %p.lastiter207, ptr nonnull %p.lowerbound208, ptr nonnull %p.upperbound209, ptr nonnull %p.stride210, i32 1, i32 0)
  %103 = load i32, ptr %p.lowerbound208, align 4
  %104 = load i32, ptr %p.upperbound209, align 4
  %reass.sub955 = sub i32 %104, %103
  %omp_collapsed.cmp205936.not = icmp eq i32 %reass.sub955, -1
  br i1 %omp_collapsed.cmp205936.not, label %omp_collapsed.exit202, label %omp_collapsed.body200.lr.ph

omp_collapsed.body200.lr.ph:                      ; preds = %omp_region.end176
  %.unpack620 = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !21
  %.unpack627.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !21
  %.unpack627.unpack.unpack632 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack627.unpack628.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !21
  %.unpack627.unpack628.unpack635 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !21
  %.unpack627.unpack629.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !21
  %.unpack627.unpack629.unpack638 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !21
  %.unpack627.unpack630.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !21
  %105 = mul nsw i64 %.unpack627.unpack628.unpack635, %.unpack627.unpack.unpack632
  %106 = mul nsw i64 %.unpack627.unpack629.unpack638, %105
  %.unpack649 = load ptr, ptr @_QMlu_dataEphi1, align 8, !tbaa !21
  %.unpack656.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7), align 8, !tbaa !21
  %.unpack656.unpack.unpack659 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack656.unpack657.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 1), align 8, !tbaa !21
  br label %omp_collapsed.body200

omp_collapsed.exit202:                            ; preds = %omp_collapsed.body200, %omp_region.end176
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num293)
  %107 = load i32, ptr @_QMlu_dataEki1, align 4, !tbaa !19
  %108 = load i32, ptr @_QMlu_dataEki2, align 4, !tbaa !23
  %109 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %110 = load i32, ptr %loadgep_2, align 4, !tbaa !10
  %111 = icmp slt i32 %108, %107
  %reass.sub956 = sub i32 %108, %107
  %112 = add i32 %reass.sub956, 1
  %omp_loop.tripcount212 = select i1 %111, i32 0, i32 %112
  %113 = sub nsw i32 %110, %109
  %114 = icmp slt i32 %110, %109
  %115 = add i32 %113, 1
  %omp_loop.tripcount216 = select i1 %114, i32 0, i32 %115
  %116 = mul nuw i32 %omp_loop.tripcount216, %omp_loop.tripcount212
  store i32 0, ptr %p.lowerbound240, align 4
  %117 = add i32 %116, -1
  store i32 %117, ptr %p.upperbound241, align 4
  store i32 1, ptr %p.stride242, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num293, i32 34, ptr nonnull %p.lastiter239, ptr nonnull %p.lowerbound240, ptr nonnull %p.upperbound241, ptr nonnull %p.stride242, i32 1, i32 0)
  %118 = load i32, ptr %p.lowerbound240, align 4
  %119 = load i32, ptr %p.upperbound241, align 4
  %reass.sub957 = sub i32 %119, %118
  %omp_collapsed.cmp237938.not = icmp eq i32 %reass.sub957, -1
  br i1 %omp_collapsed.cmp237938.not, label %omp_collapsed.exit234, label %omp_collapsed.body232.lr.ph

omp_collapsed.body232.lr.ph:                      ; preds = %omp_collapsed.exit202
  %.unpack576 = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !21
  %.unpack583.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !21
  %.unpack583.unpack.unpack588 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack583.unpack584.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !21
  %.unpack583.unpack584.unpack591 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !21
  %.unpack583.unpack585.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !21
  %.unpack583.unpack585.unpack594 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !21
  %.unpack583.unpack586.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !21
  %120 = mul nsw i64 %.unpack583.unpack584.unpack591, %.unpack583.unpack.unpack588
  %121 = mul nsw i64 %.unpack583.unpack585.unpack594, %120
  %.unpack604 = load ptr, ptr @_QMlu_dataEphi2, align 8, !tbaa !21
  %.unpack611.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7), align 8, !tbaa !21
  %.unpack611.unpack.unpack614 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack611.unpack612.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 1), align 8, !tbaa !21
  br label %omp_collapsed.body232

omp_collapsed.exit234:                            ; preds = %omp_collapsed.body232, %omp_collapsed.exit202
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num293)
  %122 = call i32 @__kmpc_single(ptr nonnull @1, i32 %omp_global_thread_num293)
  %.not543 = icmp eq i32 %122, 0
  br i1 %.not543, label %omp_region.end245, label %omp.single.region248

omp_region.end245:                                ; preds = %omp_collapsed.exit234, %omp.single.region248
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num293)
  %123 = load i32, ptr @_QMlu_dataEki1, align 4, !tbaa !19
  %124 = load i32, ptr @_QMlu_dataEki2, align 4, !tbaa !23
  %125 = add i32 %124, -1
  %126 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %127 = load i32, ptr %loadgep_8, align 4, !tbaa !10
  %128 = icmp slt i32 %125, %123
  %129 = sub i32 %124, %123
  %omp_loop.tripcount250 = select i1 %128, i32 0, i32 %129
  %130 = sub nsw i32 %127, %126
  %131 = icmp slt i32 %127, %126
  %132 = add i32 %130, 1
  %omp_loop.tripcount254 = select i1 %131, i32 0, i32 %132
  %133 = mul nuw i32 %omp_loop.tripcount254, %omp_loop.tripcount250
  store i32 0, ptr %p.lowerbound278, align 4
  %134 = add i32 %133, -1
  store i32 %134, ptr %p.upperbound279, align 4
  store i32 1, ptr %p.stride280, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num293, i32 34, ptr nonnull %p.lastiter277, ptr nonnull %p.lowerbound278, ptr nonnull %p.upperbound279, ptr nonnull %p.stride280, i32 1, i32 0)
  %135 = load i32, ptr %p.lowerbound278, align 4
  %136 = load i32, ptr %p.upperbound279, align 4
  %reass.sub958 = sub i32 %136, %135
  %omp_collapsed.cmp275942.not = icmp eq i32 %reass.sub958, -1
  br i1 %omp_collapsed.cmp275942.not, label %omp_collapsed.exit272, label %omp_collapsed.body270.lr.ph

omp_collapsed.body270.lr.ph:                      ; preds = %omp_region.end245
  %.unpack = load ptr, ptr @_QMlu_dataEphi1, align 8, !tbaa !21
  %.unpack551.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7), align 8, !tbaa !21
  %.unpack551.unpack.unpack554 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack551.unpack552.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi1, i64 0, i32 7, i64 1), align 8, !tbaa !21
  %.unpack560 = load ptr, ptr @_QMlu_dataEphi2, align 8, !tbaa !21
  %.unpack567.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7), align 8, !tbaa !21
  %.unpack567.unpack.unpack570 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !21
  %.unpack567.unpack568.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] }, ptr @_QMlu_dataEphi2, i64 0, i32 7, i64 1), align 8, !tbaa !21
  br label %omp_collapsed.body270

omp_collapsed.exit272:                            ; preds = %omp_collapsed.body270, %omp_region.end245
  %.lcssa941 = phi double [ 0.000000e+00, %omp_region.end245 ], [ %195, %omp_collapsed.body270 ]
  store double %.lcssa941, ptr %3, align 8, !tbaa !30
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num293)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num293)
  store ptr %3, ptr %red.array284, align 8
  %reduce287 = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num293, i32 1, i64 8, ptr nonnull %red.array284, ptr nonnull @.omp.reduction.func.2, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond18 = icmp eq i32 %reduce287, 1
  br i1 %cond18, label %reduce.switch.nonatomic288, label %reduce.finalize283

reduce.switch.nonatomic288:                       ; preds = %omp_collapsed.exit272
  %red.value.0290 = load double, ptr %loadgep_16, align 8
  %red.private.value.0291 = load double, ptr %3, align 8
  %137 = fadd contract double %red.value.0290, %red.private.value.0291
  store double %137, ptr %loadgep_16, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num293, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize283

reduce.finalize283:                               ; preds = %omp_collapsed.exit272, %reduce.switch.nonatomic288
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num293)
  %138 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num293)
  %.not544 = icmp eq i32 %138, 0
  br i1 %.not544, label %omp.par.outlined.exit.exitStub, label %omp.master.region297

omp.master.region297:                             ; preds = %reduce.finalize283
  %139 = load double, ptr @_QMlu_dataEdeta, align 8, !tbaa !32
  %140 = load double, ptr @_QMlu_dataEdzeta, align 8, !tbaa !34
  %141 = fmul contract double %139, %140
  %142 = load double, ptr %loadgep_16, align 8, !tbaa !10
  %143 = fmul contract double %141, %142
  store double %143, ptr %loadgep_16, align 8, !tbaa !10
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num293)
  br label %omp.par.outlined.exit.exitStub

omp_collapsed.body270:                            ; preds = %omp_collapsed.body270.lr.ph, %omp_collapsed.body270
  %omp_collapsed.iv274943 = phi i32 [ 0, %omp_collapsed.body270.lr.ph ], [ %omp_collapsed.next276, %omp_collapsed.body270 ]
  %144 = phi double [ 0.000000e+00, %omp_collapsed.body270.lr.ph ], [ %195, %omp_collapsed.body270 ]
  %145 = add i32 %omp_collapsed.iv274943, %135
  %.frozen = freeze i32 %145
  %.frozen976 = freeze i32 %132
  %146 = udiv i32 %.frozen, %.frozen976
  %147 = mul i32 %146, %.frozen976
  %.decomposed = sub i32 %.frozen, %147
  %148 = add i32 %146, %123
  %149 = add i32 %.decomposed, %126
  %150 = sext i32 %149 to i64
  %151 = sext i32 %148 to i64
  %152 = sub nsw i64 %150, %.unpack551.unpack.unpack
  %153 = sub nsw i64 %151, %.unpack551.unpack552.unpack
  %154 = mul nsw i64 %153, %.unpack551.unpack.unpack554
  %155 = getelementptr double, ptr %.unpack, i64 %154
  %156 = getelementptr double, ptr %155, i64 %152
  %157 = load double, ptr %156, align 8, !tbaa !36
  %158 = add i32 %149, 1
  %159 = sext i32 %158 to i64
  %160 = sub nsw i64 %159, %.unpack551.unpack.unpack
  %161 = getelementptr double, ptr %155, i64 %160
  %162 = load double, ptr %161, align 8, !tbaa !36
  %163 = fadd contract double %157, %162
  %164 = add i32 %148, 1
  %165 = sext i32 %164 to i64
  %166 = sub nsw i64 %165, %.unpack551.unpack552.unpack
  %167 = mul nsw i64 %166, %.unpack551.unpack.unpack554
  %168 = getelementptr double, ptr %.unpack, i64 %167
  %169 = getelementptr double, ptr %168, i64 %152
  %170 = load double, ptr %169, align 8, !tbaa !36
  %171 = fadd contract double %163, %170
  %172 = getelementptr double, ptr %168, i64 %160
  %173 = load double, ptr %172, align 8, !tbaa !36
  %174 = fadd contract double %171, %173
  %175 = sub nsw i64 %150, %.unpack567.unpack.unpack
  %176 = sub nsw i64 %151, %.unpack567.unpack568.unpack
  %177 = mul nsw i64 %176, %.unpack567.unpack.unpack570
  %178 = getelementptr double, ptr %.unpack560, i64 %177
  %179 = getelementptr double, ptr %178, i64 %175
  %180 = load double, ptr %179, align 8, !tbaa !39
  %181 = fadd contract double %174, %180
  %182 = sub nsw i64 %159, %.unpack567.unpack.unpack
  %183 = getelementptr double, ptr %178, i64 %182
  %184 = load double, ptr %183, align 8, !tbaa !39
  %185 = fadd contract double %181, %184
  %186 = sub nsw i64 %165, %.unpack567.unpack568.unpack
  %187 = mul nsw i64 %186, %.unpack567.unpack.unpack570
  %188 = getelementptr double, ptr %.unpack560, i64 %187
  %189 = getelementptr double, ptr %188, i64 %175
  %190 = load double, ptr %189, align 8, !tbaa !39
  %191 = fadd contract double %185, %190
  %192 = getelementptr double, ptr %188, i64 %182
  %193 = load double, ptr %192, align 8, !tbaa !39
  %194 = fadd contract double %191, %193
  %195 = fadd contract double %144, %194
  %omp_collapsed.next276 = add nuw i32 %omp_collapsed.iv274943, 1
  %exitcond967.not = icmp eq i32 %omp_collapsed.iv274943, %reass.sub958
  br i1 %exitcond967.not, label %omp_collapsed.exit272, label %omp_collapsed.body270

omp.single.region248:                             ; preds = %omp_collapsed.exit234
  store double 0.000000e+00, ptr %loadgep_16, align 8, !tbaa !10
  call void @__kmpc_end_single(ptr nonnull @1, i32 %omp_global_thread_num293)
  br label %omp_region.end245

omp_collapsed.body232:                            ; preds = %omp_collapsed.body232.lr.ph, %omp_collapsed.body232
  %omp_collapsed.iv236939 = phi i32 [ 0, %omp_collapsed.body232.lr.ph ], [ %omp_collapsed.next238, %omp_collapsed.body232 ]
  %196 = add i32 %omp_collapsed.iv236939, %118
  %.frozen977 = freeze i32 %196
  %.frozen978 = freeze i32 %115
  %197 = udiv i32 %.frozen977, %.frozen978
  %198 = mul i32 %197, %.frozen978
  %.decomposed979 = sub i32 %.frozen977, %198
  %199 = add i32 %197, %107
  %200 = add i32 %.decomposed979, %109
  %201 = load i32, ptr %loadgep_6, align 4, !tbaa !10
  %202 = sext i32 %201 to i64
  %203 = sext i32 %200 to i64
  %204 = sext i32 %199 to i64
  %205 = sub nsw i64 %202, %.unpack583.unpack584.unpack
  %206 = mul nsw i64 %205, %.unpack583.unpack.unpack588
  %reass.sub = sub i64 %206, %.unpack583.unpack.unpack
  %207 = sub nsw i64 %203, %.unpack583.unpack585.unpack
  %208 = mul nsw i64 %207, %120
  %209 = sub nsw i64 %204, %.unpack583.unpack586.unpack
  %210 = mul nsw i64 %121, %209
  %211 = getelementptr double, ptr %.unpack576, i64 %210
  %212 = getelementptr double, ptr %211, i64 %208
  %213 = getelementptr double, ptr %212, i64 %reass.sub
  %214 = getelementptr i8, ptr %213, i64 40
  %215 = load double, ptr %214, align 8, !tbaa !41
  %216 = getelementptr i8, ptr %213, i64 16
  %217 = load double, ptr %216, align 8, !tbaa !41
  %218 = fmul double %217, %217
  %219 = getelementptr i8, ptr %213, i64 24
  %220 = load double, ptr %219, align 8, !tbaa !41
  %221 = fmul double %220, %220
  %222 = fadd contract double %218, %221
  %223 = getelementptr i8, ptr %213, i64 32
  %224 = load double, ptr %223, align 8, !tbaa !41
  %225 = fmul double %224, %224
  %226 = fadd contract double %222, %225
  %227 = fmul contract double %226, 5.000000e-01
  %228 = getelementptr i8, ptr %213, i64 8
  %229 = load double, ptr %228, align 8, !tbaa !41
  %230 = fdiv contract double %227, %229
  %231 = fsub contract double %215, %230
  %232 = fmul contract double %231, 4.000000e-01
  %233 = sub nsw i64 %203, %.unpack611.unpack.unpack
  %234 = sub nsw i64 %204, %.unpack611.unpack612.unpack
  %235 = mul nsw i64 %234, %.unpack611.unpack.unpack614
  %236 = getelementptr double, ptr %.unpack604, i64 %235
  %237 = getelementptr double, ptr %236, i64 %233
  store double %232, ptr %237, align 8, !tbaa !39
  %omp_collapsed.next238 = add nuw i32 %omp_collapsed.iv236939, 1
  %exitcond966.not = icmp eq i32 %omp_collapsed.iv236939, %reass.sub957
  br i1 %exitcond966.not, label %omp_collapsed.exit234, label %omp_collapsed.body232

omp_collapsed.body200:                            ; preds = %omp_collapsed.body200.lr.ph, %omp_collapsed.body200
  %omp_collapsed.iv204937 = phi i32 [ 0, %omp_collapsed.body200.lr.ph ], [ %omp_collapsed.next206, %omp_collapsed.body200 ]
  %238 = add i32 %omp_collapsed.iv204937, %103
  %.frozen980 = freeze i32 %238
  %.frozen981 = freeze i32 %100
  %239 = udiv i32 %.frozen980, %.frozen981
  %240 = mul i32 %239, %.frozen981
  %.decomposed982 = sub i32 %.frozen980, %240
  %241 = add i32 %239, %92
  %242 = add i32 %.decomposed982, %94
  %243 = load i32, ptr %loadgep_4, align 4, !tbaa !10
  %244 = sext i32 %243 to i64
  %245 = sext i32 %242 to i64
  %246 = sext i32 %241 to i64
  %247 = sub nsw i64 %244, %.unpack627.unpack628.unpack
  %248 = mul nsw i64 %247, %.unpack627.unpack.unpack632
  %reass.sub644 = sub i64 %248, %.unpack627.unpack.unpack
  %249 = sub nsw i64 %245, %.unpack627.unpack629.unpack
  %250 = mul nsw i64 %249, %105
  %251 = sub nsw i64 %246, %.unpack627.unpack630.unpack
  %252 = mul nsw i64 %106, %251
  %253 = getelementptr double, ptr %.unpack620, i64 %252
  %254 = getelementptr double, ptr %253, i64 %250
  %255 = getelementptr double, ptr %254, i64 %reass.sub644
  %256 = getelementptr i8, ptr %255, i64 40
  %257 = load double, ptr %256, align 8, !tbaa !41
  %258 = getelementptr i8, ptr %255, i64 16
  %259 = load double, ptr %258, align 8, !tbaa !41
  %260 = fmul double %259, %259
  %261 = getelementptr i8, ptr %255, i64 24
  %262 = load double, ptr %261, align 8, !tbaa !41
  %263 = fmul double %262, %262
  %264 = fadd contract double %260, %263
  %265 = getelementptr i8, ptr %255, i64 32
  %266 = load double, ptr %265, align 8, !tbaa !41
  %267 = fmul double %266, %266
  %268 = fadd contract double %264, %267
  %269 = fmul contract double %268, 5.000000e-01
  %270 = getelementptr i8, ptr %255, i64 8
  %271 = load double, ptr %270, align 8, !tbaa !41
  %272 = fdiv contract double %269, %271
  %273 = fsub contract double %257, %272
  %274 = fmul contract double %273, 4.000000e-01
  %275 = sub nsw i64 %245, %.unpack656.unpack.unpack
  %276 = sub nsw i64 %246, %.unpack656.unpack657.unpack
  %277 = mul nsw i64 %276, %.unpack656.unpack.unpack659
  %278 = getelementptr double, ptr %.unpack649, i64 %277
  %279 = getelementptr double, ptr %278, i64 %275
  store double %274, ptr %279, align 8, !tbaa !36
  %omp_collapsed.next206 = add nuw i32 %omp_collapsed.iv204937, 1
  %exitcond965.not = icmp eq i32 %omp_collapsed.iv204937, %reass.sub955
  br i1 %exitcond965.not, label %omp_collapsed.exit202, label %omp_collapsed.body200

omp.master.region179:                             ; preds = %reduce.finalize165
  %280 = load double, ptr @_QMlu_dataEdxi, align 8, !tbaa !43
  %281 = load double, ptr @_QMlu_dataEdzeta, align 8, !tbaa !34
  %282 = fmul contract double %280, %281
  %283 = load double, ptr %loadgep_14, align 8, !tbaa !10
  %284 = fmul contract double %282, %283
  store double %284, ptr %loadgep_14, align 8, !tbaa !10
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num293)
  br label %omp_region.end176

omp_collapsed.body152:                            ; preds = %omp_collapsed.body152.lr.ph, %omp_collapsed.body152
  %omp_collapsed.iv156935 = phi i32 [ 0, %omp_collapsed.body152.lr.ph ], [ %omp_collapsed.next158, %omp_collapsed.body152 ]
  %285 = phi double [ 0.000000e+00, %omp_collapsed.body152.lr.ph ], [ %336, %omp_collapsed.body152 ]
  %286 = add i32 %omp_collapsed.iv156935, %88
  %.frozen983 = freeze i32 %286
  %.frozen984 = freeze i32 %85
  %287 = udiv i32 %.frozen983, %.frozen984
  %288 = mul i32 %287, %.frozen984
  %.decomposed985 = sub i32 %.frozen983, %288
  %289 = add i32 %287, %76
  %290 = add i32 %.decomposed985, %79
  %291 = sext i32 %290 to i64
  %292 = sext i32 %289 to i64
  %293 = sub nsw i64 %291, %.unpack672.unpack.unpack
  %294 = sub nsw i64 %292, %.unpack672.unpack673.unpack
  %295 = mul nsw i64 %294, %.unpack672.unpack.unpack675
  %296 = getelementptr double, ptr %.unpack665, i64 %295
  %297 = getelementptr double, ptr %296, i64 %293
  %298 = load double, ptr %297, align 8, !tbaa !36
  %299 = add i32 %290, 1
  %300 = sext i32 %299 to i64
  %301 = sub nsw i64 %300, %.unpack672.unpack.unpack
  %302 = getelementptr double, ptr %296, i64 %301
  %303 = load double, ptr %302, align 8, !tbaa !36
  %304 = fadd contract double %298, %303
  %305 = add i32 %289, 1
  %306 = sext i32 %305 to i64
  %307 = sub nsw i64 %306, %.unpack672.unpack673.unpack
  %308 = mul nsw i64 %307, %.unpack672.unpack.unpack675
  %309 = getelementptr double, ptr %.unpack665, i64 %308
  %310 = getelementptr double, ptr %309, i64 %293
  %311 = load double, ptr %310, align 8, !tbaa !36
  %312 = fadd contract double %304, %311
  %313 = getelementptr double, ptr %309, i64 %301
  %314 = load double, ptr %313, align 8, !tbaa !36
  %315 = fadd contract double %312, %314
  %316 = sub nsw i64 %291, %.unpack688.unpack.unpack
  %317 = sub nsw i64 %292, %.unpack688.unpack689.unpack
  %318 = mul nsw i64 %317, %.unpack688.unpack.unpack691
  %319 = getelementptr double, ptr %.unpack681, i64 %318
  %320 = getelementptr double, ptr %319, i64 %316
  %321 = load double, ptr %320, align 8, !tbaa !39
  %322 = fadd contract double %315, %321
  %323 = sub nsw i64 %300, %.unpack688.unpack.unpack
  %324 = getelementptr double, ptr %319, i64 %323
  %325 = load double, ptr %324, align 8, !tbaa !39
  %326 = fadd contract double %322, %325
  %327 = sub nsw i64 %306, %.unpack688.unpack689.unpack
  %328 = mul nsw i64 %327, %.unpack688.unpack.unpack691
  %329 = getelementptr double, ptr %.unpack681, i64 %328
  %330 = getelementptr double, ptr %329, i64 %316
  %331 = load double, ptr %330, align 8, !tbaa !39
  %332 = fadd contract double %326, %331
  %333 = getelementptr double, ptr %329, i64 %323
  %334 = load double, ptr %333, align 8, !tbaa !39
  %335 = fadd contract double %332, %334
  %336 = fadd contract double %285, %335
  %omp_collapsed.next158 = add nuw i32 %omp_collapsed.iv156935, 1
  %exitcond964.not = icmp eq i32 %omp_collapsed.iv156935, %reass.sub953
  br i1 %exitcond964.not, label %omp_collapsed.exit154, label %omp_collapsed.body152

omp.single.region130:                             ; preds = %omp_collapsed.exit116
  store double 0.000000e+00, ptr %loadgep_14, align 8, !tbaa !10
  call void @__kmpc_end_single(ptr nonnull @1, i32 %omp_global_thread_num293)
  br label %omp_region.end127

omp_collapsed.body114:                            ; preds = %omp_collapsed.body114.lr.ph, %omp_collapsed.body114
  %omp_collapsed.iv118931 = phi i32 [ 0, %omp_collapsed.body114.lr.ph ], [ %omp_collapsed.next120, %omp_collapsed.body114 ]
  %337 = add i32 %omp_collapsed.iv118931, %71
  %.frozen986 = freeze i32 %337
  %.frozen987 = freeze i32 %68
  %338 = udiv i32 %.frozen986, %.frozen987
  %339 = mul i32 %338, %.frozen987
  %.decomposed988 = sub i32 %.frozen986, %339
  %340 = add i32 %338, %60
  %341 = add i32 %.decomposed988, %62
  %342 = sext i32 %341 to i64
  %343 = load i32, ptr %loadgep_2, align 4, !tbaa !10
  %344 = sext i32 %343 to i64
  %345 = sext i32 %340 to i64
  %346 = sub nsw i64 %342, %.unpack704.unpack705.unpack
  %347 = mul nsw i64 %346, %.unpack704.unpack.unpack709
  %reass.sub721 = sub i64 %347, %.unpack704.unpack.unpack
  %348 = sub nsw i64 %344, %.unpack704.unpack706.unpack
  %349 = mul nsw i64 %348, %73
  %350 = sub nsw i64 %345, %.unpack704.unpack707.unpack
  %351 = mul nsw i64 %74, %350
  %352 = getelementptr double, ptr %.unpack697, i64 %351
  %353 = getelementptr double, ptr %352, i64 %349
  %354 = getelementptr double, ptr %353, i64 %reass.sub721
  %355 = getelementptr i8, ptr %354, i64 40
  %356 = load double, ptr %355, align 8, !tbaa !41
  %357 = getelementptr i8, ptr %354, i64 16
  %358 = load double, ptr %357, align 8, !tbaa !41
  %359 = fmul double %358, %358
  %360 = getelementptr i8, ptr %354, i64 24
  %361 = load double, ptr %360, align 8, !tbaa !41
  %362 = fmul double %361, %361
  %363 = fadd contract double %359, %362
  %364 = getelementptr i8, ptr %354, i64 32
  %365 = load double, ptr %364, align 8, !tbaa !41
  %366 = fmul double %365, %365
  %367 = fadd contract double %363, %366
  %368 = fmul contract double %367, 5.000000e-01
  %369 = getelementptr i8, ptr %354, i64 8
  %370 = load double, ptr %369, align 8, !tbaa !41
  %371 = fdiv contract double %368, %370
  %372 = fsub contract double %356, %371
  %373 = fmul contract double %372, 4.000000e-01
  %374 = sub nsw i64 %342, %.unpack733.unpack.unpack
  %375 = sub nsw i64 %345, %.unpack733.unpack734.unpack
  %376 = mul nsw i64 %375, %.unpack733.unpack.unpack736
  %377 = getelementptr double, ptr %.unpack726, i64 %376
  %378 = getelementptr double, ptr %377, i64 %374
  store double %373, ptr %378, align 8, !tbaa !39
  %omp_collapsed.next120 = add nuw i32 %omp_collapsed.iv118931, 1
  %exitcond963.not = icmp eq i32 %omp_collapsed.iv118931, %reass.sub952
  br i1 %exitcond963.not, label %omp_collapsed.exit116, label %omp_collapsed.body114

omp_collapsed.body82:                             ; preds = %omp_collapsed.body82.lr.ph, %omp_collapsed.body82
  %omp_collapsed.iv86929 = phi i32 [ 0, %omp_collapsed.body82.lr.ph ], [ %omp_collapsed.next88, %omp_collapsed.body82 ]
  %379 = add i32 %omp_collapsed.iv86929, %56
  %.frozen989 = freeze i32 %379
  %.frozen990 = freeze i32 %53
  %380 = udiv i32 %.frozen989, %.frozen990
  %381 = mul i32 %380, %.frozen990
  %.decomposed991 = sub i32 %.frozen989, %381
  %382 = add i32 %380, %45
  %383 = add i32 %.decomposed991, %47
  %384 = sext i32 %383 to i64
  %385 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %386 = sext i32 %385 to i64
  %387 = sext i32 %382 to i64
  %388 = sub nsw i64 %384, %.unpack749.unpack750.unpack
  %389 = mul nsw i64 %388, %.unpack749.unpack.unpack754
  %reass.sub766 = sub i64 %389, %.unpack749.unpack.unpack
  %390 = sub nsw i64 %386, %.unpack749.unpack751.unpack
  %391 = mul nsw i64 %390, %58
  %392 = sub nsw i64 %387, %.unpack749.unpack752.unpack
  %393 = mul nsw i64 %59, %392
  %394 = getelementptr double, ptr %.unpack742, i64 %393
  %395 = getelementptr double, ptr %394, i64 %391
  %396 = getelementptr double, ptr %395, i64 %reass.sub766
  %397 = getelementptr i8, ptr %396, i64 40
  %398 = load double, ptr %397, align 8, !tbaa !41
  %399 = getelementptr i8, ptr %396, i64 16
  %400 = load double, ptr %399, align 8, !tbaa !41
  %401 = fmul double %400, %400
  %402 = getelementptr i8, ptr %396, i64 24
  %403 = load double, ptr %402, align 8, !tbaa !41
  %404 = fmul double %403, %403
  %405 = fadd contract double %401, %404
  %406 = getelementptr i8, ptr %396, i64 32
  %407 = load double, ptr %406, align 8, !tbaa !41
  %408 = fmul double %407, %407
  %409 = fadd contract double %405, %408
  %410 = fmul contract double %409, 5.000000e-01
  %411 = getelementptr i8, ptr %396, i64 8
  %412 = load double, ptr %411, align 8, !tbaa !41
  %413 = fdiv contract double %410, %412
  %414 = fsub contract double %398, %413
  %415 = fmul contract double %414, 4.000000e-01
  %416 = sub nsw i64 %384, %.unpack778.unpack.unpack
  %417 = sub nsw i64 %387, %.unpack778.unpack779.unpack
  %418 = mul nsw i64 %417, %.unpack778.unpack.unpack781
  %419 = getelementptr double, ptr %.unpack771, i64 %418
  %420 = getelementptr double, ptr %419, i64 %416
  store double %415, ptr %420, align 8, !tbaa !36
  %omp_collapsed.next88 = add nuw i32 %omp_collapsed.iv86929, 1
  %exitcond962.not = icmp eq i32 %omp_collapsed.iv86929, %reass.sub950
  br i1 %exitcond962.not, label %omp_collapsed.exit84, label %omp_collapsed.body82

omp.master.region:                                ; preds = %reduce.finalize
  %421 = load double, ptr @_QMlu_dataEdxi, align 8, !tbaa !43
  %422 = load double, ptr @_QMlu_dataEdeta, align 8, !tbaa !32
  %423 = fmul contract double %421, %422
  %424 = load double, ptr %loadgep_12, align 8, !tbaa !10
  %425 = fmul contract double %423, %424
  store double %425, ptr %loadgep_12, align 8, !tbaa !10
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num293)
  br label %omp_region.end59

omp_collapsed.body43:                             ; preds = %omp_collapsed.body43.lr.ph, %omp_collapsed.body43
  %omp_collapsed.iv47927 = phi i32 [ 0, %omp_collapsed.body43.lr.ph ], [ %omp_collapsed.next49, %omp_collapsed.body43 ]
  %426 = phi double [ %.promoted, %omp_collapsed.body43.lr.ph ], [ %477, %omp_collapsed.body43 ]
  %427 = add i32 %omp_collapsed.iv47927, %41
  %.frozen992 = freeze i32 %427
  %.frozen993 = freeze i32 %38
  %428 = udiv i32 %.frozen992, %.frozen993
  %429 = mul i32 %428, %.frozen993
  %.decomposed994 = sub i32 %.frozen992, %429
  %430 = add i32 %428, %30
  %431 = add i32 %.decomposed994, %32
  %432 = sext i32 %431 to i64
  %433 = sext i32 %430 to i64
  %434 = sub nsw i64 %432, %.unpack794.unpack.unpack
  %435 = sub nsw i64 %433, %.unpack794.unpack795.unpack
  %436 = mul nsw i64 %435, %.unpack794.unpack.unpack797
  %437 = getelementptr double, ptr %.unpack787, i64 %436
  %438 = getelementptr double, ptr %437, i64 %434
  %439 = load double, ptr %438, align 8, !tbaa !36
  %440 = add i32 %431, 1
  %441 = sext i32 %440 to i64
  %442 = sub nsw i64 %441, %.unpack794.unpack.unpack
  %443 = getelementptr double, ptr %437, i64 %442
  %444 = load double, ptr %443, align 8, !tbaa !36
  %445 = fadd contract double %439, %444
  %446 = add i32 %430, 1
  %447 = sext i32 %446 to i64
  %448 = sub nsw i64 %447, %.unpack794.unpack795.unpack
  %449 = mul nsw i64 %448, %.unpack794.unpack.unpack797
  %450 = getelementptr double, ptr %.unpack787, i64 %449
  %451 = getelementptr double, ptr %450, i64 %434
  %452 = load double, ptr %451, align 8, !tbaa !36
  %453 = fadd contract double %445, %452
  %454 = getelementptr double, ptr %450, i64 %442
  %455 = load double, ptr %454, align 8, !tbaa !36
  %456 = fadd contract double %453, %455
  %457 = sub nsw i64 %432, %.unpack810.unpack.unpack
  %458 = sub nsw i64 %433, %.unpack810.unpack811.unpack
  %459 = mul nsw i64 %458, %.unpack810.unpack.unpack813
  %460 = getelementptr double, ptr %.unpack803, i64 %459
  %461 = getelementptr double, ptr %460, i64 %457
  %462 = load double, ptr %461, align 8, !tbaa !39
  %463 = fadd contract double %456, %462
  %464 = sub nsw i64 %441, %.unpack810.unpack.unpack
  %465 = getelementptr double, ptr %460, i64 %464
  %466 = load double, ptr %465, align 8, !tbaa !39
  %467 = fadd contract double %463, %466
  %468 = sub nsw i64 %447, %.unpack810.unpack811.unpack
  %469 = mul nsw i64 %468, %.unpack810.unpack.unpack813
  %470 = getelementptr double, ptr %.unpack803, i64 %469
  %471 = getelementptr double, ptr %470, i64 %457
  %472 = load double, ptr %471, align 8, !tbaa !39
  %473 = fadd contract double %467, %472
  %474 = getelementptr double, ptr %470, i64 %464
  %475 = load double, ptr %474, align 8, !tbaa !39
  %476 = fadd contract double %473, %475
  %477 = fadd contract double %426, %476
  %omp_collapsed.next49 = add nuw i32 %omp_collapsed.iv47927, 1
  %exitcond961.not = icmp eq i32 %omp_collapsed.iv47927, %reass.sub948
  br i1 %exitcond961.not, label %omp_collapsed.header41.omp_collapsed.exit45_crit_edge, label %omp_collapsed.body43

omp.single.region:                                ; preds = %omp_collapsed.exit
  store double 0.000000e+00, ptr %loadgep_12, align 8, !tbaa !10
  call void @__kmpc_end_single(ptr nonnull @1, i32 %omp_global_thread_num293)
  br label %omp_region.end

omp_collapsed.body:                               ; preds = %omp_collapsed.body.lr.ph, %omp_collapsed.body
  %omp_collapsed.iv925 = phi i32 [ 0, %omp_collapsed.body.lr.ph ], [ %omp_collapsed.next, %omp_collapsed.body ]
  %478 = add i32 %omp_collapsed.iv925, %15
  %.frozen995 = freeze i32 %478
  %.frozen996 = freeze i32 %12
  %479 = udiv i32 %.frozen995, %.frozen996
  %480 = mul i32 %479, %.frozen996
  %.decomposed997 = sub i32 %.frozen995, %480
  %481 = add i32 %479, %4
  %482 = add i32 %.decomposed997, %6
  %483 = sext i32 %482 to i64
  %484 = sext i32 %481 to i64
  %485 = sub nsw i64 %483, %.unpack826.unpack827.unpack
  %486 = mul nsw i64 %485, %.unpack826.unpack.unpack831
  %reass.sub843 = sub i64 %486, %.unpack826.unpack.unpack
  %487 = sub nsw i64 %484, %.unpack826.unpack828.unpack
  %488 = mul nsw i64 %487, %19
  %489 = getelementptr double, ptr %23, i64 %488
  %490 = getelementptr double, ptr %489, i64 %reass.sub843
  %491 = getelementptr i8, ptr %490, i64 40
  %492 = load double, ptr %491, align 8, !tbaa !41
  %493 = getelementptr i8, ptr %490, i64 16
  %494 = load double, ptr %493, align 8, !tbaa !41
  %495 = fmul double %494, %494
  %496 = getelementptr i8, ptr %490, i64 24
  %497 = load double, ptr %496, align 8, !tbaa !41
  %498 = fmul double %497, %497
  %499 = fadd contract double %495, %498
  %500 = getelementptr i8, ptr %490, i64 32
  %501 = load double, ptr %500, align 8, !tbaa !41
  %502 = fmul double %501, %501
  %503 = fadd contract double %499, %502
  %504 = fmul contract double %503, 5.000000e-01
  %505 = getelementptr i8, ptr %490, i64 8
  %506 = load double, ptr %505, align 8, !tbaa !41
  %507 = fdiv contract double %504, %506
  %508 = fsub contract double %492, %507
  %509 = fmul contract double %508, 4.000000e-01
  %510 = sub nsw i64 %483, %.unpack855.unpack.unpack
  %511 = sub nsw i64 %484, %.unpack855.unpack856.unpack
  %512 = mul nsw i64 %511, %.unpack855.unpack.unpack858
  %513 = getelementptr double, ptr %.unpack848, i64 %512
  %514 = getelementptr double, ptr %513, i64 %510
  store double %509, ptr %514, align 8, !tbaa !36
  %515 = getelementptr double, ptr %28, i64 %488
  %516 = getelementptr double, ptr %515, i64 %reass.sub843
  %517 = getelementptr i8, ptr %516, i64 40
  %518 = load double, ptr %517, align 8, !tbaa !41
  %519 = getelementptr i8, ptr %516, i64 16
  %520 = load double, ptr %519, align 8, !tbaa !41
  %521 = fmul double %520, %520
  %522 = getelementptr i8, ptr %516, i64 24
  %523 = load double, ptr %522, align 8, !tbaa !41
  %524 = fmul double %523, %523
  %525 = fadd contract double %521, %524
  %526 = getelementptr i8, ptr %516, i64 32
  %527 = load double, ptr %526, align 8, !tbaa !41
  %528 = fmul double %527, %527
  %529 = fadd contract double %525, %528
  %530 = fmul contract double %529, 5.000000e-01
  %531 = getelementptr i8, ptr %516, i64 8
  %532 = load double, ptr %531, align 8, !tbaa !41
  %533 = fdiv contract double %530, %532
  %534 = fsub contract double %518, %533
  %535 = fmul contract double %534, 4.000000e-01
  %536 = sub nsw i64 %483, %.unpack900.unpack.unpack
  %537 = sub nsw i64 %484, %.unpack900.unpack901.unpack
  %538 = mul nsw i64 %537, %.unpack900.unpack.unpack903
  %539 = getelementptr double, ptr %.unpack893, i64 %538
  %540 = getelementptr double, ptr %539, i64 %536
  store double %535, ptr %540, align 8, !tbaa !39
  %omp_collapsed.next = add nuw i32 %omp_collapsed.iv925, 1
  %exitcond.not = icmp eq i32 %omp_collapsed.iv925, %reass.sub946
  br i1 %exitcond.not, label %omp_collapsed.exit, label %omp_collapsed.body

omp.par.outlined.exit.exitStub:                   ; preds = %omp.master.region297, %reduce.finalize283
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(ptr, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(ptr, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func(ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(ptr, i32, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_master(ptr, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_end_master(ptr, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func.1(ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func.2(ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind
declare !callback !45 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind }
attributes #2 = { convergent nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QMlu_dataEii1", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPpintgr"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMlu_dataEii2", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMlu_dataEji1", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMlu_dataEji2", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"global data/_QMlu_dataEfrc", !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"global data/_QMlu_dataEki1", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"descriptor member", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"global data/_QMlu_dataEki2", !6, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"dummy arg data/_QFpintgrEfrc1", !27, i64 0}
!27 = !{!"dummy arg data", !7, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"dummy arg data/_QFpintgrEfrc2", !27, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"dummy arg data/_QFpintgrEfrc3", !27, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"global data/_QMlu_dataEdeta", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"global data/_QMlu_dataEdzeta", !6, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"direct data/_QMlu_dataEphi1", !38, i64 0}
!38 = !{!"direct data", !7, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"direct data/_QMlu_dataEphi2", !38, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"direct data/_QMlu_dataEu", !38, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"global data/_QMlu_dataEdxi", !6, i64 0}
!45 = !{!46}
!46 = !{i64 2, i64 -1, i64 -1, i1 true}
