; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclXfcbe1d280f596c0060f79d797f8c92f5 = comdat any

@_QMbt_dataEbuf = external global [5 x [409 x double]]
@_QMbt_dataEcuf = external global [409 x double]
@_QMbt_dataEdnxm1 = external local_unnamed_addr global double
@_QMbt_dataEdnym1 = external local_unnamed_addr global double
@_QMbt_dataEdnzm1 = external local_unnamed_addr global double
@_QMbt_dataEgrid_points = external local_unnamed_addr global [3 x i32]
@_QMbt_dataEq = external global [409 x double]
@_QMbt_dataErhs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMbt_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMbt_dataEue = external global [5 x [409 x double]]
@_QQclXfcbe1d280f596c0060f79d797f8c92f5 = linkonce constant [88 x i8] c"/home/studyztp/experiments/panning/hardware-experiment/nugget-protocol-NPB/BT/error.f90\00", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMbt_dataEbuf.cache = common global ptr null, align 8
@_QMbt_dataEcuf.cache = common global ptr null, align 8
@_QMbt_dataEq.cache = common global ptr null, align 8
@_QMbt_dataEue.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define void @error_norm_(ptr %0) local_unnamed_addr #2 {
omp_parallel:
  %structArg = alloca { ptr }, align 8
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEbuf, i64 16360, ptr nonnull @_QMbt_dataEbuf.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEcuf, i64 3272, ptr nonnull @_QMbt_dataEcuf.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEq, i64 3272, ptr nonnull @_QMbt_dataEq.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEue, i64 16360, ptr nonnull @_QMbt_dataEue.cache)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !tbaa !4
  store ptr %0, ptr %structArg, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @error_norm_..omp_par, ptr nonnull %structArg)
  %.promoted = load double, ptr %0, align 8, !tbaa !4
  %5 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !10
  %6 = add i32 %5, -2
  %7 = sitofp i32 %6 to double
  %8 = fdiv contract double %.promoted, %7
  %9 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !10
  %10 = add i32 %9, -2
  %11 = sitofp i32 %10 to double
  %12 = fdiv contract double %8, %11
  %13 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !10
  %14 = add i32 %13, -2
  %15 = sitofp i32 %14 to double
  %16 = fdiv contract double %12, %15
  %17 = call contract double @llvm.sqrt.f64(double %16)
  store double %17, ptr %0, align 8, !tbaa !4
  %gep45.1 = getelementptr i8, ptr %0, i64 8
  %.promoted.1 = load double, ptr %gep45.1, align 8, !tbaa !4
  %18 = fdiv contract double %.promoted.1, %7
  %19 = fdiv contract double %18, %11
  %20 = fdiv contract double %19, %15
  %21 = call contract double @llvm.sqrt.f64(double %20)
  store double %21, ptr %gep45.1, align 8, !tbaa !4
  %gep45.2 = getelementptr i8, ptr %0, i64 16
  %.promoted.2 = load double, ptr %gep45.2, align 8, !tbaa !4
  %22 = fdiv contract double %.promoted.2, %7
  %23 = fdiv contract double %22, %11
  %24 = fdiv contract double %23, %15
  %25 = call contract double @llvm.sqrt.f64(double %24)
  store double %25, ptr %gep45.2, align 8, !tbaa !4
  %gep45.3 = getelementptr i8, ptr %0, i64 24
  %.promoted.3 = load double, ptr %gep45.3, align 8, !tbaa !4
  %26 = fdiv contract double %.promoted.3, %7
  %27 = fdiv contract double %26, %11
  %28 = fdiv contract double %27, %15
  %29 = call contract double @llvm.sqrt.f64(double %28)
  store double %29, ptr %gep45.3, align 8, !tbaa !4
  %gep45.4 = getelementptr i8, ptr %0, i64 32
  %.promoted.4 = load double, ptr %gep45.4, align 8, !tbaa !4
  %30 = fdiv contract double %.promoted.4, %7
  %31 = fdiv contract double %30, %11
  %32 = fdiv contract double %31, %15
  %33 = call contract double @llvm.sqrt.f64(double %32)
  store double %33, ptr %gep45.4, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind
define internal void @error_norm_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #2 {
omp.par.entry:
  %loadgep_ = load ptr, ptr %0, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %red.array = alloca [1 x ptr], align 8
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca [5 x double], align 8
  %5 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !10
  %6 = add i32 %5, -1
  %7 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !10
  %8 = add i32 %7, -1
  %9 = alloca { ptr, i64, i32, i8, i8, i8, i8 }, align 8
  %10 = alloca { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, align 8
  %11 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40)
  %12 = alloca double, align 8
  store double 0.000000e+00, ptr %12, align 8
  store ptr %12, ptr %9, align 8
  %.fca.1.gep123 = getelementptr inbounds i8, ptr %9, i64 8
  store i64 8, ptr %.fca.1.gep123, align 8
  %.fca.2.gep125 = getelementptr inbounds i8, ptr %9, i64 16
  store i32 20180515, ptr %.fca.2.gep125, align 8
  %.fca.3.gep127 = getelementptr inbounds i8, ptr %9, i64 20
  store i8 0, ptr %.fca.3.gep127, align 4
  %.fca.4.gep129 = getelementptr inbounds i8, ptr %9, i64 21
  store i8 28, ptr %.fca.4.gep129, align 1
  %.fca.5.gep131 = getelementptr inbounds i8, ptr %9, i64 22
  store i8 0, ptr %.fca.5.gep131, align 2
  %.fca.6.gep133 = getelementptr inbounds i8, ptr %9, i64 23
  store i8 0, ptr %.fca.6.gep133, align 1
  store ptr %11, ptr %10, align 8
  %.fca.1.gep14 = getelementptr inbounds i8, ptr %10, i64 8
  store i64 8, ptr %.fca.1.gep14, align 8
  %.fca.2.gep16 = getelementptr inbounds i8, ptr %10, i64 16
  store i32 20180515, ptr %.fca.2.gep16, align 8
  %.fca.3.gep18 = getelementptr inbounds i8, ptr %10, i64 20
  store i8 1, ptr %.fca.3.gep18, align 4
  %.fca.4.gep20 = getelementptr inbounds i8, ptr %10, i64 21
  store i8 28, ptr %.fca.4.gep20, align 1
  %.fca.5.gep22 = getelementptr inbounds i8, ptr %10, i64 22
  store i8 0, ptr %.fca.5.gep22, align 2
  %.fca.6.gep24 = getelementptr inbounds i8, ptr %10, i64 23
  store i8 0, ptr %.fca.6.gep24, align 1
  %.fca.7.0.0.gep26 = getelementptr inbounds i8, ptr %10, i64 24
  store i64 1, ptr %.fca.7.0.0.gep26, align 8
  %.fca.7.0.1.gep28 = getelementptr inbounds i8, ptr %10, i64 32
  store i64 5, ptr %.fca.7.0.1.gep28, align 8
  %.fca.7.0.2.gep30 = getelementptr inbounds i8, ptr %10, i64 40
  store i64 8, ptr %.fca.7.0.2.gep30, align 8
  %13 = call {} @_FortranAAssign(ptr nonnull %10, ptr nonnull %9, ptr nonnull @_QQclXfcbe1d280f596c0060f79d797f8c92f5, i32 24) #3
  %14 = alloca { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, align 8
  store ptr %11, ptr %14, align 8
  %.fca.1.gep = getelementptr inbounds i8, ptr %14, i64 8
  store i64 8, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds i8, ptr %14, i64 16
  store i32 20180515, ptr %.fca.2.gep, align 8
  %.fca.3.gep = getelementptr inbounds i8, ptr %14, i64 20
  store i8 1, ptr %.fca.3.gep, align 4
  %.fca.4.gep = getelementptr inbounds i8, ptr %14, i64 21
  store i8 28, ptr %.fca.4.gep, align 1
  %.fca.5.gep = getelementptr inbounds i8, ptr %14, i64 22
  store i8 0, ptr %.fca.5.gep, align 2
  %.fca.6.gep = getelementptr inbounds i8, ptr %14, i64 23
  store i8 0, ptr %.fca.6.gep, align 1
  %.fca.7.0.0.gep = getelementptr inbounds i8, ptr %14, i64 24
  store i64 1, ptr %.fca.7.0.0.gep, align 8
  %.fca.7.0.1.gep = getelementptr inbounds i8, ptr %14, i64 32
  store i64 5, ptr %.fca.7.0.1.gep, align 8
  %.fca.7.0.2.gep = getelementptr inbounds i8, ptr %14, i64 40
  store i64 8, ptr %.fca.7.0.2.gep, align 8
  %15 = alloca ptr, align 8
  store ptr %14, ptr %15, align 8
  %16 = icmp slt i32 %6, 0
  %omp_loop.tripcount = select i1 %16, i32 0, i32 %5
  %17 = icmp slt i32 %8, 0
  %omp_loop.tripcount6 = select i1 %17, i32 0, i32 %7
  %18 = mul nuw i32 %omp_loop.tripcount6, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num31 = call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num31, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %20 = load i32, ptr %p.lowerbound, align 4
  %21 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %21, %20
  %omp_collapsed.cmp419.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp419.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %gep.1 = getelementptr inbounds i8, ptr %4, i64 8
  %gep.2 = getelementptr inbounds i8, ptr %4, i64 16
  %gep.3 = getelementptr inbounds i8, ptr %4, i64 24
  %gep.4 = getelementptr inbounds i8, ptr %4, i64 32
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp.wsloop.region23, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num31)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num31)
  store ptr %15, ptr %red.array, align 8
  %reduce = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num31, i32 1, i64 8, ptr nonnull %red.array, ptr nonnull @.omp.reduction.func, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce, 1
  br i1 %cond, label %reduce.switch.nonatomic, label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_collapsed.exit
  %red.private.value.0 = load ptr, ptr %15, align 8
  %.unpack = load ptr, ptr %red.private.value.0, align 8
  %.unpack331.unpack.elt335 = getelementptr inbounds i8, ptr %red.private.value.0, i64 40
  %.unpack331.unpack.unpack336 = load i64, ptr %.unpack331.unpack.elt335, align 8
  %22 = load double, ptr %loadgep_, align 8
  %23 = load double, ptr %.unpack, align 8
  %24 = fadd contract double %22, %23
  store double %24, ptr %loadgep_, align 8
  %25 = getelementptr i8, ptr %loadgep_, i64 8
  %26 = getelementptr i8, ptr %.unpack, i64 %.unpack331.unpack.unpack336
  %27 = load double, ptr %25, align 8
  %28 = load double, ptr %26, align 8
  %29 = fadd contract double %27, %28
  store double %29, ptr %25, align 8
  %30 = getelementptr i8, ptr %loadgep_, i64 16
  %31 = shl nsw i64 %.unpack331.unpack.unpack336, 1
  %32 = getelementptr i8, ptr %.unpack, i64 %31
  %33 = load double, ptr %30, align 8
  %34 = load double, ptr %32, align 8
  %35 = fadd contract double %33, %34
  store double %35, ptr %30, align 8
  %36 = getelementptr i8, ptr %loadgep_, i64 24
  %37 = mul nsw i64 %.unpack331.unpack.unpack336, 3
  %38 = getelementptr i8, ptr %.unpack, i64 %37
  %39 = load double, ptr %36, align 8
  %40 = load double, ptr %38, align 8
  %41 = fadd contract double %39, %40
  store double %41, ptr %36, align 8
  %42 = getelementptr i8, ptr %loadgep_, i64 32
  %43 = shl nsw i64 %.unpack331.unpack.unpack336, 2
  %44 = getelementptr i8, ptr %.unpack, i64 %43
  %45 = load double, ptr %42, align 8
  %46 = load double, ptr %44, align 8
  %47 = fadd contract double %45, %46
  store double %47, ptr %42, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num31, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %omp_collapsed.exit, %reduce.switch.nonatomic
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num31)
  %48 = load ptr, ptr %15, align 8
  %.unpack356 = load ptr, ptr %48, align 8
  %.not = icmp eq ptr %.unpack356, null
  br i1 %.not, label %omp.par.outlined.exit.exitStub, label %omp.reduction.cleanup33

omp.reduction.cleanup33:                          ; preds = %reduce.finalize
  call void @free(ptr nonnull %.unpack356)
  br label %omp.par.outlined.exit.exitStub

omp_collapsed.body:                               ; preds = %omp_collapsed.body.lr.ph, %omp.wsloop.region23
  %omp_collapsed.iv420 = phi i32 [ 0, %omp_collapsed.body.lr.ph ], [ %omp_collapsed.next, %omp.wsloop.region23 ]
  %49 = add i32 %omp_collapsed.iv420, %20
  %50 = urem i32 %49, %7
  %51 = udiv i32 %49, %7
  %52 = sitofp i32 %51 to double
  %53 = load double, ptr @_QMbt_dataEdnzm1, align 8, !tbaa !13
  %54 = fmul contract double %53, %52
  store double %54, ptr %1, align 8, !tbaa !15
  %55 = sitofp i32 %50 to double
  %56 = load double, ptr @_QMbt_dataEdnym1, align 8, !tbaa !16
  %57 = fmul contract double %56, %55
  store double %57, ptr %2, align 8, !tbaa !15
  %58 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !10
  %59 = add i32 %58, -1
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %omp.wsloop.region19.lr.ph, label %omp.wsloop.region23

omp.wsloop.region19.lr.ph:                        ; preds = %omp_collapsed.body
  %61 = zext i32 %58 to i64
  %62 = sext i32 %50 to i64
  %63 = sext i32 %51 to i64
  br label %omp.wsloop.region19

omp.wsloop.region23:                              ; preds = %omp.wsloop.region19, %omp_collapsed.body
  %omp_collapsed.next = add nuw i32 %omp_collapsed.iv420, 1
  %exitcond.not = icmp eq i32 %omp_collapsed.iv420, %reass.sub
  br i1 %exitcond.not, label %omp_collapsed.exit, label %omp_collapsed.body

omp.wsloop.region19:                              ; preds = %omp.wsloop.region19.lr.ph, %omp.wsloop.region19
  %indvars.iv = phi i64 [ 0, %omp.wsloop.region19.lr.ph ], [ %indvars.iv.next, %omp.wsloop.region19 ]
  %64 = phi i64 [ %61, %omp.wsloop.region19.lr.ph ], [ %135, %omp.wsloop.region19 ]
  %65 = trunc nuw nsw i64 %indvars.iv to i32
  %66 = sitofp i32 %65 to double
  %67 = load double, ptr @_QMbt_dataEdnxm1, align 8, !tbaa !18
  %68 = fmul contract double %67, %66
  store double %68, ptr %3, align 8, !tbaa !15
  call void @exact_solution_(ptr nonnull %3, ptr nonnull %2, ptr nonnull %1, ptr nonnull %4) #3
  %.unpack395 = load ptr, ptr @_QMbt_dataEu, align 8, !tbaa !20
  %.unpack402.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7), align 8, !tbaa !20
  %.unpack402.unpack.unpack407 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !20
  %.unpack402.unpack403.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !20
  %.unpack402.unpack403.unpack410 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !20
  %.unpack402.unpack404.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !20
  %.unpack402.unpack404.unpack413 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !20
  %.unpack402.unpack405.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !20
  %69 = sub nsw i64 %indvars.iv, %.unpack402.unpack403.unpack
  %70 = mul nsw i64 %69, %.unpack402.unpack.unpack407
  %71 = mul nsw i64 %.unpack402.unpack403.unpack410, %.unpack402.unpack.unpack407
  %72 = sub nsw i64 %62, %.unpack402.unpack404.unpack
  %73 = mul nsw i64 %72, %71
  %74 = mul nsw i64 %.unpack402.unpack404.unpack413, %71
  %75 = sub nsw i64 %63, %.unpack402.unpack405.unpack
  %76 = mul nsw i64 %74, %75
  %77 = getelementptr double, ptr %.unpack395, i64 %76
  %78 = getelementptr double, ptr %77, i64 %73
  %79 = getelementptr double, ptr %78, i64 %70
  %.fca.0.load = load ptr, ptr %14, align 8, !tbaa !20
  %.fca.7.0.0.load = load i64, ptr %.fca.7.0.0.gep, align 8, !tbaa !20
  %.fca.7.0.2.load = load i64, ptr %.fca.7.0.2.gep, align 8, !tbaa !20
  %80 = sub nsw i64 1, %.unpack402.unpack.unpack
  %81 = getelementptr double, ptr %79, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !22
  %83 = load double, ptr %4, align 8, !tbaa !15
  %84 = fsub contract double %82, %83
  %85 = sub nsw i64 1, %.fca.7.0.0.load
  %86 = mul nsw i64 %85, %.fca.7.0.2.load
  %87 = getelementptr i8, ptr %.fca.0.load, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !4
  %89 = fmul contract double %84, %84
  %90 = fadd contract double %89, %88
  store double %90, ptr %87, align 8, !tbaa !4
  %91 = sub nsw i64 2, %.unpack402.unpack.unpack
  %92 = getelementptr double, ptr %79, i64 %91
  %93 = load double, ptr %92, align 8, !tbaa !22
  %94 = load double, ptr %gep.1, align 8, !tbaa !15
  %95 = fsub contract double %93, %94
  %96 = sub nsw i64 2, %.fca.7.0.0.load
  %97 = mul nsw i64 %96, %.fca.7.0.2.load
  %98 = getelementptr i8, ptr %.fca.0.load, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !4
  %100 = fmul contract double %95, %95
  %101 = fadd contract double %100, %99
  store double %101, ptr %98, align 8, !tbaa !4
  %102 = sub nsw i64 3, %.unpack402.unpack.unpack
  %103 = getelementptr double, ptr %79, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !22
  %105 = load double, ptr %gep.2, align 8, !tbaa !15
  %106 = fsub contract double %104, %105
  %107 = sub nsw i64 3, %.fca.7.0.0.load
  %108 = mul nsw i64 %107, %.fca.7.0.2.load
  %109 = getelementptr i8, ptr %.fca.0.load, i64 %108
  %110 = load double, ptr %109, align 8, !tbaa !4
  %111 = fmul contract double %106, %106
  %112 = fadd contract double %111, %110
  store double %112, ptr %109, align 8, !tbaa !4
  %113 = sub nsw i64 4, %.unpack402.unpack.unpack
  %114 = getelementptr double, ptr %79, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !22
  %116 = load double, ptr %gep.3, align 8, !tbaa !15
  %117 = fsub contract double %115, %116
  %118 = sub nsw i64 4, %.fca.7.0.0.load
  %119 = mul nsw i64 %118, %.fca.7.0.2.load
  %120 = getelementptr i8, ptr %.fca.0.load, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !4
  %122 = fmul contract double %117, %117
  %123 = fadd contract double %122, %121
  store double %123, ptr %120, align 8, !tbaa !4
  %124 = sub nsw i64 5, %.unpack402.unpack.unpack
  %125 = getelementptr double, ptr %79, i64 %124
  %126 = load double, ptr %125, align 8, !tbaa !22
  %127 = load double, ptr %gep.4, align 8, !tbaa !15
  %128 = fsub contract double %126, %127
  %129 = sub nsw i64 5, %.fca.7.0.0.load
  %130 = mul nsw i64 %129, %.fca.7.0.2.load
  %131 = getelementptr i8, ptr %.fca.0.load, i64 %130
  %132 = load double, ptr %131, align 8, !tbaa !4
  %133 = fmul contract double %128, %128
  %134 = fadd contract double %133, %132
  store double %134, ptr %131, align 8, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %135 = add nsw i64 %64, -1
  %136 = icmp ugt i64 %64, 1
  br i1 %136, label %omp.wsloop.region19, label %omp.wsloop.region23

omp.par.outlined.exit.exitStub:                   ; preds = %omp.reduction.cleanup33, %reduce.finalize
  ret void
}

; Function Attrs: nounwind
define void @rhs_norm_(ptr %0) local_unnamed_addr #2 {
omp_parallel:
  %structArg = alloca { ptr }, align 8
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEbuf, i64 16360, ptr nonnull @_QMbt_dataEbuf.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEcuf, i64 3272, ptr nonnull @_QMbt_dataEcuf.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEq, i64 3272, ptr nonnull @_QMbt_dataEq.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEue, i64 16360, ptr nonnull @_QMbt_dataEue.cache)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !tbaa !25
  store ptr %0, ptr %structArg, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @rhs_norm_..omp_par, ptr nonnull %structArg)
  %.promoted = load double, ptr %0, align 8, !tbaa !25
  %5 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !31
  %6 = add i32 %5, -2
  %7 = sitofp i32 %6 to double
  %8 = fdiv contract double %.promoted, %7
  %9 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !31
  %10 = add i32 %9, -2
  %11 = sitofp i32 %10 to double
  %12 = fdiv contract double %8, %11
  %13 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !31
  %14 = add i32 %13, -2
  %15 = sitofp i32 %14 to double
  %16 = fdiv contract double %12, %15
  %17 = call contract double @llvm.sqrt.f64(double %16)
  store double %17, ptr %0, align 8, !tbaa !25
  %gep45.1 = getelementptr i8, ptr %0, i64 8
  %.promoted.1 = load double, ptr %gep45.1, align 8, !tbaa !25
  %18 = fdiv contract double %.promoted.1, %7
  %19 = fdiv contract double %18, %11
  %20 = fdiv contract double %19, %15
  %21 = call contract double @llvm.sqrt.f64(double %20)
  store double %21, ptr %gep45.1, align 8, !tbaa !25
  %gep45.2 = getelementptr i8, ptr %0, i64 16
  %.promoted.2 = load double, ptr %gep45.2, align 8, !tbaa !25
  %22 = fdiv contract double %.promoted.2, %7
  %23 = fdiv contract double %22, %11
  %24 = fdiv contract double %23, %15
  %25 = call contract double @llvm.sqrt.f64(double %24)
  store double %25, ptr %gep45.2, align 8, !tbaa !25
  %gep45.3 = getelementptr i8, ptr %0, i64 24
  %.promoted.3 = load double, ptr %gep45.3, align 8, !tbaa !25
  %26 = fdiv contract double %.promoted.3, %7
  %27 = fdiv contract double %26, %11
  %28 = fdiv contract double %27, %15
  %29 = call contract double @llvm.sqrt.f64(double %28)
  store double %29, ptr %gep45.3, align 8, !tbaa !25
  %gep45.4 = getelementptr i8, ptr %0, i64 32
  %.promoted.4 = load double, ptr %gep45.4, align 8, !tbaa !25
  %30 = fdiv contract double %.promoted.4, %7
  %31 = fdiv contract double %30, %11
  %32 = fdiv contract double %31, %15
  %33 = call contract double @llvm.sqrt.f64(double %32)
  store double %33, ptr %gep45.4, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind
define internal void @rhs_norm_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #2 {
omp.par.entry:
  %loadgep_ = load ptr, ptr %0, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %red.array = alloca [1 x ptr], align 8
  %1 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !31
  %2 = add i32 %1, -2
  %3 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !31
  %4 = add i32 %3, -2
  %5 = alloca { ptr, i64, i32, i8, i8, i8, i8 }, align 8
  %6 = alloca { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, align 8
  %7 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40)
  %8 = alloca double, align 8
  store double 0.000000e+00, ptr %8, align 8
  store ptr %8, ptr %5, align 8
  %.fca.1.gep123 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 8, ptr %.fca.1.gep123, align 8
  %.fca.2.gep125 = getelementptr inbounds i8, ptr %5, i64 16
  store i32 20180515, ptr %.fca.2.gep125, align 8
  %.fca.3.gep127 = getelementptr inbounds i8, ptr %5, i64 20
  store i8 0, ptr %.fca.3.gep127, align 4
  %.fca.4.gep129 = getelementptr inbounds i8, ptr %5, i64 21
  store i8 28, ptr %.fca.4.gep129, align 1
  %.fca.5.gep131 = getelementptr inbounds i8, ptr %5, i64 22
  store i8 0, ptr %.fca.5.gep131, align 2
  %.fca.6.gep133 = getelementptr inbounds i8, ptr %5, i64 23
  store i8 0, ptr %.fca.6.gep133, align 1
  store ptr %7, ptr %6, align 8
  %.fca.1.gep14 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 8, ptr %.fca.1.gep14, align 8
  %.fca.2.gep16 = getelementptr inbounds i8, ptr %6, i64 16
  store i32 20180515, ptr %.fca.2.gep16, align 8
  %.fca.3.gep18 = getelementptr inbounds i8, ptr %6, i64 20
  store i8 1, ptr %.fca.3.gep18, align 4
  %.fca.4.gep20 = getelementptr inbounds i8, ptr %6, i64 21
  store i8 28, ptr %.fca.4.gep20, align 1
  %.fca.5.gep22 = getelementptr inbounds i8, ptr %6, i64 22
  store i8 0, ptr %.fca.5.gep22, align 2
  %.fca.6.gep24 = getelementptr inbounds i8, ptr %6, i64 23
  store i8 0, ptr %.fca.6.gep24, align 1
  %.fca.7.0.0.gep26 = getelementptr inbounds i8, ptr %6, i64 24
  store i64 1, ptr %.fca.7.0.0.gep26, align 8
  %.fca.7.0.1.gep28 = getelementptr inbounds i8, ptr %6, i64 32
  store i64 5, ptr %.fca.7.0.1.gep28, align 8
  %.fca.7.0.2.gep30 = getelementptr inbounds i8, ptr %6, i64 40
  store i64 8, ptr %.fca.7.0.2.gep30, align 8
  %9 = call {} @_FortranAAssign(ptr nonnull %6, ptr nonnull %5, ptr nonnull @_QQclXfcbe1d280f596c0060f79d797f8c92f5, i32 24) #3
  %10 = alloca { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, align 8
  store ptr %7, ptr %10, align 8
  %.fca.1.gep = getelementptr inbounds i8, ptr %10, i64 8
  store i64 8, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds i8, ptr %10, i64 16
  store i32 20180515, ptr %.fca.2.gep, align 8
  %.fca.3.gep = getelementptr inbounds i8, ptr %10, i64 20
  store i8 1, ptr %.fca.3.gep, align 4
  %.fca.4.gep = getelementptr inbounds i8, ptr %10, i64 21
  store i8 28, ptr %.fca.4.gep, align 1
  %.fca.5.gep = getelementptr inbounds i8, ptr %10, i64 22
  store i8 0, ptr %.fca.5.gep, align 2
  %.fca.6.gep = getelementptr inbounds i8, ptr %10, i64 23
  store i8 0, ptr %.fca.6.gep, align 1
  %.fca.7.0.0.gep = getelementptr inbounds i8, ptr %10, i64 24
  store i64 1, ptr %.fca.7.0.0.gep, align 8
  %.fca.7.0.1.gep = getelementptr inbounds i8, ptr %10, i64 32
  store i64 5, ptr %.fca.7.0.1.gep, align 8
  %.fca.7.0.2.gep = getelementptr inbounds i8, ptr %10, i64 40
  store i64 8, ptr %.fca.7.0.2.gep, align 8
  %11 = alloca ptr, align 8
  store ptr %10, ptr %11, align 8
  %omp_loop.tripcount = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %omp_loop.tripcount6 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %12 = mul nuw i32 %omp_loop.tripcount6, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num31 = call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num31, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %14 = load i32, ptr %p.lowerbound, align 4
  %15 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %15, %14
  %omp_collapsed.cmp416.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp416.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %16 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !31
  %17 = add i32 %16, -2
  %18 = icmp sgt i32 %17, 0
  %.unpack392 = load ptr, ptr @_QMbt_dataErhs, align 8
  %.unpack399.unpack.unpack404 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack399.unpack400.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8
  %.unpack399.unpack400.unpack407 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack399.unpack401.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8
  %.unpack399.unpack401.unpack410 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack399.unpack402.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8
  %19 = mul nsw i64 %.unpack399.unpack400.unpack407, %.unpack399.unpack.unpack404
  %20 = mul nsw i64 %.unpack399.unpack401.unpack410, %19
  br i1 %18, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %.fca.7.0.2.load = load i64, ptr %.fca.7.0.2.gep, align 8
  %.fca.7.0.0.load = load i64, ptr %.fca.7.0.0.gep, align 8
  %.fca.0.load = load ptr, ptr %10, align 8
  %.unpack399.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8
  %21 = zext nneg i32 %17 to i64
  %22 = sub nsw i64 1, %.unpack399.unpack.unpack
  %23 = sub nsw i64 1, %.fca.7.0.0.load
  %24 = mul nsw i64 %23, %.fca.7.0.2.load
  %25 = getelementptr i8, ptr %.fca.0.load, i64 %24
  %26 = sub nsw i64 2, %.unpack399.unpack.unpack
  %27 = sub nsw i64 2, %.fca.7.0.0.load
  %28 = mul nsw i64 %27, %.fca.7.0.2.load
  %29 = getelementptr i8, ptr %.fca.0.load, i64 %28
  %30 = sub nsw i64 3, %.unpack399.unpack.unpack
  %31 = sub nsw i64 3, %.fca.7.0.0.load
  %32 = mul nsw i64 %31, %.fca.7.0.2.load
  %33 = getelementptr i8, ptr %.fca.0.load, i64 %32
  %34 = sub nsw i64 4, %.unpack399.unpack.unpack
  %35 = sub nsw i64 4, %.fca.7.0.0.load
  %36 = mul nsw i64 %35, %.fca.7.0.2.load
  %37 = getelementptr i8, ptr %.fca.0.load, i64 %36
  %38 = sub nsw i64 5, %.unpack399.unpack.unpack
  %39 = sub nsw i64 5, %.fca.7.0.0.load
  %40 = mul nsw i64 %39, %.fca.7.0.2.load
  %41 = getelementptr i8, ptr %.fca.0.load, i64 %40
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us
  %omp_collapsed.iv417.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %42 = add i32 %omp_collapsed.iv417.us, %14
  %43 = urem i32 %42, %omp_loop.tripcount6
  %44 = udiv i32 %42, %omp_loop.tripcount6
  %45 = add i32 %44, 1
  %46 = add nuw nsw i32 %43, 1
  %47 = zext nneg i32 %46 to i64
  %48 = sext i32 %45 to i64
  %49 = sub nsw i64 %47, %.unpack399.unpack401.unpack
  %50 = mul nsw i64 %49, %19
  %51 = sub nsw i64 %48, %.unpack399.unpack402.unpack
  %52 = mul nsw i64 %20, %51
  %53 = getelementptr double, ptr %.unpack392, i64 %52
  %54 = getelementptr double, ptr %53, i64 %50
  br label %omp.wsloop.region20.preheader.us

omp.wsloop.region20.preheader.us:                 ; preds = %omp_collapsed.body.us, %omp.wsloop.region20.preheader.us
  %indvars.iv = phi i64 [ 1, %omp_collapsed.body.us ], [ %indvars.iv.next, %omp.wsloop.region20.preheader.us ]
  %55 = sub nsw i64 %indvars.iv, %.unpack399.unpack400.unpack
  %56 = mul nsw i64 %55, %.unpack399.unpack.unpack404
  %57 = getelementptr double, ptr %54, i64 %56
  %58 = getelementptr double, ptr %57, i64 %22
  %59 = load double, ptr %58, align 8, !tbaa !34
  %60 = load double, ptr %25, align 8, !tbaa !25
  %61 = fmul contract double %59, %59
  %62 = fadd contract double %61, %60
  store double %62, ptr %25, align 8, !tbaa !25
  %63 = getelementptr double, ptr %57, i64 %26
  %64 = load double, ptr %63, align 8, !tbaa !34
  %65 = load double, ptr %29, align 8, !tbaa !25
  %66 = fmul contract double %64, %64
  %67 = fadd contract double %66, %65
  store double %67, ptr %29, align 8, !tbaa !25
  %68 = getelementptr double, ptr %57, i64 %30
  %69 = load double, ptr %68, align 8, !tbaa !34
  %70 = load double, ptr %33, align 8, !tbaa !25
  %71 = fmul contract double %69, %69
  %72 = fadd contract double %71, %70
  store double %72, ptr %33, align 8, !tbaa !25
  %73 = getelementptr double, ptr %57, i64 %34
  %74 = load double, ptr %73, align 8, !tbaa !34
  %75 = load double, ptr %37, align 8, !tbaa !25
  %76 = fmul contract double %74, %74
  %77 = fadd contract double %76, %75
  store double %77, ptr %37, align 8, !tbaa !25
  %78 = getelementptr double, ptr %57, i64 %38
  %79 = load double, ptr %78, align 8, !tbaa !34
  %80 = load double, ptr %41, align 8, !tbaa !25
  %81 = fmul contract double %79, %79
  %82 = fadd contract double %81, %80
  store double %82, ptr %41, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %21
  br i1 %exitcond.not, label %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us, label %omp.wsloop.region20.preheader.us

omp.wsloop.region18.omp.wsloop.region23_crit_edge.us: ; preds = %omp.wsloop.region20.preheader.us
  %omp_collapsed.next.us = add nuw i32 %omp_collapsed.iv417.us, 1
  %exitcond421.not = icmp eq i32 %omp_collapsed.iv417.us, %reass.sub
  br i1 %exitcond421.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

omp_collapsed.exit:                               ; preds = %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us, %omp_collapsed.body.lr.ph, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num31)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num31)
  store ptr %11, ptr %red.array, align 8
  %reduce = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num31, i32 1, i64 8, ptr nonnull %red.array, ptr nonnull @.omp.reduction.func.1, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce, 1
  br i1 %cond, label %reduce.switch.nonatomic, label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_collapsed.exit
  %red.private.value.0 = load ptr, ptr %11, align 8
  %.unpack = load ptr, ptr %red.private.value.0, align 8
  %.unpack328.unpack.elt332 = getelementptr inbounds i8, ptr %red.private.value.0, i64 40
  %.unpack328.unpack.unpack333 = load i64, ptr %.unpack328.unpack.elt332, align 8
  %83 = load double, ptr %loadgep_, align 8
  %84 = load double, ptr %.unpack, align 8
  %85 = fadd contract double %83, %84
  store double %85, ptr %loadgep_, align 8
  %86 = getelementptr i8, ptr %loadgep_, i64 8
  %87 = getelementptr i8, ptr %.unpack, i64 %.unpack328.unpack.unpack333
  %88 = load double, ptr %86, align 8
  %89 = load double, ptr %87, align 8
  %90 = fadd contract double %88, %89
  store double %90, ptr %86, align 8
  %91 = getelementptr i8, ptr %loadgep_, i64 16
  %92 = shl nsw i64 %.unpack328.unpack.unpack333, 1
  %93 = getelementptr i8, ptr %.unpack, i64 %92
  %94 = load double, ptr %91, align 8
  %95 = load double, ptr %93, align 8
  %96 = fadd contract double %94, %95
  store double %96, ptr %91, align 8
  %97 = getelementptr i8, ptr %loadgep_, i64 24
  %98 = mul nsw i64 %.unpack328.unpack.unpack333, 3
  %99 = getelementptr i8, ptr %.unpack, i64 %98
  %100 = load double, ptr %97, align 8
  %101 = load double, ptr %99, align 8
  %102 = fadd contract double %100, %101
  store double %102, ptr %97, align 8
  %103 = getelementptr i8, ptr %loadgep_, i64 32
  %104 = shl nsw i64 %.unpack328.unpack.unpack333, 2
  %105 = getelementptr i8, ptr %.unpack, i64 %104
  %106 = load double, ptr %103, align 8
  %107 = load double, ptr %105, align 8
  %108 = fadd contract double %106, %107
  store double %108, ptr %103, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num31, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %omp_collapsed.exit, %reduce.switch.nonatomic
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num31)
  %109 = load ptr, ptr %11, align 8
  %.unpack353 = load ptr, ptr %109, align 8
  %.not = icmp eq ptr %.unpack353, null
  br i1 %.not, label %omp.par.outlined.exit.exitStub, label %omp.reduction.cleanup33

omp.reduction.cleanup33:                          ; preds = %reduce.finalize
  call void @free(ptr nonnull %.unpack353)
  br label %omp.par.outlined.exit.exitStub

omp.par.outlined.exit.exitStub:                   ; preds = %omp.reduction.cleanup33, %reduce.finalize
  ret void
}

declare void @exact_solution_(ptr, ptr, ptr, ptr) local_unnamed_addr

declare {} @_FortranAAssign(ptr, ptr, ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func(ptr nocapture readonly %0, ptr nocapture readonly %1) #5 {
omp.reduction.nonatomic.body:
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = load ptr, ptr %4, align 8
  %.unpack = load ptr, ptr %3, align 8
  %.elt36 = getelementptr inbounds i8, ptr %3, i64 24
  %.unpack37.unpack.unpack = load i64, ptr %.elt36, align 8
  %.unpack37.unpack.elt39 = getelementptr inbounds i8, ptr %3, i64 32
  %.unpack37.unpack.unpack40 = load i64, ptr %.unpack37.unpack.elt39, align 8
  %.unpack37.unpack.elt41 = getelementptr inbounds i8, ptr %3, i64 40
  %.unpack37.unpack.unpack42 = load i64, ptr %.unpack37.unpack.elt41, align 8
  %.unpack44 = load ptr, ptr %5, align 8
  %.unpack58.unpack.elt62 = getelementptr inbounds i8, ptr %5, i64 40
  %.unpack58.unpack.unpack63 = load i64, ptr %.unpack58.unpack.elt62, align 8
  %6 = icmp sgt i64 %.unpack37.unpack.unpack40, 0
  br i1 %6, label %omp.reduction.nonatomic.body2.preheader, label %omp.region.cont

omp.reduction.nonatomic.body2.preheader:          ; preds = %omp.reduction.nonatomic.body
  %xtraiter = and i64 %.unpack37.unpack.unpack40, 1
  %7 = icmp eq i64 %.unpack37.unpack.unpack40, 1
  br i1 %7, label %omp.region.cont.loopexit.unr-lcssa, label %omp.reduction.nonatomic.body2.preheader.new

omp.reduction.nonatomic.body2.preheader.new:      ; preds = %omp.reduction.nonatomic.body2.preheader
  %unroll_iter = and i64 %.unpack37.unpack.unpack40, 9223372036854775806
  br label %omp.reduction.nonatomic.body2

omp.reduction.nonatomic.body2:                    ; preds = %omp.reduction.nonatomic.body2, %omp.reduction.nonatomic.body2.preheader.new
  %8 = phi i64 [ 1, %omp.reduction.nonatomic.body2.preheader.new ], [ %26, %omp.reduction.nonatomic.body2 ]
  %niter = phi i64 [ 0, %omp.reduction.nonatomic.body2.preheader.new ], [ %niter.next.1, %omp.reduction.nonatomic.body2 ]
  %9 = sub nsw i64 %8, %.unpack37.unpack.unpack
  %10 = mul nsw i64 %9, %.unpack37.unpack.unpack42
  %11 = getelementptr i8, ptr %.unpack, i64 %10
  %12 = mul nsw i64 %9, %.unpack58.unpack.unpack63
  %13 = getelementptr i8, ptr %.unpack44, i64 %12
  %14 = load double, ptr %11, align 8
  %15 = load double, ptr %13, align 8
  %16 = fadd contract double %14, %15
  store double %16, ptr %11, align 8
  %17 = add nuw i64 %8, 1
  %18 = sub nsw i64 %17, %.unpack37.unpack.unpack
  %19 = mul nsw i64 %18, %.unpack37.unpack.unpack42
  %20 = getelementptr i8, ptr %.unpack, i64 %19
  %21 = mul nsw i64 %18, %.unpack58.unpack.unpack63
  %22 = getelementptr i8, ptr %.unpack44, i64 %21
  %23 = load double, ptr %20, align 8
  %24 = load double, ptr %22, align 8
  %25 = fadd contract double %23, %24
  store double %25, ptr %20, align 8
  %26 = add nuw i64 %8, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %omp.region.cont.loopexit.unr-lcssa, label %omp.reduction.nonatomic.body2

omp.region.cont.loopexit.unr-lcssa:               ; preds = %omp.reduction.nonatomic.body2, %omp.reduction.nonatomic.body2.preheader
  %.unr = phi i64 [ 1, %omp.reduction.nonatomic.body2.preheader ], [ %26, %omp.reduction.nonatomic.body2 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %omp.region.cont, label %omp.reduction.nonatomic.body2.epil

omp.reduction.nonatomic.body2.epil:               ; preds = %omp.region.cont.loopexit.unr-lcssa
  %27 = sub nsw i64 %.unr, %.unpack37.unpack.unpack
  %28 = mul nsw i64 %27, %.unpack37.unpack.unpack42
  %29 = getelementptr i8, ptr %.unpack, i64 %28
  %30 = mul nsw i64 %27, %.unpack58.unpack.unpack63
  %31 = getelementptr i8, ptr %.unpack44, i64 %30
  %32 = load double, ptr %29, align 8
  %33 = load double, ptr %31, align 8
  %34 = fadd contract double %32, %33
  store double %34, ptr %29, align 8
  br label %omp.region.cont

omp.region.cont:                                  ; preds = %omp.reduction.nonatomic.body2.epil, %omp.region.cont.loopexit.unr-lcssa, %omp.reduction.nonatomic.body
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(ptr, i32, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func.1(ptr nocapture readonly %0, ptr nocapture readonly %1) #5 {
omp.reduction.nonatomic.body:
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = load ptr, ptr %4, align 8
  %.unpack = load ptr, ptr %3, align 8
  %.elt36 = getelementptr inbounds i8, ptr %3, i64 24
  %.unpack37.unpack.unpack = load i64, ptr %.elt36, align 8
  %.unpack37.unpack.elt39 = getelementptr inbounds i8, ptr %3, i64 32
  %.unpack37.unpack.unpack40 = load i64, ptr %.unpack37.unpack.elt39, align 8
  %.unpack37.unpack.elt41 = getelementptr inbounds i8, ptr %3, i64 40
  %.unpack37.unpack.unpack42 = load i64, ptr %.unpack37.unpack.elt41, align 8
  %.unpack44 = load ptr, ptr %5, align 8
  %.unpack58.unpack.elt62 = getelementptr inbounds i8, ptr %5, i64 40
  %.unpack58.unpack.unpack63 = load i64, ptr %.unpack58.unpack.elt62, align 8
  %6 = icmp sgt i64 %.unpack37.unpack.unpack40, 0
  br i1 %6, label %omp.reduction.nonatomic.body2.preheader, label %omp.region.cont

omp.reduction.nonatomic.body2.preheader:          ; preds = %omp.reduction.nonatomic.body
  %xtraiter = and i64 %.unpack37.unpack.unpack40, 1
  %7 = icmp eq i64 %.unpack37.unpack.unpack40, 1
  br i1 %7, label %omp.region.cont.loopexit.unr-lcssa, label %omp.reduction.nonatomic.body2.preheader.new

omp.reduction.nonatomic.body2.preheader.new:      ; preds = %omp.reduction.nonatomic.body2.preheader
  %unroll_iter = and i64 %.unpack37.unpack.unpack40, 9223372036854775806
  br label %omp.reduction.nonatomic.body2

omp.reduction.nonatomic.body2:                    ; preds = %omp.reduction.nonatomic.body2, %omp.reduction.nonatomic.body2.preheader.new
  %8 = phi i64 [ 1, %omp.reduction.nonatomic.body2.preheader.new ], [ %26, %omp.reduction.nonatomic.body2 ]
  %niter = phi i64 [ 0, %omp.reduction.nonatomic.body2.preheader.new ], [ %niter.next.1, %omp.reduction.nonatomic.body2 ]
  %9 = sub nsw i64 %8, %.unpack37.unpack.unpack
  %10 = mul nsw i64 %9, %.unpack37.unpack.unpack42
  %11 = getelementptr i8, ptr %.unpack, i64 %10
  %12 = mul nsw i64 %9, %.unpack58.unpack.unpack63
  %13 = getelementptr i8, ptr %.unpack44, i64 %12
  %14 = load double, ptr %11, align 8
  %15 = load double, ptr %13, align 8
  %16 = fadd contract double %14, %15
  store double %16, ptr %11, align 8
  %17 = add nuw i64 %8, 1
  %18 = sub nsw i64 %17, %.unpack37.unpack.unpack
  %19 = mul nsw i64 %18, %.unpack37.unpack.unpack42
  %20 = getelementptr i8, ptr %.unpack, i64 %19
  %21 = mul nsw i64 %18, %.unpack58.unpack.unpack63
  %22 = getelementptr i8, ptr %.unpack44, i64 %21
  %23 = load double, ptr %20, align 8
  %24 = load double, ptr %22, align 8
  %25 = fadd contract double %23, %24
  store double %25, ptr %20, align 8
  %26 = add nuw i64 %8, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %omp.region.cont.loopexit.unr-lcssa, label %omp.reduction.nonatomic.body2

omp.region.cont.loopexit.unr-lcssa:               ; preds = %omp.reduction.nonatomic.body2, %omp.reduction.nonatomic.body2.preheader
  %.unr = phi i64 [ 1, %omp.reduction.nonatomic.body2.preheader ], [ %26, %omp.reduction.nonatomic.body2 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %omp.region.cont, label %omp.reduction.nonatomic.body2.epil

omp.reduction.nonatomic.body2.epil:               ; preds = %omp.region.cont.loopexit.unr-lcssa
  %27 = sub nsw i64 %.unr, %.unpack37.unpack.unpack
  %28 = mul nsw i64 %27, %.unpack37.unpack.unpack42
  %29 = getelementptr i8, ptr %.unpack, i64 %28
  %30 = mul nsw i64 %27, %.unpack58.unpack.unpack63
  %31 = getelementptr i8, ptr %.unpack44, i64 %30
  %32 = load double, ptr %29, align 8
  %33 = load double, ptr %31, align 8
  %34 = fadd contract double %32, %33
  store double %34, ptr %29, align 8
  br label %omp.region.cont

omp.region.cont:                                  ; preds = %omp.reduction.nonatomic.body2.epil, %omp.region.cont.loopexit.unr-lcssa, %omp.reduction.nonatomic.body
  ret void
}

; Function Attrs: nounwind
declare !callback !37 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #2 = { nounwind "target-cpu"="x86-64" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"dummy arg data/_QFerror_normErms", !6, i64 0}
!6 = !{!"dummy arg data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPerror_norm"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QMbt_dataEgrid_points", !12, i64 0}
!12 = !{!"global data", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMbt_dataEdnzm1", !12, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"global data/_QMbt_dataEdnym1", !12, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"global data/_QMbt_dataEdnxm1", !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"descriptor member", !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"direct data/_QMbt_dataEu", !24, i64 0}
!24 = !{!"direct data", !7, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"dummy arg data/_QFrhs_normErms", !27, i64 0}
!27 = !{!"dummy arg data", !28, i64 0}
!28 = !{!"any data access", !29, i64 0}
!29 = !{!"any access", !30, i64 0}
!30 = !{!"Flang function root _QPrhs_norm"}
!31 = !{!32, !32, i64 0}
!32 = !{!"global data/_QMbt_dataEgrid_points", !33, i64 0}
!33 = !{!"global data", !28, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"direct data/_QMbt_dataErhs", !36, i64 0}
!36 = !{!"direct data", !28, i64 0}
!37 = !{!38}
!38 = !{i64 2, i64 -1, i64 -1, i1 true}
