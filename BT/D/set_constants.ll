; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMbt_dataEbuf = external global [5 x [409 x double]]
@_QMbt_dataEc1 = external local_unnamed_addr global double
@_QMbt_dataEc1345 = external local_unnamed_addr global double
@_QMbt_dataEc1c2 = external local_unnamed_addr global double
@_QMbt_dataEc1c5 = external local_unnamed_addr global double
@_QMbt_dataEc2 = external local_unnamed_addr global double
@_QMbt_dataEc2dttx1 = external local_unnamed_addr global double
@_QMbt_dataEc2dtty1 = external local_unnamed_addr global double
@_QMbt_dataEc2dttz1 = external local_unnamed_addr global double
@_QMbt_dataEc2iv = external local_unnamed_addr global double
@_QMbt_dataEc3 = external local_unnamed_addr global double
@_QMbt_dataEc3c4 = external local_unnamed_addr global double
@_QMbt_dataEc3c4tx3 = external local_unnamed_addr global double
@_QMbt_dataEc3c4ty3 = external local_unnamed_addr global double
@_QMbt_dataEc3c4tz3 = external local_unnamed_addr global double
@_QMbt_dataEc4 = external local_unnamed_addr global double
@_QMbt_dataEc4dssp = external local_unnamed_addr global double
@_QMbt_dataEc5 = external local_unnamed_addr global double
@_QMbt_dataEc5dssp = external local_unnamed_addr global double
@_QMbt_dataEce = external local_unnamed_addr global [13 x [5 x double]]
@_QMbt_dataEcomz1 = external local_unnamed_addr global double
@_QMbt_dataEcomz4 = external local_unnamed_addr global double
@_QMbt_dataEcomz5 = external local_unnamed_addr global double
@_QMbt_dataEcomz6 = external local_unnamed_addr global double
@_QMbt_dataEcon16 = external local_unnamed_addr global double
@_QMbt_dataEcon43 = external local_unnamed_addr global double
@_QMbt_dataEconz1 = external local_unnamed_addr global double
@_QMbt_dataEcuf = external global [409 x double]
@_QMbt_dataEdnxm1 = external local_unnamed_addr global double
@_QMbt_dataEdnym1 = external local_unnamed_addr global double
@_QMbt_dataEdnzm1 = external local_unnamed_addr global double
@_QMbt_dataEdssp = external local_unnamed_addr global double
@_QMbt_dataEdt = external local_unnamed_addr global double
@_QMbt_dataEdtdssp = external local_unnamed_addr global double
@_QMbt_dataEdttx1 = external local_unnamed_addr global double
@_QMbt_dataEdttx2 = external local_unnamed_addr global double
@_QMbt_dataEdtty1 = external local_unnamed_addr global double
@_QMbt_dataEdtty2 = external local_unnamed_addr global double
@_QMbt_dataEdttz1 = external local_unnamed_addr global double
@_QMbt_dataEdttz2 = external local_unnamed_addr global double
@_QMbt_dataEdx1 = external local_unnamed_addr global double
@_QMbt_dataEdx1tx1 = external local_unnamed_addr global double
@_QMbt_dataEdx2 = external local_unnamed_addr global double
@_QMbt_dataEdx2tx1 = external local_unnamed_addr global double
@_QMbt_dataEdx3 = external local_unnamed_addr global double
@_QMbt_dataEdx3tx1 = external local_unnamed_addr global double
@_QMbt_dataEdx4 = external local_unnamed_addr global double
@_QMbt_dataEdx4tx1 = external local_unnamed_addr global double
@_QMbt_dataEdx5 = external local_unnamed_addr global double
@_QMbt_dataEdx5tx1 = external local_unnamed_addr global double
@_QMbt_dataEdxmax = external local_unnamed_addr global double
@_QMbt_dataEdy1 = external local_unnamed_addr global double
@_QMbt_dataEdy1ty1 = external local_unnamed_addr global double
@_QMbt_dataEdy2 = external local_unnamed_addr global double
@_QMbt_dataEdy2ty1 = external local_unnamed_addr global double
@_QMbt_dataEdy3 = external local_unnamed_addr global double
@_QMbt_dataEdy3ty1 = external local_unnamed_addr global double
@_QMbt_dataEdy4 = external local_unnamed_addr global double
@_QMbt_dataEdy4ty1 = external local_unnamed_addr global double
@_QMbt_dataEdy5 = external local_unnamed_addr global double
@_QMbt_dataEdy5ty1 = external local_unnamed_addr global double
@_QMbt_dataEdymax = external local_unnamed_addr global double
@_QMbt_dataEdz1 = external local_unnamed_addr global double
@_QMbt_dataEdz1tz1 = external local_unnamed_addr global double
@_QMbt_dataEdz2 = external local_unnamed_addr global double
@_QMbt_dataEdz2tz1 = external local_unnamed_addr global double
@_QMbt_dataEdz3 = external local_unnamed_addr global double
@_QMbt_dataEdz3tz1 = external local_unnamed_addr global double
@_QMbt_dataEdz4 = external local_unnamed_addr global double
@_QMbt_dataEdz4tz1 = external local_unnamed_addr global double
@_QMbt_dataEdz5 = external local_unnamed_addr global double
@_QMbt_dataEdz5tz1 = external local_unnamed_addr global double
@_QMbt_dataEdzmax = external local_unnamed_addr global double
@_QMbt_dataEgrid_points = external local_unnamed_addr global [3 x i32]
@_QMbt_dataEq = external global [409 x double]
@_QMbt_dataEtx1 = external local_unnamed_addr global double
@_QMbt_dataEtx2 = external local_unnamed_addr global double
@_QMbt_dataEtx3 = external local_unnamed_addr global double
@_QMbt_dataEty1 = external local_unnamed_addr global double
@_QMbt_dataEty2 = external local_unnamed_addr global double
@_QMbt_dataEty3 = external local_unnamed_addr global double
@_QMbt_dataEtz1 = external local_unnamed_addr global double
@_QMbt_dataEtz2 = external local_unnamed_addr global double
@_QMbt_dataEtz3 = external local_unnamed_addr global double
@_QMbt_dataEue = external global [5 x [409 x double]]
@_QMbt_dataExxcon1 = external local_unnamed_addr global double
@_QMbt_dataExxcon2 = external local_unnamed_addr global double
@_QMbt_dataExxcon3 = external local_unnamed_addr global double
@_QMbt_dataExxcon4 = external local_unnamed_addr global double
@_QMbt_dataExxcon5 = external local_unnamed_addr global double
@_QMbt_dataEyycon1 = external local_unnamed_addr global double
@_QMbt_dataEyycon2 = external local_unnamed_addr global double
@_QMbt_dataEyycon3 = external local_unnamed_addr global double
@_QMbt_dataEyycon4 = external local_unnamed_addr global double
@_QMbt_dataEyycon5 = external local_unnamed_addr global double
@_QMbt_dataEzzcon1 = external local_unnamed_addr global double
@_QMbt_dataEzzcon2 = external local_unnamed_addr global double
@_QMbt_dataEzzcon3 = external local_unnamed_addr global double
@_QMbt_dataEzzcon4 = external local_unnamed_addr global double
@_QMbt_dataEzzcon5 = external local_unnamed_addr global double
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMbt_dataEbuf.cache = common global ptr null, align 8
@_QMbt_dataEcuf.cache = common global ptr null, align 8
@_QMbt_dataEq.cache = common global ptr null, align 8
@_QMbt_dataEue.cache = common global ptr null, align 8

; Function Attrs: nounwind
define void @set_constants_() local_unnamed_addr #0 {
  %omp_global_thread_num3 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEbuf, i64 16360, ptr nonnull @_QMbt_dataEbuf.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEcuf, i64 3272, ptr nonnull @_QMbt_dataEcuf.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEq, i64 3272, ptr nonnull @_QMbt_dataEq.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEue, i64 16360, ptr nonnull @_QMbt_dataEue.cache)
  store double 2.000000e+00, ptr @_QMbt_dataEce, align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 1, i64 0), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 2, i64 0), align 8, !tbaa !4
  store double 4.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 3, i64 0), align 8, !tbaa !4
  store double 5.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 4, i64 0), align 8, !tbaa !4
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 5, i64 0), align 8, !tbaa !4
  store double 5.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 6, i64 0), align 8, !tbaa !4
  store double 2.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 7, i64 0), align 8, !tbaa !4
  store double 1.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 8, i64 0), align 8, !tbaa !4
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 9, i64 0), align 8, !tbaa !4
  store double 5.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 10, i64 0), align 8, !tbaa !4
  store double 4.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 11, i64 0), align 8, !tbaa !4
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 12, i64 0), align 8, !tbaa !4
  store double 1.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 0, i64 1), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 1, i64 1), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 2, i64 1), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 3, i64 1), align 8, !tbaa !4
  store double 1.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 4, i64 1), align 8, !tbaa !4
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 5, i64 1), align 8, !tbaa !4
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 6, i64 1), align 8, !tbaa !4
  store double 1.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 7, i64 1), align 8, !tbaa !4
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 8, i64 1), align 8, !tbaa !4
  store double 2.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 9, i64 1), align 8, !tbaa !4
  store double 4.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 10, i64 1), align 8, !tbaa !4
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 11, i64 1), align 8, !tbaa !4
  store double 5.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 12, i64 1), align 8, !tbaa !4
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 0, i64 2), align 8, !tbaa !4
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 1, i64 2), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 2, i64 2), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 3, i64 2), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 4, i64 2), align 8, !tbaa !4
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 5, i64 2), align 8, !tbaa !4
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 6, i64 2), align 8, !tbaa !4
  store double 4.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 7, i64 2), align 8, !tbaa !4
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 8, i64 2), align 8, !tbaa !4
  store double 5.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 9, i64 2), align 8, !tbaa !4
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 10, i64 2), align 8, !tbaa !4
  store double 5.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 11, i64 2), align 8, !tbaa !4
  store double 4.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 12, i64 2), align 8, !tbaa !4
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 0, i64 3), align 8, !tbaa !4
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 1, i64 3), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 2, i64 3), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 3, i64 3), align 8, !tbaa !4
  store double 0.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 4, i64 3), align 8, !tbaa !4
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 5, i64 3), align 8, !tbaa !4
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 6, i64 3), align 8, !tbaa !4
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 7, i64 3), align 8, !tbaa !4
  store double 5.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 8, i64 3), align 8, !tbaa !4
  store double 4.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 9, i64 3), align 8, !tbaa !4
  store double 2.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 10, i64 3), align 8, !tbaa !4
  store double 1.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 11, i64 3), align 8, !tbaa !4
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 12, i64 3), align 8, !tbaa !4
  store double 5.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 0, i64 4), align 8, !tbaa !4
  store double 4.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 1, i64 4), align 8, !tbaa !4
  store double 3.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 2, i64 4), align 8, !tbaa !4
  store double 2.000000e+00, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 3, i64 4), align 8, !tbaa !4
  store double 1.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 4, i64 4), align 8, !tbaa !4
  store double 4.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 5, i64 4), align 8, !tbaa !4
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 6, i64 4), align 8, !tbaa !4
  store double 5.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 7, i64 4), align 8, !tbaa !4
  store double 4.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 8, i64 4), align 8, !tbaa !4
  store double 3.000000e-02, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 9, i64 4), align 8, !tbaa !4
  store double 1.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 10, i64 4), align 8, !tbaa !4
  store double 3.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 11, i64 4), align 8, !tbaa !4
  store double 2.000000e-01, ptr getelementptr inbounds ([13 x [5 x double]], ptr @_QMbt_dataEce, i64 0, i64 12, i64 4), align 8, !tbaa !4
  store double 1.400000e+00, ptr @_QMbt_dataEc1, align 8, !tbaa !10
  store double 4.000000e-01, ptr @_QMbt_dataEc2, align 8, !tbaa !12
  store double 1.000000e-01, ptr @_QMbt_dataEc3, align 8, !tbaa !14
  store double 1.000000e+00, ptr @_QMbt_dataEc4, align 8, !tbaa !16
  store double 1.400000e+00, ptr @_QMbt_dataEc5, align 8, !tbaa !18
  %5 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !20
  %6 = add i32 %5, -1
  %7 = sitofp i32 %6 to double
  %8 = fdiv contract double 1.000000e+00, %7
  store double %8, ptr @_QMbt_dataEdnxm1, align 8, !tbaa !22
  %9 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !20
  %10 = add i32 %9, -1
  %11 = sitofp i32 %10 to double
  %12 = fdiv contract double 1.000000e+00, %11
  store double %12, ptr @_QMbt_dataEdnym1, align 8, !tbaa !24
  %13 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !20
  %14 = add i32 %13, -1
  %15 = sitofp i32 %14 to double
  %16 = fdiv contract double 1.000000e+00, %15
  store double %16, ptr @_QMbt_dataEdnzm1, align 8, !tbaa !26
  store double 0x3FE1EB851EB851EB, ptr @_QMbt_dataEc1c2, align 8, !tbaa !28
  store double 0x3FFF5C28F5C28F5B, ptr @_QMbt_dataEc1c5, align 8, !tbaa !30
  store double 1.000000e-01, ptr @_QMbt_dataEc3c4, align 8, !tbaa !32
  store double 0x3FC916872B020C49, ptr @_QMbt_dataEc1345, align 8, !tbaa !34
  store double 0xBFEEB851EB851EB6, ptr @_QMbt_dataEconz1, align 8, !tbaa !36
  %17 = fmul contract double %8, %8
  %18 = fdiv contract double 1.000000e+00, %17
  store double %18, ptr @_QMbt_dataEtx1, align 8, !tbaa !38
  %19 = fmul contract double %8, 2.000000e+00
  %20 = fdiv contract double 1.000000e+00, %19
  store double %20, ptr @_QMbt_dataEtx2, align 8, !tbaa !40
  %21 = fdiv contract double 1.000000e+00, %8
  store double %21, ptr @_QMbt_dataEtx3, align 8, !tbaa !42
  %22 = fmul contract double %12, %12
  %23 = fdiv contract double 1.000000e+00, %22
  store double %23, ptr @_QMbt_dataEty1, align 8, !tbaa !44
  %24 = fmul contract double %12, 2.000000e+00
  %25 = fdiv contract double 1.000000e+00, %24
  store double %25, ptr @_QMbt_dataEty2, align 8, !tbaa !46
  %26 = fdiv contract double 1.000000e+00, %12
  store double %26, ptr @_QMbt_dataEty3, align 8, !tbaa !48
  %27 = fmul contract double %16, %16
  %28 = fdiv contract double 1.000000e+00, %27
  store double %28, ptr @_QMbt_dataEtz1, align 8, !tbaa !50
  %29 = fmul contract double %16, 2.000000e+00
  %30 = fdiv contract double 1.000000e+00, %29
  store double %30, ptr @_QMbt_dataEtz2, align 8, !tbaa !52
  %31 = fdiv contract double 1.000000e+00, %16
  store double %31, ptr @_QMbt_dataEtz3, align 8, !tbaa !54
  store double 7.500000e-01, ptr @_QMbt_dataEdx1, align 8, !tbaa !56
  store double 7.500000e-01, ptr @_QMbt_dataEdx2, align 8, !tbaa !58
  store double 7.500000e-01, ptr @_QMbt_dataEdx3, align 8, !tbaa !60
  store double 7.500000e-01, ptr @_QMbt_dataEdx4, align 8, !tbaa !62
  store double 7.500000e-01, ptr @_QMbt_dataEdx5, align 8, !tbaa !64
  store double 7.500000e-01, ptr @_QMbt_dataEdy1, align 8, !tbaa !66
  store double 7.500000e-01, ptr @_QMbt_dataEdy2, align 8, !tbaa !68
  store double 7.500000e-01, ptr @_QMbt_dataEdy3, align 8, !tbaa !70
  store double 7.500000e-01, ptr @_QMbt_dataEdy4, align 8, !tbaa !72
  store double 7.500000e-01, ptr @_QMbt_dataEdy5, align 8, !tbaa !74
  store double 1.000000e+00, ptr @_QMbt_dataEdz1, align 8, !tbaa !76
  store double 1.000000e+00, ptr @_QMbt_dataEdz2, align 8, !tbaa !78
  store double 1.000000e+00, ptr @_QMbt_dataEdz3, align 8, !tbaa !80
  store double 1.000000e+00, ptr @_QMbt_dataEdz4, align 8, !tbaa !82
  store double 1.000000e+00, ptr @_QMbt_dataEdz5, align 8, !tbaa !84
  store double 7.500000e-01, ptr @_QMbt_dataEdxmax, align 8, !tbaa !86
  store double 7.500000e-01, ptr @_QMbt_dataEdymax, align 8, !tbaa !88
  store double 1.000000e+00, ptr @_QMbt_dataEdzmax, align 8, !tbaa !90
  store double 2.500000e-01, ptr @_QMbt_dataEdssp, align 8, !tbaa !92
  store double 1.000000e+00, ptr @_QMbt_dataEc4dssp, align 8, !tbaa !94
  store double 1.250000e+00, ptr @_QMbt_dataEc5dssp, align 8, !tbaa !96
  %32 = load double, ptr @_QMbt_dataEdt, align 8, !tbaa !98
  %33 = fmul contract double %18, %32
  store double %33, ptr @_QMbt_dataEdttx1, align 8, !tbaa !100
  %34 = fmul contract double %20, %32
  store double %34, ptr @_QMbt_dataEdttx2, align 8, !tbaa !102
  %35 = fmul contract double %23, %32
  store double %35, ptr @_QMbt_dataEdtty1, align 8, !tbaa !104
  %36 = fmul contract double %25, %32
  store double %36, ptr @_QMbt_dataEdtty2, align 8, !tbaa !106
  %37 = fmul contract double %28, %32
  store double %37, ptr @_QMbt_dataEdttz1, align 8, !tbaa !108
  %38 = fmul contract double %30, %32
  store double %38, ptr @_QMbt_dataEdttz2, align 8, !tbaa !110
  %39 = fmul contract double %33, 2.000000e+00
  store double %39, ptr @_QMbt_dataEc2dttx1, align 8, !tbaa !112
  %40 = fmul contract double %35, 2.000000e+00
  store double %40, ptr @_QMbt_dataEc2dtty1, align 8, !tbaa !114
  %41 = fmul contract double %37, 2.000000e+00
  store double %41, ptr @_QMbt_dataEc2dttz1, align 8, !tbaa !116
  %42 = fmul contract double %32, 2.500000e-01
  store double %42, ptr @_QMbt_dataEdtdssp, align 8, !tbaa !118
  store double %42, ptr @_QMbt_dataEcomz1, align 8, !tbaa !120
  %43 = fmul contract double %42, 4.000000e+00
  store double %43, ptr @_QMbt_dataEcomz4, align 8, !tbaa !122
  %44 = fmul contract double %42, 5.000000e+00
  store double %44, ptr @_QMbt_dataEcomz5, align 8, !tbaa !124
  %45 = fmul contract double %42, 6.000000e+00
  store double %45, ptr @_QMbt_dataEcomz6, align 8, !tbaa !126
  %46 = fmul contract double %21, 1.000000e-01
  store double %46, ptr @_QMbt_dataEc3c4tx3, align 8, !tbaa !128
  %47 = fmul contract double %26, 1.000000e-01
  store double %47, ptr @_QMbt_dataEc3c4ty3, align 8, !tbaa !130
  %48 = fmul contract double %31, 1.000000e-01
  store double %48, ptr @_QMbt_dataEc3c4tz3, align 8, !tbaa !132
  %49 = fmul contract double %18, 7.500000e-01
  store double %49, ptr @_QMbt_dataEdx1tx1, align 8, !tbaa !134
  store double %49, ptr @_QMbt_dataEdx2tx1, align 8, !tbaa !136
  store double %49, ptr @_QMbt_dataEdx3tx1, align 8, !tbaa !138
  store double %49, ptr @_QMbt_dataEdx4tx1, align 8, !tbaa !140
  store double %49, ptr @_QMbt_dataEdx5tx1, align 8, !tbaa !142
  %50 = fmul contract double %23, 7.500000e-01
  store double %50, ptr @_QMbt_dataEdy1ty1, align 8, !tbaa !144
  store double %50, ptr @_QMbt_dataEdy2ty1, align 8, !tbaa !146
  store double %50, ptr @_QMbt_dataEdy3ty1, align 8, !tbaa !148
  store double %50, ptr @_QMbt_dataEdy4ty1, align 8, !tbaa !150
  store double %50, ptr @_QMbt_dataEdy5ty1, align 8, !tbaa !152
  store double %28, ptr @_QMbt_dataEdz1tz1, align 8, !tbaa !154
  store double %28, ptr @_QMbt_dataEdz2tz1, align 8, !tbaa !156
  store double %28, ptr @_QMbt_dataEdz3tz1, align 8, !tbaa !158
  store double %28, ptr @_QMbt_dataEdz4tz1, align 8, !tbaa !160
  store double %28, ptr @_QMbt_dataEdz5tz1, align 8, !tbaa !162
  store double 2.500000e+00, ptr @_QMbt_dataEc2iv, align 8, !tbaa !164
  store double 0x3FF5555555555555, ptr @_QMbt_dataEcon43, align 8, !tbaa !166
  store double 0x3FC5555555555555, ptr @_QMbt_dataEcon16, align 8, !tbaa !168
  %51 = fmul contract double %46, 0x3FF5555555555555
  %52 = fmul contract double %21, %51
  store double %52, ptr @_QMbt_dataExxcon1, align 8, !tbaa !170
  %53 = fmul contract double %21, %46
  store double %53, ptr @_QMbt_dataExxcon2, align 8, !tbaa !172
  %54 = fmul contract double %46, 0xBFEEB851EB851EB6
  %55 = fmul contract double %21, %54
  store double %55, ptr @_QMbt_dataExxcon3, align 8, !tbaa !174
  %56 = fmul contract double %46, 0x3FC5555555555555
  %57 = fmul contract double %21, %56
  store double %57, ptr @_QMbt_dataExxcon4, align 8, !tbaa !176
  %58 = fmul contract double %46, 0x3FFF5C28F5C28F5B
  %59 = fmul contract double %21, %58
  store double %59, ptr @_QMbt_dataExxcon5, align 8, !tbaa !178
  %60 = fmul contract double %47, 0x3FF5555555555555
  %61 = fmul contract double %26, %60
  store double %61, ptr @_QMbt_dataEyycon1, align 8, !tbaa !180
  %62 = fmul contract double %26, %47
  store double %62, ptr @_QMbt_dataEyycon2, align 8, !tbaa !182
  %63 = fmul contract double %47, 0xBFEEB851EB851EB6
  %64 = fmul contract double %26, %63
  store double %64, ptr @_QMbt_dataEyycon3, align 8, !tbaa !184
  %65 = fmul contract double %47, 0x3FC5555555555555
  %66 = fmul contract double %26, %65
  store double %66, ptr @_QMbt_dataEyycon4, align 8, !tbaa !186
  %67 = fmul contract double %47, 0x3FFF5C28F5C28F5B
  %68 = fmul contract double %26, %67
  store double %68, ptr @_QMbt_dataEyycon5, align 8, !tbaa !188
  %69 = fmul contract double %48, 0x3FF5555555555555
  %70 = fmul contract double %31, %69
  store double %70, ptr @_QMbt_dataEzzcon1, align 8, !tbaa !190
  %71 = fmul contract double %31, %48
  store double %71, ptr @_QMbt_dataEzzcon2, align 8, !tbaa !192
  %72 = fmul contract double %48, 0xBFEEB851EB851EB6
  %73 = fmul contract double %31, %72
  store double %73, ptr @_QMbt_dataEzzcon3, align 8, !tbaa !194
  %74 = fmul contract double %48, 0x3FC5555555555555
  %75 = fmul contract double %31, %74
  store double %75, ptr @_QMbt_dataEzzcon4, align 8, !tbaa !196
  %76 = fmul contract double %48, 0x3FFF5C28F5C28F5B
  %77 = fmul contract double %31, %76
  store double %77, ptr @_QMbt_dataEzzcon5, align 8, !tbaa !198
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #1

attributes #0 = { nounwind "target-cpu"="x86-64" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QMbt_dataEce", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPset_constants"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QMbt_dataEc1", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"global data/_QMbt_dataEc2", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"global data/_QMbt_dataEc3", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"global data/_QMbt_dataEc4", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"global data/_QMbt_dataEc5", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"global data/_QMbt_dataEgrid_points", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"global data/_QMbt_dataEdnxm1", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"global data/_QMbt_dataEdnym1", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"global data/_QMbt_dataEdnzm1", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"global data/_QMbt_dataEc1c2", !6, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"global data/_QMbt_dataEc1c5", !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"global data/_QMbt_dataEc3c4", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"global data/_QMbt_dataEc1345", !6, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"global data/_QMbt_dataEconz1", !6, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"global data/_QMbt_dataEtx1", !6, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"global data/_QMbt_dataEtx2", !6, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"global data/_QMbt_dataEtx3", !6, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"global data/_QMbt_dataEty1", !6, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"global data/_QMbt_dataEty2", !6, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"global data/_QMbt_dataEty3", !6, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"global data/_QMbt_dataEtz1", !6, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"global data/_QMbt_dataEtz2", !6, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"global data/_QMbt_dataEtz3", !6, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"global data/_QMbt_dataEdx1", !6, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"global data/_QMbt_dataEdx2", !6, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"global data/_QMbt_dataEdx3", !6, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"global data/_QMbt_dataEdx4", !6, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"global data/_QMbt_dataEdx5", !6, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"global data/_QMbt_dataEdy1", !6, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"global data/_QMbt_dataEdy2", !6, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"global data/_QMbt_dataEdy3", !6, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"global data/_QMbt_dataEdy4", !6, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"global data/_QMbt_dataEdy5", !6, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"global data/_QMbt_dataEdz1", !6, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"global data/_QMbt_dataEdz2", !6, i64 0}
!80 = !{!81, !81, i64 0}
!81 = !{!"global data/_QMbt_dataEdz3", !6, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"global data/_QMbt_dataEdz4", !6, i64 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"global data/_QMbt_dataEdz5", !6, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"global data/_QMbt_dataEdxmax", !6, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"global data/_QMbt_dataEdymax", !6, i64 0}
!90 = !{!91, !91, i64 0}
!91 = !{!"global data/_QMbt_dataEdzmax", !6, i64 0}
!92 = !{!93, !93, i64 0}
!93 = !{!"global data/_QMbt_dataEdssp", !6, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"global data/_QMbt_dataEc4dssp", !6, i64 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"global data/_QMbt_dataEc5dssp", !6, i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"global data/_QMbt_dataEdt", !6, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"global data/_QMbt_dataEdttx1", !6, i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"global data/_QMbt_dataEdttx2", !6, i64 0}
!104 = !{!105, !105, i64 0}
!105 = !{!"global data/_QMbt_dataEdtty1", !6, i64 0}
!106 = !{!107, !107, i64 0}
!107 = !{!"global data/_QMbt_dataEdtty2", !6, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"global data/_QMbt_dataEdttz1", !6, i64 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"global data/_QMbt_dataEdttz2", !6, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"global data/_QMbt_dataEc2dttx1", !6, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"global data/_QMbt_dataEc2dtty1", !6, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"global data/_QMbt_dataEc2dttz1", !6, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"global data/_QMbt_dataEdtdssp", !6, i64 0}
!120 = !{!121, !121, i64 0}
!121 = !{!"global data/_QMbt_dataEcomz1", !6, i64 0}
!122 = !{!123, !123, i64 0}
!123 = !{!"global data/_QMbt_dataEcomz4", !6, i64 0}
!124 = !{!125, !125, i64 0}
!125 = !{!"global data/_QMbt_dataEcomz5", !6, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"global data/_QMbt_dataEcomz6", !6, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"global data/_QMbt_dataEc3c4tx3", !6, i64 0}
!130 = !{!131, !131, i64 0}
!131 = !{!"global data/_QMbt_dataEc3c4ty3", !6, i64 0}
!132 = !{!133, !133, i64 0}
!133 = !{!"global data/_QMbt_dataEc3c4tz3", !6, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"global data/_QMbt_dataEdx1tx1", !6, i64 0}
!136 = !{!137, !137, i64 0}
!137 = !{!"global data/_QMbt_dataEdx2tx1", !6, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"global data/_QMbt_dataEdx3tx1", !6, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"global data/_QMbt_dataEdx4tx1", !6, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"global data/_QMbt_dataEdx5tx1", !6, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"global data/_QMbt_dataEdy1ty1", !6, i64 0}
!146 = !{!147, !147, i64 0}
!147 = !{!"global data/_QMbt_dataEdy2ty1", !6, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"global data/_QMbt_dataEdy3ty1", !6, i64 0}
!150 = !{!151, !151, i64 0}
!151 = !{!"global data/_QMbt_dataEdy4ty1", !6, i64 0}
!152 = !{!153, !153, i64 0}
!153 = !{!"global data/_QMbt_dataEdy5ty1", !6, i64 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"global data/_QMbt_dataEdz1tz1", !6, i64 0}
!156 = !{!157, !157, i64 0}
!157 = !{!"global data/_QMbt_dataEdz2tz1", !6, i64 0}
!158 = !{!159, !159, i64 0}
!159 = !{!"global data/_QMbt_dataEdz3tz1", !6, i64 0}
!160 = !{!161, !161, i64 0}
!161 = !{!"global data/_QMbt_dataEdz4tz1", !6, i64 0}
!162 = !{!163, !163, i64 0}
!163 = !{!"global data/_QMbt_dataEdz5tz1", !6, i64 0}
!164 = !{!165, !165, i64 0}
!165 = !{!"global data/_QMbt_dataEc2iv", !6, i64 0}
!166 = !{!167, !167, i64 0}
!167 = !{!"global data/_QMbt_dataEcon43", !6, i64 0}
!168 = !{!169, !169, i64 0}
!169 = !{!"global data/_QMbt_dataEcon16", !6, i64 0}
!170 = !{!171, !171, i64 0}
!171 = !{!"global data/_QMbt_dataExxcon1", !6, i64 0}
!172 = !{!173, !173, i64 0}
!173 = !{!"global data/_QMbt_dataExxcon2", !6, i64 0}
!174 = !{!175, !175, i64 0}
!175 = !{!"global data/_QMbt_dataExxcon3", !6, i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"global data/_QMbt_dataExxcon4", !6, i64 0}
!178 = !{!179, !179, i64 0}
!179 = !{!"global data/_QMbt_dataExxcon5", !6, i64 0}
!180 = !{!181, !181, i64 0}
!181 = !{!"global data/_QMbt_dataEyycon1", !6, i64 0}
!182 = !{!183, !183, i64 0}
!183 = !{!"global data/_QMbt_dataEyycon2", !6, i64 0}
!184 = !{!185, !185, i64 0}
!185 = !{!"global data/_QMbt_dataEyycon3", !6, i64 0}
!186 = !{!187, !187, i64 0}
!187 = !{!"global data/_QMbt_dataEyycon4", !6, i64 0}
!188 = !{!189, !189, i64 0}
!189 = !{!"global data/_QMbt_dataEyycon5", !6, i64 0}
!190 = !{!191, !191, i64 0}
!191 = !{!"global data/_QMbt_dataEzzcon1", !6, i64 0}
!192 = !{!193, !193, i64 0}
!193 = !{!"global data/_QMbt_dataEzzcon2", !6, i64 0}
!194 = !{!195, !195, i64 0}
!195 = !{!"global data/_QMbt_dataEzzcon3", !6, i64 0}
!196 = !{!197, !197, i64 0}
!197 = !{!"global data/_QMbt_dataEzzcon4", !6, i64 0}
!198 = !{!199, !199, i64 0}
!199 = !{!"global data/_QMbt_dataEzzcon5", !6, i64 0}