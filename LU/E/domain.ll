; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclXcb7430d617ed2cd59dcf1ea3b25b8cb9 = comdat any

$_QQclX6a3fa2aecb1966daba68a92c05530bf4 = comdat any

$_QQclX999859758a70b4d67328baab7bb2b071 = comdat any

@_QMlu_dataEa = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEb = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEc = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEd = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEflux = external global [1020 x [5 x double]]
@_QMlu_dataEiend = external local_unnamed_addr global i32
@_QMlu_dataEii1 = external local_unnamed_addr global i32
@_QMlu_dataEii2 = external local_unnamed_addr global i32
@_QMlu_dataEist = external local_unnamed_addr global i32
@_QMlu_dataEjend = external local_unnamed_addr global i32
@_QMlu_dataEji1 = external local_unnamed_addr global i32
@_QMlu_dataEji2 = external local_unnamed_addr global i32
@_QMlu_dataEjst = external local_unnamed_addr global i32
@_QMlu_dataEki1 = external local_unnamed_addr global i32
@_QMlu_dataEki2 = external local_unnamed_addr global i32
@_QMlu_dataEnx = external local_unnamed_addr global i32
@_QMlu_dataEnx0 = external local_unnamed_addr global i32
@_QMlu_dataEny = external local_unnamed_addr global i32
@_QMlu_dataEny0 = external local_unnamed_addr global i32
@_QMlu_dataEnz = external local_unnamed_addr global i32
@_QMlu_dataEnz0 = external local_unnamed_addr global i32
@_QQclXcb7430d617ed2cd59dcf1ea3b25b8cb9 = linkonce constant [179 x i8] c"(5x,'SUBDOMAIN SIZE IS TOO SMALL - ', /5x,'ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS', /5x,'SO THAT NX, NY AND NZ ARE GREATER THAN OR EQUAL', /5x,'TO 4 THEY ARE CURRENTLY', 3i3)", comdat
@_QQclX6a3fa2aecb1966daba68a92c05530bf4 = linkonce constant [60 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/LU/domain.f90\00", comdat
@_QQclX999859758a70b4d67328baab7bb2b071 = linkonce constant [220 x i8] c"(5x,'SUBDOMAIN SIZE IS TOO LARGE - ', /5x,'ADJUST PROBLEM SIZE OR NUMBER OF PROCESSORS', /5x,'SO THAT NX, NY AND NZ ARE LESS THAN OR EQUAL TO ', /5x,'ISIZ1, ISIZ2 AND ISIZ3 RESPECTIVELY.  THEY ARE', /5x,'CURRENTLY', 3i4)", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8

define void @domain_() local_unnamed_addr #0 {
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEa, i64 204000, ptr nonnull @_QMlu_dataEa.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEb, i64 204000, ptr nonnull @_QMlu_dataEb.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEc, i64 204000, ptr nonnull @_QMlu_dataEc.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEd, i64 204000, ptr nonnull @_QMlu_dataEd.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEflux, i64 40800, ptr nonnull @_QMlu_dataEflux.cache)
  %6 = load i32, ptr @_QMlu_dataEnx0, align 4, !tbaa !4
  store i32 %6, ptr @_QMlu_dataEnx, align 4, !tbaa !10
  %7 = load i32, ptr @_QMlu_dataEny0, align 4, !tbaa !12
  store i32 %7, ptr @_QMlu_dataEny, align 4, !tbaa !14
  %8 = load i32, ptr @_QMlu_dataEnz0, align 4, !tbaa !16
  store i32 %8, ptr @_QMlu_dataEnz, align 4, !tbaa !18
  %9 = icmp slt i32 %6, 4
  %10 = icmp slt i32 %7, 4
  %11 = or i1 %9, %10
  %12 = icmp slt i32 %8, 4
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %0
  %15 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXcb7430d617ed2cd59dcf1ea3b25b8cb9, i64 179, ptr null, i32 6, ptr nonnull @_QQclX6a3fa2aecb1966daba68a92c05530bf4, i32 28)
  %16 = load i32, ptr @_QMlu_dataEnx, align 4, !tbaa !10
  %17 = tail call i1 @_FortranAioOutputInteger32(ptr %15, i32 %16)
  %18 = load i32, ptr @_QMlu_dataEny, align 4, !tbaa !14
  %19 = tail call i1 @_FortranAioOutputInteger32(ptr %15, i32 %18)
  %20 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !18
  %21 = tail call i1 @_FortranAioOutputInteger32(ptr %15, i32 %20)
  %22 = tail call i32 @_FortranAioEndIoStatement(ptr %15)
  %23 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

24:                                               ; preds = %0
  %25 = icmp ugt i32 %6, 1020
  %26 = icmp ugt i32 %7, 1020
  %27 = or i1 %25, %26
  %28 = icmp ugt i32 %8, 1020
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX999859758a70b4d67328baab7bb2b071, i64 220, ptr null, i32 6, ptr nonnull @_QQclX6a3fa2aecb1966daba68a92c05530bf4, i32 39)
  %32 = load i32, ptr @_QMlu_dataEnx, align 4, !tbaa !10
  %33 = tail call i1 @_FortranAioOutputInteger32(ptr %31, i32 %32)
  %34 = load i32, ptr @_QMlu_dataEny, align 4, !tbaa !14
  %35 = tail call i1 @_FortranAioOutputInteger32(ptr %31, i32 %34)
  %36 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !18
  %37 = tail call i1 @_FortranAioOutputInteger32(ptr %31, i32 %36)
  %38 = tail call i32 @_FortranAioEndIoStatement(ptr %31)
  %39 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

40:                                               ; preds = %24
  store i32 2, ptr @_QMlu_dataEist, align 4, !tbaa !20
  %41 = add nsw i32 %6, -1
  store i32 %41, ptr @_QMlu_dataEiend, align 4, !tbaa !22
  store i32 2, ptr @_QMlu_dataEjst, align 4, !tbaa !24
  %42 = add nsw i32 %7, -1
  store i32 %42, ptr @_QMlu_dataEjend, align 4, !tbaa !26
  store i32 2, ptr @_QMlu_dataEii1, align 4, !tbaa !28
  store i32 %41, ptr @_QMlu_dataEii2, align 4, !tbaa !30
  store i32 2, ptr @_QMlu_dataEji1, align 4, !tbaa !32
  %43 = add nsw i32 %7, -2
  store i32 %43, ptr @_QMlu_dataEji2, align 4, !tbaa !34
  store i32 3, ptr @_QMlu_dataEki1, align 4, !tbaa !36
  %44 = add nsw i32 %8, -1
  store i32 %44, ptr @_QMlu_dataEki2, align 4, !tbaa !38
  ret void
}

declare ptr @_FortranAioBeginExternalFormattedOutput(ptr, i64, ptr, i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputInteger32(ptr, i32) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare {} @_FortranAStopStatement(i32, i1 zeroext, i1 zeroext) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #1

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
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
!9 = !{!"Flang function root _QPdomain"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QMlu_dataEnx", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"global data/_QMlu_dataEny0", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"global data/_QMlu_dataEny", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"global data/_QMlu_dataEnz0", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"global data/_QMlu_dataEnz", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"global data/_QMlu_dataEist", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"global data/_QMlu_dataEiend", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"global data/_QMlu_dataEjst", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"global data/_QMlu_dataEjend", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"global data/_QMlu_dataEii1", !6, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"global data/_QMlu_dataEii2", !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"global data/_QMlu_dataEji1", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"global data/_QMlu_dataEji2", !6, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"global data/_QMlu_dataEki1", !6, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"global data/_QMlu_dataEki2", !6, i64 0}
