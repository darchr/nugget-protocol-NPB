; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMbt_dataEbuf = external global [5 x [163 x double]]
@_QMbt_dataEc1 = external local_unnamed_addr global double
@_QMbt_dataEc1345 = external local_unnamed_addr global double
@_QMbt_dataEc2 = external local_unnamed_addr global double
@_QMbt_dataEc3c4 = external local_unnamed_addr global double
@_QMbt_dataEcon43 = external local_unnamed_addr global double
@_QMbt_dataEcuf = external global [163 x double]
@_QMbt_dataEdt = external local_unnamed_addr global double
@_QMbt_dataEdx1 = external local_unnamed_addr global double
@_QMbt_dataEdx2 = external local_unnamed_addr global double
@_QMbt_dataEdx3 = external local_unnamed_addr global double
@_QMbt_dataEdx4 = external local_unnamed_addr global double
@_QMbt_dataEdx5 = external local_unnamed_addr global double
@_QMwork_lhsEfjac = external global [163 x [5 x [5 x double]]]
@_QMbt_dataEgrid_points = external local_unnamed_addr global [3 x i32]
@_QMwork_lhsElhs = external global [163 x [3 x [5 x [5 x double]]]]
@_QMwork_lhsEnjac = external global [163 x [5 x [5 x double]]]
@_QMbt_dataEq = external global [163 x double]
@_QMbt_dataEqs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMbt_dataErho_i = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMbt_dataErhs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMbt_dataEsquare = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMbt_dataEtimeron = external local_unnamed_addr global i32
@_QMbt_dataEtx1 = external local_unnamed_addr global double
@_QMbt_dataEtx2 = external local_unnamed_addr global double
@_QMbt_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMbt_dataEue = external global [5 x [163 x double]]
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMbt_dataEbuf.cache = common global ptr null, align 8
@_QMbt_dataEcuf.cache = common global ptr null, align 8
@_QMwork_lhsEfjac.cache = common global ptr null, align 8
@_QMwork_lhsElhs.cache = common global ptr null, align 8
@_QMwork_lhsEnjac.cache = common global ptr null, align 8
@_QMbt_dataEq.cache = common global ptr null, align 8
@_QMbt_dataEue.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8

define void @x_solve_() local_unnamed_addr #0 {
  %structArg = alloca { ptr }, align 8
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %omp_global_thread_num7 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMbt_dataEbuf, i64 6520, ptr nonnull @_QMbt_dataEbuf.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMbt_dataEcuf, i64 1304, ptr nonnull @_QMbt_dataEcuf.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMwork_lhsEfjac, i64 32600, ptr nonnull @_QMwork_lhsEfjac.cache)
  %6 = alloca i32, align 4
  %7 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMwork_lhsElhs, i64 97800, ptr nonnull @_QMwork_lhsElhs.cache)
  %8 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMwork_lhsEnjac, i64 32600, ptr nonnull @_QMwork_lhsEnjac.cache)
  %9 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMbt_dataEq, i64 1304, ptr nonnull @_QMbt_dataEq.cache)
  %10 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMbt_dataEue, i64 6520, ptr nonnull @_QMbt_dataEue.cache)
  %11 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %omp_parallel, label %12

12:                                               ; preds = %0
  store i32 6, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2)
  br label %omp_parallel

omp_parallel:                                     ; preds = %12, %0
  %13 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !11
  %14 = add i32 %13, -1
  store i32 %14, ptr %6, align 4, !tbaa !10
  store ptr %6, ptr %structArg, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @x_solve_..omp_par, ptr nonnull %structArg)
  %15 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not48 = icmp eq i32 %15, 0
  br i1 %.not48, label %17, label %16

16:                                               ; preds = %omp_parallel
  store i32 6, ptr %1, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %1)
  br label %17

17:                                               ; preds = %16, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @x_solve_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_ = load ptr, ptr %0, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %omp_global_thread_num47 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num47, ptr nonnull @_QMwork_lhsEfjac, i64 32600, ptr nonnull @_QMwork_lhsEfjac.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num47, ptr nonnull @_QMwork_lhsEnjac, i64 32600, ptr nonnull @_QMwork_lhsEnjac.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num47, ptr nonnull @_QMwork_lhsElhs, i64 97800, ptr nonnull @_QMwork_lhsElhs.cache)
  %6 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !11
  %7 = add i32 %6, -2
  %8 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !11
  %9 = add i32 %8, -2
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %omp_loop.tripcount12 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %10 = mul nuw i32 %omp_loop.tripcount12, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %11 = add i32 %10, -1
  store i32 %11, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num47, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %12 = load i32, ptr %p.lowerbound, align 4
  %13 = load i32, ptr %p.upperbound, align 4
  %reass.sub2312 = sub i32 %13, %12
  %invariant.gep2306 = getelementptr i8, ptr %5, i64 400
  %invariant.gep2308 = getelementptr i8, ptr %5, i64 200
  %omp_collapsed.cmp2310.not = icmp eq i32 %reass.sub2312, -1
  br i1 %omp_collapsed.cmp2310.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %invariant.gep2303 = getelementptr i8, ptr %5, i64 352
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp.wsloop.region45, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num47)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num47)
  ret void

omp_collapsed.body:                               ; preds = %omp_collapsed.body.lr.ph, %omp.wsloop.region45
  %omp_collapsed.iv2311 = phi i32 [ 0, %omp_collapsed.body.lr.ph ], [ %omp_collapsed.next, %omp.wsloop.region45 ]
  %14 = add i32 %omp_collapsed.iv2311, %12
  %.frozen = freeze i32 %14
  %omp_loop.tripcount12.frozen = freeze i32 %omp_loop.tripcount12
  %15 = udiv i32 %.frozen, %omp_loop.tripcount12.frozen
  %16 = mul i32 %15, %omp_loop.tripcount12.frozen
  %.decomposed = sub i32 %.frozen, %16
  %17 = add i32 %15, 1
  %18 = add nuw nsw i32 %.decomposed, 1
  %19 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %omp.wsloop.region25.lr.ph, label %omp.wsloop.region26

omp.wsloop.region25.lr.ph:                        ; preds = %omp_collapsed.body
  %narrow = add nuw i32 %19, 1
  %21 = zext i32 %narrow to i64
  %.unpack1655 = load ptr, ptr @_QMbt_dataErho_i, align 8, !tbaa !13
  %.unpack1662.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1662.unpack.unpack1666 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1662.unpack1663.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1662.unpack1663.unpack1669 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1662.unpack1664.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %22 = zext nneg i32 %18 to i64
  %23 = sext i32 %17 to i64
  %24 = sub nsw i64 %22, %.unpack1662.unpack1663.unpack
  %25 = mul nsw i64 %24, %.unpack1662.unpack.unpack1666
  %26 = mul nsw i64 %.unpack1662.unpack1663.unpack1669, %.unpack1662.unpack.unpack1666
  %27 = sub nsw i64 %23, %.unpack1662.unpack1664.unpack
  %28 = mul nsw i64 %26, %27
  %29 = getelementptr double, ptr %.unpack1655, i64 %28
  %30 = getelementptr double, ptr %29, i64 %25
  %.unpack1675 = load ptr, ptr @_QMbt_dataEu, align 8, !tbaa !13
  %.unpack1682.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1682.unpack.unpack1687 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1682.unpack1683.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1682.unpack1683.unpack1690 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1682.unpack1684.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1682.unpack1684.unpack1693 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1682.unpack1685.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %31 = mul nsw i64 %.unpack1682.unpack1683.unpack1690, %.unpack1682.unpack.unpack1687
  %32 = sub nsw i64 %22, %.unpack1682.unpack1684.unpack
  %33 = mul nsw i64 %32, %31
  %34 = mul nsw i64 %.unpack1682.unpack1684.unpack1693, %31
  %35 = sub nsw i64 %23, %.unpack1682.unpack1685.unpack
  %36 = mul nsw i64 %34, %35
  %37 = getelementptr double, ptr %.unpack1675, i64 %36
  %38 = getelementptr double, ptr %37, i64 %33
  %.unpack1700 = load ptr, ptr @_QMbt_dataEqs, align 8, !tbaa !13
  %.unpack1707.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1707.unpack.unpack1711 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1707.unpack1708.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1707.unpack1708.unpack1714 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1707.unpack1709.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %39 = sub nsw i64 %22, %.unpack1707.unpack1708.unpack
  %40 = mul nsw i64 %39, %.unpack1707.unpack.unpack1711
  %41 = mul nsw i64 %.unpack1707.unpack1708.unpack1714, %.unpack1707.unpack.unpack1711
  %42 = sub nsw i64 %23, %.unpack1707.unpack1709.unpack
  %43 = mul nsw i64 %41, %42
  %44 = getelementptr double, ptr %.unpack1700, i64 %43
  %45 = getelementptr double, ptr %44, i64 %40
  %.unpack1948 = load ptr, ptr @_QMbt_dataEsquare, align 8, !tbaa !13
  %.unpack1955.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1955.unpack.unpack1959 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1955.unpack1956.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1955.unpack1956.unpack1962 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1955.unpack1957.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %46 = sub nsw i64 %22, %.unpack1955.unpack1956.unpack
  %47 = mul nsw i64 %46, %.unpack1955.unpack.unpack1959
  %48 = mul nsw i64 %.unpack1955.unpack1956.unpack1962, %.unpack1955.unpack.unpack1959
  %49 = sub nsw i64 %23, %.unpack1955.unpack1957.unpack
  %50 = mul nsw i64 %48, %49
  %51 = getelementptr double, ptr %.unpack1948, i64 %50
  %52 = getelementptr double, ptr %51, i64 %47
  br label %omp.wsloop.region25

omp.wsloop.region26:                              ; preds = %omp.wsloop.region25, %omp_collapsed.body
  call void @lhsinit_(ptr %5, ptr nonnull %loadgep_) #2
  %53 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %54 = add i32 %53, -1
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %omp.wsloop.region28.preheader, label %omp.wsloop.region29

omp.wsloop.region28.preheader:                    ; preds = %omp.wsloop.region26
  %56 = zext nneg i32 %54 to i64
  br label %omp.wsloop.region28

omp.wsloop.region29:                              ; preds = %omp.wsloop.region28, %omp.wsloop.region26
  %57 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %57, 0
  br i1 %.not, label %omp.wsloop.region31, label %omp.wsloop.region30

omp.wsloop.region31:                              ; preds = %omp.wsloop.region30, %omp.wsloop.region29
  %.unpack = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1515.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1515.unpack.unpack1520 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1515.unpack1516.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1515.unpack1516.unpack1523 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1515.unpack1517.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1515.unpack1517.unpack1526 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1515.unpack1518.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %58 = zext nneg i32 %18 to i64
  %59 = sext i32 %17 to i64
  %60 = mul i64 %.unpack1515.unpack1516.unpack, %.unpack1515.unpack.unpack1520
  %61 = mul nsw i64 %.unpack1515.unpack1516.unpack1523, %.unpack1515.unpack.unpack1520
  %62 = sub nsw i64 %58, %.unpack1515.unpack1517.unpack
  %63 = mul nsw i64 %62, %61
  %64 = add i64 %60, %.unpack1515.unpack.unpack
  %reass.sub = sub i64 %63, %64
  %65 = mul nsw i64 %.unpack1515.unpack1517.unpack1526, %61
  %66 = sub nsw i64 %59, %.unpack1515.unpack1518.unpack
  %67 = mul nsw i64 %65, %66
  %68 = getelementptr double, ptr %.unpack, i64 %67
  %69 = getelementptr double, ptr %68, i64 %reass.sub
  %70 = getelementptr i8, ptr %69, i64 8
  call void @binvcrhs_(ptr %invariant.gep2308, ptr %invariant.gep2306, ptr %70) #2
  %71 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %72 = add i32 %71, -1
  %73 = sext i32 %72 to i64
  %74 = icmp sgt i32 %72, 0
  br i1 %74, label %omp.wsloop.region33, label %omp.wsloop.region34

omp.wsloop.region34.loopexit:                     ; preds = %omp.wsloop.region33
  %.pre = load i32, ptr %loadgep_, align 4, !tbaa !10
  %.pre2335 = add i32 %.pre, -1
  %.pre2336 = sext i32 %.pre2335 to i64
  br label %omp.wsloop.region34

omp.wsloop.region34:                              ; preds = %omp.wsloop.region34.loopexit, %omp.wsloop.region31
  %.pre-phi2337 = phi i64 [ %.pre2336, %omp.wsloop.region34.loopexit ], [ %73, %omp.wsloop.region31 ]
  %75 = phi i32 [ %.pre, %omp.wsloop.region34.loopexit ], [ %71, %omp.wsloop.region31 ]
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, 75
  %78 = getelementptr double, ptr %5, i64 %77
  %.unpack1532 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1539.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1539.unpack.unpack1544 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1539.unpack1540.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1539.unpack1540.unpack1547 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1539.unpack1541.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1539.unpack1541.unpack1550 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1539.unpack1542.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %79 = sub nsw i64 1, %.unpack1539.unpack.unpack
  %80 = sub nsw i64 %.pre-phi2337, %.unpack1539.unpack1540.unpack
  %81 = mul nsw i64 %80, %.unpack1539.unpack.unpack1544
  %82 = mul nsw i64 %.unpack1539.unpack1540.unpack1547, %.unpack1539.unpack.unpack1544
  %83 = sub nsw i64 %58, %.unpack1539.unpack1541.unpack
  %84 = mul nsw i64 %83, %82
  %85 = mul nsw i64 %.unpack1539.unpack1541.unpack1550, %82
  %86 = sub nsw i64 %59, %.unpack1539.unpack1542.unpack
  %87 = mul nsw i64 %85, %86
  %88 = getelementptr double, ptr %.unpack1532, i64 %87
  %89 = getelementptr double, ptr %88, i64 %84
  %90 = getelementptr double, ptr %89, i64 %81
  %91 = getelementptr double, ptr %90, i64 %79
  %92 = sub nsw i64 %76, %.unpack1539.unpack1540.unpack
  %93 = mul nsw i64 %92, %.unpack1539.unpack.unpack1544
  %94 = getelementptr double, ptr %89, i64 %93
  %95 = getelementptr double, ptr %94, i64 %79
  call void @matvec_sub_(ptr %78, ptr %91, ptr %95) #2
  %96 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %97, 75
  %99 = getelementptr double, ptr %5, i64 %98
  %100 = add i32 %96, -1
  %101 = sext i32 %100 to i64
  %102 = mul nsw i64 %101, 75
  %gep2307 = getelementptr double, ptr %invariant.gep2306, i64 %102
  %103 = getelementptr i8, ptr %99, i64 200
  call void @matmul_sub_(ptr %99, ptr %gep2307, ptr %103) #2
  %104 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, 75
  %gep2309 = getelementptr double, ptr %invariant.gep2308, i64 %106
  %.unpack1556 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1563.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1563.unpack.unpack1568 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1563.unpack1564.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1563.unpack1564.unpack1571 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1563.unpack1565.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1563.unpack1565.unpack1574 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1563.unpack1566.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %107 = sub nsw i64 %105, %.unpack1563.unpack1564.unpack
  %108 = mul nsw i64 %107, %.unpack1563.unpack.unpack1568
  %reass.sub1580 = sub i64 %108, %.unpack1563.unpack.unpack
  %109 = mul nsw i64 %.unpack1563.unpack1564.unpack1571, %.unpack1563.unpack.unpack1568
  %110 = sub nsw i64 %58, %.unpack1563.unpack1565.unpack
  %111 = mul nsw i64 %110, %109
  %112 = mul nsw i64 %.unpack1563.unpack1565.unpack1574, %109
  %113 = sub nsw i64 %59, %.unpack1563.unpack1566.unpack
  %114 = mul nsw i64 %112, %113
  %115 = getelementptr double, ptr %.unpack1556, i64 %114
  %116 = getelementptr double, ptr %115, i64 %111
  %117 = getelementptr double, ptr %116, i64 %reass.sub1580
  %118 = getelementptr i8, ptr %117, i64 8
  call void @binvrhs_(ptr %gep2309, ptr %118) #2
  %119 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not1581 = icmp eq i32 %119, 0
  br i1 %.not1581, label %omp.wsloop.region36, label %omp.wsloop.region35

omp.wsloop.region36:                              ; preds = %omp.wsloop.region35, %omp.wsloop.region34
  %120 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %121 = sub i32 0, %120
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %omp.wsloop.region39.preheader.lr.ph, label %omp.wsloop.region45

omp.wsloop.region39.preheader.lr.ph:              ; preds = %omp.wsloop.region36
  %123 = sext i32 %121 to i64
  %124 = sub nsw i64 0, %123
  %.unpack1582 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1589.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1589.unpack.unpack1594 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1589.unpack1590.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1589.unpack1590.unpack1597 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1589.unpack1591.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1589.unpack1591.unpack1600 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1589.unpack1592.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %125 = mul nsw i64 %.unpack1589.unpack1590.unpack1597, %.unpack1589.unpack.unpack1594
  %126 = sub nsw i64 %58, %.unpack1589.unpack1591.unpack
  %127 = mul nsw i64 %126, %125
  %128 = mul nsw i64 %.unpack1589.unpack1591.unpack1600, %125
  %129 = sub nsw i64 %59, %.unpack1589.unpack1592.unpack
  %130 = mul nsw i64 %128, %129
  %131 = getelementptr double, ptr %.unpack1582, i64 %130
  %132 = getelementptr double, ptr %131, i64 %127
  %133 = sub nsw i64 1, %.unpack1589.unpack.unpack
  %134 = sub nsw i64 2, %.unpack1589.unpack.unpack
  %135 = sub nsw i64 3, %.unpack1589.unpack.unpack
  %136 = sub nsw i64 4, %.unpack1589.unpack.unpack
  %137 = sub nsw i64 5, %.unpack1589.unpack.unpack
  br label %omp.wsloop.region39.preheader

omp.wsloop.region39.preheader:                    ; preds = %omp.wsloop.region39.preheader.lr.ph, %omp.wsloop.region39.preheader
  %138 = phi i64 [ %124, %omp.wsloop.region39.preheader.lr.ph ], [ %139, %omp.wsloop.region39.preheader ]
  %139 = add nsw i64 %138, -1
  %sext2338 = shl i64 %139, 32
  %140 = ashr exact i64 %sext2338, 32
  %141 = sub nsw i64 %140, %.unpack1589.unpack1590.unpack
  %142 = mul nsw i64 %141, %.unpack1589.unpack.unpack1594
  %143 = getelementptr double, ptr %132, i64 %142
  %144 = mul nsw i64 %140, 75
  %gep2304 = getelementptr double, ptr %invariant.gep2303, i64 %144
  %sext2339 = shl i64 %138, 32
  %145 = ashr exact i64 %sext2339, 32
  %146 = sub nsw i64 %145, %.unpack1589.unpack1590.unpack
  %147 = mul nsw i64 %146, %.unpack1589.unpack.unpack1594
  %148 = getelementptr double, ptr %132, i64 %147
  %149 = getelementptr double, ptr %143, i64 %133
  %.promoted = load double, ptr %149, align 8, !tbaa !15
  %gep2300 = getelementptr i8, ptr %gep2304, i64 48
  %150 = load double, ptr %gep2300, align 8, !tbaa !10
  %151 = getelementptr double, ptr %148, i64 %133
  %152 = load double, ptr %151, align 8, !tbaa !15
  %153 = fmul contract double %150, %152
  %154 = fsub contract double %.promoted, %153
  store double %154, ptr %149, align 8, !tbaa !15
  %gep2300.1 = getelementptr i8, ptr %gep2304, i64 88
  %155 = load double, ptr %gep2300.1, align 8, !tbaa !10
  %156 = getelementptr double, ptr %148, i64 %134
  %157 = load double, ptr %156, align 8, !tbaa !15
  %158 = fmul contract double %155, %157
  %159 = fsub contract double %154, %158
  store double %159, ptr %149, align 8, !tbaa !15
  %gep2300.2 = getelementptr i8, ptr %gep2304, i64 128
  %160 = load double, ptr %gep2300.2, align 8, !tbaa !10
  %161 = getelementptr double, ptr %148, i64 %135
  %162 = load double, ptr %161, align 8, !tbaa !15
  %163 = fmul contract double %160, %162
  %164 = fsub contract double %159, %163
  store double %164, ptr %149, align 8, !tbaa !15
  %gep2300.3 = getelementptr i8, ptr %gep2304, i64 168
  %165 = load double, ptr %gep2300.3, align 8, !tbaa !10
  %166 = getelementptr double, ptr %148, i64 %136
  %167 = load double, ptr %166, align 8, !tbaa !15
  %168 = fmul contract double %165, %167
  %169 = fsub contract double %164, %168
  store double %169, ptr %149, align 8, !tbaa !15
  %gep2300.4 = getelementptr i8, ptr %gep2304, i64 208
  %170 = load double, ptr %gep2300.4, align 8, !tbaa !10
  %171 = getelementptr double, ptr %148, i64 %137
  %172 = load double, ptr %171, align 8, !tbaa !15
  %173 = fmul contract double %170, %172
  %174 = fsub contract double %169, %173
  store double %174, ptr %149, align 8, !tbaa !15
  %175 = getelementptr double, ptr %143, i64 %134
  %.promoted.1 = load double, ptr %175, align 8, !tbaa !15
  %gep2300.12329 = getelementptr i8, ptr %gep2304, i64 56
  %176 = load double, ptr %gep2300.12329, align 8, !tbaa !10
  %177 = load double, ptr %151, align 8, !tbaa !15
  %178 = fmul contract double %176, %177
  %179 = fsub contract double %.promoted.1, %178
  store double %179, ptr %175, align 8, !tbaa !15
  %gep2300.1.1 = getelementptr i8, ptr %gep2304, i64 96
  %180 = load double, ptr %gep2300.1.1, align 8, !tbaa !10
  %181 = load double, ptr %156, align 8, !tbaa !15
  %182 = fmul contract double %180, %181
  %183 = fsub contract double %179, %182
  store double %183, ptr %175, align 8, !tbaa !15
  %gep2300.2.1 = getelementptr i8, ptr %gep2304, i64 136
  %184 = load double, ptr %gep2300.2.1, align 8, !tbaa !10
  %185 = load double, ptr %161, align 8, !tbaa !15
  %186 = fmul contract double %184, %185
  %187 = fsub contract double %183, %186
  store double %187, ptr %175, align 8, !tbaa !15
  %gep2300.3.1 = getelementptr i8, ptr %gep2304, i64 176
  %188 = load double, ptr %gep2300.3.1, align 8, !tbaa !10
  %189 = load double, ptr %166, align 8, !tbaa !15
  %190 = fmul contract double %188, %189
  %191 = fsub contract double %187, %190
  store double %191, ptr %175, align 8, !tbaa !15
  %gep2300.4.1 = getelementptr i8, ptr %gep2304, i64 216
  %192 = load double, ptr %gep2300.4.1, align 8, !tbaa !10
  %193 = load double, ptr %171, align 8, !tbaa !15
  %194 = fmul contract double %192, %193
  %195 = fsub contract double %191, %194
  store double %195, ptr %175, align 8, !tbaa !15
  %196 = getelementptr double, ptr %143, i64 %135
  %.promoted.2 = load double, ptr %196, align 8, !tbaa !15
  %gep2300.22330 = getelementptr i8, ptr %gep2304, i64 64
  %197 = load double, ptr %gep2300.22330, align 8, !tbaa !10
  %198 = load double, ptr %151, align 8, !tbaa !15
  %199 = fmul contract double %197, %198
  %200 = fsub contract double %.promoted.2, %199
  store double %200, ptr %196, align 8, !tbaa !15
  %gep2300.1.2 = getelementptr i8, ptr %gep2304, i64 104
  %201 = load double, ptr %gep2300.1.2, align 8, !tbaa !10
  %202 = load double, ptr %156, align 8, !tbaa !15
  %203 = fmul contract double %201, %202
  %204 = fsub contract double %200, %203
  store double %204, ptr %196, align 8, !tbaa !15
  %gep2300.2.2 = getelementptr i8, ptr %gep2304, i64 144
  %205 = load double, ptr %gep2300.2.2, align 8, !tbaa !10
  %206 = load double, ptr %161, align 8, !tbaa !15
  %207 = fmul contract double %205, %206
  %208 = fsub contract double %204, %207
  store double %208, ptr %196, align 8, !tbaa !15
  %gep2300.3.2 = getelementptr i8, ptr %gep2304, i64 184
  %209 = load double, ptr %gep2300.3.2, align 8, !tbaa !10
  %210 = load double, ptr %166, align 8, !tbaa !15
  %211 = fmul contract double %209, %210
  %212 = fsub contract double %208, %211
  store double %212, ptr %196, align 8, !tbaa !15
  %gep2300.4.2 = getelementptr i8, ptr %gep2304, i64 224
  %213 = load double, ptr %gep2300.4.2, align 8, !tbaa !10
  %214 = load double, ptr %171, align 8, !tbaa !15
  %215 = fmul contract double %213, %214
  %216 = fsub contract double %212, %215
  store double %216, ptr %196, align 8, !tbaa !15
  %217 = getelementptr double, ptr %143, i64 %136
  %.promoted.3 = load double, ptr %217, align 8, !tbaa !15
  %gep2300.32331 = getelementptr i8, ptr %gep2304, i64 72
  %218 = load double, ptr %gep2300.32331, align 8, !tbaa !10
  %219 = load double, ptr %151, align 8, !tbaa !15
  %220 = fmul contract double %218, %219
  %221 = fsub contract double %.promoted.3, %220
  store double %221, ptr %217, align 8, !tbaa !15
  %gep2300.1.3 = getelementptr i8, ptr %gep2304, i64 112
  %222 = load double, ptr %gep2300.1.3, align 8, !tbaa !10
  %223 = load double, ptr %156, align 8, !tbaa !15
  %224 = fmul contract double %222, %223
  %225 = fsub contract double %221, %224
  store double %225, ptr %217, align 8, !tbaa !15
  %gep2300.2.3 = getelementptr i8, ptr %gep2304, i64 152
  %226 = load double, ptr %gep2300.2.3, align 8, !tbaa !10
  %227 = load double, ptr %161, align 8, !tbaa !15
  %228 = fmul contract double %226, %227
  %229 = fsub contract double %225, %228
  store double %229, ptr %217, align 8, !tbaa !15
  %gep2300.3.3 = getelementptr i8, ptr %gep2304, i64 192
  %230 = load double, ptr %gep2300.3.3, align 8, !tbaa !10
  %231 = load double, ptr %166, align 8, !tbaa !15
  %232 = fmul contract double %230, %231
  %233 = fsub contract double %229, %232
  store double %233, ptr %217, align 8, !tbaa !15
  %gep2300.4.3 = getelementptr i8, ptr %gep2304, i64 232
  %234 = load double, ptr %gep2300.4.3, align 8, !tbaa !10
  %235 = load double, ptr %171, align 8, !tbaa !15
  %236 = fmul contract double %234, %235
  %237 = fsub contract double %233, %236
  store double %237, ptr %217, align 8, !tbaa !15
  %238 = getelementptr double, ptr %143, i64 %137
  %.promoted.4 = load double, ptr %238, align 8, !tbaa !15
  %gep2300.42332 = getelementptr i8, ptr %gep2304, i64 80
  %239 = load double, ptr %gep2300.42332, align 8, !tbaa !10
  %240 = load double, ptr %151, align 8, !tbaa !15
  %241 = fmul contract double %239, %240
  %242 = fsub contract double %.promoted.4, %241
  store double %242, ptr %238, align 8, !tbaa !15
  %gep2300.1.4 = getelementptr i8, ptr %gep2304, i64 120
  %243 = load double, ptr %gep2300.1.4, align 8, !tbaa !10
  %244 = load double, ptr %156, align 8, !tbaa !15
  %245 = fmul contract double %243, %244
  %246 = fsub contract double %242, %245
  store double %246, ptr %238, align 8, !tbaa !15
  %gep2300.2.4 = getelementptr i8, ptr %gep2304, i64 160
  %247 = load double, ptr %gep2300.2.4, align 8, !tbaa !10
  %248 = load double, ptr %161, align 8, !tbaa !15
  %249 = fmul contract double %247, %248
  %250 = fsub contract double %246, %249
  store double %250, ptr %238, align 8, !tbaa !15
  %gep2300.3.4 = getelementptr i8, ptr %gep2304, i64 200
  %251 = load double, ptr %gep2300.3.4, align 8, !tbaa !10
  %252 = load double, ptr %166, align 8, !tbaa !15
  %253 = fmul contract double %251, %252
  %254 = fsub contract double %250, %253
  store double %254, ptr %238, align 8, !tbaa !15
  %gep2300.4.4 = getelementptr i8, ptr %gep2304, i64 240
  %255 = load double, ptr %gep2300.4.4, align 8, !tbaa !10
  %256 = load double, ptr %171, align 8, !tbaa !15
  %257 = fmul contract double %255, %256
  %258 = fsub contract double %254, %257
  store double %258, ptr %238, align 8, !tbaa !15
  %259 = icmp ugt i64 %138, 1
  br i1 %259, label %omp.wsloop.region39.preheader, label %omp.wsloop.region45

omp.wsloop.region45:                              ; preds = %omp.wsloop.region39.preheader, %omp.wsloop.region36
  %omp_collapsed.next = add nuw i32 %omp_collapsed.iv2311, 1
  %exitcond2334.not = icmp eq i32 %omp_collapsed.iv2311, %reass.sub2312
  br i1 %exitcond2334.not, label %omp_collapsed.exit, label %omp_collapsed.body

omp.wsloop.region35:                              ; preds = %omp.wsloop.region34
  store i32 10, ptr %1, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %1) #2
  br label %omp.wsloop.region36

omp.wsloop.region33:                              ; preds = %omp.wsloop.region31, %omp.wsloop.region33
  %indvars.iv2317 = phi i64 [ %indvars.iv.next2318, %omp.wsloop.region33 ], [ 1, %omp.wsloop.region31 ]
  %260 = mul nuw nsw i64 %indvars.iv2317, 75
  %261 = getelementptr double, ptr %5, i64 %260
  %.unpack1606 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1613.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1613.unpack.unpack1618 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1613.unpack1614.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1613.unpack1614.unpack1621 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1613.unpack1615.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1613.unpack1615.unpack1624 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1613.unpack1616.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %262 = add nsw i64 %indvars.iv2317, -1
  %263 = sub nsw i64 1, %.unpack1613.unpack.unpack
  %264 = sub nsw i64 %262, %.unpack1613.unpack1614.unpack
  %265 = mul nsw i64 %264, %.unpack1613.unpack.unpack1618
  %266 = mul nsw i64 %.unpack1613.unpack1614.unpack1621, %.unpack1613.unpack.unpack1618
  %267 = sub nsw i64 %58, %.unpack1613.unpack1615.unpack
  %268 = mul nsw i64 %267, %266
  %269 = mul nsw i64 %.unpack1613.unpack1615.unpack1624, %266
  %270 = sub nsw i64 %59, %.unpack1613.unpack1616.unpack
  %271 = mul nsw i64 %269, %270
  %272 = getelementptr double, ptr %.unpack1606, i64 %271
  %273 = getelementptr double, ptr %272, i64 %268
  %274 = getelementptr double, ptr %273, i64 %265
  %275 = getelementptr double, ptr %274, i64 %263
  %276 = sub nsw i64 %indvars.iv2317, %.unpack1613.unpack1614.unpack
  %277 = mul nsw i64 %276, %.unpack1613.unpack.unpack1618
  %278 = getelementptr double, ptr %273, i64 %277
  %279 = getelementptr double, ptr %278, i64 %263
  call void @matvec_sub_(ptr %261, ptr %275, ptr %279) #2
  %280 = mul nuw nsw i64 %262, 75
  %gep = getelementptr double, ptr %invariant.gep2306, i64 %280
  %281 = getelementptr i8, ptr %261, i64 200
  call void @matmul_sub_(ptr %261, ptr %gep, ptr %281) #2
  %282 = getelementptr i8, ptr %261, i64 400
  %.unpack1630 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1637.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1637.unpack.unpack1642 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1637.unpack1638.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1637.unpack1638.unpack1645 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1637.unpack1639.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1637.unpack1639.unpack1648 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1637.unpack1640.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %283 = sub nsw i64 %indvars.iv2317, %.unpack1637.unpack1638.unpack
  %284 = mul nsw i64 %283, %.unpack1637.unpack.unpack1642
  %reass.sub1654 = sub i64 %284, %.unpack1637.unpack.unpack
  %285 = mul nsw i64 %.unpack1637.unpack1638.unpack1645, %.unpack1637.unpack.unpack1642
  %286 = sub nsw i64 %58, %.unpack1637.unpack1639.unpack
  %287 = mul nsw i64 %286, %285
  %288 = mul nsw i64 %.unpack1637.unpack1639.unpack1648, %285
  %289 = sub nsw i64 %59, %.unpack1637.unpack1640.unpack
  %290 = mul nsw i64 %288, %289
  %291 = getelementptr double, ptr %.unpack1630, i64 %290
  %292 = getelementptr double, ptr %291, i64 %287
  %293 = getelementptr double, ptr %292, i64 %reass.sub1654
  %294 = getelementptr i8, ptr %293, i64 8
  call void @binvcrhs_(ptr %281, ptr %282, ptr %294) #2
  %indvars.iv.next2318 = add nuw nsw i64 %indvars.iv2317, 1
  %exitcond2320.not = icmp eq i64 %indvars.iv2317, %73
  br i1 %exitcond2320.not, label %omp.wsloop.region34.loopexit, label %omp.wsloop.region33

omp.wsloop.region30:                              ; preds = %omp.wsloop.region29
  store i32 10, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2) #2
  br label %omp.wsloop.region31

omp.wsloop.region28:                              ; preds = %omp.wsloop.region28.preheader, %omp.wsloop.region28
  %indvars.iv2314 = phi i64 [ 1, %omp.wsloop.region28.preheader ], [ %indvars.iv.next2315, %omp.wsloop.region28 ]
  %295 = load double, ptr @_QMbt_dataEdt, align 8, !tbaa !18
  %296 = load double, ptr @_QMbt_dataEtx1, align 8, !tbaa !20
  %297 = fmul contract double %295, %296
  %298 = load double, ptr @_QMbt_dataEtx2, align 8, !tbaa !22
  %299 = fmul contract double %295, %298
  %300 = mul i64 %indvars.iv2314, 25
  %301 = add i64 %300, -25
  %302 = getelementptr double, ptr %3, i64 %301
  %303 = load double, ptr %302, align 8, !tbaa !10
  %304 = fneg contract double %299
  %305 = fmul contract double %303, %304
  %306 = getelementptr double, ptr %4, i64 %301
  %307 = load double, ptr %306, align 8, !tbaa !10
  %308 = fmul contract double %297, %307
  %309 = fsub contract double %305, %308
  %310 = load double, ptr @_QMbt_dataEdx1, align 8, !tbaa !24
  %311 = fmul contract double %297, %310
  %312 = fsub contract double %309, %311
  %313 = mul nuw nsw i64 %indvars.iv2314, 75
  %314 = getelementptr double, ptr %5, i64 %313
  store double %312, ptr %314, align 8, !tbaa !10
  %315 = add i64 %300, -20
  %316 = getelementptr double, ptr %3, i64 %315
  %317 = load double, ptr %316, align 8, !tbaa !10
  %318 = fmul contract double %317, %304
  %319 = getelementptr double, ptr %4, i64 %315
  %320 = load double, ptr %319, align 8, !tbaa !10
  %321 = fmul contract double %297, %320
  %322 = fsub contract double %318, %321
  %323 = getelementptr i8, ptr %314, i64 40
  store double %322, ptr %323, align 8, !tbaa !10
  %324 = add i64 %300, -15
  %325 = getelementptr double, ptr %3, i64 %324
  %326 = load double, ptr %325, align 8, !tbaa !10
  %327 = fmul contract double %326, %304
  %328 = getelementptr double, ptr %4, i64 %324
  %329 = load double, ptr %328, align 8, !tbaa !10
  %330 = fmul contract double %297, %329
  %331 = fsub contract double %327, %330
  %332 = getelementptr i8, ptr %314, i64 80
  store double %331, ptr %332, align 8, !tbaa !10
  %333 = add i64 %300, -10
  %334 = getelementptr double, ptr %3, i64 %333
  %335 = load double, ptr %334, align 8, !tbaa !10
  %336 = fmul contract double %335, %304
  %337 = getelementptr double, ptr %4, i64 %333
  %338 = load double, ptr %337, align 8, !tbaa !10
  %339 = fmul contract double %297, %338
  %340 = fsub contract double %336, %339
  %341 = getelementptr i8, ptr %314, i64 120
  store double %340, ptr %341, align 8, !tbaa !10
  %342 = add i64 %300, -5
  %343 = getelementptr double, ptr %3, i64 %342
  %344 = load double, ptr %343, align 8, !tbaa !10
  %345 = fmul contract double %344, %304
  %346 = getelementptr double, ptr %4, i64 %342
  %347 = load double, ptr %346, align 8, !tbaa !10
  %348 = fmul contract double %297, %347
  %349 = fsub contract double %345, %348
  %350 = getelementptr i8, ptr %314, i64 160
  store double %349, ptr %350, align 8, !tbaa !10
  %351 = add i64 %300, -24
  %352 = getelementptr double, ptr %3, i64 %351
  %353 = load double, ptr %352, align 8, !tbaa !10
  %354 = fmul contract double %353, %304
  %355 = getelementptr double, ptr %4, i64 %351
  %356 = load double, ptr %355, align 8, !tbaa !10
  %357 = fmul contract double %297, %356
  %358 = fsub contract double %354, %357
  %359 = getelementptr i8, ptr %314, i64 8
  store double %358, ptr %359, align 8, !tbaa !10
  %360 = add i64 %300, -19
  %361 = getelementptr double, ptr %3, i64 %360
  %362 = load double, ptr %361, align 8, !tbaa !10
  %363 = fmul contract double %362, %304
  %364 = getelementptr double, ptr %4, i64 %360
  %365 = load double, ptr %364, align 8, !tbaa !10
  %366 = fmul contract double %297, %365
  %367 = fsub contract double %363, %366
  %368 = load double, ptr @_QMbt_dataEdx2, align 8, !tbaa !26
  %369 = fmul contract double %297, %368
  %370 = fsub contract double %367, %369
  %371 = getelementptr i8, ptr %314, i64 48
  store double %370, ptr %371, align 8, !tbaa !10
  %372 = add i64 %300, -14
  %373 = getelementptr double, ptr %3, i64 %372
  %374 = load double, ptr %373, align 8, !tbaa !10
  %375 = fmul contract double %374, %304
  %376 = getelementptr double, ptr %4, i64 %372
  %377 = load double, ptr %376, align 8, !tbaa !10
  %378 = fmul contract double %297, %377
  %379 = fsub contract double %375, %378
  %380 = getelementptr i8, ptr %314, i64 88
  store double %379, ptr %380, align 8, !tbaa !10
  %381 = add i64 %300, -9
  %382 = getelementptr double, ptr %3, i64 %381
  %383 = load double, ptr %382, align 8, !tbaa !10
  %384 = fmul contract double %383, %304
  %385 = getelementptr double, ptr %4, i64 %381
  %386 = load double, ptr %385, align 8, !tbaa !10
  %387 = fmul contract double %297, %386
  %388 = fsub contract double %384, %387
  %389 = getelementptr i8, ptr %314, i64 128
  store double %388, ptr %389, align 8, !tbaa !10
  %390 = add i64 %300, -4
  %391 = getelementptr double, ptr %3, i64 %390
  %392 = load double, ptr %391, align 8, !tbaa !10
  %393 = fmul contract double %392, %304
  %394 = getelementptr double, ptr %4, i64 %390
  %395 = load double, ptr %394, align 8, !tbaa !10
  %396 = fmul contract double %297, %395
  %397 = fsub contract double %393, %396
  %398 = getelementptr i8, ptr %314, i64 168
  store double %397, ptr %398, align 8, !tbaa !10
  %399 = add i64 %300, -23
  %400 = getelementptr double, ptr %3, i64 %399
  %401 = load double, ptr %400, align 8, !tbaa !10
  %402 = fmul contract double %401, %304
  %403 = getelementptr double, ptr %4, i64 %399
  %404 = load double, ptr %403, align 8, !tbaa !10
  %405 = fmul contract double %297, %404
  %406 = fsub contract double %402, %405
  %407 = getelementptr i8, ptr %314, i64 16
  store double %406, ptr %407, align 8, !tbaa !10
  %408 = add i64 %300, -18
  %409 = getelementptr double, ptr %3, i64 %408
  %410 = load double, ptr %409, align 8, !tbaa !10
  %411 = fmul contract double %410, %304
  %412 = getelementptr double, ptr %4, i64 %408
  %413 = load double, ptr %412, align 8, !tbaa !10
  %414 = fmul contract double %297, %413
  %415 = fsub contract double %411, %414
  %416 = getelementptr i8, ptr %314, i64 56
  store double %415, ptr %416, align 8, !tbaa !10
  %417 = add i64 %300, -13
  %418 = getelementptr double, ptr %3, i64 %417
  %419 = load double, ptr %418, align 8, !tbaa !10
  %420 = fmul contract double %419, %304
  %421 = getelementptr double, ptr %4, i64 %417
  %422 = load double, ptr %421, align 8, !tbaa !10
  %423 = fmul contract double %297, %422
  %424 = fsub contract double %420, %423
  %425 = load double, ptr @_QMbt_dataEdx3, align 8, !tbaa !28
  %426 = fmul contract double %297, %425
  %427 = fsub contract double %424, %426
  %428 = getelementptr i8, ptr %314, i64 96
  store double %427, ptr %428, align 8, !tbaa !10
  %429 = add i64 %300, -8
  %430 = getelementptr double, ptr %3, i64 %429
  %431 = load double, ptr %430, align 8, !tbaa !10
  %432 = fmul contract double %431, %304
  %433 = getelementptr double, ptr %4, i64 %429
  %434 = load double, ptr %433, align 8, !tbaa !10
  %435 = fmul contract double %297, %434
  %436 = fsub contract double %432, %435
  %437 = getelementptr i8, ptr %314, i64 136
  store double %436, ptr %437, align 8, !tbaa !10
  %438 = add i64 %300, -3
  %439 = getelementptr double, ptr %3, i64 %438
  %440 = load double, ptr %439, align 8, !tbaa !10
  %441 = fmul contract double %440, %304
  %442 = getelementptr double, ptr %4, i64 %438
  %443 = load double, ptr %442, align 8, !tbaa !10
  %444 = fmul contract double %297, %443
  %445 = fsub contract double %441, %444
  %446 = getelementptr i8, ptr %314, i64 176
  store double %445, ptr %446, align 8, !tbaa !10
  %447 = add i64 %300, -22
  %448 = getelementptr double, ptr %3, i64 %447
  %449 = load double, ptr %448, align 8, !tbaa !10
  %450 = fmul contract double %449, %304
  %451 = getelementptr double, ptr %4, i64 %447
  %452 = load double, ptr %451, align 8, !tbaa !10
  %453 = fmul contract double %297, %452
  %454 = fsub contract double %450, %453
  %455 = getelementptr i8, ptr %314, i64 24
  store double %454, ptr %455, align 8, !tbaa !10
  %456 = add i64 %300, -17
  %457 = getelementptr double, ptr %3, i64 %456
  %458 = load double, ptr %457, align 8, !tbaa !10
  %459 = fmul contract double %458, %304
  %460 = getelementptr double, ptr %4, i64 %456
  %461 = load double, ptr %460, align 8, !tbaa !10
  %462 = fmul contract double %297, %461
  %463 = fsub contract double %459, %462
  %464 = getelementptr i8, ptr %314, i64 64
  store double %463, ptr %464, align 8, !tbaa !10
  %465 = add i64 %300, -12
  %466 = getelementptr double, ptr %3, i64 %465
  %467 = load double, ptr %466, align 8, !tbaa !10
  %468 = fmul contract double %467, %304
  %469 = getelementptr double, ptr %4, i64 %465
  %470 = load double, ptr %469, align 8, !tbaa !10
  %471 = fmul contract double %297, %470
  %472 = fsub contract double %468, %471
  %473 = getelementptr i8, ptr %314, i64 104
  store double %472, ptr %473, align 8, !tbaa !10
  %474 = add i64 %300, -7
  %475 = getelementptr double, ptr %3, i64 %474
  %476 = load double, ptr %475, align 8, !tbaa !10
  %477 = fmul contract double %476, %304
  %478 = getelementptr double, ptr %4, i64 %474
  %479 = load double, ptr %478, align 8, !tbaa !10
  %480 = fmul contract double %297, %479
  %481 = fsub contract double %477, %480
  %482 = load double, ptr @_QMbt_dataEdx4, align 8, !tbaa !30
  %483 = fmul contract double %297, %482
  %484 = fsub contract double %481, %483
  %485 = getelementptr i8, ptr %314, i64 144
  store double %484, ptr %485, align 8, !tbaa !10
  %486 = add i64 %300, -2
  %487 = getelementptr double, ptr %3, i64 %486
  %488 = load double, ptr %487, align 8, !tbaa !10
  %489 = fmul contract double %488, %304
  %490 = getelementptr double, ptr %4, i64 %486
  %491 = load double, ptr %490, align 8, !tbaa !10
  %492 = fmul contract double %297, %491
  %493 = fsub contract double %489, %492
  %494 = getelementptr i8, ptr %314, i64 184
  store double %493, ptr %494, align 8, !tbaa !10
  %495 = add i64 %300, -21
  %496 = getelementptr double, ptr %3, i64 %495
  %497 = load double, ptr %496, align 8, !tbaa !10
  %498 = fmul contract double %497, %304
  %499 = getelementptr double, ptr %4, i64 %495
  %500 = load double, ptr %499, align 8, !tbaa !10
  %501 = fmul contract double %297, %500
  %502 = fsub contract double %498, %501
  %503 = getelementptr i8, ptr %314, i64 32
  store double %502, ptr %503, align 8, !tbaa !10
  %504 = add i64 %300, -16
  %505 = getelementptr double, ptr %3, i64 %504
  %506 = load double, ptr %505, align 8, !tbaa !10
  %507 = fmul contract double %506, %304
  %508 = getelementptr double, ptr %4, i64 %504
  %509 = load double, ptr %508, align 8, !tbaa !10
  %510 = fmul contract double %297, %509
  %511 = fsub contract double %507, %510
  %512 = getelementptr i8, ptr %314, i64 72
  store double %511, ptr %512, align 8, !tbaa !10
  %513 = add i64 %300, -11
  %514 = getelementptr double, ptr %3, i64 %513
  %515 = load double, ptr %514, align 8, !tbaa !10
  %516 = fmul contract double %515, %304
  %517 = getelementptr double, ptr %4, i64 %513
  %518 = load double, ptr %517, align 8, !tbaa !10
  %519 = fmul contract double %297, %518
  %520 = fsub contract double %516, %519
  %521 = getelementptr i8, ptr %314, i64 112
  store double %520, ptr %521, align 8, !tbaa !10
  %522 = add i64 %300, -6
  %523 = getelementptr double, ptr %3, i64 %522
  %524 = load double, ptr %523, align 8, !tbaa !10
  %525 = fmul contract double %524, %304
  %526 = getelementptr double, ptr %4, i64 %522
  %527 = load double, ptr %526, align 8, !tbaa !10
  %528 = fmul contract double %297, %527
  %529 = fsub contract double %525, %528
  %530 = getelementptr i8, ptr %314, i64 152
  store double %529, ptr %530, align 8, !tbaa !10
  %531 = add i64 %300, -1
  %532 = getelementptr double, ptr %3, i64 %531
  %533 = load double, ptr %532, align 8, !tbaa !10
  %534 = fmul contract double %533, %304
  %535 = getelementptr double, ptr %4, i64 %531
  %536 = load double, ptr %535, align 8, !tbaa !10
  %537 = fmul contract double %297, %536
  %538 = fsub contract double %534, %537
  %539 = load double, ptr @_QMbt_dataEdx5, align 8, !tbaa !32
  %540 = fmul contract double %297, %539
  %541 = fsub contract double %538, %540
  %542 = getelementptr i8, ptr %314, i64 192
  store double %541, ptr %542, align 8, !tbaa !10
  %543 = fmul contract double %297, 2.000000e+00
  %544 = mul nuw nsw i64 %indvars.iv2314, 25
  %545 = getelementptr double, ptr %4, i64 %544
  %546 = load double, ptr %545, align 8, !tbaa !10
  %547 = fmul contract double %543, %546
  %548 = fadd contract double %547, 1.000000e+00
  %549 = load double, ptr @_QMbt_dataEdx1, align 8, !tbaa !24
  %550 = fmul contract double %543, %549
  %551 = fadd contract double %548, %550
  %552 = getelementptr i8, ptr %314, i64 200
  store double %551, ptr %552, align 8, !tbaa !10
  %553 = getelementptr i8, ptr %545, i64 40
  %554 = load double, ptr %553, align 8, !tbaa !10
  %555 = fmul contract double %543, %554
  %556 = getelementptr i8, ptr %314, i64 240
  store double %555, ptr %556, align 8, !tbaa !10
  %557 = getelementptr i8, ptr %545, i64 80
  %558 = load double, ptr %557, align 8, !tbaa !10
  %559 = fmul contract double %543, %558
  %560 = getelementptr i8, ptr %314, i64 280
  store double %559, ptr %560, align 8, !tbaa !10
  %561 = getelementptr i8, ptr %545, i64 120
  %562 = load double, ptr %561, align 8, !tbaa !10
  %563 = fmul contract double %543, %562
  %564 = getelementptr i8, ptr %314, i64 320
  store double %563, ptr %564, align 8, !tbaa !10
  %565 = getelementptr i8, ptr %545, i64 160
  %566 = load double, ptr %565, align 8, !tbaa !10
  %567 = fmul contract double %543, %566
  %568 = getelementptr i8, ptr %314, i64 360
  store double %567, ptr %568, align 8, !tbaa !10
  %569 = getelementptr i8, ptr %545, i64 8
  %570 = load double, ptr %569, align 8, !tbaa !10
  %571 = fmul contract double %543, %570
  %572 = getelementptr i8, ptr %314, i64 208
  store double %571, ptr %572, align 8, !tbaa !10
  %573 = getelementptr i8, ptr %545, i64 48
  %574 = load double, ptr %573, align 8, !tbaa !10
  %575 = fmul contract double %543, %574
  %576 = fadd contract double %575, 1.000000e+00
  %577 = load double, ptr @_QMbt_dataEdx2, align 8, !tbaa !26
  %578 = fmul contract double %543, %577
  %579 = fadd contract double %576, %578
  %580 = getelementptr i8, ptr %314, i64 248
  store double %579, ptr %580, align 8, !tbaa !10
  %581 = getelementptr i8, ptr %545, i64 88
  %582 = load double, ptr %581, align 8, !tbaa !10
  %583 = fmul contract double %543, %582
  %584 = getelementptr i8, ptr %314, i64 288
  store double %583, ptr %584, align 8, !tbaa !10
  %585 = getelementptr i8, ptr %545, i64 128
  %586 = load double, ptr %585, align 8, !tbaa !10
  %587 = fmul contract double %543, %586
  %588 = getelementptr i8, ptr %314, i64 328
  store double %587, ptr %588, align 8, !tbaa !10
  %589 = getelementptr i8, ptr %545, i64 168
  %590 = load double, ptr %589, align 8, !tbaa !10
  %591 = fmul contract double %543, %590
  %592 = getelementptr i8, ptr %314, i64 368
  store double %591, ptr %592, align 8, !tbaa !10
  %593 = getelementptr i8, ptr %545, i64 16
  %594 = load double, ptr %593, align 8, !tbaa !10
  %595 = fmul contract double %543, %594
  %596 = getelementptr i8, ptr %314, i64 216
  store double %595, ptr %596, align 8, !tbaa !10
  %597 = getelementptr i8, ptr %545, i64 56
  %598 = load double, ptr %597, align 8, !tbaa !10
  %599 = fmul contract double %543, %598
  %600 = getelementptr i8, ptr %314, i64 256
  store double %599, ptr %600, align 8, !tbaa !10
  %601 = getelementptr i8, ptr %545, i64 96
  %602 = load double, ptr %601, align 8, !tbaa !10
  %603 = fmul contract double %543, %602
  %604 = fadd contract double %603, 1.000000e+00
  %605 = load double, ptr @_QMbt_dataEdx3, align 8, !tbaa !28
  %606 = fmul contract double %543, %605
  %607 = fadd contract double %604, %606
  %608 = getelementptr i8, ptr %314, i64 296
  store double %607, ptr %608, align 8, !tbaa !10
  %609 = getelementptr i8, ptr %545, i64 136
  %610 = load double, ptr %609, align 8, !tbaa !10
  %611 = fmul contract double %543, %610
  %612 = getelementptr i8, ptr %314, i64 336
  store double %611, ptr %612, align 8, !tbaa !10
  %613 = getelementptr i8, ptr %545, i64 176
  %614 = load double, ptr %613, align 8, !tbaa !10
  %615 = fmul contract double %543, %614
  %616 = getelementptr i8, ptr %314, i64 376
  store double %615, ptr %616, align 8, !tbaa !10
  %617 = getelementptr i8, ptr %545, i64 24
  %618 = load double, ptr %617, align 8, !tbaa !10
  %619 = fmul contract double %543, %618
  %620 = getelementptr i8, ptr %314, i64 224
  store double %619, ptr %620, align 8, !tbaa !10
  %621 = getelementptr i8, ptr %545, i64 64
  %622 = load double, ptr %621, align 8, !tbaa !10
  %623 = fmul contract double %543, %622
  %624 = getelementptr i8, ptr %314, i64 264
  store double %623, ptr %624, align 8, !tbaa !10
  %625 = getelementptr i8, ptr %545, i64 104
  %626 = load double, ptr %625, align 8, !tbaa !10
  %627 = fmul contract double %543, %626
  %628 = getelementptr i8, ptr %314, i64 304
  store double %627, ptr %628, align 8, !tbaa !10
  %629 = getelementptr i8, ptr %545, i64 144
  %630 = load double, ptr %629, align 8, !tbaa !10
  %631 = fmul contract double %543, %630
  %632 = fadd contract double %631, 1.000000e+00
  %633 = load double, ptr @_QMbt_dataEdx4, align 8, !tbaa !30
  %634 = fmul contract double %543, %633
  %635 = fadd contract double %632, %634
  %636 = getelementptr i8, ptr %314, i64 344
  store double %635, ptr %636, align 8, !tbaa !10
  %637 = getelementptr i8, ptr %545, i64 184
  %638 = load double, ptr %637, align 8, !tbaa !10
  %639 = fmul contract double %543, %638
  %640 = getelementptr i8, ptr %314, i64 384
  store double %639, ptr %640, align 8, !tbaa !10
  %641 = getelementptr i8, ptr %545, i64 32
  %642 = load double, ptr %641, align 8, !tbaa !10
  %643 = fmul contract double %543, %642
  %644 = getelementptr i8, ptr %314, i64 232
  store double %643, ptr %644, align 8, !tbaa !10
  %645 = getelementptr i8, ptr %545, i64 72
  %646 = load double, ptr %645, align 8, !tbaa !10
  %647 = fmul contract double %543, %646
  %648 = getelementptr i8, ptr %314, i64 272
  store double %647, ptr %648, align 8, !tbaa !10
  %649 = getelementptr i8, ptr %545, i64 112
  %650 = load double, ptr %649, align 8, !tbaa !10
  %651 = fmul contract double %543, %650
  %652 = getelementptr i8, ptr %314, i64 312
  store double %651, ptr %652, align 8, !tbaa !10
  %653 = getelementptr i8, ptr %545, i64 152
  %654 = load double, ptr %653, align 8, !tbaa !10
  %655 = fmul contract double %543, %654
  %656 = getelementptr i8, ptr %314, i64 352
  store double %655, ptr %656, align 8, !tbaa !10
  %657 = getelementptr i8, ptr %545, i64 192
  %658 = load double, ptr %657, align 8, !tbaa !10
  %659 = fmul contract double %543, %658
  %660 = fadd contract double %659, 1.000000e+00
  %661 = load double, ptr @_QMbt_dataEdx5, align 8, !tbaa !32
  %662 = fmul contract double %543, %661
  %663 = fadd contract double %660, %662
  %664 = getelementptr i8, ptr %314, i64 392
  store double %663, ptr %664, align 8, !tbaa !10
  %indvars.iv.next2315 = add nuw nsw i64 %indvars.iv2314, 1
  %sext = shl i64 %indvars.iv.next2315, 32
  %665 = ashr exact i64 %sext, 32
  %666 = mul nsw i64 %665, 25
  %667 = getelementptr double, ptr %3, i64 %666
  %668 = load double, ptr %667, align 8, !tbaa !10
  %669 = fmul contract double %299, %668
  %670 = getelementptr double, ptr %4, i64 %666
  %671 = load double, ptr %670, align 8, !tbaa !10
  %672 = fmul contract double %297, %671
  %673 = fsub contract double %669, %672
  %674 = load double, ptr @_QMbt_dataEdx1, align 8, !tbaa !24
  %675 = fmul contract double %297, %674
  %676 = fsub contract double %673, %675
  %677 = getelementptr i8, ptr %314, i64 400
  store double %676, ptr %677, align 8, !tbaa !10
  %678 = add nsw i64 %666, 5
  %679 = getelementptr double, ptr %3, i64 %678
  %680 = load double, ptr %679, align 8, !tbaa !10
  %681 = fmul contract double %299, %680
  %682 = getelementptr double, ptr %4, i64 %678
  %683 = load double, ptr %682, align 8, !tbaa !10
  %684 = fmul contract double %297, %683
  %685 = fsub contract double %681, %684
  %686 = getelementptr i8, ptr %314, i64 440
  store double %685, ptr %686, align 8, !tbaa !10
  %687 = add nsw i64 %666, 10
  %688 = getelementptr double, ptr %3, i64 %687
  %689 = load double, ptr %688, align 8, !tbaa !10
  %690 = fmul contract double %299, %689
  %691 = getelementptr double, ptr %4, i64 %687
  %692 = load double, ptr %691, align 8, !tbaa !10
  %693 = fmul contract double %297, %692
  %694 = fsub contract double %690, %693
  %695 = getelementptr i8, ptr %314, i64 480
  store double %694, ptr %695, align 8, !tbaa !10
  %696 = add nsw i64 %666, 15
  %697 = getelementptr double, ptr %3, i64 %696
  %698 = load double, ptr %697, align 8, !tbaa !10
  %699 = fmul contract double %299, %698
  %700 = getelementptr double, ptr %4, i64 %696
  %701 = load double, ptr %700, align 8, !tbaa !10
  %702 = fmul contract double %297, %701
  %703 = fsub contract double %699, %702
  %704 = getelementptr i8, ptr %314, i64 520
  store double %703, ptr %704, align 8, !tbaa !10
  %705 = add nsw i64 %666, 20
  %706 = getelementptr double, ptr %3, i64 %705
  %707 = load double, ptr %706, align 8, !tbaa !10
  %708 = fmul contract double %299, %707
  %709 = getelementptr double, ptr %4, i64 %705
  %710 = load double, ptr %709, align 8, !tbaa !10
  %711 = fmul contract double %297, %710
  %712 = fsub contract double %708, %711
  %713 = getelementptr i8, ptr %314, i64 560
  store double %712, ptr %713, align 8, !tbaa !10
  %714 = add nsw i64 %666, 1
  %715 = getelementptr double, ptr %3, i64 %714
  %716 = load double, ptr %715, align 8, !tbaa !10
  %717 = fmul contract double %299, %716
  %718 = getelementptr double, ptr %4, i64 %714
  %719 = load double, ptr %718, align 8, !tbaa !10
  %720 = fmul contract double %297, %719
  %721 = fsub contract double %717, %720
  %722 = getelementptr i8, ptr %314, i64 408
  store double %721, ptr %722, align 8, !tbaa !10
  %723 = add nsw i64 %666, 6
  %724 = getelementptr double, ptr %3, i64 %723
  %725 = load double, ptr %724, align 8, !tbaa !10
  %726 = fmul contract double %299, %725
  %727 = getelementptr double, ptr %4, i64 %723
  %728 = load double, ptr %727, align 8, !tbaa !10
  %729 = fmul contract double %297, %728
  %730 = fsub contract double %726, %729
  %731 = load double, ptr @_QMbt_dataEdx2, align 8, !tbaa !26
  %732 = fmul contract double %297, %731
  %733 = fsub contract double %730, %732
  %734 = getelementptr i8, ptr %314, i64 448
  store double %733, ptr %734, align 8, !tbaa !10
  %735 = add nsw i64 %666, 11
  %736 = getelementptr double, ptr %3, i64 %735
  %737 = load double, ptr %736, align 8, !tbaa !10
  %738 = fmul contract double %299, %737
  %739 = getelementptr double, ptr %4, i64 %735
  %740 = load double, ptr %739, align 8, !tbaa !10
  %741 = fmul contract double %297, %740
  %742 = fsub contract double %738, %741
  %743 = getelementptr i8, ptr %314, i64 488
  store double %742, ptr %743, align 8, !tbaa !10
  %744 = add nsw i64 %666, 16
  %745 = getelementptr double, ptr %3, i64 %744
  %746 = load double, ptr %745, align 8, !tbaa !10
  %747 = fmul contract double %299, %746
  %748 = getelementptr double, ptr %4, i64 %744
  %749 = load double, ptr %748, align 8, !tbaa !10
  %750 = fmul contract double %297, %749
  %751 = fsub contract double %747, %750
  %752 = getelementptr i8, ptr %314, i64 528
  store double %751, ptr %752, align 8, !tbaa !10
  %753 = add nsw i64 %666, 21
  %754 = getelementptr double, ptr %3, i64 %753
  %755 = load double, ptr %754, align 8, !tbaa !10
  %756 = fmul contract double %299, %755
  %757 = getelementptr double, ptr %4, i64 %753
  %758 = load double, ptr %757, align 8, !tbaa !10
  %759 = fmul contract double %297, %758
  %760 = fsub contract double %756, %759
  %761 = getelementptr i8, ptr %314, i64 568
  store double %760, ptr %761, align 8, !tbaa !10
  %762 = add nsw i64 %666, 2
  %763 = getelementptr double, ptr %3, i64 %762
  %764 = load double, ptr %763, align 8, !tbaa !10
  %765 = fmul contract double %299, %764
  %766 = getelementptr double, ptr %4, i64 %762
  %767 = load double, ptr %766, align 8, !tbaa !10
  %768 = fmul contract double %297, %767
  %769 = fsub contract double %765, %768
  %770 = getelementptr i8, ptr %314, i64 416
  store double %769, ptr %770, align 8, !tbaa !10
  %771 = add nsw i64 %666, 7
  %772 = getelementptr double, ptr %3, i64 %771
  %773 = load double, ptr %772, align 8, !tbaa !10
  %774 = fmul contract double %299, %773
  %775 = getelementptr double, ptr %4, i64 %771
  %776 = load double, ptr %775, align 8, !tbaa !10
  %777 = fmul contract double %297, %776
  %778 = fsub contract double %774, %777
  %779 = getelementptr i8, ptr %314, i64 456
  store double %778, ptr %779, align 8, !tbaa !10
  %780 = add nsw i64 %666, 12
  %781 = getelementptr double, ptr %3, i64 %780
  %782 = load double, ptr %781, align 8, !tbaa !10
  %783 = fmul contract double %299, %782
  %784 = getelementptr double, ptr %4, i64 %780
  %785 = load double, ptr %784, align 8, !tbaa !10
  %786 = fmul contract double %297, %785
  %787 = fsub contract double %783, %786
  %788 = load double, ptr @_QMbt_dataEdx3, align 8, !tbaa !28
  %789 = fmul contract double %297, %788
  %790 = fsub contract double %787, %789
  %791 = getelementptr i8, ptr %314, i64 496
  store double %790, ptr %791, align 8, !tbaa !10
  %792 = add nsw i64 %666, 17
  %793 = getelementptr double, ptr %3, i64 %792
  %794 = load double, ptr %793, align 8, !tbaa !10
  %795 = fmul contract double %299, %794
  %796 = getelementptr double, ptr %4, i64 %792
  %797 = load double, ptr %796, align 8, !tbaa !10
  %798 = fmul contract double %297, %797
  %799 = fsub contract double %795, %798
  %800 = getelementptr i8, ptr %314, i64 536
  store double %799, ptr %800, align 8, !tbaa !10
  %801 = add nsw i64 %666, 22
  %802 = getelementptr double, ptr %3, i64 %801
  %803 = load double, ptr %802, align 8, !tbaa !10
  %804 = fmul contract double %299, %803
  %805 = getelementptr double, ptr %4, i64 %801
  %806 = load double, ptr %805, align 8, !tbaa !10
  %807 = fmul contract double %297, %806
  %808 = fsub contract double %804, %807
  %809 = getelementptr i8, ptr %314, i64 576
  store double %808, ptr %809, align 8, !tbaa !10
  %810 = add nsw i64 %666, 3
  %811 = getelementptr double, ptr %3, i64 %810
  %812 = load double, ptr %811, align 8, !tbaa !10
  %813 = fmul contract double %299, %812
  %814 = getelementptr double, ptr %4, i64 %810
  %815 = load double, ptr %814, align 8, !tbaa !10
  %816 = fmul contract double %297, %815
  %817 = fsub contract double %813, %816
  %818 = getelementptr i8, ptr %314, i64 424
  store double %817, ptr %818, align 8, !tbaa !10
  %819 = add nsw i64 %666, 8
  %820 = getelementptr double, ptr %3, i64 %819
  %821 = load double, ptr %820, align 8, !tbaa !10
  %822 = fmul contract double %299, %821
  %823 = getelementptr double, ptr %4, i64 %819
  %824 = load double, ptr %823, align 8, !tbaa !10
  %825 = fmul contract double %297, %824
  %826 = fsub contract double %822, %825
  %827 = getelementptr i8, ptr %314, i64 464
  store double %826, ptr %827, align 8, !tbaa !10
  %828 = add nsw i64 %666, 13
  %829 = getelementptr double, ptr %3, i64 %828
  %830 = load double, ptr %829, align 8, !tbaa !10
  %831 = fmul contract double %299, %830
  %832 = getelementptr double, ptr %4, i64 %828
  %833 = load double, ptr %832, align 8, !tbaa !10
  %834 = fmul contract double %297, %833
  %835 = fsub contract double %831, %834
  %836 = getelementptr i8, ptr %314, i64 504
  store double %835, ptr %836, align 8, !tbaa !10
  %837 = add nsw i64 %666, 18
  %838 = getelementptr double, ptr %3, i64 %837
  %839 = load double, ptr %838, align 8, !tbaa !10
  %840 = fmul contract double %299, %839
  %841 = getelementptr double, ptr %4, i64 %837
  %842 = load double, ptr %841, align 8, !tbaa !10
  %843 = fmul contract double %297, %842
  %844 = fsub contract double %840, %843
  %845 = load double, ptr @_QMbt_dataEdx4, align 8, !tbaa !30
  %846 = fmul contract double %297, %845
  %847 = fsub contract double %844, %846
  %848 = getelementptr i8, ptr %314, i64 544
  store double %847, ptr %848, align 8, !tbaa !10
  %849 = add nsw i64 %666, 23
  %850 = getelementptr double, ptr %3, i64 %849
  %851 = load double, ptr %850, align 8, !tbaa !10
  %852 = fmul contract double %299, %851
  %853 = getelementptr double, ptr %4, i64 %849
  %854 = load double, ptr %853, align 8, !tbaa !10
  %855 = fmul contract double %297, %854
  %856 = fsub contract double %852, %855
  %857 = getelementptr i8, ptr %314, i64 584
  store double %856, ptr %857, align 8, !tbaa !10
  %858 = add nsw i64 %666, 4
  %859 = getelementptr double, ptr %3, i64 %858
  %860 = load double, ptr %859, align 8, !tbaa !10
  %861 = fmul contract double %299, %860
  %862 = getelementptr double, ptr %4, i64 %858
  %863 = load double, ptr %862, align 8, !tbaa !10
  %864 = fmul contract double %297, %863
  %865 = fsub contract double %861, %864
  %866 = getelementptr i8, ptr %314, i64 432
  store double %865, ptr %866, align 8, !tbaa !10
  %867 = add nsw i64 %666, 9
  %868 = getelementptr double, ptr %3, i64 %867
  %869 = load double, ptr %868, align 8, !tbaa !10
  %870 = fmul contract double %299, %869
  %871 = getelementptr double, ptr %4, i64 %867
  %872 = load double, ptr %871, align 8, !tbaa !10
  %873 = fmul contract double %297, %872
  %874 = fsub contract double %870, %873
  %875 = getelementptr i8, ptr %314, i64 472
  store double %874, ptr %875, align 8, !tbaa !10
  %876 = add nsw i64 %666, 14
  %877 = getelementptr double, ptr %3, i64 %876
  %878 = load double, ptr %877, align 8, !tbaa !10
  %879 = fmul contract double %299, %878
  %880 = getelementptr double, ptr %4, i64 %876
  %881 = load double, ptr %880, align 8, !tbaa !10
  %882 = fmul contract double %297, %881
  %883 = fsub contract double %879, %882
  %884 = getelementptr i8, ptr %314, i64 512
  store double %883, ptr %884, align 8, !tbaa !10
  %885 = add nsw i64 %666, 19
  %886 = getelementptr double, ptr %3, i64 %885
  %887 = load double, ptr %886, align 8, !tbaa !10
  %888 = fmul contract double %299, %887
  %889 = getelementptr double, ptr %4, i64 %885
  %890 = load double, ptr %889, align 8, !tbaa !10
  %891 = fmul contract double %297, %890
  %892 = fsub contract double %888, %891
  %893 = getelementptr i8, ptr %314, i64 552
  store double %892, ptr %893, align 8, !tbaa !10
  %894 = add nsw i64 %666, 24
  %895 = getelementptr double, ptr %3, i64 %894
  %896 = load double, ptr %895, align 8, !tbaa !10
  %897 = fmul contract double %299, %896
  %898 = getelementptr double, ptr %4, i64 %894
  %899 = load double, ptr %898, align 8, !tbaa !10
  %900 = fmul contract double %297, %899
  %901 = fsub contract double %897, %900
  %902 = load double, ptr @_QMbt_dataEdx5, align 8, !tbaa !32
  %903 = fmul contract double %297, %902
  %904 = fsub contract double %901, %903
  %905 = getelementptr i8, ptr %314, i64 592
  store double %904, ptr %905, align 8, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv2314, %56
  br i1 %exitcond.not, label %omp.wsloop.region29, label %omp.wsloop.region28

omp.wsloop.region25:                              ; preds = %omp.wsloop.region25.lr.ph, %omp.wsloop.region25
  %indvars.iv = phi i64 [ 0, %omp.wsloop.region25.lr.ph ], [ %indvars.iv.next, %omp.wsloop.region25 ]
  %906 = phi i64 [ %21, %omp.wsloop.region25.lr.ph ], [ %1154, %omp.wsloop.region25 ]
  %907 = sub nsw i64 %indvars.iv, %.unpack1662.unpack.unpack
  %908 = getelementptr double, ptr %30, i64 %907
  %909 = load double, ptr %908, align 8, !tbaa !34
  %910 = fmul contract double %909, %909
  %911 = fmul contract double %909, %910
  %912 = mul nuw nsw i64 %indvars.iv, 25
  %913 = getelementptr double, ptr %3, i64 %912
  store double 0.000000e+00, ptr %913, align 8, !tbaa !10
  %914 = add nuw nsw i64 %912, 5
  %915 = getelementptr double, ptr %3, i64 %914
  store double 1.000000e+00, ptr %915, align 8, !tbaa !10
  %916 = add nuw nsw i64 %912, 10
  %917 = getelementptr double, ptr %3, i64 %916
  store double 0.000000e+00, ptr %917, align 8, !tbaa !10
  %918 = add nuw nsw i64 %912, 15
  %919 = getelementptr double, ptr %3, i64 %918
  store double 0.000000e+00, ptr %919, align 8, !tbaa !10
  %920 = add nuw nsw i64 %912, 20
  %921 = getelementptr double, ptr %3, i64 %920
  store double 0.000000e+00, ptr %921, align 8, !tbaa !10
  %922 = sub nsw i64 %indvars.iv, %.unpack1682.unpack1683.unpack
  %923 = mul nsw i64 %922, %.unpack1682.unpack.unpack1687
  %reass.sub1699 = sub i64 %923, %.unpack1682.unpack.unpack
  %924 = getelementptr double, ptr %38, i64 %reass.sub1699
  %925 = getelementptr i8, ptr %924, i64 16
  %926 = load double, ptr %925, align 8, !tbaa !36
  %927 = fneg contract double %926
  %928 = fmul contract double %910, %927
  %929 = fmul contract double %926, %928
  %930 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %931 = sub nsw i64 %indvars.iv, %.unpack1707.unpack.unpack
  %932 = getelementptr double, ptr %45, i64 %931
  %933 = load double, ptr %932, align 8, !tbaa !40
  %934 = fmul contract double %930, %933
  %935 = fadd contract double %929, %934
  %936 = add nuw nsw i64 %912, 1
  %937 = getelementptr double, ptr %3, i64 %936
  store double %935, ptr %937, align 8, !tbaa !10
  %938 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %939 = fsub contract double 2.000000e+00, %938
  %940 = load double, ptr %925, align 8, !tbaa !36
  %941 = getelementptr i8, ptr %924, i64 8
  %942 = load double, ptr %941, align 8, !tbaa !36
  %943 = fdiv contract double %940, %942
  %944 = fmul contract double %939, %943
  %945 = add nuw nsw i64 %912, 6
  %946 = getelementptr double, ptr %3, i64 %945
  store double %944, ptr %946, align 8, !tbaa !10
  %947 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %948 = getelementptr i8, ptr %924, i64 24
  %949 = load double, ptr %948, align 8, !tbaa !36
  %950 = fmul contract double %909, %949
  %951 = fneg contract double %947
  %952 = fmul contract double %950, %951
  %953 = add nuw nsw i64 %912, 11
  %954 = getelementptr double, ptr %3, i64 %953
  store double %952, ptr %954, align 8, !tbaa !10
  %955 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %956 = getelementptr i8, ptr %924, i64 32
  %957 = load double, ptr %956, align 8, !tbaa !36
  %958 = fmul contract double %909, %957
  %959 = fneg contract double %955
  %960 = fmul contract double %958, %959
  %961 = add nuw nsw i64 %912, 16
  %962 = getelementptr double, ptr %3, i64 %961
  store double %960, ptr %962, align 8, !tbaa !10
  %963 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %964 = add nuw nsw i64 %912, 21
  %965 = getelementptr double, ptr %3, i64 %964
  store double %963, ptr %965, align 8, !tbaa !10
  %966 = load double, ptr %925, align 8, !tbaa !36
  %967 = load double, ptr %948, align 8, !tbaa !36
  %968 = fneg contract double %966
  %969 = fmul contract double %967, %968
  %970 = fmul contract double %910, %969
  %971 = add nuw nsw i64 %912, 2
  %972 = getelementptr double, ptr %3, i64 %971
  store double %970, ptr %972, align 8, !tbaa !10
  %973 = load double, ptr %948, align 8, !tbaa !36
  %974 = fmul contract double %909, %973
  %975 = add nuw nsw i64 %912, 7
  %976 = getelementptr double, ptr %3, i64 %975
  store double %974, ptr %976, align 8, !tbaa !10
  %977 = load double, ptr %925, align 8, !tbaa !36
  %978 = fmul contract double %909, %977
  %979 = add nuw nsw i64 %912, 12
  %980 = getelementptr double, ptr %3, i64 %979
  store double %978, ptr %980, align 8, !tbaa !10
  %981 = add nuw nsw i64 %912, 17
  %982 = getelementptr double, ptr %3, i64 %981
  store double 0.000000e+00, ptr %982, align 8, !tbaa !10
  %983 = add nuw nsw i64 %912, 22
  %984 = getelementptr double, ptr %3, i64 %983
  store double 0.000000e+00, ptr %984, align 8, !tbaa !10
  %985 = load double, ptr %925, align 8, !tbaa !36
  %986 = load double, ptr %956, align 8, !tbaa !36
  %987 = fneg contract double %985
  %988 = fmul contract double %986, %987
  %989 = fmul contract double %910, %988
  %990 = add nuw nsw i64 %912, 3
  %991 = getelementptr double, ptr %3, i64 %990
  store double %989, ptr %991, align 8, !tbaa !10
  %992 = load double, ptr %956, align 8, !tbaa !36
  %993 = fmul contract double %909, %992
  %994 = add nuw nsw i64 %912, 8
  %995 = getelementptr double, ptr %3, i64 %994
  store double %993, ptr %995, align 8, !tbaa !10
  %996 = add nuw nsw i64 %912, 13
  %997 = getelementptr double, ptr %3, i64 %996
  store double 0.000000e+00, ptr %997, align 8, !tbaa !10
  %998 = load double, ptr %925, align 8, !tbaa !36
  %999 = fmul contract double %909, %998
  %1000 = add nuw nsw i64 %912, 18
  %1001 = getelementptr double, ptr %3, i64 %1000
  store double %999, ptr %1001, align 8, !tbaa !10
  %1002 = add nuw nsw i64 %912, 23
  %1003 = getelementptr double, ptr %3, i64 %1002
  store double 0.000000e+00, ptr %1003, align 8, !tbaa !10
  %1004 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %1005 = fmul contract double %1004, 2.000000e+00
  %1006 = sub nsw i64 %indvars.iv, %.unpack1955.unpack.unpack
  %1007 = getelementptr double, ptr %52, i64 %1006
  %1008 = load double, ptr %1007, align 8, !tbaa !42
  %1009 = fmul contract double %1005, %1008
  %1010 = load double, ptr @_QMbt_dataEc1, align 8, !tbaa !44
  %1011 = getelementptr i8, ptr %924, i64 40
  %1012 = load double, ptr %1011, align 8, !tbaa !36
  %1013 = fmul contract double %1010, %1012
  %1014 = fsub contract double %1009, %1013
  %1015 = load double, ptr %925, align 8, !tbaa !36
  %1016 = fmul contract double %910, %1015
  %1017 = fmul contract double %1014, %1016
  %1018 = add nuw nsw i64 %912, 4
  %1019 = getelementptr double, ptr %3, i64 %1018
  store double %1017, ptr %1019, align 8, !tbaa !10
  %1020 = load double, ptr @_QMbt_dataEc1, align 8, !tbaa !44
  %1021 = load double, ptr %1011, align 8, !tbaa !36
  %1022 = fmul contract double %1020, %1021
  %1023 = fmul contract double %909, %1022
  %1024 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %1025 = load double, ptr %925, align 8, !tbaa !36
  %1026 = fmul contract double %1025, %1025
  %1027 = fmul contract double %910, %1026
  %1028 = load double, ptr %932, align 8, !tbaa !40
  %1029 = fadd contract double %1028, %1027
  %1030 = fmul contract double %1024, %1029
  %1031 = fsub contract double %1023, %1030
  %1032 = add nuw nsw i64 %912, 9
  %1033 = getelementptr double, ptr %3, i64 %1032
  store double %1031, ptr %1033, align 8, !tbaa !10
  %1034 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %1035 = load double, ptr %948, align 8, !tbaa !36
  %1036 = load double, ptr %925, align 8, !tbaa !36
  %1037 = fmul contract double %1035, %1036
  %1038 = fneg contract double %1034
  %1039 = fmul contract double %1037, %1038
  %1040 = fmul contract double %910, %1039
  %1041 = add nuw nsw i64 %912, 14
  %1042 = getelementptr double, ptr %3, i64 %1041
  store double %1040, ptr %1042, align 8, !tbaa !10
  %1043 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %1044 = load double, ptr %956, align 8, !tbaa !36
  %1045 = load double, ptr %925, align 8, !tbaa !36
  %1046 = fmul contract double %1044, %1045
  %1047 = fneg contract double %1043
  %1048 = fmul contract double %1046, %1047
  %1049 = fmul contract double %910, %1048
  %1050 = add nuw nsw i64 %912, 19
  %1051 = getelementptr double, ptr %3, i64 %1050
  store double %1049, ptr %1051, align 8, !tbaa !10
  %1052 = load double, ptr @_QMbt_dataEc1, align 8, !tbaa !44
  %1053 = load double, ptr %925, align 8, !tbaa !36
  %1054 = fmul contract double %909, %1053
  %1055 = fmul contract double %1052, %1054
  %1056 = add nuw nsw i64 %912, 24
  %1057 = getelementptr double, ptr %3, i64 %1056
  store double %1055, ptr %1057, align 8, !tbaa !10
  %1058 = getelementptr double, ptr %4, i64 %912
  store double 0.000000e+00, ptr %1058, align 8, !tbaa !10
  %1059 = getelementptr double, ptr %4, i64 %914
  store double 0.000000e+00, ptr %1059, align 8, !tbaa !10
  %1060 = getelementptr double, ptr %4, i64 %916
  store double 0.000000e+00, ptr %1060, align 8, !tbaa !10
  %1061 = getelementptr double, ptr %4, i64 %918
  store double 0.000000e+00, ptr %1061, align 8, !tbaa !10
  %1062 = getelementptr double, ptr %4, i64 %920
  store double 0.000000e+00, ptr %1062, align 8, !tbaa !10
  %1063 = load double, ptr @_QMbt_dataEcon43, align 8, !tbaa !46
  %1064 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1065 = load double, ptr %925, align 8, !tbaa !36
  %1066 = fneg contract double %1063
  %1067 = fmul contract double %1064, %1066
  %1068 = fmul contract double %910, %1067
  %1069 = fmul contract double %1065, %1068
  %1070 = getelementptr double, ptr %4, i64 %936
  store double %1069, ptr %1070, align 8, !tbaa !10
  %1071 = load double, ptr @_QMbt_dataEcon43, align 8, !tbaa !46
  %1072 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1073 = fmul contract double %1071, %1072
  %1074 = fmul contract double %909, %1073
  %1075 = getelementptr double, ptr %4, i64 %945
  store double %1074, ptr %1075, align 8, !tbaa !10
  %1076 = getelementptr double, ptr %4, i64 %953
  store double 0.000000e+00, ptr %1076, align 8, !tbaa !10
  %1077 = getelementptr double, ptr %4, i64 %961
  store double 0.000000e+00, ptr %1077, align 8, !tbaa !10
  %1078 = getelementptr double, ptr %4, i64 %964
  store double 0.000000e+00, ptr %1078, align 8, !tbaa !10
  %1079 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1080 = load double, ptr %948, align 8, !tbaa !36
  %1081 = fneg contract double %1079
  %1082 = fmul contract double %910, %1081
  %1083 = fmul contract double %1082, %1080
  %1084 = getelementptr double, ptr %4, i64 %971
  store double %1083, ptr %1084, align 8, !tbaa !10
  %1085 = getelementptr double, ptr %4, i64 %975
  store double 0.000000e+00, ptr %1085, align 8, !tbaa !10
  %1086 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1087 = fmul contract double %909, %1086
  %1088 = getelementptr double, ptr %4, i64 %979
  store double %1087, ptr %1088, align 8, !tbaa !10
  %1089 = getelementptr double, ptr %4, i64 %981
  store double 0.000000e+00, ptr %1089, align 8, !tbaa !10
  %1090 = getelementptr double, ptr %4, i64 %983
  store double 0.000000e+00, ptr %1090, align 8, !tbaa !10
  %1091 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1092 = load double, ptr %956, align 8, !tbaa !36
  %1093 = fneg contract double %1091
  %1094 = fmul contract double %910, %1093
  %1095 = fmul contract double %1094, %1092
  %1096 = getelementptr double, ptr %4, i64 %990
  store double %1095, ptr %1096, align 8, !tbaa !10
  %1097 = getelementptr double, ptr %4, i64 %994
  store double 0.000000e+00, ptr %1097, align 8, !tbaa !10
  %1098 = getelementptr double, ptr %4, i64 %996
  store double 0.000000e+00, ptr %1098, align 8, !tbaa !10
  %1099 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1100 = fmul contract double %909, %1099
  %1101 = getelementptr double, ptr %4, i64 %1000
  store double %1100, ptr %1101, align 8, !tbaa !10
  %1102 = getelementptr double, ptr %4, i64 %1002
  store double 0.000000e+00, ptr %1102, align 8, !tbaa !10
  %1103 = load double, ptr @_QMbt_dataEcon43, align 8, !tbaa !46
  %1104 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1105 = fmul contract double %1103, %1104
  %1106 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1107 = fsub contract double %1105, %1106
  %1108 = load double, ptr %925, align 8, !tbaa !36
  %1109 = fmul double %1108, %1108
  %1110 = fneg contract double %1107
  %1111 = fmul contract double %911, %1110
  %1112 = fmul contract double %1111, %1109
  %1113 = fsub contract double %1104, %1106
  %1114 = fmul contract double %911, %1113
  %1115 = load double, ptr %948, align 8, !tbaa !36
  %1116 = fmul double %1115, %1115
  %1117 = fmul contract double %1114, %1116
  %1118 = fsub contract double %1112, %1117
  %1119 = load double, ptr %956, align 8, !tbaa !36
  %1120 = fmul double %1119, %1119
  %1121 = fmul contract double %1114, %1120
  %1122 = fsub contract double %1118, %1121
  %1123 = fmul contract double %910, %1106
  %1124 = load double, ptr %1011, align 8, !tbaa !36
  %1125 = fmul contract double %1123, %1124
  %1126 = fsub contract double %1122, %1125
  %1127 = getelementptr double, ptr %4, i64 %1018
  store double %1126, ptr %1127, align 8, !tbaa !10
  %1128 = load double, ptr @_QMbt_dataEcon43, align 8, !tbaa !46
  %1129 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1130 = fmul contract double %1128, %1129
  %1131 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1132 = fsub contract double %1130, %1131
  %1133 = fmul contract double %910, %1132
  %1134 = load double, ptr %925, align 8, !tbaa !36
  %1135 = fmul contract double %1134, %1133
  %1136 = getelementptr double, ptr %4, i64 %1032
  store double %1135, ptr %1136, align 8, !tbaa !10
  %1137 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1138 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1139 = fsub contract double %1137, %1138
  %1140 = fmul contract double %910, %1139
  %1141 = load double, ptr %948, align 8, !tbaa !36
  %1142 = fmul contract double %1141, %1140
  %1143 = getelementptr double, ptr %4, i64 %1041
  store double %1142, ptr %1143, align 8, !tbaa !10
  %1144 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !48
  %1145 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1146 = fsub contract double %1144, %1145
  %1147 = fmul contract double %910, %1146
  %1148 = load double, ptr %956, align 8, !tbaa !36
  %1149 = fmul contract double %1148, %1147
  %1150 = getelementptr double, ptr %4, i64 %1050
  store double %1149, ptr %1150, align 8, !tbaa !10
  %1151 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1152 = fmul contract double %909, %1151
  %1153 = getelementptr double, ptr %4, i64 %1056
  store double %1152, ptr %1153, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1154 = add nsw i64 %906, -1
  %1155 = icmp ugt i64 %906, 1
  br i1 %1155, label %omp.wsloop.region25, label %omp.wsloop.region26
}

declare void @timer_start_(ptr) local_unnamed_addr

declare void @lhsinit_(ptr, ptr) local_unnamed_addr

declare void @binvcrhs_(ptr, ptr, ptr) local_unnamed_addr

declare void @matvec_sub_(ptr, ptr, ptr) local_unnamed_addr

declare void @matmul_sub_(ptr, ptr, ptr) local_unnamed_addr

declare void @binvrhs_(ptr, ptr) local_unnamed_addr

declare void @timer_stop_(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !52 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #2 = { nounwind }
attributes #3 = { convergent nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QMbt_dataEtimeron", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPx_solve"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMbt_dataEgrid_points", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"descriptor member", !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"direct data/_QMbt_dataErhs", !17, i64 0}
!17 = !{!"direct data", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"global data/_QMbt_dataEdt", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"global data/_QMbt_dataEtx1", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"global data/_QMbt_dataEtx2", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"global data/_QMbt_dataEdx1", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"global data/_QMbt_dataEdx2", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"global data/_QMbt_dataEdx3", !6, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"global data/_QMbt_dataEdx4", !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"global data/_QMbt_dataEdx5", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"direct data/_QMbt_dataErho_i", !17, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"direct data/_QMbt_dataEu", !17, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"global data/_QMbt_dataEc2", !6, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"direct data/_QMbt_dataEqs", !17, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"direct data/_QMbt_dataEsquare", !17, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"global data/_QMbt_dataEc1", !6, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"global data/_QMbt_dataEcon43", !6, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"global data/_QMbt_dataEc3c4", !6, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"global data/_QMbt_dataEc1345", !6, i64 0}
!52 = !{!53}
!53 = !{i64 2, i64 -1, i64 -1, i1 true}
