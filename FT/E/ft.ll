; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX4654 = comdat any

$_QQclX20202020202020202020666C6F6174696E6720706F696E74 = comdat any

$_QQclX332E342E32 = comdat any

$_QQclX3132205365702032303234 = comdat any

$_QQclX286E6F6E6529 = comdat any

$_QQclX2428464329 = comdat any

$_QQclX242846464C41475329 = comdat any

$_QQclX72616E646938 = comdat any

$_QQclX85102b32e0ac3e984da09d954ace518b = comdat any

$_QQclXa33153e394b13461bf67bda86bd0fc11 = comdat any

$_QQclXc267696b5bcdf54351b18244b9f7fa43 = comdat any

$_QQclXa963f07a6dea1ec01ba1c54badeb65d0 = comdat any

$_QQclXc8c816e7d078dd1ad35ebfc1f2802448 = comdat any

$_QQclX3888eaff8ece5bfb29b8d7929fca1d13 = comdat any

$_QQclX7c1e67f93fcb28e2cdcb18010587e00c = comdat any

$_QQclX9e8d3c2d987ed8baf86b3735653b66b3 = comdat any

$_QQclX55 = comdat any

$_QQclX53 = comdat any

$_QQclX57 = comdat any

$_QQclX41 = comdat any

$_QQclX42 = comdat any

$_QQclX43 = comdat any

$_QQclX44 = comdat any

$_QQclX45 = comdat any

$_QQclX46 = comdat any

$_QQclX55a08c1285b7f0af953f78d40667effb = comdat any

$_QQclX282720526573756C7420766572696669636174696F6E206661696C65642729 = comdat any

$_QQclX636C617373203D20 = comdat any

@_QMft_dataEdebug = external local_unnamed_addr global i32
@_QMft_dataEdims = external global [3 x i32]
@_QMft_dataEfftblock = external global i32
@_QMft_dataEfftblockpad = external global i32
@_QMft_dataEniter = external global i32
@_QMft_dataEsums = external local_unnamed_addr global [26 x { double, double }]
@_QMft_dataEtimers_enabled = external global i32
@_QMft_fieldsEtwiddle = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMft_dataEu = external global [4097 x { double, double }]
@_QMft_fieldsEu0 = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMft_fieldsEu1 = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QQclX4654 = linkonce local_unnamed_addr constant [2 x i8] c"FT", comdat
@_QQclX20202020202020202020666C6F6174696E6720706F696E74 = linkonce local_unnamed_addr constant [24 x i8] c"          floating point", comdat
@_QQclX332E342E32 = linkonce local_unnamed_addr constant [5 x i8] c"3.4.2", comdat
@_QQclX3132205365702032303234 = linkonce local_unnamed_addr constant [11 x i8] c"12 Sep 2024", comdat
@_QQclX286E6F6E6529 = linkonce local_unnamed_addr constant [6 x i8] c"(none)", comdat
@_QQclX2428464329 = linkonce local_unnamed_addr constant [5 x i8] c"$(FC)", comdat
@_QQclX242846464C41475329 = linkonce local_unnamed_addr constant [9 x i8] c"$(FFLAGS)", comdat
@_QQclX72616E646938 = linkonce local_unnamed_addr constant [6 x i8] c"randi8", comdat
@_QQclX85102b32e0ac3e984da09d954ace518b = linkonce constant [66 x i8] c"(//,' NAS Parallel Benchmarks (NPB3.4-OMP)', ' - FT Benchmark', /)", comdat
@_QQclXa33153e394b13461bf67bda86bd0fc11 = linkonce constant [56 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/FT/ft.f90\00", comdat
@_QQclXc267696b5bcdf54351b18244b9f7fa43 = linkonce constant [49 x i8] c"(' Size                : ', i4, 'x', i4, 'x', i4)", comdat
@_QQclXa963f07a6dea1ec01ba1c54badeb65d0 = linkonce constant [38 x i8] c"(' Iterations                  :', i7)", comdat
@_QQclXc8c816e7d078dd1ad35ebfc1f2802448 = linkonce constant [38 x i8] c"(' Number of available threads :', i7)", comdat
@_QFprint_timersEtstrings = internal global [8 x [25 x i8]] [[25 x i8] c"          total          ", [25 x i8] c"          setup          ", [25 x i8] c"            fft          ", [25 x i8] c"         evolve          ", [25 x i8] c"       checksum          ", [25 x i8] c"           fftx          ", [25 x i8] c"           ffty          ", [25 x i8] c"           fftz          "]
@_QQclX3888eaff8ece5bfb29b8d7929fca1d13 = linkonce constant [54 x i8] c"(' timer ', i2, '(', a16, ') :', f9.4, ' (',f6.2,'%)')", comdat
@_QQclX7c1e67f93fcb28e2cdcb18010587e00c = linkonce constant [100 x i8] c"('CFFTZ: Either U has not been initialized, or else'/ 'one of the input parameters is invalid', 3i5)", comdat
@_QQclX9e8d3c2d987ed8baf86b3735653b66b3 = linkonce constant [37 x i8] c"(' T =',i5,5x,'Checksum =',1p2d22.12)", comdat
@_QQclX55 = linkonce constant [1 x i8] c"U", comdat
@_QQclX53 = linkonce local_unnamed_addr constant [1 x i8] c"S", comdat
@_QQclX57 = linkonce local_unnamed_addr constant [1 x i8] c"W", comdat
@_QQclX41 = linkonce local_unnamed_addr constant [1 x i8] c"A", comdat
@_QQclX42 = linkonce local_unnamed_addr constant [1 x i8] c"B", comdat
@_QQclX43 = linkonce local_unnamed_addr constant [1 x i8] c"C", comdat
@_QQclX44 = linkonce local_unnamed_addr constant [1 x i8] c"D", comdat
@_QQclX45 = linkonce local_unnamed_addr constant [1 x i8] c"E", comdat
@_QQclX46 = linkonce local_unnamed_addr constant [1 x i8] c"F", comdat
@_QQclX55a08c1285b7f0af953f78d40667effb = linkonce constant [35 x i8] c"(' Result verification successful')", comdat
@_QQclX282720526573756C7420766572696669636174696F6E206661696C65642729 = linkonce constant [31 x i8] c"(' Result verification failed')", comdat
@_QQclX636C617373203D20 = linkonce constant [8 x i8] c"class = ", comdat
@_QQEnvironmentDefaults = local_unnamed_addr constant ptr null
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8

define void @_QQmain() local_unnamed_addr #0 {
  %structArg.i541 = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded.i542 = alloca i64, align 8
  %.reloaded19.i543 = alloca i64, align 8
  %.reloaded20.i544 = alloca i64, align 8
  %.reloaded21.i545 = alloca i64, align 8
  %.reloaded22.i546 = alloca i64, align 8
  %.reloaded23.i547 = alloca i64, align 8
  %.reloaded24.i548 = alloca i64, align 8
  %.reloaded25.i549 = alloca i64, align 8
  %.reloaded26.i550 = alloca i64, align 8
  %structArg.i513 = alloca { ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded.i514 = alloca i64, align 8
  %.reloaded19.i515 = alloca i64, align 8
  %.reloaded20.i516 = alloca i64, align 8
  %1 = alloca double, align 8
  %structArg.i505 = alloca { ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded.i506 = alloca i64, align 8
  %.reloaded19.i507 = alloca i64, align 8
  %.reloaded20.i508 = alloca i64, align 8
  %2 = alloca double, align 8
  %structArg.i = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded.i = alloca i64, align 8
  %.reloaded19.i = alloca i64, align 8
  %.reloaded20.i = alloca i64, align 8
  %.reloaded21.i = alloca i64, align 8
  %.reloaded22.i = alloca i64, align 8
  %.reloaded23.i = alloca i64, align 8
  %.reloaded24.i = alloca i64, align 8
  %.reloaded25.i = alloca i64, align 8
  %.reloaded26.i = alloca i64, align 8
  %3 = alloca [6 x i8], align 4
  %4 = alloca [9 x i8], align 4
  %5 = alloca [6 x i8], align 4
  %6 = alloca [6 x i8], align 4
  %7 = alloca [6 x i8], align 4
  %8 = alloca [5 x i8], align 4
  %9 = alloca [6 x i8], align 4
  %10 = alloca [11 x i8], align 4
  %11 = alloca [5 x i8], align 4
  %12 = alloca [24 x i8], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i8], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca [1 x i8], align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca i32, align 4
  store i32 1, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %42 = load i32, ptr %37, align 4, !tbaa !4
  %43 = add i32 %42, 1
  store i32 %43, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %44 = load i32, ptr %37, align 4, !tbaa !4
  %45 = add i32 %44, 1
  store i32 %45, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %46 = load i32, ptr %37, align 4, !tbaa !4
  %47 = add i32 %46, 1
  store i32 %47, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %48 = load i32, ptr %37, align 4, !tbaa !4
  %49 = add i32 %48, 1
  store i32 %49, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %50 = load i32, ptr %37, align 4, !tbaa !4
  %51 = add i32 %50, 1
  store i32 %51, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %52 = load i32, ptr %37, align 4, !tbaa !4
  %53 = add i32 %52, 1
  store i32 %53, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %54 = load i32, ptr %37, align 4, !tbaa !4
  %55 = add i32 %54, 1
  store i32 %55, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %56 = load i32, ptr %37, align 4, !tbaa !4
  %57 = add i32 %56, 1
  store i32 %57, ptr %37, align 4, !tbaa !4
  call void @alloc_space_()
  call void @setup_()
  %.unpack = load ptr, ptr @_QMft_fieldsEu0, align 8, !tbaa !8
  %.unpack315 = load ptr, ptr @_QMft_fieldsEu1, align 8, !tbaa !8
  %.unpack327 = load ptr, ptr @_QMft_fieldsEtwiddle, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %structArg.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded19.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded20.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded21.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded22.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded23.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded24.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded25.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded26.i)
  %58 = load i32, ptr @_QMft_dataEdims, align 4, !tbaa !10
  %59 = add i32 %58, 1
  %60 = call i32 @llvm.smax.i32(i32 %59, i32 0)
  %61 = zext nneg i32 %60 to i64
  %62 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), align 4, !tbaa !16
  %63 = call i32 @llvm.smax.i32(i32 %62, i32 0)
  %64 = zext nneg i32 %63 to i64
  %65 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), align 4, !tbaa !18
  %66 = call i32 @llvm.smax.i32(i32 %65, i32 0)
  %67 = zext nneg i32 %66 to i64
  %omp_global_thread_num.i551 = call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %61, ptr %.reloaded.i, align 8
  store i64 %64, ptr %.reloaded19.i, align 8
  store i64 %67, ptr %.reloaded20.i, align 8
  store i64 %61, ptr %.reloaded21.i, align 8
  store i64 %64, ptr %.reloaded22.i, align 8
  store i64 %67, ptr %.reloaded23.i, align 8
  store i64 %61, ptr %.reloaded24.i, align 8
  store i64 %64, ptr %.reloaded25.i, align 8
  store i64 %67, ptr %.reloaded26.i, align 8
  store ptr %.reloaded.i, ptr %structArg.i, align 8
  %gep_.reloaded19.i = getelementptr inbounds i8, ptr %structArg.i, i64 8
  store ptr %.reloaded19.i, ptr %gep_.reloaded19.i, align 8
  %gep_.reloaded20.i = getelementptr inbounds i8, ptr %structArg.i, i64 16
  store ptr %.reloaded20.i, ptr %gep_.reloaded20.i, align 8
  %gep_.reloaded21.i = getelementptr inbounds i8, ptr %structArg.i, i64 24
  store ptr %.reloaded21.i, ptr %gep_.reloaded21.i, align 8
  %gep_.reloaded22.i = getelementptr inbounds i8, ptr %structArg.i, i64 32
  store ptr %.reloaded22.i, ptr %gep_.reloaded22.i, align 8
  %gep_.reloaded23.i = getelementptr inbounds i8, ptr %structArg.i, i64 40
  store ptr %.reloaded23.i, ptr %gep_.reloaded23.i, align 8
  %gep_.reloaded24.i = getelementptr inbounds i8, ptr %structArg.i, i64 48
  store ptr %.reloaded24.i, ptr %gep_.reloaded24.i, align 8
  %gep_.reloaded25.i = getelementptr inbounds i8, ptr %structArg.i, i64 56
  store ptr %.reloaded25.i, ptr %gep_.reloaded25.i, align 8
  %gep_.reloaded26.i = getelementptr inbounds i8, ptr %structArg.i, i64 64
  store ptr %.reloaded26.i, ptr %gep_.reloaded26.i, align 8
  %gep_.i = getelementptr inbounds i8, ptr %structArg.i, i64 72
  store ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), ptr %gep_.i, align 8
  %gep_27.i = getelementptr inbounds i8, ptr %structArg.i, i64 80
  store ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr %gep_27.i, align 8
  %gep_28.i = getelementptr inbounds i8, ptr %structArg.i, i64 88
  store ptr @_QMft_dataEdims, ptr %gep_28.i, align 8
  %gep_29.i = getelementptr inbounds i8, ptr %structArg.i, i64 96
  store ptr %.unpack, ptr %gep_29.i, align 8
  %gep_30.i = getelementptr inbounds i8, ptr %structArg.i, i64 104
  store ptr %.unpack315, ptr %gep_30.i, align 8
  %gep_31.i = getelementptr inbounds i8, ptr %structArg.i, i64 112
  store ptr %.unpack327, ptr %gep_31.i, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @init_ui_..omp_par, ptr nonnull %structArg.i)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %structArg.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded19.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded20.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded21.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded22.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded23.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded24.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded25.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded26.i)
  %.unpack339 = load ptr, ptr @_QMft_fieldsEtwiddle, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %structArg.i505)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded.i506)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded19.i507)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded20.i508)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  %68 = load i32, ptr @_QMft_dataEdims, align 4, !tbaa !20
  %69 = add i32 %68, 1
  %70 = call i32 @llvm.smax.i32(i32 %69, i32 0)
  %71 = zext nneg i32 %70 to i64
  %72 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), align 4, !tbaa !26
  %73 = call i32 @llvm.smax.i32(i32 %72, i32 0)
  %74 = zext nneg i32 %73 to i64
  %75 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), align 4, !tbaa !28
  %76 = call i32 @llvm.smax.i32(i32 %75, i32 0)
  %77 = zext nneg i32 %76 to i64
  store double 0xBF04B2B4199E149A, ptr %2, align 8, !tbaa !30
  store i64 %71, ptr %.reloaded.i506, align 8
  store i64 %74, ptr %.reloaded19.i507, align 8
  store i64 %77, ptr %.reloaded20.i508, align 8
  store ptr %.reloaded.i506, ptr %structArg.i505, align 8
  %gep_.reloaded19.i510 = getelementptr inbounds i8, ptr %structArg.i505, i64 8
  store ptr %.reloaded19.i507, ptr %gep_.reloaded19.i510, align 8
  %gep_.reloaded20.i511 = getelementptr inbounds i8, ptr %structArg.i505, i64 16
  store ptr %.reloaded20.i508, ptr %gep_.reloaded20.i511, align 8
  %gep_.i512 = getelementptr inbounds i8, ptr %structArg.i505, i64 24
  store ptr %2, ptr %gep_.i512, align 8
  %gep_21.i = getelementptr inbounds i8, ptr %structArg.i505, i64 32
  store ptr %.unpack339, ptr %gep_21.i, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @compute_indexmap_..omp_par, ptr nonnull %structArg.i505)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %structArg.i505)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded.i506)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded19.i507)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded20.i508)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %.unpack351 = load ptr, ptr @_QMft_fieldsEu1, align 8, !tbaa !8
  call void @compute_initial_conditions_(ptr %.unpack351, ptr nonnull @_QMft_dataEdims, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2))
  %78 = load i32, ptr @_QMft_dataEdims, align 4, !tbaa !31
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %ilog2_.exit.thread26.i, label %.preheader.i.i

ilog2_.exit.thread26.i:                           ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_QMft_dataEu, i8 0, i64 16, i1 false)
  br label %fft_init_.exit

.preheader.i.i:                                   ; preds = %0
  %80 = icmp sgt i32 %78, 2
  br i1 %80, label %.lr.ph.i.i, label %ilog2_.exit.thread.i

ilog2_.exit.thread.i:                             ; preds = %.preheader.i.i
  store double 1.000000e+00, ptr @_QMft_dataEu, align 8, !tbaa !37
  store double 0.000000e+00, ptr getelementptr inbounds ([4097 x { double, double }], ptr @_QMft_dataEu, i64 0, i64 0, i32 1), align 8, !tbaa !37
  br label %.lr.ph21.preheader.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %81, %.lr.ph.i.i ], [ 2, %.preheader.i.i ]
  %.057.i.i = phi i32 [ %82, %.lr.ph.i.i ], [ 1, %.preheader.i.i ]
  %81 = shl i32 %.08.i.i, 1
  %82 = add i32 %.057.i.i, 1
  %83 = icmp slt i32 %81, %78
  br i1 %83, label %.lr.ph.i.i, label %ilog2_.exit.i

ilog2_.exit.i:                                    ; preds = %.lr.ph.i.i
  %84 = sitofp i32 %82 to double
  store double %84, ptr @_QMft_dataEu, align 8, !tbaa !37
  store double 0.000000e+00, ptr getelementptr inbounds ([4097 x { double, double }], ptr @_QMft_dataEu, i64 0, i64 0, i32 1), align 8, !tbaa !37
  %85 = icmp ult i32 %.057.i.i, 2147483647
  br i1 %85, label %.lr.ph21.preheader.i, label %fft_init_.exit

.lr.ph21.preheader.i:                             ; preds = %ilog2_.exit.i, %ilog2_.exit.thread.i
  %.06.i25.i = phi i32 [ 1, %ilog2_.exit.thread.i ], [ %82, %ilog2_.exit.i ]
  %86 = zext nneg i32 %.06.i25.i to i64
  br label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %._crit_edge.i, %.lr.ph21.preheader.i
  %87 = phi i64 [ %131, %._crit_edge.i ], [ %86, %.lr.ph21.preheader.i ]
  %.020.i = phi i32 [ %129, %._crit_edge.i ], [ 2, %.lr.ph21.preheader.i ]
  %.01319.i = phi i32 [ %130, %._crit_edge.i ], [ 1, %.lr.ph21.preheader.i ]
  %88 = sitofp i32 %.01319.i to double
  %89 = fdiv contract double 0x400921FB54442D18, %88
  %90 = add i32 %.01319.i, -1
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph21.i
  %92 = zext i32 %.01319.i to i64
  %93 = add nuw nsw i64 %92, 1
  %94 = icmp ne i32 %.01319.i, 0
  %umin589.neg = sext i1 %94 to i64
  %95 = add nsw i64 %93, %umin589.neg
  %min.iters.check = icmp ult i64 %95, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader.i
  %96 = icmp ne i32 %.01319.i, 0
  %umin.neg = sext i1 %96 to i64
  %97 = add nsw i64 %umin.neg, %92
  %98 = trunc i64 %97 to i32
  %99 = add i32 %.020.i, %98
  %100 = icmp slt i32 %99, %.020.i
  %101 = icmp ugt i64 %97, 4294967295
  %102 = or i1 %100, %101
  %103 = sext i32 %.020.i to i64
  %104 = shl nsw i64 %103, 4
  %scevgep = getelementptr i8, ptr getelementptr ([4097 x { double, double }], ptr @_QMft_dataEu, i64 -1, i64 4096, i32 0), i64 %104
  %mul.result = shl nsw i64 %97, 4
  %105 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %106 = icmp ult ptr %105, %scevgep
  %scevgep585 = getelementptr i8, ptr getelementptr ([4097 x { double, double }], ptr @_QMft_dataEu, i64 -1, i64 4096, i32 1), i64 %104
  %mul.result587 = shl nsw i64 %97, 4
  %107 = getelementptr i8, ptr %scevgep585, i64 %mul.result587
  %108 = icmp ult ptr %107, %scevgep585
  %109 = or i1 %106, %102
  %110 = or i1 %108, %109
  br i1 %110, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %95, -2
  %ind.end = trunc i64 %n.vec to i32
  %ind.end590 = sub nsw i64 %92, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %89, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %offset.idx = trunc i64 %index to i32
  %111 = sitofp <2 x i32> %vec.ind to <2 x double>
  %112 = fmul contract <2 x double> %broadcast.splat, %111
  %113 = call contract <2 x double> @llvm.cos.v2f64(<2 x double> %112)
  %114 = call contract <2 x double> @llvm.sin.v2f64(<2 x double> %112)
  %115 = add i32 %.020.i, %offset.idx
  %116 = sext i32 %115 to i64
  %gep = getelementptr { double, double }, ptr getelementptr (i8, ptr @_QMft_dataEu, i64 -16), i64 %116
  %interleaved.vec = shufflevector <2 x double> %113, <2 x double> %114, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %gep, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, <i32 2, i32 2>
  %117 = icmp eq i64 %index.next, %n.vec
  br i1 %117, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %95, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.scevcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader.i ], [ %ind.end, %middle.block ]
  %.ph623 = phi i64 [ %92, %vector.scevcheck ], [ %92, %.lr.ph.preheader.i ], [ %ind.end590, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ]
  %118 = phi i64 [ %127, %.lr.ph.i ], [ %.ph623, %.lr.ph.i.preheader ]
  %119 = sitofp i32 %indvars.iv.i to double
  %120 = fmul contract double %89, %119
  %121 = call contract double @llvm.cos.f64(double %120)
  %122 = call contract double @llvm.sin.f64(double %120)
  %123 = add i32 %indvars.iv.i, %.020.i
  %124 = sext i32 %123 to i64
  %125 = getelementptr { double, double }, ptr @_QMft_dataEu, i64 %124
  %126 = getelementptr i8, ptr %125, i64 -16
  store double %121, ptr %126, align 8, !tbaa !37
  %.repack17.i = getelementptr i8, ptr %125, i64 -8
  store double %122, ptr %.repack17.i, align 8, !tbaa !37
  %indvars.iv.next.i = add nuw i32 %indvars.iv.i, 1
  %127 = add nsw i64 %118, -1
  %128 = icmp ugt i64 %118, 1
  br i1 %128, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.lr.ph21.i
  %129 = add i32 %.01319.i, %.020.i
  %130 = shl i32 %.01319.i, 1
  %131 = add nsw i64 %87, -1
  %132 = icmp sgt i64 %87, 1
  br i1 %132, label %.lr.ph21.i, label %fft_init_.exit

fft_init_.exit:                                   ; preds = %._crit_edge.i, %ilog2_.exit.thread26.i, %ilog2_.exit.i
  store i32 1, ptr %35, align 4, !tbaa !4
  %.unpack363 = load ptr, ptr @_QMft_fieldsEu1, align 8, !tbaa !8
  %.unpack375 = load ptr, ptr @_QMft_fieldsEu0, align 8, !tbaa !8
  call void @fft_(ptr nonnull %35, ptr %.unpack363, ptr %.unpack375)
  store i32 1, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %133 = load i32, ptr %37, align 4, !tbaa !4
  %134 = add i32 %133, 1
  store i32 %134, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %135 = load i32, ptr %37, align 4, !tbaa !4
  %136 = add i32 %135, 1
  store i32 %136, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %137 = load i32, ptr %37, align 4, !tbaa !4
  %138 = add i32 %137, 1
  store i32 %138, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %139 = load i32, ptr %37, align 4, !tbaa !4
  %140 = add i32 %139, 1
  store i32 %140, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %141 = load i32, ptr %37, align 4, !tbaa !4
  %142 = add i32 %141, 1
  store i32 %142, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %143 = load i32, ptr %37, align 4, !tbaa !4
  %144 = add i32 %143, 1
  store i32 %144, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %145 = load i32, ptr %37, align 4, !tbaa !4
  %146 = add i32 %145, 1
  store i32 %146, ptr %37, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %37)
  %147 = load i32, ptr %37, align 4, !tbaa !4
  %148 = add i32 %147, 1
  store i32 %148, ptr %37, align 4, !tbaa !4
  store i32 1, ptr %34, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %34)
  %149 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not = icmp eq i32 %149, 0
  br i1 %.not, label %151, label %150

150:                                              ; preds = %fft_init_.exit
  store i32 2, ptr %33, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %33)
  br label %151

151:                                              ; preds = %150, %fft_init_.exit
  call void @roi_begin_()
  %.unpack387 = load ptr, ptr @_QMft_fieldsEtwiddle, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %structArg.i513)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded.i514)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded19.i515)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded20.i516)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1)
  %152 = load i32, ptr @_QMft_dataEdims, align 4, !tbaa !20
  %153 = add i32 %152, 1
  %154 = call i32 @llvm.smax.i32(i32 %153, i32 0)
  %155 = zext nneg i32 %154 to i64
  %156 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), align 4, !tbaa !26
  %157 = call i32 @llvm.smax.i32(i32 %156, i32 0)
  %158 = zext nneg i32 %157 to i64
  %159 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), align 4, !tbaa !28
  %160 = call i32 @llvm.smax.i32(i32 %159, i32 0)
  %161 = zext nneg i32 %160 to i64
  store double 0xBF04B2B4199E149A, ptr %1, align 8, !tbaa !30
  store i64 %155, ptr %.reloaded.i514, align 8
  store i64 %158, ptr %.reloaded19.i515, align 8
  store i64 %161, ptr %.reloaded20.i516, align 8
  store ptr %.reloaded.i514, ptr %structArg.i513, align 8
  %gep_.reloaded19.i518 = getelementptr inbounds i8, ptr %structArg.i513, i64 8
  store ptr %.reloaded19.i515, ptr %gep_.reloaded19.i518, align 8
  %gep_.reloaded20.i519 = getelementptr inbounds i8, ptr %structArg.i513, i64 16
  store ptr %.reloaded20.i516, ptr %gep_.reloaded20.i519, align 8
  %gep_.i520 = getelementptr inbounds i8, ptr %structArg.i513, i64 24
  store ptr %1, ptr %gep_.i520, align 8
  %gep_21.i521 = getelementptr inbounds i8, ptr %structArg.i513, i64 32
  store ptr %.unpack387, ptr %gep_21.i521, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @compute_indexmap_..omp_par, ptr nonnull %structArg.i513)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %structArg.i513)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded.i514)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded19.i515)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded20.i516)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1)
  %.unpack399 = load ptr, ptr @_QMft_fieldsEu1, align 8, !tbaa !8
  call void @compute_initial_conditions_(ptr %.unpack399, ptr nonnull @_QMft_dataEdims, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2))
  %162 = load i32, ptr @_QMft_dataEdims, align 4, !tbaa !31
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %ilog2_.exit.thread26.i539, label %.preheader.i.i522

ilog2_.exit.thread26.i539:                        ; preds = %151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_QMft_dataEu, i8 0, i64 16, i1 false)
  br label %fft_init_.exit540

.preheader.i.i522:                                ; preds = %151
  %164 = icmp sgt i32 %162, 2
  br i1 %164, label %.lr.ph.i.i535, label %ilog2_.exit.thread.i523

ilog2_.exit.thread.i523:                          ; preds = %.preheader.i.i522
  store double 1.000000e+00, ptr @_QMft_dataEu, align 8, !tbaa !37
  store double 0.000000e+00, ptr getelementptr inbounds ([4097 x { double, double }], ptr @_QMft_dataEu, i64 0, i64 0, i32 1), align 8, !tbaa !37
  br label %.lr.ph21.preheader.i524

.lr.ph.i.i535:                                    ; preds = %.preheader.i.i522, %.lr.ph.i.i535
  %.08.i.i536 = phi i32 [ %165, %.lr.ph.i.i535 ], [ 2, %.preheader.i.i522 ]
  %.057.i.i537 = phi i32 [ %166, %.lr.ph.i.i535 ], [ 1, %.preheader.i.i522 ]
  %165 = shl i32 %.08.i.i536, 1
  %166 = add i32 %.057.i.i537, 1
  %167 = icmp slt i32 %165, %162
  br i1 %167, label %.lr.ph.i.i535, label %ilog2_.exit.i538

ilog2_.exit.i538:                                 ; preds = %.lr.ph.i.i535
  %168 = sitofp i32 %166 to double
  store double %168, ptr @_QMft_dataEu, align 8, !tbaa !37
  store double 0.000000e+00, ptr getelementptr inbounds ([4097 x { double, double }], ptr @_QMft_dataEu, i64 0, i64 0, i32 1), align 8, !tbaa !37
  %169 = icmp ult i32 %.057.i.i537, 2147483647
  br i1 %169, label %.lr.ph21.preheader.i524, label %fft_init_.exit540

.lr.ph21.preheader.i524:                          ; preds = %ilog2_.exit.i538, %ilog2_.exit.thread.i523
  %.06.i25.i525 = phi i32 [ 1, %ilog2_.exit.thread.i523 ], [ %166, %ilog2_.exit.i538 ]
  %170 = zext nneg i32 %.06.i25.i525 to i64
  br label %.lr.ph21.i526

.lr.ph21.i526:                                    ; preds = %._crit_edge.i529, %.lr.ph21.preheader.i524
  %171 = phi i64 [ %215, %._crit_edge.i529 ], [ %170, %.lr.ph21.preheader.i524 ]
  %.020.i527 = phi i32 [ %213, %._crit_edge.i529 ], [ 2, %.lr.ph21.preheader.i524 ]
  %.01319.i528 = phi i32 [ %214, %._crit_edge.i529 ], [ 1, %.lr.ph21.preheader.i524 ]
  %172 = sitofp i32 %.01319.i528 to double
  %173 = fdiv contract double 0x400921FB54442D18, %172
  %174 = add i32 %.01319.i528, -1
  %175 = icmp sgt i32 %174, -1
  br i1 %175, label %.lr.ph.preheader.i530, label %._crit_edge.i529

.lr.ph.preheader.i530:                            ; preds = %.lr.ph21.i526
  %176 = zext i32 %.01319.i528 to i64
  %177 = add nuw nsw i64 %176, 1
  %178 = icmp ne i32 %.01319.i528, 0
  %umin602.neg = sext i1 %178 to i64
  %179 = add nsw i64 %177, %umin602.neg
  %min.iters.check605 = icmp ult i64 %179, 12
  br i1 %min.iters.check605, label %.lr.ph.i531.preheader, label %vector.scevcheck592

vector.scevcheck592:                              ; preds = %.lr.ph.preheader.i530
  %180 = icmp ne i32 %.01319.i528, 0
  %umin593.neg = sext i1 %180 to i64
  %181 = add nsw i64 %umin593.neg, %176
  %182 = trunc i64 %181 to i32
  %183 = add i32 %.020.i527, %182
  %184 = icmp slt i32 %183, %.020.i527
  %185 = icmp ugt i64 %181, 4294967295
  %186 = or i1 %184, %185
  %187 = sext i32 %.020.i527 to i64
  %188 = shl nsw i64 %187, 4
  %scevgep594 = getelementptr i8, ptr getelementptr ([4097 x { double, double }], ptr @_QMft_dataEu, i64 -1, i64 4096, i32 0), i64 %188
  %mul.result596 = shl nsw i64 %181, 4
  %189 = getelementptr i8, ptr %scevgep594, i64 %mul.result596
  %190 = icmp ult ptr %189, %scevgep594
  %scevgep598 = getelementptr i8, ptr getelementptr ([4097 x { double, double }], ptr @_QMft_dataEu, i64 -1, i64 4096, i32 1), i64 %188
  %mul.result600 = shl nsw i64 %181, 4
  %191 = getelementptr i8, ptr %scevgep598, i64 %mul.result600
  %192 = icmp ult ptr %191, %scevgep598
  %193 = or i1 %190, %186
  %194 = or i1 %192, %193
  br i1 %194, label %.lr.ph.i531.preheader, label %vector.ph606

vector.ph606:                                     ; preds = %vector.scevcheck592
  %n.vec608 = and i64 %179, -2
  %ind.end609 = trunc i64 %n.vec608 to i32
  %ind.end611 = sub nsw i64 %176, %n.vec608
  %broadcast.splatinsert619 = insertelement <2 x double> poison, double %173, i64 0
  %broadcast.splat620 = shufflevector <2 x double> %broadcast.splatinsert619, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph606
  %index615 = phi i64 [ 0, %vector.ph606 ], [ %index.next622, %vector.body614 ]
  %vec.ind616 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph606 ], [ %vec.ind.next617, %vector.body614 ]
  %offset.idx618 = trunc i64 %index615 to i32
  %195 = sitofp <2 x i32> %vec.ind616 to <2 x double>
  %196 = fmul contract <2 x double> %broadcast.splat620, %195
  %197 = call contract <2 x double> @llvm.cos.v2f64(<2 x double> %196)
  %198 = call contract <2 x double> @llvm.sin.v2f64(<2 x double> %196)
  %199 = add i32 %.020.i527, %offset.idx618
  %200 = sext i32 %199 to i64
  %gep626 = getelementptr { double, double }, ptr getelementptr (i8, ptr @_QMft_dataEu, i64 -16), i64 %200
  %interleaved.vec621 = shufflevector <2 x double> %197, <2 x double> %198, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec621, ptr %gep626, align 8, !tbaa !37
  %index.next622 = add nuw i64 %index615, 2
  %vec.ind.next617 = add <2 x i32> %vec.ind616, <i32 2, i32 2>
  %201 = icmp eq i64 %index.next622, %n.vec608
  br i1 %201, label %middle.block603, label %vector.body614, !llvm.loop !50

middle.block603:                                  ; preds = %vector.body614
  %cmp.n613 = icmp eq i64 %179, %n.vec608
  br i1 %cmp.n613, label %._crit_edge.i529, label %.lr.ph.i531.preheader

.lr.ph.i531.preheader:                            ; preds = %vector.scevcheck592, %.lr.ph.preheader.i530, %middle.block603
  %indvars.iv.i532.ph = phi i32 [ 0, %vector.scevcheck592 ], [ 0, %.lr.ph.preheader.i530 ], [ %ind.end609, %middle.block603 ]
  %.ph = phi i64 [ %176, %vector.scevcheck592 ], [ %176, %.lr.ph.preheader.i530 ], [ %ind.end611, %middle.block603 ]
  br label %.lr.ph.i531

.lr.ph.i531:                                      ; preds = %.lr.ph.i531.preheader, %.lr.ph.i531
  %indvars.iv.i532 = phi i32 [ %indvars.iv.next.i534, %.lr.ph.i531 ], [ %indvars.iv.i532.ph, %.lr.ph.i531.preheader ]
  %202 = phi i64 [ %211, %.lr.ph.i531 ], [ %.ph, %.lr.ph.i531.preheader ]
  %203 = sitofp i32 %indvars.iv.i532 to double
  %204 = fmul contract double %173, %203
  %205 = call contract double @llvm.cos.f64(double %204)
  %206 = call contract double @llvm.sin.f64(double %204)
  %207 = add i32 %indvars.iv.i532, %.020.i527
  %208 = sext i32 %207 to i64
  %209 = getelementptr { double, double }, ptr @_QMft_dataEu, i64 %208
  %210 = getelementptr i8, ptr %209, i64 -16
  store double %205, ptr %210, align 8, !tbaa !37
  %.repack17.i533 = getelementptr i8, ptr %209, i64 -8
  store double %206, ptr %.repack17.i533, align 8, !tbaa !37
  %indvars.iv.next.i534 = add nuw i32 %indvars.iv.i532, 1
  %211 = add nsw i64 %202, -1
  %212 = icmp ugt i64 %202, 1
  br i1 %212, label %.lr.ph.i531, label %._crit_edge.i529, !llvm.loop !51

._crit_edge.i529:                                 ; preds = %.lr.ph.i531, %middle.block603, %.lr.ph21.i526
  %213 = add i32 %.01319.i528, %.020.i527
  %214 = shl i32 %.01319.i528, 1
  %215 = add nsw i64 %171, -1
  %216 = icmp sgt i64 %171, 1
  br i1 %216, label %.lr.ph21.i526, label %fft_init_.exit540

fft_init_.exit540:                                ; preds = %._crit_edge.i529, %ilog2_.exit.thread26.i539, %ilog2_.exit.i538
  %217 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not411 = icmp eq i32 %217, 0
  br i1 %.not411, label %.thread, label %218

218:                                              ; preds = %fft_init_.exit540
  store i32 2, ptr %32, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %32)
  %.pr = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not412 = icmp eq i32 %.pr, 0
  br i1 %.not412, label %.thread, label %219

219:                                              ; preds = %218
  store i32 3, ptr %31, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %31)
  br label %.thread

.thread:                                          ; preds = %fft_init_.exit540, %219, %218
  store i32 1, ptr %30, align 4, !tbaa !4
  %.unpack413 = load ptr, ptr @_QMft_fieldsEu1, align 8, !tbaa !8
  %.unpack425 = load ptr, ptr @_QMft_fieldsEu0, align 8, !tbaa !8
  call void @fft_(ptr nonnull %30, ptr %.unpack413, ptr %.unpack425)
  %220 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not437 = icmp eq i32 %220, 0
  br i1 %.not437, label %222, label %221

221:                                              ; preds = %.thread
  store i32 3, ptr %29, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %29)
  br label %222

222:                                              ; preds = %221, %.thread
  %223 = load i32, ptr @_QMft_dataEniter, align 4, !tbaa !52
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %222
  %225 = zext nneg i32 %223 to i64
  %gep_.reloaded19.i552 = getelementptr inbounds i8, ptr %structArg.i541, i64 8
  %gep_.reloaded20.i553 = getelementptr inbounds i8, ptr %structArg.i541, i64 16
  %gep_.reloaded21.i554 = getelementptr inbounds i8, ptr %structArg.i541, i64 24
  %gep_.reloaded22.i555 = getelementptr inbounds i8, ptr %structArg.i541, i64 32
  %gep_.reloaded23.i556 = getelementptr inbounds i8, ptr %structArg.i541, i64 40
  %gep_.reloaded24.i557 = getelementptr inbounds i8, ptr %structArg.i541, i64 48
  %gep_.reloaded25.i558 = getelementptr inbounds i8, ptr %structArg.i541, i64 56
  %gep_.reloaded26.i559 = getelementptr inbounds i8, ptr %structArg.i541, i64 64
  %gep_.i560 = getelementptr inbounds i8, ptr %structArg.i541, i64 72
  %gep_27.i561 = getelementptr inbounds i8, ptr %structArg.i541, i64 80
  %gep_28.i562 = getelementptr inbounds i8, ptr %structArg.i541, i64 88
  %gep_29.i563 = getelementptr inbounds i8, ptr %structArg.i541, i64 96
  %gep_30.i564 = getelementptr inbounds i8, ptr %structArg.i541, i64 104
  %gep_31.i565 = getelementptr inbounds i8, ptr %structArg.i541, i64 112
  %.pre582 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  br label %226

226:                                              ; preds = %.lr.ph, %250
  %227 = phi i32 [ %.pre582, %.lr.ph ], [ %251, %250 ]
  %228 = phi i64 [ %225, %.lr.ph ], [ %253, %250 ]
  %229 = phi i32 [ 1, %.lr.ph ], [ %252, %250 ]
  store i32 %229, ptr %38, align 4, !tbaa !4
  %.not439 = icmp eq i32 %227, 0
  br i1 %.not439, label %231, label %230

230:                                              ; preds = %226
  store i32 4, ptr %28, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %28)
  br label %231

231:                                              ; preds = %230, %226
  %.unpack440 = load ptr, ptr @_QMft_fieldsEu0, align 8, !tbaa !8
  %.unpack452 = load ptr, ptr @_QMft_fieldsEu1, align 8, !tbaa !8
  %.unpack464 = load ptr, ptr @_QMft_fieldsEtwiddle, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %structArg.i541)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded.i542)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded19.i543)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded20.i544)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded21.i545)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded22.i546)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded23.i547)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded24.i548)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded25.i549)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.reloaded26.i550)
  %232 = load i32, ptr @_QMft_dataEdims, align 4, !tbaa !54
  %233 = add i32 %232, 1
  %234 = call i32 @llvm.smax.i32(i32 %233, i32 0)
  %235 = zext nneg i32 %234 to i64
  %236 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), align 4, !tbaa !60
  %237 = call i32 @llvm.smax.i32(i32 %236, i32 0)
  %238 = zext nneg i32 %237 to i64
  %239 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), align 4, !tbaa !62
  %240 = call i32 @llvm.smax.i32(i32 %239, i32 0)
  %241 = zext nneg i32 %240 to i64
  store i64 %235, ptr %.reloaded.i542, align 8
  store i64 %238, ptr %.reloaded19.i543, align 8
  store i64 %241, ptr %.reloaded20.i544, align 8
  store i64 %235, ptr %.reloaded21.i545, align 8
  store i64 %238, ptr %.reloaded22.i546, align 8
  store i64 %241, ptr %.reloaded23.i547, align 8
  store i64 %235, ptr %.reloaded24.i548, align 8
  store i64 %238, ptr %.reloaded25.i549, align 8
  store i64 %241, ptr %.reloaded26.i550, align 8
  store ptr %.reloaded.i542, ptr %structArg.i541, align 8
  store ptr %.reloaded19.i543, ptr %gep_.reloaded19.i552, align 8
  store ptr %.reloaded20.i544, ptr %gep_.reloaded20.i553, align 8
  store ptr %.reloaded21.i545, ptr %gep_.reloaded21.i554, align 8
  store ptr %.reloaded22.i546, ptr %gep_.reloaded22.i555, align 8
  store ptr %.reloaded23.i547, ptr %gep_.reloaded23.i556, align 8
  store ptr %.reloaded24.i548, ptr %gep_.reloaded24.i557, align 8
  store ptr %.reloaded25.i549, ptr %gep_.reloaded25.i558, align 8
  store ptr %.reloaded26.i550, ptr %gep_.reloaded26.i559, align 8
  store ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), ptr %gep_.i560, align 8
  store ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr %gep_27.i561, align 8
  store ptr @_QMft_dataEdims, ptr %gep_28.i562, align 8
  store ptr %.unpack440, ptr %gep_29.i563, align 8
  store ptr %.unpack464, ptr %gep_30.i564, align 8
  store ptr %.unpack452, ptr %gep_31.i565, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @evolve_..omp_par, ptr nonnull %structArg.i541)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %structArg.i541)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded.i542)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded19.i543)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded20.i544)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded21.i545)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded22.i546)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded23.i547)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded24.i548)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded25.i549)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.reloaded26.i550)
  %242 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not476 = icmp eq i32 %242, 0
  br i1 %.not476, label %.thread568, label %243

243:                                              ; preds = %231
  store i32 4, ptr %27, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %27)
  %.pr567 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not477 = icmp eq i32 %.pr567, 0
  br i1 %.not477, label %.thread568, label %244

244:                                              ; preds = %243
  store i32 3, ptr %26, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %26)
  br label %.thread568

.thread568:                                       ; preds = %231, %244, %243
  store i32 -1, ptr %25, align 4, !tbaa !4
  %.unpack478 = load ptr, ptr @_QMft_fieldsEu1, align 8, !tbaa !8
  call void @fft_(ptr nonnull %25, ptr %.unpack478, ptr %.unpack478)
  %245 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not490 = icmp eq i32 %245, 0
  br i1 %.not490, label %.thread571, label %246

246:                                              ; preds = %.thread568
  store i32 3, ptr %24, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %24)
  %.pr570 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not491 = icmp eq i32 %.pr570, 0
  br i1 %.not491, label %.thread571, label %247

247:                                              ; preds = %246
  store i32 5, ptr %23, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %23)
  br label %.thread571

.thread571:                                       ; preds = %.thread568, %247, %246
  %.unpack492 = load ptr, ptr @_QMft_fieldsEu1, align 8, !tbaa !8
  call void @checksum_(ptr nonnull %38, ptr %.unpack492, ptr nonnull @_QMft_dataEdims, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2))
  %248 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not504 = icmp eq i32 %248, 0
  br i1 %.not504, label %250, label %249

249:                                              ; preds = %.thread571
  store i32 5, ptr %22, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %22)
  %.pre = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  br label %250

250:                                              ; preds = %249, %.thread571
  %251 = phi i32 [ %.pre, %249 ], [ 0, %.thread571 ]
  %252 = add nuw i32 %229, 1
  %253 = add nsw i64 %228, -1
  %254 = icmp sgt i64 %228, 1
  br i1 %254, label %226, label %._crit_edge

._crit_edge:                                      ; preds = %250, %222
  store i32 4096, ptr %21, align 4, !tbaa !4
  store i32 2048, ptr %20, align 4, !tbaa !4
  store i32 2048, ptr %19, align 4, !tbaa !4
  call void @verify_(ptr nonnull %21, ptr nonnull %20, ptr nonnull %19, ptr nonnull @_QMft_dataEniter, ptr nonnull %41, ptr nonnull %36, i64 poison)
  call void @roi_end_()
  store i32 1, ptr %18, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %18)
  store i32 1, ptr %17, align 4, !tbaa !4
  %255 = call contract double @timer_read_(ptr nonnull %17)
  store double %255, ptr %40, align 8, !tbaa !4
  call void @free_space_()
  %256 = fcmp contract une double %255, 0.000000e+00
  br i1 %256, label %257, label %264

257:                                              ; preds = %._crit_edge
  %258 = load i32, ptr @_QMft_dataEniter, align 4, !tbaa !52
  %259 = sitofp i32 %258 to double
  %260 = fmul contract double %259, 0x4065E5C1DA9B227D
  %261 = fadd contract double %260, 0x40670D3B9F302F60
  %262 = fmul contract double %261, 0x40D0C6F7A0B5ED8D
  %263 = fdiv contract double %262, %255
  br label %264

264:                                              ; preds = %._crit_edge, %257
  %storemerge = phi double [ %263, %257 ], [ 0.000000e+00, %._crit_edge ]
  store double %storemerge, ptr %39, align 8, !tbaa !4
  %265 = load i16, ptr @_QQclX4654, align 1
  store i16 %265, ptr %16, align 4
  store i32 4096, ptr %15, align 4, !tbaa !4
  store i32 2048, ptr %14, align 4, !tbaa !4
  store i32 2048, ptr %13, align 4, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 1 dereferenceable(24) @_QQclX20202020202020202020666C6F6174696E6720706F696E74, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %11, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX332E342E32, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %10, ptr noundef nonnull align 1 dereferenceable(11) @_QQclX3132205365702032303234, i64 11, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %9, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %8, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX2428464329, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %7, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %5, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(9) @_QQclX242846464C41475329, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX72616E646938, i64 6, i1 false)
  call void @print_results_(ptr nonnull %16, ptr nonnull %36, ptr nonnull %15, ptr nonnull %14, ptr nonnull %13, ptr nonnull @_QMft_dataEniter, ptr nonnull %40, ptr nonnull %39, ptr nonnull %12, ptr nonnull %41, ptr nonnull %11, ptr nonnull %10, ptr nonnull %9, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %5, ptr nonnull %4, ptr nonnull %3, i64 2, i64 1, i64 24, i64 5, i64 11, i64 6, i64 5, i64 6, i64 6, i64 6, i64 9, i64 6)
  %266 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !47
  %.not438 = icmp eq i32 %266, 0
  br i1 %.not438, label %268, label %267

267:                                              ; preds = %264
  call void @print_timers_()
  br label %268

268:                                              ; preds = %267, %264
  ret void
}

; Function Attrs: nounwind
define void @init_ui_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #1 {
entry:
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded19 = alloca i64, align 8
  %.reloaded20 = alloca i64, align 8
  %.reloaded21 = alloca i64, align 8
  %.reloaded22 = alloca i64, align 8
  %.reloaded23 = alloca i64, align 8
  %.reloaded24 = alloca i64, align 8
  %.reloaded25 = alloca i64, align 8
  %.reloaded26 = alloca i64, align 8
  %6 = load i32, ptr %3, align 4, !tbaa !10
  %7 = add i32 %6, 1
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = zext nneg i32 %8 to i64
  %10 = load i32, ptr %4, align 4, !tbaa !16
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %12 = zext nneg i32 %11 to i64
  %13 = load i32, ptr %5, align 4, !tbaa !18
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = zext nneg i32 %14 to i64
  %omp_global_thread_num = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %9, ptr %.reloaded, align 8
  store i64 %12, ptr %.reloaded19, align 8
  store i64 %15, ptr %.reloaded20, align 8
  store i64 %9, ptr %.reloaded21, align 8
  store i64 %12, ptr %.reloaded22, align 8
  store i64 %15, ptr %.reloaded23, align 8
  store i64 %9, ptr %.reloaded24, align 8
  store i64 %12, ptr %.reloaded25, align 8
  store i64 %15, ptr %.reloaded26, align 8
  store ptr %.reloaded, ptr %structArg, align 8
  %gep_.reloaded19 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %.reloaded19, ptr %gep_.reloaded19, align 8
  %gep_.reloaded20 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %.reloaded20, ptr %gep_.reloaded20, align 8
  %gep_.reloaded21 = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %.reloaded21, ptr %gep_.reloaded21, align 8
  %gep_.reloaded22 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %.reloaded22, ptr %gep_.reloaded22, align 8
  %gep_.reloaded23 = getelementptr inbounds i8, ptr %structArg, i64 40
  store ptr %.reloaded23, ptr %gep_.reloaded23, align 8
  %gep_.reloaded24 = getelementptr inbounds i8, ptr %structArg, i64 48
  store ptr %.reloaded24, ptr %gep_.reloaded24, align 8
  %gep_.reloaded25 = getelementptr inbounds i8, ptr %structArg, i64 56
  store ptr %.reloaded25, ptr %gep_.reloaded25, align 8
  %gep_.reloaded26 = getelementptr inbounds i8, ptr %structArg, i64 64
  store ptr %.reloaded26, ptr %gep_.reloaded26, align 8
  %gep_ = getelementptr inbounds i8, ptr %structArg, i64 72
  store ptr %5, ptr %gep_, align 8
  %gep_27 = getelementptr inbounds i8, ptr %structArg, i64 80
  store ptr %4, ptr %gep_27, align 8
  %gep_28 = getelementptr inbounds i8, ptr %structArg, i64 88
  store ptr %3, ptr %gep_28, align 8
  %gep_29 = getelementptr inbounds i8, ptr %structArg, i64 96
  store ptr %0, ptr %gep_29, align 8
  %gep_30 = getelementptr inbounds i8, ptr %structArg, i64 104
  store ptr %1, ptr %gep_30, align 8
  %gep_31 = getelementptr inbounds i8, ptr %structArg, i64 112
  store ptr %2, ptr %gep_31, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @init_ui_..omp_par, ptr nonnull %structArg)
  ret void
}

; Function Attrs: nounwind
define internal void @init_ui_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_.reloaded = load ptr, ptr %0, align 8
  %gep_.reloaded19 = getelementptr i8, ptr %0, i64 8
  %loadgep_.reloaded19 = load ptr, ptr %gep_.reloaded19, align 8
  %gep_.reloaded21 = getelementptr i8, ptr %0, i64 24
  %loadgep_.reloaded21 = load ptr, ptr %gep_.reloaded21, align 8
  %gep_.reloaded22 = getelementptr i8, ptr %0, i64 32
  %loadgep_.reloaded22 = load ptr, ptr %gep_.reloaded22, align 8
  %gep_.reloaded24 = getelementptr i8, ptr %0, i64 48
  %loadgep_.reloaded24 = load ptr, ptr %gep_.reloaded24, align 8
  %gep_.reloaded25 = getelementptr i8, ptr %0, i64 56
  %loadgep_.reloaded25 = load ptr, ptr %gep_.reloaded25, align 8
  %gep_ = getelementptr i8, ptr %0, i64 72
  %loadgep_ = load ptr, ptr %gep_, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 80
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %gep_3 = getelementptr i8, ptr %0, i64 88
  %loadgep_4 = load ptr, ptr %gep_3, align 8
  %gep_5 = getelementptr i8, ptr %0, i64 96
  %loadgep_6 = load ptr, ptr %gep_5, align 8
  %gep_7 = getelementptr i8, ptr %0, i64 104
  %loadgep_8 = load ptr, ptr %gep_7, align 8
  %gep_9 = getelementptr i8, ptr %0, i64 112
  %loadgep_10 = load ptr, ptr %gep_9, align 8
  %1 = load i64, ptr %loadgep_.reloaded, align 8
  %2 = load i64, ptr %loadgep_.reloaded19, align 8
  %3 = load i64, ptr %loadgep_.reloaded21, align 8
  %4 = load i64, ptr %loadgep_.reloaded22, align 8
  %5 = load i64, ptr %loadgep_.reloaded24, align 8
  %6 = load i64, ptr %loadgep_.reloaded25, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %7 = load i32, ptr %loadgep_, align 4, !tbaa !18
  %8 = load i32, ptr %loadgep_2, align 4, !tbaa !16
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %omp_loop.tripcount2 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %9 = mul nuw i32 %omp_loop.tripcount2, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num18 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num18, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %11 = load i32, ptr %p.lowerbound, align 4
  %12 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %12, %11
  %omp_collapsed.cmp22.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp22.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %13 = load i32, ptr %loadgep_4, align 4, !tbaa !10
  %14 = icmp sgt i32 %13, 0
  %15 = mul nsw i64 %2, %1
  %16 = mul nsw i64 %4, %3
  %17 = mul nsw i64 %6, %5
  br i1 %14, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %18 = zext nneg i32 %13 to i64
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us
  %omp_collapsed.iv23.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %19 = add i32 %omp_collapsed.iv23.us, %11
  %.frozen = freeze i32 %19
  %omp_loop.tripcount2.frozen = freeze i32 %omp_loop.tripcount2
  %20 = udiv i32 %.frozen, %omp_loop.tripcount2.frozen
  %21 = mul i32 %20, %omp_loop.tripcount2.frozen
  %.decomposed = sub i32 %.frozen, %21
  %22 = add i32 %20, 1
  %23 = sext i32 %22 to i64
  %24 = zext nneg i32 %.decomposed to i64
  %25 = mul nsw i64 %1, %24
  %26 = add nsw i64 %23, -1
  %27 = mul nsw i64 %15, %26
  %28 = getelementptr { double, double }, ptr %loadgep_6, i64 %27
  %29 = getelementptr { double, double }, ptr %28, i64 %25
  %30 = mul nsw i64 %3, %24
  %31 = mul nsw i64 %16, %26
  %32 = getelementptr { double, double }, ptr %loadgep_8, i64 %31
  %33 = getelementptr { double, double }, ptr %32, i64 %30
  %34 = mul nsw i64 %5, %24
  %35 = mul nsw i64 %17, %26
  %36 = getelementptr double, ptr %loadgep_10, i64 %35
  %37 = getelementptr double, ptr %36, i64 %34
  br label %omp.wsloop.region15.us

omp.wsloop.region15.us:                           ; preds = %omp_collapsed.body.us, %omp.wsloop.region15.us
  %indvars.iv = phi i64 [ 1, %omp_collapsed.body.us ], [ %indvars.iv.next, %omp.wsloop.region15.us ]
  %38 = add nsw i64 %indvars.iv, -1
  %39 = getelementptr { double, double }, ptr %29, i64 %38
  %40 = getelementptr { double, double }, ptr %33, i64 %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %41 = getelementptr double, ptr %37, i64 %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  store double 0.000000e+00, ptr %41, align 8, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %18
  br i1 %exitcond.not, label %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us, label %omp.wsloop.region15.us

omp.wsloop.region14.omp.wsloop.region16_crit_edge.us: ; preds = %omp.wsloop.region15.us
  %omp_collapsed.next.us = add nuw i32 %omp_collapsed.iv23.us, 1
  %exitcond26.not = icmp eq i32 %omp_collapsed.iv23.us, %reass.sub
  br i1 %exitcond26.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

omp_collapsed.exit:                               ; preds = %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us, %omp_collapsed.body.lr.ph, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num18)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num18)
  ret void
}

; Function Attrs: nounwind
define void @evolve_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #1 {
entry:
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded19 = alloca i64, align 8
  %.reloaded20 = alloca i64, align 8
  %.reloaded21 = alloca i64, align 8
  %.reloaded22 = alloca i64, align 8
  %.reloaded23 = alloca i64, align 8
  %.reloaded24 = alloca i64, align 8
  %.reloaded25 = alloca i64, align 8
  %.reloaded26 = alloca i64, align 8
  %6 = load i32, ptr %3, align 4, !tbaa !54
  %7 = add i32 %6, 1
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = zext nneg i32 %8 to i64
  %10 = load i32, ptr %4, align 4, !tbaa !60
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %12 = zext nneg i32 %11 to i64
  %13 = load i32, ptr %5, align 4, !tbaa !62
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = zext nneg i32 %14 to i64
  %omp_global_thread_num = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %9, ptr %.reloaded, align 8
  store i64 %12, ptr %.reloaded19, align 8
  store i64 %15, ptr %.reloaded20, align 8
  store i64 %9, ptr %.reloaded21, align 8
  store i64 %12, ptr %.reloaded22, align 8
  store i64 %15, ptr %.reloaded23, align 8
  store i64 %9, ptr %.reloaded24, align 8
  store i64 %12, ptr %.reloaded25, align 8
  store i64 %15, ptr %.reloaded26, align 8
  store ptr %.reloaded, ptr %structArg, align 8
  %gep_.reloaded19 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %.reloaded19, ptr %gep_.reloaded19, align 8
  %gep_.reloaded20 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %.reloaded20, ptr %gep_.reloaded20, align 8
  %gep_.reloaded21 = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %.reloaded21, ptr %gep_.reloaded21, align 8
  %gep_.reloaded22 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %.reloaded22, ptr %gep_.reloaded22, align 8
  %gep_.reloaded23 = getelementptr inbounds i8, ptr %structArg, i64 40
  store ptr %.reloaded23, ptr %gep_.reloaded23, align 8
  %gep_.reloaded24 = getelementptr inbounds i8, ptr %structArg, i64 48
  store ptr %.reloaded24, ptr %gep_.reloaded24, align 8
  %gep_.reloaded25 = getelementptr inbounds i8, ptr %structArg, i64 56
  store ptr %.reloaded25, ptr %gep_.reloaded25, align 8
  %gep_.reloaded26 = getelementptr inbounds i8, ptr %structArg, i64 64
  store ptr %.reloaded26, ptr %gep_.reloaded26, align 8
  %gep_ = getelementptr inbounds i8, ptr %structArg, i64 72
  store ptr %5, ptr %gep_, align 8
  %gep_27 = getelementptr inbounds i8, ptr %structArg, i64 80
  store ptr %4, ptr %gep_27, align 8
  %gep_28 = getelementptr inbounds i8, ptr %structArg, i64 88
  store ptr %3, ptr %gep_28, align 8
  %gep_29 = getelementptr inbounds i8, ptr %structArg, i64 96
  store ptr %0, ptr %gep_29, align 8
  %gep_30 = getelementptr inbounds i8, ptr %structArg, i64 104
  store ptr %2, ptr %gep_30, align 8
  %gep_31 = getelementptr inbounds i8, ptr %structArg, i64 112
  store ptr %1, ptr %gep_31, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @evolve_..omp_par, ptr nonnull %structArg)
  ret void
}

; Function Attrs: nounwind
define internal void @evolve_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_.reloaded = load ptr, ptr %0, align 8
  %gep_.reloaded19 = getelementptr i8, ptr %0, i64 8
  %loadgep_.reloaded19 = load ptr, ptr %gep_.reloaded19, align 8
  %gep_.reloaded21 = getelementptr i8, ptr %0, i64 24
  %loadgep_.reloaded21 = load ptr, ptr %gep_.reloaded21, align 8
  %gep_.reloaded22 = getelementptr i8, ptr %0, i64 32
  %loadgep_.reloaded22 = load ptr, ptr %gep_.reloaded22, align 8
  %gep_.reloaded24 = getelementptr i8, ptr %0, i64 48
  %loadgep_.reloaded24 = load ptr, ptr %gep_.reloaded24, align 8
  %gep_.reloaded25 = getelementptr i8, ptr %0, i64 56
  %loadgep_.reloaded25 = load ptr, ptr %gep_.reloaded25, align 8
  %gep_ = getelementptr i8, ptr %0, i64 72
  %loadgep_ = load ptr, ptr %gep_, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 80
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %gep_3 = getelementptr i8, ptr %0, i64 88
  %loadgep_4 = load ptr, ptr %gep_3, align 8
  %gep_5 = getelementptr i8, ptr %0, i64 96
  %loadgep_6 = load ptr, ptr %gep_5, align 8
  %gep_7 = getelementptr i8, ptr %0, i64 104
  %loadgep_8 = load ptr, ptr %gep_7, align 8
  %gep_9 = getelementptr i8, ptr %0, i64 112
  %loadgep_10 = load ptr, ptr %gep_9, align 8
  %1 = load i64, ptr %loadgep_.reloaded, align 8
  %2 = load i64, ptr %loadgep_.reloaded19, align 8
  %3 = load i64, ptr %loadgep_.reloaded21, align 8
  %4 = load i64, ptr %loadgep_.reloaded22, align 8
  %5 = load i64, ptr %loadgep_.reloaded24, align 8
  %6 = load i64, ptr %loadgep_.reloaded25, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %7 = load i32, ptr %loadgep_, align 4, !tbaa !62
  %8 = load i32, ptr %loadgep_2, align 4, !tbaa !60
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %omp_loop.tripcount2 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %9 = mul nuw i32 %omp_loop.tripcount2, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num18 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num18, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %11 = load i32, ptr %p.lowerbound, align 4
  %12 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %12, %11
  %omp_collapsed.cmp23.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp23.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %13 = load i32, ptr %loadgep_4, align 4, !tbaa !54
  %14 = icmp sgt i32 %13, 0
  %15 = mul nsw i64 %2, %1
  %16 = mul nsw i64 %4, %3
  %17 = mul nsw i64 %6, %5
  br i1 %14, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %18 = zext nneg i32 %13 to i64
  %min.iters.check = icmp eq i32 %13, 1
  %n.vec = and i64 %18, 2147483646
  %ind.end = or i64 %18, 1
  %cmp.n = icmp eq i64 %n.vec, %18
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us
  %omp_collapsed.iv24.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %19 = add i32 %omp_collapsed.iv24.us, %11
  %.frozen = freeze i32 %19
  %omp_loop.tripcount2.frozen = freeze i32 %omp_loop.tripcount2
  %20 = udiv i32 %.frozen, %omp_loop.tripcount2.frozen
  %21 = mul i32 %20, %omp_loop.tripcount2.frozen
  %.decomposed = sub i32 %.frozen, %21
  %22 = add i32 %20, 1
  %23 = sext i32 %22 to i64
  %24 = zext nneg i32 %.decomposed to i64
  %25 = mul nsw i64 %1, %24
  %26 = add nsw i64 %23, -1
  %27 = mul nsw i64 %15, %26
  %28 = getelementptr { double, double }, ptr %loadgep_6, i64 %27
  %29 = getelementptr { double, double }, ptr %28, i64 %25
  %30 = mul nsw i64 %3, %24
  %31 = mul nsw i64 %16, %26
  %32 = getelementptr double, ptr %loadgep_8, i64 %31
  %33 = getelementptr double, ptr %32, i64 %30
  %34 = mul nsw i64 %5, %24
  %35 = mul nsw i64 %17, %26
  %36 = getelementptr { double, double }, ptr %loadgep_10, i64 %35
  %37 = getelementptr { double, double }, ptr %36, i64 %34
  br i1 %min.iters.check, label %omp.wsloop.region15.us.preheader, label %vector.body

vector.body:                                      ; preds = %omp_collapsed.body.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %omp_collapsed.body.us ]
  %38 = getelementptr { double, double }, ptr %29, i64 %index
  %wide.vec = load <4 x double>, ptr %38, align 8, !tbaa !66
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec28 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %39 = getelementptr double, ptr %33, i64 %index
  %wide.load = load <2 x double>, ptr %39, align 8, !tbaa !68
  %40 = fmul contract <2 x double> %strided.vec, %wide.load
  %41 = fmul contract <2 x double> %strided.vec28, %wide.load
  %42 = fmul contract <2 x double> %strided.vec, zeroinitializer
  %43 = fadd contract <2 x double> %42, %41
  %44 = fmul contract <2 x double> %strided.vec28, zeroinitializer
  %45 = fsub contract <2 x double> %40, %44
  %interleaved.vec = shufflevector <2 x double> %45, <2 x double> %43, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %38, align 8, !tbaa !66
  %46 = getelementptr { double, double }, ptr %37, i64 %index
  store <4 x double> %interleaved.vec, ptr %46, align 8, !tbaa !70
  %index.next = add nuw i64 %index, 2
  %47 = icmp eq i64 %index.next, %n.vec
  br i1 %47, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us, label %omp.wsloop.region15.us.preheader

omp.wsloop.region15.us.preheader:                 ; preds = %omp_collapsed.body.us, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %omp_collapsed.body.us ], [ %ind.end, %middle.block ]
  br label %omp.wsloop.region15.us

omp.wsloop.region15.us:                           ; preds = %omp.wsloop.region15.us.preheader, %omp.wsloop.region15.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %omp.wsloop.region15.us ], [ %indvars.iv.ph, %omp.wsloop.region15.us.preheader ]
  %48 = add nsw i64 %indvars.iv, -1
  %49 = getelementptr { double, double }, ptr %29, i64 %48
  %.unpack.us = load double, ptr %49, align 8, !tbaa !66
  %.elt17.us = getelementptr inbounds i8, ptr %49, i64 8
  %.unpack18.us = load double, ptr %.elt17.us, align 8, !tbaa !66
  %50 = getelementptr double, ptr %33, i64 %48
  %51 = load double, ptr %50, align 8, !tbaa !68
  %52 = fmul contract double %.unpack.us, %51
  %53 = fmul contract double %.unpack18.us, %51
  %54 = fmul contract double %.unpack.us, 0.000000e+00
  %55 = fadd contract double %54, %53
  %56 = fmul contract double %.unpack18.us, 0.000000e+00
  %57 = fsub contract double %52, %56
  store double %57, ptr %49, align 8, !tbaa !66
  store double %55, ptr %.elt17.us, align 8, !tbaa !66
  %58 = getelementptr { double, double }, ptr %37, i64 %48
  store double %57, ptr %58, align 8, !tbaa !70
  %.repack21.us = getelementptr inbounds i8, ptr %58, i64 8
  store double %55, ptr %.repack21.us, align 8, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %18
  br i1 %exitcond.not, label %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us, label %omp.wsloop.region15.us, !llvm.loop !73

omp.wsloop.region14.omp.wsloop.region16_crit_edge.us: ; preds = %omp.wsloop.region15.us, %middle.block
  %omp_collapsed.next.us = add nuw i32 %omp_collapsed.iv24.us, 1
  %exitcond27.not = icmp eq i32 %omp_collapsed.iv24.us, %reass.sub
  br i1 %exitcond27.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

omp_collapsed.exit:                               ; preds = %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us, %omp_collapsed.body.lr.ph, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num18)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num18)
  ret void
}

define void @compute_initial_conditions_(ptr %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr nocapture readonly %3) local_unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded8 = alloca i64, align 8
  %.reloaded9 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [2048 x double], align 8
  %10 = load i32, ptr %1, align 4, !tbaa !74
  %11 = load i32, ptr %2, align 4, !tbaa !80
  %12 = load i32, ptr %3, align 4, !tbaa !82
  store double 0x41B2B9B0A1000000, ptr %8, align 8, !tbaa !84
  store double 1.000000e+00, ptr %7, align 8, !tbaa !85
  %13 = call contract double @randlc_(ptr nonnull %8, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store double 1.000000e+00, ptr %7, align 8, !tbaa !85
  store double 0x41D2309CE5400000, ptr %5, align 8, !tbaa !91
  store double 1.000000e+00, ptr %6, align 8, !tbaa !91
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %4, %.backedge.i15
  %.06.i14 = phi i32 [ %.0.be.i16, %.backedge.i15 ], [ 16777216, %4 ]
  %14 = and i32 %.06.i14, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %.lr.ph.i13
  %17 = lshr exact i32 %.06.i14, 1
  %18 = call contract double @randlc_(ptr nonnull %5, ptr nonnull %5)
  br label %.backedge.i15

19:                                               ; preds = %.lr.ph.i13
  %20 = call contract double @randlc_(ptr nonnull %6, ptr nonnull %5)
  %21 = add nsw i32 %.06.i14, -1
  br label %.backedge.i15

.backedge.i15:                                    ; preds = %19, %16
  %.0.be.i16 = phi i32 [ %17, %16 ], [ %21, %19 ]
  %22 = icmp sgt i32 %.0.be.i16, 1
  br i1 %22, label %.lr.ph.i13, label %ipow46_.exit17

ipow46_.exit17:                                   ; preds = %.backedge.i15
  %23 = call contract double @randlc_(ptr nonnull %6, ptr nonnull %5)
  %24 = load double, ptr %6, align 8, !tbaa !91
  store double %24, ptr %7, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %25 = load double, ptr %8, align 8, !tbaa !84
  store double %25, ptr %9, align 8, !tbaa !84
  %26 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), align 4, !tbaa !92
  %invariant.gep = getelementptr i8, ptr %9, i64 -8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %.lr.ph.preheader, label %omp_parallel

.lr.ph.preheader:                                 ; preds = %ipow46_.exit17
  %28 = zext nneg i32 %26 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %29 = call contract double @randlc_(ptr nonnull %8, ptr nonnull %7)
  %30 = load double, ptr %8, align 8, !tbaa !84
  %gep = getelementptr double, ptr %invariant.gep, i64 %indvars.iv
  store double %30, ptr %gep, align 8, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %28
  br i1 %exitcond.not, label %omp_parallel, label %.lr.ph

omp_parallel:                                     ; preds = %.lr.ph, %ipow46_.exit17
  %31 = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %32 = zext nneg i32 %31 to i64
  %33 = call i32 @llvm.smax.i32(i32 %11, i32 0)
  %34 = zext nneg i32 %33 to i64
  %35 = add i32 %10, 1
  %36 = call i32 @llvm.smax.i32(i32 %35, i32 0)
  %37 = zext nneg i32 %36 to i64
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %37, ptr %.reloaded, align 8
  store i64 %34, ptr %.reloaded8, align 8
  store i64 %32, ptr %.reloaded9, align 8
  store ptr %.reloaded, ptr %structArg, align 8
  %gep_.reloaded8 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %.reloaded8, ptr %gep_.reloaded8, align 8
  %gep_.reloaded9 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %.reloaded9, ptr %gep_.reloaded9, align 8
  %gep_ = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %9, ptr %gep_, align 8
  %gep_10 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %0, ptr %gep_10, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @compute_initial_conditions_..omp_par, ptr nonnull %structArg)
  ret void
}

; Function Attrs: nounwind
define internal void @compute_initial_conditions_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_.reloaded = load ptr, ptr %0, align 8
  %gep_.reloaded8 = getelementptr i8, ptr %0, i64 8
  %loadgep_.reloaded8 = load ptr, ptr %gep_.reloaded8, align 8
  %gep_ = getelementptr i8, ptr %0, i64 24
  %loadgep_ = load ptr, ptr %gep_, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 32
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %1 = load i64, ptr %loadgep_.reloaded, align 8
  %2 = load i64, ptr %loadgep_.reloaded8, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), align 4, !tbaa !92
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  store i32 0, ptr %p.lowerbound, align 4
  %7 = add nsw i32 %omp_loop.tripcount, -1
  store i32 %7, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num7 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num7, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %8 = load i32, ptr %p.lowerbound, align 4
  %9 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %9, %8
  %factor.op.mul6 = mul i64 %2, %1
  %omp_loop.cmp7.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp7.not, label %omp_loop.exit, label %omp_loop.body.lr.ph

omp_loop.body.lr.ph:                              ; preds = %omp.par.entry
  %10 = add i32 %8, 1
  br label %omp_loop.body

omp_loop.exit:                                    ; preds = %omp.wsloop.region5, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num7)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num7)
  ret void

omp_loop.body:                                    ; preds = %omp_loop.body.lr.ph, %omp.wsloop.region5
  %omp_loop.iv8 = phi i32 [ 0, %omp_loop.body.lr.ph ], [ %omp_loop.next, %omp.wsloop.region5 ]
  %11 = add i32 %10, %omp_loop.iv8
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, -1
  %14 = getelementptr double, ptr %loadgep_, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !84
  store double %15, ptr %5, align 8, !tbaa !84
  %16 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), align 4, !tbaa !92
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %omp.wsloop.region4.lr.ph, label %omp.wsloop.region5

omp.wsloop.region4.lr.ph:                         ; preds = %omp_loop.body
  %factor.op.mul = mul i64 %factor.op.mul6, %13
  %18 = getelementptr { double, double }, ptr %loadgep_2, i64 %factor.op.mul
  %narrow = add nuw i32 %16, 1
  %19 = zext i32 %narrow to i64
  br label %omp.wsloop.region4

omp.wsloop.region5:                               ; preds = %omp.wsloop.region4, %omp_loop.body
  %omp_loop.next = add nuw i32 %omp_loop.iv8, 1
  %exitcond10.not = icmp eq i32 %omp_loop.iv8, %reass.sub
  br i1 %exitcond10.not, label %omp_loop.exit, label %omp_loop.body

omp.wsloop.region4:                               ; preds = %omp.wsloop.region4.lr.ph, %omp.wsloop.region4
  %indvars.iv = phi i64 [ 1, %omp.wsloop.region4.lr.ph ], [ %indvars.iv.next, %omp.wsloop.region4 ]
  %20 = add nsw i64 %indvars.iv, -1
  %21 = mul nsw i64 %20, %1
  %22 = getelementptr { double, double }, ptr %18, i64 %21
  store i32 8192, ptr %4, align 4, !tbaa !84
  store double 0x41D2309CE5400000, ptr %3, align 8, !tbaa !84
  call void @vranlc_(ptr nonnull %4, ptr nonnull %5, ptr nonnull %3, ptr %22) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %19
  br i1 %exitcond.not, label %omp.wsloop.region5, label %omp.wsloop.region4
}

define void @ipow46_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture writeonly %2) local_unnamed_addr #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double 1.000000e+00, ptr %2, align 8, !tbaa !85
  %6 = load i32, ptr %1, align 4, !tbaa !95
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = load double, ptr %0, align 8, !tbaa !97
  store double %9, ptr %4, align 8, !tbaa !91
  store double 1.000000e+00, ptr %5, align 8, !tbaa !91
  %10 = icmp sgt i32 %6, 1
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %8, %.backedge
  %.06 = phi i32 [ %.0.be, %.backedge ], [ %6, %8 ]
  %11 = and i32 %.06, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %.lr.ph
  %14 = lshr exact i32 %.06, 1
  %15 = call contract double @randlc_(ptr nonnull %4, ptr nonnull %4)
  br label %.backedge

16:                                               ; preds = %.lr.ph
  %17 = call contract double @randlc_(ptr nonnull %5, ptr nonnull %4)
  %18 = add nsw i32 %.06, -1
  br label %.backedge

.backedge:                                        ; preds = %16, %13
  %.0.be = phi i32 [ %14, %13 ], [ %18, %16 ]
  %19 = icmp sgt i32 %.0.be, 1
  br i1 %19, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %8
  %20 = call contract double @randlc_(ptr nonnull %5, ptr nonnull %4)
  %21 = load double, ptr %5, align 8, !tbaa !91
  store double %21, ptr %2, align 8, !tbaa !85
  br label %22

22:                                               ; preds = %._crit_edge, %3
  ret void
}

define void @setup_() local_unnamed_addr #0 {
  store i32 0, ptr @_QMft_dataEdebug, align 4, !tbaa !99
  tail call void @check_timer_flag_(ptr nonnull @_QMft_dataEtimers_enabled)
  %1 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX85102b32e0ac3e984da09d954ace518b, i64 66, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 334)
  %2 = tail call i32 @_FortranAioEndIoStatement(ptr %1)
  store i32 25, ptr @_QMft_dataEniter, align 4, !tbaa !105
  %3 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXc267696b5bcdf54351b18244b9f7fa43, i64 49, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 338)
  %4 = tail call i1 @_FortranAioOutputInteger32(ptr %3, i32 4096)
  %5 = tail call i1 @_FortranAioOutputInteger32(ptr %3, i32 2048)
  %6 = tail call i1 @_FortranAioOutputInteger32(ptr %3, i32 2048)
  %7 = tail call i32 @_FortranAioEndIoStatement(ptr %3)
  %8 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXa963f07a6dea1ec01ba1c54badeb65d0, i64 38, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 339)
  %9 = load i32, ptr @_QMft_dataEniter, align 4, !tbaa !105
  %10 = tail call i1 @_FortranAioOutputInteger32(ptr %8, i32 %9)
  %11 = tail call i32 @_FortranAioEndIoStatement(ptr %8)
  %12 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXc8c816e7d078dd1ad35ebfc1f2802448, i64 38, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 340)
  %13 = tail call i32 @omp_get_max_threads_()
  %14 = tail call i1 @_FortranAioOutputInteger32(ptr %12, i32 %13)
  %15 = tail call i32 @_FortranAioEndIoStatement(ptr %12)
  %16 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 341)
  %17 = tail call i32 @_FortranAioEndIoStatement(ptr %16)
  store i32 4096, ptr @_QMft_dataEdims, align 4, !tbaa !107
  store i32 2048, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), align 4, !tbaa !107
  store i32 2048, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), align 4, !tbaa !107
  store i32 32, ptr @_QMft_dataEfftblock, align 4, !tbaa !109
  store i32 34, ptr @_QMft_dataEfftblockpad, align 4, !tbaa !111
  ret void
}

; Function Attrs: nounwind
define void @compute_indexmap_(ptr %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr nocapture readonly %3) local_unnamed_addr #1 {
entry:
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded19 = alloca i64, align 8
  %.reloaded20 = alloca i64, align 8
  %4 = alloca double, align 8
  %5 = load i32, ptr %1, align 4, !tbaa !20
  %6 = add i32 %5, 1
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = zext nneg i32 %7 to i64
  %9 = load i32, ptr %2, align 4, !tbaa !26
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %11 = zext nneg i32 %10 to i64
  %12 = load i32, ptr %3, align 4, !tbaa !28
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %14 = zext nneg i32 %13 to i64
  store double 0xBF04B2B4199E149A, ptr %4, align 8, !tbaa !30
  %omp_global_thread_num = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %8, ptr %.reloaded, align 8
  store i64 %11, ptr %.reloaded19, align 8
  store i64 %14, ptr %.reloaded20, align 8
  store ptr %.reloaded, ptr %structArg, align 8
  %gep_.reloaded19 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %.reloaded19, ptr %gep_.reloaded19, align 8
  %gep_.reloaded20 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %.reloaded20, ptr %gep_.reloaded20, align 8
  %gep_ = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %4, ptr %gep_, align 8
  %gep_21 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %0, ptr %gep_21, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @compute_indexmap_..omp_par, ptr nonnull %structArg)
  ret void
}

; Function Attrs: nounwind
define internal void @compute_indexmap_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_.reloaded = load ptr, ptr %0, align 8
  %gep_.reloaded19 = getelementptr i8, ptr %0, i64 8
  %loadgep_.reloaded19 = load ptr, ptr %gep_.reloaded19, align 8
  %gep_ = getelementptr i8, ptr %0, i64 24
  %loadgep_ = load ptr, ptr %gep_, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 32
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %1 = load i64, ptr %loadgep_.reloaded, align 8
  %2 = load i64, ptr %loadgep_.reloaded19, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %3 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), align 4, !tbaa !113
  %4 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), align 4, !tbaa !113
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %omp_loop.tripcount2 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %5 = mul nuw i32 %omp_loop.tripcount2, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num18 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num18, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %7 = load i32, ptr %p.lowerbound, align 4
  %8 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %8, %7
  %omp_collapsed.cmp14.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp14.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %9 = load i32, ptr @_QMft_dataEdims, align 4, !tbaa !113
  %10 = icmp sgt i32 %9, 0
  %11 = mul nsw i64 %2, %1
  br i1 %10, label %omp_collapsed.body.us.preheader, label %omp_collapsed.exit

omp_collapsed.body.us.preheader:                  ; preds = %omp_collapsed.body.lr.ph
  %12 = zext nneg i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %scevgep = getelementptr i8, ptr %loadgep_2, i64 %13
  %14 = shl i64 %2, 3
  %15 = zext nneg i32 %omp_loop.tripcount2 to i64
  %16 = shl nuw nsw i64 %15, 3
  %scevgep20 = getelementptr i8, ptr %loadgep_, i64 8
  %min.iters.check = icmp ult i32 %9, 8
  %n.vec = and i64 %12, 2147483646
  %ind.end = or i64 %12, 1
  %cmp.n = icmp eq i64 %n.vec, %12
  br label %omp_collapsed.body.us

omp_collapsed.body.us:                            ; preds = %omp_collapsed.body.us.preheader, %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us
  %omp_collapsed.iv15.us = phi i32 [ %omp_collapsed.next.us, %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us ], [ 0, %omp_collapsed.body.us.preheader ]
  %17 = add i32 %omp_collapsed.iv15.us, %7
  %.frozen = freeze i32 %17
  %omp_loop.tripcount2.frozen = freeze i32 %omp_loop.tripcount2
  %18 = udiv i32 %.frozen, %omp_loop.tripcount2.frozen
  %19 = mul i32 %18, %omp_loop.tripcount2.frozen
  %.decomposed = sub i32 %.frozen, %19
  %20 = add i32 %18, 1
  %21 = add i32 %18, 1024
  %22 = srem i32 %21, 2048
  %23 = add nsw i32 %22, -1024
  %24 = mul nsw i32 %23, %23
  %25 = add nuw i32 %.decomposed, 1024
  %26 = srem i32 %25, 2048
  %27 = add nsw i32 %26, -1024
  %28 = mul nsw i32 %27, %27
  %29 = add nuw nsw i32 %24, %28
  %30 = sext i32 %20 to i64
  %31 = zext nneg i32 %.decomposed to i64
  %32 = mul nsw i64 %1, %31
  %33 = add nsw i64 %30, -1
  %34 = mul nsw i64 %11, %33
  %35 = getelementptr double, ptr %loadgep_2, i64 %34
  %36 = getelementptr double, ptr %35, i64 %32
  %invariant.gep.us = getelementptr i8, ptr %36, i64 -8
  br i1 %min.iters.check, label %omp.wsloop.region15.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %omp_collapsed.body.us
  %37 = add i32 %7, %omp_collapsed.iv15.us
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = mul i64 %14, %33
  %41 = add i64 %40, %39
  %42 = udiv i64 %38, %15
  %43 = mul i64 %16, %42
  %44 = sub i64 %41, %43
  %45 = mul i64 %1, %44
  %scevgep19 = getelementptr i8, ptr %scevgep, i64 %45
  %bound0 = icmp ult ptr %36, %scevgep20
  %bound1 = icmp ult ptr %loadgep_, %scevgep19
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %omp.wsloop.region15.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %29, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %46 = load double, ptr %loadgep_, align 8, !tbaa !30, !alias.scope !116
  %broadcast.splatinsert21 = insertelement <2 x double> poison, double %46, i64 0
  %broadcast.splat22 = shufflevector <2 x double> %broadcast.splatinsert21, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %47 = add <2 x i32> %vec.ind, <i32 2047, i32 2047>
  %48 = srem <2 x i32> %47, <i32 4096, i32 4096>
  %49 = add nsw <2 x i32> %48, <i32 -2048, i32 -2048>
  %50 = mul nsw <2 x i32> %49, %49
  %51 = add nuw nsw <2 x i32> %broadcast.splat, %50
  %52 = sitofp <2 x i32> %51 to <2 x double>
  %53 = fmul contract <2 x double> %broadcast.splat22, %52
  %54 = call contract <2 x double> @llvm.exp.v2f64(<2 x double> %53)
  %55 = getelementptr double, ptr %invariant.gep.us, i64 %offset.idx
  store <2 x double> %54, ptr %55, align 8, !tbaa !119, !alias.scope !121, !noalias !116
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, <i32 2, i32 2>
  %56 = icmp eq i64 %index.next, %n.vec
  br i1 %56, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us, label %omp.wsloop.region15.us.preheader

omp.wsloop.region15.us.preheader:                 ; preds = %vector.memcheck, %omp_collapsed.body.us, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %omp_collapsed.body.us ], [ %ind.end, %middle.block ]
  br label %omp.wsloop.region15.us

omp.wsloop.region15.us:                           ; preds = %omp.wsloop.region15.us.preheader, %omp.wsloop.region15.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %omp.wsloop.region15.us ], [ %indvars.iv.ph, %omp.wsloop.region15.us.preheader ]
  %57 = trunc i64 %indvars.iv to i32
  %58 = add i32 %57, 2047
  %59 = srem i32 %58, 4096
  %60 = add nsw i32 %59, -2048
  %61 = load double, ptr %loadgep_, align 8, !tbaa !30
  %62 = mul nsw i32 %60, %60
  %63 = add nuw nsw i32 %29, %62
  %64 = sitofp i32 %63 to double
  %65 = fmul contract double %61, %64
  %66 = call contract double @llvm.exp.f64(double %65)
  %gep.us = getelementptr double, ptr %invariant.gep.us, i64 %indvars.iv
  store double %66, ptr %gep.us, align 8, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %12
  br i1 %exitcond.not, label %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us, label %omp.wsloop.region15.us, !llvm.loop !124

omp.wsloop.region14.omp.wsloop.region16_crit_edge.us: ; preds = %omp.wsloop.region15.us, %middle.block
  %omp_collapsed.next.us = add i32 %omp_collapsed.iv15.us, 1
  %exitcond18.not = icmp eq i32 %omp_collapsed.iv15.us, %reass.sub
  br i1 %exitcond18.not, label %omp_collapsed.exit, label %omp_collapsed.body.us

omp_collapsed.exit:                               ; preds = %omp.wsloop.region14.omp.wsloop.region16_crit_edge.us, %omp_collapsed.body.lr.ph, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num18)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num18)
  ret void
}

define void @print_timers_() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, ptr %1, align 4, !tbaa !125
  %3 = call contract double @timer_read_(ptr nonnull %1)
  %4 = fcmp contract ugt double %3, 0.000000e+00
  %.0 = select i1 %4, double %3, double 1.000000e+00
  store i32 1, ptr %2, align 4, !tbaa !125
  %5 = call contract double @timer_read_(ptr nonnull %2)
  %6 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3888eaff8ece5bfb29b8d7929fca1d13, i64 54, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 458)
  %7 = load i32, ptr %2, align 4, !tbaa !125
  %8 = call i1 @_FortranAioOutputInteger32(ptr %6, i32 %7)
  %9 = load i32, ptr %2, align 4, !tbaa !125
  %10 = sext i32 %9 to i64
  %gep = getelementptr [25 x i8], ptr getelementptr ([8 x [25 x i8]], ptr @_QFprint_timersEtstrings, i64 -1, i64 7, i64 0), i64 %10
  %11 = call i1 @_FortranAioOutputAscii(ptr %6, ptr %gep, i64 25)
  %12 = call i1 @_FortranAioOutputReal64(ptr %6, double %5)
  %13 = fmul contract double %5, 1.000000e+02
  %14 = fdiv contract double %13, %.0
  %15 = call i1 @_FortranAioOutputReal64(ptr %6, double %14)
  %16 = call i32 @_FortranAioEndIoStatement(ptr %6)
  %17 = load i32, ptr %2, align 4, !tbaa !125
  %18 = add i32 %17, 1
  store i32 %18, ptr %2, align 4, !tbaa !125
  %19 = call contract double @timer_read_(ptr nonnull %2)
  %20 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3888eaff8ece5bfb29b8d7929fca1d13, i64 54, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 458)
  %21 = load i32, ptr %2, align 4, !tbaa !125
  %22 = call i1 @_FortranAioOutputInteger32(ptr %20, i32 %21)
  %23 = load i32, ptr %2, align 4, !tbaa !125
  %24 = sext i32 %23 to i64
  %gep.1 = getelementptr [25 x i8], ptr getelementptr ([8 x [25 x i8]], ptr @_QFprint_timersEtstrings, i64 -1, i64 7, i64 0), i64 %24
  %25 = call i1 @_FortranAioOutputAscii(ptr %20, ptr %gep.1, i64 25)
  %26 = call i1 @_FortranAioOutputReal64(ptr %20, double %19)
  %27 = fmul contract double %19, 1.000000e+02
  %28 = fdiv contract double %27, %.0
  %29 = call i1 @_FortranAioOutputReal64(ptr %20, double %28)
  %30 = call i32 @_FortranAioEndIoStatement(ptr %20)
  %31 = load i32, ptr %2, align 4, !tbaa !125
  %32 = add i32 %31, 1
  store i32 %32, ptr %2, align 4, !tbaa !125
  %33 = call contract double @timer_read_(ptr nonnull %2)
  %34 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3888eaff8ece5bfb29b8d7929fca1d13, i64 54, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 458)
  %35 = load i32, ptr %2, align 4, !tbaa !125
  %36 = call i1 @_FortranAioOutputInteger32(ptr %34, i32 %35)
  %37 = load i32, ptr %2, align 4, !tbaa !125
  %38 = sext i32 %37 to i64
  %gep.2 = getelementptr [25 x i8], ptr getelementptr ([8 x [25 x i8]], ptr @_QFprint_timersEtstrings, i64 -1, i64 7, i64 0), i64 %38
  %39 = call i1 @_FortranAioOutputAscii(ptr %34, ptr %gep.2, i64 25)
  %40 = call i1 @_FortranAioOutputReal64(ptr %34, double %33)
  %41 = fmul contract double %33, 1.000000e+02
  %42 = fdiv contract double %41, %.0
  %43 = call i1 @_FortranAioOutputReal64(ptr %34, double %42)
  %44 = call i32 @_FortranAioEndIoStatement(ptr %34)
  %45 = load i32, ptr %2, align 4, !tbaa !125
  %46 = add i32 %45, 1
  store i32 %46, ptr %2, align 4, !tbaa !125
  %47 = call contract double @timer_read_(ptr nonnull %2)
  %48 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3888eaff8ece5bfb29b8d7929fca1d13, i64 54, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 458)
  %49 = load i32, ptr %2, align 4, !tbaa !125
  %50 = call i1 @_FortranAioOutputInteger32(ptr %48, i32 %49)
  %51 = load i32, ptr %2, align 4, !tbaa !125
  %52 = sext i32 %51 to i64
  %gep.3 = getelementptr [25 x i8], ptr getelementptr ([8 x [25 x i8]], ptr @_QFprint_timersEtstrings, i64 -1, i64 7, i64 0), i64 %52
  %53 = call i1 @_FortranAioOutputAscii(ptr %48, ptr %gep.3, i64 25)
  %54 = call i1 @_FortranAioOutputReal64(ptr %48, double %47)
  %55 = fmul contract double %47, 1.000000e+02
  %56 = fdiv contract double %55, %.0
  %57 = call i1 @_FortranAioOutputReal64(ptr %48, double %56)
  %58 = call i32 @_FortranAioEndIoStatement(ptr %48)
  %59 = load i32, ptr %2, align 4, !tbaa !125
  %60 = add i32 %59, 1
  store i32 %60, ptr %2, align 4, !tbaa !125
  %61 = call contract double @timer_read_(ptr nonnull %2)
  %62 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3888eaff8ece5bfb29b8d7929fca1d13, i64 54, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 458)
  %63 = load i32, ptr %2, align 4, !tbaa !125
  %64 = call i1 @_FortranAioOutputInteger32(ptr %62, i32 %63)
  %65 = load i32, ptr %2, align 4, !tbaa !125
  %66 = sext i32 %65 to i64
  %gep.4 = getelementptr [25 x i8], ptr getelementptr ([8 x [25 x i8]], ptr @_QFprint_timersEtstrings, i64 -1, i64 7, i64 0), i64 %66
  %67 = call i1 @_FortranAioOutputAscii(ptr %62, ptr %gep.4, i64 25)
  %68 = call i1 @_FortranAioOutputReal64(ptr %62, double %61)
  %69 = fmul contract double %61, 1.000000e+02
  %70 = fdiv contract double %69, %.0
  %71 = call i1 @_FortranAioOutputReal64(ptr %62, double %70)
  %72 = call i32 @_FortranAioEndIoStatement(ptr %62)
  %73 = load i32, ptr %2, align 4, !tbaa !125
  %74 = add i32 %73, 1
  store i32 %74, ptr %2, align 4, !tbaa !125
  %75 = call contract double @timer_read_(ptr nonnull %2)
  %76 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3888eaff8ece5bfb29b8d7929fca1d13, i64 54, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 458)
  %77 = load i32, ptr %2, align 4, !tbaa !125
  %78 = call i1 @_FortranAioOutputInteger32(ptr %76, i32 %77)
  %79 = load i32, ptr %2, align 4, !tbaa !125
  %80 = sext i32 %79 to i64
  %gep.5 = getelementptr [25 x i8], ptr getelementptr ([8 x [25 x i8]], ptr @_QFprint_timersEtstrings, i64 -1, i64 7, i64 0), i64 %80
  %81 = call i1 @_FortranAioOutputAscii(ptr %76, ptr %gep.5, i64 25)
  %82 = call i1 @_FortranAioOutputReal64(ptr %76, double %75)
  %83 = fmul contract double %75, 1.000000e+02
  %84 = fdiv contract double %83, %.0
  %85 = call i1 @_FortranAioOutputReal64(ptr %76, double %84)
  %86 = call i32 @_FortranAioEndIoStatement(ptr %76)
  %87 = load i32, ptr %2, align 4, !tbaa !125
  %88 = add i32 %87, 1
  store i32 %88, ptr %2, align 4, !tbaa !125
  %89 = call contract double @timer_read_(ptr nonnull %2)
  %90 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3888eaff8ece5bfb29b8d7929fca1d13, i64 54, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 458)
  %91 = load i32, ptr %2, align 4, !tbaa !125
  %92 = call i1 @_FortranAioOutputInteger32(ptr %90, i32 %91)
  %93 = load i32, ptr %2, align 4, !tbaa !125
  %94 = sext i32 %93 to i64
  %gep.6 = getelementptr [25 x i8], ptr getelementptr ([8 x [25 x i8]], ptr @_QFprint_timersEtstrings, i64 -1, i64 7, i64 0), i64 %94
  %95 = call i1 @_FortranAioOutputAscii(ptr %90, ptr %gep.6, i64 25)
  %96 = call i1 @_FortranAioOutputReal64(ptr %90, double %89)
  %97 = fmul contract double %89, 1.000000e+02
  %98 = fdiv contract double %97, %.0
  %99 = call i1 @_FortranAioOutputReal64(ptr %90, double %98)
  %100 = call i32 @_FortranAioEndIoStatement(ptr %90)
  %101 = load i32, ptr %2, align 4, !tbaa !125
  %102 = add i32 %101, 1
  store i32 %102, ptr %2, align 4, !tbaa !125
  %103 = call contract double @timer_read_(ptr nonnull %2)
  %104 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3888eaff8ece5bfb29b8d7929fca1d13, i64 54, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 458)
  %105 = load i32, ptr %2, align 4, !tbaa !125
  %106 = call i1 @_FortranAioOutputInteger32(ptr %104, i32 %105)
  %107 = load i32, ptr %2, align 4, !tbaa !125
  %108 = sext i32 %107 to i64
  %gep.7 = getelementptr [25 x i8], ptr getelementptr ([8 x [25 x i8]], ptr @_QFprint_timersEtstrings, i64 -1, i64 7, i64 0), i64 %108
  %109 = call i1 @_FortranAioOutputAscii(ptr %104, ptr %gep.7, i64 25)
  %110 = call i1 @_FortranAioOutputReal64(ptr %104, double %103)
  %111 = fmul contract double %103, 1.000000e+02
  %112 = fdiv contract double %111, %.0
  %113 = call i1 @_FortranAioOutputReal64(ptr %104, double %112)
  %114 = call i32 @_FortranAioEndIoStatement(ptr %104)
  ret void
}

define void @fft_(ptr nocapture readonly %0, ptr %1, ptr %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, ptr %0, align 4, !tbaa !129
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, ptr %9, align 4, !tbaa !135
  call void @cffts1_(ptr nonnull %9, ptr nonnull @_QMft_dataEdims, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), ptr %1, ptr %1, ptr nonnull poison, ptr nonnull poison)
  store i32 1, ptr %8, align 4, !tbaa !135
  call void @cffts2_(ptr nonnull %8, ptr nonnull @_QMft_dataEdims, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), ptr %1, ptr %1, ptr nonnull poison, ptr nonnull poison)
  store i32 1, ptr %7, align 4, !tbaa !135
  call void @cffts3_(ptr nonnull %7, ptr nonnull @_QMft_dataEdims, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), ptr %1, ptr %2, ptr nonnull poison, ptr nonnull poison)
  br label %14

13:                                               ; preds = %3
  store i32 -1, ptr %6, align 4, !tbaa !135
  call void @cffts3_(ptr nonnull %6, ptr nonnull @_QMft_dataEdims, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), ptr %1, ptr %1, ptr nonnull poison, ptr nonnull poison)
  store i32 -1, ptr %5, align 4, !tbaa !135
  call void @cffts2_(ptr nonnull %5, ptr nonnull @_QMft_dataEdims, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), ptr %1, ptr %1, ptr nonnull poison, ptr nonnull poison)
  store i32 -1, ptr %4, align 4, !tbaa !135
  call void @cffts1_(ptr nonnull %4, ptr nonnull @_QMft_dataEdims, ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 1), ptr nonnull getelementptr inbounds ([3 x i32], ptr @_QMft_dataEdims, i64 0, i64 2), ptr %1, ptr %2, ptr nonnull poison, ptr nonnull poison)
  br label %14

14:                                               ; preds = %12, %13
  ret void
}

define void @cffts1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr nocapture readnone %6, ptr nocapture readnone %7) local_unnamed_addr #0 {
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded28 = alloca i64, align 8
  %.reloaded29 = alloca i64, align 8
  %.reloaded30 = alloca i64, align 8
  %.reloaded31 = alloca i64, align 8
  %.reloaded32 = alloca i64, align 8
  %.reloaded33 = alloca i64, align 8
  %.reloaded34 = alloca i64, align 8
  %.reloaded35 = alloca i64, align 8
  %.reloaded36 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, ptr %1, align 4
  %13 = add i32 %12, 1
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = zext nneg i32 %14 to i64
  %16 = load i32, ptr %2, align 4, !tbaa !136
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %18 = zext nneg i32 %17 to i64
  %19 = load i32, ptr %3, align 4, !tbaa !142
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0)
  %21 = zext nneg i32 %20 to i64
  %22 = load i32, ptr @_QMft_dataEfftblockpad, align 4, !tbaa !144
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = zext nneg i32 %23 to i64
  %25 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %26 = zext nneg i32 %25 to i64
  %27 = icmp eq i32 %12, 1
  br i1 %27, label %ilog2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %8
  %28 = icmp sgt i32 %12, 2
  br i1 %28, label %.lr.ph.i, label %ilog2_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.08.i = phi i32 [ %29, %.lr.ph.i ], [ 2, %.preheader.i ]
  %.057.i = phi i32 [ %30, %.lr.ph.i ], [ 1, %.preheader.i ]
  %29 = shl i32 %.08.i, 1
  %30 = add i32 %.057.i, 1
  %31 = icmp slt i32 %29, %12
  br i1 %31, label %.lr.ph.i, label %ilog2_.exit

ilog2_.exit:                                      ; preds = %.lr.ph.i, %8, %.preheader.i
  %.06.i = phi i32 [ 0, %8 ], [ 1, %.preheader.i ], [ %30, %.lr.ph.i ]
  store i32 %.06.i, ptr %11, align 4, !tbaa !147
  %32 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !148
  %.not = icmp eq i32 %32, 0
  br i1 %.not, label %omp_parallel, label %33

33:                                               ; preds = %ilog2_.exit
  store i32 6, ptr %10, align 4, !tbaa !147
  call void @timer_start_(ptr nonnull %10)
  br label %omp_parallel

omp_parallel:                                     ; preds = %33, %ilog2_.exit
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %24, ptr %.reloaded, align 8
  store i64 %26, ptr %.reloaded28, align 8
  store i64 %24, ptr %.reloaded29, align 8
  store i64 %26, ptr %.reloaded30, align 8
  store i64 %15, ptr %.reloaded31, align 8
  store i64 %18, ptr %.reloaded32, align 8
  store i64 %21, ptr %.reloaded33, align 8
  store i64 %15, ptr %.reloaded34, align 8
  store i64 %18, ptr %.reloaded35, align 8
  store i64 %21, ptr %.reloaded36, align 8
  store ptr %.reloaded, ptr %structArg, align 8
  %gep_.reloaded28 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %.reloaded28, ptr %gep_.reloaded28, align 8
  %gep_.reloaded29 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %.reloaded29, ptr %gep_.reloaded29, align 8
  %gep_.reloaded30 = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %.reloaded30, ptr %gep_.reloaded30, align 8
  %gep_.reloaded31 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %.reloaded31, ptr %gep_.reloaded31, align 8
  %gep_.reloaded32 = getelementptr inbounds i8, ptr %structArg, i64 40
  store ptr %.reloaded32, ptr %gep_.reloaded32, align 8
  %gep_.reloaded33 = getelementptr inbounds i8, ptr %structArg, i64 48
  store ptr %.reloaded33, ptr %gep_.reloaded33, align 8
  %gep_.reloaded34 = getelementptr inbounds i8, ptr %structArg, i64 56
  store ptr %.reloaded34, ptr %gep_.reloaded34, align 8
  %gep_.reloaded35 = getelementptr inbounds i8, ptr %structArg, i64 64
  store ptr %.reloaded35, ptr %gep_.reloaded35, align 8
  %gep_.reloaded36 = getelementptr inbounds i8, ptr %structArg, i64 72
  store ptr %.reloaded36, ptr %gep_.reloaded36, align 8
  %gep_ = getelementptr inbounds i8, ptr %structArg, i64 80
  store ptr %3, ptr %gep_, align 8
  %gep_37 = getelementptr inbounds i8, ptr %structArg, i64 88
  store ptr %2, ptr %gep_37, align 8
  %gep_38 = getelementptr inbounds i8, ptr %structArg, i64 96
  store ptr %0, ptr %gep_38, align 8
  %gep_39 = getelementptr inbounds i8, ptr %structArg, i64 104
  store ptr %11, ptr %gep_39, align 8
  %gep_40 = getelementptr inbounds i8, ptr %structArg, i64 112
  store ptr %1, ptr %gep_40, align 8
  %gep_41 = getelementptr inbounds i8, ptr %structArg, i64 120
  store ptr %5, ptr %gep_41, align 8
  %gep_42 = getelementptr inbounds i8, ptr %structArg, i64 128
  store ptr %4, ptr %gep_42, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @cffts1_..omp_par, ptr nonnull %structArg)
  %34 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !148
  %.not43 = icmp eq i32 %34, 0
  br i1 %.not43, label %36, label %35

35:                                               ; preds = %omp_parallel
  store i32 6, ptr %9, align 4, !tbaa !147
  call void @timer_stop_(ptr nonnull %9)
  br label %36

36:                                               ; preds = %35, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @cffts1_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_.reloaded = load ptr, ptr %0, align 8
  %gep_.reloaded28 = getelementptr i8, ptr %0, i64 8
  %loadgep_.reloaded28 = load ptr, ptr %gep_.reloaded28, align 8
  %gep_.reloaded29 = getelementptr i8, ptr %0, i64 16
  %loadgep_.reloaded29 = load ptr, ptr %gep_.reloaded29, align 8
  %gep_.reloaded30 = getelementptr i8, ptr %0, i64 24
  %loadgep_.reloaded30 = load ptr, ptr %gep_.reloaded30, align 8
  %gep_.reloaded31 = getelementptr i8, ptr %0, i64 32
  %loadgep_.reloaded31 = load ptr, ptr %gep_.reloaded31, align 8
  %gep_.reloaded32 = getelementptr i8, ptr %0, i64 40
  %loadgep_.reloaded32 = load ptr, ptr %gep_.reloaded32, align 8
  %gep_.reloaded34 = getelementptr i8, ptr %0, i64 56
  %loadgep_.reloaded34 = load ptr, ptr %gep_.reloaded34, align 8
  %gep_.reloaded35 = getelementptr i8, ptr %0, i64 64
  %loadgep_.reloaded35 = load ptr, ptr %gep_.reloaded35, align 8
  %gep_ = getelementptr i8, ptr %0, i64 80
  %loadgep_ = load ptr, ptr %gep_, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 88
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %gep_3 = getelementptr i8, ptr %0, i64 96
  %loadgep_4 = load ptr, ptr %gep_3, align 8
  %gep_5 = getelementptr i8, ptr %0, i64 104
  %loadgep_6 = load ptr, ptr %gep_5, align 8
  %gep_7 = getelementptr i8, ptr %0, i64 112
  %loadgep_8 = load ptr, ptr %gep_7, align 8
  %gep_9 = getelementptr i8, ptr %0, i64 120
  %loadgep_10 = load ptr, ptr %gep_9, align 8
  %gep_11 = getelementptr i8, ptr %0, i64 128
  %loadgep_12 = load ptr, ptr %gep_11, align 8
  %1 = load i64, ptr %loadgep_.reloaded, align 8
  %2 = load i64, ptr %loadgep_.reloaded28, align 8
  %3 = load i64, ptr %loadgep_.reloaded29, align 8
  %4 = load i64, ptr %loadgep_.reloaded30, align 8
  %5 = load i64, ptr %loadgep_.reloaded31, align 8
  %6 = load i64, ptr %loadgep_.reloaded32, align 8
  %7 = load i64, ptr %loadgep_.reloaded34, align 8
  %8 = load i64, ptr %loadgep_.reloaded35, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %9 = mul i64 %2, %1
  %10 = alloca { double, double }, i64 %9, align 8
  %11 = mul i64 %4, %3
  %12 = alloca { double, double }, i64 %11, align 8
  %13 = load i32, ptr %loadgep_, align 4, !tbaa !142
  %14 = load i32, ptr %loadgep_2, align 4, !tbaa !136
  %15 = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !150
  %16 = sdiv i32 %14, %15
  %17 = add i32 %16, -1
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %18 = icmp slt i32 %17, 0
  %omp_loop.tripcount2 = select i1 %18, i32 0, i32 %16
  %19 = mul nuw i32 %omp_loop.tripcount2, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num27 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num27, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %21 = load i32, ptr %p.lowerbound, align 4
  %22 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %22, %21
  %omp_collapsed.cmp39.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp39.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %23 = mul nsw i64 %8, %7
  %24 = mul nsw i64 %6, %5
  %.pre = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !150
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp.wsloop.region25, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num27)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num27)
  ret void

omp_collapsed.body:                               ; preds = %omp_collapsed.body.lr.ph, %omp.wsloop.region25
  %25 = phi i32 [ %.pre, %omp_collapsed.body.lr.ph ], [ %50, %omp.wsloop.region25 ]
  %omp_collapsed.iv40 = phi i32 [ 0, %omp_collapsed.body.lr.ph ], [ %omp_collapsed.next, %omp.wsloop.region25 ]
  %26 = add i32 %omp_collapsed.iv40, %21
  %.frozen = freeze i32 %26
  %.frozen58 = freeze i32 %16
  %27 = udiv i32 %.frozen, %.frozen58
  %28 = mul i32 %27, %.frozen58
  %.decomposed = sub i32 %.frozen, %28
  %29 = add i32 %27, 1
  %30 = mul i32 %25, %.decomposed
  %31 = icmp sgt i32 %25, 0
  br i1 %31, label %omp.wsloop.region15.lr.ph, label %omp.wsloop.region19

omp.wsloop.region15.lr.ph:                        ; preds = %omp_collapsed.body
  %32 = load i32, ptr %loadgep_8, align 4, !tbaa !152
  %33 = icmp sgt i32 %32, 0
  %34 = sext i32 %29 to i64
  %35 = add nsw i64 %34, -1
  %36 = mul nsw i64 %23, %35
  %37 = getelementptr { double, double }, ptr %loadgep_12, i64 %36
  br i1 %33, label %omp.wsloop.region15.us.preheader, label %omp.wsloop.region19

omp.wsloop.region15.us.preheader:                 ; preds = %omp.wsloop.region15.lr.ph
  %38 = zext nneg i32 %32 to i64
  %narrow = add nuw i32 %25, 1
  %39 = zext i32 %narrow to i64
  br label %omp.wsloop.region15.us

omp.wsloop.region15.us:                           ; preds = %omp.wsloop.region15.us.preheader, %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us
  %indvars.iv44 = phi i64 [ 1, %omp.wsloop.region15.us.preheader ], [ %indvars.iv.next45, %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us ]
  %40 = trunc nuw nsw i64 %indvars.iv44 to i32
  %41 = add i32 %30, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, -1
  %44 = mul nsw i64 %43, %7
  %45 = getelementptr { double, double }, ptr %37, i64 %44
  %invariant.gep.us = getelementptr { double, double }, ptr %10, i64 %indvars.iv44
  br label %omp.wsloop.region17.us

omp.wsloop.region17.us:                           ; preds = %omp.wsloop.region15.us, %omp.wsloop.region17.us
  %indvars.iv = phi i64 [ 1, %omp.wsloop.region15.us ], [ %indvars.iv.next, %omp.wsloop.region17.us ]
  %46 = add nsw i64 %indvars.iv, -1
  %47 = getelementptr { double, double }, ptr %45, i64 %46
  %.unpack32.us = load double, ptr %47, align 8, !tbaa !154
  %.elt33.us = getelementptr inbounds i8, ptr %47, i64 8
  %.unpack34.us = load double, ptr %.elt33.us, align 8, !tbaa !154
  %48 = mul nsw i64 %46, %1
  %gep.us = getelementptr { double, double }, ptr %invariant.gep.us, i64 %48
  %49 = getelementptr i8, ptr %gep.us, i64 -16
  store double %.unpack32.us, ptr %49, align 8, !tbaa !147
  %.repack35.us = getelementptr i8, ptr %gep.us, i64 -8
  store double %.unpack34.us, ptr %.repack35.us, align 8, !tbaa !147
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %38
  br i1 %exitcond.not, label %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us, label %omp.wsloop.region17.us

omp.wsloop.region16.omp.wsloop.region18_crit_edge.us: ; preds = %omp.wsloop.region17.us
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, %39
  br i1 %exitcond47.not, label %omp.wsloop.region19, label %omp.wsloop.region15.us

omp.wsloop.region19:                              ; preds = %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us, %omp.wsloop.region15.lr.ph, %omp_collapsed.body
  call void @cfftz_(ptr %loadgep_4, ptr %loadgep_6, ptr %loadgep_8, ptr nonnull %10, ptr nonnull %12) #7
  %50 = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !150
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %omp.wsloop.region21.lr.ph, label %omp.wsloop.region25

omp.wsloop.region21.lr.ph:                        ; preds = %omp.wsloop.region19
  %52 = load i32, ptr %loadgep_8, align 4, !tbaa !152
  %53 = icmp sgt i32 %52, 0
  %54 = sext i32 %29 to i64
  %55 = add nsw i64 %54, -1
  %56 = mul nsw i64 %24, %55
  %57 = getelementptr { double, double }, ptr %loadgep_10, i64 %56
  br i1 %53, label %omp.wsloop.region21.us.preheader, label %omp.wsloop.region25

omp.wsloop.region21.us.preheader:                 ; preds = %omp.wsloop.region21.lr.ph
  %58 = zext nneg i32 %52 to i64
  %narrow57 = add nuw i32 %50, 1
  %59 = zext i32 %narrow57 to i64
  br label %omp.wsloop.region21.us

omp.wsloop.region21.us:                           ; preds = %omp.wsloop.region21.us.preheader, %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us
  %indvars.iv52 = phi i64 [ 1, %omp.wsloop.region21.us.preheader ], [ %indvars.iv.next53, %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us ]
  %invariant.gep.us38 = getelementptr { double, double }, ptr %10, i64 %indvars.iv52
  %60 = trunc nuw nsw i64 %indvars.iv52 to i32
  %61 = add i32 %30, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, -1
  %64 = mul nsw i64 %63, %5
  %65 = getelementptr { double, double }, ptr %57, i64 %64
  br label %omp.wsloop.region23.us

omp.wsloop.region23.us:                           ; preds = %omp.wsloop.region21.us, %omp.wsloop.region23.us
  %indvars.iv48 = phi i64 [ 1, %omp.wsloop.region21.us ], [ %indvars.iv.next49, %omp.wsloop.region23.us ]
  %66 = add nsw i64 %indvars.iv48, -1
  %67 = mul nsw i64 %66, %1
  %gep.us37 = getelementptr { double, double }, ptr %invariant.gep.us38, i64 %67
  %68 = getelementptr i8, ptr %gep.us37, i64 -16
  %.unpack.us = load double, ptr %68, align 8, !tbaa !147
  %.elt28.us = getelementptr i8, ptr %gep.us37, i64 -8
  %.unpack29.us = load double, ptr %.elt28.us, align 8, !tbaa !147
  %69 = getelementptr { double, double }, ptr %65, i64 %66
  store double %.unpack.us, ptr %69, align 8, !tbaa !156
  %.repack30.us = getelementptr inbounds i8, ptr %69, i64 8
  store double %.unpack29.us, ptr %.repack30.us, align 8, !tbaa !156
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond51.not = icmp eq i64 %indvars.iv48, %58
  br i1 %exitcond51.not, label %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us, label %omp.wsloop.region23.us

omp.wsloop.region22.omp.wsloop.region24_crit_edge.us: ; preds = %omp.wsloop.region23.us
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, %59
  br i1 %exitcond55.not, label %omp.wsloop.region25, label %omp.wsloop.region21.us

omp.wsloop.region25:                              ; preds = %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us, %omp.wsloop.region21.lr.ph, %omp.wsloop.region19
  %omp_collapsed.next = add nuw i32 %omp_collapsed.iv40, 1
  %exitcond56.not = icmp eq i32 %omp_collapsed.iv40, %reass.sub
  br i1 %exitcond56.not, label %omp_collapsed.exit, label %omp_collapsed.body
}

define void @cffts2_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr nocapture readnone %6, ptr nocapture readnone %7) local_unnamed_addr #0 {
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded28 = alloca i64, align 8
  %.reloaded29 = alloca i64, align 8
  %.reloaded30 = alloca i64, align 8
  %.reloaded31 = alloca i64, align 8
  %.reloaded32 = alloca i64, align 8
  %.reloaded33 = alloca i64, align 8
  %.reloaded34 = alloca i64, align 8
  %.reloaded35 = alloca i64, align 8
  %.reloaded36 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, ptr %1, align 4, !tbaa !158
  %13 = add i32 %12, 1
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = zext nneg i32 %14 to i64
  %16 = load i32, ptr %2, align 4
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %18 = zext nneg i32 %17 to i64
  %19 = load i32, ptr %3, align 4, !tbaa !164
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0)
  %21 = zext nneg i32 %20 to i64
  %22 = load i32, ptr @_QMft_dataEfftblockpad, align 4, !tbaa !166
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = zext nneg i32 %23 to i64
  %25 = icmp eq i32 %16, 1
  br i1 %25, label %ilog2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %8
  %26 = icmp sgt i32 %16, 2
  br i1 %26, label %.lr.ph.i, label %ilog2_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.08.i = phi i32 [ %27, %.lr.ph.i ], [ 2, %.preheader.i ]
  %.057.i = phi i32 [ %28, %.lr.ph.i ], [ 1, %.preheader.i ]
  %27 = shl i32 %.08.i, 1
  %28 = add i32 %.057.i, 1
  %29 = icmp slt i32 %27, %16
  br i1 %29, label %.lr.ph.i, label %ilog2_.exit

ilog2_.exit:                                      ; preds = %.lr.ph.i, %8, %.preheader.i
  %.06.i = phi i32 [ 0, %8 ], [ 1, %.preheader.i ], [ %28, %.lr.ph.i ]
  store i32 %.06.i, ptr %11, align 4, !tbaa !169
  %30 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !170
  %.not = icmp eq i32 %30, 0
  br i1 %.not, label %omp_parallel, label %31

31:                                               ; preds = %ilog2_.exit
  store i32 7, ptr %10, align 4, !tbaa !169
  call void @timer_start_(ptr nonnull %10)
  br label %omp_parallel

omp_parallel:                                     ; preds = %31, %ilog2_.exit
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %24, ptr %.reloaded, align 8
  store i64 %18, ptr %.reloaded28, align 8
  store i64 %24, ptr %.reloaded29, align 8
  store i64 %18, ptr %.reloaded30, align 8
  store i64 %15, ptr %.reloaded31, align 8
  store i64 %18, ptr %.reloaded32, align 8
  store i64 %21, ptr %.reloaded33, align 8
  store i64 %15, ptr %.reloaded34, align 8
  store i64 %18, ptr %.reloaded35, align 8
  store i64 %21, ptr %.reloaded36, align 8
  store ptr %.reloaded, ptr %structArg, align 8
  %gep_.reloaded28 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %.reloaded28, ptr %gep_.reloaded28, align 8
  %gep_.reloaded29 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %.reloaded29, ptr %gep_.reloaded29, align 8
  %gep_.reloaded30 = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %.reloaded30, ptr %gep_.reloaded30, align 8
  %gep_.reloaded31 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %.reloaded31, ptr %gep_.reloaded31, align 8
  %gep_.reloaded32 = getelementptr inbounds i8, ptr %structArg, i64 40
  store ptr %.reloaded32, ptr %gep_.reloaded32, align 8
  %gep_.reloaded33 = getelementptr inbounds i8, ptr %structArg, i64 48
  store ptr %.reloaded33, ptr %gep_.reloaded33, align 8
  %gep_.reloaded34 = getelementptr inbounds i8, ptr %structArg, i64 56
  store ptr %.reloaded34, ptr %gep_.reloaded34, align 8
  %gep_.reloaded35 = getelementptr inbounds i8, ptr %structArg, i64 64
  store ptr %.reloaded35, ptr %gep_.reloaded35, align 8
  %gep_.reloaded36 = getelementptr inbounds i8, ptr %structArg, i64 72
  store ptr %.reloaded36, ptr %gep_.reloaded36, align 8
  %gep_ = getelementptr inbounds i8, ptr %structArg, i64 80
  store ptr %3, ptr %gep_, align 8
  %gep_37 = getelementptr inbounds i8, ptr %structArg, i64 88
  store ptr %1, ptr %gep_37, align 8
  %gep_38 = getelementptr inbounds i8, ptr %structArg, i64 96
  store ptr %2, ptr %gep_38, align 8
  %gep_39 = getelementptr inbounds i8, ptr %structArg, i64 104
  store ptr %0, ptr %gep_39, align 8
  %gep_40 = getelementptr inbounds i8, ptr %structArg, i64 112
  store ptr %11, ptr %gep_40, align 8
  %gep_41 = getelementptr inbounds i8, ptr %structArg, i64 120
  store ptr %5, ptr %gep_41, align 8
  %gep_42 = getelementptr inbounds i8, ptr %structArg, i64 128
  store ptr %4, ptr %gep_42, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @cffts2_..omp_par, ptr nonnull %structArg)
  %32 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !170
  %.not43 = icmp eq i32 %32, 0
  br i1 %.not43, label %34, label %33

33:                                               ; preds = %omp_parallel
  store i32 7, ptr %9, align 4, !tbaa !169
  call void @timer_stop_(ptr nonnull %9)
  br label %34

34:                                               ; preds = %33, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @cffts2_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_.reloaded = load ptr, ptr %0, align 8
  %gep_.reloaded28 = getelementptr i8, ptr %0, i64 8
  %loadgep_.reloaded28 = load ptr, ptr %gep_.reloaded28, align 8
  %gep_.reloaded29 = getelementptr i8, ptr %0, i64 16
  %loadgep_.reloaded29 = load ptr, ptr %gep_.reloaded29, align 8
  %gep_.reloaded30 = getelementptr i8, ptr %0, i64 24
  %loadgep_.reloaded30 = load ptr, ptr %gep_.reloaded30, align 8
  %gep_.reloaded31 = getelementptr i8, ptr %0, i64 32
  %loadgep_.reloaded31 = load ptr, ptr %gep_.reloaded31, align 8
  %gep_.reloaded32 = getelementptr i8, ptr %0, i64 40
  %loadgep_.reloaded32 = load ptr, ptr %gep_.reloaded32, align 8
  %gep_.reloaded34 = getelementptr i8, ptr %0, i64 56
  %loadgep_.reloaded34 = load ptr, ptr %gep_.reloaded34, align 8
  %gep_.reloaded35 = getelementptr i8, ptr %0, i64 64
  %loadgep_.reloaded35 = load ptr, ptr %gep_.reloaded35, align 8
  %gep_ = getelementptr i8, ptr %0, i64 80
  %loadgep_ = load ptr, ptr %gep_, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 88
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %gep_3 = getelementptr i8, ptr %0, i64 96
  %loadgep_4 = load ptr, ptr %gep_3, align 8
  %gep_5 = getelementptr i8, ptr %0, i64 104
  %loadgep_6 = load ptr, ptr %gep_5, align 8
  %gep_7 = getelementptr i8, ptr %0, i64 112
  %loadgep_8 = load ptr, ptr %gep_7, align 8
  %gep_9 = getelementptr i8, ptr %0, i64 120
  %loadgep_10 = load ptr, ptr %gep_9, align 8
  %gep_11 = getelementptr i8, ptr %0, i64 128
  %loadgep_12 = load ptr, ptr %gep_11, align 8
  %1 = load i64, ptr %loadgep_.reloaded, align 8
  %2 = load i64, ptr %loadgep_.reloaded28, align 8
  %3 = load i64, ptr %loadgep_.reloaded29, align 8
  %4 = load i64, ptr %loadgep_.reloaded30, align 8
  %5 = load i64, ptr %loadgep_.reloaded31, align 8
  %6 = load i64, ptr %loadgep_.reloaded32, align 8
  %7 = load i64, ptr %loadgep_.reloaded34, align 8
  %8 = load i64, ptr %loadgep_.reloaded35, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %9 = mul i64 %2, %1
  %10 = alloca { double, double }, i64 %9, align 8
  %11 = mul i64 %4, %3
  %12 = alloca { double, double }, i64 %11, align 8
  %13 = load i32, ptr %loadgep_, align 4, !tbaa !164
  %14 = load i32, ptr %loadgep_2, align 4, !tbaa !158
  %15 = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !172
  %16 = sdiv i32 %14, %15
  %17 = add i32 %16, -1
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %18 = icmp slt i32 %17, 0
  %omp_loop.tripcount2 = select i1 %18, i32 0, i32 %16
  %19 = mul nuw i32 %omp_loop.tripcount2, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num27 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num27, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %21 = load i32, ptr %p.lowerbound, align 4
  %22 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %22, %21
  %omp_collapsed.cmp37.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp37.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %23 = mul nsw i64 %8, %7
  %24 = mul nsw i64 %6, %5
  %.pre = load i32, ptr %loadgep_4, align 4, !tbaa !174
  %25 = mul i64 %6, %5
  %26 = shl i64 %25, 4
  %27 = shl i64 %5, 4
  %invariant.gep115 = getelementptr i8, ptr %loadgep_10, i64 -16
  %invariant.gep117 = getelementptr i8, ptr %loadgep_10, i64 -8
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp.wsloop.region25, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num27)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num27)
  ret void

omp_collapsed.body:                               ; preds = %omp_collapsed.body.lr.ph, %omp.wsloop.region25
  %28 = phi i32 [ %.pre, %omp_collapsed.body.lr.ph ], [ %71, %omp.wsloop.region25 ]
  %omp_collapsed.iv38 = phi i32 [ 0, %omp_collapsed.body.lr.ph ], [ %omp_collapsed.next, %omp.wsloop.region25 ]
  %29 = add i32 %omp_collapsed.iv38, %21
  %.frozen = freeze i32 %29
  %.frozen119 = freeze i32 %16
  %30 = udiv i32 %.frozen, %.frozen119
  %31 = mul i32 %30, %.frozen119
  %.decomposed = sub i32 %.frozen, %31
  %32 = add i32 %30, 1
  %33 = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !172
  %34 = mul i32 %33, %.decomposed
  %35 = icmp sgt i32 %28, 0
  br i1 %35, label %omp.wsloop.region15.lr.ph, label %omp.wsloop.region19

omp.wsloop.region15.lr.ph:                        ; preds = %omp_collapsed.body
  %36 = icmp sgt i32 %33, 0
  %37 = sext i32 %32 to i64
  %38 = add nsw i64 %37, -1
  %39 = mul nsw i64 %23, %38
  %40 = getelementptr { double, double }, ptr %loadgep_12, i64 %39
  br i1 %36, label %omp.wsloop.region15.us.preheader, label %omp.wsloop.region19

omp.wsloop.region15.us.preheader:                 ; preds = %omp.wsloop.region15.lr.ph
  %41 = zext nneg i32 %33 to i64
  %narrow = add nuw i32 %28, 1
  %42 = zext i32 %narrow to i64
  %43 = add nsw i64 %41, -1
  %44 = add i32 %34, 1
  %min.iters.check69 = icmp ult i32 %33, 4
  %45 = trunc nsw i64 %43 to i32
  %46 = add i32 %44, %45
  %47 = icmp slt i32 %46, %44
  %48 = icmp ugt i64 %43, 4294967295
  %49 = or i1 %47, %48
  %n.vec72 = and i64 %41, 2147483644
  %ind.end73 = or disjoint i64 %n.vec72, 1
  %cmp.n75 = icmp eq i64 %n.vec72, %41
  br label %omp.wsloop.region15.us

omp.wsloop.region15.us:                           ; preds = %omp.wsloop.region15.us.preheader, %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us
  %indvars.iv42 = phi i64 [ 1, %omp.wsloop.region15.us.preheader ], [ %indvars.iv.next43, %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us ]
  %50 = add nsw i64 %indvars.iv42, -1
  %51 = mul nsw i64 %50, %7
  %52 = getelementptr { double, double }, ptr %40, i64 %51
  %53 = mul nsw i64 %50, %1
  %54 = getelementptr { double, double }, ptr %10, i64 %53
  %brmerge = select i1 %min.iters.check69, i1 true, i1 %49
  br i1 %brmerge, label %omp.wsloop.region17.us.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %omp.wsloop.region15.us
  %invariant.gep = getelementptr i8, ptr %52, i64 -16
  %invariant.gep89 = getelementptr i8, ptr %52, i64 -16
  %invariant.gep91 = getelementptr i8, ptr %54, i64 -16
  %invariant.gep93 = getelementptr i8, ptr %54, i64 -16
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph70
  %index77 = phi i64 [ 0, %vector.ph70 ], [ %index.next88, %vector.body76 ]
  %offset.idx78 = or disjoint i64 %index77, 1
  %55 = or disjoint i64 %index77, 3
  %56 = trunc i64 %index77 to i32
  %57 = or disjoint i32 %56, 1
  %58 = or disjoint i32 %56, 3
  %59 = add i32 %34, %57
  %60 = add i32 %34, %58
  %61 = sext i32 %59 to i64
  %62 = sext i32 %60 to i64
  %gep = getelementptr { double, double }, ptr %invariant.gep, i64 %61
  %gep90 = getelementptr { double, double }, ptr %invariant.gep89, i64 %62
  %wide.vec80 = load <4 x double>, ptr %gep, align 8, !tbaa !176
  %wide.vec81 = load <4 x double>, ptr %gep90, align 8, !tbaa !176
  %gep92 = getelementptr { double, double }, ptr %invariant.gep91, i64 %offset.idx78
  %gep94 = getelementptr { double, double }, ptr %invariant.gep93, i64 %55
  store <4 x double> %wide.vec80, ptr %gep92, align 8, !tbaa !169
  store <4 x double> %wide.vec81, ptr %gep94, align 8, !tbaa !169
  %index.next88 = add nuw i64 %index77, 4
  %63 = icmp eq i64 %index.next88, %n.vec72
  br i1 %63, label %middle.block67, label %vector.body76, !llvm.loop !178

middle.block67:                                   ; preds = %vector.body76
  br i1 %cmp.n75, label %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us, label %omp.wsloop.region17.us.preheader

omp.wsloop.region17.us.preheader:                 ; preds = %omp.wsloop.region15.us, %middle.block67
  %indvars.iv.ph = phi i64 [ 1, %omp.wsloop.region15.us ], [ %ind.end73, %middle.block67 ]
  br label %omp.wsloop.region17.us

omp.wsloop.region17.us:                           ; preds = %omp.wsloop.region17.us.preheader, %omp.wsloop.region17.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %omp.wsloop.region17.us ], [ %indvars.iv.ph, %omp.wsloop.region17.us.preheader ]
  %64 = trunc nuw nsw i64 %indvars.iv to i32
  %65 = add i32 %34, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr { double, double }, ptr %52, i64 %66
  %68 = getelementptr i8, ptr %67, i64 -16
  %.unpack32.us = load double, ptr %68, align 8, !tbaa !176
  %.elt33.us = getelementptr i8, ptr %67, i64 -8
  %.unpack34.us = load double, ptr %.elt33.us, align 8, !tbaa !176
  %69 = getelementptr { double, double }, ptr %54, i64 %indvars.iv
  %70 = getelementptr i8, ptr %69, i64 -16
  store double %.unpack32.us, ptr %70, align 8, !tbaa !169
  %.repack35.us = getelementptr i8, ptr %69, i64 -8
  store double %.unpack34.us, ptr %.repack35.us, align 8, !tbaa !169
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %41
  br i1 %exitcond.not, label %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us, label %omp.wsloop.region17.us, !llvm.loop !179

omp.wsloop.region16.omp.wsloop.region18_crit_edge.us: ; preds = %omp.wsloop.region17.us, %middle.block67
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next43, %42
  br i1 %exitcond45.not, label %omp.wsloop.region19, label %omp.wsloop.region15.us

omp.wsloop.region19:                              ; preds = %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us, %omp.wsloop.region15.lr.ph, %omp_collapsed.body
  call void @cfftz_(ptr %loadgep_6, ptr %loadgep_8, ptr nonnull %loadgep_4, ptr nonnull %10, ptr nonnull %12) #7
  %71 = load i32, ptr %loadgep_4, align 4, !tbaa !174
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %omp.wsloop.region21.lr.ph, label %omp.wsloop.region25

omp.wsloop.region21.lr.ph:                        ; preds = %omp.wsloop.region19
  %73 = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !172
  %74 = icmp sgt i32 %73, 0
  %75 = sext i32 %32 to i64
  %76 = add nsw i64 %75, -1
  %77 = mul nsw i64 %24, %76
  %78 = getelementptr { double, double }, ptr %loadgep_10, i64 %77
  br i1 %74, label %omp.wsloop.region21.us.preheader, label %omp.wsloop.region25

omp.wsloop.region21.us.preheader:                 ; preds = %omp.wsloop.region21.lr.ph
  %79 = zext nneg i32 %73 to i64
  %narrow55 = add nuw i32 %71, 1
  %80 = zext i32 %narrow55 to i64
  %81 = add nsw i64 %79, -1
  %82 = add i32 %34, 1
  %83 = mul i64 %26, %76
  %min.iters.check = icmp ult i32 %73, 22
  %84 = trunc nsw i64 %81 to i32
  %85 = add i32 %82, %84
  %86 = icmp slt i32 %85, %82
  %87 = icmp ugt i64 %81, 4294967295
  %88 = or i1 %86, %87
  %89 = sext i32 %82 to i64
  %90 = shl nsw i64 %89, 4
  %gep116 = getelementptr i8, ptr %invariant.gep115, i64 %83
  %invariant.gep107 = getelementptr i8, ptr %gep116, i64 %90
  %mul.result = shl nsw i64 %81, 4
  %gep118 = getelementptr i8, ptr %invariant.gep117, i64 %83
  %invariant.gep113 = getelementptr i8, ptr %gep118, i64 %90
  %mul.result58 = shl nsw i64 %81, 4
  %n.vec = and i64 %79, 2147483644
  %ind.end = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %79
  br label %omp.wsloop.region21.us

omp.wsloop.region21.us:                           ; preds = %omp.wsloop.region21.us.preheader, %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us
  %indvar = phi i64 [ 0, %omp.wsloop.region21.us.preheader ], [ %indvar.next, %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us ]
  %indvars.iv50 = phi i64 [ 1, %omp.wsloop.region21.us.preheader ], [ %indvars.iv.next51, %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us ]
  %91 = add nsw i64 %indvars.iv50, -1
  %92 = mul nsw i64 %91, %1
  %93 = getelementptr { double, double }, ptr %10, i64 %92
  %94 = mul nsw i64 %91, %5
  %95 = getelementptr { double, double }, ptr %78, i64 %94
  br i1 %min.iters.check, label %omp.wsloop.region23.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %omp.wsloop.region21.us
  %96 = mul i64 %27, %indvar
  %gep108 = getelementptr i8, ptr %invariant.gep107, i64 %96
  %97 = getelementptr i8, ptr %gep108, i64 %mul.result
  %98 = icmp ult ptr %97, %gep108
  %gep114 = getelementptr i8, ptr %invariant.gep113, i64 %96
  %99 = getelementptr i8, ptr %gep114, i64 %mul.result58
  %100 = icmp ult ptr %99, %gep114
  %101 = or i1 %98, %88
  %102 = or i1 %100, %101
  br i1 %102, label %omp.wsloop.region23.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %invariant.gep95 = getelementptr i8, ptr %93, i64 -16
  %invariant.gep97 = getelementptr i8, ptr %93, i64 -16
  %invariant.gep99 = getelementptr i8, ptr %95, i64 -16
  %invariant.gep101 = getelementptr i8, ptr %95, i64 -16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %103 = or disjoint i64 %index, 3
  %104 = trunc i64 %index to i32
  %105 = or disjoint i32 %104, 1
  %106 = or disjoint i32 %104, 3
  %gep96 = getelementptr { double, double }, ptr %invariant.gep95, i64 %offset.idx
  %gep98 = getelementptr { double, double }, ptr %invariant.gep97, i64 %103
  %wide.vec = load <4 x double>, ptr %gep96, align 8, !tbaa !169
  %wide.vec61 = load <4 x double>, ptr %gep98, align 8, !tbaa !169
  %107 = add i32 %34, %105
  %108 = add i32 %34, %106
  %109 = sext i32 %107 to i64
  %110 = sext i32 %108 to i64
  %gep100 = getelementptr { double, double }, ptr %invariant.gep99, i64 %109
  %gep102 = getelementptr { double, double }, ptr %invariant.gep101, i64 %110
  store <4 x double> %wide.vec, ptr %gep100, align 8, !tbaa !180
  store <4 x double> %wide.vec61, ptr %gep102, align 8, !tbaa !180
  %index.next = add nuw i64 %index, 4
  %111 = icmp eq i64 %index.next, %n.vec
  br i1 %111, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us, label %omp.wsloop.region23.us.preheader

omp.wsloop.region23.us.preheader:                 ; preds = %vector.scevcheck, %omp.wsloop.region21.us, %middle.block
  %indvars.iv46.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %omp.wsloop.region21.us ], [ %ind.end, %middle.block ]
  br label %omp.wsloop.region23.us

omp.wsloop.region23.us:                           ; preds = %omp.wsloop.region23.us.preheader, %omp.wsloop.region23.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %omp.wsloop.region23.us ], [ %indvars.iv46.ph, %omp.wsloop.region23.us.preheader ]
  %112 = getelementptr { double, double }, ptr %93, i64 %indvars.iv46
  %113 = getelementptr i8, ptr %112, i64 -16
  %.unpack.us = load double, ptr %113, align 8, !tbaa !169
  %.elt28.us = getelementptr i8, ptr %112, i64 -8
  %.unpack29.us = load double, ptr %.elt28.us, align 8, !tbaa !169
  %114 = trunc nuw nsw i64 %indvars.iv46 to i32
  %115 = add i32 %34, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr { double, double }, ptr %95, i64 %116
  %118 = getelementptr i8, ptr %117, i64 -16
  store double %.unpack.us, ptr %118, align 8, !tbaa !180
  %.repack30.us = getelementptr i8, ptr %117, i64 -8
  store double %.unpack29.us, ptr %.repack30.us, align 8, !tbaa !180
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond49.not = icmp eq i64 %indvars.iv46, %79
  br i1 %exitcond49.not, label %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us, label %omp.wsloop.region23.us, !llvm.loop !183

omp.wsloop.region22.omp.wsloop.region24_crit_edge.us: ; preds = %omp.wsloop.region23.us, %middle.block
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, %80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond53.not, label %omp.wsloop.region25, label %omp.wsloop.region21.us

omp.wsloop.region25:                              ; preds = %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us, %omp.wsloop.region21.lr.ph, %omp.wsloop.region19
  %omp_collapsed.next = add i32 %omp_collapsed.iv38, 1
  %exitcond54.not = icmp eq i32 %omp_collapsed.iv38, %reass.sub
  br i1 %exitcond54.not, label %omp_collapsed.exit, label %omp_collapsed.body
}

define void @cffts3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr nocapture readnone %6, ptr nocapture readnone %7) local_unnamed_addr #0 {
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded28 = alloca i64, align 8
  %.reloaded29 = alloca i64, align 8
  %.reloaded30 = alloca i64, align 8
  %.reloaded31 = alloca i64, align 8
  %.reloaded32 = alloca i64, align 8
  %.reloaded33 = alloca i64, align 8
  %.reloaded34 = alloca i64, align 8
  %.reloaded35 = alloca i64, align 8
  %.reloaded36 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, ptr %1, align 4, !tbaa !184
  %13 = add i32 %12, 1
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = zext nneg i32 %14 to i64
  %16 = load i32, ptr %2, align 4, !tbaa !190
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %18 = zext nneg i32 %17 to i64
  %19 = load i32, ptr %3, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0)
  %21 = zext nneg i32 %20 to i64
  %22 = load i32, ptr @_QMft_dataEfftblockpad, align 4, !tbaa !192
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = zext nneg i32 %23 to i64
  %25 = icmp eq i32 %19, 1
  br i1 %25, label %ilog2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %8
  %26 = icmp sgt i32 %19, 2
  br i1 %26, label %.lr.ph.i, label %ilog2_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.08.i = phi i32 [ %27, %.lr.ph.i ], [ 2, %.preheader.i ]
  %.057.i = phi i32 [ %28, %.lr.ph.i ], [ 1, %.preheader.i ]
  %27 = shl i32 %.08.i, 1
  %28 = add i32 %.057.i, 1
  %29 = icmp slt i32 %27, %19
  br i1 %29, label %.lr.ph.i, label %ilog2_.exit

ilog2_.exit:                                      ; preds = %.lr.ph.i, %8, %.preheader.i
  %.06.i = phi i32 [ 0, %8 ], [ 1, %.preheader.i ], [ %28, %.lr.ph.i ]
  store i32 %.06.i, ptr %11, align 4, !tbaa !195
  %30 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !196
  %.not = icmp eq i32 %30, 0
  br i1 %.not, label %omp_parallel, label %31

31:                                               ; preds = %ilog2_.exit
  store i32 8, ptr %10, align 4, !tbaa !195
  call void @timer_start_(ptr nonnull %10)
  br label %omp_parallel

omp_parallel:                                     ; preds = %31, %ilog2_.exit
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %24, ptr %.reloaded, align 8
  store i64 %21, ptr %.reloaded28, align 8
  store i64 %24, ptr %.reloaded29, align 8
  store i64 %21, ptr %.reloaded30, align 8
  store i64 %15, ptr %.reloaded31, align 8
  store i64 %18, ptr %.reloaded32, align 8
  store i64 %21, ptr %.reloaded33, align 8
  store i64 %15, ptr %.reloaded34, align 8
  store i64 %18, ptr %.reloaded35, align 8
  store i64 %21, ptr %.reloaded36, align 8
  store ptr %.reloaded, ptr %structArg, align 8
  %gep_.reloaded28 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %.reloaded28, ptr %gep_.reloaded28, align 8
  %gep_.reloaded29 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %.reloaded29, ptr %gep_.reloaded29, align 8
  %gep_.reloaded30 = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %.reloaded30, ptr %gep_.reloaded30, align 8
  %gep_.reloaded31 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %.reloaded31, ptr %gep_.reloaded31, align 8
  %gep_.reloaded32 = getelementptr inbounds i8, ptr %structArg, i64 40
  store ptr %.reloaded32, ptr %gep_.reloaded32, align 8
  %gep_.reloaded33 = getelementptr inbounds i8, ptr %structArg, i64 48
  store ptr %.reloaded33, ptr %gep_.reloaded33, align 8
  %gep_.reloaded34 = getelementptr inbounds i8, ptr %structArg, i64 56
  store ptr %.reloaded34, ptr %gep_.reloaded34, align 8
  %gep_.reloaded35 = getelementptr inbounds i8, ptr %structArg, i64 64
  store ptr %.reloaded35, ptr %gep_.reloaded35, align 8
  %gep_.reloaded36 = getelementptr inbounds i8, ptr %structArg, i64 72
  store ptr %.reloaded36, ptr %gep_.reloaded36, align 8
  %gep_ = getelementptr inbounds i8, ptr %structArg, i64 80
  store ptr %2, ptr %gep_, align 8
  %gep_37 = getelementptr inbounds i8, ptr %structArg, i64 88
  store ptr %1, ptr %gep_37, align 8
  %gep_38 = getelementptr inbounds i8, ptr %structArg, i64 96
  store ptr %3, ptr %gep_38, align 8
  %gep_39 = getelementptr inbounds i8, ptr %structArg, i64 104
  store ptr %0, ptr %gep_39, align 8
  %gep_40 = getelementptr inbounds i8, ptr %structArg, i64 112
  store ptr %11, ptr %gep_40, align 8
  %gep_41 = getelementptr inbounds i8, ptr %structArg, i64 120
  store ptr %5, ptr %gep_41, align 8
  %gep_42 = getelementptr inbounds i8, ptr %structArg, i64 128
  store ptr %4, ptr %gep_42, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @cffts3_..omp_par, ptr nonnull %structArg)
  %32 = load i32, ptr @_QMft_dataEtimers_enabled, align 4, !tbaa !196
  %.not43 = icmp eq i32 %32, 0
  br i1 %.not43, label %34, label %33

33:                                               ; preds = %omp_parallel
  store i32 8, ptr %9, align 4, !tbaa !195
  call void @timer_stop_(ptr nonnull %9)
  br label %34

34:                                               ; preds = %33, %omp_parallel
  ret void
}

; Function Attrs: nounwind
define internal void @cffts3_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_.reloaded = load ptr, ptr %0, align 8
  %gep_.reloaded28 = getelementptr i8, ptr %0, i64 8
  %loadgep_.reloaded28 = load ptr, ptr %gep_.reloaded28, align 8
  %gep_.reloaded29 = getelementptr i8, ptr %0, i64 16
  %loadgep_.reloaded29 = load ptr, ptr %gep_.reloaded29, align 8
  %gep_.reloaded30 = getelementptr i8, ptr %0, i64 24
  %loadgep_.reloaded30 = load ptr, ptr %gep_.reloaded30, align 8
  %gep_.reloaded31 = getelementptr i8, ptr %0, i64 32
  %loadgep_.reloaded31 = load ptr, ptr %gep_.reloaded31, align 8
  %gep_.reloaded32 = getelementptr i8, ptr %0, i64 40
  %loadgep_.reloaded32 = load ptr, ptr %gep_.reloaded32, align 8
  %gep_.reloaded34 = getelementptr i8, ptr %0, i64 56
  %loadgep_.reloaded34 = load ptr, ptr %gep_.reloaded34, align 8
  %gep_.reloaded35 = getelementptr i8, ptr %0, i64 64
  %loadgep_.reloaded35 = load ptr, ptr %gep_.reloaded35, align 8
  %gep_ = getelementptr i8, ptr %0, i64 80
  %loadgep_ = load ptr, ptr %gep_, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 88
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %gep_3 = getelementptr i8, ptr %0, i64 96
  %loadgep_4 = load ptr, ptr %gep_3, align 8
  %gep_5 = getelementptr i8, ptr %0, i64 104
  %loadgep_6 = load ptr, ptr %gep_5, align 8
  %gep_7 = getelementptr i8, ptr %0, i64 112
  %loadgep_8 = load ptr, ptr %gep_7, align 8
  %gep_9 = getelementptr i8, ptr %0, i64 120
  %loadgep_10 = load ptr, ptr %gep_9, align 8
  %gep_11 = getelementptr i8, ptr %0, i64 128
  %loadgep_12 = load ptr, ptr %gep_11, align 8
  %1 = load i64, ptr %loadgep_.reloaded, align 8
  %2 = load i64, ptr %loadgep_.reloaded28, align 8
  %3 = load i64, ptr %loadgep_.reloaded29, align 8
  %4 = load i64, ptr %loadgep_.reloaded30, align 8
  %5 = load i64, ptr %loadgep_.reloaded31, align 8
  %6 = load i64, ptr %loadgep_.reloaded32, align 8
  %7 = load i64, ptr %loadgep_.reloaded34, align 8
  %8 = load i64, ptr %loadgep_.reloaded35, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %9 = mul i64 %2, %1
  %10 = alloca { double, double }, i64 %9, align 8
  %11 = mul i64 %4, %3
  %12 = alloca { double, double }, i64 %11, align 8
  %13 = load i32, ptr %loadgep_, align 4, !tbaa !190
  %14 = load i32, ptr %loadgep_2, align 4, !tbaa !184
  %15 = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !198
  %16 = sdiv i32 %14, %15
  %17 = add i32 %16, -1
  %omp_loop.tripcount = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %18 = icmp slt i32 %17, 0
  %omp_loop.tripcount2 = select i1 %18, i32 0, i32 %16
  %19 = mul nuw i32 %omp_loop.tripcount2, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num27 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num27, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %21 = load i32, ptr %p.lowerbound, align 4
  %22 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %22, %21
  %omp_collapsed.cmp39.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp39.not, label %omp_collapsed.exit, label %omp_collapsed.body.lr.ph

omp_collapsed.body.lr.ph:                         ; preds = %omp.par.entry
  %23 = mul nsw i64 %8, %7
  %24 = mul nsw i64 %6, %5
  %.pre = load i32, ptr %loadgep_4, align 4, !tbaa !200
  %25 = shl i64 %5, 4
  %26 = mul i64 %6, %5
  %27 = shl i64 %26, 4
  %invariant.gep118 = getelementptr i8, ptr %loadgep_10, i64 -16
  %invariant.gep120 = getelementptr i8, ptr %loadgep_10, i64 -8
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp.wsloop.region25, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num27)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num27)
  ret void

omp_collapsed.body:                               ; preds = %omp_collapsed.body.lr.ph, %omp.wsloop.region25
  %28 = phi i32 [ %.pre, %omp_collapsed.body.lr.ph ], [ %69, %omp.wsloop.region25 ]
  %omp_collapsed.iv40 = phi i32 [ 0, %omp_collapsed.body.lr.ph ], [ %omp_collapsed.next, %omp.wsloop.region25 ]
  %29 = add i32 %omp_collapsed.iv40, %21
  %.frozen = freeze i32 %29
  %.frozen122 = freeze i32 %16
  %30 = udiv i32 %.frozen, %.frozen122
  %31 = mul i32 %30, %.frozen122
  %.decomposed = sub i32 %.frozen, %31
  %32 = add i32 %30, 1
  %33 = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !198
  %34 = mul i32 %33, %.decomposed
  %35 = icmp sgt i32 %28, 0
  br i1 %35, label %omp.wsloop.region15.lr.ph, label %omp.wsloop.region19

omp.wsloop.region15.lr.ph:                        ; preds = %omp_collapsed.body
  %36 = icmp sgt i32 %33, 0
  %37 = sext i32 %32 to i64
  %38 = add nsw i64 %37, -1
  %39 = mul nsw i64 %38, %7
  %invariant.gep = getelementptr { double, double }, ptr %loadgep_12, i64 %39
  br i1 %36, label %omp.wsloop.region15.us.preheader, label %omp.wsloop.region19

omp.wsloop.region15.us.preheader:                 ; preds = %omp.wsloop.region15.lr.ph
  %40 = zext nneg i32 %33 to i64
  %narrow = add nuw i32 %28, 1
  %41 = zext i32 %narrow to i64
  %42 = add nsw i64 %40, -1
  %43 = add i32 %34, 1
  %min.iters.check71 = icmp ult i32 %33, 4
  %44 = trunc nsw i64 %42 to i32
  %45 = add i32 %43, %44
  %46 = icmp slt i32 %45, %43
  %47 = icmp ugt i64 %42, 4294967295
  %48 = or i1 %46, %47
  %n.vec74 = and i64 %40, 2147483644
  %ind.end75 = or disjoint i64 %n.vec74, 1
  %cmp.n77 = icmp eq i64 %n.vec74, %40
  br label %omp.wsloop.region15.us

omp.wsloop.region15.us:                           ; preds = %omp.wsloop.region15.us.preheader, %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us
  %indvars.iv44 = phi i64 [ 1, %omp.wsloop.region15.us.preheader ], [ %indvars.iv.next45, %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us ]
  %49 = add nsw i64 %indvars.iv44, -1
  %50 = mul nsw i64 %23, %49
  %gep.us = getelementptr { double, double }, ptr %invariant.gep, i64 %50
  %51 = mul nsw i64 %49, %1
  %52 = getelementptr { double, double }, ptr %10, i64 %51
  %brmerge = select i1 %min.iters.check71, i1 true, i1 %48
  br i1 %brmerge, label %omp.wsloop.region17.us.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %omp.wsloop.region15.us
  %invariant.gep91 = getelementptr i8, ptr %gep.us, i64 -16
  %invariant.gep92 = getelementptr i8, ptr %gep.us, i64 -16
  %invariant.gep94 = getelementptr i8, ptr %52, i64 -16
  %invariant.gep96 = getelementptr i8, ptr %52, i64 -16
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph72
  %index79 = phi i64 [ 0, %vector.ph72 ], [ %index.next90, %vector.body78 ]
  %offset.idx80 = or disjoint i64 %index79, 1
  %53 = or disjoint i64 %index79, 3
  %54 = trunc i64 %index79 to i32
  %55 = or disjoint i32 %54, 1
  %56 = or disjoint i32 %54, 3
  %57 = add i32 %34, %55
  %58 = add i32 %34, %56
  %59 = sext i32 %57 to i64
  %60 = sext i32 %58 to i64
  %gep = getelementptr { double, double }, ptr %invariant.gep91, i64 %59
  %gep93 = getelementptr { double, double }, ptr %invariant.gep92, i64 %60
  %wide.vec82 = load <4 x double>, ptr %gep, align 8, !tbaa !202
  %wide.vec83 = load <4 x double>, ptr %gep93, align 8, !tbaa !202
  %gep95 = getelementptr { double, double }, ptr %invariant.gep94, i64 %offset.idx80
  %gep97 = getelementptr { double, double }, ptr %invariant.gep96, i64 %53
  store <4 x double> %wide.vec82, ptr %gep95, align 8, !tbaa !195
  store <4 x double> %wide.vec83, ptr %gep97, align 8, !tbaa !195
  %index.next90 = add nuw i64 %index79, 4
  %61 = icmp eq i64 %index.next90, %n.vec74
  br i1 %61, label %middle.block69, label %vector.body78, !llvm.loop !204

middle.block69:                                   ; preds = %vector.body78
  br i1 %cmp.n77, label %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us, label %omp.wsloop.region17.us.preheader

omp.wsloop.region17.us.preheader:                 ; preds = %omp.wsloop.region15.us, %middle.block69
  %indvars.iv.ph = phi i64 [ 1, %omp.wsloop.region15.us ], [ %ind.end75, %middle.block69 ]
  br label %omp.wsloop.region17.us

omp.wsloop.region17.us:                           ; preds = %omp.wsloop.region17.us.preheader, %omp.wsloop.region17.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %omp.wsloop.region17.us ], [ %indvars.iv.ph, %omp.wsloop.region17.us.preheader ]
  %62 = trunc nuw nsw i64 %indvars.iv to i32
  %63 = add i32 %34, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr { double, double }, ptr %gep.us, i64 %64
  %66 = getelementptr i8, ptr %65, i64 -16
  %.unpack32.us = load double, ptr %66, align 8, !tbaa !202
  %.elt33.us = getelementptr i8, ptr %65, i64 -8
  %.unpack34.us = load double, ptr %.elt33.us, align 8, !tbaa !202
  %67 = getelementptr { double, double }, ptr %52, i64 %indvars.iv
  %68 = getelementptr i8, ptr %67, i64 -16
  store double %.unpack32.us, ptr %68, align 8, !tbaa !195
  %.repack35.us = getelementptr i8, ptr %67, i64 -8
  store double %.unpack34.us, ptr %.repack35.us, align 8, !tbaa !195
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %40
  br i1 %exitcond.not, label %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us, label %omp.wsloop.region17.us, !llvm.loop !205

omp.wsloop.region16.omp.wsloop.region18_crit_edge.us: ; preds = %omp.wsloop.region17.us, %middle.block69
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, %41
  br i1 %exitcond47.not, label %omp.wsloop.region19, label %omp.wsloop.region15.us

omp.wsloop.region19:                              ; preds = %omp.wsloop.region16.omp.wsloop.region18_crit_edge.us, %omp.wsloop.region15.lr.ph, %omp_collapsed.body
  call void @cfftz_(ptr %loadgep_6, ptr %loadgep_8, ptr nonnull %loadgep_4, ptr nonnull %10, ptr nonnull %12) #7
  %69 = load i32, ptr %loadgep_4, align 4, !tbaa !200
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %omp.wsloop.region21.lr.ph, label %omp.wsloop.region25

omp.wsloop.region21.lr.ph:                        ; preds = %omp.wsloop.region19
  %71 = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !198
  %72 = icmp sgt i32 %71, 0
  %73 = sext i32 %32 to i64
  %74 = add nsw i64 %73, -1
  %75 = mul nsw i64 %74, %5
  %invariant.gep37 = getelementptr { double, double }, ptr %loadgep_10, i64 %75
  br i1 %72, label %omp.wsloop.region21.us.preheader, label %omp.wsloop.region25

omp.wsloop.region21.us.preheader:                 ; preds = %omp.wsloop.region21.lr.ph
  %76 = zext nneg i32 %71 to i64
  %narrow57 = add nuw i32 %69, 1
  %77 = zext i32 %narrow57 to i64
  %78 = add nsw i64 %76, -1
  %79 = add i32 %34, 1
  %80 = mul i64 %25, %74
  %min.iters.check = icmp ult i32 %71, 22
  %81 = trunc nsw i64 %78 to i32
  %82 = add i32 %79, %81
  %83 = icmp slt i32 %82, %79
  %84 = icmp ugt i64 %78, 4294967295
  %85 = or i1 %83, %84
  %86 = sext i32 %79 to i64
  %87 = shl nsw i64 %86, 4
  %gep119 = getelementptr i8, ptr %invariant.gep118, i64 %80
  %invariant.gep110 = getelementptr i8, ptr %gep119, i64 %87
  %mul.result = shl nsw i64 %78, 4
  %gep121 = getelementptr i8, ptr %invariant.gep120, i64 %80
  %invariant.gep116 = getelementptr i8, ptr %gep121, i64 %87
  %mul.result60 = shl nsw i64 %78, 4
  %n.vec = and i64 %76, 2147483644
  %ind.end = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %76
  br label %omp.wsloop.region21.us

omp.wsloop.region21.us:                           ; preds = %omp.wsloop.region21.us.preheader, %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us
  %indvar = phi i64 [ 0, %omp.wsloop.region21.us.preheader ], [ %indvar.next, %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us ]
  %indvars.iv52 = phi i64 [ 1, %omp.wsloop.region21.us.preheader ], [ %indvars.iv.next53, %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us ]
  %88 = add nsw i64 %indvars.iv52, -1
  %89 = mul nsw i64 %88, %1
  %90 = getelementptr { double, double }, ptr %10, i64 %89
  %91 = mul nsw i64 %24, %88
  %gep.us38 = getelementptr { double, double }, ptr %invariant.gep37, i64 %91
  br i1 %min.iters.check, label %omp.wsloop.region23.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %omp.wsloop.region21.us
  %92 = mul i64 %27, %indvar
  %gep111 = getelementptr i8, ptr %invariant.gep110, i64 %92
  %93 = getelementptr i8, ptr %gep111, i64 %mul.result
  %94 = icmp ult ptr %93, %gep111
  %gep117 = getelementptr i8, ptr %invariant.gep116, i64 %92
  %95 = getelementptr i8, ptr %gep117, i64 %mul.result60
  %96 = icmp ult ptr %95, %gep117
  %97 = or i1 %94, %85
  %98 = or i1 %96, %97
  br i1 %98, label %omp.wsloop.region23.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %invariant.gep98 = getelementptr i8, ptr %90, i64 -16
  %invariant.gep100 = getelementptr i8, ptr %90, i64 -16
  %invariant.gep102 = getelementptr i8, ptr %gep.us38, i64 -16
  %invariant.gep104 = getelementptr i8, ptr %gep.us38, i64 -16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %99 = or disjoint i64 %index, 3
  %100 = trunc i64 %index to i32
  %101 = or disjoint i32 %100, 1
  %102 = or disjoint i32 %100, 3
  %gep99 = getelementptr { double, double }, ptr %invariant.gep98, i64 %offset.idx
  %gep101 = getelementptr { double, double }, ptr %invariant.gep100, i64 %99
  %wide.vec = load <4 x double>, ptr %gep99, align 8, !tbaa !195
  %wide.vec63 = load <4 x double>, ptr %gep101, align 8, !tbaa !195
  %103 = add i32 %34, %101
  %104 = add i32 %34, %102
  %105 = sext i32 %103 to i64
  %106 = sext i32 %104 to i64
  %gep103 = getelementptr { double, double }, ptr %invariant.gep102, i64 %105
  %gep105 = getelementptr { double, double }, ptr %invariant.gep104, i64 %106
  store <4 x double> %wide.vec, ptr %gep103, align 8, !tbaa !206
  store <4 x double> %wide.vec63, ptr %gep105, align 8, !tbaa !206
  %index.next = add nuw i64 %index, 4
  %107 = icmp eq i64 %index.next, %n.vec
  br i1 %107, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us, label %omp.wsloop.region23.us.preheader

omp.wsloop.region23.us.preheader:                 ; preds = %vector.scevcheck, %omp.wsloop.region21.us, %middle.block
  %indvars.iv48.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %omp.wsloop.region21.us ], [ %ind.end, %middle.block ]
  br label %omp.wsloop.region23.us

omp.wsloop.region23.us:                           ; preds = %omp.wsloop.region23.us.preheader, %omp.wsloop.region23.us
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %omp.wsloop.region23.us ], [ %indvars.iv48.ph, %omp.wsloop.region23.us.preheader ]
  %108 = getelementptr { double, double }, ptr %90, i64 %indvars.iv48
  %109 = getelementptr i8, ptr %108, i64 -16
  %.unpack.us = load double, ptr %109, align 8, !tbaa !195
  %.elt28.us = getelementptr i8, ptr %108, i64 -8
  %.unpack29.us = load double, ptr %.elt28.us, align 8, !tbaa !195
  %110 = trunc nuw nsw i64 %indvars.iv48 to i32
  %111 = add i32 %34, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr { double, double }, ptr %gep.us38, i64 %112
  %114 = getelementptr i8, ptr %113, i64 -16
  store double %.unpack.us, ptr %114, align 8, !tbaa !206
  %.repack30.us = getelementptr i8, ptr %113, i64 -8
  store double %.unpack29.us, ptr %.repack30.us, align 8, !tbaa !206
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond51.not = icmp eq i64 %indvars.iv48, %76
  br i1 %exitcond51.not, label %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us, label %omp.wsloop.region23.us, !llvm.loop !209

omp.wsloop.region22.omp.wsloop.region24_crit_edge.us: ; preds = %omp.wsloop.region23.us, %middle.block
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, %77
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond55.not, label %omp.wsloop.region25, label %omp.wsloop.region21.us

omp.wsloop.region25:                              ; preds = %omp.wsloop.region22.omp.wsloop.region24_crit_edge.us, %omp.wsloop.region21.lr.ph, %omp.wsloop.region19
  %omp_collapsed.next = add i32 %omp_collapsed.iv40, 1
  %exitcond56.not = icmp eq i32 %omp_collapsed.iv40, %reass.sub
  br i1 %exitcond56.not, label %omp_collapsed.exit, label %omp_collapsed.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none)
define void @fft_init_(ptr nocapture readonly %0) local_unnamed_addr #2 {
  %2 = load i32, ptr %0, align 4, !tbaa !31
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %ilog2_.exit.thread26, label %.preheader.i

ilog2_.exit.thread26:                             ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_QMft_dataEu, i8 0, i64 16, i1 false)
  br label %._crit_edge22

.preheader.i:                                     ; preds = %1
  %4 = icmp sgt i32 %2, 2
  br i1 %4, label %.lr.ph.i, label %ilog2_.exit.thread

ilog2_.exit.thread:                               ; preds = %.preheader.i
  store double 1.000000e+00, ptr @_QMft_dataEu, align 8, !tbaa !37
  store double 0.000000e+00, ptr getelementptr inbounds ([4097 x { double, double }], ptr @_QMft_dataEu, i64 0, i64 0, i32 1), align 8, !tbaa !37
  br label %.lr.ph21.preheader

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.08.i = phi i32 [ %5, %.lr.ph.i ], [ 2, %.preheader.i ]
  %.057.i = phi i32 [ %6, %.lr.ph.i ], [ 1, %.preheader.i ]
  %5 = shl i32 %.08.i, 1
  %6 = add i32 %.057.i, 1
  %7 = icmp slt i32 %5, %2
  br i1 %7, label %.lr.ph.i, label %ilog2_.exit

ilog2_.exit:                                      ; preds = %.lr.ph.i
  %8 = sitofp i32 %6 to double
  store double %8, ptr @_QMft_dataEu, align 8, !tbaa !37
  store double 0.000000e+00, ptr getelementptr inbounds ([4097 x { double, double }], ptr @_QMft_dataEu, i64 0, i64 0, i32 1), align 8, !tbaa !37
  %9 = icmp ult i32 %.057.i, 2147483647
  br i1 %9, label %.lr.ph21.preheader, label %._crit_edge22

.lr.ph21.preheader:                               ; preds = %ilog2_.exit.thread, %ilog2_.exit
  %.06.i25 = phi i32 [ 1, %ilog2_.exit.thread ], [ %6, %ilog2_.exit ]
  %10 = zext nneg i32 %.06.i25 to i64
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %._crit_edge
  %11 = phi i64 [ %57, %._crit_edge ], [ %10, %.lr.ph21.preheader ]
  %.020 = phi i32 [ %55, %._crit_edge ], [ 2, %.lr.ph21.preheader ]
  %.01319 = phi i32 [ %56, %._crit_edge ], [ 1, %.lr.ph21.preheader ]
  %12 = sitofp i32 %.01319 to double
  %13 = fdiv contract double 0x400921FB54442D18, %12
  %14 = add i32 %.01319, -1
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph21
  %16 = zext i32 %.01319 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = icmp ne i32 %.01319, 0
  %umin32.neg = sext i1 %18 to i64
  %19 = add nsw i64 %17, %umin32.neg
  %min.iters.check = icmp ult i64 %19, 12
  br i1 %min.iters.check, label %.lr.ph.preheader34, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %20 = icmp ne i32 %.01319, 0
  %umin.neg = sext i1 %20 to i64
  %21 = add nsw i64 %umin.neg, %16
  %22 = trunc i64 %21 to i32
  %23 = add i32 %.020, %22
  %24 = icmp slt i32 %23, %.020
  %25 = icmp ugt i64 %21, 4294967295
  %26 = or i1 %24, %25
  %27 = sext i32 %.020 to i64
  %28 = shl nsw i64 %27, 4
  %scevgep = getelementptr i8, ptr getelementptr ([4097 x { double, double }], ptr @_QMft_dataEu, i64 -1, i64 4096, i32 0), i64 %28
  %mul.result = shl nsw i64 %21, 4
  %29 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %30 = icmp ult ptr %29, %scevgep
  %scevgep28 = getelementptr i8, ptr getelementptr ([4097 x { double, double }], ptr @_QMft_dataEu, i64 -1, i64 4096, i32 1), i64 %28
  %mul.result30 = shl nsw i64 %21, 4
  %31 = getelementptr i8, ptr %scevgep28, i64 %mul.result30
  %32 = icmp ult ptr %31, %scevgep28
  %33 = or i1 %30, %26
  %34 = or i1 %32, %33
  br i1 %34, label %.lr.ph.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %19, -2
  %ind.end = sub nsw i64 %16, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %13, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %35 = trunc i64 %index to i32
  %36 = sitofp <2 x i32> %vec.ind to <2 x double>
  %37 = fmul contract <2 x double> %broadcast.splat, %36
  %38 = tail call contract <2 x double> @llvm.cos.v2f64(<2 x double> %37)
  %39 = tail call contract <2 x double> @llvm.sin.v2f64(<2 x double> %37)
  %40 = add i32 %.020, %35
  %41 = sext i32 %40 to i64
  %gep = getelementptr { double, double }, ptr getelementptr (i8, ptr @_QMft_dataEu, i64 -16), i64 %41
  %interleaved.vec = shufflevector <2 x double> %38, <2 x double> %39, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %gep, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i32> %vec.ind, <i32 2, i32 2>
  %42 = icmp eq i64 %index.next, %n.vec
  br i1 %42, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %19, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader34

.lr.ph.preheader34:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi i64 [ %16, %vector.scevcheck ], [ %16, %.lr.ph.preheader ], [ %ind.end, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader34, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader34 ]
  %43 = phi i64 [ %53, %.lr.ph ], [ %.ph, %.lr.ph.preheader34 ]
  %44 = trunc nuw nsw i64 %indvars.iv to i32
  %45 = sitofp i32 %44 to double
  %46 = fmul contract double %13, %45
  %47 = tail call contract double @llvm.cos.f64(double %46)
  %48 = tail call contract double @llvm.sin.f64(double %46)
  %49 = add i32 %.020, %44
  %50 = sext i32 %49 to i64
  %51 = getelementptr { double, double }, ptr @_QMft_dataEu, i64 %50
  %52 = getelementptr i8, ptr %51, i64 -16
  store double %47, ptr %52, align 8, !tbaa !37
  %.repack17 = getelementptr i8, ptr %51, i64 -8
  store double %48, ptr %.repack17, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %53 = add nsw i64 %43, -1
  %54 = icmp ugt i64 %43, 1
  br i1 %54, label %.lr.ph, label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.lr.ph21
  %55 = add i32 %.020, %.01319
  %56 = shl i32 %.01319, 1
  %57 = add nsw i64 %11, -1
  %58 = icmp sgt i64 %11, 1
  br i1 %58, label %.lr.ph21, label %._crit_edge22

._crit_edge22:                                    ; preds = %._crit_edge, %ilog2_.exit.thread26, %ilog2_.exit
  ret void
}

define void @cfftz_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr nocapture %3, ptr nocapture %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr @_QMft_dataEfftblockpad, align 4, !tbaa !212
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = zext nneg i32 %9 to i64
  %.unpack = load double, ptr @_QMft_dataEu, align 8, !tbaa !218
  %11 = fptosi double %.unpack to i32
  %12 = load i32, ptr %0, align 4, !tbaa !220
  %13 = icmp ne i32 %12, 1
  %14 = icmp ne i32 %12, -1
  %15 = and i1 %13, %14
  %16 = load i32, ptr %1, align 4, !tbaa !223
  %17 = icmp slt i32 %16, 1
  %18 = or i1 %15, %17
  %19 = icmp sgt i32 %16, %11
  %20 = or i1 %19, %18
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX7c1e67f93fcb28e2cdcb18010587e00c, i64 100, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 721)
  %23 = load i32, ptr %0, align 4, !tbaa !220
  %24 = tail call i1 @_FortranAioOutputInteger32(ptr %22, i32 %23)
  %25 = load i32, ptr %1, align 4, !tbaa !223
  %26 = tail call i1 @_FortranAioOutputInteger32(ptr %22, i32 %25)
  %27 = tail call i1 @_FortranAioOutputInteger32(ptr %22, i32 %11)
  %28 = tail call i32 @_FortranAioEndIoStatement(ptr %22)
  %29 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

30:                                               ; preds = %5
  %31 = add nuw i32 %16, 1
  store i32 1, ptr %7, align 4, !tbaa !225
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %30
  %33 = lshr i32 %31, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %67
  %.020 = phi i32 [ %69, %67 ], [ %33, %.lr.ph.preheader ]
  %storemerge19 = phi i32 [ %70, %67 ], [ 1, %.lr.ph.preheader ]
  call void @fftz2_(ptr nonnull %0, ptr nonnull %7, ptr nonnull %1, ptr %2, ptr nonnull @_QMft_dataEfftblock, ptr nonnull @_QMft_dataEfftblockpad, ptr nonnull @_QMft_dataEu, ptr %3, ptr %4)
  %34 = load i32, ptr %1, align 4, !tbaa !223
  %35 = icmp eq i32 %storemerge19, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %.lr.ph
  %37 = load i32, ptr %2, align 4, !tbaa !226
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %.lr.ph23, label %.loopexit

.lr.ph23:                                         ; preds = %36
  %39 = load i32, ptr @_QMft_dataEfftblock, align 4, !tbaa !228
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %.lr.ph21.us.preheader, label %.loopexit

.lr.ph21.us.preheader:                            ; preds = %.lr.ph23
  %41 = zext nneg i32 %39 to i64
  %narrow = add nuw i32 %37, 1
  %42 = zext i32 %narrow to i64
  %43 = add nsw i64 %41, -1
  %44 = shl nuw nsw i64 %10, 4
  %min.iters.check = icmp ult i32 %39, 12
  %mul.result = shl nsw i64 %43, 4
  %mul.result35 = shl nsw i64 %43, 4
  %mul.overflow36 = icmp ugt i64 %43, 1152921504606846975
  %n.vec = and i64 %41, 2147483644
  %ind.end = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %41
  br label %.lr.ph21.us

.lr.ph21.us:                                      ; preds = %.lr.ph21.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph21.us.preheader ], [ %indvar.next, %._crit_edge.us ]
  %indvars.iv27 = phi i64 [ 1, %.lr.ph21.us.preheader ], [ %indvars.iv.next28, %._crit_edge.us ]
  %45 = add nsw i64 %indvars.iv27, -1
  %46 = mul nuw nsw i64 %45, %10
  %47 = add nsw i64 %46, -1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph21.us
  %48 = mul i64 %44, %indvar
  %49 = or disjoint i64 %48, 8
  %scevgep33 = getelementptr i8, ptr %3, i64 %49
  %scevgep = getelementptr i8, ptr %3, i64 %48
  %50 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %51 = icmp ult ptr %50, %scevgep
  %52 = getelementptr i8, ptr %scevgep33, i64 %mul.result35
  %53 = icmp ult ptr %52, %scevgep33
  %54 = or i1 %53, %mul.overflow36
  %55 = or i1 %51, %54
  br i1 %55, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ]
  %offset.idx = or disjoint i64 %index, 1
  %56 = or disjoint i64 %index, 3
  %57 = add nsw i64 %47, %offset.idx
  %58 = add nsw i64 %47, %56
  %59 = getelementptr { double, double }, ptr %4, i64 %57
  %60 = getelementptr { double, double }, ptr %4, i64 %58
  %wide.vec = load <4 x double>, ptr %59, align 8, !tbaa !230
  %wide.vec37 = load <4 x double>, ptr %60, align 8, !tbaa !230
  %61 = getelementptr { double, double }, ptr %3, i64 %57
  %62 = getelementptr { double, double }, ptr %3, i64 %58
  store <4 x double> %wide.vec, ptr %61, align 8, !tbaa !232
  store <4 x double> %wide.vec37, ptr %62, align 8, !tbaa !232
  %index.next = add nuw i64 %index, 4
  %63 = icmp eq i64 %index.next, %n.vec
  br i1 %63, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph21.us, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.lr.ph21.us ], [ %ind.end, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %64 = add nsw i64 %47, %indvars.iv
  %65 = getelementptr { double, double }, ptr %4, i64 %64
  %.unpack13.us = load double, ptr %65, align 8, !tbaa !230
  %.elt14.us = getelementptr inbounds i8, ptr %65, i64 8
  %.unpack15.us = load double, ptr %.elt14.us, align 8, !tbaa !230
  %66 = getelementptr { double, double }, ptr %3, i64 %64
  store double %.unpack13.us, ptr %66, align 8, !tbaa !232
  %.repack16.us = getelementptr inbounds i8, ptr %66, i64 8
  store double %.unpack15.us, ptr %.repack16.us, align 8, !tbaa !232
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %41
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !235

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, %42
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond30.not, label %.loopexit, label %.lr.ph21.us

67:                                               ; preds = %.lr.ph
  %68 = add nuw nsw i32 %storemerge19, 1
  store i32 %68, ptr %6, align 4, !tbaa !225
  call void @fftz2_(ptr nonnull %0, ptr nonnull %6, ptr nonnull %1, ptr %2, ptr nonnull @_QMft_dataEfftblock, ptr nonnull @_QMft_dataEfftblockpad, ptr nonnull @_QMft_dataEu, ptr %4, ptr %3)
  %69 = add nsw i32 %.020, -1
  %70 = add nuw nsw i32 %storemerge19, 2
  store i32 %70, ptr %7, align 4, !tbaa !225
  %71 = icmp sgt i32 %.020, 1
  br i1 %71, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %67, %._crit_edge.us, %.lr.ph23, %30, %36
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @fftz2_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr nocapture readonly %3, ptr nocapture readonly %4, ptr nocapture readonly %5, ptr nocapture readonly %6, ptr nocapture readonly %7, ptr nocapture writeonly %8) local_unnamed_addr #3 {
  %10 = load i32, ptr %3, align 4, !tbaa !236
  %11 = load i32, ptr %5, align 4, !tbaa !242
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 0)
  %13 = zext nneg i32 %12 to i64
  %14 = sdiv i32 %10, 2
  %15 = load i32, ptr %1, align 4, !tbaa !244
  %16 = add i32 %15, -1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %__mlir_math_ipowi_i32.exit, label %18

18:                                               ; preds = %9
  %19 = icmp slt i32 %16, 1
  br i1 %19, label %__mlir_math_ipowi_i32.exit, label %.preheader.i

.preheader.i:                                     ; preds = %18
  %20 = and i32 %16, 1
  %.not3.i = icmp eq i32 %20, 0
  %21 = select i1 %.not3.i, i32 1, i32 2
  %22 = icmp eq i32 %16, 1
  br i1 %22, label %__mlir_math_ipowi_i32.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %spec.select4.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %21, %.preheader.i ]
  %23 = phi i32 [ %25, %.lr.ph.i ], [ %16, %.preheader.i ]
  %24 = phi i32 [ %26, %.lr.ph.i ], [ 2, %.preheader.i ]
  %25 = lshr i32 %23, 1
  %26 = mul i32 %24, %24
  %27 = and i32 %23, 2
  %.not.i = icmp eq i32 %27, 0
  %28 = select i1 %.not.i, i32 1, i32 %26
  %spec.select.i = mul i32 %28, %spec.select4.i
  %29 = icmp ult i32 %23, 4
  br i1 %29, label %__mlir_math_ipowi_i32.exit, label %.lr.ph.i

__mlir_math_ipowi_i32.exit:                       ; preds = %.lr.ph.i, %18, %9, %.preheader.i
  %common.ret.op.i = phi i32 [ 1, %9 ], [ %21, %.preheader.i ], [ 0, %18 ], [ %spec.select.i, %.lr.ph.i ]
  %30 = load i32, ptr %2, align 4, !tbaa !246
  %31 = sub i32 %30, %15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %.lr.ph, label %33

33:                                               ; preds = %__mlir_math_ipowi_i32.exit
  %34 = icmp slt i32 %31, 1
  br i1 %34, label %._crit_edge, label %.preheader.i81

.preheader.i81:                                   ; preds = %33
  %35 = and i32 %31, 1
  %.not3.i82 = icmp eq i32 %35, 0
  %36 = select i1 %.not3.i82, i32 1, i32 2
  %37 = icmp eq i32 %31, 1
  br i1 %37, label %__mlir_math_ipowi_i32.exit88, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.preheader.i81, %.lr.ph.i83
  %spec.select4.i84 = phi i32 [ %spec.select.i86, %.lr.ph.i83 ], [ %36, %.preheader.i81 ]
  %38 = phi i32 [ %40, %.lr.ph.i83 ], [ %31, %.preheader.i81 ]
  %39 = phi i32 [ %41, %.lr.ph.i83 ], [ 2, %.preheader.i81 ]
  %40 = lshr i32 %38, 1
  %41 = mul i32 %39, %39
  %42 = and i32 %38, 2
  %.not.i85 = icmp eq i32 %42, 0
  %43 = select i1 %.not.i85, i32 1, i32 %41
  %spec.select.i86 = mul i32 %43, %spec.select4.i84
  %44 = icmp ult i32 %38, 4
  br i1 %44, label %__mlir_math_ipowi_i32.exit88, label %.lr.ph.i83

__mlir_math_ipowi_i32.exit88:                     ; preds = %.lr.ph.i83, %.preheader.i81
  %common.ret.op.i87 = phi i32 [ %36, %.preheader.i81 ], [ %spec.select.i86, %.lr.ph.i83 ]
  %45 = add nuw i32 %common.ret.op.i87, 1
  %46 = add i32 %common.ret.op.i87, -1
  %47 = zext nneg i32 %46 to i64
  %48 = add nuw nsw i64 %47, 1
  %49 = icmp sgt i32 %46, -1
  br i1 %49, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %__mlir_math_ipowi_i32.exit, %__mlir_math_ipowi_i32.exit88
  %50 = phi i64 [ %48, %__mlir_math_ipowi_i32.exit88 ], [ 1, %__mlir_math_ipowi_i32.exit ]
  %51 = phi i32 [ %45, %__mlir_math_ipowi_i32.exit88 ], [ 2, %__mlir_math_ipowi_i32.exit ]
  %52 = shl i32 %common.ret.op.i, 1
  %invariant.gep111 = getelementptr i8, ptr %6, i64 -8
  %invariant.gep94112 = getelementptr i8, ptr %6, i64 -16
  %53 = load i32, ptr %0, align 4, !tbaa !248
  %54 = icmp sgt i32 %53, 0
  %55 = add i32 %common.ret.op.i, -1
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, 1
  %58 = icmp sgt i32 %55, -1
  br i1 %58, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %59 = load i32, ptr %4, align 4, !tbaa !250
  %60 = sext i32 %59 to i64
  %61 = icmp sgt i32 %59, 0
  %62 = add nsw i64 %60, -1
  %63 = shl nuw nsw i64 %13, 4
  %64 = zext i32 %52 to i64
  %scevgep117 = getelementptr i8, ptr %8, i64 8
  %65 = shl nuw nsw i64 %13, 4
  %66 = add i32 %common.ret.op.i, 1
  %67 = zext i32 %66 to i64
  %scevgep126 = getelementptr i8, ptr %8, i64 8
  %68 = shl nuw nsw i64 %13, 4
  %69 = zext i32 %52 to i64
  %70 = shl nsw i64 %60, 4
  %71 = add nsw i64 %70, -8
  %scevgep132 = getelementptr i8, ptr %8, i64 %71
  %scevgep134 = getelementptr i8, ptr %8, i64 8
  %scevgep136 = getelementptr i8, ptr %8, i64 %70
  %72 = shl nuw nsw i64 %13, 4
  %73 = add i32 %common.ret.op.i, 1
  %74 = zext i32 %73 to i64
  %scevgep139 = getelementptr i8, ptr %8, i64 %71
  %scevgep141 = getelementptr i8, ptr %8, i64 8
  %scevgep143 = getelementptr i8, ptr %8, i64 %70
  %min.iters.check = icmp ult i32 %59, 12
  %mul.result = shl nsw i64 %62, 4
  %mul.result120 = shl nsw i64 %62, 4
  %mul.overflow121 = icmp ugt i64 %62, 1152921504606846975
  %mul.result124 = shl nsw i64 %62, 4
  %mul.result129 = shl nsw i64 %62, 4
  %bound0 = icmp ugt ptr %scevgep136, %8
  %bound1 = icmp ult ptr %scevgep134, %scevgep132
  %found.conflict = and i1 %bound0, %bound1
  %bound0160 = icmp ugt ptr %scevgep143, %8
  %bound1161 = icmp ult ptr %scevgep141, %scevgep139
  %found.conflict162 = and i1 %bound0160, %bound1161
  %n.vec = and i64 %60, 2147483646
  %ind.end = or i64 %60, 1
  %cmp.n = icmp eq i64 %n.vec, %60
  br label %.lr.ph90.us

.lr.ph90.us:                                      ; preds = %._crit_edge91.us, %.lr.ph.split.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %._crit_edge91.us ], [ 0, %.lr.ph.split.us ]
  %75 = phi i64 [ %92, %._crit_edge91.us ], [ %50, %.lr.ph.split.us ]
  %76 = mul i64 %indvars.iv105, %69
  %77 = or disjoint i64 %76, 1
  %78 = add i64 %76, %74
  %79 = mul i64 %indvars.iv105, %64
  %80 = or disjoint i64 %79, 1
  %81 = add i64 %79, %67
  %82 = trunc nuw nsw i64 %indvars.iv105 to i32
  %83 = mul i32 %common.ret.op.i, %82
  %84 = add i32 %83, 1
  %85 = add i32 %84, %14
  %86 = mul i32 %52, %82
  %87 = or disjoint i32 %86, 1
  %88 = add i32 %87, %common.ret.op.i
  %89 = add i32 %51, %82
  %90 = sext i32 %89 to i64
  %gep93.us = getelementptr { double, double }, ptr %invariant.gep111, i64 %90
  %.unpack71.us = load double, ptr %gep93.us, align 8, !tbaa !252
  %91 = fneg contract double %.unpack71.us
  %.sroa.334.0.us = select i1 %54, double %.unpack71.us, double %91
  %gep95.us = getelementptr { double, double }, ptr %invariant.gep94112, i64 %90
  %.sroa.033.0.us = load double, ptr %gep95.us, align 8, !tbaa !252
  br i1 %61, label %.lr.ph.us.us.preheader, label %._crit_edge91.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph90.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.sroa.033.0.us, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <2 x double> poison, double %.sroa.334.0.us, i64 0
  %broadcast.splat169 = shufflevector <2 x double> %broadcast.splatinsert168, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us.us

._crit_edge91.us:                                 ; preds = %._crit_edge.us.us, %.lr.ph90.us
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %92 = add nsw i64 %75, -1
  %93 = icmp sgt i64 %75, 1
  br i1 %93, label %.lr.ph90.us, label %._crit_edge

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  %94 = phi i64 [ %174, %._crit_edge.us.us ], [ %57, %.lr.ph.us.us.preheader ]
  %95 = add i64 %77, %indvars.iv102
  %sext = shl i64 %95, 32
  %96 = ashr exact i64 %sext, 32
  %97 = add nsw i64 %96, -1
  %98 = mul i64 %68, %97
  %scevgep131 = getelementptr i8, ptr %8, i64 %98
  %scevgep133 = getelementptr i8, ptr %scevgep132, i64 %98
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 %98
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %98
  %99 = add i64 %78, %indvars.iv102
  %sext171 = shl i64 %99, 32
  %100 = ashr exact i64 %sext171, 32
  %101 = add nsw i64 %100, -1
  %102 = mul i64 %72, %101
  %scevgep138 = getelementptr i8, ptr %8, i64 %102
  %scevgep140 = getelementptr i8, ptr %scevgep139, i64 %102
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %102
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %102
  %103 = trunc nuw nsw i64 %indvars.iv102 to i32
  %104 = add i32 %84, %103
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, -1
  %107 = mul nsw i64 %106, %13
  %108 = getelementptr { double, double }, ptr %7, i64 %107
  %109 = add i32 %85, %103
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, -1
  %112 = mul nsw i64 %111, %13
  %113 = getelementptr { double, double }, ptr %7, i64 %112
  %114 = add i32 %87, %103
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, -1
  %117 = mul nsw i64 %116, %13
  %118 = getelementptr { double, double }, ptr %8, i64 %117
  %119 = add i32 %88, %103
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, -1
  %122 = mul nsw i64 %121, %13
  %123 = getelementptr { double, double }, ptr %8, i64 %122
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us.us
  %124 = add i64 %81, %indvars.iv102
  %sext173 = shl i64 %124, 32
  %125 = ashr exact i64 %sext173, 32
  %126 = add nsw i64 %125, -1
  %127 = mul i64 %65, %126
  %scevgep127 = getelementptr i8, ptr %scevgep126, i64 %127
  %scevgep122 = getelementptr i8, ptr %8, i64 %127
  %128 = add i64 %80, %indvars.iv102
  %sext172 = shl i64 %128, 32
  %129 = ashr exact i64 %sext172, 32
  %130 = add nsw i64 %129, -1
  %131 = mul i64 %63, %130
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %131
  %scevgep = getelementptr i8, ptr %8, i64 %131
  %132 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %133 = icmp ult ptr %132, %scevgep
  %134 = getelementptr i8, ptr %scevgep118, i64 %mul.result120
  %135 = icmp ult ptr %134, %scevgep118
  %136 = or i1 %135, %mul.overflow121
  %137 = getelementptr i8, ptr %scevgep122, i64 %mul.result124
  %138 = icmp ult ptr %137, %scevgep122
  %139 = getelementptr i8, ptr %scevgep127, i64 %mul.result129
  %140 = icmp ult ptr %139, %scevgep127
  %141 = or i1 %133, %136
  %142 = or i1 %138, %141
  %143 = or i1 %140, %142
  br i1 %143, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0145 = icmp ult ptr %scevgep131, %scevgep140
  %bound1146 = icmp ult ptr %scevgep138, %scevgep133
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx = or i1 %found.conflict, %found.conflict147
  %bound0148 = icmp ult ptr %scevgep131, %scevgep144
  %bound1149 = icmp ult ptr %scevgep142, %scevgep133
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %conflict.rdx, %found.conflict150
  %bound0152 = icmp ult ptr %scevgep135, %scevgep140
  %bound1153 = icmp ult ptr %scevgep138, %scevgep137
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx151, %found.conflict154
  %bound0156 = icmp ult ptr %scevgep135, %scevgep144
  %bound1157 = icmp ult ptr %scevgep142, %scevgep137
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx155, %found.conflict158
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  br i1 %conflict.rdx163, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %144 = getelementptr { double, double }, ptr %108, i64 %index
  %wide.vec = load <4 x double>, ptr %144, align 8, !tbaa !254
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec164 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %145 = getelementptr { double, double }, ptr %113, i64 %index
  %wide.vec165 = load <4 x double>, ptr %145, align 8, !tbaa !254
  %strided.vec166 = shufflevector <4 x double> %wide.vec165, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec167 = shufflevector <4 x double> %wide.vec165, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %146 = fadd contract <2 x double> %strided.vec, %strided.vec166
  %147 = fadd contract <2 x double> %strided.vec164, %strided.vec167
  %148 = getelementptr { double, double }, ptr %118, i64 %index
  %interleaved.vec = shufflevector <2 x double> %146, <2 x double> %147, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %148, align 8, !tbaa !256
  %149 = fsub contract <2 x double> %strided.vec, %strided.vec166
  %150 = fsub contract <2 x double> %strided.vec164, %strided.vec167
  %151 = fmul contract <2 x double> %broadcast.splat, %149
  %152 = fmul contract <2 x double> %broadcast.splat169, %149
  %153 = fmul contract <2 x double> %broadcast.splat, %150
  %154 = fadd contract <2 x double> %152, %153
  %155 = fmul contract <2 x double> %broadcast.splat169, %150
  %156 = fsub contract <2 x double> %151, %155
  %157 = getelementptr { double, double }, ptr %123, i64 %index
  %interleaved.vec170 = shufflevector <2 x double> %156, <2 x double> %154, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec170, ptr %157, align 8, !tbaa !256
  %index.next = add nuw i64 %index, 2
  %158 = icmp eq i64 %index.next, %n.vec
  br i1 %158, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph.us.us ], [ %ind.end, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %159 = add nsw i64 %indvars.iv, -1
  %160 = getelementptr { double, double }, ptr %108, i64 %159
  %.unpack.us.us = load double, ptr %160, align 8, !tbaa !254
  %.elt72.us.us = getelementptr inbounds i8, ptr %160, i64 8
  %.unpack73.us.us = load double, ptr %.elt72.us.us, align 8, !tbaa !254
  %161 = getelementptr { double, double }, ptr %113, i64 %159
  %.unpack74.us.us = load double, ptr %161, align 8, !tbaa !254
  %.elt75.us.us = getelementptr inbounds i8, ptr %161, i64 8
  %.unpack76.us.us = load double, ptr %.elt75.us.us, align 8, !tbaa !254
  %162 = fadd contract double %.unpack.us.us, %.unpack74.us.us
  %163 = fadd contract double %.unpack73.us.us, %.unpack76.us.us
  %164 = getelementptr { double, double }, ptr %118, i64 %159
  store double %162, ptr %164, align 8, !tbaa !256
  %.repack77.us.us = getelementptr inbounds i8, ptr %164, i64 8
  store double %163, ptr %.repack77.us.us, align 8, !tbaa !256
  %165 = fsub contract double %.unpack.us.us, %.unpack74.us.us
  %166 = fsub contract double %.unpack73.us.us, %.unpack76.us.us
  %167 = fmul contract double %.sroa.033.0.us, %165
  %168 = fmul contract double %.sroa.334.0.us, %165
  %169 = fmul contract double %.sroa.033.0.us, %166
  %170 = fadd contract double %168, %169
  %171 = fmul contract double %.sroa.334.0.us, %166
  %172 = fsub contract double %167, %171
  %173 = getelementptr { double, double }, ptr %123, i64 %159
  store double %172, ptr %173, align 8, !tbaa !256
  %.repack79.us.us = getelementptr inbounds i8, ptr %173, i64 8
  store double %170, ptr %.repack79.us.us, align 8, !tbaa !256
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %60
  br i1 %exitcond.not, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !259

._crit_edge.us.us:                                ; preds = %scalar.ph, %middle.block
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %174 = add nsw i64 %94, -1
  %175 = icmp sgt i64 %94, 1
  br i1 %175, label %.lr.ph.us.us, label %._crit_edge91.us

._crit_edge:                                      ; preds = %._crit_edge91.us, %.lr.ph, %33, %__mlir_math_ipowi_i32.exit88
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define i32 @ilog2_(ptr nocapture readonly %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 4, !tbaa !31
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1
  %4 = icmp sgt i32 %2, 2
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.08 = phi i32 [ %5, %.lr.ph ], [ 2, %.preheader ]
  %.057 = phi i32 [ %6, %.lr.ph ], [ 1, %.preheader ]
  %5 = shl i32 %.08, 1
  %6 = add i32 %.057, 1
  %7 = icmp slt i32 %5, %2
  br i1 %7, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %1
  %.06 = phi i32 [ 0, %1 ], [ 1, %.preheader ], [ %6, %.lr.ph ]
  ret i32 %.06
}

define void @checksum_(ptr nocapture readonly %0, ptr %1, ptr nocapture readonly %2, ptr nocapture readonly %3, ptr nocapture readonly %4) local_unnamed_addr #0 {
entry:
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i64, align 8
  %.reloaded7 = alloca i64, align 8
  %.reloaded8 = alloca i64, align 8
  %5 = alloca { double, double }, align 8
  %6 = load i32, ptr %2, align 4, !tbaa !260
  %7 = add i32 %6, 1
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = zext nneg i32 %8 to i64
  %10 = load i32, ptr %3, align 4, !tbaa !266
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %12 = zext nneg i32 %11 to i64
  %13 = load i32, ptr %4, align 4, !tbaa !268
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = zext nneg i32 %14 to i64
  %.fca.1.gep = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %omp_global_thread_num = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i64 %9, ptr %.reloaded, align 8
  store i64 %12, ptr %.reloaded7, align 8
  store i64 %15, ptr %.reloaded8, align 8
  store ptr %.reloaded, ptr %structArg, align 8
  %gep_.reloaded7 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %.reloaded7, ptr %gep_.reloaded7, align 8
  %gep_.reloaded8 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %.reloaded8, ptr %gep_.reloaded8, align 8
  %gep_ = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %5, ptr %gep_, align 8
  %gep_9 = getelementptr inbounds i8, ptr %structArg, i64 32
  store ptr %1, ptr %gep_9, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @checksum_..omp_par, ptr nonnull %structArg)
  %.fca.0.load = load double, ptr %5, align 8, !tbaa !270
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8, !tbaa !270
  %16 = call { double, double } @__divdc3(double %.fca.0.load, double %.fca.1.load, double 0x4210000000000000, double 0.000000e+00)
  %.fca.0.extract = extractvalue { double, double } %16, 0
  %.fca.1.extract = extractvalue { double, double } %16, 1
  store double %.fca.0.extract, ptr %5, align 8, !tbaa !270
  store double %.fca.1.extract, ptr %.fca.1.gep, align 8, !tbaa !270
  %17 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX9e8d3c2d987ed8baf86b3735653b66b3, i64 37, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 863)
  %18 = load i32, ptr %0, align 4, !tbaa !271
  %19 = call i1 @_FortranAioOutputInteger32(ptr %17, i32 %18)
  %.fca.0.load17 = load double, ptr %5, align 8, !tbaa !270
  %.fca.1.load20 = load double, ptr %.fca.1.gep, align 8, !tbaa !270
  %20 = call i1 @_FortranAioOutputComplex64(ptr %17, double %.fca.0.load17, double %.fca.1.load20)
  %21 = call i32 @_FortranAioEndIoStatement(ptr %17)
  %.fca.0.load23 = load double, ptr %5, align 8, !tbaa !270
  %.fca.1.load26 = load double, ptr %.fca.1.gep, align 8, !tbaa !270
  %22 = load i32, ptr %0, align 4, !tbaa !271
  %23 = sext i32 %22 to i64
  %24 = getelementptr { double, double }, ptr @_QMft_dataEsums, i64 %23
  store double %.fca.0.load23, ptr %24, align 8, !tbaa !273
  %.repack28 = getelementptr inbounds i8, ptr %24, i64 8
  store double %.fca.1.load26, ptr %.repack28, align 8, !tbaa !273
  ret void
}

; Function Attrs: nounwind
define internal void @checksum_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_.reloaded = load ptr, ptr %0, align 8
  %gep_.reloaded7 = getelementptr i8, ptr %0, i64 8
  %loadgep_.reloaded7 = load ptr, ptr %gep_.reloaded7, align 8
  %gep_ = getelementptr i8, ptr %0, i64 24
  %loadgep_ = load ptr, ptr %gep_, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 32
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %1 = load i64, ptr %loadgep_.reloaded, align 8
  %2 = load i64, ptr %loadgep_.reloaded7, align 8
  %3 = alloca { double, double }, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %red.array = alloca [1 x ptr], align 8
  %.fca.1.gep = getelementptr inbounds i8, ptr %3, i64 8
  store i32 0, ptr %p.lowerbound, align 4
  store i32 1023, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num6 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num6, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %4 = load i32, ptr %p.lowerbound, align 4
  %5 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %5, %4
  %omp_loop.cmp20.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp20.not, label %omp_loop.exit, label %omp_loop.body.lr.ph

omp_loop.body.lr.ph:                              ; preds = %omp.par.entry
  %6 = add i32 %4, 1
  %7 = mul nsw i64 %2, %1
  br label %omp_loop.body

omp_loop.exit:                                    ; preds = %omp_loop.body, %omp.par.entry
  %.fca.1.load19.lcssa = phi double [ 0.000000e+00, %omp.par.entry ], [ %26, %omp_loop.body ]
  %.lcssa = phi double [ 0.000000e+00, %omp.par.entry ], [ %25, %omp_loop.body ]
  store double %.lcssa, ptr %3, align 8, !tbaa !276
  store double %.fca.1.load19.lcssa, ptr %.fca.1.gep, align 8, !tbaa !276
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num6)
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num6)
  store ptr %3, ptr %red.array, align 8
  %reduce = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num6, i32 1, i64 8, ptr nonnull %red.array, ptr nonnull @.omp.reduction.func, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce, 1
  br i1 %cond, label %reduce.switch.nonatomic, label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_loop.exit
  %red.value.0.unpack = load double, ptr %loadgep_, align 8
  %red.value.0.elt12 = getelementptr inbounds i8, ptr %loadgep_, i64 8
  %red.value.0.unpack13 = load double, ptr %red.value.0.elt12, align 8
  %red.private.value.0.fca.0.load = load double, ptr %3, align 8
  %red.private.value.0.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %8 = fadd contract double %red.value.0.unpack, %red.private.value.0.fca.0.load
  %9 = fadd contract double %red.value.0.unpack13, %red.private.value.0.fca.1.load
  store double %8, ptr %loadgep_, align 8
  store double %9, ptr %red.value.0.elt12, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num6, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %omp_loop.exit, %reduce.switch.nonatomic
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num6)
  ret void

omp_loop.body:                                    ; preds = %omp_loop.body.lr.ph, %omp_loop.body
  %omp_loop.iv22 = phi i32 [ 0, %omp_loop.body.lr.ph ], [ %omp_loop.next, %omp_loop.body ]
  %10 = phi double [ 0.000000e+00, %omp_loop.body.lr.ph ], [ %25, %omp_loop.body ]
  %.fca.1.load1921 = phi double [ 0.000000e+00, %omp_loop.body.lr.ph ], [ %26, %omp_loop.body ]
  %11 = add i32 %6, %omp_loop.iv22
  %12 = srem i32 %11, 4096
  %13 = mul i32 %11, 3
  %14 = srem i32 %13, 2048
  %15 = mul i32 %11, 5
  %16 = srem i32 %15, 2048
  %17 = sext i32 %12 to i64
  %18 = sext i32 %14 to i64
  %19 = mul nsw i64 %1, %18
  %20 = sext i32 %16 to i64
  %21 = mul nsw i64 %7, %20
  %22 = getelementptr { double, double }, ptr %loadgep_2, i64 %21
  %23 = getelementptr { double, double }, ptr %22, i64 %19
  %24 = getelementptr { double, double }, ptr %23, i64 %17
  %.unpack = load double, ptr %24, align 8, !tbaa !278
  %.elt17 = getelementptr inbounds i8, ptr %24, i64 8
  %.unpack18 = load double, ptr %.elt17, align 8, !tbaa !278
  %25 = fadd contract double %10, %.unpack
  %26 = fadd contract double %.fca.1.load1921, %.unpack18
  %omp_loop.next = add nuw i32 %omp_loop.iv22, 1
  %exitcond.not = icmp eq i32 %omp_loop.iv22, %reass.sub
  br i1 %exitcond.not, label %omp_loop.exit, label %omp_loop.body
}

define void @verify_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr nocapture readonly %3, ptr nocapture %4, ptr %5, i64 %6) local_unnamed_addr #0 {
  %8 = alloca [25 x { double, double }], align 8
  %.unpack = load i8, ptr @_QQclX55, align 1, !tbaa !280
  store i8 %.unpack, ptr %5, align 1, !tbaa !286
  store i32 0, ptr %4, align 4, !tbaa !287
  %9 = load i32, ptr %0, align 4, !tbaa !290
  %10 = icmp eq i32 %9, 64
  %11 = load i32, ptr %1, align 4, !tbaa !292
  %12 = icmp eq i32 %11, 64
  %13 = and i1 %10, %12
  %14 = load i32, ptr %2, align 4, !tbaa !294
  %15 = icmp eq i32 %14, 64
  %16 = and i1 %13, %15
  %17 = load i32, ptr %3, align 4, !tbaa !296
  %18 = icmp eq i32 %17, 6
  %19 = and i1 %16, %18
  %.sink294.sroa.gep322 = getelementptr inbounds i8, ptr %8, i64 88
  %.sink294.sroa.gep323 = getelementptr inbounds i8, ptr %8, i64 88
  %.sink294.sroa.gep324 = getelementptr inbounds i8, ptr %8, i64 312
  %.sink294.sroa.gep325 = getelementptr inbounds i8, ptr %8, i64 312
  %.sink294.sroa.gep326 = getelementptr inbounds i8, ptr %8, i64 392
  %.sink294.sroa.gep327 = getelementptr inbounds i8, ptr %8, i64 392
  %.sink294.sroa.gep328 = getelementptr inbounds i8, ptr %8, i64 392
  %.sink297.sroa.gep329 = getelementptr inbounds i8, ptr %8, i64 80
  %.sink297.sroa.gep330 = getelementptr inbounds i8, ptr %8, i64 80
  %.sink297.sroa.gep331 = getelementptr inbounds i8, ptr %8, i64 304
  %.sink297.sroa.gep332 = getelementptr inbounds i8, ptr %8, i64 304
  %.sink297.sroa.gep333 = getelementptr inbounds i8, ptr %8, i64 384
  %.sink297.sroa.gep334 = getelementptr inbounds i8, ptr %8, i64 384
  %.sink297.sroa.gep335 = getelementptr inbounds i8, ptr %8, i64 384
  %.sink299.sroa.gep336 = getelementptr inbounds i8, ptr %8, i64 72
  %.sink299.sroa.gep337 = getelementptr inbounds i8, ptr %8, i64 72
  %.sink299.sroa.gep338 = getelementptr inbounds i8, ptr %8, i64 296
  %.sink299.sroa.gep339 = getelementptr inbounds i8, ptr %8, i64 296
  %.sink299.sroa.gep340 = getelementptr inbounds i8, ptr %8, i64 376
  %.sink299.sroa.gep341 = getelementptr inbounds i8, ptr %8, i64 376
  %.sink299.sroa.gep342 = getelementptr inbounds i8, ptr %8, i64 376
  %.sink302.sroa.gep343 = getelementptr inbounds i8, ptr %8, i64 64
  %.sink302.sroa.gep344 = getelementptr inbounds i8, ptr %8, i64 64
  %.sink302.sroa.gep345 = getelementptr inbounds i8, ptr %8, i64 288
  %.sink302.sroa.gep346 = getelementptr inbounds i8, ptr %8, i64 288
  %.sink302.sroa.gep347 = getelementptr inbounds i8, ptr %8, i64 368
  %.sink302.sroa.gep348 = getelementptr inbounds i8, ptr %8, i64 368
  %.sink302.sroa.gep349 = getelementptr inbounds i8, ptr %8, i64 368
  %.sink304.sroa.gep350 = getelementptr inbounds i8, ptr %8, i64 56
  %.sink304.sroa.gep351 = getelementptr inbounds i8, ptr %8, i64 56
  %.sink304.sroa.gep352 = getelementptr inbounds i8, ptr %8, i64 280
  %.sink304.sroa.gep353 = getelementptr inbounds i8, ptr %8, i64 280
  %.sink304.sroa.gep354 = getelementptr inbounds i8, ptr %8, i64 360
  %.sink304.sroa.gep355 = getelementptr inbounds i8, ptr %8, i64 360
  %.sink304.sroa.gep356 = getelementptr inbounds i8, ptr %8, i64 360
  %.sink307.sroa.gep357 = getelementptr inbounds i8, ptr %8, i64 48
  %.sink307.sroa.gep358 = getelementptr inbounds i8, ptr %8, i64 48
  %.sink307.sroa.gep359 = getelementptr inbounds i8, ptr %8, i64 272
  %.sink307.sroa.gep360 = getelementptr inbounds i8, ptr %8, i64 272
  %.sink307.sroa.gep361 = getelementptr inbounds i8, ptr %8, i64 352
  %.sink307.sroa.gep362 = getelementptr inbounds i8, ptr %8, i64 352
  %.sink307.sroa.gep363 = getelementptr inbounds i8, ptr %8, i64 352
  %.sink309.sroa.gep364 = getelementptr inbounds i8, ptr %8, i64 40
  %.sink309.sroa.gep365 = getelementptr inbounds i8, ptr %8, i64 40
  %.sink309.sroa.gep366 = getelementptr inbounds i8, ptr %8, i64 264
  %.sink309.sroa.gep367 = getelementptr inbounds i8, ptr %8, i64 264
  %.sink309.sroa.gep368 = getelementptr inbounds i8, ptr %8, i64 344
  %.sink309.sroa.gep369 = getelementptr inbounds i8, ptr %8, i64 344
  %.sink309.sroa.gep370 = getelementptr inbounds i8, ptr %8, i64 344
  %.sink312.sroa.gep371 = getelementptr inbounds i8, ptr %8, i64 32
  %.sink312.sroa.gep372 = getelementptr inbounds i8, ptr %8, i64 32
  %.sink312.sroa.gep373 = getelementptr inbounds i8, ptr %8, i64 256
  %.sink312.sroa.gep374 = getelementptr inbounds i8, ptr %8, i64 256
  %.sink312.sroa.gep375 = getelementptr inbounds i8, ptr %8, i64 336
  %.sink312.sroa.gep376 = getelementptr inbounds i8, ptr %8, i64 336
  %.sink312.sroa.gep377 = getelementptr inbounds i8, ptr %8, i64 336
  %.sink314.sroa.gep378 = getelementptr inbounds i8, ptr %8, i64 24
  %.sink314.sroa.gep379 = getelementptr inbounds i8, ptr %8, i64 24
  %.sink314.sroa.gep380 = getelementptr inbounds i8, ptr %8, i64 248
  %.sink314.sroa.gep381 = getelementptr inbounds i8, ptr %8, i64 248
  %.sink314.sroa.gep382 = getelementptr inbounds i8, ptr %8, i64 328
  %.sink314.sroa.gep383 = getelementptr inbounds i8, ptr %8, i64 328
  %.sink314.sroa.gep384 = getelementptr inbounds i8, ptr %8, i64 328
  %.sink317.sroa.gep385 = getelementptr inbounds i8, ptr %8, i64 16
  %.sink317.sroa.gep386 = getelementptr inbounds i8, ptr %8, i64 16
  %.sink317.sroa.gep387 = getelementptr inbounds i8, ptr %8, i64 240
  %.sink317.sroa.gep388 = getelementptr inbounds i8, ptr %8, i64 240
  %.sink317.sroa.gep389 = getelementptr inbounds i8, ptr %8, i64 320
  %.sink317.sroa.gep390 = getelementptr inbounds i8, ptr %8, i64 320
  %.sink317.sroa.gep391 = getelementptr inbounds i8, ptr %8, i64 320
  %.sink319.sroa.gep392 = getelementptr inbounds i8, ptr %8, i64 8
  %.sink319.sroa.gep393 = getelementptr inbounds i8, ptr %8, i64 8
  %.sink319.sroa.gep394 = getelementptr inbounds i8, ptr %8, i64 232
  %.sink319.sroa.gep395 = getelementptr inbounds i8, ptr %8, i64 232
  %.sink319.sroa.gep396 = getelementptr inbounds i8, ptr %8, i64 312
  %.sink319.sroa.gep397 = getelementptr inbounds i8, ptr %8, i64 312
  %.sink319.sroa.gep398 = getelementptr inbounds i8, ptr %8, i64 312
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  %.sink319.sroa.gep = getelementptr inbounds i8, ptr %8, i64 8
  %.sink317.sroa.gep = getelementptr inbounds i8, ptr %8, i64 16
  %.sink314.sroa.gep = getelementptr inbounds i8, ptr %8, i64 24
  %.sink312.sroa.gep = getelementptr inbounds i8, ptr %8, i64 32
  %.sink309.sroa.gep = getelementptr inbounds i8, ptr %8, i64 40
  %.sink307.sroa.gep = getelementptr inbounds i8, ptr %8, i64 48
  %.sink304.sroa.gep = getelementptr inbounds i8, ptr %8, i64 56
  %.sink302.sroa.gep = getelementptr inbounds i8, ptr %8, i64 64
  %.sink299.sroa.gep = getelementptr inbounds i8, ptr %8, i64 72
  %.sink297.sroa.gep = getelementptr inbounds i8, ptr %8, i64 80
  %.sink294.sroa.gep = getelementptr inbounds i8, ptr %8, i64 88
  %.unpack279 = load i8, ptr @_QQclX53, align 1, !tbaa !298
  store i8 %.unpack279, ptr %5, align 1, !tbaa !286
  store double 0x408154DE9E5DA8C7, ptr %8, align 8, !tbaa !286
  br label %.sink.split

21:                                               ; preds = %7
  %22 = icmp eq i32 %9, 128
  %23 = icmp eq i32 %11, 128
  %24 = and i1 %22, %23
  %25 = icmp eq i32 %14, 32
  %26 = and i1 %24, %25
  %27 = and i1 %26, %18
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  %.unpack278 = load i8, ptr @_QQclX57, align 1, !tbaa !300
  store i8 %.unpack278, ptr %5, align 1, !tbaa !286
  store double 0x4081BAE3C635196D, ptr %8, align 8, !tbaa !286
  br label %.sink.split

29:                                               ; preds = %21
  %30 = icmp eq i32 %9, 256
  %31 = icmp eq i32 %11, 256
  %32 = icmp eq i32 %14, 128
  %33 = and i1 %30, %32
  %34 = and i1 %31, %33
  %35 = and i1 %18, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  %.unpack277 = load i8, ptr @_QQclX41, align 1, !tbaa !302
  store i8 %.unpack277, ptr %5, align 1, !tbaa !286
  store double 0x407F8AC6A8CB8B90, ptr %8, align 8, !tbaa !286
  br label %.sink.split

37:                                               ; preds = %29
  %38 = icmp eq i32 %9, 512
  %39 = icmp eq i32 %14, 256
  %40 = and i1 %31, %39
  %41 = and i1 %38, %40
  %42 = icmp eq i32 %17, 20
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %.unpack276 = load i8, ptr @_QQclX42, align 1, !tbaa !304
  store i8 %.unpack276, ptr %5, align 1, !tbaa !286
  store double 0x40802E1D67491D27, ptr %8, align 8, !tbaa !286
  %.fca.1.gep192 = getelementptr inbounds i8, ptr %8, i64 8
  store double 0x407FBC7C4BF0AFB0, ptr %.fca.1.gep192, align 8, !tbaa !286
  %45 = getelementptr inbounds i8, ptr %8, i64 16
  store double 0x40801B9DF5E01838, ptr %45, align 8, !tbaa !286
  %.fca.1.gep194 = getelementptr inbounds i8, ptr %8, i64 24
  store double 0x407FCD32F7994D45, ptr %.fca.1.gep194, align 8, !tbaa !286
  %46 = getelementptr inbounds i8, ptr %8, i64 32
  store double 0x408015209C2AC008, ptr %46, align 8, !tbaa !286
  %.fca.1.gep196 = getelementptr inbounds i8, ptr %8, i64 40
  store double 0x407FD9EF2BAE169A, ptr %.fca.1.gep196, align 8, !tbaa !286
  %47 = getelementptr inbounds i8, ptr %8, i64 48
  store double 0x408011E72B556FFE, ptr %47, align 8, !tbaa !286
  %.fca.1.gep198 = getelementptr inbounds i8, ptr %8, i64 56
  store double 0x407FE1A32DF83794, ptr %.fca.1.gep198, align 8, !tbaa !286
  %48 = getelementptr inbounds i8, ptr %8, i64 64
  store double 0x40800FB38AA32FE6, ptr %48, align 8, !tbaa !286
  %.fca.1.gep200 = getelementptr inbounds i8, ptr %8, i64 72
  store double 0x407FE65CD1D86E4E, ptr %.fca.1.gep200, align 8, !tbaa !286
  %49 = getelementptr inbounds i8, ptr %8, i64 80
  store double 0x40800DF0531A9C48, ptr %49, align 8, !tbaa !286
  %.fca.1.gep202 = getelementptr inbounds i8, ptr %8, i64 88
  store double 0x407FE9844F14C8E1, ptr %.fca.1.gep202, align 8, !tbaa !286
  %50 = getelementptr inbounds i8, ptr %8, i64 96
  store double 0x40800C700989200D, ptr %50, align 8, !tbaa !286
  %.fca.1.gep204 = getelementptr inbounds i8, ptr %8, i64 104
  store double 0x407FEBD8BF0DD370, ptr %.fca.1.gep204, align 8, !tbaa !286
  %51 = getelementptr inbounds i8, ptr %8, i64 112
  store double 0x40800B20F5210ADA, ptr %51, align 8, !tbaa !286
  %.fca.1.gep206 = getelementptr inbounds i8, ptr %8, i64 120
  store double 0x407FEDB8F6EE292B, ptr %.fca.1.gep206, align 8, !tbaa !286
  %52 = getelementptr inbounds i8, ptr %8, i64 128
  store double 0x408009FA001E667B, ptr %52, align 8, !tbaa !286
  %.fca.1.gep208 = getelementptr inbounds i8, ptr %8, i64 136
  store double 0x407FEF52DA70C18D, ptr %.fca.1.gep208, align 8, !tbaa !286
  %53 = getelementptr inbounds i8, ptr %8, i64 144
  store double 0x408008F54B8BB893, ptr %53, align 8, !tbaa !286
  %.fca.1.gep210 = getelementptr inbounds i8, ptr %8, i64 152
  store double 0x407FF0BC8A6C6119, ptr %.fca.1.gep210, align 8, !tbaa !286
  %54 = getelementptr inbounds i8, ptr %8, i64 160
  store double 0x4080080E66C1709C, ptr %54, align 8, !tbaa !286
  %.fca.1.gep212 = getelementptr inbounds i8, ptr %8, i64 168
  store double 0x407FF200FF33D23F, ptr %.fca.1.gep212, align 8, !tbaa !286
  %55 = getelementptr inbounds i8, ptr %8, i64 176
  store double 0x40800741A55F37AD, ptr %55, align 8, !tbaa !286
  %.fca.1.gep214 = getelementptr inbounds i8, ptr %8, i64 184
  store double 0x407FF3261FE7F7AD, ptr %.fca.1.gep214, align 8, !tbaa !286
  %56 = getelementptr inbounds i8, ptr %8, i64 192
  store double 0x4080068BDAC33674, ptr %56, align 8, !tbaa !286
  %.fca.1.gep216 = getelementptr inbounds i8, ptr %8, i64 200
  store double 0x407FF42F9BEB8DC0, ptr %.fca.1.gep216, align 8, !tbaa !286
  %57 = getelementptr inbounds i8, ptr %8, i64 208
  store double 0x408005EA3C919C43, ptr %57, align 8, !tbaa !286
  %.fca.1.gep218 = getelementptr inbounds i8, ptr %8, i64 216
  store double 0x407FF5203263B154, ptr %.fca.1.gep218, align 8, !tbaa !286
  %58 = getelementptr inbounds i8, ptr %8, i64 224
  store double 0x4080055A545A3920, ptr %58, align 8, !tbaa !286
  br label %.sink.split

59:                                               ; preds = %37
  %60 = icmp eq i32 %11, 512
  %61 = icmp eq i32 %14, 512
  %62 = and i1 %60, %61
  %63 = and i1 %38, %62
  %64 = and i1 %42, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %.unpack275 = load i8, ptr @_QQclX43, align 1, !tbaa !306
  store i8 %.unpack275, ptr %5, align 1, !tbaa !286
  store double 0x40803C101E899B03, ptr %8, align 8, !tbaa !286
  %.fca.1.gep152 = getelementptr inbounds i8, ptr %8, i64 8
  store double 0x408017373C01E593, ptr %.fca.1.gep152, align 8, !tbaa !286
  %66 = getelementptr inbounds i8, ptr %8, i64 16
  store double 0x40801C5675ED0B14, ptr %66, align 8, !tbaa !286
  %.fca.1.gep154 = getelementptr inbounds i8, ptr %8, i64 24
  store double 0x4080061004096FAD, ptr %.fca.1.gep154, align 8, !tbaa !286
  %67 = getelementptr inbounds i8, ptr %8, i64 32
  store double 0x408013BE0F176AC3, ptr %67, align 8, !tbaa !286
  %.fca.1.gep156 = getelementptr inbounds i8, ptr %8, i64 40
  store double 0x408001CD2DA9B691, ptr %.fca.1.gep156, align 8, !tbaa !286
  %68 = getelementptr inbounds i8, ptr %8, i64 48
  store double 0x4080101ED77ADAFA, ptr %68, align 8, !tbaa !286
  %.fca.1.gep158 = getelementptr inbounds i8, ptr %8, i64 56
  store double 0x408000DF4A8B7C66, ptr %.fca.1.gep158, align 8, !tbaa !286
  %69 = getelementptr inbounds i8, ptr %8, i64 64
  store double 0x40800E0A53D12FD5, ptr %69, align 8, !tbaa !286
  %.fca.1.gep160 = getelementptr inbounds i8, ptr %8, i64 72
  store double 0x408000EA3A1348C8, ptr %.fca.1.gep160, align 8, !tbaa !286
  %70 = getelementptr inbounds i8, ptr %8, i64 80
  store double 0x40800CA61ABB2192, ptr %70, align 8, !tbaa !286
  %.fca.1.gep162 = getelementptr inbounds i8, ptr %8, i64 88
  store double 0x408001328991F77F, ptr %.fca.1.gep162, align 8, !tbaa !286
  %71 = getelementptr inbounds i8, ptr %8, i64 96
  store double 0x40800BA7CD2DCE4D, ptr %71, align 8, !tbaa !286
  %.fca.1.gep164 = getelementptr inbounds i8, ptr %8, i64 104
  store double 0x4080017F2A30930B, ptr %.fca.1.gep164, align 8, !tbaa !286
  %72 = getelementptr inbounds i8, ptr %8, i64 112
  store double 0x40800AEBECB397D4, ptr %72, align 8, !tbaa !286
  %.fca.1.gep166 = getelementptr inbounds i8, ptr %8, i64 120
  store double 0x408001C12D7B83F2, ptr %.fca.1.gep166, align 8, !tbaa !286
  %73 = getelementptr inbounds i8, ptr %8, i64 128
  store double 0x40800A5D393668AE, ptr %73, align 8, !tbaa !286
  %.fca.1.gep168 = getelementptr inbounds i8, ptr %8, i64 136
  store double 0x408001F6BADA1C71, ptr %.fca.1.gep168, align 8, !tbaa !286
  %74 = getelementptr inbounds i8, ptr %8, i64 144
  store double 0x408009EDAA24021D, ptr %74, align 8, !tbaa !286
  %.fca.1.gep170 = getelementptr inbounds i8, ptr %8, i64 152
  store double 0x4080022183F3CA50, ptr %.fca.1.gep170, align 8, !tbaa !286
  %75 = getelementptr inbounds i8, ptr %8, i64 160
  store double 0x40800993B097C5AC, ptr %75, align 8, !tbaa !286
  %.fca.1.gep172 = getelementptr inbounds i8, ptr %8, i64 168
  store double 0x40800243C3A1DCB2, ptr %.fca.1.gep172, align 8, !tbaa !286
  %76 = getelementptr inbounds i8, ptr %8, i64 176
  store double 0x40800948BF026ADC, ptr %76, align 8, !tbaa !286
  %.fca.1.gep174 = getelementptr inbounds i8, ptr %8, i64 184
  store double 0x4080025F68FD8268, ptr %.fca.1.gep174, align 8, !tbaa !286
  %77 = getelementptr inbounds i8, ptr %8, i64 192
  store double 0x4080090857A518D9, ptr %77, align 8, !tbaa !286
  %.fca.1.gep176 = getelementptr inbounds i8, ptr %8, i64 200
  store double 0x40800275F32F50EA, ptr %.fca.1.gep176, align 8, !tbaa !286
  %78 = getelementptr inbounds i8, ptr %8, i64 208
  store double 0x408008CF67B5F6E6, ptr %78, align 8, !tbaa !286
  %.fca.1.gep178 = getelementptr inbounds i8, ptr %8, i64 216
  store double 0x408002887F1716B0, ptr %.fca.1.gep178, align 8, !tbaa !286
  %79 = getelementptr inbounds i8, ptr %8, i64 224
  store double 0x4080089BD580EA3A, ptr %79, align 8, !tbaa !286
  br label %.sink.split

80:                                               ; preds = %59
  %81 = icmp eq i32 %9, 2048
  %82 = icmp eq i32 %11, 1024
  %83 = and i1 %81, %82
  %84 = icmp eq i32 %14, 1024
  %85 = and i1 %83, %84
  %86 = icmp eq i32 %17, 25
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %80
  %.unpack274 = load i8, ptr @_QQclX44, align 1, !tbaa !308
  store i8 %.unpack274, ptr %5, align 1, !tbaa !286
  store double 0x408001C8B7A5243B, ptr %8, align 8, !tbaa !286
  %.fca.1.gep102 = getelementptr inbounds i8, ptr %8, i64 8
  store double 0x407FFDA78AA6499C, ptr %.fca.1.gep102, align 8, !tbaa !286
  %89 = getelementptr inbounds i8, ptr %8, i64 16
  store double 0x4080005F05B14D73, ptr %89, align 8, !tbaa !286
  %.fca.1.gep104 = getelementptr inbounds i8, ptr %8, i64 24
  store double 0x407FFB4C42805D51, ptr %.fca.1.gep104, align 8, !tbaa !286
  %90 = getelementptr inbounds i8, ptr %8, i64 32
  store double 0x407FFFC9049FE6AA, ptr %90, align 8, !tbaa !286
  %.fca.1.gep106 = getelementptr inbounds i8, ptr %8, i64 40
  store double 0x407FFB5AABC2C2DC, ptr %.fca.1.gep106, align 8, !tbaa !286
  %91 = getelementptr inbounds i8, ptr %8, i64 48
  store double 0x407FFF3AE6781D07, ptr %91, align 8, !tbaa !286
  %.fca.1.gep108 = getelementptr inbounds i8, ptr %8, i64 56
  store double 0x407FFBCC55AD30A5, ptr %.fca.1.gep108, align 8, !tbaa !286
  %92 = getelementptr inbounds i8, ptr %8, i64 64
  store double 0x407FFED49E586270, ptr %92, align 8, !tbaa !286
  %.fca.1.gep110 = getelementptr inbounds i8, ptr %8, i64 72
  store double 0x407FFC49DED1E229, ptr %.fca.1.gep110, align 8, !tbaa !286
  %93 = getelementptr inbounds i8, ptr %8, i64 80
  store double 0x407FFE88286F1600, ptr %93, align 8, !tbaa !286
  %.fca.1.gep112 = getelementptr inbounds i8, ptr %8, i64 88
  store double 0x407FFCBFA44E2DA9, ptr %.fca.1.gep112, align 8, !tbaa !286
  %94 = getelementptr inbounds i8, ptr %8, i64 96
  store double 0x407FFE4F62F012B7, ptr %94, align 8, !tbaa !286
  %.fca.1.gep114 = getelementptr inbounds i8, ptr %8, i64 104
  store double 0x407FFD2913502BF7, ptr %.fca.1.gep114, align 8, !tbaa !286
  %95 = getelementptr inbounds i8, ptr %8, i64 112
  store double 0x407FFE25D7467D87, ptr %95, align 8, !tbaa !286
  %.fca.1.gep116 = getelementptr inbounds i8, ptr %8, i64 120
  store double 0x407FFD85C991CC1E, ptr %.fca.1.gep116, align 8, !tbaa !286
  %96 = getelementptr inbounds i8, ptr %8, i64 128
  store double 0x407FFE07F5F9461B, ptr %96, align 8, !tbaa !286
  %.fca.1.gep118 = getelementptr inbounds i8, ptr %8, i64 136
  store double 0x407FFDD6ADE6AA2F, ptr %.fca.1.gep118, align 8, !tbaa !286
  %97 = getelementptr inbounds i8, ptr %8, i64 144
  store double 0x407FFDF2F9E3CE75, ptr %97, align 8, !tbaa !286
  %.fca.1.gep120 = getelementptr inbounds i8, ptr %8, i64 152
  store double 0x407FFE1D0052370F, ptr %.fca.1.gep120, align 8, !tbaa !286
  %98 = getelementptr inbounds i8, ptr %8, i64 160
  store double 0x407FFDE4CA360F49, ptr %98, align 8, !tbaa !286
  %.fca.1.gep122 = getelementptr inbounds i8, ptr %8, i64 168
  store double 0x407FFE5A05B5973E, ptr %.fca.1.gep122, align 8, !tbaa !286
  %99 = getelementptr inbounds i8, ptr %8, i64 176
  store double 0x407FFDDBD5F99711, ptr %99, align 8, !tbaa !286
  %.fca.1.gep124 = getelementptr inbounds i8, ptr %8, i64 184
  store double 0x407FFE8EEACAA874, ptr %.fca.1.gep124, align 8, !tbaa !286
  %100 = getelementptr inbounds i8, ptr %8, i64 192
  store double 0x407FFDD6F2033D21, ptr %100, align 8, !tbaa !286
  %.fca.1.gep126 = getelementptr inbounds i8, ptr %8, i64 200
  store double 0x407FFEBCBBFA2EBF, ptr %.fca.1.gep126, align 8, !tbaa !286
  %101 = getelementptr inbounds i8, ptr %8, i64 208
  store double 0x407FFDD53D74DC74, ptr %101, align 8, !tbaa !286
  %.fca.1.gep128 = getelementptr inbounds i8, ptr %8, i64 216
  store double 0x407FFEE46511649D, ptr %.fca.1.gep128, align 8, !tbaa !286
  %102 = getelementptr inbounds i8, ptr %8, i64 224
  store double 0x407FFDD60D2DB5D2, ptr %102, align 8, !tbaa !286
  %.fca.1.gep130 = getelementptr inbounds i8, ptr %8, i64 232
  store double 0x407FFF06B3C01AEA, ptr %.fca.1.gep130, align 8, !tbaa !286
  %103 = getelementptr inbounds i8, ptr %8, i64 240
  store double 0x407FFDD8DD056A7D, ptr %103, align 8, !tbaa !286
  %.fca.1.gep132 = getelementptr inbounds i8, ptr %8, i64 248
  store double 0x407FFF245ADF0BCE, ptr %.fca.1.gep132, align 8, !tbaa !286
  %104 = getelementptr inbounds i8, ptr %8, i64 256
  store double 0x407FFDDD45618FE6, ptr %104, align 8, !tbaa !286
  %.fca.1.gep134 = getelementptr inbounds i8, ptr %8, i64 264
  store double 0x407FFF3DF5BAB029, ptr %.fca.1.gep134, align 8, !tbaa !286
  %105 = getelementptr inbounds i8, ptr %8, i64 272
  store double 0x407FFDE2F3E650B3, ptr %105, align 8, !tbaa !286
  %.fca.1.gep136 = getelementptr inbounds i8, ptr %8, i64 280
  store double 0x407FFF540B1CF5A1, ptr %.fca.1.gep136, align 8, !tbaa !286
  %106 = getelementptr inbounds i8, ptr %8, i64 288
  store double 0x407FFDE9A64E1245, ptr %106, align 8, !tbaa !286
  %.fca.1.gep138 = getelementptr inbounds i8, ptr %8, i64 296
  store double 0x407FFF671002DAE5, ptr %.fca.1.gep138, align 8, !tbaa !286
  %107 = getelementptr inbounds i8, ptr %8, i64 304
  store double 0x407FFDF126BADF21, ptr %107, align 8, !tbaa !286
  br label %.sink.split

108:                                              ; preds = %80
  %109 = icmp eq i32 %9, 4096
  %110 = icmp eq i32 %11, 2048
  %111 = and i1 %109, %110
  %112 = icmp eq i32 %14, 2048
  %113 = and i1 %111, %112
  %114 = and i1 %113, %86
  br i1 %114, label %115, label %135

115:                                              ; preds = %108
  %.unpack273 = load i8, ptr @_QQclX45, align 1, !tbaa !310
  store i8 %.unpack273, ptr %5, align 1, !tbaa !286
  store double 0x40800147E4E2E063, ptr %8, align 8, !tbaa !286
  %.fca.1.gep52 = getelementptr inbounds i8, ptr %8, i64 8
  store double 0x407FFBD566A0B5FD, ptr %.fca.1.gep52, align 8, !tbaa !286
  %116 = getelementptr inbounds i8, ptr %8, i64 16
  store double 0x408000B96D3A755A, ptr %116, align 8, !tbaa !286
  %.fca.1.gep54 = getelementptr inbounds i8, ptr %8, i64 24
  store double 0x407FFDC89676A99F, ptr %.fca.1.gep54, align 8, !tbaa !286
  %117 = getelementptr inbounds i8, ptr %8, i64 32
  store double 0x4080007FA32A25BE, ptr %117, align 8, !tbaa !286
  %.fca.1.gep56 = getelementptr inbounds i8, ptr %8, i64 40
  store double 0x407FFE84CB3A10F8, ptr %.fca.1.gep56, align 8, !tbaa !286
  %118 = getelementptr inbounds i8, ptr %8, i64 48
  store double 0x40800059C9C82B40, ptr %118, align 8, !tbaa !286
  %.fca.1.gep58 = getelementptr inbounds i8, ptr %8, i64 56
  store double 0x407FFEF414B87FD6, ptr %.fca.1.gep58, align 8, !tbaa !286
  %119 = getelementptr inbounds i8, ptr %8, i64 64
  store double 0x4080003FCCB7C9C8, ptr %119, align 8, !tbaa !286
  %.fca.1.gep60 = getelementptr inbounds i8, ptr %8, i64 72
  store double 0x407FFF483912F11E, ptr %.fca.1.gep60, align 8, !tbaa !286
  %120 = getelementptr inbounds i8, ptr %8, i64 80
  store double 0x4080002E4D90A084, ptr %120, align 8, !tbaa !286
  %.fca.1.gep62 = getelementptr inbounds i8, ptr %8, i64 88
  store double 0x407FFF8D62BCE558, ptr %.fca.1.gep62, align 8, !tbaa !286
  %121 = getelementptr inbounds i8, ptr %8, i64 96
  store double 0x40800022AC039D7C, ptr %121, align 8, !tbaa !286
  %.fca.1.gep64 = getelementptr inbounds i8, ptr %8, i64 104
  store double 0x407FFFC737C3F7CD, ptr %.fca.1.gep64, align 8, !tbaa !286
  %122 = getelementptr inbounds i8, ptr %8, i64 112
  store double 0x4080001ADFFA71B9, ptr %122, align 8, !tbaa !286
  %.fca.1.gep66 = getelementptr inbounds i8, ptr %8, i64 120
  store double 0x407FFFF78C336255, ptr %.fca.1.gep66, align 8, !tbaa !286
  %123 = getelementptr inbounds i8, ptr %8, i64 128
  store double 0x4080001574D0520C, ptr %123, align 8, !tbaa !286
  %.fca.1.gep68 = getelementptr inbounds i8, ptr %8, i64 136
  store double 0x4080000FE85C03E9, ptr %.fca.1.gep68, align 8, !tbaa !286
  %124 = getelementptr inbounds i8, ptr %8, i64 144
  store double 0x408000116F284244, ptr %124, align 8, !tbaa !286
  %.fca.1.gep70 = getelementptr inbounds i8, ptr %8, i64 152
  store double 0x40800020A7695837, ptr %.fca.1.gep70, align 8, !tbaa !286
  %125 = getelementptr inbounds i8, ptr %8, i64 160
  store double 0x4080000E2D56813F, ptr %125, align 8, !tbaa !286
  %.fca.1.gep72 = getelementptr inbounds i8, ptr %8, i64 168
  store double 0x4080002E951F7B34, ptr %.fca.1.gep72, align 8, !tbaa !286
  %126 = getelementptr inbounds i8, ptr %8, i64 176
  store double 0x4080000B4BE05864, ptr %126, align 8, !tbaa !286
  %.fca.1.gep74 = getelementptr inbounds i8, ptr %8, i64 184
  store double 0x4080003A2ED08404, ptr %.fca.1.gep74, align 8, !tbaa !286
  %127 = getelementptr inbounds i8, ptr %8, i64 192
  store double 0x408000089094AC2D, ptr %127, align 8, !tbaa !286
  %.fca.1.gep76 = getelementptr inbounds i8, ptr %8, i64 200
  store double 0x40800043DD87C2F3, ptr %.fca.1.gep76, align 8, !tbaa !286
  %128 = getelementptr inbounds i8, ptr %8, i64 208
  store double 0x40800005DBBF34DD, ptr %128, align 8, !tbaa !286
  %.fca.1.gep78 = getelementptr inbounds i8, ptr %8, i64 216
  store double 0x4080004BF7DEAC1A, ptr %.fca.1.gep78, align 8, !tbaa !286
  %129 = getelementptr inbounds i8, ptr %8, i64 224
  store double 0x408000031E1FCB83, ptr %129, align 8, !tbaa !286
  %.fca.1.gep80 = getelementptr inbounds i8, ptr %8, i64 232
  store double 0x40800052C48391C0, ptr %.fca.1.gep80, align 8, !tbaa !286
  %130 = getelementptr inbounds i8, ptr %8, i64 240
  store double 0x4080000052507A84, ptr %130, align 8, !tbaa !286
  %.fca.1.gep82 = getelementptr inbounds i8, ptr %8, i64 248
  store double 0x408000587CD9C3A1, ptr %.fca.1.gep82, align 8, !tbaa !286
  %131 = getelementptr inbounds i8, ptr %8, i64 256
  store double 0x407FFFFAF1111C29, ptr %131, align 8, !tbaa !286
  %.fca.1.gep84 = getelementptr inbounds i8, ptr %8, i64 264
  store double 0x4080005D4F648E97, ptr %.fca.1.gep84, align 8, !tbaa !286
  %132 = getelementptr inbounds i8, ptr %8, i64 272
  store double 0x407FFFF527E792B0, ptr %132, align 8, !tbaa !286
  %.fca.1.gep86 = getelementptr inbounds i8, ptr %8, i64 280
  store double 0x4080006161DD7A20, ptr %.fca.1.gep86, align 8, !tbaa !286
  %133 = getelementptr inbounds i8, ptr %8, i64 288
  store double 0x407FFFEF5224A658, ptr %133, align 8, !tbaa !286
  %.fca.1.gep88 = getelementptr inbounds i8, ptr %8, i64 296
  store double 0x40800064D2F0E0FB, ptr %.fca.1.gep88, align 8, !tbaa !286
  %134 = getelementptr inbounds i8, ptr %8, i64 304
  store double 0x407FFFE97985082F, ptr %134, align 8, !tbaa !286
  br label %.sink.split

135:                                              ; preds = %108
  %136 = icmp eq i32 %9, 8192
  %137 = icmp eq i32 %11, 4096
  %138 = and i1 %136, %137
  %139 = icmp eq i32 %14, 4096
  %140 = and i1 %138, %139
  %141 = and i1 %140, %86
  br i1 %141, label %142, label %162

142:                                              ; preds = %135
  %.unpack272 = load i8, ptr @_QQclX46, align 1, !tbaa !312
  store i8 %.unpack272, ptr %5, align 1, !tbaa !286
  store double 0x407FFFD41E487F1B, ptr %8, align 8, !tbaa !286
  %.fca.1.gep = getelementptr inbounds i8, ptr %8, i64 8
  store double 0x4080012A8FE5B162, ptr %.fca.1.gep, align 8, !tbaa !286
  %143 = getelementptr inbounds i8, ptr %8, i64 16
  store double 0x407FFF4BD72B720A, ptr %143, align 8, !tbaa !286
  %.fca.1.gep4 = getelementptr inbounds i8, ptr %8, i64 24
  store double 0x408000CEA6FD2365, ptr %.fca.1.gep4, align 8, !tbaa !286
  %144 = getelementptr inbounds i8, ptr %8, i64 32
  store double 0x407FFF19C9D8EEC8, ptr %144, align 8, !tbaa !286
  %.fca.1.gep6 = getelementptr inbounds i8, ptr %8, i64 40
  store double 0x4080009BDE36231F, ptr %.fca.1.gep6, align 8, !tbaa !286
  %145 = getelementptr inbounds i8, ptr %8, i64 48
  store double 0x407FFF0873175768, ptr %145, align 8, !tbaa !286
  %.fca.1.gep8 = getelementptr inbounds i8, ptr %8, i64 56
  store double 0x4080007DD0161FAA, ptr %.fca.1.gep8, align 8, !tbaa !286
  %146 = getelementptr inbounds i8, ptr %8, i64 64
  store double 0x407FFF064BDBBC22, ptr %146, align 8, !tbaa !286
  %.fca.1.gep10 = getelementptr inbounds i8, ptr %8, i64 72
  store double 0x4080006948E471F0, ptr %.fca.1.gep10, align 8, !tbaa !286
  %147 = getelementptr inbounds i8, ptr %8, i64 80
  store double 0x407FFF0C535BADE2, ptr %147, align 8, !tbaa !286
  %.fca.1.gep12 = getelementptr inbounds i8, ptr %8, i64 88
  store double 0x40800059B9F433ED, ptr %.fca.1.gep12, align 8, !tbaa !286
  %148 = getelementptr inbounds i8, ptr %8, i64 96
  store double 0x407FFF16B5C7B734, ptr %148, align 8, !tbaa !286
  %.fca.1.gep14 = getelementptr inbounds i8, ptr %8, i64 104
  store double 0x4080004D1385A173, ptr %.fca.1.gep14, align 8, !tbaa !286
  %149 = getelementptr inbounds i8, ptr %8, i64 112
  store double 0x407FFF231A880A89, ptr %149, align 8, !tbaa !286
  %.fca.1.gep16 = getelementptr inbounds i8, ptr %8, i64 120
  store double 0x408000425212F093, ptr %.fca.1.gep16, align 8, !tbaa !286
  %150 = getelementptr inbounds i8, ptr %8, i64 128
  store double 0x407FFF3013DFD179, ptr %150, align 8, !tbaa !286
  %.fca.1.gep18 = getelementptr inbounds i8, ptr %8, i64 136
  store double 0x40800038EE3361C8, ptr %.fca.1.gep18, align 8, !tbaa !286
  %151 = getelementptr inbounds i8, ptr %8, i64 144
  store double 0x407FFF3CCDB82A0A, ptr %151, align 8, !tbaa !286
  %.fca.1.gep20 = getelementptr inbounds i8, ptr %8, i64 152
  store double 0x408000309CEEF689, ptr %.fca.1.gep20, align 8, !tbaa !286
  %152 = getelementptr inbounds i8, ptr %8, i64 160
  store double 0x407FFF48D6572FD5, ptr %152, align 8, !tbaa !286
  %.fca.1.gep22 = getelementptr inbounds i8, ptr %8, i64 168
  store double 0x40800029316A7503, ptr %.fca.1.gep22, align 8, !tbaa !286
  %153 = getelementptr inbounds i8, ptr %8, i64 176
  store double 0x407FFF53F8BA742C, ptr %153, align 8, !tbaa !286
  %.fca.1.gep24 = getelementptr inbounds i8, ptr %8, i64 184
  store double 0x408000228DF8602A, ptr %.fca.1.gep24, align 8, !tbaa !286
  %154 = getelementptr inbounds i8, ptr %8, i64 192
  store double 0x407FFF5E23DC35F3, ptr %154, align 8, !tbaa !286
  %.fca.1.gep26 = getelementptr inbounds i8, ptr %8, i64 200
  store double 0x4080001C9CAE6AF0, ptr %.fca.1.gep26, align 8, !tbaa !286
  %155 = getelementptr inbounds i8, ptr %8, i64 208
  store double 0x407FFF675B03963E, ptr %155, align 8, !tbaa !286
  %.fca.1.gep28 = getelementptr inbounds i8, ptr %8, i64 216
  store double 0x408000174BBDB794, ptr %.fca.1.gep28, align 8, !tbaa !286
  %156 = getelementptr inbounds i8, ptr %8, i64 224
  store double 0x407FFF6FAC1E2EFF, ptr %156, align 8, !tbaa !286
  %.fca.1.gep30 = getelementptr inbounds i8, ptr %8, i64 232
  store double 0x408000128BAF1E87, ptr %.fca.1.gep30, align 8, !tbaa !286
  %157 = getelementptr inbounds i8, ptr %8, i64 240
  store double 0x407FFF7729FC0E14, ptr %157, align 8, !tbaa !286
  %.fca.1.gep32 = getelementptr inbounds i8, ptr %8, i64 248
  store double 0x4080000E4E905D90, ptr %.fca.1.gep32, align 8, !tbaa !286
  %158 = getelementptr inbounds i8, ptr %8, i64 256
  store double 0x407FFF7DE8FAA5AF, ptr %158, align 8, !tbaa !286
  %.fca.1.gep34 = getelementptr inbounds i8, ptr %8, i64 264
  store double 0x4080000A87968433, ptr %.fca.1.gep34, align 8, !tbaa !286
  %159 = getelementptr inbounds i8, ptr %8, i64 272
  store double 0x407FFF83FD2DB881, ptr %159, align 8, !tbaa !286
  %.fca.1.gep36 = getelementptr inbounds i8, ptr %8, i64 280
  store double 0x408000072AF665DD, ptr %.fca.1.gep36, align 8, !tbaa !286
  %160 = getelementptr inbounds i8, ptr %8, i64 288
  store double 0x407FFF89796D08AA, ptr %160, align 8, !tbaa !286
  %.fca.1.gep38 = getelementptr inbounds i8, ptr %8, i64 296
  store double 0x408000042DD409E9, ptr %.fca.1.gep38, align 8, !tbaa !286
  %161 = getelementptr inbounds i8, ptr %8, i64 304
  store double 0x407FFF8E6EE85301, ptr %161, align 8, !tbaa !286
  br label %.sink.split

.sink.split:                                      ; preds = %142, %115, %88, %65, %44, %36, %28, %20
  %.sink319.sroa.phi = phi ptr [ %.sink319.sroa.gep, %20 ], [ %.sink319.sroa.gep392, %28 ], [ %.sink319.sroa.gep393, %36 ], [ %.sink319.sroa.gep394, %44 ], [ %.sink319.sroa.gep395, %65 ], [ %.sink319.sroa.gep396, %88 ], [ %.sink319.sroa.gep397, %115 ], [ %.sink319.sroa.gep398, %142 ]
  %.sink318 = phi double [ 0x407E4894D21E84F6, %20 ], [ 0x40808A98F467F156, %28 ], [ 0x407FF67A05A82466, %36 ], [ 0x407FF5FA3C741F6E, %44 ], [ 0x40800297DE24048E, %65 ], [ 0x407FFF7769FD4D32, %88 ], [ 0x40800067BBA76761, %115 ], [ 0x408000018639EECE, %142 ]
  %.sink317.sroa.phi = phi ptr [ %.sink317.sroa.gep, %20 ], [ %.sink317.sroa.gep385, %28 ], [ %.sink317.sroa.gep386, %36 ], [ %.sink317.sroa.gep387, %44 ], [ %.sink317.sroa.gep388, %65 ], [ %.sink317.sroa.gep389, %88 ], [ %.sink317.sroa.gep390, %115 ], [ %.sink317.sroa.gep391, %142 ]
  %.sink315 = phi double [ 0x4081551BBB575EAB, %20 ], [ 0x40819926462BA5A4, %28 ], [ 0x407F9F0F4941FB3E, %36 ], [ 0x408004D9F6B6B8E1, %44 ], [ 0x4080086C31EBD984, %65 ], [ 0x407FFDF94909BB13, %88 ], [ 0x407FFFE3A76CE198, %115 ], [ 0x407FFF92ED078D90, %142 ]
  %.sink314.sroa.phi = phi ptr [ %.sink314.sroa.gep, %20 ], [ %.sink314.sroa.gep378, %28 ], [ %.sink314.sroa.gep379, %36 ], [ %.sink314.sroa.gep380, %44 ], [ %.sink314.sroa.gep381, %65 ], [ %.sink314.sroa.gep382, %88 ], [ %.sink314.sroa.gep383, %115 ], [ %.sink314.sroa.gep384, %142 ]
  %.sink313 = phi double [ 0x407E687CA0F87E44, %20 ], [ 0x408081B851380EB7, %28 ], [ 0x407FDE18707A9D72, %36 ], [ 0x407FF6BFE1A61501, %44 ], [ 0x408002A4AAB9F9F8, %65 ], [ 0x407FFF85714411B2, %88 ], [ 0x4080006A3087F53C, %115 ], [ 0x407FFFFE5623050F, %142 ]
  %.sink312.sroa.phi = phi ptr [ %.sink312.sroa.gep, %20 ], [ %.sink312.sroa.gep371, %28 ], [ %.sink312.sroa.gep372, %36 ], [ %.sink312.sroa.gep373, %44 ], [ %.sink312.sroa.gep374, %65 ], [ %.sink312.sroa.gep375, %88 ], [ %.sink312.sroa.gep376, %115 ], [ %.sink312.sroa.gep377, %142 ]
  %.sink310 = phi double [ 0x408154EB318EB593, %20 ], [ 0x40817B3822354DD9, %28 ], [ 0x407FAF00C6D7110A, %36 ], [ 0x408004673C213244, %44 ], [ 0x4080083F8294129E, %65 ], [ 0x407FFE01E8D7E962, %88 ], [ 0x407FFFDDE458AC2A, %115 ], [ 0x407FFF970174A618, %142 ]
  %.sink309.sroa.phi = phi ptr [ %.sink309.sroa.gep, %20 ], [ %.sink309.sroa.gep364, %28 ], [ %.sink309.sroa.gep365, %36 ], [ %.sink309.sroa.gep366, %44 ], [ %.sink309.sroa.gep367, %65 ], [ %.sink309.sroa.gep368, %88 ], [ %.sink309.sroa.gep369, %115 ], [ %.sink309.sroa.gep370, %142 ]
  %.sink308 = phi double [ 0x407E8641D4F55AF9, %20 ], [ 0x408078CC18578DFC, %28 ], [ 0x407FDD07CCB88353, %36 ], [ 0x407FF77327A3F7B0, %44 ], [ 0x408002AF57DC0D71, %65 ], [ 0x407FFF9172826820, %88 ], [ 0x4080006C427E60CB, %115 ], [ 0x407FFFFA2834D94F, %142 ]
  %.sink307.sroa.phi = phi ptr [ %.sink307.sroa.gep, %20 ], [ %.sink307.sroa.gep357, %28 ], [ %.sink307.sroa.gep358, %36 ], [ %.sink307.sroa.gep359, %44 ], [ %.sink307.sroa.gep360, %65 ], [ %.sink307.sroa.gep361, %88 ], [ %.sink307.sroa.gep362, %115 ], [ %.sink307.sroa.gep363, %142 ]
  %.sink305 = phi double [ 0x40815456C13A7B04, %20 ], [ 0x4081608EF5C48194, %28 ], [ 0x407FBCA0EB3ECBEF, %36 ], [ 0x408004007A3FD0EA, %44 ], [ 0x408008151CE457D2, %65 ], [ 0x407FFE0AE8040E41, %88 ], [ 0x407FFFD8379EC190, %115 ], [ 0x407FFF9AB839EC00, %142 ]
  %.sink304.sroa.phi = phi ptr [ %.sink304.sroa.gep, %20 ], [ %.sink304.sroa.gep350, %28 ], [ %.sink304.sroa.gep351, %36 ], [ %.sink304.sroa.gep352, %44 ], [ %.sink304.sroa.gep353, %65 ], [ %.sink304.sroa.gep354, %88 ], [ %.sink304.sroa.gep355, %115 ], [ %.sink304.sroa.gep356, %142 ]
  %.sink303 = phi double [ 0x407EA2097D7357C2, %20 ], [ 0x40807005B7059038, %28 ], [ 0x407FE2234776F4EF, %36 ], [ 0x407FF815F3F1C1DE, %44 ], [ 0x408002B83C8A44C9, %65 ], [ 0x407FFF9BB06626E0, %88 ], [ 0x4080006DFF9235BC, %115 ], [ 0x407FFFF673BF5E5D, %142 ]
  %.sink302.sroa.phi = phi ptr [ %.sink302.sroa.gep, %20 ], [ %.sink302.sroa.gep343, %28 ], [ %.sink302.sroa.gep344, %36 ], [ %.sink302.sroa.gep345, %44 ], [ %.sink302.sroa.gep346, %65 ], [ %.sink302.sroa.gep347, %88 ], [ %.sink302.sroa.gep348, %115 ], [ %.sink302.sroa.gep349, %142 ]
  %.sink300 = phi double [ 0x408153676E9F169C, %20 ], [ 0x408148B81D084E83, %28 ], [ 0x407FC85F79D2C1E9, %36 ], [ 0x408003A43D5F793B, %44 ], [ 0x408007EC8CCD48ED, %65 ], [ 0x407FFE142D872C17, %88 ], [ 0x407FFFD2A76113A7, %115 ], [ 0x407FFF9E1BE99AAD, %142 ]
  %.sink299.sroa.phi = phi ptr [ %.sink299.sroa.gep, %20 ], [ %.sink299.sroa.gep336, %28 ], [ %.sink299.sroa.gep337, %36 ], [ %.sink299.sroa.gep338, %44 ], [ %.sink299.sroa.gep339, %65 ], [ %.sink299.sroa.gep340, %88 ], [ %.sink299.sroa.gep341, %115 ], [ %.sink299.sroa.gep342, %142 ]
  %.sink298 = phi double [ 0x407EBBF61C86EF29, %20 ], [ 0x408067854B0E36C9, %28 ], [ 0x407FE7DD0AF2CEF4, %36 ], [ 0x407FF8AA099402A0, %44 ], [ 0x408002BF9BCECA75, %65 ], [ 0x407FFFA464F89DCE, %88 ], [ 0x4080006F7377203C, %115 ], [ 0x407FFFF32B56A1CC, %142 ]
  %.sink297.sroa.phi = phi ptr [ %.sink297.sroa.gep, %20 ], [ %.sink297.sroa.gep329, %28 ], [ %.sink297.sroa.gep330, %36 ], [ %.sink297.sroa.gep331, %44 ], [ %.sink297.sroa.gep332, %65 ], [ %.sink297.sroa.gep333, %88 ], [ %.sink297.sroa.gep334, %115 ], [ %.sink297.sroa.gep335, %142 ]
  %.sink295 = phi double [ 0x408152259010E0A1, %20 ], [ 0x40813353E9E3E09A, %28 ], [ 0x407FD2611DBB8FA9, %36 ], [ 0x40800351422D2EDF, %44 ], [ 0x408007C58371022F, %65 ], [ 0x407FFE1DA48D386E, %88 ], [ 0x407FFFCD389947BC, %115 ], [ 0x407FFFA135C75993, %142 ]
  %.sink294.sroa.phi = phi ptr [ %.sink294.sroa.gep, %20 ], [ %.sink294.sroa.gep322, %28 ], [ %.sink294.sroa.gep323, %36 ], [ %.sink294.sroa.gep324, %44 ], [ %.sink294.sroa.gep325, %65 ], [ %.sink294.sroa.gep326, %88 ], [ %.sink294.sroa.gep327, %115 ], [ %.sink294.sroa.gep328, %142 ]
  %.sink = phi double [ 0x407ED427D4DF0213, %20 ], [ 0x40805F5EAB0F5DA2, %28 ], [ 0x407FECAB25FE5602, %36 ], [ 0x407FF93106A352EE, %44 ], [ 0x408002C5AA6407B6, %65 ], [ 0x407FFFABC2C855DE, %88 ], [ 0x40800070A7FF2BFD, %115 ], [ 0x407FFFF042F1B2AE, %142 ]
  store double %.sink318, ptr %.sink319.sroa.phi, align 8, !tbaa !286
  store double %.sink315, ptr %.sink317.sroa.phi, align 8, !tbaa !286
  store double %.sink313, ptr %.sink314.sroa.phi, align 8, !tbaa !286
  store double %.sink310, ptr %.sink312.sroa.phi, align 8, !tbaa !286
  store double %.sink308, ptr %.sink309.sroa.phi, align 8, !tbaa !286
  store double %.sink305, ptr %.sink307.sroa.phi, align 8, !tbaa !286
  store double %.sink303, ptr %.sink304.sroa.phi, align 8, !tbaa !286
  store double %.sink300, ptr %.sink302.sroa.phi, align 8, !tbaa !286
  store double %.sink298, ptr %.sink299.sroa.phi, align 8, !tbaa !286
  store double %.sink295, ptr %.sink297.sroa.phi, align 8, !tbaa !286
  store double %.sink, ptr %.sink294.sroa.phi, align 8, !tbaa !286
  br label %162

162:                                              ; preds = %.sink.split, %135
  %163 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %5, ptr nonnull @_QQclX55, i64 1, i64 1)
  %.not = icmp eq i32 %163, 0
  br i1 %.not, label %.loopexit, label %164

164:                                              ; preds = %162
  %165 = load i32, ptr %3, align 4, !tbaa !296
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %164
  %167 = add nuw i32 %165, 1
  %wide.trip.count = zext i32 %167 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %181
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %181 ]
  %168 = getelementptr { double, double }, ptr @_QMft_dataEsums, i64 %indvars.iv
  %.unpack280 = load double, ptr %168, align 8, !tbaa !314
  %.elt281 = getelementptr inbounds i8, ptr %168, i64 8
  %.unpack282 = load double, ptr %.elt281, align 8, !tbaa !314
  %169 = getelementptr { double, double }, ptr %8, i64 %indvars.iv
  %170 = getelementptr i8, ptr %169, i64 -16
  %.fca.0.load = load double, ptr %170, align 8, !tbaa !286
  %.fca.1.gep268 = getelementptr i8, ptr %169, i64 -8
  %.fca.1.load = load double, ptr %.fca.1.gep268, align 8, !tbaa !286
  %171 = fsub contract double %.unpack280, %.fca.0.load
  %172 = fsub contract double %.unpack282, %.fca.1.load
  %173 = tail call { double, double } @__divdc3(double %171, double %172, double %.fca.0.load, double %.fca.1.load)
  %174 = tail call ptr @llvm.stacksave.p0()
  %.elt = extractvalue { double, double } %173, 0
  %.elt284 = extractvalue { double, double } %173, 1
  %175 = insertvalue [2 x double] poison, double %.elt, 0
  %176 = insertvalue [2 x double] %175, double %.elt284, 1
  %177 = tail call double @cabs([2 x double] %176)
  tail call void @llvm.stackrestore.p0(ptr %174)
  %178 = fcmp uno double %177, 0.000000e+00
  %179 = fcmp contract ogt double %177, 0x3D719799812DEA11
  %180 = or i1 %178, %179
  br i1 %180, label %.loopexit, label %181

181:                                              ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %181, %164
  store i32 1, ptr %4, align 4, !tbaa !287
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %162
  %182 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %5, ptr nonnull @_QQclX55, i64 1, i64 1)
  %.not289 = icmp eq i32 %182, 0
  br i1 %.not289, label %190, label %183

183:                                              ; preds = %.loopexit
  %184 = load i32, ptr %4, align 4, !tbaa !287
  %.not290 = icmp eq i32 %184, 0
  br i1 %.not290, label %187, label %185

185:                                              ; preds = %183
  %186 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX55a08c1285b7f0af953f78d40667effb, i64 35, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 1123)
  br label %.sink.split320

187:                                              ; preds = %183
  %188 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720526573756C7420766572696669636174696F6E206661696C65642729, i64 31, ptr null, i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 1126)
  br label %.sink.split320

.sink.split320:                                   ; preds = %187, %185
  %.sink321 = phi ptr [ %186, %185 ], [ %188, %187 ]
  %189 = tail call i32 @_FortranAioEndIoStatement(ptr %.sink321)
  br label %190

190:                                              ; preds = %.sink.split320, %.loopexit
  %191 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclXa33153e394b13461bf67bda86bd0fc11, i32 1130)
  %192 = tail call i1 @_FortranAioOutputAscii(ptr %191, ptr nonnull @_QQclX636C617373203D20, i64 8)
  %193 = tail call i1 @_FortranAioOutputAscii(ptr %191, ptr nonnull %5, i64 1)
  %194 = tail call i32 @_FortranAioEndIoStatement(ptr %191)
  ret void
}

declare void @timer_clear_(ptr) local_unnamed_addr

declare void @alloc_space_() local_unnamed_addr

declare void @timer_start_(ptr) local_unnamed_addr

declare void @roi_begin_() local_unnamed_addr

declare void @timer_stop_(ptr) local_unnamed_addr

declare void @roi_end_() local_unnamed_addr

declare double @timer_read_(ptr) local_unnamed_addr

declare void @free_space_() local_unnamed_addr

declare void @print_results_(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr

declare double @randlc_(ptr, ptr) local_unnamed_addr

declare void @vranlc_(ptr, ptr, ptr, ptr) local_unnamed_addr

declare void @check_timer_flag_(ptr) local_unnamed_addr

declare ptr @_FortranAioBeginExternalFormattedOutput(ptr, i64, ptr, i32, ptr, i32) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputInteger32(ptr, i32) local_unnamed_addr

declare i32 @omp_get_max_threads_() local_unnamed_addr

declare ptr @_FortranAioBeginExternalListOutput(i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputAscii(ptr, ptr, i64) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputReal64(ptr, double) local_unnamed_addr

declare {} @_FortranAStopStatement(i32, i1 zeroext, i1 zeroext) local_unnamed_addr

declare { double, double } @__divdc3(double, double, double, double) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputComplex64(ptr, double, double) local_unnamed_addr

declare i32 @_FortranACharacterCompareScalar1(ptr, ptr, i64, i64) local_unnamed_addr

; Function Attrs: nofree
declare double @cabs([2 x double]) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func(ptr nocapture readonly %0, ptr nocapture readonly %1) #10 {
  %3 = load ptr, ptr %0, align 8
  %.unpack = load double, ptr %3, align 8
  %.elt1 = getelementptr inbounds i8, ptr %3, i64 8
  %.unpack2 = load double, ptr %.elt1, align 8
  %4 = load ptr, ptr %1, align 8
  %.unpack3 = load double, ptr %4, align 8
  %.elt4 = getelementptr inbounds i8, ptr %4, i64 8
  %.unpack5 = load double, ptr %.elt4, align 8
  %5 = fadd contract double %.unpack, %.unpack3
  %6 = fadd contract double %.unpack2, %.unpack5
  store double %5, ptr %3, align 8
  store double %6, ptr %.elt1, align 8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(ptr, i32, ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare !callback !316 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.cos.v2f64(<2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sin.v2f64(<2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.exp.v2f64(<2 x double>) #12

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #5 = { nofree }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { convergent nounwind }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"any data access", !6, i64 0}
!6 = !{!"any access", !7, i64 0}
!7 = !{!"Flang function root _QQmain"}
!8 = !{!9, !9, i64 0}
!9 = !{!"descriptor member", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"dummy arg data/_QFinit_uiEd1", !12, i64 0}
!12 = !{!"dummy arg data", !13, i64 0}
!13 = !{!"any data access", !14, i64 0}
!14 = !{!"any access", !15, i64 0}
!15 = !{!"Flang function root _QPinit_ui"}
!16 = !{!17, !17, i64 0}
!17 = !{!"dummy arg data/_QFinit_uiEd2", !12, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"dummy arg data/_QFinit_uiEd3", !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"dummy arg data/_QFcompute_indexmapEd1", !22, i64 0}
!22 = !{!"dummy arg data", !23, i64 0}
!23 = !{!"any data access", !24, i64 0}
!24 = !{!"any access", !25, i64 0}
!25 = !{!"Flang function root _QPcompute_indexmap"}
!26 = !{!27, !27, i64 0}
!27 = !{!"dummy arg data/_QFcompute_indexmapEd2", !22, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"dummy arg data/_QFcompute_indexmapEd3", !22, i64 0}
!30 = !{!23, !23, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"dummy arg data/_QFilog2En", !33, i64 0}
!33 = !{!"dummy arg data", !34, i64 0}
!34 = !{!"any data access", !35, i64 0}
!35 = !{!"any access", !36, i64 0}
!36 = !{!"Flang function root _QPilog2"}
!37 = !{!38, !38, i64 0}
!38 = !{!"global data/_QMft_dataEu", !39, i64 0}
!39 = !{!"global data", !40, i64 0}
!40 = !{!"any data access", !41, i64 0}
!41 = !{!"any access", !42, i64 0}
!42 = !{!"Flang function root _QPfft_init"}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !44}
!47 = !{!48, !48, i64 0}
!48 = !{!"global data/_QMft_dataEtimers_enabled", !49, i64 0}
!49 = !{!"global data", !5, i64 0}
!50 = distinct !{!50, !44, !45}
!51 = distinct !{!51, !44}
!52 = !{!53, !53, i64 0}
!53 = !{!"global data/_QMft_dataEniter", !49, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"dummy arg data/_QFevolveEd1", !56, i64 0}
!56 = !{!"dummy arg data", !57, i64 0}
!57 = !{!"any data access", !58, i64 0}
!58 = !{!"any access", !59, i64 0}
!59 = !{!"Flang function root _QPevolve"}
!60 = !{!61, !61, i64 0}
!61 = !{!"dummy arg data/_QFevolveEd2", !56, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"dummy arg data/_QFevolveEd3", !56, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"dummy arg data/_QFinit_uiEtwiddle", !12, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"dummy arg data/_QFevolveEu0", !56, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"dummy arg data/_QFevolveEtwiddle", !56, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"dummy arg data/_QFevolveEu1", !56, i64 0}
!72 = distinct !{!72, !44, !45}
!73 = distinct !{!73, !45, !44}
!74 = !{!75, !75, i64 0}
!75 = !{!"dummy arg data/_QFcompute_initial_conditionsEd1", !76, i64 0}
!76 = !{!"dummy arg data", !77, i64 0}
!77 = !{!"any data access", !78, i64 0}
!78 = !{!"any access", !79, i64 0}
!79 = !{!"Flang function root _QPcompute_initial_conditions"}
!80 = !{!81, !81, i64 0}
!81 = !{!"dummy arg data/_QFcompute_initial_conditionsEd2", !76, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"dummy arg data/_QFcompute_initial_conditionsEd3", !76, i64 0}
!84 = !{!77, !77, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"dummy arg data/_QFipow46Eresult", !87, i64 0}
!87 = !{!"dummy arg data", !88, i64 0}
!88 = !{!"any data access", !89, i64 0}
!89 = !{!"any access", !90, i64 0}
!90 = !{!"Flang function root _QPipow46"}
!91 = !{!88, !88, i64 0}
!92 = !{!93, !93, i64 0}
!93 = !{!"global data/_QMft_dataEdims", !94, i64 0}
!94 = !{!"global data", !77, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"dummy arg data/_QFipow46Eexponent", !87, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"dummy arg data/_QFipow46Ea", !87, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"global data/_QMft_dataEdebug", !101, i64 0}
!101 = !{!"global data", !102, i64 0}
!102 = !{!"any data access", !103, i64 0}
!103 = !{!"any access", !104, i64 0}
!104 = !{!"Flang function root _QPsetup"}
!105 = !{!106, !106, i64 0}
!106 = !{!"global data/_QMft_dataEniter", !101, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"global data/_QMft_dataEdims", !101, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"global data/_QMft_dataEfftblock", !101, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"global data/_QMft_dataEfftblockpad", !101, i64 0}
!113 = !{!114, !114, i64 0}
!114 = !{!"global data/_QMft_dataEdims", !115, i64 0}
!115 = !{!"global data", !23, i64 0}
!116 = !{!117}
!117 = distinct !{!117, !118}
!118 = distinct !{!118, !"LVerDomain"}
!119 = !{!120, !120, i64 0}
!120 = !{!"dummy arg data/_QFcompute_indexmapEtwiddle", !22, i64 0}
!121 = !{!122}
!122 = distinct !{!122, !118}
!123 = distinct !{!123, !44, !45}
!124 = distinct !{!124, !44}
!125 = !{!126, !126, i64 0}
!126 = !{!"any data access", !127, i64 0}
!127 = !{!"any access", !128, i64 0}
!128 = !{!"Flang function root _QPprint_timers"}
!129 = !{!130, !130, i64 0}
!130 = !{!"dummy arg data/_QFfftEdir", !131, i64 0}
!131 = !{!"dummy arg data", !132, i64 0}
!132 = !{!"any data access", !133, i64 0}
!133 = !{!"any access", !134, i64 0}
!134 = !{!"Flang function root _QPfft"}
!135 = !{!132, !132, i64 0}
!136 = !{!137, !137, i64 0}
!137 = !{!"dummy arg data/_QFcffts1Ed2", !138, i64 0}
!138 = !{!"dummy arg data", !139, i64 0}
!139 = !{!"any data access", !140, i64 0}
!140 = !{!"any access", !141, i64 0}
!141 = !{!"Flang function root _QPcffts1"}
!142 = !{!143, !143, i64 0}
!143 = !{!"dummy arg data/_QFcffts1Ed3", !138, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"global data/_QMft_dataEfftblockpad", !146, i64 0}
!146 = !{!"global data", !139, i64 0}
!147 = !{!139, !139, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"global data/_QMft_dataEtimers_enabled", !146, i64 0}
!150 = !{!151, !151, i64 0}
!151 = !{!"global data/_QMft_dataEfftblock", !146, i64 0}
!152 = !{!153, !153, i64 0}
!153 = !{!"dummy arg data/_QFcffts1Ed1", !138, i64 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"dummy arg data/_QFcffts1Ex", !138, i64 0}
!156 = !{!157, !157, i64 0}
!157 = !{!"dummy arg data/_QFcffts1Exout", !138, i64 0}
!158 = !{!159, !159, i64 0}
!159 = !{!"dummy arg data/_QFcffts2Ed1", !160, i64 0}
!160 = !{!"dummy arg data", !161, i64 0}
!161 = !{!"any data access", !162, i64 0}
!162 = !{!"any access", !163, i64 0}
!163 = !{!"Flang function root _QPcffts2"}
!164 = !{!165, !165, i64 0}
!165 = !{!"dummy arg data/_QFcffts2Ed3", !160, i64 0}
!166 = !{!167, !167, i64 0}
!167 = !{!"global data/_QMft_dataEfftblockpad", !168, i64 0}
!168 = !{!"global data", !161, i64 0}
!169 = !{!161, !161, i64 0}
!170 = !{!171, !171, i64 0}
!171 = !{!"global data/_QMft_dataEtimers_enabled", !168, i64 0}
!172 = !{!173, !173, i64 0}
!173 = !{!"global data/_QMft_dataEfftblock", !168, i64 0}
!174 = !{!175, !175, i64 0}
!175 = !{!"dummy arg data/_QFcffts2Ed2", !160, i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"dummy arg data/_QFcffts2Ex", !160, i64 0}
!178 = distinct !{!178, !44, !45}
!179 = distinct !{!179, !44}
!180 = !{!181, !181, i64 0}
!181 = !{!"dummy arg data/_QFcffts2Exout", !160, i64 0}
!182 = distinct !{!182, !44, !45}
!183 = distinct !{!183, !44}
!184 = !{!185, !185, i64 0}
!185 = !{!"dummy arg data/_QFcffts3Ed1", !186, i64 0}
!186 = !{!"dummy arg data", !187, i64 0}
!187 = !{!"any data access", !188, i64 0}
!188 = !{!"any access", !189, i64 0}
!189 = !{!"Flang function root _QPcffts3"}
!190 = !{!191, !191, i64 0}
!191 = !{!"dummy arg data/_QFcffts3Ed2", !186, i64 0}
!192 = !{!193, !193, i64 0}
!193 = !{!"global data/_QMft_dataEfftblockpad", !194, i64 0}
!194 = !{!"global data", !187, i64 0}
!195 = !{!187, !187, i64 0}
!196 = !{!197, !197, i64 0}
!197 = !{!"global data/_QMft_dataEtimers_enabled", !194, i64 0}
!198 = !{!199, !199, i64 0}
!199 = !{!"global data/_QMft_dataEfftblock", !194, i64 0}
!200 = !{!201, !201, i64 0}
!201 = !{!"dummy arg data/_QFcffts3Ed3", !186, i64 0}
!202 = !{!203, !203, i64 0}
!203 = !{!"dummy arg data/_QFcffts3Ex", !186, i64 0}
!204 = distinct !{!204, !44, !45}
!205 = distinct !{!205, !44}
!206 = !{!207, !207, i64 0}
!207 = !{!"dummy arg data/_QFcffts3Exout", !186, i64 0}
!208 = distinct !{!208, !44, !45}
!209 = distinct !{!209, !44}
!210 = distinct !{!210, !44, !45}
!211 = distinct !{!211, !44}
!212 = !{!213, !213, i64 0}
!213 = !{!"global data/_QMft_dataEfftblockpad", !214, i64 0}
!214 = !{!"global data", !215, i64 0}
!215 = !{!"any data access", !216, i64 0}
!216 = !{!"any access", !217, i64 0}
!217 = !{!"Flang function root _QPcfftz"}
!218 = !{!219, !219, i64 0}
!219 = !{!"global data/_QMft_dataEu", !214, i64 0}
!220 = !{!221, !221, i64 0}
!221 = !{!"dummy arg data/_QFcfftzEis", !222, i64 0}
!222 = !{!"dummy arg data", !215, i64 0}
!223 = !{!224, !224, i64 0}
!224 = !{!"dummy arg data/_QFcfftzEm", !222, i64 0}
!225 = !{!215, !215, i64 0}
!226 = !{!227, !227, i64 0}
!227 = !{!"dummy arg data/_QFcfftzEn", !222, i64 0}
!228 = !{!229, !229, i64 0}
!229 = !{!"global data/_QMft_dataEfftblock", !214, i64 0}
!230 = !{!231, !231, i64 0}
!231 = !{!"dummy arg data/_QFcfftzEy", !222, i64 0}
!232 = !{!233, !233, i64 0}
!233 = !{!"dummy arg data/_QFcfftzEx", !222, i64 0}
!234 = distinct !{!234, !44, !45}
!235 = distinct !{!235, !44}
!236 = !{!237, !237, i64 0}
!237 = !{!"dummy arg data/_QFfftz2En", !238, i64 0}
!238 = !{!"dummy arg data", !239, i64 0}
!239 = !{!"any data access", !240, i64 0}
!240 = !{!"any access", !241, i64 0}
!241 = !{!"Flang function root _QPfftz2"}
!242 = !{!243, !243, i64 0}
!243 = !{!"dummy arg data/_QFfftz2Eny1", !238, i64 0}
!244 = !{!245, !245, i64 0}
!245 = !{!"dummy arg data/_QFfftz2El", !238, i64 0}
!246 = !{!247, !247, i64 0}
!247 = !{!"dummy arg data/_QFfftz2Em", !238, i64 0}
!248 = !{!249, !249, i64 0}
!249 = !{!"dummy arg data/_QFfftz2Eis", !238, i64 0}
!250 = !{!251, !251, i64 0}
!251 = !{!"dummy arg data/_QFfftz2Eny", !238, i64 0}
!252 = !{!253, !253, i64 0}
!253 = !{!"dummy arg data/_QFfftz2Eu", !238, i64 0}
!254 = !{!255, !255, i64 0}
!255 = !{!"dummy arg data/_QFfftz2Ex", !238, i64 0}
!256 = !{!257, !257, i64 0}
!257 = !{!"dummy arg data/_QFfftz2Ey", !238, i64 0}
!258 = distinct !{!258, !44, !45}
!259 = distinct !{!259, !44}
!260 = !{!261, !261, i64 0}
!261 = !{!"dummy arg data/_QFchecksumEd1", !262, i64 0}
!262 = !{!"dummy arg data", !263, i64 0}
!263 = !{!"any data access", !264, i64 0}
!264 = !{!"any access", !265, i64 0}
!265 = !{!"Flang function root _QPchecksum"}
!266 = !{!267, !267, i64 0}
!267 = !{!"dummy arg data/_QFchecksumEd2", !262, i64 0}
!268 = !{!269, !269, i64 0}
!269 = !{!"dummy arg data/_QFchecksumEd3", !262, i64 0}
!270 = !{!263, !263, i64 0}
!271 = !{!272, !272, i64 0}
!272 = !{!"dummy arg data/_QFchecksumEi", !262, i64 0}
!273 = !{!274, !274, i64 0}
!274 = !{!"global data/_QMft_dataEsums", !275, i64 0}
!275 = !{!"global data", !263, i64 0}
!276 = !{!277, !277, i64 0}
!277 = !{!"dummy arg data/_QFchecksumEchk", !262, i64 0}
!278 = !{!279, !279, i64 0}
!279 = !{!"dummy arg data/_QFchecksumEu1", !262, i64 0}
!280 = !{!281, !281, i64 0}
!281 = !{!"global data/_QQclX55", !282, i64 0}
!282 = !{!"global data", !283, i64 0}
!283 = !{!"any data access", !284, i64 0}
!284 = !{!"any access", !285, i64 0}
!285 = !{!"Flang function root _QPverify"}
!286 = !{!283, !283, i64 0}
!287 = !{!288, !288, i64 0}
!288 = !{!"dummy arg data/_QFverifyEverified", !289, i64 0}
!289 = !{!"dummy arg data", !283, i64 0}
!290 = !{!291, !291, i64 0}
!291 = !{!"dummy arg data/_QFverifyEd1", !289, i64 0}
!292 = !{!293, !293, i64 0}
!293 = !{!"dummy arg data/_QFverifyEd2", !289, i64 0}
!294 = !{!295, !295, i64 0}
!295 = !{!"dummy arg data/_QFverifyEd3", !289, i64 0}
!296 = !{!297, !297, i64 0}
!297 = !{!"dummy arg data/_QFverifyEnt", !289, i64 0}
!298 = !{!299, !299, i64 0}
!299 = !{!"global data/_QQclX53", !282, i64 0}
!300 = !{!301, !301, i64 0}
!301 = !{!"global data/_QQclX57", !282, i64 0}
!302 = !{!303, !303, i64 0}
!303 = !{!"global data/_QQclX41", !282, i64 0}
!304 = !{!305, !305, i64 0}
!305 = !{!"global data/_QQclX42", !282, i64 0}
!306 = !{!307, !307, i64 0}
!307 = !{!"global data/_QQclX43", !282, i64 0}
!308 = !{!309, !309, i64 0}
!309 = !{!"global data/_QQclX44", !282, i64 0}
!310 = !{!311, !311, i64 0}
!311 = !{!"global data/_QQclX45", !282, i64 0}
!312 = !{!313, !313, i64 0}
!313 = !{!"global data/_QQclX46", !282, i64 0}
!314 = !{!315, !315, i64 0}
!315 = !{!"global data/_QMft_dataEsums", !282, i64 0}
!316 = !{!317}
!317 = !{i64 2, i64 -1, i64 -1, i1 true}
