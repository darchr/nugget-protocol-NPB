; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX4E50425F54494D45525F464C4147 = comdat any

$_QQclXcfdfb2342145643a26a8c68b0958a9bf = comdat any

$_QQclX31 = comdat any

$_QQclX39 = comdat any

$_QQclX6F6E = comdat any

$_QQclX4F4E = comdat any

$_QQclX796573 = comdat any

$_QQclX594553 = comdat any

$_QQclX74727565 = comdat any

$_QQclX54525545 = comdat any

$_QQclX74696D65722E666C6167 = comdat any

$_QQclX6F6C64 = comdat any

@_QMtimersEelapsed = global [64 x double] zeroinitializer
@_QMtimersEstart = global [64 x double] zeroinitializer
@_QQclX4E50425F54494D45525F464C4147 = linkonce constant [14 x i8] c"NPB_TIMER_FLAG", comdat
@_QQclXcfdfb2342145643a26a8c68b0958a9bf = linkonce constant [64 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/common/timers.f90\00", comdat
@_QQclX31 = linkonce constant [1 x i8] c"1", comdat
@_QQclX39 = linkonce constant [1 x i8] c"9", comdat
@_QQclX6F6E = linkonce constant [2 x i8] c"on", comdat
@_QQclX4F4E = linkonce constant [2 x i8] c"ON", comdat
@_QQclX796573 = linkonce constant [3 x i8] c"yes", comdat
@_QQclX594553 = linkonce constant [3 x i8] c"YES", comdat
@_QQclX74727565 = linkonce constant [4 x i8] c"true", comdat
@_QQclX54525545 = linkonce constant [4 x i8] c"TRUE", comdat
@_QQclX74696D65722E666C6167 = linkonce constant [10 x i8] c"timer.flag", comdat
@_QQclX6F6C64 = linkonce constant [3 x i8] c"old", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMtimersEelapsed.cache = common global ptr null, align 8
@_QMtimersEstart.cache = common global ptr null, align 8

; Function Attrs: nounwind
define void @timer_clear_(ptr nocapture readonly %0) local_unnamed_addr #0 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMtimersEelapsed, i64 512, ptr nonnull @_QMtimersEelapsed.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMtimersEstart, i64 512, ptr nonnull @_QMtimersEstart.cache)
  %4 = load i32, ptr %0, align 4, !tbaa !4
  %5 = sext i32 %4 to i64
  %6 = getelementptr double, ptr %2, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !10
  ret void
}

define void @timer_start_(ptr nocapture readonly %0) local_unnamed_addr #1 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMtimersEelapsed, i64 512, ptr nonnull @_QMtimersEelapsed.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMtimersEstart, i64 512, ptr nonnull @_QMtimersEstart.cache)
  %4 = tail call contract double @omp_get_wtime_()
  %5 = load i32, ptr %0, align 4, !tbaa !11
  %6 = sext i32 %5 to i64
  %7 = getelementptr double, ptr %3, i64 %6
  %8 = getelementptr i8, ptr %7, i64 -8
  store double %4, ptr %8, align 8, !tbaa !17
  ret void
}

define void @timer_stop_(ptr nocapture readonly %0) local_unnamed_addr #1 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMtimersEelapsed, i64 512, ptr nonnull @_QMtimersEelapsed.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMtimersEstart, i64 512, ptr nonnull @_QMtimersEstart.cache)
  %4 = tail call contract double @omp_get_wtime_()
  %5 = load i32, ptr %0, align 4, !tbaa !18
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, -1
  %8 = getelementptr double, ptr %3, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !24
  %10 = fsub contract double %4, %9
  %11 = getelementptr double, ptr %2, i64 %7
  %12 = load double, ptr %11, align 8, !tbaa !24
  %13 = fadd contract double %12, %10
  store double %13, ptr %11, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind
define double @timer_read_(ptr nocapture readonly %0) local_unnamed_addr #0 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMtimersEelapsed, i64 512, ptr nonnull @_QMtimersEelapsed.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMtimersEstart, i64 512, ptr nonnull @_QMtimersEstart.cache)
  %4 = load i32, ptr %0, align 4, !tbaa !25
  %5 = sext i32 %4 to i64
  %6 = getelementptr double, ptr %2, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -8
  %8 = load double, ptr %7, align 8, !tbaa !31
  ret double %8
}

define double @elapsed_time_() local_unnamed_addr #1 {
  %1 = tail call contract double @omp_get_wtime_()
  ret double %1
}

define void @check_timer_flag_(ptr nocapture writeonly %0) local_unnamed_addr #1 {
  %2 = alloca { ptr, i64, i32, i8, i8, i8, i8 }, align 8
  %3 = alloca { ptr, i64, i32, i8, i8, i8, i8 }, align 8
  %4 = alloca { ptr, i64, i32, i8, i8, i8, i8 }, align 8
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 4
  store i32 0, ptr %0, align 4, !tbaa !32
  store ptr @_QQclX4E50425F54494D45525F464C4147, ptr %4, align 8, !tbaa !38
  %.fca.1.gep = getelementptr inbounds i8, ptr %4, i64 8
  store i64 14, ptr %.fca.1.gep, align 8, !tbaa !38
  %.fca.2.gep = getelementptr inbounds i8, ptr %4, i64 16
  store i32 20180515, ptr %.fca.2.gep, align 8, !tbaa !38
  %.fca.3.gep = getelementptr inbounds i8, ptr %4, i64 20
  store i8 0, ptr %.fca.3.gep, align 4, !tbaa !38
  %.fca.4.gep = getelementptr inbounds i8, ptr %4, i64 21
  store i8 40, ptr %.fca.4.gep, align 1, !tbaa !38
  %.fca.5.gep = getelementptr inbounds i8, ptr %4, i64 22
  store i8 0, ptr %.fca.5.gep, align 2, !tbaa !38
  %.fca.6.gep = getelementptr inbounds i8, ptr %4, i64 23
  store i8 0, ptr %.fca.6.gep, align 1, !tbaa !38
  store ptr %6, ptr %3, align 8, !tbaa !38
  %.fca.1.gep2 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 20, ptr %.fca.1.gep2, align 8, !tbaa !38
  %.fca.2.gep3 = getelementptr inbounds i8, ptr %3, i64 16
  store i32 20180515, ptr %.fca.2.gep3, align 8, !tbaa !38
  %.fca.3.gep4 = getelementptr inbounds i8, ptr %3, i64 20
  store i8 0, ptr %.fca.3.gep4, align 4, !tbaa !38
  %.fca.4.gep5 = getelementptr inbounds i8, ptr %3, i64 21
  store i8 40, ptr %.fca.4.gep5, align 1, !tbaa !38
  %.fca.5.gep6 = getelementptr inbounds i8, ptr %3, i64 22
  store i8 0, ptr %.fca.5.gep6, align 2, !tbaa !38
  %.fca.6.gep7 = getelementptr inbounds i8, ptr %3, i64 23
  store i8 0, ptr %.fca.6.gep7, align 1, !tbaa !38
  store ptr %5, ptr %2, align 8, !tbaa !38
  %.fca.1.gep11 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 4, ptr %.fca.1.gep11, align 8, !tbaa !38
  %.fca.2.gep13 = getelementptr inbounds i8, ptr %2, i64 16
  store i32 20180515, ptr %.fca.2.gep13, align 8, !tbaa !38
  %.fca.3.gep15 = getelementptr inbounds i8, ptr %2, i64 20
  store i8 0, ptr %.fca.3.gep15, align 4, !tbaa !38
  %.fca.4.gep17 = getelementptr inbounds i8, ptr %2, i64 21
  store i8 9, ptr %.fca.4.gep17, align 1, !tbaa !38
  %.fca.5.gep19 = getelementptr inbounds i8, ptr %2, i64 22
  store i8 0, ptr %.fca.5.gep19, align 2, !tbaa !38
  %.fca.6.gep21 = getelementptr inbounds i8, ptr %2, i64 23
  store i8 0, ptr %.fca.6.gep21, align 1, !tbaa !38
  %7 = call i32 @_FortranAGetEnvVariable(ptr nonnull %4, ptr nonnull %3, ptr nonnull %2, i1 true, ptr null, ptr nonnull @_QQclXcfdfb2342145643a26a8c68b0958a9bf, i32 147)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load i32, ptr %5, align 4, !tbaa !40
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %.sink.split, label %12

12:                                               ; preds = %9
  %13 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %6, ptr nonnull @_QQclX31, i64 1, i64 1)
  %14 = icmp sgt i32 %13, -1
  %15 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %6, ptr nonnull @_QQclX39, i64 1, i64 1)
  %16 = icmp slt i32 %15, 1
  %17 = and i1 %14, %16
  br i1 %17, label %.sink.split, label %18

18:                                               ; preds = %12
  %19 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %6, ptr nonnull @_QQclX6F6E, i64 20, i64 2)
  %20 = icmp eq i32 %19, 0
  %21 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %6, ptr nonnull @_QQclX4F4E, i64 20, i64 2)
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %20, %22
  %24 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %6, ptr nonnull @_QQclX796573, i64 20, i64 3)
  %25 = icmp eq i32 %24, 0
  %26 = or i1 %23, %25
  %27 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %6, ptr nonnull @_QQclX594553, i64 20, i64 3)
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %26, %28
  %30 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %6, ptr nonnull @_QQclX74727565, i64 20, i64 4)
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %29, %31
  %33 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %6, ptr nonnull @_QQclX54525545, i64 20, i64 4)
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %32, %34
  br i1 %35, label %.sink.split, label %48

36:                                               ; preds = %1
  %37 = call ptr @_FortranAioBeginOpenUnit(i32 2, ptr nonnull @_QQclXcfdfb2342145643a26a8c68b0958a9bf, i32 162)
  %38 = call {} @_FortranAioEnableHandlers(ptr %37, i1 true, i1 false, i1 false, i1 false, i1 false)
  %39 = call i1 @_FortranAioSetFile(ptr %37, ptr nonnull @_QQclX74696D65722E666C6167, i64 10)
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i1 @_FortranAioSetStatus(ptr %37, ptr nonnull @_QQclX6F6C64, i64 3)
  br label %42

42:                                               ; preds = %40, %36
  %43 = call i32 @_FortranAioEndIoStatement(ptr %37)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call ptr @_FortranAioBeginClose(i32 2, ptr nonnull @_QQclXcfdfb2342145643a26a8c68b0958a9bf, i32 164)
  %47 = call i32 @_FortranAioEndIoStatement(ptr %46)
  br label %.sink.split

.sink.split:                                      ; preds = %18, %12, %9, %45
  store i32 1, ptr %0, align 4, !tbaa !32
  br label %48

48:                                               ; preds = %.sink.split, %18, %42
  ret void
}

declare double @omp_get_wtime_() local_unnamed_addr

declare i32 @_FortranAGetEnvVariable(ptr, ptr, ptr, i1 zeroext, ptr, ptr, i32) local_unnamed_addr

declare i32 @_FortranACharacterCompareScalar1(ptr, ptr, i64, i64) local_unnamed_addr

declare ptr @_FortranAioBeginOpenUnit(i32, ptr, i32) local_unnamed_addr

declare {} @_FortranAioEnableHandlers(ptr, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext) local_unnamed_addr

declare zeroext i1 @_FortranAioSetFile(ptr, ptr, i64) local_unnamed_addr

declare zeroext i1 @_FortranAioSetStatus(ptr, ptr, i64) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare ptr @_FortranAioBeginClose(i32, ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"dummy arg data/_QFtimer_clearEn", !6, i64 0}
!6 = !{!"dummy arg data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPtimer_clear"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"dummy arg data/_QFtimer_startEn", !13, i64 0}
!13 = !{!"dummy arg data", !14, i64 0}
!14 = !{!"any data access", !15, i64 0}
!15 = !{!"any access", !16, i64 0}
!16 = !{!"Flang function root _QPtimer_start"}
!17 = !{!14, !14, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"dummy arg data/_QFtimer_stopEn", !20, i64 0}
!20 = !{!"dummy arg data", !21, i64 0}
!21 = !{!"any data access", !22, i64 0}
!22 = !{!"any access", !23, i64 0}
!23 = !{!"Flang function root _QPtimer_stop"}
!24 = !{!21, !21, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"dummy arg data/_QFtimer_readEn", !27, i64 0}
!27 = !{!"dummy arg data", !28, i64 0}
!28 = !{!"any data access", !29, i64 0}
!29 = !{!"any access", !30, i64 0}
!30 = !{!"Flang function root _QPtimer_read"}
!31 = !{!28, !28, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"dummy arg data/_QFcheck_timer_flagEtimeron", !34, i64 0}
!34 = !{!"dummy arg data", !35, i64 0}
!35 = !{!"any data access", !36, i64 0}
!36 = !{!"any access", !37, i64 0}
!37 = !{!"Flang function root _QPcheck_timer_flag"}
!38 = !{!39, !39, i64 0}
!39 = !{!"descriptor member", !36, i64 0}
!40 = !{!35, !35, i64 0}
