; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX3d823ceb447841178952401c93ac0db0 = comdat any

@_QQclX3d823ceb447841178952401c93ac0db0 = linkonce constant [60 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/LU/l2norm.f90\00", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define void @l2norm_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture readnone %2, ptr nocapture readonly %3, ptr nocapture readonly %4, ptr %5, ptr %6, ptr %7, ptr %8, ptr %9, ptr %10, ptr %11) local_unnamed_addr #2 {
omp_parallel:
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded31 = alloca i64, align 8
  %12 = load i32, ptr %0, align 4, !tbaa !4
  %13 = sdiv i32 %12, 2
  %14 = shl nsw i32 %13, 1
  %15 = or disjoint i32 %14, 1
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0)
  %17 = load i32, ptr %1, align 4, !tbaa !10
  %18 = sdiv i32 %17, 2
  %19 = shl nsw i32 %18, 1
  %20 = or disjoint i32 %19, 1
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false), !tbaa !12
  %22 = zext nneg i32 %16 to i64
  %23 = zext nneg i32 %21 to i64
  %omp_global_thread_num = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %22, ptr %.reloaded, align 8
  store i64 %23, ptr %.reloaded31, align 8
  store ptr %.reloaded, ptr %structArg, align 8
  %gep_.reloaded31 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %.reloaded31, ptr %gep_.reloaded31, align 8
  %gep_ = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %5, ptr %gep_, align 8
  %gep_32 = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %8, ptr %gep_32, align 8
  %gep_33 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %9, ptr %gep_33, align 8
  %gep_34 = getelementptr inbounds i8, ptr %structArg, i64 40
  store ptr %11, ptr %gep_34, align 8
  %gep_35 = getelementptr inbounds i8, ptr %structArg, i64 48
  store ptr %6, ptr %gep_35, align 8
  %gep_36 = getelementptr inbounds i8, ptr %structArg, i64 56
  store ptr %7, ptr %gep_36, align 8
  %gep_37 = getelementptr inbounds i8, ptr %structArg, i64 64
  store ptr %10, ptr %gep_37, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @l2norm_..omp_par, ptr nonnull %structArg)
  %24 = load i32, ptr %3, align 4, !tbaa !14
  %25 = add i32 %24, -2
  %26 = sitofp i32 %25 to double
  %27 = load i32, ptr %4, align 4, !tbaa !16
  %28 = add i32 %27, -2
  %29 = sitofp i32 %28 to double
  %30 = fmul contract double %26, %29
  %31 = load i32, ptr %5, align 4, !tbaa !18
  %32 = add i32 %31, -2
  %33 = sitofp i32 %32 to double
  %34 = fmul contract double %30, %33
  %35 = load double, ptr %11, align 8, !tbaa !12
  %36 = fdiv contract double %35, %34
  %37 = call contract double @llvm.sqrt.f64(double %36)
  store double %37, ptr %11, align 8, !tbaa !12
  %gep43.1 = getelementptr i8, ptr %11, i64 8
  %38 = load double, ptr %gep43.1, align 8, !tbaa !12
  %39 = fdiv contract double %38, %34
  %40 = call contract double @llvm.sqrt.f64(double %39)
  store double %40, ptr %gep43.1, align 8, !tbaa !12
  %gep43.2 = getelementptr i8, ptr %11, i64 16
  %41 = load double, ptr %gep43.2, align 8, !tbaa !12
  %42 = fdiv contract double %41, %34
  %43 = call contract double @llvm.sqrt.f64(double %42)
  store double %43, ptr %gep43.2, align 8, !tbaa !12
  %gep43.3 = getelementptr i8, ptr %11, i64 24
  %44 = load double, ptr %gep43.3, align 8, !tbaa !12
  %45 = fdiv contract double %44, %34
  %46 = call contract double @llvm.sqrt.f64(double %45)
  store double %46, ptr %gep43.3, align 8, !tbaa !12
  %gep43.4 = getelementptr i8, ptr %11, i64 32
  %47 = load double, ptr %gep43.4, align 8, !tbaa !12
  %48 = fdiv contract double %47, %34
  %49 = call contract double @llvm.sqrt.f64(double %48)
  store double %49, ptr %gep43.4, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind
define internal void @l2norm_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #2 {
omp.par.entry:
  %loadgep_.reloaded = load ptr, ptr %0, align 8
  %gep_.reloaded31 = getelementptr i8, ptr %0, i64 8
  %loadgep_.reloaded31 = load ptr, ptr %gep_.reloaded31, align 8
  %gep_ = getelementptr i8, ptr %0, i64 16
  %loadgep_ = load ptr, ptr %gep_, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 24
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %gep_3 = getelementptr i8, ptr %0, i64 32
  %loadgep_4 = load ptr, ptr %gep_3, align 8
  %gep_5 = getelementptr i8, ptr %0, i64 40
  %loadgep_6 = load ptr, ptr %gep_5, align 8
  %gep_7 = getelementptr i8, ptr %0, i64 48
  %loadgep_8 = load ptr, ptr %gep_7, align 8
  %gep_9 = getelementptr i8, ptr %0, i64 56
  %loadgep_10 = load ptr, ptr %gep_9, align 8
  %gep_11 = getelementptr i8, ptr %0, i64 64
  %loadgep_12 = load ptr, ptr %gep_11, align 8
  %1 = load i64, ptr %loadgep_.reloaded, align 8
  %2 = load i64, ptr %loadgep_.reloaded31, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %red.array = alloca [1 x ptr], align 8
  %3 = load i32, ptr %loadgep_, align 4, !tbaa !18
  %4 = add i32 %3, -1
  %5 = load i32, ptr %loadgep_2, align 4, !tbaa !20
  %6 = load i32, ptr %loadgep_4, align 4, !tbaa !22
  %7 = alloca { ptr, i64, i32, i8, i8, i8, i8 }, align 8
  %8 = alloca { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, align 8
  %9 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40)
  %10 = alloca double, align 8
  store double 0.000000e+00, ptr %10, align 8
  store ptr %10, ptr %7, align 8
  %.fca.1.gep135 = getelementptr inbounds i8, ptr %7, i64 8
  store i64 8, ptr %.fca.1.gep135, align 8
  %.fca.2.gep137 = getelementptr inbounds i8, ptr %7, i64 16
  store i32 20180515, ptr %.fca.2.gep137, align 8
  %.fca.3.gep139 = getelementptr inbounds i8, ptr %7, i64 20
  store i8 0, ptr %.fca.3.gep139, align 4
  %.fca.4.gep141 = getelementptr inbounds i8, ptr %7, i64 21
  store i8 28, ptr %.fca.4.gep141, align 1
  %.fca.5.gep143 = getelementptr inbounds i8, ptr %7, i64 22
  store i8 0, ptr %.fca.5.gep143, align 2
  %.fca.6.gep145 = getelementptr inbounds i8, ptr %7, i64 23
  store i8 0, ptr %.fca.6.gep145, align 1
  store ptr %9, ptr %8, align 8
  %.fca.1.gep26 = getelementptr inbounds i8, ptr %8, i64 8
  store i64 8, ptr %.fca.1.gep26, align 8
  %.fca.2.gep28 = getelementptr inbounds i8, ptr %8, i64 16
  store i32 20180515, ptr %.fca.2.gep28, align 8
  %.fca.3.gep30 = getelementptr inbounds i8, ptr %8, i64 20
  store i8 1, ptr %.fca.3.gep30, align 4
  %.fca.4.gep32 = getelementptr inbounds i8, ptr %8, i64 21
  store i8 28, ptr %.fca.4.gep32, align 1
  %.fca.5.gep34 = getelementptr inbounds i8, ptr %8, i64 22
  store i8 0, ptr %.fca.5.gep34, align 2
  %.fca.6.gep36 = getelementptr inbounds i8, ptr %8, i64 23
  store i8 0, ptr %.fca.6.gep36, align 1
  %.fca.7.0.0.gep38 = getelementptr inbounds i8, ptr %8, i64 24
  store i64 1, ptr %.fca.7.0.0.gep38, align 8
  %.fca.7.0.1.gep40 = getelementptr inbounds i8, ptr %8, i64 32
  store i64 5, ptr %.fca.7.0.1.gep40, align 8
  %.fca.7.0.2.gep42 = getelementptr inbounds i8, ptr %8, i64 40
  store i64 8, ptr %.fca.7.0.2.gep42, align 8
  %11 = call {} @_FortranAAssign(ptr nonnull %8, ptr nonnull %7, ptr nonnull @_QQclX3d823ceb447841178952401c93ac0db0, i32 41) #3
  %12 = alloca { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, align 8
  store ptr %9, ptr %12, align 8
  %.fca.1.gep = getelementptr inbounds i8, ptr %12, i64 8
  store i64 8, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds i8, ptr %12, i64 16
  store i32 20180515, ptr %.fca.2.gep, align 8
  %.fca.3.gep = getelementptr inbounds i8, ptr %12, i64 20
  store i8 1, ptr %.fca.3.gep, align 4
  %.fca.4.gep = getelementptr inbounds i8, ptr %12, i64 21
  store i8 28, ptr %.fca.4.gep, align 1
  %.fca.5.gep = getelementptr inbounds i8, ptr %12, i64 22
  store i8 0, ptr %.fca.5.gep, align 2
  %.fca.6.gep = getelementptr inbounds i8, ptr %12, i64 23
  store i8 0, ptr %.fca.6.gep, align 1
  %.fca.7.0.0.gep = getelementptr inbounds i8, ptr %12, i64 24
  store i64 1, ptr %.fca.7.0.0.gep, align 8
  %.fca.7.0.1.gep = getelementptr inbounds i8, ptr %12, i64 32
  store i64 5, ptr %.fca.7.0.1.gep, align 8
  %.fca.7.0.2.gep = getelementptr inbounds i8, ptr %12, i64 40
  store i64 8, ptr %.fca.7.0.2.gep, align 8
  %13 = alloca ptr, align 8
  store ptr %12, ptr %13, align 8
  %14 = icmp slt i32 %4, 2
  %15 = add i32 %3, -2
  %omp_loop.tripcount = select i1 %14, i32 0, i32 %15
  %16 = sub nsw i32 %6, %5
  %17 = icmp slt i32 %6, %5
  %18 = add i32 %16, 1
  %omp_loop.tripcount2 = select i1 %17, i32 0, i32 %18
  %19 = mul nuw i32 %omp_loop.tripcount2, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num27 = call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num27, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %21 = load i32, ptr %p.lowerbound, align 4
  %22 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %22, %21
  %omp_collapsed.cmp372.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp372.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %23 = load i32, ptr %loadgep_8, align 4, !tbaa !24
  %24 = sext i32 %23 to i64
  %25 = load i32, ptr %loadgep_10, align 4, !tbaa !26
  %26 = sext i32 %25 to i64
  %reass.sub374 = sub nsw i64 %26, %24
  %27 = add nsw i64 %reass.sub374, 1
  %28 = icmp sgt i64 %reass.sub374, -1
  %29 = mul nsw i64 %1, 5
  %30 = mul nsw i64 %29, %2
  br i1 %28, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %.fca.7.0.2.load = load i64, ptr %.fca.7.0.2.gep, align 8
  %.fca.7.0.0.load = load i64, ptr %.fca.7.0.0.gep, align 8
  %.fca.0.load = load ptr, ptr %12, align 8
  %31 = sub nsw i64 1, %.fca.7.0.0.load
  %32 = mul nsw i64 %31, %.fca.7.0.2.load
  %33 = getelementptr i8, ptr %.fca.0.load, i64 %32
  %34 = sub nsw i64 2, %.fca.7.0.0.load
  %35 = mul nsw i64 %34, %.fca.7.0.2.load
  %36 = getelementptr i8, ptr %.fca.0.load, i64 %35
  %37 = sub nsw i64 3, %.fca.7.0.0.load
  %38 = mul nsw i64 %37, %.fca.7.0.2.load
  %39 = getelementptr i8, ptr %.fca.0.load, i64 %38
  %40 = sub nsw i64 4, %.fca.7.0.0.load
  %41 = mul nsw i64 %40, %.fca.7.0.2.load
  %42 = getelementptr i8, ptr %.fca.0.load, i64 %41
  %43 = sub nsw i64 5, %.fca.7.0.0.load
  %44 = mul nsw i64 %43, %.fca.7.0.2.load
  %45 = getelementptr i8, ptr %.fca.0.load, i64 %44
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region14.omp.wsloop.region19_crit_edge.us
  %omp_collapsed.iv373.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region14.omp.wsloop.region19_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %46 = add i32 %omp_collapsed.iv373.us, %21
  %.frozen = freeze i32 %46
  %.frozen378 = freeze i32 %18
  %47 = udiv i32 %.frozen, %.frozen378
  %48 = mul i32 %47, %.frozen378
  %.decomposed = sub i32 %.frozen, %48
  %49 = add i32 %47, 2
  %50 = add i32 %.decomposed, %5
  %51 = sext i32 %50 to i64
  %52 = sext i32 %49 to i64
  %53 = add nsw i64 %51, -1
  %54 = mul nsw i64 %53, %29
  %55 = add nsw i64 %52, -1
  %56 = mul nsw i64 %30, %55
  %57 = getelementptr double, ptr %loadgep_12, i64 %56
  %58 = getelementptr double, ptr %57, i64 %54
  %invariant.gep370.us = getelementptr i8, ptr %58, i64 -48
  br label %omp.wsloop.region16.preheader.us

omp.wsloop.region16.preheader.us:                 ; preds = %omp_collapsed.body.us, %omp.wsloop.region16.preheader.us
  %59 = phi i64 [ %27, %omp_collapsed.body.us ], [ %84, %omp.wsloop.region16.preheader.us ]
  %60 = phi i32 [ %23, %omp_collapsed.body.us ], [ %83, %omp.wsloop.region16.preheader.us ]
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, 5
  %gep371.us = getelementptr double, ptr %invariant.gep370.us, i64 %62
  %63 = load double, ptr %33, align 8, !tbaa !12
  %gep.us = getelementptr i8, ptr %gep371.us, i64 8
  %64 = load double, ptr %gep.us, align 8, !tbaa !28
  %65 = fmul contract double %64, %64
  %66 = fadd contract double %63, %65
  store double %66, ptr %33, align 8, !tbaa !12
  %67 = load double, ptr %36, align 8, !tbaa !12
  %gep.us.1 = getelementptr i8, ptr %gep371.us, i64 16
  %68 = load double, ptr %gep.us.1, align 8, !tbaa !28
  %69 = fmul contract double %68, %68
  %70 = fadd contract double %67, %69
  store double %70, ptr %36, align 8, !tbaa !12
  %71 = load double, ptr %39, align 8, !tbaa !12
  %gep.us.2 = getelementptr i8, ptr %gep371.us, i64 24
  %72 = load double, ptr %gep.us.2, align 8, !tbaa !28
  %73 = fmul contract double %72, %72
  %74 = fadd contract double %71, %73
  store double %74, ptr %39, align 8, !tbaa !12
  %75 = load double, ptr %42, align 8, !tbaa !12
  %gep.us.3 = getelementptr i8, ptr %gep371.us, i64 32
  %76 = load double, ptr %gep.us.3, align 8, !tbaa !28
  %77 = fmul contract double %76, %76
  %78 = fadd contract double %75, %77
  store double %78, ptr %42, align 8, !tbaa !12
  %79 = load double, ptr %45, align 8, !tbaa !12
  %gep.us.4 = getelementptr i8, ptr %gep371.us, i64 40
  %80 = load double, ptr %gep.us.4, align 8, !tbaa !28
  %81 = fmul contract double %80, %80
  %82 = fadd contract double %79, %81
  store double %82, ptr %45, align 8, !tbaa !12
  %83 = add i32 %60, 1
  %84 = add nsw i64 %59, -1
  %85 = icmp sgt i64 %59, 1
  br i1 %85, label %omp.wsloop.region16.preheader.us, label %omp.wsloop.region14.omp.wsloop.region19_crit_edge.us

omp.wsloop.region14.omp.wsloop.region19_crit_edge.us: ; preds = %omp.wsloop.region16.preheader.us
  %omp_collapsed.next.us = add nuw i32 %omp_collapsed.iv373.us, 1
  %exitcond.not = icmp eq i32 %omp_collapsed.iv373.us, %reass.sub
  br i1 %exitcond.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

omp_collapsed.exit:                               ; preds = %omp.wsloop.region14.omp.wsloop.region19_crit_edge.us, %omp_collapsed.body.lr.ph, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num27)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num27)
  store ptr %13, ptr %red.array, align 8
  %reduce = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num27, i32 1, i64 8, ptr nonnull %red.array, ptr nonnull @.omp.reduction.func, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce, 1
  br i1 %cond, label %reduce.switch.nonatomic, label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_collapsed.exit
  %red.private.value.0 = load ptr, ptr %13, align 8
  %.unpack = load ptr, ptr %red.private.value.0, align 8
  %.unpack305.unpack.elt309 = getelementptr inbounds i8, ptr %red.private.value.0, i64 40
  %.unpack305.unpack.unpack310 = load i64, ptr %.unpack305.unpack.elt309, align 8
  %86 = load double, ptr %loadgep_6, align 8
  %87 = load double, ptr %.unpack, align 8
  %88 = fadd contract double %86, %87
  store double %88, ptr %loadgep_6, align 8
  %89 = getelementptr i8, ptr %loadgep_6, i64 8
  %90 = getelementptr i8, ptr %.unpack, i64 %.unpack305.unpack.unpack310
  %91 = load double, ptr %89, align 8
  %92 = load double, ptr %90, align 8
  %93 = fadd contract double %91, %92
  store double %93, ptr %89, align 8
  %94 = getelementptr i8, ptr %loadgep_6, i64 16
  %95 = shl nsw i64 %.unpack305.unpack.unpack310, 1
  %96 = getelementptr i8, ptr %.unpack, i64 %95
  %97 = load double, ptr %94, align 8
  %98 = load double, ptr %96, align 8
  %99 = fadd contract double %97, %98
  store double %99, ptr %94, align 8
  %100 = getelementptr i8, ptr %loadgep_6, i64 24
  %101 = mul nsw i64 %.unpack305.unpack.unpack310, 3
  %102 = getelementptr i8, ptr %.unpack, i64 %101
  %103 = load double, ptr %100, align 8
  %104 = load double, ptr %102, align 8
  %105 = fadd contract double %103, %104
  store double %105, ptr %100, align 8
  %106 = getelementptr i8, ptr %loadgep_6, i64 32
  %107 = shl nsw i64 %.unpack305.unpack.unpack310, 2
  %108 = getelementptr i8, ptr %.unpack, i64 %107
  %109 = load double, ptr %106, align 8
  %110 = load double, ptr %108, align 8
  %111 = fadd contract double %109, %110
  store double %111, ptr %106, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num27, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %omp_collapsed.exit, %reduce.switch.nonatomic
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num27)
  %112 = load ptr, ptr %13, align 8
  %.unpack330 = load ptr, ptr %112, align 8
  %.not = icmp eq ptr %.unpack330, null
  br i1 %.not, label %omp.par.outlined.exit.exitStub, label %omp.reduction.cleanup29

omp.reduction.cleanup29:                          ; preds = %reduce.finalize
  call void @free(ptr nonnull %.unpack330)
  br label %omp.par.outlined.exit.exitStub

omp.par.outlined.exit.exitStub:                   ; preds = %omp.reduction.cleanup29, %reduce.finalize
  ret void
}

declare {} @_FortranAAssign(ptr, ptr, ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func(ptr nocapture readonly %0, ptr nocapture readonly %1) #5 {
omp.reduction.nonatomic.body:
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = load ptr, ptr %4, align 8
  %.unpack = load ptr, ptr %3, align 8
  %.elt36 = getelementptr inbounds i8, ptr %3, i64 24
  %.unpack37.unpack.unpack = load i64, ptr %.elt36, align 8
  %.unpack37.unpack.elt39 = getelementptr inbounds i8, ptr %3, i64 32
  %.unpack37.unpack.unpack40 = load i64, ptr %.unpack37.unpack.elt39, align 8
  %.unpack37.unpack.elt41 = getelementptr inbounds i8, ptr %3, i64 40
  %.unpack37.unpack.unpack42 = load i64, ptr %.unpack37.unpack.elt41, align 8
  %.unpack44 = load ptr, ptr %5, align 8
  %.unpack58.unpack.elt62 = getelementptr inbounds i8, ptr %5, i64 40
  %.unpack58.unpack.unpack63 = load i64, ptr %.unpack58.unpack.elt62, align 8
  %6 = icmp sgt i64 %.unpack37.unpack.unpack40, 0
  br i1 %6, label %omp.reduction.nonatomic.body2, label %omp.region.cont

omp.reduction.nonatomic.body2:                    ; preds = %omp.reduction.nonatomic.body, %omp.reduction.nonatomic.body2
  %7 = phi i64 [ %16, %omp.reduction.nonatomic.body2 ], [ 1, %omp.reduction.nonatomic.body ]
  %8 = sub nsw i64 %7, %.unpack37.unpack.unpack
  %9 = mul nsw i64 %8, %.unpack37.unpack.unpack42
  %10 = getelementptr i8, ptr %.unpack, i64 %9
  %11 = mul nsw i64 %8, %.unpack58.unpack.unpack63
  %12 = getelementptr i8, ptr %.unpack44, i64 %11
  %13 = load double, ptr %10, align 8
  %14 = load double, ptr %12, align 8
  %15 = fadd contract double %13, %14
  store double %15, ptr %10, align 8
  %16 = add nuw i64 %7, 1
  %exitcond.not = icmp eq i64 %7, %.unpack37.unpack.unpack40
  br i1 %exitcond.not, label %omp.region.cont, label %omp.reduction.nonatomic.body2

omp.region.cont:                                  ; preds = %omp.reduction.nonatomic.body2, %omp.reduction.nonatomic.body
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(ptr, i32, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nounwind
declare !callback !30 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"dummy arg data/_QFl2normEldx", !6, i64 0}
!6 = !{!"dummy arg data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPl2norm"}
!10 = !{!11, !11, i64 0}
!11 = !{!"dummy arg data/_QFl2normEldy", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"dummy arg data/_QFl2normEsum", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"dummy arg data/_QFl2normEnx0", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"dummy arg data/_QFl2normEny0", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"dummy arg data/_QFl2normEnz0", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"dummy arg data/_QFl2normEjst", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"dummy arg data/_QFl2normEjend", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"dummy arg data/_QFl2normEist", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"dummy arg data/_QFl2normEiend", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"dummy arg data/_QFl2normEv", !6, i64 0}
!30 = !{!31}
!31 = !{i64 2, i64 -1, i64 -1, i1 true}
