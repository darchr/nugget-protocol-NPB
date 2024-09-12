; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@_QMwork_lhsEcv = local_unnamed_addr global [408 x double] zeroinitializer
@_QMwork_lhsECimaxp = local_unnamed_addr constant i32 408
@_QMwork_lhsElhs = local_unnamed_addr global [409 x [5 x double]] zeroinitializer
@_QMwork_lhsElhsm = local_unnamed_addr global [409 x [5 x double]] zeroinitializer
@_QMwork_lhsElhsp = local_unnamed_addr global [409 x [5 x double]] zeroinitializer
@_QMwork_lhsErhov = local_unnamed_addr global [408 x double] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define void @lhsinit_(ptr nocapture readonly %0, ptr nocapture writeonly %1, ptr nocapture writeonly %2, ptr nocapture writeonly %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %0, align 4, !tbaa !4
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 5
  %8 = getelementptr double, ptr %1, i64 %7
  %9 = getelementptr double, ptr %2, i64 %7
  %10 = getelementptr double, ptr %3, i64 %7
  store double 0.000000e+00, ptr %1, align 8, !tbaa !10
  store double 0.000000e+00, ptr %2, align 8, !tbaa !12
  store double 0.000000e+00, ptr %3, align 8, !tbaa !14
  store double 0.000000e+00, ptr %8, align 8, !tbaa !10
  store double 0.000000e+00, ptr %9, align 8, !tbaa !12
  store double 0.000000e+00, ptr %10, align 8, !tbaa !14
  %11 = getelementptr i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %11, align 8, !tbaa !10
  %12 = getelementptr i8, ptr %2, i64 8
  store double 0.000000e+00, ptr %12, align 8, !tbaa !12
  %13 = getelementptr i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %13, align 8, !tbaa !14
  %14 = getelementptr i8, ptr %8, i64 8
  store double 0.000000e+00, ptr %14, align 8, !tbaa !10
  %15 = getelementptr i8, ptr %9, i64 8
  store double 0.000000e+00, ptr %15, align 8, !tbaa !12
  %16 = getelementptr i8, ptr %10, i64 8
  store double 0.000000e+00, ptr %16, align 8, !tbaa !14
  %17 = getelementptr i8, ptr %1, i64 16
  %18 = getelementptr i8, ptr %2, i64 16
  %19 = getelementptr i8, ptr %3, i64 16
  %20 = getelementptr i8, ptr %8, i64 16
  %21 = getelementptr i8, ptr %9, i64 16
  %22 = getelementptr i8, ptr %10, i64 16
  %23 = getelementptr i8, ptr %1, i64 24
  store double 0.000000e+00, ptr %23, align 8, !tbaa !10
  %24 = getelementptr i8, ptr %2, i64 24
  store double 0.000000e+00, ptr %24, align 8, !tbaa !12
  %25 = getelementptr i8, ptr %3, i64 24
  store double 0.000000e+00, ptr %25, align 8, !tbaa !14
  %26 = getelementptr i8, ptr %8, i64 24
  store double 0.000000e+00, ptr %26, align 8, !tbaa !10
  %27 = getelementptr i8, ptr %9, i64 24
  store double 0.000000e+00, ptr %27, align 8, !tbaa !12
  %28 = getelementptr i8, ptr %10, i64 24
  store double 0.000000e+00, ptr %28, align 8, !tbaa !14
  %29 = getelementptr i8, ptr %1, i64 32
  store double 0.000000e+00, ptr %29, align 8, !tbaa !10
  %30 = getelementptr i8, ptr %2, i64 32
  store double 0.000000e+00, ptr %30, align 8, !tbaa !12
  %31 = getelementptr i8, ptr %3, i64 32
  store double 0.000000e+00, ptr %31, align 8, !tbaa !14
  %32 = getelementptr i8, ptr %8, i64 32
  store double 0.000000e+00, ptr %32, align 8, !tbaa !10
  %33 = getelementptr i8, ptr %9, i64 32
  store double 0.000000e+00, ptr %33, align 8, !tbaa !12
  %34 = getelementptr i8, ptr %10, i64 32
  store double 0.000000e+00, ptr %34, align 8, !tbaa !14
  store double 1.000000e+00, ptr %17, align 8, !tbaa !10
  store double 1.000000e+00, ptr %18, align 8, !tbaa !12
  store double 1.000000e+00, ptr %19, align 8, !tbaa !14
  store double 1.000000e+00, ptr %20, align 8, !tbaa !10
  store double 1.000000e+00, ptr %21, align 8, !tbaa !12
  store double 1.000000e+00, ptr %22, align 8, !tbaa !14
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"dummy arg data/_QFlhsinitEni", !6, i64 0}
!6 = !{!"dummy arg data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPlhsinit"}
!10 = !{!11, !11, i64 0}
!11 = !{!"dummy arg data/_QFlhsinitElhs", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"dummy arg data/_QFlhsinitElhsp", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"dummy arg data/_QFlhsinitElhsm", !6, i64 0}
