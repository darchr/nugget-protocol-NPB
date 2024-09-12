; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMsp_dataEbt = external local_unnamed_addr global double
@_QMsp_dataEbuf = external global [5 x [162 x double]]
@_QMsp_dataEc2iv = external local_unnamed_addr global double
@_QMsp_dataEcuf = external global [162 x double]
@_QMsp_dataEnx2 = external local_unnamed_addr global i32
@_QMsp_dataEny2 = external local_unnamed_addr global i32
@_QMsp_dataEnz2 = external local_unnamed_addr global i32
@_QMsp_dataEq = external global [162 x double]
@_QMsp_dataEqs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMsp_dataErhs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMsp_dataEspeed = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMsp_dataEtimeron = external local_unnamed_addr global i32
@_QMsp_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMsp_dataEue = external global [5 x [162 x double]]
@_QMsp_dataEus = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMsp_dataEvs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMsp_dataEws = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMsp_dataEbuf.cache = common global ptr null, align 8
@_QMsp_dataEcuf.cache = common global ptr null, align 8
@_QMsp_dataEq.cache = common global ptr null, align 8
@_QMsp_dataEue.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8

define void @tzetar_() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEbuf, i64 6480, ptr nonnull @_QMsp_dataEbuf.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEcuf, i64 1296, ptr nonnull @_QMsp_dataEcuf.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEq, i64 1296, ptr nonnull @_QMsp_dataEq.cache)
  %6 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEue, i64 6480, ptr nonnull @_QMsp_dataEue.cache)
  %7 = load i32, ptr @_QMsp_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %omp_parallel, label %8

8:                                                ; preds = %0
  store i32 14, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2)
  br label %omp_parallel

omp_parallel:                                     ; preds = %8, %0
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @tzetar_..omp_par)
  %9 = load i32, ptr @_QMsp_dataEtimeron, align 4, !tbaa !4
  %.not23 = icmp eq i32 %9, 0
  br i1 %.not23, label %11, label %10

10:                                               ; preds = %omp_parallel
  store i32 14, ptr %1, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %1)
  br label %11

11:                                               ; preds = %10, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @tzetar_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr) #1 {
omp.par.entry:
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %0 = load i32, ptr @_QMsp_dataEnz2, align 4, !tbaa !11
  %1 = load i32, ptr @_QMsp_dataEny2, align 4, !tbaa !13
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %omp_loop.tripcount6 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %2 = mul nuw i32 %omp_loop.tripcount6, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %3 = add i32 %2, -1
  store i32 %3, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num22 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num22, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %4 = load i32, ptr %p.lowerbound, align 4
  %5 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %5, %4
  %omp_collapsed.cmp870.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp870.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %6 = load i32, ptr @_QMsp_dataEnx2, align 4, !tbaa !15
  %7 = icmp sgt i32 %6, 0
  %.unpack = load ptr, ptr @_QMsp_dataEus, align 8
  %.unpack624.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7), align 8
  %.unpack624.unpack.unpack628 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack624.unpack625.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7, i64 1), align 8
  %.unpack624.unpack625.unpack631 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack624.unpack626.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7, i64 2), align 8
  %8 = mul nsw i64 %.unpack624.unpack625.unpack631, %.unpack624.unpack.unpack628
  %.unpack637 = load ptr, ptr @_QMsp_dataEvs, align 8
  %.unpack644.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7), align 8
  %.unpack644.unpack.unpack648 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack644.unpack645.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7, i64 1), align 8
  %.unpack644.unpack645.unpack651 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack644.unpack646.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7, i64 2), align 8
  %9 = mul nsw i64 %.unpack644.unpack645.unpack651, %.unpack644.unpack.unpack648
  %.unpack657 = load ptr, ptr @_QMsp_dataEws, align 8
  %.unpack664.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7), align 8
  %.unpack664.unpack.unpack668 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack664.unpack665.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7, i64 1), align 8
  %.unpack664.unpack665.unpack671 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack664.unpack666.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7, i64 2), align 8
  %10 = mul nsw i64 %.unpack664.unpack665.unpack671, %.unpack664.unpack.unpack668
  %.unpack677 = load ptr, ptr @_QMsp_dataEspeed, align 8
  %.unpack684.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7), align 8
  %.unpack684.unpack.unpack688 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack684.unpack685.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7, i64 1), align 8
  %.unpack684.unpack685.unpack691 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack684.unpack686.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7, i64 2), align 8
  %11 = mul nsw i64 %.unpack684.unpack685.unpack691, %.unpack684.unpack.unpack688
  %.unpack697 = load ptr, ptr @_QMsp_dataErhs, align 8
  %.unpack704.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7), align 8
  %.unpack704.unpack.unpack709 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack704.unpack705.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 1), align 8
  %.unpack704.unpack705.unpack712 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack704.unpack706.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 2), align 8
  %.unpack704.unpack706.unpack715 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack704.unpack707.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 3), align 8
  %12 = mul nsw i64 %.unpack704.unpack705.unpack712, %.unpack704.unpack.unpack709
  %13 = mul nsw i64 %.unpack704.unpack706.unpack715, %12
  %.unpack725 = load ptr, ptr @_QMsp_dataEu, align 8
  %.unpack732.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7), align 8
  %.unpack732.unpack.unpack737 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack732.unpack733.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 1), align 8
  %.unpack732.unpack733.unpack740 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack732.unpack734.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 2), align 8
  %.unpack732.unpack734.unpack743 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack732.unpack735.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataEu, i64 0, i32 7, i64 3), align 8
  %14 = mul nsw i64 %.unpack732.unpack733.unpack740, %.unpack732.unpack.unpack737
  %15 = mul nsw i64 %.unpack732.unpack734.unpack743, %14
  %16 = load double, ptr @_QMsp_dataEbt, align 8
  %.unpack825 = load ptr, ptr @_QMsp_dataEqs, align 8
  %.unpack832.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7), align 8
  %.unpack832.unpack.unpack836 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack832.unpack833.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7, i64 1), align 8
  %.unpack832.unpack833.unpack839 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack832.unpack834.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7, i64 2), align 8
  %17 = mul nsw i64 %.unpack832.unpack833.unpack839, %.unpack832.unpack.unpack836
  %18 = load double, ptr @_QMsp_dataEc2iv, align 8
  br i1 %7, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %19 = zext nneg i32 %6 to i64
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us
  %omp_collapsed.iv871.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %20 = add i32 %omp_collapsed.iv871.us, %4
  %.frozen = freeze i32 %20
  %omp_loop.tripcount6.frozen = freeze i32 %omp_loop.tripcount6
  %21 = udiv i32 %.frozen, %omp_loop.tripcount6.frozen
  %22 = mul i32 %21, %omp_loop.tripcount6.frozen
  %.decomposed = sub i32 %.frozen, %22
  %23 = add i32 %21, 1
  %24 = add nuw nsw i32 %.decomposed, 1
  %25 = zext nneg i32 %24 to i64
  %26 = sext i32 %23 to i64
  %27 = sub nsw i64 %25, %.unpack624.unpack625.unpack
  %28 = mul nsw i64 %27, %.unpack624.unpack.unpack628
  %29 = sub nsw i64 %26, %.unpack624.unpack626.unpack
  %30 = mul nsw i64 %8, %29
  %31 = getelementptr double, ptr %.unpack, i64 %30
  %32 = getelementptr double, ptr %31, i64 %28
  %33 = sub nsw i64 %25, %.unpack644.unpack645.unpack
  %34 = mul nsw i64 %33, %.unpack644.unpack.unpack648
  %35 = sub nsw i64 %26, %.unpack644.unpack646.unpack
  %36 = mul nsw i64 %9, %35
  %37 = getelementptr double, ptr %.unpack637, i64 %36
  %38 = getelementptr double, ptr %37, i64 %34
  %39 = sub nsw i64 %25, %.unpack664.unpack665.unpack
  %40 = mul nsw i64 %39, %.unpack664.unpack.unpack668
  %41 = sub nsw i64 %26, %.unpack664.unpack666.unpack
  %42 = mul nsw i64 %10, %41
  %43 = getelementptr double, ptr %.unpack657, i64 %42
  %44 = getelementptr double, ptr %43, i64 %40
  %45 = sub nsw i64 %25, %.unpack684.unpack685.unpack
  %46 = mul nsw i64 %45, %.unpack684.unpack.unpack688
  %47 = sub nsw i64 %26, %.unpack684.unpack686.unpack
  %48 = mul nsw i64 %11, %47
  %49 = getelementptr double, ptr %.unpack677, i64 %48
  %50 = getelementptr double, ptr %49, i64 %46
  %51 = sub nsw i64 %25, %.unpack704.unpack706.unpack
  %52 = mul nsw i64 %51, %12
  %53 = sub nsw i64 %26, %.unpack704.unpack707.unpack
  %54 = mul nsw i64 %13, %53
  %55 = getelementptr double, ptr %.unpack697, i64 %54
  %56 = getelementptr double, ptr %55, i64 %52
  %57 = sub nsw i64 %25, %.unpack732.unpack734.unpack
  %58 = mul nsw i64 %57, %14
  %59 = sub nsw i64 %26, %.unpack732.unpack735.unpack
  %60 = mul nsw i64 %15, %59
  %61 = getelementptr double, ptr %.unpack725, i64 %60
  %62 = getelementptr double, ptr %61, i64 %58
  %invariant.gep.us = getelementptr i8, ptr %62, i64 8
  %63 = sub nsw i64 %25, %.unpack832.unpack833.unpack
  %64 = mul nsw i64 %63, %.unpack832.unpack.unpack836
  %65 = sub nsw i64 %26, %.unpack832.unpack834.unpack
  %66 = mul nsw i64 %17, %65
  %67 = getelementptr double, ptr %.unpack825, i64 %66
  %68 = getelementptr double, ptr %67, i64 %64
  br label %omp.wsloop.region19.us

omp.wsloop.region19.us:                           ; preds = %omp_collapsed.body.us, %omp.wsloop.region19.us
  %indvars.iv = phi i64 [ 1, %omp_collapsed.body.us ], [ %indvars.iv.next, %omp.wsloop.region19.us ]
  %69 = sub nsw i64 %indvars.iv, %.unpack624.unpack.unpack
  %70 = getelementptr double, ptr %32, i64 %69
  %71 = load double, ptr %70, align 8, !tbaa !17
  %72 = sub nsw i64 %indvars.iv, %.unpack644.unpack.unpack
  %73 = getelementptr double, ptr %38, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !20
  %75 = sub nsw i64 %indvars.iv, %.unpack664.unpack.unpack
  %76 = getelementptr double, ptr %44, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !22
  %78 = sub nsw i64 %indvars.iv, %.unpack684.unpack.unpack
  %79 = getelementptr double, ptr %50, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !24
  %81 = fmul contract double %80, %80
  %82 = sub nsw i64 %indvars.iv, %.unpack704.unpack705.unpack
  %83 = mul nsw i64 %82, %.unpack704.unpack.unpack709
  %reass.sub.us = sub i64 %83, %.unpack704.unpack.unpack
  %84 = getelementptr double, ptr %56, i64 %reass.sub.us
  %85 = getelementptr i8, ptr %84, i64 8
  %86 = load double, ptr %85, align 8, !tbaa !26
  %87 = getelementptr i8, ptr %84, i64 16
  %88 = load double, ptr %87, align 8, !tbaa !26
  %89 = getelementptr i8, ptr %84, i64 24
  %90 = load double, ptr %89, align 8, !tbaa !26
  %91 = getelementptr i8, ptr %84, i64 32
  %92 = load double, ptr %91, align 8, !tbaa !26
  %93 = getelementptr i8, ptr %84, i64 40
  %94 = load double, ptr %93, align 8, !tbaa !26
  %95 = sub nsw i64 %indvars.iv, %.unpack732.unpack733.unpack
  %96 = mul nsw i64 %95, %.unpack732.unpack.unpack737
  %reass.sub749.us = sub i64 %96, %.unpack732.unpack.unpack
  %gep.us = getelementptr double, ptr %invariant.gep.us, i64 %reass.sub749.us
  %97 = load double, ptr %gep.us, align 8, !tbaa !28
  %98 = fmul contract double %97, %16
  %99 = fdiv contract double %98, %80
  %100 = fadd contract double %92, %94
  %101 = fmul contract double %100, %99
  %102 = fadd contract double %90, %101
  %103 = fsub contract double %92, %94
  %104 = fmul contract double %103, %98
  store double %102, ptr %85, align 8, !tbaa !26
  %105 = fmul contract double %71, %102
  %106 = fmul contract double %88, %97
  %107 = fsub contract double %105, %106
  store double %107, ptr %87, align 8, !tbaa !26
  %108 = fmul contract double %86, %97
  %109 = fmul contract double %74, %102
  %110 = fadd contract double %108, %109
  store double %110, ptr %89, align 8, !tbaa !26
  %111 = fmul contract double %77, %102
  %112 = fadd contract double %104, %111
  store double %112, ptr %91, align 8, !tbaa !26
  %113 = fmul contract double %74, %86
  %114 = fmul contract double %71, %88
  %115 = fsub contract double %113, %114
  %116 = fmul contract double %115, %97
  %117 = sub nsw i64 %indvars.iv, %.unpack832.unpack.unpack
  %118 = getelementptr double, ptr %68, i64 %117
  %119 = load double, ptr %118, align 8, !tbaa !30
  %120 = fmul contract double %102, %119
  %121 = fadd contract double %116, %120
  %122 = fmul contract double %81, %18
  %123 = fmul contract double %101, %122
  %124 = fadd contract double %121, %123
  %125 = fmul contract double %77, %104
  %126 = fadd contract double %125, %124
  store double %126, ptr %93, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %19
  br i1 %exitcond.not, label %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us, label %omp.wsloop.region19.us

omp.wsloop.region18.omp.wsloop.region20_crit_edge.us: ; preds = %omp.wsloop.region19.us
  %omp_collapsed.next.us = add nuw i32 %omp_collapsed.iv871.us, 1
  %exitcond874.not = icmp eq i32 %omp_collapsed.iv871.us, %reass.sub
  br i1 %exitcond874.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

omp_collapsed.exit:                               ; preds = %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us, %omp_collapsed.body.lr.ph, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num22)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num22)
  ret void
}

declare void @timer_start_(ptr) local_unnamed_addr

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
declare !callback !32 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #2

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
!5 = !{!"global data/_QMsp_dataEtimeron", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPtzetar"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMsp_dataEnz2", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMsp_dataEny2", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMsp_dataEnx2", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"direct data/_QMsp_dataEus", !19, i64 0}
!19 = !{!"direct data", !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"direct data/_QMsp_dataEvs", !19, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"direct data/_QMsp_dataEws", !19, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"direct data/_QMsp_dataEspeed", !19, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"direct data/_QMsp_dataErhs", !19, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"direct data/_QMsp_dataEu", !19, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"direct data/_QMsp_dataEqs", !19, i64 0}
!32 = !{!33}
!33 = !{i64 2, i64 -1, i64 -1, i1 true}
