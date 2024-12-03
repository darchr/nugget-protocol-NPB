; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

attributes #0 = { "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
