; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMsp_dataEbt = external local_unnamed_addr global double
@_QMsp_dataEbuf = external global [5 x [102 x double]]
@_QMsp_dataEcuf = external global [102 x double]
@_QMsp_dataEnx2 = external local_unnamed_addr global i32
@_QMsp_dataEny2 = external local_unnamed_addr global i32
@_QMsp_dataEnz2 = external local_unnamed_addr global i32
@_QMsp_dataEq = external global [102 x double]
@_QMsp_dataErhs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMsp_dataEtimeron = external local_unnamed_addr global i32
@_QMsp_dataEue = external global [5 x [102 x double]]
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMsp_dataEbuf.cache = common global ptr null, align 8
@_QMsp_dataEcuf.cache = common global ptr null, align 8
@_QMsp_dataEq.cache = common global ptr null, align 8
@_QMsp_dataEue.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8

define void @pinvr_() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEbuf, i64 4080, ptr nonnull @_QMsp_dataEbuf.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEcuf, i64 816, ptr nonnull @_QMsp_dataEcuf.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEq, i64 816, ptr nonnull @_QMsp_dataEq.cache)
  %6 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEue, i64 4080, ptr nonnull @_QMsp_dataEue.cache)
  %7 = load i32, ptr @_QMsp_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %omp_parallel, label %8

8:                                                ; preds = %0
  store i32 12, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2)
  br label %omp_parallel

omp_parallel:                                     ; preds = %8, %0
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @pinvr_..omp_par)
  %9 = load i32, ptr @_QMsp_dataEtimeron, align 4, !tbaa !4
  %.not23 = icmp eq i32 %9, 0
  br i1 %.not23, label %11, label %10

10:                                               ; preds = %omp_parallel
  store i32 12, ptr %1, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %1)
  br label %11

11:                                               ; preds = %10, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @pinvr_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr) #1 {
omp.par.entry:
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %0 = load i32, ptr @_QMsp_dataEnz2, align 4, !tbaa !11
  %1 = load i32, ptr @_QMsp_dataEny2, align 4, !tbaa !13
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %omp_loop.tripcount6 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %2 = mul nuw i32 %omp_loop.tripcount6, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %3 = add i32 %2, -1
  store i32 %3, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num22 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num22, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %4 = load i32, ptr %p.lowerbound, align 4
  %5 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %5, %4
  %omp_collapsed.cmp510.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp510.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %6 = load i32, ptr @_QMsp_dataEnx2, align 4, !tbaa !15
  %7 = icmp sgt i32 %6, 0
  %.unpack = load ptr, ptr @_QMsp_dataErhs, align 8
  %.unpack389.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7), align 8
  %.unpack389.unpack.unpack394 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack389.unpack390.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 1), align 8
  %.unpack389.unpack390.unpack397 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack389.unpack391.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 2), align 8
  %.unpack389.unpack391.unpack400 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack389.unpack392.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 3), align 8
  %8 = mul nsw i64 %.unpack389.unpack390.unpack397, %.unpack389.unpack.unpack394
  %9 = mul nsw i64 %.unpack389.unpack391.unpack400, %8
  %10 = load double, ptr @_QMsp_dataEbt, align 8
  br i1 %7, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %11 = zext nneg i32 %6 to i64
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us
  %omp_collapsed.iv511.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %12 = add i32 %omp_collapsed.iv511.us, %4
  %.frozen = freeze i32 %12
  %omp_loop.tripcount6.frozen = freeze i32 %omp_loop.tripcount6
  %13 = udiv i32 %.frozen, %omp_loop.tripcount6.frozen
  %14 = mul i32 %13, %omp_loop.tripcount6.frozen
  %.decomposed = sub i32 %.frozen, %14
  %15 = add i32 %13, 1
  %16 = add nuw nsw i32 %.decomposed, 1
  %17 = zext nneg i32 %16 to i64
  %18 = sext i32 %15 to i64
  %19 = sub nsw i64 %17, %.unpack389.unpack391.unpack
  %20 = mul nsw i64 %19, %8
  %21 = sub nsw i64 %18, %.unpack389.unpack392.unpack
  %22 = mul nsw i64 %9, %21
  %23 = getelementptr double, ptr %.unpack, i64 %22
  %24 = getelementptr double, ptr %23, i64 %20
  br label %omp.wsloop.region19.us

omp.wsloop.region19.us:                           ; preds = %omp_collapsed.body.us, %omp.wsloop.region19.us
  %indvars.iv = phi i64 [ 1, %omp_collapsed.body.us ], [ %indvars.iv.next, %omp.wsloop.region19.us ]
  %25 = sub nsw i64 %indvars.iv, %.unpack389.unpack390.unpack
  %26 = mul nsw i64 %25, %.unpack389.unpack.unpack394
  %reass.sub.us = sub i64 %26, %.unpack389.unpack.unpack
  %27 = getelementptr double, ptr %24, i64 %reass.sub.us
  %28 = getelementptr i8, ptr %27, i64 8
  %29 = load double, ptr %28, align 8, !tbaa !17
  %30 = getelementptr i8, ptr %27, i64 16
  %31 = load double, ptr %30, align 8, !tbaa !17
  %32 = getelementptr i8, ptr %27, i64 24
  %33 = load double, ptr %32, align 8, !tbaa !17
  %34 = getelementptr i8, ptr %27, i64 32
  %35 = load double, ptr %34, align 8, !tbaa !17
  %36 = getelementptr i8, ptr %27, i64 40
  %37 = load double, ptr %36, align 8, !tbaa !17
  %38 = fmul contract double %29, %10
  %39 = fadd contract double %35, %37
  %40 = fmul contract double %39, 5.000000e-01
  %41 = fsub contract double %35, %37
  %42 = fmul contract double %10, %41
  store double %42, ptr %28, align 8, !tbaa !17
  %43 = fneg contract double %33
  store double %43, ptr %30, align 8, !tbaa !17
  store double %31, ptr %32, align 8, !tbaa !17
  %44 = fsub contract double %40, %38
  store double %44, ptr %34, align 8, !tbaa !17
  %45 = fadd contract double %38, %40
  store double %45, ptr %36, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %11
  br i1 %exitcond.not, label %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us, label %omp.wsloop.region19.us

omp.wsloop.region18.omp.wsloop.region20_crit_edge.us: ; preds = %omp.wsloop.region19.us
  %omp_collapsed.next.us = add nuw i32 %omp_collapsed.iv511.us, 1
  %exitcond514.not = icmp eq i32 %omp_collapsed.iv511.us, %reass.sub
  br i1 %exitcond514.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

omp_collapsed.exit:                               ; preds = %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us, %omp_collapsed.body.lr.ph, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num22)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num22)
  ret void
}

declare void @timer_start_(ptr) local_unnamed_addr

declare void @timer_stop_(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !20 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #2 = { nounwind }
attributes #3 = { convergent nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!9 = !{!"Flang function root _QPpinvr"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMsp_dataEnz2", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMsp_dataEny2", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMsp_dataEnx2", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"direct data/_QMsp_dataErhs", !19, i64 0}
!19 = !{!"direct data", !7, i64 0}
!20 = !{!21}
!21 = !{i64 2, i64 -1, i64 -1, i1 true}
