; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMlu_dataEa = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEb = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEc = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEce = external local_unnamed_addr global [13 x [5 x double]]
@_QMlu_dataEd = external global [162 x [5 x [5 x double]]]
@_QMlu_dataEdeta = external local_unnamed_addr global double
@_QMlu_dataEdssp = external local_unnamed_addr global double
@_QMlu_dataEdx1 = external local_unnamed_addr global double
@_QMlu_dataEdx2 = external local_unnamed_addr global double
@_QMlu_dataEdx3 = external local_unnamed_addr global double
@_QMlu_dataEdx4 = external local_unnamed_addr global double
@_QMlu_dataEdx5 = external local_unnamed_addr global double
@_QMlu_dataEdxi = external local_unnamed_addr global double
@_QMlu_dataEdy1 = external local_unnamed_addr global double
@_QMlu_dataEdy2 = external local_unnamed_addr global double
@_QMlu_dataEdy3 = external local_unnamed_addr global double
@_QMlu_dataEdy4 = external local_unnamed_addr global double
@_QMlu_dataEdy5 = external local_unnamed_addr global double
@_QMlu_dataEdz1 = external local_unnamed_addr global double
@_QMlu_dataEdz2 = external local_unnamed_addr global double
@_QMlu_dataEdz3 = external local_unnamed_addr global double
@_QMlu_dataEdz4 = external local_unnamed_addr global double
@_QMlu_dataEdz5 = external local_unnamed_addr global double
@_QMlu_dataEdzeta = external local_unnamed_addr global double
@_QMlu_dataEflux = external global [162 x [5 x double]]
@_QMlu_dataEnx0 = external local_unnamed_addr global i32
@_QMlu_dataEny0 = external local_unnamed_addr global i32
@_QMlu_dataEnz0 = external local_unnamed_addr global i32
@_QMlu_dataEtx1 = external local_unnamed_addr global double
@_QMlu_dataEtx2 = external local_unnamed_addr global double
@_QMlu_dataEtx3 = external local_unnamed_addr global double
@_QMlu_dataEty1 = external local_unnamed_addr global double
@_QMlu_dataEty2 = external local_unnamed_addr global double
@_QMlu_dataEty3 = external local_unnamed_addr global double
@_QMlu_dataEtz1 = external local_unnamed_addr global double
@_QMlu_dataEtz2 = external local_unnamed_addr global double
@_QMlu_dataEtz3 = external local_unnamed_addr global double
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8

; Function Attrs: nounwind
define void @setcoeff_() local_unnamed_addr #0 {
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEa, i64 32400, ptr nonnull @_QMlu_dataEa.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEb, i64 32400, ptr nonnull @_QMlu_dataEb.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEc, i64 32400, ptr nonnull @_QMlu_dataEc.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEd, i64 32400, ptr nonnull @_QMlu_dataEd.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEflux, i64 6480, ptr nonnull @_QMlu_dataEflux.cache)
  %6 = load i32, ptr @_QMlu_dataEnx0, align 4, !tbaa !4
  %7 = add i32 %6, -1
  %8 = sitofp i32 %7 to double
  %9 = fdiv contract double 1.000000e+00, %8
  store double %9, ptr @_QMlu_dataEdxi, align 8, !tbaa !10
  %10 = load i32, ptr @_QMlu_dataEny0, align 4, !tbaa !12
  %11 = add i32 %10, -1
  %12 = sitofp i32 %11 to double
  %13 = fdiv contract double 1.000000e+00, %12
  store double %13, ptr @_QMlu_dataEdeta, align 8, !tbaa !14
  %14 = load i32, ptr @_QMlu_dataEnz0, align 4, !tbaa !16
  %15 = add i32 %14, -1
  %16 = sitofp i32 %15 to double
  %17 = fdiv contract double 1.000000e+00, %16
  store double %17, ptr @_QMlu_dataEdzeta, align 8, !tbaa !18
  %18 = fmul contract double %9, %9
  %19 = fdiv contract double 1.000000e+00, %18
  store double %19, ptr @_QMlu_dataEtx1, align 8, !tbaa !20
  %20 = fmul contract double %9, 2.000000e+00
  %21 = fdiv contract double 1.000000e+00, %20
  store double %21, ptr @_QMlu_dataEtx2, align 8, !tbaa !22
  %22 = fdiv contract double 1.000000e+00, %9
  store double %22, ptr @_QMlu_dataEtx3, align 8, !tbaa !24
  %23 = fmul contract double %13, %13
  %24 = fdiv contract double 1.000000e+00, %23
  store double %24, ptr @_QMlu_dataEty1, align 8, !tbaa !26
  %25 = fmul contract double %13, 2.000000e+00
  %26 = fdiv contract double 1.000000e+00, %25
  store double %26, ptr @_QMlu_dataEty2, align 8, !tbaa !28
  %27 = fdiv contract double 1.000000e+00, %13
  store double %27, ptr @_QMlu_dataEty3, align 8, !tbaa !30
  %28 = fmul contract double %17, %17
  %29 = fdiv contract double 1.000000e+00, %28
  store double %29, ptr @_QMlu_dataEtz1, align 8, !tbaa !32
  %30 = fmul contract double %17, 2.000000e+00
  %31 = fdiv contract double 1.000000e+00, %30
  store double %31, ptr @_QMlu_dataEtz2, align 8, !tbaa !34
  %32 = fdiv contract double 1.000000e+00, %17
  store double %32, ptr @_QMlu_dataEtz3, align 8, !tbaa !36
  store double 7.500000e-01, ptr @_QMlu_dataEdx1, align 8, !tbaa !38
  store double 7.500000e-01, ptr @_QMlu_dataEdx2, align 8, !tbaa !40
  store double 7.500000e-01, ptr @_QMlu_dataEdx3, align 8, !tbaa !42
  store double 7.500000e-01, ptr @_QMlu_dataEdx4, align 8, !tbaa !44
  store double 7.500000e-01, ptr @_QMlu_dataEdx5, align 8, !tbaa !46
  store double 7.500000e-01, ptr @_QMlu_dataEdy1, align 8, !tbaa !48
  store double 7.500000e-01, ptr @_QMlu_dataEdy2, align 8, !tbaa !50
  store double 7.500000e-01, ptr @_QMlu_dataEdy3, align 8, !tbaa !52
  store double 7.500000e-01, ptr @_QMlu_dataEdy4, align 8, !tbaa !54
  store double 7.500000e-01, ptr @_QMlu_dataEdy5, align 8, !tbaa !56
  store double 1.000000e+00, ptr @_QMlu_dataEdz1, align 8, !tbaa !58
  store double 1.000000e+00, ptr @_QMlu_dataEdz2, align 8, !tbaa !60
  store double 1.000000e+00, ptr @_QMlu_dataEdz3, align 8, !tbaa !62
  store double 1.000000e+00, ptr @_QMlu_dataEdz4, align 8, !tbaa !64
  store double 1.000000e+00, ptr @_QMlu_dataEdz5, align 8, !tbaa !66
  store double 2.500000e-01, ptr @_QMlu_dataEdssp, align 8, !tbaa !68
  store double 2.000000e+00, ptr @_QMlu_dataEce, align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 1, i64 0), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 2, i64 0), align 8, !tbaa !70
  store double 4.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 3, i64 0), align 8, !tbaa !70
  store double 5.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 4, i64 0), align 8, !tbaa !70
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 5, i64 0), align 8, !tbaa !70
  store double 5.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 6, i64 0), align 8, !tbaa !70
  store double 2.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 7, i64 0), align 8, !tbaa !70
  store double 1.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 8, i64 0), align 8, !tbaa !70
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 9, i64 0), align 8, !tbaa !70
  store double 5.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 10, i64 0), align 8, !tbaa !70
  store double 4.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 11, i64 0), align 8, !tbaa !70
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 12, i64 0), align 8, !tbaa !70
  store double 1.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 0, i64 1), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 1, i64 1), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 2, i64 1), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 3, i64 1), align 8, !tbaa !70
  store double 1.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 4, i64 1), align 8, !tbaa !70
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 5, i64 1), align 8, !tbaa !70
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 6, i64 1), align 8, !tbaa !70
  store double 1.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 7, i64 1), align 8, !tbaa !70
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 8, i64 1), align 8, !tbaa !70
  store double 2.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 9, i64 1), align 8, !tbaa !70
  store double 4.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 10, i64 1), align 8, !tbaa !70
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 11, i64 1), align 8, !tbaa !70
  store double 5.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 12, i64 1), align 8, !tbaa !70
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 0, i64 2), align 8, !tbaa !70
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 1, i64 2), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 2, i64 2), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 3, i64 2), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 4, i64 2), align 8, !tbaa !70
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 5, i64 2), align 8, !tbaa !70
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 6, i64 2), align 8, !tbaa !70
  store double 4.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 7, i64 2), align 8, !tbaa !70
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 8, i64 2), align 8, !tbaa !70
  store double 5.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 9, i64 2), align 8, !tbaa !70
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 10, i64 2), align 8, !tbaa !70
  store double 5.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 11, i64 2), align 8, !tbaa !70
  store double 4.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 12, i64 2), align 8, !tbaa !70
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 0, i64 3), align 8, !tbaa !70
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 1, i64 3), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 2, i64 3), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 3, i64 3), align 8, !tbaa !70
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 4, i64 3), align 8, !tbaa !70
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 5, i64 3), align 8, !tbaa !70
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 6, i64 3), align 8, !tbaa !70
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 7, i64 3), align 8, !tbaa !70
  store double 5.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 8, i64 3), align 8, !tbaa !70
  store double 4.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 9, i64 3), align 8, !tbaa !70
  store double 2.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 10, i64 3), align 8, !tbaa !70
  store double 1.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 11, i64 3), align 8, !tbaa !70
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 12, i64 3), align 8, !tbaa !70
  store double 5.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 0, i64 4), align 8, !tbaa !70
  store double 4.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 1, i64 4), align 8, !tbaa !70
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 2, i64 4), align 8, !tbaa !70
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 3, i64 4), align 8, !tbaa !70
  store double 1.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 4, i64 4), align 8, !tbaa !70
  store double 4.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 5, i64 4), align 8, !tbaa !70
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 6, i64 4), align 8, !tbaa !70
  store double 5.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 7, i64 4), align 8, !tbaa !70
  store double 4.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 8, i64 4), align 8, !tbaa !70
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 9, i64 4), align 8, !tbaa !70
  store double 1.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 10, i64 4), align 8, !tbaa !70
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 11, i64 4), align 8, !tbaa !70
  store double 2.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMlu_dataEce, i64 0, i64 12, i64 4), align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QMlu_dataEnx0", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPsetcoeff"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QMlu_dataEdxi", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"global data/_QMlu_dataEny0", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"global data/_QMlu_dataEdeta", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"global data/_QMlu_dataEnz0", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"global data/_QMlu_dataEdzeta", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"global data/_QMlu_dataEtx1", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"global data/_QMlu_dataEtx2", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"global data/_QMlu_dataEtx3", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"global data/_QMlu_dataEty1", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"global data/_QMlu_dataEty2", !6, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"global data/_QMlu_dataEty3", !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"global data/_QMlu_dataEtz1", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"global data/_QMlu_dataEtz2", !6, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"global data/_QMlu_dataEtz3", !6, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"global data/_QMlu_dataEdx1", !6, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"global data/_QMlu_dataEdx2", !6, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"global data/_QMlu_dataEdx3", !6, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"global data/_QMlu_dataEdx4", !6, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"global data/_QMlu_dataEdx5", !6, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"global data/_QMlu_dataEdy1", !6, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"global data/_QMlu_dataEdy2", !6, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"global data/_QMlu_dataEdy3", !6, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"global data/_QMlu_dataEdy4", !6, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"global data/_QMlu_dataEdy5", !6, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"global data/_QMlu_dataEdz1", !6, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"global data/_QMlu_dataEdz2", !6, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"global data/_QMlu_dataEdz3", !6, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"global data/_QMlu_dataEdz4", !6, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"global data/_QMlu_dataEdz5", !6, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"global data/_QMlu_dataEdssp", !6, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"global data/_QMlu_dataEce", !6, i64 0}
