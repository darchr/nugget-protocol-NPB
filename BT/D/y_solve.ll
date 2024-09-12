; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMbt_dataEbuf = external global [5 x [409 x double]]
@_QMbt_dataEc1 = external local_unnamed_addr global double
@_QMbt_dataEc1345 = external local_unnamed_addr global double
@_QMbt_dataEc2 = external local_unnamed_addr global double
@_QMbt_dataEc3c4 = external local_unnamed_addr global double
@_QMbt_dataEcon43 = external local_unnamed_addr global double
@_QMbt_dataEcuf = external global [409 x double]
@_QMbt_dataEdt = external local_unnamed_addr global double
@_QMbt_dataEdy1 = external local_unnamed_addr global double
@_QMbt_dataEdy2 = external local_unnamed_addr global double
@_QMbt_dataEdy3 = external local_unnamed_addr global double
@_QMbt_dataEdy4 = external local_unnamed_addr global double
@_QMbt_dataEdy5 = external local_unnamed_addr global double
@_QMwork_lhsEfjac = external global [409 x [5 x [5 x double]]]
@_QMbt_dataEgrid_points = external local_unnamed_addr global [3 x i32]
@_QMwork_lhsElhs = external global [409 x [3 x [5 x [5 x double]]]]
@_QMwork_lhsEnjac = external global [409 x [5 x [5 x double]]]
@_QMbt_dataEq = external global [409 x double]
@_QMbt_dataEqs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMbt_dataErho_i = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMbt_dataErhs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMbt_dataEsquare = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMbt_dataEtimeron = external local_unnamed_addr global i32
@_QMbt_dataEty1 = external local_unnamed_addr global double
@_QMbt_dataEty2 = external local_unnamed_addr global double
@_QMbt_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMbt_dataEue = external global [5 x [409 x double]]
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

define void @y_solve_() local_unnamed_addr #0 {
  %structArg = alloca { ptr }, align 8
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %omp_global_thread_num7 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMbt_dataEbuf, i64 16360, ptr nonnull @_QMbt_dataEbuf.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMbt_dataEcuf, i64 3272, ptr nonnull @_QMbt_dataEcuf.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMwork_lhsEfjac, i64 81800, ptr nonnull @_QMwork_lhsEfjac.cache)
  %6 = alloca i32, align 4
  %7 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMwork_lhsElhs, i64 245400, ptr nonnull @_QMwork_lhsElhs.cache)
  %8 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMwork_lhsEnjac, i64 81800, ptr nonnull @_QMwork_lhsEnjac.cache)
  %9 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMbt_dataEq, i64 3272, ptr nonnull @_QMbt_dataEq.cache)
  %10 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num7, ptr nonnull @_QMbt_dataEue, i64 16360, ptr nonnull @_QMbt_dataEue.cache)
  %11 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %omp_parallel, label %12

12:                                               ; preds = %0
  store i32 7, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2)
  br label %omp_parallel

omp_parallel:                                     ; preds = %12, %0
  %13 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 1), align 4, !tbaa !11
  %14 = add i32 %13, -1
  store i32 %14, ptr %6, align 4, !tbaa !10
  store ptr %6, ptr %structArg, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @y_solve_..omp_par, ptr nonnull %structArg)
  %15 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not48 = icmp eq i32 %15, 0
  br i1 %.not48, label %17, label %16

16:                                               ; preds = %omp_parallel
  store i32 7, ptr %1, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %1)
  br label %17

17:                                               ; preds = %16, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @y_solve_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_ = load ptr, ptr %0, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %omp_global_thread_num47 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num47, ptr nonnull @_QMwork_lhsEfjac, i64 81800, ptr nonnull @_QMwork_lhsEfjac.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num47, ptr nonnull @_QMwork_lhsEnjac, i64 81800, ptr nonnull @_QMwork_lhsEnjac.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num47, ptr nonnull @_QMwork_lhsElhs, i64 245400, ptr nonnull @_QMwork_lhsElhs.cache)
  %6 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMbt_dataEgrid_points, i64 0, i64 2), align 4, !tbaa !11
  %7 = add i32 %6, -2
  %8 = load i32, ptr @_QMbt_dataEgrid_points, align 4, !tbaa !11
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
  %reass.sub2325 = sub i32 %13, %12
  %invariant.gep2319 = getelementptr i8, ptr %5, i64 400
  %invariant.gep2321 = getelementptr i8, ptr %5, i64 200
  %omp_collapsed.cmp2323.not = icmp eq i32 %reass.sub2325, -1
  br i1 %omp_collapsed.cmp2323.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %invariant.gep2312 = getelementptr i8, ptr %5, i64 352
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp.wsloop.region45, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num47)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num47)
  ret void

omp_collapsed.body:                               ; preds = %omp_collapsed.body.lr.ph, %omp.wsloop.region45
  %omp_collapsed.iv2324 = phi i32 [ 0, %omp_collapsed.body.lr.ph ], [ %omp_collapsed.next, %omp.wsloop.region45 ]
  %14 = add i32 %omp_collapsed.iv2324, %12
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
  %.unpack1657 = load ptr, ptr @_QMbt_dataErho_i, align 8, !tbaa !13
  %.unpack1664.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1664.unpack.unpack1668 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1664.unpack1665.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1664.unpack1665.unpack1671 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1664.unpack1666.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataErho_i, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %22 = zext nneg i32 %18 to i64
  %23 = sext i32 %17 to i64
  %24 = sub nsw i64 %22, %.unpack1664.unpack.unpack
  %25 = mul nsw i64 %.unpack1664.unpack1665.unpack1671, %.unpack1664.unpack.unpack1668
  %26 = sub nsw i64 %23, %.unpack1664.unpack1666.unpack
  %27 = mul nsw i64 %25, %26
  %28 = getelementptr double, ptr %.unpack1657, i64 %27
  %invariant.gep = getelementptr double, ptr %28, i64 %24
  %.unpack1677 = load ptr, ptr @_QMbt_dataEu, align 8, !tbaa !13
  %.unpack1684.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1684.unpack.unpack1689 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1684.unpack1685.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1684.unpack1685.unpack1692 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1684.unpack1686.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1684.unpack1686.unpack1695 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1684.unpack1687.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %29 = sub nsw i64 %22, %.unpack1684.unpack1685.unpack
  %30 = mul nsw i64 %29, %.unpack1684.unpack.unpack1689
  %reass.sub1701 = sub i64 %30, %.unpack1684.unpack.unpack
  %31 = mul nsw i64 %.unpack1684.unpack1685.unpack1692, %.unpack1684.unpack.unpack1689
  %32 = mul nsw i64 %.unpack1684.unpack1686.unpack1695, %31
  %33 = sub nsw i64 %23, %.unpack1684.unpack1687.unpack
  %34 = mul nsw i64 %32, %33
  %35 = getelementptr double, ptr %.unpack1677, i64 %34
  %invariant.gep2298 = getelementptr double, ptr %35, i64 %reass.sub1701
  %.unpack1778 = load ptr, ptr @_QMbt_dataEqs, align 8, !tbaa !13
  %.unpack1785.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1785.unpack.unpack1789 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1785.unpack1786.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1785.unpack1786.unpack1792 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1785.unpack1787.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEqs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %36 = sub nsw i64 %22, %.unpack1785.unpack.unpack
  %37 = mul nsw i64 %.unpack1785.unpack1786.unpack1792, %.unpack1785.unpack.unpack1789
  %38 = sub nsw i64 %23, %.unpack1785.unpack1787.unpack
  %39 = mul nsw i64 %37, %38
  %40 = getelementptr double, ptr %.unpack1778, i64 %39
  %invariant.gep2300 = getelementptr double, ptr %40, i64 %36
  %.unpack1949 = load ptr, ptr @_QMbt_dataEsquare, align 8, !tbaa !13
  %.unpack1956.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1956.unpack.unpack1960 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1956.unpack1957.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1956.unpack1957.unpack1963 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1956.unpack1958.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMbt_dataEsquare, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %41 = sub nsw i64 %22, %.unpack1956.unpack.unpack
  %42 = mul nsw i64 %.unpack1956.unpack1957.unpack1963, %.unpack1956.unpack.unpack1960
  %43 = sub nsw i64 %23, %.unpack1956.unpack1958.unpack
  %44 = mul nsw i64 %42, %43
  %45 = getelementptr double, ptr %.unpack1949, i64 %44
  %invariant.gep2302 = getelementptr double, ptr %45, i64 %41
  br label %omp.wsloop.region25

omp.wsloop.region26:                              ; preds = %omp.wsloop.region25, %omp_collapsed.body
  call void @lhsinit_(ptr %5, ptr nonnull %loadgep_) #2
  %46 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %47 = add i32 %46, -1
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %omp.wsloop.region28.preheader, label %omp.wsloop.region29

omp.wsloop.region28.preheader:                    ; preds = %omp.wsloop.region26
  %49 = zext nneg i32 %47 to i64
  br label %omp.wsloop.region28

omp.wsloop.region29:                              ; preds = %omp.wsloop.region28, %omp.wsloop.region26
  %50 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %50, 0
  br i1 %.not, label %omp.wsloop.region31, label %omp.wsloop.region30

omp.wsloop.region31:                              ; preds = %omp.wsloop.region30, %omp.wsloop.region29
  %.unpack = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1516.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1516.unpack.unpack1521 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1516.unpack1517.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1516.unpack1517.unpack1524 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1516.unpack1518.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1516.unpack1518.unpack1527 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1516.unpack1519.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %51 = zext nneg i32 %18 to i64
  %52 = sext i32 %17 to i64
  %53 = sub nsw i64 %51, %.unpack1516.unpack1517.unpack
  %54 = mul nsw i64 %53, %.unpack1516.unpack.unpack1521
  %55 = mul nsw i64 %.unpack1516.unpack1517.unpack1524, %.unpack1516.unpack.unpack1521
  %56 = mul i64 %.unpack1516.unpack1518.unpack, %55
  %57 = add i64 %54, 1
  %58 = add i64 %.unpack1516.unpack.unpack, %56
  %59 = sub i64 %57, %58
  %60 = mul nsw i64 %.unpack1516.unpack1518.unpack1527, %55
  %61 = sub nsw i64 %52, %.unpack1516.unpack1519.unpack
  %62 = mul nsw i64 %60, %61
  %63 = getelementptr double, ptr %.unpack, i64 %62
  %64 = getelementptr double, ptr %63, i64 %59
  call void @binvcrhs_(ptr %invariant.gep2321, ptr %invariant.gep2319, ptr %64) #2
  %65 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %66 = add i32 %65, -1
  %67 = sext i32 %66 to i64
  %68 = icmp sgt i32 %66, 0
  br i1 %68, label %omp.wsloop.region33, label %omp.wsloop.region34

omp.wsloop.region34.loopexit:                     ; preds = %omp.wsloop.region33
  %.pre = load i32, ptr %loadgep_, align 4, !tbaa !10
  %.pre2349 = add i32 %.pre, -1
  %.pre2350 = sext i32 %.pre2349 to i64
  br label %omp.wsloop.region34

omp.wsloop.region34:                              ; preds = %omp.wsloop.region34.loopexit, %omp.wsloop.region31
  %.pre-phi2351 = phi i64 [ %.pre2350, %omp.wsloop.region34.loopexit ], [ %67, %omp.wsloop.region31 ]
  %69 = phi i32 [ %.pre, %omp.wsloop.region34.loopexit ], [ %65, %omp.wsloop.region31 ]
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, 75
  %72 = getelementptr double, ptr %5, i64 %71
  %.unpack1533 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1540.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1540.unpack.unpack1545 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1540.unpack1541.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1540.unpack1541.unpack1548 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1540.unpack1542.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1540.unpack1542.unpack1551 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1540.unpack1543.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %73 = sub nsw i64 %51, %.unpack1540.unpack1541.unpack
  %74 = mul nsw i64 %73, %.unpack1540.unpack.unpack1545
  %reass.sub = sub i64 %74, %.unpack1540.unpack.unpack
  %75 = add i64 %reass.sub, 1
  %76 = mul nsw i64 %.unpack1540.unpack1541.unpack1548, %.unpack1540.unpack.unpack1545
  %77 = sub nsw i64 %.pre-phi2351, %.unpack1540.unpack1542.unpack
  %78 = mul nsw i64 %77, %76
  %79 = mul nsw i64 %.unpack1540.unpack1542.unpack1551, %76
  %80 = sub nsw i64 %52, %.unpack1540.unpack1543.unpack
  %81 = mul nsw i64 %79, %80
  %82 = getelementptr double, ptr %.unpack1533, i64 %81
  %83 = getelementptr double, ptr %82, i64 %78
  %84 = getelementptr double, ptr %83, i64 %75
  %85 = sub nsw i64 %70, %.unpack1540.unpack1542.unpack
  %86 = mul nsw i64 %85, %76
  %87 = getelementptr double, ptr %82, i64 %86
  %88 = getelementptr double, ptr %87, i64 %75
  call void @matvec_sub_(ptr %72, ptr %84, ptr %88) #2
  %89 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %90, 75
  %92 = getelementptr double, ptr %5, i64 %91
  %93 = add i32 %89, -1
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %94, 75
  %gep2320 = getelementptr double, ptr %invariant.gep2319, i64 %95
  %96 = getelementptr i8, ptr %92, i64 200
  call void @matmul_sub_(ptr %92, ptr %gep2320, ptr %96) #2
  %97 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %98, 75
  %gep2322 = getelementptr double, ptr %invariant.gep2321, i64 %99
  %.unpack1557 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1564.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1564.unpack.unpack1569 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1564.unpack1565.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1564.unpack1565.unpack1572 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1564.unpack1566.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1564.unpack1566.unpack1575 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1564.unpack1567.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %100 = sub nsw i64 %51, %.unpack1564.unpack1565.unpack
  %101 = mul nsw i64 %100, %.unpack1564.unpack.unpack1569
  %reass.sub1581 = sub i64 %101, %.unpack1564.unpack.unpack
  %102 = mul nsw i64 %.unpack1564.unpack1565.unpack1572, %.unpack1564.unpack.unpack1569
  %103 = sub nsw i64 %98, %.unpack1564.unpack1566.unpack
  %104 = mul nsw i64 %103, %102
  %105 = mul nsw i64 %.unpack1564.unpack1566.unpack1575, %102
  %106 = sub nsw i64 %52, %.unpack1564.unpack1567.unpack
  %107 = mul nsw i64 %105, %106
  %108 = getelementptr double, ptr %.unpack1557, i64 %107
  %109 = getelementptr double, ptr %108, i64 %104
  %110 = getelementptr double, ptr %109, i64 %reass.sub1581
  %111 = getelementptr i8, ptr %110, i64 8
  call void @binvrhs_(ptr %gep2322, ptr %111) #2
  %112 = load i32, ptr @_QMbt_dataEtimeron, align 4, !tbaa !4
  %.not1582 = icmp eq i32 %112, 0
  br i1 %.not1582, label %omp.wsloop.region36, label %omp.wsloop.region35

omp.wsloop.region36:                              ; preds = %omp.wsloop.region35, %omp.wsloop.region34
  %113 = load i32, ptr %loadgep_, align 4, !tbaa !10
  %114 = sub i32 0, %113
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %omp.wsloop.region39.preheader.lr.ph, label %omp.wsloop.region45

omp.wsloop.region39.preheader.lr.ph:              ; preds = %omp.wsloop.region36
  %116 = sext i32 %114 to i64
  %117 = sub nsw i64 0, %116
  %.unpack1583 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1590.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1590.unpack.unpack1595 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1590.unpack1591.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1590.unpack1591.unpack1598 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1590.unpack1592.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1590.unpack1592.unpack1601 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1590.unpack1593.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %118 = sub nsw i64 %51, %.unpack1590.unpack1591.unpack
  %119 = mul nsw i64 %118, %.unpack1590.unpack.unpack1595
  %120 = mul nsw i64 %.unpack1590.unpack1591.unpack1598, %.unpack1590.unpack.unpack1595
  %121 = mul nsw i64 %.unpack1590.unpack1592.unpack1601, %120
  %122 = sub nsw i64 %52, %.unpack1590.unpack1593.unpack
  %123 = mul nsw i64 %121, %122
  %124 = getelementptr double, ptr %.unpack1583, i64 %123
  %invariant.gep2315 = getelementptr double, ptr %124, i64 %119
  %125 = sub nsw i64 1, %.unpack1590.unpack.unpack
  %126 = sub nsw i64 2, %.unpack1590.unpack.unpack
  %127 = sub nsw i64 3, %.unpack1590.unpack.unpack
  %128 = sub nsw i64 4, %.unpack1590.unpack.unpack
  %129 = sub nsw i64 5, %.unpack1590.unpack.unpack
  br label %omp.wsloop.region39.preheader

omp.wsloop.region39.preheader:                    ; preds = %omp.wsloop.region39.preheader.lr.ph, %omp.wsloop.region39.preheader
  %130 = phi i64 [ %117, %omp.wsloop.region39.preheader.lr.ph ], [ %131, %omp.wsloop.region39.preheader ]
  %131 = add nsw i64 %130, -1
  %sext2352 = shl i64 %131, 32
  %132 = ashr exact i64 %sext2352, 32
  %133 = sub nsw i64 %132, %.unpack1590.unpack1592.unpack
  %134 = mul nsw i64 %133, %120
  %gep2316 = getelementptr double, ptr %invariant.gep2315, i64 %134
  %135 = mul nsw i64 %132, 75
  %gep2313 = getelementptr double, ptr %invariant.gep2312, i64 %135
  %sext2353 = shl i64 %130, 32
  %136 = ashr exact i64 %sext2353, 32
  %137 = sub nsw i64 %136, %.unpack1590.unpack1592.unpack
  %138 = mul nsw i64 %137, %120
  %gep2318 = getelementptr double, ptr %invariant.gep2315, i64 %138
  %139 = getelementptr double, ptr %gep2316, i64 %125
  %.promoted = load double, ptr %139, align 8, !tbaa !15
  %gep2309 = getelementptr i8, ptr %gep2313, i64 48
  %140 = load double, ptr %gep2309, align 8, !tbaa !10
  %141 = getelementptr double, ptr %gep2318, i64 %125
  %142 = load double, ptr %141, align 8, !tbaa !15
  %143 = fmul contract double %140, %142
  %144 = fsub contract double %.promoted, %143
  store double %144, ptr %139, align 8, !tbaa !15
  %gep2309.1 = getelementptr i8, ptr %gep2313, i64 88
  %145 = load double, ptr %gep2309.1, align 8, !tbaa !10
  %146 = getelementptr double, ptr %gep2318, i64 %126
  %147 = load double, ptr %146, align 8, !tbaa !15
  %148 = fmul contract double %145, %147
  %149 = fsub contract double %144, %148
  store double %149, ptr %139, align 8, !tbaa !15
  %gep2309.2 = getelementptr i8, ptr %gep2313, i64 128
  %150 = load double, ptr %gep2309.2, align 8, !tbaa !10
  %151 = getelementptr double, ptr %gep2318, i64 %127
  %152 = load double, ptr %151, align 8, !tbaa !15
  %153 = fmul contract double %150, %152
  %154 = fsub contract double %149, %153
  store double %154, ptr %139, align 8, !tbaa !15
  %gep2309.3 = getelementptr i8, ptr %gep2313, i64 168
  %155 = load double, ptr %gep2309.3, align 8, !tbaa !10
  %156 = getelementptr double, ptr %gep2318, i64 %128
  %157 = load double, ptr %156, align 8, !tbaa !15
  %158 = fmul contract double %155, %157
  %159 = fsub contract double %154, %158
  store double %159, ptr %139, align 8, !tbaa !15
  %gep2309.4 = getelementptr i8, ptr %gep2313, i64 208
  %160 = load double, ptr %gep2309.4, align 8, !tbaa !10
  %161 = getelementptr double, ptr %gep2318, i64 %129
  %162 = load double, ptr %161, align 8, !tbaa !15
  %163 = fmul contract double %160, %162
  %164 = fsub contract double %159, %163
  store double %164, ptr %139, align 8, !tbaa !15
  %165 = getelementptr double, ptr %gep2316, i64 %126
  %.promoted.1 = load double, ptr %165, align 8, !tbaa !15
  %gep2309.12343 = getelementptr i8, ptr %gep2313, i64 56
  %166 = load double, ptr %gep2309.12343, align 8, !tbaa !10
  %167 = load double, ptr %141, align 8, !tbaa !15
  %168 = fmul contract double %166, %167
  %169 = fsub contract double %.promoted.1, %168
  store double %169, ptr %165, align 8, !tbaa !15
  %gep2309.1.1 = getelementptr i8, ptr %gep2313, i64 96
  %170 = load double, ptr %gep2309.1.1, align 8, !tbaa !10
  %171 = load double, ptr %146, align 8, !tbaa !15
  %172 = fmul contract double %170, %171
  %173 = fsub contract double %169, %172
  store double %173, ptr %165, align 8, !tbaa !15
  %gep2309.2.1 = getelementptr i8, ptr %gep2313, i64 136
  %174 = load double, ptr %gep2309.2.1, align 8, !tbaa !10
  %175 = load double, ptr %151, align 8, !tbaa !15
  %176 = fmul contract double %174, %175
  %177 = fsub contract double %173, %176
  store double %177, ptr %165, align 8, !tbaa !15
  %gep2309.3.1 = getelementptr i8, ptr %gep2313, i64 176
  %178 = load double, ptr %gep2309.3.1, align 8, !tbaa !10
  %179 = load double, ptr %156, align 8, !tbaa !15
  %180 = fmul contract double %178, %179
  %181 = fsub contract double %177, %180
  store double %181, ptr %165, align 8, !tbaa !15
  %gep2309.4.1 = getelementptr i8, ptr %gep2313, i64 216
  %182 = load double, ptr %gep2309.4.1, align 8, !tbaa !10
  %183 = load double, ptr %161, align 8, !tbaa !15
  %184 = fmul contract double %182, %183
  %185 = fsub contract double %181, %184
  store double %185, ptr %165, align 8, !tbaa !15
  %186 = getelementptr double, ptr %gep2316, i64 %127
  %.promoted.2 = load double, ptr %186, align 8, !tbaa !15
  %gep2309.22344 = getelementptr i8, ptr %gep2313, i64 64
  %187 = load double, ptr %gep2309.22344, align 8, !tbaa !10
  %188 = load double, ptr %141, align 8, !tbaa !15
  %189 = fmul contract double %187, %188
  %190 = fsub contract double %.promoted.2, %189
  store double %190, ptr %186, align 8, !tbaa !15
  %gep2309.1.2 = getelementptr i8, ptr %gep2313, i64 104
  %191 = load double, ptr %gep2309.1.2, align 8, !tbaa !10
  %192 = load double, ptr %146, align 8, !tbaa !15
  %193 = fmul contract double %191, %192
  %194 = fsub contract double %190, %193
  store double %194, ptr %186, align 8, !tbaa !15
  %gep2309.2.2 = getelementptr i8, ptr %gep2313, i64 144
  %195 = load double, ptr %gep2309.2.2, align 8, !tbaa !10
  %196 = load double, ptr %151, align 8, !tbaa !15
  %197 = fmul contract double %195, %196
  %198 = fsub contract double %194, %197
  store double %198, ptr %186, align 8, !tbaa !15
  %gep2309.3.2 = getelementptr i8, ptr %gep2313, i64 184
  %199 = load double, ptr %gep2309.3.2, align 8, !tbaa !10
  %200 = load double, ptr %156, align 8, !tbaa !15
  %201 = fmul contract double %199, %200
  %202 = fsub contract double %198, %201
  store double %202, ptr %186, align 8, !tbaa !15
  %gep2309.4.2 = getelementptr i8, ptr %gep2313, i64 224
  %203 = load double, ptr %gep2309.4.2, align 8, !tbaa !10
  %204 = load double, ptr %161, align 8, !tbaa !15
  %205 = fmul contract double %203, %204
  %206 = fsub contract double %202, %205
  store double %206, ptr %186, align 8, !tbaa !15
  %207 = getelementptr double, ptr %gep2316, i64 %128
  %.promoted.3 = load double, ptr %207, align 8, !tbaa !15
  %gep2309.32345 = getelementptr i8, ptr %gep2313, i64 72
  %208 = load double, ptr %gep2309.32345, align 8, !tbaa !10
  %209 = load double, ptr %141, align 8, !tbaa !15
  %210 = fmul contract double %208, %209
  %211 = fsub contract double %.promoted.3, %210
  store double %211, ptr %207, align 8, !tbaa !15
  %gep2309.1.3 = getelementptr i8, ptr %gep2313, i64 112
  %212 = load double, ptr %gep2309.1.3, align 8, !tbaa !10
  %213 = load double, ptr %146, align 8, !tbaa !15
  %214 = fmul contract double %212, %213
  %215 = fsub contract double %211, %214
  store double %215, ptr %207, align 8, !tbaa !15
  %gep2309.2.3 = getelementptr i8, ptr %gep2313, i64 152
  %216 = load double, ptr %gep2309.2.3, align 8, !tbaa !10
  %217 = load double, ptr %151, align 8, !tbaa !15
  %218 = fmul contract double %216, %217
  %219 = fsub contract double %215, %218
  store double %219, ptr %207, align 8, !tbaa !15
  %gep2309.3.3 = getelementptr i8, ptr %gep2313, i64 192
  %220 = load double, ptr %gep2309.3.3, align 8, !tbaa !10
  %221 = load double, ptr %156, align 8, !tbaa !15
  %222 = fmul contract double %220, %221
  %223 = fsub contract double %219, %222
  store double %223, ptr %207, align 8, !tbaa !15
  %gep2309.4.3 = getelementptr i8, ptr %gep2313, i64 232
  %224 = load double, ptr %gep2309.4.3, align 8, !tbaa !10
  %225 = load double, ptr %161, align 8, !tbaa !15
  %226 = fmul contract double %224, %225
  %227 = fsub contract double %223, %226
  store double %227, ptr %207, align 8, !tbaa !15
  %228 = getelementptr double, ptr %gep2316, i64 %129
  %.promoted.4 = load double, ptr %228, align 8, !tbaa !15
  %gep2309.42346 = getelementptr i8, ptr %gep2313, i64 80
  %229 = load double, ptr %gep2309.42346, align 8, !tbaa !10
  %230 = load double, ptr %141, align 8, !tbaa !15
  %231 = fmul contract double %229, %230
  %232 = fsub contract double %.promoted.4, %231
  store double %232, ptr %228, align 8, !tbaa !15
  %gep2309.1.4 = getelementptr i8, ptr %gep2313, i64 120
  %233 = load double, ptr %gep2309.1.4, align 8, !tbaa !10
  %234 = load double, ptr %146, align 8, !tbaa !15
  %235 = fmul contract double %233, %234
  %236 = fsub contract double %232, %235
  store double %236, ptr %228, align 8, !tbaa !15
  %gep2309.2.4 = getelementptr i8, ptr %gep2313, i64 160
  %237 = load double, ptr %gep2309.2.4, align 8, !tbaa !10
  %238 = load double, ptr %151, align 8, !tbaa !15
  %239 = fmul contract double %237, %238
  %240 = fsub contract double %236, %239
  store double %240, ptr %228, align 8, !tbaa !15
  %gep2309.3.4 = getelementptr i8, ptr %gep2313, i64 200
  %241 = load double, ptr %gep2309.3.4, align 8, !tbaa !10
  %242 = load double, ptr %156, align 8, !tbaa !15
  %243 = fmul contract double %241, %242
  %244 = fsub contract double %240, %243
  store double %244, ptr %228, align 8, !tbaa !15
  %gep2309.4.4 = getelementptr i8, ptr %gep2313, i64 240
  %245 = load double, ptr %gep2309.4.4, align 8, !tbaa !10
  %246 = load double, ptr %161, align 8, !tbaa !15
  %247 = fmul contract double %245, %246
  %248 = fsub contract double %244, %247
  store double %248, ptr %228, align 8, !tbaa !15
  %249 = icmp ugt i64 %130, 1
  br i1 %249, label %omp.wsloop.region39.preheader, label %omp.wsloop.region45

omp.wsloop.region45:                              ; preds = %omp.wsloop.region39.preheader, %omp.wsloop.region36
  %omp_collapsed.next = add nuw i32 %omp_collapsed.iv2324, 1
  %exitcond2348.not = icmp eq i32 %omp_collapsed.iv2324, %reass.sub2325
  br i1 %exitcond2348.not, label %omp_collapsed.exit, label %omp_collapsed.body

omp.wsloop.region35:                              ; preds = %omp.wsloop.region34
  store i32 10, ptr %1, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %1) #2
  br label %omp.wsloop.region36

omp.wsloop.region33:                              ; preds = %omp.wsloop.region31, %omp.wsloop.region33
  %indvars.iv2331 = phi i64 [ %indvars.iv.next2332, %omp.wsloop.region33 ], [ 1, %omp.wsloop.region31 ]
  %250 = mul nuw nsw i64 %indvars.iv2331, 75
  %251 = getelementptr double, ptr %5, i64 %250
  %.unpack1607 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1614.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1614.unpack.unpack1619 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1614.unpack1615.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1614.unpack1615.unpack1622 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1614.unpack1616.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1614.unpack1616.unpack1625 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1614.unpack1617.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %252 = add nsw i64 %indvars.iv2331, -1
  %253 = sub nsw i64 %51, %.unpack1614.unpack1615.unpack
  %254 = mul nsw i64 %253, %.unpack1614.unpack.unpack1619
  %reass.sub1631 = sub i64 %254, %.unpack1614.unpack.unpack
  %255 = add i64 %reass.sub1631, 1
  %256 = mul nsw i64 %.unpack1614.unpack1615.unpack1622, %.unpack1614.unpack.unpack1619
  %257 = sub nsw i64 %252, %.unpack1614.unpack1616.unpack
  %258 = mul nsw i64 %257, %256
  %259 = mul nsw i64 %.unpack1614.unpack1616.unpack1625, %256
  %260 = sub nsw i64 %52, %.unpack1614.unpack1617.unpack
  %261 = mul nsw i64 %259, %260
  %262 = getelementptr double, ptr %.unpack1607, i64 %261
  %263 = getelementptr double, ptr %262, i64 %258
  %264 = getelementptr double, ptr %263, i64 %255
  %265 = sub nsw i64 %indvars.iv2331, %.unpack1614.unpack1616.unpack
  %266 = mul nsw i64 %265, %256
  %267 = getelementptr double, ptr %262, i64 %266
  %268 = getelementptr double, ptr %267, i64 %255
  call void @matvec_sub_(ptr %251, ptr %264, ptr %268) #2
  %269 = mul nuw nsw i64 %252, 75
  %gep2305 = getelementptr double, ptr %invariant.gep2319, i64 %269
  %270 = getelementptr i8, ptr %251, i64 200
  call void @matmul_sub_(ptr %251, ptr %gep2305, ptr %270) #2
  %271 = getelementptr i8, ptr %251, i64 400
  %.unpack1632 = load ptr, ptr @_QMbt_dataErhs, align 8, !tbaa !13
  %.unpack1639.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7), align 8, !tbaa !13
  %.unpack1639.unpack.unpack1644 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !13
  %.unpack1639.unpack1640.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1), align 8, !tbaa !13
  %.unpack1639.unpack1640.unpack1647 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !13
  %.unpack1639.unpack1641.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2), align 8, !tbaa !13
  %.unpack1639.unpack1641.unpack1650 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !13
  %.unpack1639.unpack1642.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMbt_dataErhs, i64 0, i32 7, i64 3), align 8, !tbaa !13
  %272 = sub nsw i64 %51, %.unpack1639.unpack1640.unpack
  %273 = mul nsw i64 %272, %.unpack1639.unpack.unpack1644
  %reass.sub1656 = sub i64 %273, %.unpack1639.unpack.unpack
  %274 = mul nsw i64 %.unpack1639.unpack1640.unpack1647, %.unpack1639.unpack.unpack1644
  %275 = sub nsw i64 %indvars.iv2331, %.unpack1639.unpack1641.unpack
  %276 = mul nsw i64 %275, %274
  %277 = mul nsw i64 %.unpack1639.unpack1641.unpack1650, %274
  %278 = sub nsw i64 %52, %.unpack1639.unpack1642.unpack
  %279 = mul nsw i64 %277, %278
  %280 = getelementptr double, ptr %.unpack1632, i64 %279
  %281 = getelementptr double, ptr %280, i64 %276
  %282 = getelementptr double, ptr %281, i64 %reass.sub1656
  %283 = getelementptr i8, ptr %282, i64 8
  call void @binvcrhs_(ptr %270, ptr %271, ptr %283) #2
  %indvars.iv.next2332 = add nuw nsw i64 %indvars.iv2331, 1
  %exitcond2334.not = icmp eq i64 %indvars.iv2331, %67
  br i1 %exitcond2334.not, label %omp.wsloop.region34.loopexit, label %omp.wsloop.region33

omp.wsloop.region30:                              ; preds = %omp.wsloop.region29
  store i32 10, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2) #2
  br label %omp.wsloop.region31

omp.wsloop.region28:                              ; preds = %omp.wsloop.region28.preheader, %omp.wsloop.region28
  %indvars.iv2328 = phi i64 [ 1, %omp.wsloop.region28.preheader ], [ %indvars.iv.next2329, %omp.wsloop.region28 ]
  %284 = load double, ptr @_QMbt_dataEdt, align 8, !tbaa !18
  %285 = load double, ptr @_QMbt_dataEty1, align 8, !tbaa !20
  %286 = fmul contract double %284, %285
  %287 = load double, ptr @_QMbt_dataEty2, align 8, !tbaa !22
  %288 = fmul contract double %284, %287
  %289 = mul i64 %indvars.iv2328, 25
  %290 = add i64 %289, -25
  %291 = getelementptr double, ptr %3, i64 %290
  %292 = load double, ptr %291, align 8, !tbaa !10
  %293 = fneg contract double %288
  %294 = fmul contract double %292, %293
  %295 = getelementptr double, ptr %4, i64 %290
  %296 = load double, ptr %295, align 8, !tbaa !10
  %297 = fmul contract double %286, %296
  %298 = fsub contract double %294, %297
  %299 = load double, ptr @_QMbt_dataEdy1, align 8, !tbaa !24
  %300 = fmul contract double %286, %299
  %301 = fsub contract double %298, %300
  %302 = mul nuw nsw i64 %indvars.iv2328, 75
  %303 = getelementptr double, ptr %5, i64 %302
  store double %301, ptr %303, align 8, !tbaa !10
  %304 = add i64 %289, -20
  %305 = getelementptr double, ptr %3, i64 %304
  %306 = load double, ptr %305, align 8, !tbaa !10
  %307 = fmul contract double %306, %293
  %308 = getelementptr double, ptr %4, i64 %304
  %309 = load double, ptr %308, align 8, !tbaa !10
  %310 = fmul contract double %286, %309
  %311 = fsub contract double %307, %310
  %312 = getelementptr i8, ptr %303, i64 40
  store double %311, ptr %312, align 8, !tbaa !10
  %313 = add i64 %289, -15
  %314 = getelementptr double, ptr %3, i64 %313
  %315 = load double, ptr %314, align 8, !tbaa !10
  %316 = fmul contract double %315, %293
  %317 = getelementptr double, ptr %4, i64 %313
  %318 = load double, ptr %317, align 8, !tbaa !10
  %319 = fmul contract double %286, %318
  %320 = fsub contract double %316, %319
  %321 = getelementptr i8, ptr %303, i64 80
  store double %320, ptr %321, align 8, !tbaa !10
  %322 = add i64 %289, -10
  %323 = getelementptr double, ptr %3, i64 %322
  %324 = load double, ptr %323, align 8, !tbaa !10
  %325 = fmul contract double %324, %293
  %326 = getelementptr double, ptr %4, i64 %322
  %327 = load double, ptr %326, align 8, !tbaa !10
  %328 = fmul contract double %286, %327
  %329 = fsub contract double %325, %328
  %330 = getelementptr i8, ptr %303, i64 120
  store double %329, ptr %330, align 8, !tbaa !10
  %331 = add i64 %289, -5
  %332 = getelementptr double, ptr %3, i64 %331
  %333 = load double, ptr %332, align 8, !tbaa !10
  %334 = fmul contract double %333, %293
  %335 = getelementptr double, ptr %4, i64 %331
  %336 = load double, ptr %335, align 8, !tbaa !10
  %337 = fmul contract double %286, %336
  %338 = fsub contract double %334, %337
  %339 = getelementptr i8, ptr %303, i64 160
  store double %338, ptr %339, align 8, !tbaa !10
  %340 = add i64 %289, -24
  %341 = getelementptr double, ptr %3, i64 %340
  %342 = load double, ptr %341, align 8, !tbaa !10
  %343 = fmul contract double %342, %293
  %344 = getelementptr double, ptr %4, i64 %340
  %345 = load double, ptr %344, align 8, !tbaa !10
  %346 = fmul contract double %286, %345
  %347 = fsub contract double %343, %346
  %348 = getelementptr i8, ptr %303, i64 8
  store double %347, ptr %348, align 8, !tbaa !10
  %349 = add i64 %289, -19
  %350 = getelementptr double, ptr %3, i64 %349
  %351 = load double, ptr %350, align 8, !tbaa !10
  %352 = fmul contract double %351, %293
  %353 = getelementptr double, ptr %4, i64 %349
  %354 = load double, ptr %353, align 8, !tbaa !10
  %355 = fmul contract double %286, %354
  %356 = fsub contract double %352, %355
  %357 = load double, ptr @_QMbt_dataEdy2, align 8, !tbaa !26
  %358 = fmul contract double %286, %357
  %359 = fsub contract double %356, %358
  %360 = getelementptr i8, ptr %303, i64 48
  store double %359, ptr %360, align 8, !tbaa !10
  %361 = add i64 %289, -14
  %362 = getelementptr double, ptr %3, i64 %361
  %363 = load double, ptr %362, align 8, !tbaa !10
  %364 = fmul contract double %363, %293
  %365 = getelementptr double, ptr %4, i64 %361
  %366 = load double, ptr %365, align 8, !tbaa !10
  %367 = fmul contract double %286, %366
  %368 = fsub contract double %364, %367
  %369 = getelementptr i8, ptr %303, i64 88
  store double %368, ptr %369, align 8, !tbaa !10
  %370 = add i64 %289, -9
  %371 = getelementptr double, ptr %3, i64 %370
  %372 = load double, ptr %371, align 8, !tbaa !10
  %373 = fmul contract double %372, %293
  %374 = getelementptr double, ptr %4, i64 %370
  %375 = load double, ptr %374, align 8, !tbaa !10
  %376 = fmul contract double %286, %375
  %377 = fsub contract double %373, %376
  %378 = getelementptr i8, ptr %303, i64 128
  store double %377, ptr %378, align 8, !tbaa !10
  %379 = add i64 %289, -4
  %380 = getelementptr double, ptr %3, i64 %379
  %381 = load double, ptr %380, align 8, !tbaa !10
  %382 = fmul contract double %381, %293
  %383 = getelementptr double, ptr %4, i64 %379
  %384 = load double, ptr %383, align 8, !tbaa !10
  %385 = fmul contract double %286, %384
  %386 = fsub contract double %382, %385
  %387 = getelementptr i8, ptr %303, i64 168
  store double %386, ptr %387, align 8, !tbaa !10
  %388 = add i64 %289, -23
  %389 = getelementptr double, ptr %3, i64 %388
  %390 = load double, ptr %389, align 8, !tbaa !10
  %391 = fmul contract double %390, %293
  %392 = getelementptr double, ptr %4, i64 %388
  %393 = load double, ptr %392, align 8, !tbaa !10
  %394 = fmul contract double %286, %393
  %395 = fsub contract double %391, %394
  %396 = getelementptr i8, ptr %303, i64 16
  store double %395, ptr %396, align 8, !tbaa !10
  %397 = add i64 %289, -18
  %398 = getelementptr double, ptr %3, i64 %397
  %399 = load double, ptr %398, align 8, !tbaa !10
  %400 = fmul contract double %399, %293
  %401 = getelementptr double, ptr %4, i64 %397
  %402 = load double, ptr %401, align 8, !tbaa !10
  %403 = fmul contract double %286, %402
  %404 = fsub contract double %400, %403
  %405 = getelementptr i8, ptr %303, i64 56
  store double %404, ptr %405, align 8, !tbaa !10
  %406 = add i64 %289, -13
  %407 = getelementptr double, ptr %3, i64 %406
  %408 = load double, ptr %407, align 8, !tbaa !10
  %409 = fmul contract double %408, %293
  %410 = getelementptr double, ptr %4, i64 %406
  %411 = load double, ptr %410, align 8, !tbaa !10
  %412 = fmul contract double %286, %411
  %413 = fsub contract double %409, %412
  %414 = load double, ptr @_QMbt_dataEdy3, align 8, !tbaa !28
  %415 = fmul contract double %286, %414
  %416 = fsub contract double %413, %415
  %417 = getelementptr i8, ptr %303, i64 96
  store double %416, ptr %417, align 8, !tbaa !10
  %418 = add i64 %289, -8
  %419 = getelementptr double, ptr %3, i64 %418
  %420 = load double, ptr %419, align 8, !tbaa !10
  %421 = fmul contract double %420, %293
  %422 = getelementptr double, ptr %4, i64 %418
  %423 = load double, ptr %422, align 8, !tbaa !10
  %424 = fmul contract double %286, %423
  %425 = fsub contract double %421, %424
  %426 = getelementptr i8, ptr %303, i64 136
  store double %425, ptr %426, align 8, !tbaa !10
  %427 = add i64 %289, -3
  %428 = getelementptr double, ptr %3, i64 %427
  %429 = load double, ptr %428, align 8, !tbaa !10
  %430 = fmul contract double %429, %293
  %431 = getelementptr double, ptr %4, i64 %427
  %432 = load double, ptr %431, align 8, !tbaa !10
  %433 = fmul contract double %286, %432
  %434 = fsub contract double %430, %433
  %435 = getelementptr i8, ptr %303, i64 176
  store double %434, ptr %435, align 8, !tbaa !10
  %436 = add i64 %289, -22
  %437 = getelementptr double, ptr %3, i64 %436
  %438 = load double, ptr %437, align 8, !tbaa !10
  %439 = fmul contract double %438, %293
  %440 = getelementptr double, ptr %4, i64 %436
  %441 = load double, ptr %440, align 8, !tbaa !10
  %442 = fmul contract double %286, %441
  %443 = fsub contract double %439, %442
  %444 = getelementptr i8, ptr %303, i64 24
  store double %443, ptr %444, align 8, !tbaa !10
  %445 = add i64 %289, -17
  %446 = getelementptr double, ptr %3, i64 %445
  %447 = load double, ptr %446, align 8, !tbaa !10
  %448 = fmul contract double %447, %293
  %449 = getelementptr double, ptr %4, i64 %445
  %450 = load double, ptr %449, align 8, !tbaa !10
  %451 = fmul contract double %286, %450
  %452 = fsub contract double %448, %451
  %453 = getelementptr i8, ptr %303, i64 64
  store double %452, ptr %453, align 8, !tbaa !10
  %454 = add i64 %289, -12
  %455 = getelementptr double, ptr %3, i64 %454
  %456 = load double, ptr %455, align 8, !tbaa !10
  %457 = fmul contract double %456, %293
  %458 = getelementptr double, ptr %4, i64 %454
  %459 = load double, ptr %458, align 8, !tbaa !10
  %460 = fmul contract double %286, %459
  %461 = fsub contract double %457, %460
  %462 = getelementptr i8, ptr %303, i64 104
  store double %461, ptr %462, align 8, !tbaa !10
  %463 = add i64 %289, -7
  %464 = getelementptr double, ptr %3, i64 %463
  %465 = load double, ptr %464, align 8, !tbaa !10
  %466 = fmul contract double %465, %293
  %467 = getelementptr double, ptr %4, i64 %463
  %468 = load double, ptr %467, align 8, !tbaa !10
  %469 = fmul contract double %286, %468
  %470 = fsub contract double %466, %469
  %471 = load double, ptr @_QMbt_dataEdy4, align 8, !tbaa !30
  %472 = fmul contract double %286, %471
  %473 = fsub contract double %470, %472
  %474 = getelementptr i8, ptr %303, i64 144
  store double %473, ptr %474, align 8, !tbaa !10
  %475 = add i64 %289, -2
  %476 = getelementptr double, ptr %3, i64 %475
  %477 = load double, ptr %476, align 8, !tbaa !10
  %478 = fmul contract double %477, %293
  %479 = getelementptr double, ptr %4, i64 %475
  %480 = load double, ptr %479, align 8, !tbaa !10
  %481 = fmul contract double %286, %480
  %482 = fsub contract double %478, %481
  %483 = getelementptr i8, ptr %303, i64 184
  store double %482, ptr %483, align 8, !tbaa !10
  %484 = add i64 %289, -21
  %485 = getelementptr double, ptr %3, i64 %484
  %486 = load double, ptr %485, align 8, !tbaa !10
  %487 = fmul contract double %486, %293
  %488 = getelementptr double, ptr %4, i64 %484
  %489 = load double, ptr %488, align 8, !tbaa !10
  %490 = fmul contract double %286, %489
  %491 = fsub contract double %487, %490
  %492 = getelementptr i8, ptr %303, i64 32
  store double %491, ptr %492, align 8, !tbaa !10
  %493 = add i64 %289, -16
  %494 = getelementptr double, ptr %3, i64 %493
  %495 = load double, ptr %494, align 8, !tbaa !10
  %496 = fmul contract double %495, %293
  %497 = getelementptr double, ptr %4, i64 %493
  %498 = load double, ptr %497, align 8, !tbaa !10
  %499 = fmul contract double %286, %498
  %500 = fsub contract double %496, %499
  %501 = getelementptr i8, ptr %303, i64 72
  store double %500, ptr %501, align 8, !tbaa !10
  %502 = add i64 %289, -11
  %503 = getelementptr double, ptr %3, i64 %502
  %504 = load double, ptr %503, align 8, !tbaa !10
  %505 = fmul contract double %504, %293
  %506 = getelementptr double, ptr %4, i64 %502
  %507 = load double, ptr %506, align 8, !tbaa !10
  %508 = fmul contract double %286, %507
  %509 = fsub contract double %505, %508
  %510 = getelementptr i8, ptr %303, i64 112
  store double %509, ptr %510, align 8, !tbaa !10
  %511 = add i64 %289, -6
  %512 = getelementptr double, ptr %3, i64 %511
  %513 = load double, ptr %512, align 8, !tbaa !10
  %514 = fmul contract double %513, %293
  %515 = getelementptr double, ptr %4, i64 %511
  %516 = load double, ptr %515, align 8, !tbaa !10
  %517 = fmul contract double %286, %516
  %518 = fsub contract double %514, %517
  %519 = getelementptr i8, ptr %303, i64 152
  store double %518, ptr %519, align 8, !tbaa !10
  %520 = add i64 %289, -1
  %521 = getelementptr double, ptr %3, i64 %520
  %522 = load double, ptr %521, align 8, !tbaa !10
  %523 = fmul contract double %522, %293
  %524 = getelementptr double, ptr %4, i64 %520
  %525 = load double, ptr %524, align 8, !tbaa !10
  %526 = fmul contract double %286, %525
  %527 = fsub contract double %523, %526
  %528 = load double, ptr @_QMbt_dataEdy5, align 8, !tbaa !32
  %529 = fmul contract double %286, %528
  %530 = fsub contract double %527, %529
  %531 = getelementptr i8, ptr %303, i64 192
  store double %530, ptr %531, align 8, !tbaa !10
  %532 = fmul contract double %286, 2.000000e+00
  %533 = mul nuw nsw i64 %indvars.iv2328, 25
  %534 = getelementptr double, ptr %4, i64 %533
  %535 = load double, ptr %534, align 8, !tbaa !10
  %536 = fmul contract double %532, %535
  %537 = fadd contract double %536, 1.000000e+00
  %538 = load double, ptr @_QMbt_dataEdy1, align 8, !tbaa !24
  %539 = fmul contract double %532, %538
  %540 = fadd contract double %537, %539
  %541 = getelementptr i8, ptr %303, i64 200
  store double %540, ptr %541, align 8, !tbaa !10
  %542 = getelementptr i8, ptr %534, i64 40
  %543 = load double, ptr %542, align 8, !tbaa !10
  %544 = fmul contract double %532, %543
  %545 = getelementptr i8, ptr %303, i64 240
  store double %544, ptr %545, align 8, !tbaa !10
  %546 = getelementptr i8, ptr %534, i64 80
  %547 = load double, ptr %546, align 8, !tbaa !10
  %548 = fmul contract double %532, %547
  %549 = getelementptr i8, ptr %303, i64 280
  store double %548, ptr %549, align 8, !tbaa !10
  %550 = getelementptr i8, ptr %534, i64 120
  %551 = load double, ptr %550, align 8, !tbaa !10
  %552 = fmul contract double %532, %551
  %553 = getelementptr i8, ptr %303, i64 320
  store double %552, ptr %553, align 8, !tbaa !10
  %554 = getelementptr i8, ptr %534, i64 160
  %555 = load double, ptr %554, align 8, !tbaa !10
  %556 = fmul contract double %532, %555
  %557 = getelementptr i8, ptr %303, i64 360
  store double %556, ptr %557, align 8, !tbaa !10
  %558 = getelementptr i8, ptr %534, i64 8
  %559 = load double, ptr %558, align 8, !tbaa !10
  %560 = fmul contract double %532, %559
  %561 = getelementptr i8, ptr %303, i64 208
  store double %560, ptr %561, align 8, !tbaa !10
  %562 = getelementptr i8, ptr %534, i64 48
  %563 = load double, ptr %562, align 8, !tbaa !10
  %564 = fmul contract double %532, %563
  %565 = fadd contract double %564, 1.000000e+00
  %566 = load double, ptr @_QMbt_dataEdy2, align 8, !tbaa !26
  %567 = fmul contract double %532, %566
  %568 = fadd contract double %565, %567
  %569 = getelementptr i8, ptr %303, i64 248
  store double %568, ptr %569, align 8, !tbaa !10
  %570 = getelementptr i8, ptr %534, i64 88
  %571 = load double, ptr %570, align 8, !tbaa !10
  %572 = fmul contract double %532, %571
  %573 = getelementptr i8, ptr %303, i64 288
  store double %572, ptr %573, align 8, !tbaa !10
  %574 = getelementptr i8, ptr %534, i64 128
  %575 = load double, ptr %574, align 8, !tbaa !10
  %576 = fmul contract double %532, %575
  %577 = getelementptr i8, ptr %303, i64 328
  store double %576, ptr %577, align 8, !tbaa !10
  %578 = getelementptr i8, ptr %534, i64 168
  %579 = load double, ptr %578, align 8, !tbaa !10
  %580 = fmul contract double %532, %579
  %581 = getelementptr i8, ptr %303, i64 368
  store double %580, ptr %581, align 8, !tbaa !10
  %582 = getelementptr i8, ptr %534, i64 16
  %583 = load double, ptr %582, align 8, !tbaa !10
  %584 = fmul contract double %532, %583
  %585 = getelementptr i8, ptr %303, i64 216
  store double %584, ptr %585, align 8, !tbaa !10
  %586 = getelementptr i8, ptr %534, i64 56
  %587 = load double, ptr %586, align 8, !tbaa !10
  %588 = fmul contract double %532, %587
  %589 = getelementptr i8, ptr %303, i64 256
  store double %588, ptr %589, align 8, !tbaa !10
  %590 = getelementptr i8, ptr %534, i64 96
  %591 = load double, ptr %590, align 8, !tbaa !10
  %592 = fmul contract double %532, %591
  %593 = fadd contract double %592, 1.000000e+00
  %594 = load double, ptr @_QMbt_dataEdy3, align 8, !tbaa !28
  %595 = fmul contract double %532, %594
  %596 = fadd contract double %593, %595
  %597 = getelementptr i8, ptr %303, i64 296
  store double %596, ptr %597, align 8, !tbaa !10
  %598 = getelementptr i8, ptr %534, i64 136
  %599 = load double, ptr %598, align 8, !tbaa !10
  %600 = fmul contract double %532, %599
  %601 = getelementptr i8, ptr %303, i64 336
  store double %600, ptr %601, align 8, !tbaa !10
  %602 = getelementptr i8, ptr %534, i64 176
  %603 = load double, ptr %602, align 8, !tbaa !10
  %604 = fmul contract double %532, %603
  %605 = getelementptr i8, ptr %303, i64 376
  store double %604, ptr %605, align 8, !tbaa !10
  %606 = getelementptr i8, ptr %534, i64 24
  %607 = load double, ptr %606, align 8, !tbaa !10
  %608 = fmul contract double %532, %607
  %609 = getelementptr i8, ptr %303, i64 224
  store double %608, ptr %609, align 8, !tbaa !10
  %610 = getelementptr i8, ptr %534, i64 64
  %611 = load double, ptr %610, align 8, !tbaa !10
  %612 = fmul contract double %532, %611
  %613 = getelementptr i8, ptr %303, i64 264
  store double %612, ptr %613, align 8, !tbaa !10
  %614 = getelementptr i8, ptr %534, i64 104
  %615 = load double, ptr %614, align 8, !tbaa !10
  %616 = fmul contract double %532, %615
  %617 = getelementptr i8, ptr %303, i64 304
  store double %616, ptr %617, align 8, !tbaa !10
  %618 = getelementptr i8, ptr %534, i64 144
  %619 = load double, ptr %618, align 8, !tbaa !10
  %620 = fmul contract double %532, %619
  %621 = fadd contract double %620, 1.000000e+00
  %622 = load double, ptr @_QMbt_dataEdy4, align 8, !tbaa !30
  %623 = fmul contract double %532, %622
  %624 = fadd contract double %621, %623
  %625 = getelementptr i8, ptr %303, i64 344
  store double %624, ptr %625, align 8, !tbaa !10
  %626 = getelementptr i8, ptr %534, i64 184
  %627 = load double, ptr %626, align 8, !tbaa !10
  %628 = fmul contract double %532, %627
  %629 = getelementptr i8, ptr %303, i64 384
  store double %628, ptr %629, align 8, !tbaa !10
  %630 = getelementptr i8, ptr %534, i64 32
  %631 = load double, ptr %630, align 8, !tbaa !10
  %632 = fmul contract double %532, %631
  %633 = getelementptr i8, ptr %303, i64 232
  store double %632, ptr %633, align 8, !tbaa !10
  %634 = getelementptr i8, ptr %534, i64 72
  %635 = load double, ptr %634, align 8, !tbaa !10
  %636 = fmul contract double %532, %635
  %637 = getelementptr i8, ptr %303, i64 272
  store double %636, ptr %637, align 8, !tbaa !10
  %638 = getelementptr i8, ptr %534, i64 112
  %639 = load double, ptr %638, align 8, !tbaa !10
  %640 = fmul contract double %532, %639
  %641 = getelementptr i8, ptr %303, i64 312
  store double %640, ptr %641, align 8, !tbaa !10
  %642 = getelementptr i8, ptr %534, i64 152
  %643 = load double, ptr %642, align 8, !tbaa !10
  %644 = fmul contract double %532, %643
  %645 = getelementptr i8, ptr %303, i64 352
  store double %644, ptr %645, align 8, !tbaa !10
  %646 = getelementptr i8, ptr %534, i64 192
  %647 = load double, ptr %646, align 8, !tbaa !10
  %648 = fmul contract double %532, %647
  %649 = fadd contract double %648, 1.000000e+00
  %650 = load double, ptr @_QMbt_dataEdy5, align 8, !tbaa !32
  %651 = fmul contract double %532, %650
  %652 = fadd contract double %649, %651
  %653 = getelementptr i8, ptr %303, i64 392
  store double %652, ptr %653, align 8, !tbaa !10
  %indvars.iv.next2329 = add nuw nsw i64 %indvars.iv2328, 1
  %sext = shl i64 %indvars.iv.next2329, 32
  %654 = ashr exact i64 %sext, 32
  %655 = mul nsw i64 %654, 25
  %656 = getelementptr double, ptr %3, i64 %655
  %657 = load double, ptr %656, align 8, !tbaa !10
  %658 = fmul contract double %288, %657
  %659 = getelementptr double, ptr %4, i64 %655
  %660 = load double, ptr %659, align 8, !tbaa !10
  %661 = fmul contract double %286, %660
  %662 = fsub contract double %658, %661
  %663 = load double, ptr @_QMbt_dataEdy1, align 8, !tbaa !24
  %664 = fmul contract double %286, %663
  %665 = fsub contract double %662, %664
  %666 = getelementptr i8, ptr %303, i64 400
  store double %665, ptr %666, align 8, !tbaa !10
  %667 = add nsw i64 %655, 5
  %668 = getelementptr double, ptr %3, i64 %667
  %669 = load double, ptr %668, align 8, !tbaa !10
  %670 = fmul contract double %288, %669
  %671 = getelementptr double, ptr %4, i64 %667
  %672 = load double, ptr %671, align 8, !tbaa !10
  %673 = fmul contract double %286, %672
  %674 = fsub contract double %670, %673
  %675 = getelementptr i8, ptr %303, i64 440
  store double %674, ptr %675, align 8, !tbaa !10
  %676 = add nsw i64 %655, 10
  %677 = getelementptr double, ptr %3, i64 %676
  %678 = load double, ptr %677, align 8, !tbaa !10
  %679 = fmul contract double %288, %678
  %680 = getelementptr double, ptr %4, i64 %676
  %681 = load double, ptr %680, align 8, !tbaa !10
  %682 = fmul contract double %286, %681
  %683 = fsub contract double %679, %682
  %684 = getelementptr i8, ptr %303, i64 480
  store double %683, ptr %684, align 8, !tbaa !10
  %685 = add nsw i64 %655, 15
  %686 = getelementptr double, ptr %3, i64 %685
  %687 = load double, ptr %686, align 8, !tbaa !10
  %688 = fmul contract double %288, %687
  %689 = getelementptr double, ptr %4, i64 %685
  %690 = load double, ptr %689, align 8, !tbaa !10
  %691 = fmul contract double %286, %690
  %692 = fsub contract double %688, %691
  %693 = getelementptr i8, ptr %303, i64 520
  store double %692, ptr %693, align 8, !tbaa !10
  %694 = add nsw i64 %655, 20
  %695 = getelementptr double, ptr %3, i64 %694
  %696 = load double, ptr %695, align 8, !tbaa !10
  %697 = fmul contract double %288, %696
  %698 = getelementptr double, ptr %4, i64 %694
  %699 = load double, ptr %698, align 8, !tbaa !10
  %700 = fmul contract double %286, %699
  %701 = fsub contract double %697, %700
  %702 = getelementptr i8, ptr %303, i64 560
  store double %701, ptr %702, align 8, !tbaa !10
  %703 = add nsw i64 %655, 1
  %704 = getelementptr double, ptr %3, i64 %703
  %705 = load double, ptr %704, align 8, !tbaa !10
  %706 = fmul contract double %288, %705
  %707 = getelementptr double, ptr %4, i64 %703
  %708 = load double, ptr %707, align 8, !tbaa !10
  %709 = fmul contract double %286, %708
  %710 = fsub contract double %706, %709
  %711 = getelementptr i8, ptr %303, i64 408
  store double %710, ptr %711, align 8, !tbaa !10
  %712 = add nsw i64 %655, 6
  %713 = getelementptr double, ptr %3, i64 %712
  %714 = load double, ptr %713, align 8, !tbaa !10
  %715 = fmul contract double %288, %714
  %716 = getelementptr double, ptr %4, i64 %712
  %717 = load double, ptr %716, align 8, !tbaa !10
  %718 = fmul contract double %286, %717
  %719 = fsub contract double %715, %718
  %720 = load double, ptr @_QMbt_dataEdy2, align 8, !tbaa !26
  %721 = fmul contract double %286, %720
  %722 = fsub contract double %719, %721
  %723 = getelementptr i8, ptr %303, i64 448
  store double %722, ptr %723, align 8, !tbaa !10
  %724 = add nsw i64 %655, 11
  %725 = getelementptr double, ptr %3, i64 %724
  %726 = load double, ptr %725, align 8, !tbaa !10
  %727 = fmul contract double %288, %726
  %728 = getelementptr double, ptr %4, i64 %724
  %729 = load double, ptr %728, align 8, !tbaa !10
  %730 = fmul contract double %286, %729
  %731 = fsub contract double %727, %730
  %732 = getelementptr i8, ptr %303, i64 488
  store double %731, ptr %732, align 8, !tbaa !10
  %733 = add nsw i64 %655, 16
  %734 = getelementptr double, ptr %3, i64 %733
  %735 = load double, ptr %734, align 8, !tbaa !10
  %736 = fmul contract double %288, %735
  %737 = getelementptr double, ptr %4, i64 %733
  %738 = load double, ptr %737, align 8, !tbaa !10
  %739 = fmul contract double %286, %738
  %740 = fsub contract double %736, %739
  %741 = getelementptr i8, ptr %303, i64 528
  store double %740, ptr %741, align 8, !tbaa !10
  %742 = add nsw i64 %655, 21
  %743 = getelementptr double, ptr %3, i64 %742
  %744 = load double, ptr %743, align 8, !tbaa !10
  %745 = fmul contract double %288, %744
  %746 = getelementptr double, ptr %4, i64 %742
  %747 = load double, ptr %746, align 8, !tbaa !10
  %748 = fmul contract double %286, %747
  %749 = fsub contract double %745, %748
  %750 = getelementptr i8, ptr %303, i64 568
  store double %749, ptr %750, align 8, !tbaa !10
  %751 = add nsw i64 %655, 2
  %752 = getelementptr double, ptr %3, i64 %751
  %753 = load double, ptr %752, align 8, !tbaa !10
  %754 = fmul contract double %288, %753
  %755 = getelementptr double, ptr %4, i64 %751
  %756 = load double, ptr %755, align 8, !tbaa !10
  %757 = fmul contract double %286, %756
  %758 = fsub contract double %754, %757
  %759 = getelementptr i8, ptr %303, i64 416
  store double %758, ptr %759, align 8, !tbaa !10
  %760 = add nsw i64 %655, 7
  %761 = getelementptr double, ptr %3, i64 %760
  %762 = load double, ptr %761, align 8, !tbaa !10
  %763 = fmul contract double %288, %762
  %764 = getelementptr double, ptr %4, i64 %760
  %765 = load double, ptr %764, align 8, !tbaa !10
  %766 = fmul contract double %286, %765
  %767 = fsub contract double %763, %766
  %768 = getelementptr i8, ptr %303, i64 456
  store double %767, ptr %768, align 8, !tbaa !10
  %769 = add nsw i64 %655, 12
  %770 = getelementptr double, ptr %3, i64 %769
  %771 = load double, ptr %770, align 8, !tbaa !10
  %772 = fmul contract double %288, %771
  %773 = getelementptr double, ptr %4, i64 %769
  %774 = load double, ptr %773, align 8, !tbaa !10
  %775 = fmul contract double %286, %774
  %776 = fsub contract double %772, %775
  %777 = load double, ptr @_QMbt_dataEdy3, align 8, !tbaa !28
  %778 = fmul contract double %286, %777
  %779 = fsub contract double %776, %778
  %780 = getelementptr i8, ptr %303, i64 496
  store double %779, ptr %780, align 8, !tbaa !10
  %781 = add nsw i64 %655, 17
  %782 = getelementptr double, ptr %3, i64 %781
  %783 = load double, ptr %782, align 8, !tbaa !10
  %784 = fmul contract double %288, %783
  %785 = getelementptr double, ptr %4, i64 %781
  %786 = load double, ptr %785, align 8, !tbaa !10
  %787 = fmul contract double %286, %786
  %788 = fsub contract double %784, %787
  %789 = getelementptr i8, ptr %303, i64 536
  store double %788, ptr %789, align 8, !tbaa !10
  %790 = add nsw i64 %655, 22
  %791 = getelementptr double, ptr %3, i64 %790
  %792 = load double, ptr %791, align 8, !tbaa !10
  %793 = fmul contract double %288, %792
  %794 = getelementptr double, ptr %4, i64 %790
  %795 = load double, ptr %794, align 8, !tbaa !10
  %796 = fmul contract double %286, %795
  %797 = fsub contract double %793, %796
  %798 = getelementptr i8, ptr %303, i64 576
  store double %797, ptr %798, align 8, !tbaa !10
  %799 = add nsw i64 %655, 3
  %800 = getelementptr double, ptr %3, i64 %799
  %801 = load double, ptr %800, align 8, !tbaa !10
  %802 = fmul contract double %288, %801
  %803 = getelementptr double, ptr %4, i64 %799
  %804 = load double, ptr %803, align 8, !tbaa !10
  %805 = fmul contract double %286, %804
  %806 = fsub contract double %802, %805
  %807 = getelementptr i8, ptr %303, i64 424
  store double %806, ptr %807, align 8, !tbaa !10
  %808 = add nsw i64 %655, 8
  %809 = getelementptr double, ptr %3, i64 %808
  %810 = load double, ptr %809, align 8, !tbaa !10
  %811 = fmul contract double %288, %810
  %812 = getelementptr double, ptr %4, i64 %808
  %813 = load double, ptr %812, align 8, !tbaa !10
  %814 = fmul contract double %286, %813
  %815 = fsub contract double %811, %814
  %816 = getelementptr i8, ptr %303, i64 464
  store double %815, ptr %816, align 8, !tbaa !10
  %817 = add nsw i64 %655, 13
  %818 = getelementptr double, ptr %3, i64 %817
  %819 = load double, ptr %818, align 8, !tbaa !10
  %820 = fmul contract double %288, %819
  %821 = getelementptr double, ptr %4, i64 %817
  %822 = load double, ptr %821, align 8, !tbaa !10
  %823 = fmul contract double %286, %822
  %824 = fsub contract double %820, %823
  %825 = getelementptr i8, ptr %303, i64 504
  store double %824, ptr %825, align 8, !tbaa !10
  %826 = add nsw i64 %655, 18
  %827 = getelementptr double, ptr %3, i64 %826
  %828 = load double, ptr %827, align 8, !tbaa !10
  %829 = fmul contract double %288, %828
  %830 = getelementptr double, ptr %4, i64 %826
  %831 = load double, ptr %830, align 8, !tbaa !10
  %832 = fmul contract double %286, %831
  %833 = fsub contract double %829, %832
  %834 = load double, ptr @_QMbt_dataEdy4, align 8, !tbaa !30
  %835 = fmul contract double %286, %834
  %836 = fsub contract double %833, %835
  %837 = getelementptr i8, ptr %303, i64 544
  store double %836, ptr %837, align 8, !tbaa !10
  %838 = add nsw i64 %655, 23
  %839 = getelementptr double, ptr %3, i64 %838
  %840 = load double, ptr %839, align 8, !tbaa !10
  %841 = fmul contract double %288, %840
  %842 = getelementptr double, ptr %4, i64 %838
  %843 = load double, ptr %842, align 8, !tbaa !10
  %844 = fmul contract double %286, %843
  %845 = fsub contract double %841, %844
  %846 = getelementptr i8, ptr %303, i64 584
  store double %845, ptr %846, align 8, !tbaa !10
  %847 = add nsw i64 %655, 4
  %848 = getelementptr double, ptr %3, i64 %847
  %849 = load double, ptr %848, align 8, !tbaa !10
  %850 = fmul contract double %288, %849
  %851 = getelementptr double, ptr %4, i64 %847
  %852 = load double, ptr %851, align 8, !tbaa !10
  %853 = fmul contract double %286, %852
  %854 = fsub contract double %850, %853
  %855 = getelementptr i8, ptr %303, i64 432
  store double %854, ptr %855, align 8, !tbaa !10
  %856 = add nsw i64 %655, 9
  %857 = getelementptr double, ptr %3, i64 %856
  %858 = load double, ptr %857, align 8, !tbaa !10
  %859 = fmul contract double %288, %858
  %860 = getelementptr double, ptr %4, i64 %856
  %861 = load double, ptr %860, align 8, !tbaa !10
  %862 = fmul contract double %286, %861
  %863 = fsub contract double %859, %862
  %864 = getelementptr i8, ptr %303, i64 472
  store double %863, ptr %864, align 8, !tbaa !10
  %865 = add nsw i64 %655, 14
  %866 = getelementptr double, ptr %3, i64 %865
  %867 = load double, ptr %866, align 8, !tbaa !10
  %868 = fmul contract double %288, %867
  %869 = getelementptr double, ptr %4, i64 %865
  %870 = load double, ptr %869, align 8, !tbaa !10
  %871 = fmul contract double %286, %870
  %872 = fsub contract double %868, %871
  %873 = getelementptr i8, ptr %303, i64 512
  store double %872, ptr %873, align 8, !tbaa !10
  %874 = add nsw i64 %655, 19
  %875 = getelementptr double, ptr %3, i64 %874
  %876 = load double, ptr %875, align 8, !tbaa !10
  %877 = fmul contract double %288, %876
  %878 = getelementptr double, ptr %4, i64 %874
  %879 = load double, ptr %878, align 8, !tbaa !10
  %880 = fmul contract double %286, %879
  %881 = fsub contract double %877, %880
  %882 = getelementptr i8, ptr %303, i64 552
  store double %881, ptr %882, align 8, !tbaa !10
  %883 = add nsw i64 %655, 24
  %884 = getelementptr double, ptr %3, i64 %883
  %885 = load double, ptr %884, align 8, !tbaa !10
  %886 = fmul contract double %288, %885
  %887 = getelementptr double, ptr %4, i64 %883
  %888 = load double, ptr %887, align 8, !tbaa !10
  %889 = fmul contract double %286, %888
  %890 = fsub contract double %886, %889
  %891 = load double, ptr @_QMbt_dataEdy5, align 8, !tbaa !32
  %892 = fmul contract double %286, %891
  %893 = fsub contract double %890, %892
  %894 = getelementptr i8, ptr %303, i64 592
  store double %893, ptr %894, align 8, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv2328, %49
  br i1 %exitcond.not, label %omp.wsloop.region29, label %omp.wsloop.region28

omp.wsloop.region25:                              ; preds = %omp.wsloop.region25.lr.ph, %omp.wsloop.region25
  %indvars.iv = phi i64 [ 0, %omp.wsloop.region25.lr.ph ], [ %indvars.iv.next, %omp.wsloop.region25 ]
  %895 = phi i64 [ %21, %omp.wsloop.region25.lr.ph ], [ %1140, %omp.wsloop.region25 ]
  %896 = sub nsw i64 %indvars.iv, %.unpack1664.unpack1665.unpack
  %897 = mul nsw i64 %896, %.unpack1664.unpack.unpack1668
  %gep = getelementptr double, ptr %invariant.gep, i64 %897
  %898 = load double, ptr %gep, align 8, !tbaa !34
  %899 = fmul contract double %898, %898
  %900 = fmul contract double %898, %899
  %901 = mul nuw nsw i64 %indvars.iv, 25
  %902 = getelementptr double, ptr %3, i64 %901
  store double 0.000000e+00, ptr %902, align 8, !tbaa !10
  %903 = add nuw nsw i64 %901, 5
  %904 = getelementptr double, ptr %3, i64 %903
  store double 0.000000e+00, ptr %904, align 8, !tbaa !10
  %905 = add nuw nsw i64 %901, 10
  %906 = getelementptr double, ptr %3, i64 %905
  store double 1.000000e+00, ptr %906, align 8, !tbaa !10
  %907 = add nuw nsw i64 %901, 15
  %908 = getelementptr double, ptr %3, i64 %907
  store double 0.000000e+00, ptr %908, align 8, !tbaa !10
  %909 = add nuw nsw i64 %901, 20
  %910 = getelementptr double, ptr %3, i64 %909
  store double 0.000000e+00, ptr %910, align 8, !tbaa !10
  %911 = sub nsw i64 %indvars.iv, %.unpack1684.unpack1686.unpack
  %912 = mul nsw i64 %911, %31
  %gep2299 = getelementptr double, ptr %invariant.gep2298, i64 %912
  %913 = getelementptr i8, ptr %gep2299, i64 16
  %914 = load double, ptr %913, align 8, !tbaa !36
  %915 = getelementptr i8, ptr %gep2299, i64 24
  %916 = load double, ptr %915, align 8, !tbaa !36
  %917 = fneg contract double %914
  %918 = fmul contract double %916, %917
  %919 = fmul contract double %899, %918
  %920 = add nuw nsw i64 %901, 1
  %921 = getelementptr double, ptr %3, i64 %920
  store double %919, ptr %921, align 8, !tbaa !10
  %922 = load double, ptr %915, align 8, !tbaa !36
  %923 = fmul contract double %898, %922
  %924 = add nuw nsw i64 %901, 6
  %925 = getelementptr double, ptr %3, i64 %924
  store double %923, ptr %925, align 8, !tbaa !10
  %926 = load double, ptr %913, align 8, !tbaa !36
  %927 = fmul contract double %898, %926
  %928 = add nuw nsw i64 %901, 11
  %929 = getelementptr double, ptr %3, i64 %928
  store double %927, ptr %929, align 8, !tbaa !10
  %930 = add nuw nsw i64 %901, 16
  %931 = getelementptr double, ptr %3, i64 %930
  store double 0.000000e+00, ptr %931, align 8, !tbaa !10
  %932 = add nuw nsw i64 %901, 21
  %933 = getelementptr double, ptr %3, i64 %932
  store double 0.000000e+00, ptr %933, align 8, !tbaa !10
  %934 = load double, ptr %915, align 8, !tbaa !36
  %935 = fneg contract double %934
  %936 = fmul contract double %934, %935
  %937 = fmul contract double %899, %936
  %938 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %939 = sub nsw i64 %indvars.iv, %.unpack1785.unpack1786.unpack
  %940 = mul nsw i64 %939, %.unpack1785.unpack.unpack1789
  %gep2301 = getelementptr double, ptr %invariant.gep2300, i64 %940
  %941 = load double, ptr %gep2301, align 8, !tbaa !40
  %942 = fmul contract double %938, %941
  %943 = fadd contract double %937, %942
  %944 = add nuw nsw i64 %901, 2
  %945 = getelementptr double, ptr %3, i64 %944
  store double %943, ptr %945, align 8, !tbaa !10
  %946 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %947 = load double, ptr %913, align 8, !tbaa !36
  %948 = fneg contract double %946
  %949 = fmul contract double %947, %948
  %950 = fmul contract double %898, %949
  %951 = add nuw nsw i64 %901, 7
  %952 = getelementptr double, ptr %3, i64 %951
  store double %950, ptr %952, align 8, !tbaa !10
  %953 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %954 = fsub contract double 2.000000e+00, %953
  %955 = load double, ptr %915, align 8, !tbaa !36
  %956 = fmul contract double %954, %955
  %957 = fmul contract double %898, %956
  %958 = add nuw nsw i64 %901, 12
  %959 = getelementptr double, ptr %3, i64 %958
  store double %957, ptr %959, align 8, !tbaa !10
  %960 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %961 = getelementptr i8, ptr %gep2299, i64 32
  %962 = load double, ptr %961, align 8, !tbaa !36
  %963 = fneg contract double %960
  %964 = fmul contract double %962, %963
  %965 = fmul contract double %898, %964
  %966 = add nuw nsw i64 %901, 17
  %967 = getelementptr double, ptr %3, i64 %966
  store double %965, ptr %967, align 8, !tbaa !10
  %968 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %969 = add nuw nsw i64 %901, 22
  %970 = getelementptr double, ptr %3, i64 %969
  store double %968, ptr %970, align 8, !tbaa !10
  %971 = load double, ptr %915, align 8, !tbaa !36
  %972 = load double, ptr %961, align 8, !tbaa !36
  %973 = fneg contract double %971
  %974 = fmul contract double %972, %973
  %975 = fmul contract double %899, %974
  %976 = add nuw nsw i64 %901, 3
  %977 = getelementptr double, ptr %3, i64 %976
  store double %975, ptr %977, align 8, !tbaa !10
  %978 = add nuw nsw i64 %901, 8
  %979 = getelementptr double, ptr %3, i64 %978
  store double 0.000000e+00, ptr %979, align 8, !tbaa !10
  %980 = load double, ptr %961, align 8, !tbaa !36
  %981 = fmul contract double %898, %980
  %982 = add nuw nsw i64 %901, 13
  %983 = getelementptr double, ptr %3, i64 %982
  store double %981, ptr %983, align 8, !tbaa !10
  %984 = load double, ptr %915, align 8, !tbaa !36
  %985 = fmul contract double %898, %984
  %986 = add nuw nsw i64 %901, 18
  %987 = getelementptr double, ptr %3, i64 %986
  store double %985, ptr %987, align 8, !tbaa !10
  %988 = add nuw nsw i64 %901, 23
  %989 = getelementptr double, ptr %3, i64 %988
  store double 0.000000e+00, ptr %989, align 8, !tbaa !10
  %990 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %991 = fmul contract double %990, 2.000000e+00
  %992 = sub nsw i64 %indvars.iv, %.unpack1956.unpack1957.unpack
  %993 = mul nsw i64 %992, %.unpack1956.unpack.unpack1960
  %gep2303 = getelementptr double, ptr %invariant.gep2302, i64 %993
  %994 = load double, ptr %gep2303, align 8, !tbaa !42
  %995 = fmul contract double %991, %994
  %996 = load double, ptr @_QMbt_dataEc1, align 8, !tbaa !44
  %997 = getelementptr i8, ptr %gep2299, i64 40
  %998 = load double, ptr %997, align 8, !tbaa !36
  %999 = fmul contract double %996, %998
  %1000 = fsub contract double %995, %999
  %1001 = load double, ptr %915, align 8, !tbaa !36
  %1002 = fmul contract double %1001, %1000
  %1003 = fmul contract double %899, %1002
  %1004 = add nuw nsw i64 %901, 4
  %1005 = getelementptr double, ptr %3, i64 %1004
  store double %1003, ptr %1005, align 8, !tbaa !10
  %1006 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %1007 = load double, ptr %913, align 8, !tbaa !36
  %1008 = load double, ptr %915, align 8, !tbaa !36
  %1009 = fneg contract double %1006
  %1010 = fmul contract double %1007, %1009
  %1011 = fmul contract double %1010, %1008
  %1012 = fmul contract double %899, %1011
  %1013 = add nuw nsw i64 %901, 9
  %1014 = getelementptr double, ptr %3, i64 %1013
  store double %1012, ptr %1014, align 8, !tbaa !10
  %1015 = load double, ptr @_QMbt_dataEc1, align 8, !tbaa !44
  %1016 = load double, ptr %997, align 8, !tbaa !36
  %1017 = fmul contract double %1015, %1016
  %1018 = fmul contract double %898, %1017
  %1019 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %1020 = load double, ptr %gep2301, align 8, !tbaa !40
  %1021 = load double, ptr %915, align 8, !tbaa !36
  %1022 = fmul contract double %1021, %1021
  %1023 = fmul contract double %899, %1022
  %1024 = fadd contract double %1020, %1023
  %1025 = fmul contract double %1019, %1024
  %1026 = fsub contract double %1018, %1025
  %1027 = add nuw nsw i64 %901, 14
  %1028 = getelementptr double, ptr %3, i64 %1027
  store double %1026, ptr %1028, align 8, !tbaa !10
  %1029 = load double, ptr @_QMbt_dataEc2, align 8, !tbaa !38
  %1030 = load double, ptr %915, align 8, !tbaa !36
  %1031 = load double, ptr %961, align 8, !tbaa !36
  %1032 = fmul contract double %1030, %1031
  %1033 = fneg contract double %1029
  %1034 = fmul contract double %1032, %1033
  %1035 = fmul contract double %899, %1034
  %1036 = add nuw nsw i64 %901, 19
  %1037 = getelementptr double, ptr %3, i64 %1036
  store double %1035, ptr %1037, align 8, !tbaa !10
  %1038 = load double, ptr @_QMbt_dataEc1, align 8, !tbaa !44
  %1039 = load double, ptr %915, align 8, !tbaa !36
  %1040 = fmul contract double %1038, %1039
  %1041 = fmul contract double %898, %1040
  %1042 = add nuw nsw i64 %901, 24
  %1043 = getelementptr double, ptr %3, i64 %1042
  store double %1041, ptr %1043, align 8, !tbaa !10
  %1044 = getelementptr double, ptr %4, i64 %901
  store double 0.000000e+00, ptr %1044, align 8, !tbaa !10
  %1045 = getelementptr double, ptr %4, i64 %903
  store double 0.000000e+00, ptr %1045, align 8, !tbaa !10
  %1046 = getelementptr double, ptr %4, i64 %905
  store double 0.000000e+00, ptr %1046, align 8, !tbaa !10
  %1047 = getelementptr double, ptr %4, i64 %907
  store double 0.000000e+00, ptr %1047, align 8, !tbaa !10
  %1048 = getelementptr double, ptr %4, i64 %909
  store double 0.000000e+00, ptr %1048, align 8, !tbaa !10
  %1049 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1050 = load double, ptr %913, align 8, !tbaa !36
  %1051 = fneg contract double %1049
  %1052 = fmul contract double %899, %1051
  %1053 = fmul contract double %1052, %1050
  %1054 = getelementptr double, ptr %4, i64 %920
  store double %1053, ptr %1054, align 8, !tbaa !10
  %1055 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1056 = fmul contract double %898, %1055
  %1057 = getelementptr double, ptr %4, i64 %924
  store double %1056, ptr %1057, align 8, !tbaa !10
  %1058 = getelementptr double, ptr %4, i64 %928
  store double 0.000000e+00, ptr %1058, align 8, !tbaa !10
  %1059 = getelementptr double, ptr %4, i64 %930
  store double 0.000000e+00, ptr %1059, align 8, !tbaa !10
  %1060 = getelementptr double, ptr %4, i64 %932
  store double 0.000000e+00, ptr %1060, align 8, !tbaa !10
  %1061 = load double, ptr @_QMbt_dataEcon43, align 8, !tbaa !48
  %1062 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1063 = load double, ptr %915, align 8, !tbaa !36
  %1064 = fneg contract double %1061
  %1065 = fmul contract double %1062, %1064
  %1066 = fmul contract double %899, %1065
  %1067 = fmul contract double %1063, %1066
  %1068 = getelementptr double, ptr %4, i64 %944
  store double %1067, ptr %1068, align 8, !tbaa !10
  %1069 = getelementptr double, ptr %4, i64 %951
  store double 0.000000e+00, ptr %1069, align 8, !tbaa !10
  %1070 = load double, ptr @_QMbt_dataEcon43, align 8, !tbaa !48
  %1071 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1072 = fmul contract double %1070, %1071
  %1073 = fmul contract double %898, %1072
  %1074 = getelementptr double, ptr %4, i64 %958
  store double %1073, ptr %1074, align 8, !tbaa !10
  %1075 = getelementptr double, ptr %4, i64 %966
  store double 0.000000e+00, ptr %1075, align 8, !tbaa !10
  %1076 = getelementptr double, ptr %4, i64 %969
  store double 0.000000e+00, ptr %1076, align 8, !tbaa !10
  %1077 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1078 = load double, ptr %961, align 8, !tbaa !36
  %1079 = fneg contract double %1077
  %1080 = fmul contract double %899, %1079
  %1081 = fmul contract double %1080, %1078
  %1082 = getelementptr double, ptr %4, i64 %976
  store double %1081, ptr %1082, align 8, !tbaa !10
  %1083 = getelementptr double, ptr %4, i64 %978
  store double 0.000000e+00, ptr %1083, align 8, !tbaa !10
  %1084 = getelementptr double, ptr %4, i64 %982
  store double 0.000000e+00, ptr %1084, align 8, !tbaa !10
  %1085 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1086 = fmul contract double %898, %1085
  %1087 = getelementptr double, ptr %4, i64 %986
  store double %1086, ptr %1087, align 8, !tbaa !10
  %1088 = getelementptr double, ptr %4, i64 %988
  store double 0.000000e+00, ptr %1088, align 8, !tbaa !10
  %1089 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1090 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1091 = fsub contract double %1089, %1090
  %1092 = fmul contract double %900, %1091
  %1093 = load double, ptr %913, align 8, !tbaa !36
  %1094 = fmul double %1093, %1093
  %1095 = fneg contract double %1092
  %1096 = fmul contract double %1094, %1095
  %1097 = load double, ptr @_QMbt_dataEcon43, align 8, !tbaa !48
  %1098 = fmul contract double %1089, %1097
  %1099 = fsub contract double %1098, %1090
  %1100 = fmul contract double %900, %1099
  %1101 = load double, ptr %915, align 8, !tbaa !36
  %1102 = fmul double %1101, %1101
  %1103 = fmul contract double %1102, %1100
  %1104 = fsub contract double %1096, %1103
  %1105 = load double, ptr %961, align 8, !tbaa !36
  %1106 = fmul double %1105, %1105
  %1107 = fmul contract double %1092, %1106
  %1108 = fsub contract double %1104, %1107
  %1109 = fmul contract double %899, %1090
  %1110 = load double, ptr %997, align 8, !tbaa !36
  %1111 = fmul contract double %1109, %1110
  %1112 = fsub contract double %1108, %1111
  %1113 = getelementptr double, ptr %4, i64 %1004
  store double %1112, ptr %1113, align 8, !tbaa !10
  %1114 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1115 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1116 = fsub contract double %1114, %1115
  %1117 = fmul contract double %899, %1116
  %1118 = load double, ptr %913, align 8, !tbaa !36
  %1119 = fmul contract double %1118, %1117
  %1120 = getelementptr double, ptr %4, i64 %1013
  store double %1119, ptr %1120, align 8, !tbaa !10
  %1121 = load double, ptr @_QMbt_dataEcon43, align 8, !tbaa !48
  %1122 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1123 = fmul contract double %1121, %1122
  %1124 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1125 = fsub contract double %1123, %1124
  %1126 = fmul contract double %899, %1125
  %1127 = load double, ptr %915, align 8, !tbaa !36
  %1128 = fmul contract double %1127, %1126
  %1129 = getelementptr double, ptr %4, i64 %1027
  store double %1128, ptr %1129, align 8, !tbaa !10
  %1130 = load double, ptr @_QMbt_dataEc3c4, align 8, !tbaa !46
  %1131 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1132 = fsub contract double %1130, %1131
  %1133 = fmul contract double %899, %1132
  %1134 = load double, ptr %961, align 8, !tbaa !36
  %1135 = fmul contract double %1134, %1133
  %1136 = getelementptr double, ptr %4, i64 %1036
  store double %1135, ptr %1136, align 8, !tbaa !10
  %1137 = load double, ptr @_QMbt_dataEc1345, align 8, !tbaa !50
  %1138 = fmul contract double %898, %1137
  %1139 = getelementptr double, ptr %4, i64 %1042
  store double %1138, ptr %1139, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1140 = add nsw i64 %895, -1
  %1141 = icmp ugt i64 %895, 1
  br i1 %1141, label %omp.wsloop.region25, label %omp.wsloop.region26
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
!9 = !{!"Flang function root _QPy_solve"}
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
!21 = !{!"global data/_QMbt_dataEty1", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"global data/_QMbt_dataEty2", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"global data/_QMbt_dataEdy1", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"global data/_QMbt_dataEdy2", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"global data/_QMbt_dataEdy3", !6, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"global data/_QMbt_dataEdy4", !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"global data/_QMbt_dataEdy5", !6, i64 0}
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
!47 = !{!"global data/_QMbt_dataEc3c4", !6, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"global data/_QMbt_dataEcon43", !6, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"global data/_QMbt_dataEc1345", !6, i64 0}
!52 = !{!53}
!53 = !{i64 2, i64 -1, i64 -1, i1 true}
