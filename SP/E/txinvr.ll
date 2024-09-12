; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMsp_dataEbt = external local_unnamed_addr global double
@_QMsp_dataEbuf = external global [5 x [1020 x double]]
@_QMsp_dataEc2 = external local_unnamed_addr global double
@_QMsp_dataEcuf = external global [1020 x double]
@_QMsp_dataEnx2 = external local_unnamed_addr global i32
@_QMsp_dataEny2 = external local_unnamed_addr global i32
@_QMsp_dataEnz2 = external local_unnamed_addr global i32
@_QMsp_dataEq = external global [1020 x double]
@_QMsp_dataEqs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMsp_dataErho_i = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMsp_dataErhs = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QMsp_dataEspeed = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }
@_QMsp_dataEtimeron = external local_unnamed_addr global i32
@_QMsp_dataEue = external global [5 x [1020 x double]]
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

define void @txinvr_() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEbuf, i64 40800, ptr nonnull @_QMsp_dataEbuf.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEcuf, i64 8160, ptr nonnull @_QMsp_dataEcuf.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEq, i64 8160, ptr nonnull @_QMsp_dataEq.cache)
  %6 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMsp_dataEue, i64 40800, ptr nonnull @_QMsp_dataEue.cache)
  %7 = load i32, ptr @_QMsp_dataEtimeron, align 4, !tbaa !4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %omp_parallel, label %8

8:                                                ; preds = %0
  store i32 11, ptr %2, align 4, !tbaa !10
  call void @timer_start_(ptr nonnull %2)
  br label %omp_parallel

omp_parallel:                                     ; preds = %8, %0
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @txinvr_..omp_par)
  %9 = load i32, ptr @_QMsp_dataEtimeron, align 4, !tbaa !4
  %.not23 = icmp eq i32 %9, 0
  br i1 %.not23, label %11, label %10

10:                                               ; preds = %omp_parallel
  store i32 11, ptr %1, align 4, !tbaa !10
  call void @timer_stop_(ptr nonnull %1)
  br label %11

11:                                               ; preds = %10, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @txinvr_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr) #1 {
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
  %omp_collapsed.cmp860.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp860.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %6 = load i32, ptr @_QMsp_dataEnx2, align 4, !tbaa !15
  %7 = icmp sgt i32 %6, 0
  %.unpack = load ptr, ptr @_QMsp_dataErho_i, align 8
  %.unpack619.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataErho_i, i64 0, i32 7), align 8
  %.unpack619.unpack.unpack623 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataErho_i, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack619.unpack620.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataErho_i, i64 0, i32 7, i64 1), align 8
  %.unpack619.unpack620.unpack626 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataErho_i, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack619.unpack621.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataErho_i, i64 0, i32 7, i64 2), align 8
  %8 = mul nsw i64 %.unpack619.unpack620.unpack626, %.unpack619.unpack.unpack623
  %.unpack632 = load ptr, ptr @_QMsp_dataEus, align 8
  %.unpack639.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7), align 8
  %.unpack639.unpack.unpack643 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack639.unpack640.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7, i64 1), align 8
  %.unpack639.unpack640.unpack646 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack639.unpack641.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEus, i64 0, i32 7, i64 2), align 8
  %9 = mul nsw i64 %.unpack639.unpack640.unpack646, %.unpack639.unpack.unpack643
  %.unpack652 = load ptr, ptr @_QMsp_dataEvs, align 8
  %.unpack659.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7), align 8
  %.unpack659.unpack.unpack663 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack659.unpack660.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7, i64 1), align 8
  %.unpack659.unpack660.unpack666 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack659.unpack661.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEvs, i64 0, i32 7, i64 2), align 8
  %10 = mul nsw i64 %.unpack659.unpack660.unpack666, %.unpack659.unpack.unpack663
  %.unpack672 = load ptr, ptr @_QMsp_dataEws, align 8
  %.unpack679.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7), align 8
  %.unpack679.unpack.unpack683 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack679.unpack680.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7, i64 1), align 8
  %.unpack679.unpack680.unpack686 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack679.unpack681.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEws, i64 0, i32 7, i64 2), align 8
  %11 = mul nsw i64 %.unpack679.unpack680.unpack686, %.unpack679.unpack.unpack683
  %.unpack692 = load ptr, ptr @_QMsp_dataEspeed, align 8
  %.unpack699.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7), align 8
  %.unpack699.unpack.unpack703 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack699.unpack700.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7, i64 1), align 8
  %.unpack699.unpack700.unpack706 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack699.unpack701.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEspeed, i64 0, i32 7, i64 2), align 8
  %12 = mul nsw i64 %.unpack699.unpack700.unpack706, %.unpack699.unpack.unpack703
  %.unpack712 = load ptr, ptr @_QMsp_dataErhs, align 8
  %.unpack719.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7), align 8
  %.unpack719.unpack.unpack724 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack719.unpack720.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 1), align 8
  %.unpack719.unpack720.unpack727 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack719.unpack721.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 2), align 8
  %.unpack719.unpack721.unpack730 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 2, i64 1), align 8
  %.unpack719.unpack722.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMsp_dataErhs, i64 0, i32 7, i64 3), align 8
  %13 = mul nsw i64 %.unpack719.unpack720.unpack727, %.unpack719.unpack.unpack724
  %14 = mul nsw i64 %.unpack719.unpack721.unpack730, %13
  %15 = load double, ptr @_QMsp_dataEc2, align 8
  %.unpack740 = load ptr, ptr @_QMsp_dataEqs, align 8
  %.unpack747.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7), align 8
  %.unpack747.unpack.unpack751 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7, i64 0, i64 1), align 8
  %.unpack747.unpack748.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7, i64 1), align 8
  %.unpack747.unpack748.unpack754 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7, i64 1, i64 1), align 8
  %.unpack747.unpack749.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] }, ptr @_QMsp_dataEqs, i64 0, i32 7, i64 2), align 8
  %16 = mul nsw i64 %.unpack747.unpack748.unpack754, %.unpack747.unpack.unpack751
  %17 = load double, ptr @_QMsp_dataEbt, align 8
  br i1 %7, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %18 = zext nneg i32 %6 to i64
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us
  %omp_collapsed.iv861.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %19 = add i32 %omp_collapsed.iv861.us, %4
  %.frozen = freeze i32 %19
  %omp_loop.tripcount6.frozen = freeze i32 %omp_loop.tripcount6
  %20 = udiv i32 %.frozen, %omp_loop.tripcount6.frozen
  %21 = mul i32 %20, %omp_loop.tripcount6.frozen
  %.decomposed = sub i32 %.frozen, %21
  %22 = add i32 %20, 1
  %23 = add nuw nsw i32 %.decomposed, 1
  %24 = zext nneg i32 %23 to i64
  %25 = sext i32 %22 to i64
  %26 = sub nsw i64 %24, %.unpack619.unpack620.unpack
  %27 = mul nsw i64 %26, %.unpack619.unpack.unpack623
  %28 = sub nsw i64 %25, %.unpack619.unpack621.unpack
  %29 = mul nsw i64 %8, %28
  %30 = getelementptr double, ptr %.unpack, i64 %29
  %31 = getelementptr double, ptr %30, i64 %27
  %32 = sub nsw i64 %24, %.unpack639.unpack640.unpack
  %33 = mul nsw i64 %32, %.unpack639.unpack.unpack643
  %34 = sub nsw i64 %25, %.unpack639.unpack641.unpack
  %35 = mul nsw i64 %9, %34
  %36 = getelementptr double, ptr %.unpack632, i64 %35
  %37 = getelementptr double, ptr %36, i64 %33
  %38 = sub nsw i64 %24, %.unpack659.unpack660.unpack
  %39 = mul nsw i64 %38, %.unpack659.unpack.unpack663
  %40 = sub nsw i64 %25, %.unpack659.unpack661.unpack
  %41 = mul nsw i64 %10, %40
  %42 = getelementptr double, ptr %.unpack652, i64 %41
  %43 = getelementptr double, ptr %42, i64 %39
  %44 = sub nsw i64 %24, %.unpack679.unpack680.unpack
  %45 = mul nsw i64 %44, %.unpack679.unpack.unpack683
  %46 = sub nsw i64 %25, %.unpack679.unpack681.unpack
  %47 = mul nsw i64 %11, %46
  %48 = getelementptr double, ptr %.unpack672, i64 %47
  %49 = getelementptr double, ptr %48, i64 %45
  %50 = sub nsw i64 %24, %.unpack699.unpack700.unpack
  %51 = mul nsw i64 %50, %.unpack699.unpack.unpack703
  %52 = sub nsw i64 %25, %.unpack699.unpack701.unpack
  %53 = mul nsw i64 %12, %52
  %54 = getelementptr double, ptr %.unpack692, i64 %53
  %55 = getelementptr double, ptr %54, i64 %51
  %56 = sub nsw i64 %24, %.unpack719.unpack721.unpack
  %57 = mul nsw i64 %56, %13
  %58 = sub nsw i64 %25, %.unpack719.unpack722.unpack
  %59 = mul nsw i64 %14, %58
  %60 = getelementptr double, ptr %.unpack712, i64 %59
  %61 = getelementptr double, ptr %60, i64 %57
  %62 = sub nsw i64 %24, %.unpack747.unpack748.unpack
  %63 = mul nsw i64 %62, %.unpack747.unpack.unpack751
  %64 = sub nsw i64 %25, %.unpack747.unpack749.unpack
  %65 = mul nsw i64 %16, %64
  %66 = getelementptr double, ptr %.unpack740, i64 %65
  %67 = getelementptr double, ptr %66, i64 %63
  br label %omp.wsloop.region19.us

omp.wsloop.region19.us:                           ; preds = %omp_collapsed.body.us, %omp.wsloop.region19.us
  %indvars.iv = phi i64 [ 1, %omp_collapsed.body.us ], [ %indvars.iv.next, %omp.wsloop.region19.us ]
  %68 = sub nsw i64 %indvars.iv, %.unpack619.unpack.unpack
  %69 = getelementptr double, ptr %31, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !17
  %71 = sub nsw i64 %indvars.iv, %.unpack639.unpack.unpack
  %72 = getelementptr double, ptr %37, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !20
  %74 = sub nsw i64 %indvars.iv, %.unpack659.unpack.unpack
  %75 = getelementptr double, ptr %43, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !22
  %77 = sub nsw i64 %indvars.iv, %.unpack679.unpack.unpack
  %78 = getelementptr double, ptr %49, i64 %77
  %79 = load double, ptr %78, align 8, !tbaa !24
  %80 = sub nsw i64 %indvars.iv, %.unpack699.unpack.unpack
  %81 = getelementptr double, ptr %55, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !26
  %83 = fmul contract double %82, %82
  %84 = sub nsw i64 %indvars.iv, %.unpack719.unpack720.unpack
  %85 = mul nsw i64 %84, %.unpack719.unpack.unpack724
  %reass.sub.us = sub i64 %85, %.unpack719.unpack.unpack
  %86 = getelementptr double, ptr %61, i64 %reass.sub.us
  %87 = getelementptr i8, ptr %86, i64 8
  %88 = load double, ptr %87, align 8, !tbaa !28
  %89 = getelementptr i8, ptr %86, i64 16
  %90 = load double, ptr %89, align 8, !tbaa !28
  %91 = getelementptr i8, ptr %86, i64 24
  %92 = load double, ptr %91, align 8, !tbaa !28
  %93 = getelementptr i8, ptr %86, i64 32
  %94 = load double, ptr %93, align 8, !tbaa !28
  %95 = getelementptr i8, ptr %86, i64 40
  %96 = load double, ptr %95, align 8, !tbaa !28
  %97 = fdiv contract double %15, %83
  %98 = sub nsw i64 %indvars.iv, %.unpack747.unpack.unpack
  %99 = getelementptr double, ptr %67, i64 %98
  %100 = load double, ptr %99, align 8, !tbaa !30
  %101 = fmul contract double %88, %100
  %102 = fmul contract double %73, %90
  %103 = fsub contract double %101, %102
  %104 = fmul contract double %76, %92
  %105 = fsub contract double %103, %104
  %106 = fmul contract double %79, %94
  %107 = fsub contract double %105, %106
  %108 = fadd contract double %96, %107
  %109 = fmul contract double %97, %108
  %110 = fmul contract double %70, %17
  %111 = fmul contract double %73, %88
  %112 = fsub contract double %111, %90
  %113 = fmul contract double %112, %110
  %114 = fmul contract double %82, %110
  %115 = fmul contract double %114, %109
  %116 = fsub contract double %88, %109
  store double %116, ptr %87, align 8, !tbaa !28
  %117 = fmul contract double %79, %88
  %118 = fsub contract double %117, %94
  %119 = fneg contract double %70
  %120 = fmul contract double %118, %119
  store double %120, ptr %89, align 8, !tbaa !28
  %121 = fmul contract double %76, %88
  %122 = fsub contract double %121, %92
  %123 = fmul contract double %70, %122
  store double %123, ptr %91, align 8, !tbaa !28
  %124 = fsub contract double %115, %113
  store double %124, ptr %93, align 8, !tbaa !28
  %125 = fadd contract double %113, %115
  store double %125, ptr %95, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %18
  br i1 %exitcond.not, label %omp.wsloop.region18.omp.wsloop.region20_crit_edge.us, label %omp.wsloop.region19.us

omp.wsloop.region18.omp.wsloop.region20_crit_edge.us: ; preds = %omp.wsloop.region19.us
  %omp_collapsed.next.us = add nuw i32 %omp_collapsed.iv861.us, 1
  %exitcond864.not = icmp eq i32 %omp_collapsed.iv861.us, %reass.sub
  br i1 %exitcond864.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

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
!9 = !{!"Flang function root _QPtxinvr"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMsp_dataEnz2", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMsp_dataEny2", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMsp_dataEnx2", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"direct data/_QMsp_dataErho_i", !19, i64 0}
!19 = !{!"direct data", !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"direct data/_QMsp_dataEus", !19, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"direct data/_QMsp_dataEvs", !19, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"direct data/_QMsp_dataEws", !19, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"direct data/_QMsp_dataEspeed", !19, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"direct data/_QMsp_dataErhs", !19, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"direct data/_QMsp_dataEqs", !19, i64 0}
!32 = !{!33}
!33 = !{i64 2, i64 -1, i64 -1, i1 true}
