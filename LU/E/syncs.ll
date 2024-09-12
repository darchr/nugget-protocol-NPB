; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMsyncsEiam = global i32 0
@_QMsyncsEisync = local_unnamed_addr global [1021 x [16 x i32]] zeroinitializer
@_QMsyncsEmthreadnum = global i32 0
@_QMsyncsECpadim = local_unnamed_addr constant i32 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMsyncsEiam.cache = common global ptr null, align 8
@_QMsyncsEmthreadnum.cache = common global ptr null, align 8

define void @sync_init_(ptr nocapture readonly %0) local_unnamed_addr #0 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMsyncsEiam, i64 4, ptr nonnull @_QMsyncsEiam.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMsyncsEmthreadnum, i64 4, ptr nonnull @_QMsyncsEmthreadnum.cache)
  store i32 0, ptr %3, align 4, !tbaa !4
  %4 = tail call i32 @omp_get_num_threads_()
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4, !tbaa !4
  %6 = load i32, ptr %0, align 4, !tbaa !8
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %5, i32 %6)
  store i32 %spec.store.select, ptr %3, align 4
  store i32 0, ptr %2, align 4, !tbaa !4
  %7 = tail call i32 @omp_get_thread_num_()
  store i32 %7, ptr %2, align 4, !tbaa !4
  %8 = load i32, ptr %3, align 4, !tbaa !4
  %.not = icmp sgt i32 %7, %8
  br i1 %.not, label %13, label %9

9:                                                ; preds = %1
  %10 = sext i32 %7 to i64
  %11 = shl nsw i64 %10, 4
  %12 = getelementptr i32, ptr @_QMsyncsEisync, i64 %11
  store i32 0, ptr %12, align 16, !tbaa !11
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind
define void @sync_left_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) local_unnamed_addr #1 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMsyncsEiam, i64 4, ptr nonnull @_QMsyncsEiam.cache)
  %6 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMsyncsEmthreadnum, i64 4, ptr nonnull @_QMsyncsEmthreadnum.cache)
  %7 = load i32, ptr %5, align 4, !tbaa !14
  %8 = icmp sgt i32 %7, 0
  %9 = load i32, ptr %6, align 4, !tbaa !14
  %10 = icmp sle i32 %7, %9
  %11 = and i1 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = add nsw i32 %7, -1
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 4
  %16 = getelementptr i32, ptr @_QMsyncsEisync, i64 %15
  %omp.atomic.read = load atomic i32, ptr %16 monotonic, align 16
  %17 = icmp eq i32 %omp.atomic.read, 0
  br i1 %17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %12, %.lr.ph
  %omp.atomic.read2 = load atomic i32, ptr %16 monotonic, align 16
  %18 = icmp eq i32 %omp.atomic.read2, 0
  br i1 %18, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %12
  store atomic i32 0, ptr %16 monotonic, align 16
  br label %19

19:                                               ; preds = %._crit_edge, %4
  tail call void @__kmpc_flush(ptr nonnull @1)
  ret void
}

; Function Attrs: nounwind
define void @sync_right_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) local_unnamed_addr #1 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMsyncsEiam, i64 4, ptr nonnull @_QMsyncsEiam.cache)
  %6 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMsyncsEmthreadnum, i64 4, ptr nonnull @_QMsyncsEmthreadnum.cache)
  tail call void @__kmpc_flush(ptr nonnull @1)
  %7 = load i32, ptr %5, align 4, !tbaa !18
  %8 = load i32, ptr %6, align 4, !tbaa !18
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = sext i32 %7 to i64
  %12 = shl nsw i64 %11, 4
  %13 = getelementptr i32, ptr @_QMsyncsEisync, i64 %12
  %omp.atomic.read = load atomic i32, ptr %13 monotonic, align 16
  %14 = icmp eq i32 %omp.atomic.read, 1
  br i1 %14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %10, %.lr.ph
  %omp.atomic.read2 = load atomic i32, ptr %13 monotonic, align 16
  %15 = icmp eq i32 %omp.atomic.read2, 1
  br i1 %15, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %10
  store atomic i32 1, ptr %13 monotonic, align 16
  br label %16

16:                                               ; preds = %._crit_edge, %4
  ret void
}

declare i32 @omp_get_num_threads_() local_unnamed_addr

declare i32 @omp_get_thread_num_() local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_flush(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

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
!5 = !{!"any data access", !6, i64 0}
!6 = !{!"any access", !7, i64 0}
!7 = !{!"Flang function root _QPsync_init"}
!8 = !{!9, !9, i64 0}
!9 = !{!"dummy arg data/_QFsync_initEjdim", !10, i64 0}
!10 = !{!"dummy arg data", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMsyncsEisync", !13, i64 0}
!13 = !{!"global data", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"any data access", !16, i64 0}
!16 = !{!"any access", !17, i64 0}
!17 = !{!"Flang function root _QPsync_left"}
!18 = !{!19, !19, i64 0}
!19 = !{!"any data access", !20, i64 0}
!20 = !{!"any access", !21, i64 0}
!21 = !{!"Flang function root _QPsync_right"}
