; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclXc11ba7ab86a12932c0def972ff6b1684 = comdat any

@_QMlu_dataEa = external global [64 x [5 x [5 x double]]]
@_QMlu_dataEb = external global [64 x [5 x [5 x double]]]
@_QMlu_dataEc = external global [64 x [5 x [5 x double]]]
@_QMlu_dataEd = external global [64 x [5 x [5 x double]]]
@_QMlu_dataEerrnm = external local_unnamed_addr global [5 x double]
@_QMlu_dataEflux = external global [64 x [5 x double]]
@_QMlu_dataEiend = external local_unnamed_addr global i32
@_QMlu_dataEist = external local_unnamed_addr global i32
@_QMlu_dataEjend = external local_unnamed_addr global i32
@_QMlu_dataEjst = external local_unnamed_addr global i32
@_QMlu_dataEnx0 = external local_unnamed_addr global i32
@_QMlu_dataEny0 = external local_unnamed_addr global i32
@_QMlu_dataEnz = external local_unnamed_addr global i32
@_QMlu_dataEnz0 = external local_unnamed_addr global i32
@_QMlu_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@_QQclXc11ba7ab86a12932c0def972ff6b1684 = linkonce constant [59 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/LU/error.f90\00", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define void @error_() local_unnamed_addr #2 {
omp_parallel:
  %omp_global_thread_num5 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %0 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEa, i64 12800, ptr nonnull @_QMlu_dataEa.cache)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEb, i64 12800, ptr nonnull @_QMlu_dataEb.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEc, i64 12800, ptr nonnull @_QMlu_dataEc.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEd, i64 12800, ptr nonnull @_QMlu_dataEd.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEflux, i64 2560, ptr nonnull @_QMlu_dataEflux.cache)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @_QMlu_dataEerrnm, i8 0, i64 40, i1 false), !tbaa !4
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @error_..omp_par)
  %5 = load i32, ptr @_QMlu_dataEnx0, align 4, !tbaa !10
  %6 = add i32 %5, -2
  %7 = sitofp i32 %6 to double
  %8 = load i32, ptr @_QMlu_dataEny0, align 4, !tbaa !12
  %9 = add i32 %8, -2
  %10 = sitofp i32 %9 to double
  %11 = fmul contract double %7, %10
  %12 = load i32, ptr @_QMlu_dataEnz0, align 4, !tbaa !14
  %13 = add i32 %12, -2
  %14 = sitofp i32 %13 to double
  %15 = fmul contract double %11, %14
  %16 = load double, ptr @_QMlu_dataEerrnm, align 8, !tbaa !4
  %17 = fdiv contract double %16, %15
  %18 = tail call contract double @llvm.sqrt.f64(double %17)
  store double %18, ptr @_QMlu_dataEerrnm, align 8, !tbaa !4
  %19 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 1), align 8, !tbaa !4
  %20 = fdiv contract double %19, %15
  %21 = tail call contract double @llvm.sqrt.f64(double %20)
  store double %21, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 1), align 8, !tbaa !4
  %22 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 2), align 8, !tbaa !4
  %23 = fdiv contract double %22, %15
  %24 = tail call contract double @llvm.sqrt.f64(double %23)
  store double %24, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 2), align 8, !tbaa !4
  %25 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 3), align 8, !tbaa !4
  %26 = fdiv contract double %25, %15
  %27 = tail call contract double @llvm.sqrt.f64(double %26)
  store double %27, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 3), align 8, !tbaa !4
  %28 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 4), align 8, !tbaa !4
  %29 = fdiv contract double %28, %15
  %30 = tail call contract double @llvm.sqrt.f64(double %29)
  store double %30, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 4), align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind
define internal void @error_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr) #2 {
omp.par.entry:
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %red.array = alloca [1 x ptr], align 8
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [5 x double], align 8
  %4 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !16
  %5 = add i32 %4, -1
  %6 = load i32, ptr @_QMlu_dataEjst, align 4, !tbaa !18
  %7 = load i32, ptr @_QMlu_dataEjend, align 4, !tbaa !20
  %8 = alloca { ptr, i64, i32, i8, i8, i8, i8 }, align 8
  %9 = alloca { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, align 8
  %10 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40)
  %11 = alloca double, align 8
  store double 0.000000e+00, ptr %11, align 8
  store ptr %11, ptr %8, align 8
  %.fca.1.gep123 = getelementptr inbounds i8, ptr %8, i64 8
  store i64 8, ptr %.fca.1.gep123, align 8
  %.fca.2.gep125 = getelementptr inbounds i8, ptr %8, i64 16
  store i32 20180515, ptr %.fca.2.gep125, align 8
  %.fca.3.gep127 = getelementptr inbounds i8, ptr %8, i64 20
  store i8 0, ptr %.fca.3.gep127, align 4
  %.fca.4.gep129 = getelementptr inbounds i8, ptr %8, i64 21
  store i8 28, ptr %.fca.4.gep129, align 1
  %.fca.5.gep131 = getelementptr inbounds i8, ptr %8, i64 22
  store i8 0, ptr %.fca.5.gep131, align 2
  %.fca.6.gep133 = getelementptr inbounds i8, ptr %8, i64 23
  store i8 0, ptr %.fca.6.gep133, align 1
  store ptr %10, ptr %9, align 8
  %.fca.1.gep14 = getelementptr inbounds i8, ptr %9, i64 8
  store i64 8, ptr %.fca.1.gep14, align 8
  %.fca.2.gep16 = getelementptr inbounds i8, ptr %9, i64 16
  store i32 20180515, ptr %.fca.2.gep16, align 8
  %.fca.3.gep18 = getelementptr inbounds i8, ptr %9, i64 20
  store i8 1, ptr %.fca.3.gep18, align 4
  %.fca.4.gep20 = getelementptr inbounds i8, ptr %9, i64 21
  store i8 28, ptr %.fca.4.gep20, align 1
  %.fca.5.gep22 = getelementptr inbounds i8, ptr %9, i64 22
  store i8 0, ptr %.fca.5.gep22, align 2
  %.fca.6.gep24 = getelementptr inbounds i8, ptr %9, i64 23
  store i8 0, ptr %.fca.6.gep24, align 1
  %.fca.7.0.0.gep26 = getelementptr inbounds i8, ptr %9, i64 24
  store i64 1, ptr %.fca.7.0.0.gep26, align 8
  %.fca.7.0.1.gep28 = getelementptr inbounds i8, ptr %9, i64 32
  store i64 5, ptr %.fca.7.0.1.gep28, align 8
  %.fca.7.0.2.gep30 = getelementptr inbounds i8, ptr %9, i64 40
  store i64 8, ptr %.fca.7.0.2.gep30, align 8
  %12 = call {} @_FortranAAssign(ptr nonnull %9, ptr nonnull %8, ptr nonnull @_QQclXc11ba7ab86a12932c0def972ff6b1684, i32 30) #3
  %13 = alloca { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, align 8
  store ptr %10, ptr %13, align 8
  %.fca.1.gep = getelementptr inbounds i8, ptr %13, i64 8
  store i64 8, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds i8, ptr %13, i64 16
  store i32 20180515, ptr %.fca.2.gep, align 8
  %.fca.3.gep = getelementptr inbounds i8, ptr %13, i64 20
  store i8 1, ptr %.fca.3.gep, align 4
  %.fca.4.gep = getelementptr inbounds i8, ptr %13, i64 21
  store i8 28, ptr %.fca.4.gep, align 1
  %.fca.5.gep = getelementptr inbounds i8, ptr %13, i64 22
  store i8 0, ptr %.fca.5.gep, align 2
  %.fca.6.gep = getelementptr inbounds i8, ptr %13, i64 23
  store i8 0, ptr %.fca.6.gep, align 1
  %.fca.7.0.0.gep = getelementptr inbounds i8, ptr %13, i64 24
  store i64 1, ptr %.fca.7.0.0.gep, align 8
  %.fca.7.0.1.gep = getelementptr inbounds i8, ptr %13, i64 32
  store i64 5, ptr %.fca.7.0.1.gep, align 8
  %.fca.7.0.2.gep = getelementptr inbounds i8, ptr %13, i64 40
  store i64 8, ptr %.fca.7.0.2.gep, align 8
  %14 = alloca ptr, align 8
  store ptr %13, ptr %14, align 8
  %15 = icmp slt i32 %5, 2
  %16 = add i32 %4, -2
  %omp_loop.tripcount = select i1 %15, i32 0, i32 %16
  %17 = sub nsw i32 %7, %6
  %18 = icmp slt i32 %7, %6
  %19 = add i32 %17, 1
  %omp_loop.tripcount7 = select i1 %18, i32 0, i32 %19
  %20 = mul nuw i32 %omp_loop.tripcount7, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num32 = call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num32, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %22 = load i32, ptr %p.lowerbound, align 4
  %23 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %23, %22
  %omp_collapsed.cmp396.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp396.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %gep.1 = getelementptr inbounds i8, ptr %3, i64 8
  %gep.2 = getelementptr inbounds i8, ptr %3, i64 16
  %gep.3 = getelementptr inbounds i8, ptr %3, i64 24
  %gep.4 = getelementptr inbounds i8, ptr %3, i64 32
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp.wsloop.region24, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num32)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num32)
  store ptr %14, ptr %red.array, align 8
  %reduce = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num32, i32 1, i64 8, ptr nonnull %red.array, ptr nonnull @.omp.reduction.func, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce, 1
  br i1 %cond, label %reduce.switch.nonatomic, label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_collapsed.exit
  %red.private.value.0 = load ptr, ptr %14, align 8
  %.unpack = load ptr, ptr %red.private.value.0, align 8
  %.unpack307.unpack.elt311 = getelementptr inbounds i8, ptr %red.private.value.0, i64 40
  %.unpack307.unpack.unpack312 = load i64, ptr %.unpack307.unpack.elt311, align 8
  %24 = load double, ptr @_QMlu_dataEerrnm, align 8
  %25 = load double, ptr %.unpack, align 8
  %26 = fadd contract double %24, %25
  store double %26, ptr @_QMlu_dataEerrnm, align 8
  %27 = getelementptr i8, ptr %.unpack, i64 %.unpack307.unpack.unpack312
  %28 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 1), align 8
  %29 = load double, ptr %27, align 8
  %30 = fadd contract double %28, %29
  store double %30, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 1), align 8
  %31 = shl nsw i64 %.unpack307.unpack.unpack312, 1
  %32 = getelementptr i8, ptr %.unpack, i64 %31
  %33 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 2), align 8
  %34 = load double, ptr %32, align 8
  %35 = fadd contract double %33, %34
  store double %35, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 2), align 8
  %36 = mul nsw i64 %.unpack307.unpack.unpack312, 3
  %37 = getelementptr i8, ptr %.unpack, i64 %36
  %38 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 3), align 8
  %39 = load double, ptr %37, align 8
  %40 = fadd contract double %38, %39
  store double %40, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 3), align 8
  %41 = shl nsw i64 %.unpack307.unpack.unpack312, 2
  %42 = getelementptr i8, ptr %.unpack, i64 %41
  %43 = load double, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 4), align 8
  %44 = load double, ptr %42, align 8
  %45 = fadd contract double %43, %44
  store double %45, ptr getelementptr inbounds ([5 x double], ptr @_QMlu_dataEerrnm, i64 0, i64 4), align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num32, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %omp_collapsed.exit, %reduce.switch.nonatomic
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num32)
  %46 = load ptr, ptr %14, align 8
  %.unpack332 = load ptr, ptr %46, align 8
  %.not = icmp eq ptr %.unpack332, null
  br i1 %.not, label %omp.par.outlined.exit.exitStub, label %omp.reduction.cleanup34

omp.reduction.cleanup34:                          ; preds = %reduce.finalize
  call void @free(ptr nonnull %.unpack332)
  br label %omp.par.outlined.exit.exitStub

omp_collapsed.body:                               ; preds = %omp_collapsed.body.lr.ph, %omp.wsloop.region24
  %omp_collapsed.iv397 = phi i32 [ 0, %omp_collapsed.body.lr.ph ], [ %omp_collapsed.next, %omp.wsloop.region24 ]
  %47 = add i32 %omp_collapsed.iv397, %22
  %.frozen = freeze i32 %47
  %.frozen406 = freeze i32 %19
  %48 = udiv i32 %.frozen, %.frozen406
  %49 = mul i32 %48, %.frozen406
  %.decomposed = sub i32 %.frozen, %49
  %50 = add i32 %48, 2
  %51 = add i32 %.decomposed, %6
  store i32 %50, ptr %1, align 4, !tbaa !22
  store i32 %51, ptr %0, align 4, !tbaa !22
  %52 = load i32, ptr @_QMlu_dataEist, align 4, !tbaa !23
  %53 = sext i32 %52 to i64
  %54 = load i32, ptr @_QMlu_dataEiend, align 4, !tbaa !25
  %55 = sext i32 %54 to i64
  %reass.sub398 = sub nsw i64 %55, %53
  %56 = icmp sgt i64 %reass.sub398, -1
  br i1 %56, label %omp.wsloop.region20.preheader, label %omp.wsloop.region24

omp.wsloop.region20.preheader:                    ; preds = %omp_collapsed.body
  %57 = add nuw nsw i64 %reass.sub398, 1
  br label %omp.wsloop.region20

omp.wsloop.region24:                              ; preds = %omp.wsloop.region20, %omp_collapsed.body
  %.lcssa = phi i32 [ %52, %omp_collapsed.body ], [ %132, %omp.wsloop.region20 ]
  store i32 %.lcssa, ptr %2, align 4, !tbaa !22
  %omp_collapsed.next = add nuw i32 %omp_collapsed.iv397, 1
  %exitcond.not = icmp eq i32 %omp_collapsed.iv397, %reass.sub
  br i1 %exitcond.not, label %omp_collapsed.exit, label %omp_collapsed.body

omp.wsloop.region20:                              ; preds = %omp.wsloop.region20.preheader, %omp.wsloop.region20
  %58 = phi i64 [ %133, %omp.wsloop.region20 ], [ %57, %omp.wsloop.region20.preheader ]
  %59 = phi i32 [ %132, %omp.wsloop.region20 ], [ %52, %omp.wsloop.region20.preheader ]
  store i32 %59, ptr %2, align 4, !tbaa !22
  call void @exact_(ptr nonnull %2, ptr nonnull %0, ptr nonnull %1, ptr nonnull %3) #3
  %.unpack371 = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !27
  %.unpack378.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !27
  %.unpack378.unpack.unpack383 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !27
  %.unpack378.unpack379.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !27
  %.unpack378.unpack379.unpack386 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !27
  %.unpack378.unpack380.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !27
  %.unpack378.unpack380.unpack389 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !27
  %.unpack378.unpack381.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !27
  %60 = load i32, ptr %2, align 4, !tbaa !22
  %61 = sext i32 %60 to i64
  %62 = load i32, ptr %0, align 4, !tbaa !22
  %63 = sext i32 %62 to i64
  %64 = load i32, ptr %1, align 4, !tbaa !22
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %61, %.unpack378.unpack379.unpack
  %67 = mul nsw i64 %66, %.unpack378.unpack.unpack383
  %68 = mul nsw i64 %.unpack378.unpack379.unpack386, %.unpack378.unpack.unpack383
  %69 = sub nsw i64 %63, %.unpack378.unpack380.unpack
  %70 = mul nsw i64 %69, %68
  %71 = mul nsw i64 %.unpack378.unpack380.unpack389, %68
  %72 = sub nsw i64 %65, %.unpack378.unpack381.unpack
  %73 = mul nsw i64 %71, %72
  %74 = getelementptr double, ptr %.unpack371, i64 %73
  %75 = getelementptr double, ptr %74, i64 %70
  %76 = getelementptr double, ptr %75, i64 %67
  %.fca.0.load = load ptr, ptr %13, align 8, !tbaa !27
  %.fca.7.0.0.load = load i64, ptr %.fca.7.0.0.gep, align 8, !tbaa !27
  %.fca.7.0.2.load = load i64, ptr %.fca.7.0.2.gep, align 8, !tbaa !27
  %77 = load double, ptr %3, align 8, !tbaa !22
  %78 = sub nsw i64 1, %.unpack378.unpack.unpack
  %79 = getelementptr double, ptr %76, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !29
  %81 = fsub contract double %77, %80
  %82 = sub nsw i64 1, %.fca.7.0.0.load
  %83 = mul nsw i64 %82, %.fca.7.0.2.load
  %84 = getelementptr i8, ptr %.fca.0.load, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !32
  %86 = fmul contract double %81, %81
  %87 = fadd contract double %86, %85
  store double %87, ptr %84, align 8, !tbaa !32
  %88 = load double, ptr %gep.1, align 8, !tbaa !22
  %89 = sub nsw i64 2, %.unpack378.unpack.unpack
  %90 = getelementptr double, ptr %76, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !29
  %92 = fsub contract double %88, %91
  %93 = sub nsw i64 2, %.fca.7.0.0.load
  %94 = mul nsw i64 %93, %.fca.7.0.2.load
  %95 = getelementptr i8, ptr %.fca.0.load, i64 %94
  %96 = load double, ptr %95, align 8, !tbaa !32
  %97 = fmul contract double %92, %92
  %98 = fadd contract double %97, %96
  store double %98, ptr %95, align 8, !tbaa !32
  %99 = load double, ptr %gep.2, align 8, !tbaa !22
  %100 = sub nsw i64 3, %.unpack378.unpack.unpack
  %101 = getelementptr double, ptr %76, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !29
  %103 = fsub contract double %99, %102
  %104 = sub nsw i64 3, %.fca.7.0.0.load
  %105 = mul nsw i64 %104, %.fca.7.0.2.load
  %106 = getelementptr i8, ptr %.fca.0.load, i64 %105
  %107 = load double, ptr %106, align 8, !tbaa !32
  %108 = fmul contract double %103, %103
  %109 = fadd contract double %108, %107
  store double %109, ptr %106, align 8, !tbaa !32
  %110 = load double, ptr %gep.3, align 8, !tbaa !22
  %111 = sub nsw i64 4, %.unpack378.unpack.unpack
  %112 = getelementptr double, ptr %76, i64 %111
  %113 = load double, ptr %112, align 8, !tbaa !29
  %114 = fsub contract double %110, %113
  %115 = sub nsw i64 4, %.fca.7.0.0.load
  %116 = mul nsw i64 %115, %.fca.7.0.2.load
  %117 = getelementptr i8, ptr %.fca.0.load, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !32
  %119 = fmul contract double %114, %114
  %120 = fadd contract double %119, %118
  store double %120, ptr %117, align 8, !tbaa !32
  %121 = load double, ptr %gep.4, align 8, !tbaa !22
  %122 = sub nsw i64 5, %.unpack378.unpack.unpack
  %123 = getelementptr double, ptr %76, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !29
  %125 = fsub contract double %121, %124
  %126 = sub nsw i64 5, %.fca.7.0.0.load
  %127 = mul nsw i64 %126, %.fca.7.0.2.load
  %128 = getelementptr i8, ptr %.fca.0.load, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !32
  %130 = fmul contract double %125, %125
  %131 = fadd contract double %130, %129
  store double %131, ptr %128, align 8, !tbaa !32
  %132 = add i32 %60, 1
  %133 = add nsw i64 %58, -1
  %134 = icmp ugt i64 %58, 1
  br i1 %134, label %omp.wsloop.region20, label %omp.wsloop.region24

omp.par.outlined.exit.exitStub:                   ; preds = %omp.reduction.cleanup34, %reduce.finalize
  ret void
}

declare void @exact_(ptr, ptr, ptr, ptr) local_unnamed_addr

declare {} @_FortranAAssign(ptr, ptr, ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #3

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
declare !callback !35 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QMlu_dataEerrnm", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPerror"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QMlu_dataEnx0", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"global data/_QMlu_dataEny0", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"global data/_QMlu_dataEnz0", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"global data/_QMlu_dataEnz", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"global data/_QMlu_dataEjst", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"global data/_QMlu_dataEjend", !6, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"global data/_QMlu_dataEist", !6, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"global data/_QMlu_dataEiend", !6, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"descriptor member", !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"direct data/_QMlu_dataEu", !31, i64 0}
!31 = !{!"direct data", !7, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"dummy arg data/_QMlu_dataEerrnm", !34, i64 0}
!34 = !{!"dummy arg data", !7, i64 0}
!35 = !{!36}
!36 = !{i64 2, i64 -1, i64 -1, i1 true}
