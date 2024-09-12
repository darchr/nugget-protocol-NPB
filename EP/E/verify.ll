; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

$_QQclX53 = comdat any

$_QQclX57 = comdat any

$_QQclX41 = comdat any

$_QQclX42 = comdat any

$_QQclX43 = comdat any

$_QQclX44 = comdat any

$_QQclX45 = comdat any

$_QQclX46 = comdat any

$_QQclX55 = comdat any

@_QQclX53 = linkonce local_unnamed_addr constant [1 x i8] c"S", comdat
@_QQclX57 = linkonce local_unnamed_addr constant [1 x i8] c"W", comdat
@_QQclX41 = linkonce local_unnamed_addr constant [1 x i8] c"A", comdat
@_QQclX42 = linkonce local_unnamed_addr constant [1 x i8] c"B", comdat
@_QQclX43 = linkonce local_unnamed_addr constant [1 x i8] c"C", comdat
@_QQclX44 = linkonce local_unnamed_addr constant [1 x i8] c"D", comdat
@_QQclX45 = linkonce local_unnamed_addr constant [1 x i8] c"E", comdat
@_QQclX46 = linkonce local_unnamed_addr constant [1 x i8] c"F", comdat
@_QQclX55 = linkonce local_unnamed_addr constant [1 x i8] c"U", comdat

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define void @verify_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr nocapture readonly %3, ptr nocapture %4, ptr nocapture writeonly %5, i64 %6) local_unnamed_addr #0 {
  store i32 1, ptr %4, align 4, !tbaa !4
  %8 = load i32, ptr %0, align 4, !tbaa !10
  switch i32 %8, label %.thread [
    i32 24, label %16
    i32 25, label %9
    i32 28, label %10
    i32 30, label %11
    i32 32, label %12
    i32 36, label %13
    i32 40, label %14
    i32 44, label %15
  ]

9:                                                ; preds = %7
  br label %16

10:                                               ; preds = %7
  br label %16

11:                                               ; preds = %7
  br label %16

12:                                               ; preds = %7
  br label %16

13:                                               ; preds = %7
  br label %16

14:                                               ; preds = %7
  br label %16

15:                                               ; preds = %7
  br label %16

.thread:                                          ; preds = %7
  %.unpack = load i8, ptr @_QQclX55, align 1, !tbaa !12
  store i8 %.unpack, ptr %5, align 1, !tbaa !15
  br label %.thread25.sink.split

16:                                               ; preds = %7, %9, %10, %11, %12, %13, %14, %15
  %_QQclX53.sink = phi ptr [ @_QQclX57, %9 ], [ @_QQclX41, %10 ], [ @_QQclX42, %11 ], [ @_QQclX43, %12 ], [ @_QQclX44, %13 ], [ @_QQclX45, %14 ], [ @_QQclX46, %15 ], [ @_QQclX53, %7 ]
  %.09.ph = phi double [ 0x41740D11F4077885, %9 ], [ 0x41A40DC69676004F, %10 ], [ 0x41C40DC3A92BD091, %11 ], [ 0x41E40D85AE7B9D21, %12 ], [ 0x42240D91CFB03E03, %13 ], [ 0x42640D9391959747, %14 ], [ 0x42A40D931FF63380, %15 ], [ 0x41640D4C4686C891, %7 ]
  %.08.ph = phi double [ 0x4179224510000000, %9 ], [ 0x41A9221AFE000000, %10 ], [ 0x41C9223763000000, %11 ], [ 0x41E922035FE00000, %12 ], [ 0x422921FBF96A0000, %13 ], [ 0x426921FB210B4000, %14 ], [ 0x42A921FB543B8800, %15 ], [ 0x416921C8A0000000, %7 ]
  %.0.ph = phi double [ 0x41740EAC6188593B, %9 ], [ 0x41A40DA6F0AC74F8, %10 ], [ 0x41C40DC867200E02, %11 ], [ 0x41E40DAA51D72FCD, %12 ], [ 0x42240D90FC0D2EE2, %13 ], [ 0x42640D929DCF9B50, %14 ], [ 0x42A40D931FF62FDC, %15 ], [ 0x41640E5C6A31C4EF, %7 ]
  %.unpack18 = load i8, ptr %_QQclX53.sink, align 1, !tbaa !16
  store i8 %.unpack18, ptr %5, align 1, !tbaa !15
  %.pr = load i32, ptr %4, align 4, !tbaa !4
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %.thread25, label %17

17:                                               ; preds = %16
  %18 = load double, ptr %1, align 8, !tbaa !17
  %19 = fsub contract double %18, %.09.ph
  %20 = fdiv contract double %19, %.09.ph
  %21 = load double, ptr %2, align 8, !tbaa !19
  %22 = fsub contract double %21, %.0.ph
  %23 = fdiv contract double %22, %.0.ph
  %24 = fcmp uno double %20, %23
  br i1 %24, label %.thread25.sink.split, label %25

25:                                               ; preds = %17
  %26 = tail call contract double @llvm.fabs.f64(double %23)
  %27 = tail call contract double @llvm.fabs.f64(double %20)
  %28 = fcmp contract ole double %27, 1.000000e-08
  %29 = fcmp contract ole double %26, 1.000000e-08
  %30 = and i1 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, ptr %4, align 4, !tbaa !4
  br i1 %30, label %32, label %.thread25

32:                                               ; preds = %25
  %33 = load double, ptr %3, align 8, !tbaa !21
  %34 = fsub contract double %33, %.08.ph
  %35 = fdiv contract double %34, %.08.ph
  %36 = tail call contract double @llvm.fabs.f64(double %35)
  %37 = fcmp uno double %35, 0.000000e+00
  %38 = fcmp contract ogt double %36, 1.000000e-08
  %39 = or i1 %37, %38
  br i1 %39, label %.thread25.sink.split, label %.thread25

.thread25.sink.split:                             ; preds = %32, %17, %.thread
  store i32 0, ptr %4, align 4, !tbaa !4
  br label %.thread25

.thread25:                                        ; preds = %.thread25.sink.split, %16, %32, %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"dummy arg data/_QFverifyEverified", !6, i64 0}
!6 = !{!"dummy arg data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPverify"}
!10 = !{!11, !11, i64 0}
!11 = !{!"dummy arg data/_QFverifyEm", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"global data/_QQclX55", !14, i64 0}
!14 = !{!"global data", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!14, !14, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"dummy arg data/_QFverifyEsx", !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"dummy arg data/_QFverifyEsy", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"dummy arg data/_QFverifyEgc", !6, i64 0}
