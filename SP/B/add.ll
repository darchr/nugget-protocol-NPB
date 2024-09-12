; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMsp_dataEbuf = external global [5 x [102 x double]]
@_QMsp_dataEcuf = external global [102 x double]
@_QMsp_dataEnx2 = external local_unnamed_addr global i32
@_QMsp_dataEny2 = external local_unnamed_addr global i32
@_QMsp_dataEnz2 = external local_unnamed_addr global i32
@_QMsp_dataEq = external global [102 x double]
@_QMsp_dataErhs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMsp_dataEtimeron = external local_unnamed_addr global i32
@_QMsp_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMsp_dataEue = external global [5 x [102 x double]]
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMsp_dataEbuf.cache = common global ptr null, align 8
@_QMsp_dataEcuf.cache = common global ptr null, align 8
@_QMsp_dataEq.cache = common global ptr null, align 8
@_QMsp_dataEue.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8

define void @add_() local_unnamed_addr #0 {
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
  store i32 15, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2)
  br label %omp_parallel

omp_parallel:                                     ; preds = %8, %0
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @add_..omp_par)
  %9 = load i32, ptr @_QMsp_dataEtimeron, align 4, !tbaa !4
  %.not26 = icmp eq i32 %9, 0
  br i1 %.not26, label %11, label %10

10:                                               ; preds = %omp_parallel
  store i32 15, ptr %1, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %1)
  br label %11

11:                                               ; preds = %10, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @add_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr) #1 {
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
  %omp_global_thread_num25 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num25, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %4 = load i32, ptr %p.lowerbound, align 4
  %5 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %5, %4
  %omp_collapsed.cmp92.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp92.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %6 = load i32, ptr @_QMsp_dataEnx2, align 4, !tbaa !15
  %7 = icmp sgt i32 %6, 0
  %.unpack = load ptr, ptr @_QMsp_dataEu, align 8
  %.unpack51.unpack.unpack56 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack51.unpack52.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 1), align 8
  %.unpack51.unpack52.unpack59 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack51.unpack53.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 2), align 8
  %.unpack51.unpack53.unpack62 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack51.unpack54.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 3), align 8
  %8 = mul nsw i64 %.unpack51.unpack52.unpack59, %.unpack51.unpack.unpack56
  %9 = mul nsw i64 %.unpack51.unpack53.unpack62, %8
  %.unpack68 = load ptr, ptr @_QMsp_dataErhs, align 8
  %.unpack75.unpack.unpack80 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack75.unpack76.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 1), align 8
  %.unpack75.unpack76.unpack83 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack75.unpack77.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 2), align 8
  %.unpack75.unpack77.unpack86 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack75.unpack78.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 3), align 8
  %10 = mul nsw i64 %.unpack75.unpack76.unpack83, %.unpack75.unpack.unpack80
  %11 = mul nsw i64 %.unpack75.unpack77.unpack86, %10
  br i1 %7, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %.unpack75.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7), align 8
  %.unpack51.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7), align 8
  %12 = zext nneg i32 %6 to i64
  %13 = sub nsw i64 1, %.unpack51.unpack.unpack
  %14 = sub nsw i64 1, %.unpack75.unpack.unpack
  %15 = sub nsw i64 2, %.unpack51.unpack.unpack
  %16 = sub nsw i64 2, %.unpack75.unpack.unpack
  %17 = sub nsw i64 3, %.unpack51.unpack.unpack
  %18 = sub nsw i64 3, %.unpack75.unpack.unpack
  %19 = sub nsw i64 4, %.unpack51.unpack.unpack
  %20 = sub nsw i64 4, %.unpack75.unpack.unpack
  %21 = sub nsw i64 5, %.unpack51.unpack.unpack
  %22 = sub nsw i64 5, %.unpack75.unpack.unpack
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us
  %omp_collapsed.iv93.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %23 = add i32 %omp_collapsed.iv93.us, %4
  %.frozen = freeze i32 %23
  %omp_loop.tripcount6.frozen = freeze i32 %omp_loop.tripcount6
  %24 = udiv i32 %.frozen, %omp_loop.tripcount6.frozen
  %25 = mul i32 %24, %omp_loop.tripcount6.frozen
  %.decomposed = sub i32 %.frozen, %25
  %26 = add i32 %24, 1
  %27 = add nuw nsw i32 %.decomposed, 1
  %28 = zext nneg i32 %27 to i64
  %29 = sext i32 %26 to i64
  %30 = sub nsw i64 %28, %.unpack51.unpack53.unpack
  %31 = mul nsw i64 %30, %8
  %32 = sub nsw i64 %29, %.unpack51.unpack54.unpack
  %33 = mul nsw i64 %9, %32
  %34 = getelementptr double, ptr %.unpack, i64 %33
  %35 = getelementptr double, ptr %34, i64 %31
  %36 = sub nsw i64 %28, %.unpack75.unpack77.unpack
  %37 = mul nsw i64 %36, %10
  %38 = sub nsw i64 %29, %.unpack75.unpack78.unpack
  %39 = mul nsw i64 %11, %38
  %40 = getelementptr double, ptr %.unpack68, i64 %39
  %41 = getelementptr double, ptr %40, i64 %37
  br label %omp.wsloop.region20.preheader.us

omp.wsloop.region20.preheader.us:                 ; preds = %omp_collapsed.body.us, %omp.wsloop.region20.preheader.us
  %indvars.iv = phi i64 [ 1, %omp_collapsed.body.us ], [ %indvars.iv.next, %omp.wsloop.region20.preheader.us ]
  %42 = sub nsw i64 %indvars.iv, %.unpack51.unpack52.unpack
  %43 = mul nsw i64 %42, %.unpack51.unpack.unpack56
  %44 = getelementptr double, ptr %35, i64 %43
  %45 = sub nsw i64 %indvars.iv, %.unpack75.unpack76.unpack
  %46 = mul nsw i64 %45, %.unpack75.unpack.unpack80
  %47 = getelementptr double, ptr %41, i64 %46
  %48 = getelementptr double, ptr %44, i64 %13
  %49 = load double, ptr %48, align 8, !tbaa !17
  %50 = getelementptr double, ptr %47, i64 %14
  %51 = load double, ptr %50, align 8, !tbaa !20
  %52 = fadd contract double %49, %51
  store double %52, ptr %48, align 8, !tbaa !17
  %53 = getelementptr double, ptr %44, i64 %15
  %54 = load double, ptr %53, align 8, !tbaa !17
  %55 = getelementptr double, ptr %47, i64 %16
  %56 = load double, ptr %55, align 8, !tbaa !20
  %57 = fadd contract double %54, %56
  store double %57, ptr %53, align 8, !tbaa !17
  %58 = getelementptr double, ptr %44, i64 %17
  %59 = load double, ptr %58, align 8, !tbaa !17
  %60 = getelementptr double, ptr %47, i64 %18
  %61 = load double, ptr %60, align 8, !tbaa !20
  %62 = fadd contract double %59, %61
  store double %62, ptr %58, align 8, !tbaa !17
  %63 = getelementptr double, ptr %44, i64 %19
  %64 = load double, ptr %63, align 8, !tbaa !17
  %65 = getelementptr double, ptr %47, i64 %20
  %66 = load double, ptr %65, align 8, !tbaa !20
  %67 = fadd contract double %64, %66
  store double %67, ptr %63, align 8, !tbaa !17
  %68 = getelementptr double, ptr %44, i64 %21
  %69 = load double, ptr %68, align 8, !tbaa !17
  %70 = getelementptr double, ptr %47, i64 %22
  %71 = load double, ptr %70, align 8, !tbaa !20
  %72 = fadd contract double %69, %71
  store double %72, ptr %68, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %12
  br i1 %exitcond.not, label %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us, label %omp.wsloop.region20.preheader.us

omp.wsloop.region18.omp.wsloop.region23_crit_edge.us: ; preds = %omp.wsloop.region20.preheader.us
  %omp_collapsed.next.us = add nuw i32 %omp_collapsed.iv93.us, 1
  %exitcond97.not = icmp eq i32 %omp_collapsed.iv93.us, %reass.sub
  br i1 %exitcond97.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

omp_collapsed.exit:                               ; preds = %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us, %omp_collapsed.body.lr.ph, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num25)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num25)
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
declare !callback !22 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #2

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
!9 = !{!"Flang function root _QPadd"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMsp_dataEnz2", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMsp_dataEny2", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMsp_dataEnx2", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"direct data/_QMsp_dataEu", !19, i64 0}
!19 = !{!"direct data", !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"direct data/_QMsp_dataErhs", !19, i64 0}
!22 = !{!23}
!23 = !{i64 2, i64 -1, i64 -1, i1 true}
