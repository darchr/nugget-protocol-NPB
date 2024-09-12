; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

define void @adi_() local_unnamed_addr #0 {
  tail call void @compute_rhs_()
  tail call void @txinvr_()
  tail call void @x_solve_()
  tail call void @y_solve_()
  tail call void @z_solve_()
  tail call void @add_()
  ret void
}

declare void @compute_rhs_() local_unnamed_addr

declare void @txinvr_() local_unnamed_addr

declare void @x_solve_() local_unnamed_addr

declare void @y_solve_() local_unnamed_addr

declare void @z_solve_() local_unnamed_addr

declare void @add_() local_unnamed_addr

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
