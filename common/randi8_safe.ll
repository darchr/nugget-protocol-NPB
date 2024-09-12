; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define double @randlc_(ptr nocapture %0, ptr nocapture readonly %1) local_unnamed_addr #0 {
  %3 = load double, ptr %0, align 8, !tbaa !4
  %4 = fptosi double %3 to i64
  %5 = load double, ptr %1, align 8, !tbaa !10
  %6 = fptosi double %5 to i64
  %7 = lshr i64 %6, 23
  %8 = and i64 %6, 8388607
  %9 = lshr i64 %4, 23
  %10 = and i64 %4, 8388607
  %11 = mul i64 %7, %4
  %12 = mul i64 %9, %6
  %13 = add i64 %11, %12
  %14 = shl i64 %13, 23
  %15 = mul nuw nsw i64 %8, %10
  %16 = add i64 %14, %15
  %17 = and i64 %16, 70368744177663
  %18 = sitofp i64 %17 to double
  store double %18, ptr %0, align 8, !tbaa !4
  %19 = fmul contract double %18, 0x3D10000000000000
  ret double %19
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @vranlc_(ptr nocapture readonly %0, ptr nocapture %1, ptr nocapture readonly %2, ptr nocapture writeonly %3) local_unnamed_addr #1 {
  %5 = load double, ptr %1, align 8, !tbaa !12
  %6 = fptosi double %5 to i64
  %7 = load double, ptr %2, align 8, !tbaa !18
  %8 = fptosi double %7 to i64
  %factor.op.mul = and i64 %8, 70368735789056
  %9 = and i64 %8, 8388607
  %10 = load i32, ptr %0, align 4, !tbaa !20
  %factor.op.mul14 = shl i64 %8, 23
  %invariant.gep = getelementptr i8, ptr %3, i64 -8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %4
  %.pre = sitofp i64 %6 to double
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %4
  %12 = zext nneg i32 %10 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.015 = phi i64 [ %6, %.lr.ph.preheader ], [ %20, %.lr.ph ]
  %13 = lshr i64 %.015, 23
  %14 = and i64 %.015, 8388607
  %15 = mul i64 %.015, %factor.op.mul
  %16 = mul i64 %13, %factor.op.mul14
  %17 = add i64 %16, %15
  %18 = mul nuw nsw i64 %14, %9
  %19 = add i64 %17, %18
  %20 = and i64 %19, 70368744177663
  %21 = sitofp i64 %20 to double
  %22 = fmul contract double %21, 0x3D10000000000000
  %gep = getelementptr double, ptr %invariant.gep, i64 %indvars.iv
  store double %22, ptr %gep, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %12
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi double [ %.pre, %.._crit_edge_crit_edge ], [ %21, %.lr.ph ]
  store double %.pre-phi, ptr %1, align 8, !tbaa !12
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
!5 = !{!"dummy arg data/_QFrandlcEx", !6, i64 0}
!6 = !{!"dummy arg data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPrandlc"}
!10 = !{!11, !11, i64 0}
!11 = !{!"dummy arg data/_QFrandlcEa", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"dummy arg data/_QFvranlcEx", !14, i64 0}
!14 = !{!"dummy arg data", !15, i64 0}
!15 = !{!"any data access", !16, i64 0}
!16 = !{!"any access", !17, i64 0}
!17 = !{!"Flang function root _QPvranlc"}
!18 = !{!19, !19, i64 0}
!19 = !{!"dummy arg data/_QFvranlcEa", !14, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"dummy arg data/_QFvranlcEn", !14, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"dummy arg data/_QFvranlcEy", !14, i64 0}
