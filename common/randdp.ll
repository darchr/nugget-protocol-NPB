; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define double @randlc_(ptr nocapture %0, ptr nocapture readonly %1) local_unnamed_addr #0 {
  %3 = load double, ptr %1, align 8, !tbaa !4
  %4 = fmul contract double %3, 0x3E80000000000000
  %5 = fptosi double %4 to i32
  %6 = sitofp i32 %5 to double
  %7 = fmul contract double %6, 0x4160000000000000
  %8 = fsub contract double %3, %7
  %9 = load double, ptr %0, align 8, !tbaa !10
  %10 = fmul contract double %9, 0x3E80000000000000
  %11 = fptosi double %10 to i32
  %12 = sitofp i32 %11 to double
  %13 = fmul contract double %12, 0x4160000000000000
  %14 = fsub contract double %9, %13
  %15 = fmul contract double %14, %6
  %16 = fmul contract double %8, %12
  %17 = fadd contract double %16, %15
  %18 = fmul contract double %17, 0x3E80000000000000
  %19 = fptosi double %18 to i32
  %20 = sitofp i32 %19 to double
  %21 = fmul contract double %20, 0x4160000000000000
  %22 = fsub contract double %17, %21
  %23 = fmul contract double %22, 0x4160000000000000
  %24 = fmul contract double %8, %14
  %25 = fadd contract double %24, %23
  %26 = fmul contract double %25, 0x3D10000000000000
  %27 = fptosi double %26 to i32
  %28 = sitofp i32 %27 to double
  %29 = fmul contract double %28, 0x42D0000000000000
  %30 = fsub contract double %25, %29
  store double %30, ptr %0, align 8, !tbaa !10
  %31 = fmul contract double %30, 0x3D10000000000000
  ret double %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @vranlc_(ptr nocapture readonly %0, ptr nocapture %1, ptr nocapture readonly %2, ptr nocapture writeonly %3) local_unnamed_addr #1 {
  %5 = load double, ptr %2, align 8, !tbaa !12
  %6 = fmul contract double %5, 0x3E80000000000000
  %7 = fptosi double %6 to i32
  %8 = sitofp i32 %7 to double
  %9 = fmul contract double %8, 0x4160000000000000
  %10 = fsub contract double %5, %9
  %11 = load i32, ptr %0, align 4, !tbaa !18
  %invariant.gep = getelementptr i8, ptr %3, i64 -8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %4
  %.promoted = load double, ptr %1, align 8, !tbaa !20
  %narrow = add nuw i32 %11, 1
  %13 = zext i32 %narrow to i64
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %15 = phi double [ %.promoted, %.lr.ph ], [ %36, %14 ]
  %16 = fmul contract double %15, 0x3E80000000000000
  %17 = fptosi double %16 to i32
  %18 = sitofp i32 %17 to double
  %19 = fmul contract double %18, 0x4160000000000000
  %20 = fsub contract double %15, %19
  %21 = fmul contract double %20, %8
  %22 = fmul contract double %10, %18
  %23 = fadd contract double %22, %21
  %24 = fmul contract double %23, 0x3E80000000000000
  %25 = fptosi double %24 to i32
  %26 = sitofp i32 %25 to double
  %27 = fmul contract double %26, 0x4160000000000000
  %28 = fsub contract double %23, %27
  %29 = fmul contract double %28, 0x4160000000000000
  %30 = fmul contract double %10, %20
  %31 = fadd contract double %30, %29
  %32 = fmul contract double %31, 0x3D10000000000000
  %33 = fptosi double %32 to i32
  %34 = sitofp i32 %33 to double
  %35 = fmul contract double %34, 0x42D0000000000000
  %36 = fsub contract double %31, %35
  %37 = fmul contract double %36, 0x3D10000000000000
  %gep = getelementptr double, ptr %invariant.gep, i64 %indvars.iv
  store double %37, ptr %gep, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %13
  br i1 %exitcond.not, label %._crit_edge, label %14

._crit_edge:                                      ; preds = %14
  store double %36, ptr %1, align 8, !tbaa !20
  br label %38

38:                                               ; preds = %._crit_edge, %4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"dummy arg data/_QFrandlcEa", !6, i64 0}
!6 = !{!"dummy arg data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPrandlc"}
!10 = !{!11, !11, i64 0}
!11 = !{!"dummy arg data/_QFrandlcEx", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"dummy arg data/_QFvranlcEa", !14, i64 0}
!14 = !{!"dummy arg data", !15, i64 0}
!15 = !{!"any data access", !16, i64 0}
!16 = !{!"any access", !17, i64 0}
!17 = !{!"Flang function root _QPvranlc"}
!18 = !{!19, !19, i64 0}
!19 = !{!"dummy arg data/_QFvranlcEn", !14, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"dummy arg data/_QFvranlcEx", !14, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"dummy arg data/_QFvranlcEy", !14, i64 0}
