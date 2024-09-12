; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMbt_dataEbuf = external global [5 x [103 x double]]
@_QMbt_dataEcuf = external global [103 x double]
@_QMbt_dataEgrid_points = external local_unnamed_addr global [3 x i32]
@_QMbt_dataEq = external global [103 x double]
@_QMbt_dataErhs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMbt_dataEtimeron = external local_unnamed_addr global i32
@_QMbt_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMbt_dataEue = external global [5 x [103 x double]]
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMbt_dataEbuf.cache = common global ptr null, align 8
@_QMbt_dataEcuf.cache = common global ptr null, align 8
@_QMbt_dataEq.cache = common global ptr null, align 8
@_QMbt_dataEue.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8

define void @add_() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEbuf, i64 4120, ptr nonnull @_QMbt_dataEbuf.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEcuf, i64 824, ptr nonnull @_QMbt_dataEcuf.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEq, i64 824, ptr nonnull @_QMbt_dataEq.cache)
  %6 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMbt_dataEue, i64 4120, ptr nonnull @_QMbt_dataEue.cache)
  %7 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %omp_parallel, label %8

8:                                                ; preds = %0
  store i32 11, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2)
  br label %omp_parallel

omp_parallel:                                     ; preds = %8, %0
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @add_..omp_par)
  %9 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not26 = icmp eq i32 %9, 0
  br i1 %.not26, label %11, label %10

10:                                               ; preds = %omp_parallel
  store i32 11, ptr %1, align 4, !tbaa !10
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
  %0 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !11
  %1 = add i32 %0, -2
  %2 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !11
  %3 = add i32 %2, -2
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %omp_loop.tripcount6 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %4 = mul nuw i32 %omp_loop.tripcount6, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num25 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num25, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %6 = load i32, ptr %p.lowerbound, align 4
  %7 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %7, %6
  %omp_collapsed.cmp92.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp92.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %8 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !11
  %9 = add i32 %8, -2
  %10 = icmp sgt i32 %9, 0
  %.unpack = load ptr, ptr @_QMbt_dataEu, align 8
  %.unpack51.unpack.unpack56 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack51.unpack52.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 1), align 8
  %.unpack51.unpack52.unpack59 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack51.unpack53.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 2), align 8
  %.unpack51.unpack53.unpack62 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack51.unpack54.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 3), align 8
  %11 = mul nsw i64 %.unpack51.unpack52.unpack59, %.unpack51.unpack.unpack56
  %12 = mul nsw i64 %.unpack51.unpack53.unpack62, %11
  %.unpack68 = load ptr, ptr @_QMbt_dataErhs, align 8
  %.unpack75.unpack.unpack80 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack75.unpack76.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8
  %.unpack75.unpack76.unpack83 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack75.unpack77.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8
  %.unpack75.unpack77.unpack86 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack75.unpack78.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8
  %13 = mul nsw i64 %.unpack75.unpack76.unpack83, %.unpack75.unpack.unpack80
  %14 = mul nsw i64 %.unpack75.unpack77.unpack86, %13
  br i1 %10, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %.unpack75.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8
  %.unpack51.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7), align 8
  %15 = zext nneg i32 %9 to i64
  %16 = sub nsw i64 1, %.unpack51.unpack.unpack
  %17 = sub nsw i64 1, %.unpack75.unpack.unpack
  %18 = sub nsw i64 2, %.unpack51.unpack.unpack
  %19 = sub nsw i64 2, %.unpack75.unpack.unpack
  %20 = sub nsw i64 3, %.unpack51.unpack.unpack
  %21 = sub nsw i64 3, %.unpack75.unpack.unpack
  %22 = sub nsw i64 4, %.unpack51.unpack.unpack
  %23 = sub nsw i64 4, %.unpack75.unpack.unpack
  %24 = sub nsw i64 5, %.unpack51.unpack.unpack
  %25 = sub nsw i64 5, %.unpack75.unpack.unpack
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us
  %omp_collapsed.iv93.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region18.omp.wsloop.region23_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %26 = add i32 %omp_collapsed.iv93.us, %6
  %.frozen = freeze i32 %26
  %omp_loop.tripcount6.frozen = freeze i32 %omp_loop.tripcount6
  %27 = udiv i32 %.frozen, %omp_loop.tripcount6.frozen
  %28 = mul i32 %27, %omp_loop.tripcount6.frozen
  %.decomposed = sub i32 %.frozen, %28
  %29 = add i32 %27, 1
  %30 = add nuw nsw i32 %.decomposed, 1
  %31 = zext nneg i32 %30 to i64
  %32 = sext i32 %29 to i64
  %33 = sub nsw i64 %31, %.unpack51.unpack53.unpack
  %34 = mul nsw i64 %33, %11
  %35 = sub nsw i64 %32, %.unpack51.unpack54.unpack
  %36 = mul nsw i64 %12, %35
  %37 = getelementptr double, ptr %.unpack, i64 %36
  %38 = getelementptr double, ptr %37, i64 %34
  %39 = sub nsw i64 %31, %.unpack75.unpack77.unpack
  %40 = mul nsw i64 %39, %13
  %41 = sub nsw i64 %32, %.unpack75.unpack78.unpack
  %42 = mul nsw i64 %14, %41
  %43 = getelementptr double, ptr %.unpack68, i64 %42
  %44 = getelementptr double, ptr %43, i64 %40
  br label %omp.wsloop.region20.preheader.us

omp.wsloop.region20.preheader.us:                 ; preds = %omp_collapsed.body.us, %omp.wsloop.region20.preheader.us
  %indvars.iv = phi i64 [ 1, %omp_collapsed.body.us ], [ %indvars.iv.next, %omp.wsloop.region20.preheader.us ]
  %45 = sub nsw i64 %indvars.iv, %.unpack51.unpack52.unpack
  %46 = mul nsw i64 %45, %.unpack51.unpack.unpack56
  %47 = getelementptr double, ptr %38, i64 %46
  %48 = sub nsw i64 %indvars.iv, %.unpack75.unpack76.unpack
  %49 = mul nsw i64 %48, %.unpack75.unpack.unpack80
  %50 = getelementptr double, ptr %44, i64 %49
  %51 = getelementptr double, ptr %47, i64 %16
  %52 = load double, ptr %51, align 8, !tbaa !13
  %53 = getelementptr double, ptr %50, i64 %17
  %54 = load double, ptr %53, align 8, !tbaa !16
  %55 = fadd contract double %52, %54
  store double %55, ptr %51, align 8, !tbaa !13
  %56 = getelementptr double, ptr %47, i64 %18
  %57 = load double, ptr %56, align 8, !tbaa !13
  %58 = getelementptr double, ptr %50, i64 %19
  %59 = load double, ptr %58, align 8, !tbaa !16
  %60 = fadd contract double %57, %59
  store double %60, ptr %56, align 8, !tbaa !13
  %61 = getelementptr double, ptr %47, i64 %20
  %62 = load double, ptr %61, align 8, !tbaa !13
  %63 = getelementptr double, ptr %50, i64 %21
  %64 = load double, ptr %63, align 8, !tbaa !16
  %65 = fadd contract double %62, %64
  store double %65, ptr %61, align 8, !tbaa !13
  %66 = getelementptr double, ptr %47, i64 %22
  %67 = load double, ptr %66, align 8, !tbaa !13
  %68 = getelementptr double, ptr %50, i64 %23
  %69 = load double, ptr %68, align 8, !tbaa !16
  %70 = fadd contract double %67, %69
  store double %70, ptr %66, align 8, !tbaa !13
  %71 = getelementptr double, ptr %47, i64 %24
  %72 = load double, ptr %71, align 8, !tbaa !13
  %73 = getelementptr double, ptr %50, i64 %25
  %74 = load double, ptr %73, align 8, !tbaa !16
  %75 = fadd contract double %72, %74
  store double %75, ptr %71, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %15
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
declare !callback !18 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #2

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
!5 = !{!"global data/_QMbt_dataEtimeron", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPadd"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMbt_dataEgrid_points", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"direct data/_QMbt_dataEu", !15, i64 0}
!15 = !{!"direct data", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"direct data/_QMbt_dataErhs", !15, i64 0}
!18 = !{!19}
!19 = !{i64 2, i64 -1, i64 -1, i1 true}
