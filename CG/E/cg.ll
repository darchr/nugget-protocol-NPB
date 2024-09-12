; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX696E6974 = comdat any

$_QQclX62656E63686D6B = comdat any

$_QQclX636F6E6A6764 = comdat any

$_QQclX45 = comdat any

$_QQclX55 = comdat any

$_QQclX574bc9483b879864d24e2171888a3194 = comdat any

$_QQclX8830d4931fc25ecacdfc19bacad2daa1 = comdat any

$_QQclX28272053697A653A20272C2069313129 = comdat any

$_QQclX63f70da6b7cfde3fd15fbdfe6ad3cc9f = comdat any

$_QQclXf923a2af02906180bfbdd179b9b5c308 = comdat any

$_QQclXc92d7093db15fe00b5a60d33d5740ed5 = comdat any

$_QQclX8ab6002c60c9da36ad4bad5db1e7f1e7 = comdat any

$_QQclX2834782C2069352C2036782C206532312E31342C206632302E313329 = comdat any

$_QQclX28272042656E63686D61726B20636F6D706C65746564202729 = comdat any

$_QQclX282720564552494649434154494F4E205355434345535346554C202729 = comdat any

$_QQclX2827205A65746120697320202020272C206532302E313329 = comdat any

$_QQclX2827204572726F72206973202020272C206532302E313329 = comdat any

$_QQclX282720564552494649434154494F4E204641494C45442729 = comdat any

$_QQclXda1d1fbc12717325772929fb8e25d29c = comdat any

$_QQclX685fd3320896e28edd379d16b07d3b60 = comdat any

$_QQclX28272050726F626C656D2073697A6520756E6B6E6F776E2729 = comdat any

$_QQclX2827204E4F20564552494649434154494F4E20504552464F524D45442729 = comdat any

$_QQclX4347 = comdat any

$_QQclX20202020202020202020666C6F6174696E6720706F696E74 = comdat any

$_QQclX332E342E32 = comdat any

$_QQclX3132205365702032303234 = comdat any

$_QQclX286E6F6E6529 = comdat any

$_QQclX2428464329 = comdat any

$_QQclX242846464C41475329 = comdat any

$_QQclX72616E646938 = comdat any

$_QQclX2827202053454354494F4E20202054696D65202873656373292729 = comdat any

$_QQclX2832782C61382C273A272C66392E333A27202028272C66362E322C2725292729 = comdat any

$_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a = comdat any

$_QQclX72657374 = comdat any

$_QQclX662788a244b7c503085d082e53a6b65e = comdat any

$_QQclX8aa47eafef3dd9fef2a70f0e43e486f4 = comdat any

$_QQclX6E7A612C206E7A6D6178203D20 = comdat any

$_QQclX696E7465726E616C206572726F7220696E207370617273653A20693D = comdat any

@_QMcg_dataEa = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEacol = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEaelt = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEamult = external global double
@_QMcg_dataEarow = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEcolidx = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEfirstcol = external local_unnamed_addr global i32
@_QMcg_dataEfirstrow = external global i32
@_QMcg_dataEiv = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataElastcol = external local_unnamed_addr global i32
@_QMcg_dataElastrow = external global i32
@_QMcg_dataEnaa = external global i32
@_QMcg_dataEnzz = external global i64
@_QMcg_dataEp = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEq = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEr = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataErowstr = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEtimeron = external global i32
@_QMcg_dataEtran = external global double
@_QMcg_dataEv = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEx = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QMcg_dataEz = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }
@_QQclX696E6974 = linkonce local_unnamed_addr constant [4 x i8] c"init", comdat
@_QQclX62656E63686D6B = linkonce local_unnamed_addr constant [7 x i8] c"benchmk", comdat
@_QQclX636F6E6A6764 = linkonce local_unnamed_addr constant [6 x i8] c"conjgd", comdat
@_QQclX45 = linkonce local_unnamed_addr constant [1 x i8] c"E", comdat
@_QQclX55 = linkonce constant [1 x i8] c"U", comdat
@_QQclX574bc9483b879864d24e2171888a3194 = linkonce constant [66 x i8] c"(//,' NAS Parallel Benchmarks (NPB3.4-OMP)', ' - CG Benchmark', /)", comdat
@_QQclX8830d4931fc25ecacdfc19bacad2daa1 = linkonce constant [56 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/CG/cg.f90\00", comdat
@_QQclX28272053697A653A20272C2069313129 = linkonce constant [16 x i8] c"(' Size: ', i11)", comdat
@_QQclX63f70da6b7cfde3fd15fbdfe6ad3cc9f = linkonce constant [38 x i8] c"(' Iterations:                  ', i5)", comdat
@_QQclXf923a2af02906180bfbdd179b9b5c308 = linkonce constant [38 x i8] c"(' Number of available threads: ', i5)", comdat
@_QQclXc92d7093db15fe00b5a60d33d5740ed5 = linkonce constant [44 x i8] c"(' Initialization time = ',f15.3,' seconds')", comdat
@_QQclX8ab6002c60c9da36ad4bad5db1e7f1e7 = linkonce constant [55 x i8] c"(/,'   iteration           ||r||                 zeta')", comdat
@_QQclX2834782C2069352C2036782C206532312E31342C206632302E313329 = linkonce constant [28 x i8] c"(4x, i5, 6x, e21.14, f20.13)", comdat
@_QQclX28272042656E63686D61726B20636F6D706C65746564202729 = linkonce constant [25 x i8] c"(' Benchmark completed ')", comdat
@_QQclX282720564552494649434154494F4E205355434345535346554C202729 = linkonce constant [29 x i8] c"(' VERIFICATION SUCCESSFUL ')", comdat
@_QQclX2827205A65746120697320202020272C206532302E313329 = linkonce constant [24 x i8] c"(' Zeta is    ', e20.13)", comdat
@_QQclX2827204572726F72206973202020272C206532302E313329 = linkonce constant [24 x i8] c"(' Error is   ', e20.13)", comdat
@_QQclX282720564552494649434154494F4E204641494C45442729 = linkonce constant [24 x i8] c"(' VERIFICATION FAILED')", comdat
@_QQclXda1d1fbc12717325772929fb8e25d29c = linkonce constant [33 x i8] c"(' Zeta                ', e20.13)", comdat
@_QQclX685fd3320896e28edd379d16b07d3b60 = linkonce constant [33 x i8] c"(' The correct zeta is ', e20.13)", comdat
@_QQclX28272050726F626C656D2073697A6520756E6B6E6F776E2729 = linkonce constant [25 x i8] c"(' Problem size unknown')", comdat
@_QQclX2827204E4F20564552494649434154494F4E20504552464F524D45442729 = linkonce constant [30 x i8] c"(' NO VERIFICATION PERFORMED')", comdat
@_QQclX4347 = linkonce local_unnamed_addr constant [2 x i8] c"CG", comdat
@_QQclX20202020202020202020666C6F6174696E6720706F696E74 = linkonce local_unnamed_addr constant [24 x i8] c"          floating point", comdat
@_QQclX332E342E32 = linkonce local_unnamed_addr constant [5 x i8] c"3.4.2", comdat
@_QQclX3132205365702032303234 = linkonce local_unnamed_addr constant [11 x i8] c"12 Sep 2024", comdat
@_QQclX286E6F6E6529 = linkonce local_unnamed_addr constant [6 x i8] c"(none)", comdat
@_QQclX2428464329 = linkonce local_unnamed_addr constant [5 x i8] c"$(FC)", comdat
@_QQclX242846464C41475329 = linkonce local_unnamed_addr constant [9 x i8] c"$(FFLAGS)", comdat
@_QQclX72616E646938 = linkonce local_unnamed_addr constant [6 x i8] c"randi8", comdat
@_QQclX2827202053454354494F4E20202054696D65202873656373292729 = linkonce constant [27 x i8] c"('  SECTION   Time (secs)')", comdat
@_QQclX2832782C61382C273A272C66392E333A27202028272C66362E322C2725292729 = linkonce constant [32 x i8] c"(2x,a8,':',f9.3:'  (',f6.2,'%)')", comdat
@_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a = linkonce constant [40 x i8] c"('    --> ',a8,':',f9.3,'  (',f6.2,'%)')", comdat
@_QQclX72657374 = linkonce constant [4 x i8] c"rest", comdat
@_QMtinfoEihigh = external global i32
@_QMtinfoEilow = external global i32
@_QMtinfoElast_n = external local_unnamed_addr global [1025 x i64]
@_QMtinfoEmyid = external global i32
@_QMtinfoEnum_threads = external global i32
@_QQclX662788a244b7c503085d082e53a6b65e = linkonce constant [62 x i8] c"(' Warning: num_threads',i6, ' exceeded an internal limit',i6)", comdat
@_QQclX8aa47eafef3dd9fef2a70f0e43e486f4 = linkonce constant [44 x i8] c"Space for matrix elements exceeded in sparse", comdat
@_QQclX6E7A612C206E7A6D6178203D20 = linkonce constant [13 x i8] c"nza, nzmax = ", comdat
@_QQclX696E7465726E616C206572726F7220696E207370617273653A20693D = linkonce constant [28 x i8] c"internal error in sparse: i=", comdat
@_QQEnvironmentDefaults = local_unnamed_addr constant ptr null
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMcg_dataEamult.cache = common global ptr null, align 8
@_QMcg_dataEtran.cache = common global ptr null, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 22, ptr @0 }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8
@_QMtinfoEihigh.cache = common global ptr null, align 8
@_QMtinfoEilow.cache = common global ptr null, align 8
@_QMtinfoEmyid.cache = common global ptr null, align 8
@_QMtinfoEnum_threads.cache = common global ptr null, align 8

define void @_QQmain() local_unnamed_addr #0 {
  %structArg.i237 = alloca { ptr, ptr, ptr, ptr }, align 8
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %structArg.i = alloca { ptr, ptr, ptr, ptr }, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %structArg208 = alloca { ptr, ptr }, align 8
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr }, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 4
  %11 = alloca [9 x i8], align 4
  %12 = alloca [6 x i8], align 4
  %13 = alloca [6 x i8], align 4
  %14 = alloca [6 x i8], align 4
  %15 = alloca [5 x i8], align 4
  %16 = alloca [6 x i8], align 4
  %17 = alloca [11 x i8], align 4
  %18 = alloca [5 x i8], align 4
  %19 = alloca [24 x i8], align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x i8], align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %omp_global_thread_num2.i238 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %33 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num2.i238, ptr nonnull @_QMcg_dataEamult, i64 8, ptr nonnull @_QMcg_dataEamult.cache)
  %34 = alloca [1 x i8], align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca [3 x [8 x i8]], align 4
  %43 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num2.i238, ptr nonnull @_QMcg_dataEtran, i64 8, ptr nonnull @_QMcg_dataEtran.cache)
  %44 = alloca i32, align 4
  %45 = alloca double, align 8
  store i32 1, ptr %35, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %35)
  %46 = load i32, ptr %35, align 4, !tbaa !4
  %47 = add i32 %46, 1
  store i32 %47, ptr %35, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %35)
  %48 = load i32, ptr %35, align 4, !tbaa !4
  %49 = add i32 %48, 1
  store i32 %49, ptr %35, align 4, !tbaa !4
  call void @timer_clear_(ptr nonnull %35)
  %50 = load i32, ptr %35, align 4, !tbaa !4
  %51 = add i32 %50, 1
  store i32 %51, ptr %35, align 4, !tbaa !4
  call void @check_timer_flag_(ptr nonnull @_QMcg_dataEtimeron)
  %52 = load i32, ptr @_QMcg_dataEtimeron, align 4, !tbaa !8
  %.not = icmp eq i32 %52, 0
  br i1 %.not, label %omp_parallel, label %omp_parallel.loopexit

omp_parallel.loopexit:                            ; preds = %0
  %53 = load i32, ptr @_QQclX696E6974, align 1
  store i32 %53, ptr %42, align 4
  %scevgep = getelementptr inbounds i8, ptr %42, i64 4
  store i32 538976288, ptr %scevgep, align 4
  %54 = getelementptr inbounds i8, ptr %42, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %54, ptr noundef nonnull align 1 dereferenceable(7) @_QQclX62656E63686D6B, i64 7, i1 false)
  %55 = getelementptr inbounds i8, ptr %42, i64 15
  store i8 32, ptr %55, align 1, !tbaa !4
  %56 = getelementptr inbounds i8, ptr %42, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %56, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX636F6E6A6764, i64 6, i1 false)
  %scevgep249 = getelementptr inbounds i8, ptr %42, i64 22
  store i16 8224, ptr %scevgep249, align 2
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp_parallel.loopexit, %0
  store i32 1, ptr %32, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %32)
  store i32 1, ptr @_QMcg_dataEfirstrow, align 4, !tbaa !11
  store i32 9000000, ptr @_QMcg_dataElastrow, align 4, !tbaa !13
  store i32 1, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !15
  store i32 9000000, ptr @_QMcg_dataElastcol, align 4, !tbaa !17
  %.unpack = load i8, ptr @_QQclX45, align 1, !tbaa !19
  store i8 %.unpack, ptr %34, align 4, !tbaa !4
  %57 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX574bc9483b879864d24e2171888a3194, i64 66, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 145)
  %58 = call i32 @_FortranAioEndIoStatement(ptr %57)
  %59 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272053697A653A20272C2069313129, i64 16, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 146)
  %60 = call i1 @_FortranAioOutputInteger32(ptr %59, i32 9000000)
  %61 = call i32 @_FortranAioEndIoStatement(ptr %59)
  %62 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX63f70da6b7cfde3fd15fbdfe6ad3cc9f, i64 38, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 147)
  %63 = call i1 @_FortranAioOutputInteger32(ptr %62, i32 100)
  %64 = call i32 @_FortranAioEndIoStatement(ptr %62)
  %65 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXf923a2af02906180bfbdd179b9b5c308, i64 38, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 148)
  %66 = call i32 @omp_get_max_threads_()
  %67 = call i1 @_FortranAioOutputInteger32(ptr %65, i32 %66)
  %68 = call i32 @_FortranAioEndIoStatement(ptr %65)
  %69 = call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 149)
  %70 = call i32 @_FortranAioEndIoStatement(ptr %69)
  store i32 9000000, ptr @_QMcg_dataEnaa, align 4, !tbaa !21
  store i64 6561000000, ptr @_QMcg_dataEnzz, align 8, !tbaa !23
  call void @alloc_space_()
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @_QQmain..omp_par)
  %gep_183.i = getelementptr inbounds i8, ptr %structArg.i, i64 8
  %gep_184.i = getelementptr inbounds i8, ptr %structArg.i, i64 16
  %gep_185.i = getelementptr inbounds i8, ptr %structArg.i, i64 24
  %gep_210 = getelementptr inbounds i8, ptr %structArg208, i64 8
  store i32 1, ptr %36, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %structArg.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  %71 = call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num2.i238, ptr nonnull @_QMcg_dataEamult, i64 8, ptr nonnull @_QMcg_dataEamult.cache)
  %72 = call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num2.i238, ptr nonnull @_QMcg_dataEtran, i64 8, ptr nonnull @_QMcg_dataEtran.cache)
  store double 0.000000e+00, ptr %6, align 8, !tbaa !25
  store double 0.000000e+00, ptr %8, align 8, !tbaa !25
  store ptr %6, ptr %structArg.i, align 8
  store ptr %8, ptr %gep_183.i, align 8
  store ptr %5, ptr %gep_184.i, align 8
  store ptr %7, ptr %gep_185.i, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @conj_grad_..omp_par, ptr nonnull %structArg.i)
  %73 = load double, ptr %8, align 8, !tbaa !25
  %74 = call contract double @llvm.sqrt.f64(double %73)
  store double %74, ptr %40, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %structArg.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  store double 0.000000e+00, ptr %38, align 8, !tbaa !4
  store double 0.000000e+00, ptr %39, align 8, !tbaa !4
  store ptr %38, ptr %structArg208, align 8
  store ptr %39, ptr %gep_210, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_QQmain..omp_par.8, ptr nonnull %structArg208)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @_QQmain..omp_par.6)
  store double 0.000000e+00, ptr %45, align 8, !tbaa !4
  store i32 1, ptr %31, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %31)
  %75 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXc92d7093db15fe00b5a60d33d5740ed5, i64 44, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 275)
  store i32 1, ptr %30, align 4, !tbaa !4
  %76 = call contract double @timer_read_(ptr nonnull %30)
  %77 = call i1 @_FortranAioOutputReal64(ptr %75, double %76)
  %78 = call i32 @_FortranAioEndIoStatement(ptr %75)
  store i32 2, ptr %29, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %29)
  call void @roi_begin_()
  %gep_183.i239 = getelementptr inbounds i8, ptr %structArg.i237, i64 8
  %gep_184.i240 = getelementptr inbounds i8, ptr %structArg.i237, i64 16
  %gep_185.i241 = getelementptr inbounds i8, ptr %structArg.i237, i64 24
  %gep_203 = getelementptr inbounds i8, ptr %structArg, i64 8
  %gep_204 = getelementptr inbounds i8, ptr %structArg, i64 16
  %gep_205 = getelementptr inbounds i8, ptr %structArg, i64 24
  %gep_206 = getelementptr inbounds i8, ptr %structArg, i64 32
  br label %79

79:                                               ; preds = %omp_parallel, %omp_parallel207
  %80 = phi i64 [ 100, %omp_parallel ], [ %93, %omp_parallel207 ]
  %81 = phi i32 [ 1, %omp_parallel ], [ %92, %omp_parallel207 ]
  store i32 %81, ptr %36, align 4, !tbaa !4
  %82 = load i32, ptr @_QMcg_dataEtimeron, align 4, !tbaa !8
  %.not235 = icmp eq i32 %82, 0
  br i1 %.not235, label %84, label %83

83:                                               ; preds = %79
  store i32 3, ptr %28, align 4, !tbaa !4
  call void @timer_start_(ptr nonnull %28)
  br label %84

84:                                               ; preds = %83, %79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %structArg.i237)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  %85 = call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num2.i238, ptr nonnull @_QMcg_dataEamult, i64 8, ptr nonnull @_QMcg_dataEamult.cache)
  %86 = call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num2.i238, ptr nonnull @_QMcg_dataEtran, i64 8, ptr nonnull @_QMcg_dataEtran.cache)
  store double 0.000000e+00, ptr %2, align 8, !tbaa !25
  store double 0.000000e+00, ptr %4, align 8, !tbaa !25
  store ptr %2, ptr %structArg.i237, align 8
  store ptr %4, ptr %gep_183.i239, align 8
  store ptr %1, ptr %gep_184.i240, align 8
  store ptr %3, ptr %gep_185.i241, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @conj_grad_..omp_par, ptr nonnull %structArg.i237)
  %87 = load double, ptr %4, align 8, !tbaa !25
  %88 = call contract double @llvm.sqrt.f64(double %87)
  store double %88, ptr %40, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %structArg.i237)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %89 = load i32, ptr @_QMcg_dataEtimeron, align 4, !tbaa !8
  %.not236 = icmp eq i32 %89, 0
  br i1 %.not236, label %omp_parallel207, label %90

90:                                               ; preds = %84
  store i32 3, ptr %27, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %27)
  br label %omp_parallel207

omp_parallel207:                                  ; preds = %90, %84
  store double 0.000000e+00, ptr %38, align 8, !tbaa !4
  store double 0.000000e+00, ptr %39, align 8, !tbaa !4
  store ptr %38, ptr %structArg, align 8
  store ptr %39, ptr %gep_203, align 8
  store ptr %36, ptr %gep_204, align 8
  store ptr %45, ptr %gep_205, align 8
  store ptr %40, ptr %gep_206, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_QQmain..omp_par.7, ptr nonnull %structArg)
  %91 = load i32, ptr %36, align 4, !tbaa !4
  %92 = add i32 %91, 1
  %93 = add nsw i64 %80, -1
  %94 = icmp ugt i64 %80, 1
  br i1 %94, label %79, label %95

95:                                               ; preds = %omp_parallel207
  store i32 %92, ptr %36, align 4, !tbaa !4
  call void @roi_end_()
  store i32 2, ptr %26, align 4, !tbaa !4
  call void @timer_stop_(ptr nonnull %26)
  store i32 2, ptr %25, align 4, !tbaa !4
  %96 = call contract double @timer_read_(ptr nonnull %25)
  store double %96, ptr %41, align 8, !tbaa !4
  %97 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272042656E63686D61726B20636F6D706C65746564202729, i64 25, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 352)
  %98 = call i32 @_FortranAioEndIoStatement(ptr %97)
  %99 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %34, ptr nonnull @_QQclX55, i64 1, i64 1)
  %.not233 = icmp eq i32 %99, 0
  br i1 %.not233, label %124, label %100

100:                                              ; preds = %95
  %101 = load double, ptr %45, align 8, !tbaa !4
  %102 = fadd contract double %101, 0xC053616B25115EA7
  %103 = call contract double @llvm.fabs.f64(double %102)
  %104 = fdiv contract double %103, 0x4053616B25115EA7
  %105 = fcmp contract ugt double %104, 1.000000e-10
  br i1 %105, label %115, label %106

106:                                              ; preds = %100
  store i32 1, ptr %44, align 4, !tbaa !4
  %107 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720564552494649434154494F4E205355434345535346554C202729, i64 29, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 362)
  %108 = call i32 @_FortranAioEndIoStatement(ptr %107)
  %109 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827205A65746120697320202020272C206532302E313329, i64 24, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 363)
  %110 = load double, ptr %45, align 8, !tbaa !4
  %111 = call i1 @_FortranAioOutputReal64(ptr %109, double %110)
  %112 = call i32 @_FortranAioEndIoStatement(ptr %109)
  %113 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827204572726F72206973202020272C206532302E313329, i64 24, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 364)
  %114 = call i1 @_FortranAioOutputReal64(ptr %113, double %104)
  br label %132

115:                                              ; preds = %100
  store i32 0, ptr %44, align 4, !tbaa !4
  %116 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720564552494649434154494F4E204641494C45442729, i64 24, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 370)
  %117 = call i32 @_FortranAioEndIoStatement(ptr %116)
  %118 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXda1d1fbc12717325772929fb8e25d29c, i64 33, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 371)
  %119 = load double, ptr %45, align 8, !tbaa !4
  %120 = call i1 @_FortranAioOutputReal64(ptr %118, double %119)
  %121 = call i32 @_FortranAioEndIoStatement(ptr %118)
  %122 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX685fd3320896e28edd379d16b07d3b60, i64 33, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 372)
  %123 = call i1 @_FortranAioOutputReal64(ptr %122, double 0x4053616B25115EA7)
  br label %132

124:                                              ; preds = %95
  store i32 0, ptr %44, align 4, !tbaa !4
  %125 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272050726F626C656D2073697A6520756E6B6E6F776E2729, i64 25, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 379)
  %126 = call i32 @_FortranAioEndIoStatement(ptr %125)
  %127 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827204E4F20564552494649434154494F4E20504552464F524D45442729, i64 30, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 380)
  %128 = call i32 @_FortranAioEndIoStatement(ptr %127)
  %129 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827205A65746120697320202020272C206532302E313329, i64 24, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 381)
  %130 = load double, ptr %45, align 8, !tbaa !4
  %131 = call i1 @_FortranAioOutputReal64(ptr %129, double %130)
  br label %132

132:                                              ; preds = %106, %115, %124
  %.sink = phi ptr [ %113, %106 ], [ %122, %115 ], [ %129, %124 ]
  %133 = call i32 @_FortranAioEndIoStatement(ptr %.sink)
  call void @free_space_()
  %134 = fcmp contract une double %96, 0.000000e+00
  %135 = fdiv contract double 0x417F8E777FFFFFFF, %96
  %storemerge = select i1 %134, double %135, double 0.000000e+00
  store double %storemerge, ptr %37, align 8, !tbaa !4
  %136 = load i16, ptr @_QQclX4347, align 1
  store i16 %136, ptr %24, align 4
  store i32 9000000, ptr %23, align 4, !tbaa !4
  store i32 0, ptr %22, align 4, !tbaa !4
  store i32 0, ptr %21, align 4, !tbaa !4
  store i32 100, ptr %20, align 4, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %19, ptr noundef nonnull align 1 dereferenceable(24) @_QQclX20202020202020202020666C6F6174696E6720706F696E74, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %18, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX332E342E32, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %17, ptr noundef nonnull align 1 dereferenceable(11) @_QQclX3132205365702032303234, i64 11, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %16, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %15, ptr noundef nonnull align 1 dereferenceable(5) @_QQclX2428464329, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %14, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %13, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %12, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX286E6F6E6529, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %11, ptr noundef nonnull align 1 dereferenceable(9) @_QQclX242846464C41475329, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %10, ptr noundef nonnull align 1 dereferenceable(6) @_QQclX72616E646938, i64 6, i1 false)
  call void @print_results_(ptr nonnull %24, ptr nonnull %34, ptr nonnull %23, ptr nonnull %22, ptr nonnull %21, ptr nonnull %20, ptr nonnull %41, ptr nonnull %37, ptr nonnull %19, ptr nonnull %44, ptr nonnull %18, ptr nonnull %17, ptr nonnull %16, ptr nonnull %15, ptr nonnull %14, ptr nonnull %13, ptr nonnull %12, ptr nonnull %11, ptr nonnull %10, i64 2, i64 1, i64 24, i64 5, i64 11, i64 6, i64 5, i64 6, i64 6, i64 6, i64 9, i64 6)
  %137 = load i32, ptr @_QMcg_dataEtimeron, align 4, !tbaa !8
  %.not234 = icmp eq i32 %137, 0
  br i1 %.not234, label %257, label %138

138:                                              ; preds = %132
  store i32 2, ptr %9, align 4, !tbaa !4
  %139 = call contract double @timer_read_(ptr nonnull %9)
  %140 = fcmp contract oeq double %139, 0.000000e+00
  %.0 = select i1 %140, double 1.000000e+00, double %139
  %141 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827202053454354494F4E20202054696D65202873656373292729, i64 27, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 417)
  %142 = call i32 @_FortranAioEndIoStatement(ptr %141)
  %invariant.gep = getelementptr i8, ptr %42, i64 -8
  store i32 1, ptr %35, align 4, !tbaa !4
  %143 = call contract double @timer_read_(ptr nonnull %35)
  store double %143, ptr %41, align 8, !tbaa !4
  %144 = load i32, ptr %35, align 4, !tbaa !4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2832782C61382C273A272C66392E333A27202028272C66362E322C2725292729, i64 32, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 422)
  %148 = load i32, ptr %35, align 4, !tbaa !4
  %149 = sext i32 %148 to i64
  %gep246 = getelementptr [8 x i8], ptr %invariant.gep, i64 %149
  %150 = call i1 @_FortranAioOutputAscii(ptr %147, ptr %gep246, i64 8)
  %151 = load double, ptr %41, align 8, !tbaa !4
  %152 = call i1 @_FortranAioOutputReal64(ptr %147, double %151)
  br label %.sink.split

153:                                              ; preds = %138
  %154 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2832782C61382C273A272C66392E333A27202028272C66362E322C2725292729, i64 32, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 424)
  %155 = load i32, ptr %35, align 4, !tbaa !4
  %156 = sext i32 %155 to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %156
  %157 = call i1 @_FortranAioOutputAscii(ptr %154, ptr %gep, i64 8)
  %158 = load double, ptr %41, align 8, !tbaa !4
  %159 = call i1 @_FortranAioOutputReal64(ptr %154, double %158)
  %160 = load double, ptr %41, align 8, !tbaa !4
  %161 = fmul contract double %160, 1.000000e+02
  %162 = fdiv contract double %161, %.0
  %163 = call i1 @_FortranAioOutputReal64(ptr %154, double %162)
  %164 = call i32 @_FortranAioEndIoStatement(ptr %154)
  %165 = load i32, ptr %35, align 4, !tbaa !4
  %166 = icmp eq i32 %165, 3
  br i1 %166, label %167, label %179

167:                                              ; preds = %153
  %168 = load double, ptr %41, align 8, !tbaa !4
  %169 = fsub contract double %.0, %168
  store double %169, ptr %41, align 8, !tbaa !4
  %170 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 427)
  %171 = call i1 @_FortranAioOutputAscii(ptr %170, ptr nonnull @_QQclX72657374, i64 4)
  %172 = load double, ptr %41, align 8, !tbaa !4
  %173 = call i1 @_FortranAioOutputReal64(ptr %170, double %172)
  %174 = load double, ptr %41, align 8, !tbaa !4
  %175 = fmul contract double %174, 1.000000e+02
  %176 = fdiv contract double %175, %.0
  %177 = call i1 @_FortranAioOutputReal64(ptr %170, double %176)
  br label %.sink.split

.sink.split:                                      ; preds = %167, %146
  %.sink250 = phi ptr [ %147, %146 ], [ %170, %167 ]
  %178 = call i32 @_FortranAioEndIoStatement(ptr %.sink250)
  br label %179

179:                                              ; preds = %.sink.split, %153
  %180 = load i32, ptr %35, align 4, !tbaa !4
  %181 = add i32 %180, 1
  store i32 %181, ptr %35, align 4, !tbaa !4
  %182 = call contract double @timer_read_(ptr nonnull %35)
  store double %182, ptr %41, align 8, !tbaa !4
  %183 = load i32, ptr %35, align 4, !tbaa !4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %210, label %185

185:                                              ; preds = %179
  %186 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2832782C61382C273A272C66392E333A27202028272C66362E322C2725292729, i64 32, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 424)
  %187 = load i32, ptr %35, align 4, !tbaa !4
  %188 = sext i32 %187 to i64
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %188
  %189 = call i1 @_FortranAioOutputAscii(ptr %186, ptr %gep.1, i64 8)
  %190 = load double, ptr %41, align 8, !tbaa !4
  %191 = call i1 @_FortranAioOutputReal64(ptr %186, double %190)
  %192 = load double, ptr %41, align 8, !tbaa !4
  %193 = fmul contract double %192, 1.000000e+02
  %194 = fdiv contract double %193, %.0
  %195 = call i1 @_FortranAioOutputReal64(ptr %186, double %194)
  %196 = call i32 @_FortranAioEndIoStatement(ptr %186)
  %197 = load i32, ptr %35, align 4, !tbaa !4
  %198 = icmp eq i32 %197, 3
  br i1 %198, label %199, label %218

199:                                              ; preds = %185
  %200 = load double, ptr %41, align 8, !tbaa !4
  %201 = fsub contract double %.0, %200
  store double %201, ptr %41, align 8, !tbaa !4
  %202 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 427)
  %203 = call i1 @_FortranAioOutputAscii(ptr %202, ptr nonnull @_QQclX72657374, i64 4)
  %204 = load double, ptr %41, align 8, !tbaa !4
  %205 = call i1 @_FortranAioOutputReal64(ptr %202, double %204)
  %206 = load double, ptr %41, align 8, !tbaa !4
  %207 = fmul contract double %206, 1.000000e+02
  %208 = fdiv contract double %207, %.0
  %209 = call i1 @_FortranAioOutputReal64(ptr %202, double %208)
  br label %.sink.split251

210:                                              ; preds = %179
  %211 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2832782C61382C273A272C66392E333A27202028272C66362E322C2725292729, i64 32, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 422)
  %212 = load i32, ptr %35, align 4, !tbaa !4
  %213 = sext i32 %212 to i64
  %gep246.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %213
  %214 = call i1 @_FortranAioOutputAscii(ptr %211, ptr %gep246.1, i64 8)
  %215 = load double, ptr %41, align 8, !tbaa !4
  %216 = call i1 @_FortranAioOutputReal64(ptr %211, double %215)
  br label %.sink.split251

.sink.split251:                                   ; preds = %199, %210
  %.sink252 = phi ptr [ %211, %210 ], [ %202, %199 ]
  %217 = call i32 @_FortranAioEndIoStatement(ptr %.sink252)
  br label %218

218:                                              ; preds = %.sink.split251, %185
  %219 = load i32, ptr %35, align 4, !tbaa !4
  %220 = add i32 %219, 1
  store i32 %220, ptr %35, align 4, !tbaa !4
  %221 = call contract double @timer_read_(ptr nonnull %35)
  store double %221, ptr %41, align 8, !tbaa !4
  %222 = load i32, ptr %35, align 4, !tbaa !4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %249, label %224

224:                                              ; preds = %218
  %225 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2832782C61382C273A272C66392E333A27202028272C66362E322C2725292729, i64 32, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 424)
  %226 = load i32, ptr %35, align 4, !tbaa !4
  %227 = sext i32 %226 to i64
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %227
  %228 = call i1 @_FortranAioOutputAscii(ptr %225, ptr %gep.2, i64 8)
  %229 = load double, ptr %41, align 8, !tbaa !4
  %230 = call i1 @_FortranAioOutputReal64(ptr %225, double %229)
  %231 = load double, ptr %41, align 8, !tbaa !4
  %232 = fmul contract double %231, 1.000000e+02
  %233 = fdiv contract double %232, %.0
  %234 = call i1 @_FortranAioOutputReal64(ptr %225, double %233)
  %235 = call i32 @_FortranAioEndIoStatement(ptr %225)
  %236 = load i32, ptr %35, align 4, !tbaa !4
  %237 = icmp eq i32 %236, 3
  br i1 %237, label %238, label %257

238:                                              ; preds = %224
  %239 = load double, ptr %41, align 8, !tbaa !4
  %240 = fsub contract double %.0, %239
  store double %240, ptr %41, align 8, !tbaa !4
  %241 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfee6e2c1de1e9b4f1a7db5d4eedf623a, i64 40, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 427)
  %242 = call i1 @_FortranAioOutputAscii(ptr %241, ptr nonnull @_QQclX72657374, i64 4)
  %243 = load double, ptr %41, align 8, !tbaa !4
  %244 = call i1 @_FortranAioOutputReal64(ptr %241, double %243)
  %245 = load double, ptr %41, align 8, !tbaa !4
  %246 = fmul contract double %245, 1.000000e+02
  %247 = fdiv contract double %246, %.0
  %248 = call i1 @_FortranAioOutputReal64(ptr %241, double %247)
  br label %.sink.split253

249:                                              ; preds = %218
  %250 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2832782C61382C273A272C66392E333A27202028272C66362E322C2725292729, i64 32, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 422)
  %251 = load i32, ptr %35, align 4, !tbaa !4
  %252 = sext i32 %251 to i64
  %gep246.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %252
  %253 = call i1 @_FortranAioOutputAscii(ptr %250, ptr %gep246.2, i64 8)
  %254 = load double, ptr %41, align 8, !tbaa !4
  %255 = call i1 @_FortranAioOutputReal64(ptr %250, double %254)
  br label %.sink.split253

.sink.split253:                                   ; preds = %238, %249
  %.sink254 = phi ptr [ %250, %249 ], [ %241, %238 ]
  %256 = call i32 @_FortranAioEndIoStatement(ptr %.sink254)
  br label %257

257:                                              ; preds = %224, %.sink.split253, %132
  ret void
}

; Function Attrs: nounwind
define internal void @_QQmain..omp_par.8(ptr noalias nocapture readnone %tid.addr139, ptr noalias nocapture readnone %zero.addr140, ptr nocapture readonly %0) #1 {
omp.par.entry141:
  %loadgep_ = load ptr, ptr %0, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 8
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %p.lastiter163 = alloca i32, align 4
  %p.lowerbound164 = alloca i32, align 4
  %p.upperbound165 = alloca i32, align 4
  %p.stride166 = alloca i32, align 4
  %red.array170 = alloca [2 x ptr], align 8
  %p.lastiter195 = alloca i32, align 4
  %p.lowerbound196 = alloca i32, align 4
  %p.upperbound197 = alloca i32, align 4
  %p.stride198 = alloca i32, align 4
  %3 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !17
  %4 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !15
  %5 = sub i32 %3, %4
  %6 = icmp ugt i32 %5, 2147483646
  store i32 0, ptr %p.lowerbound164, align 4
  %7 = select i1 %6, i32 -1, i32 %5
  store i32 %7, ptr %p.upperbound165, align 4
  store i32 1, ptr %p.stride166, align 4
  %omp_global_thread_num199 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num199, i32 34, ptr nonnull %p.lastiter163, ptr nonnull %p.lowerbound164, ptr nonnull %p.upperbound165, ptr nonnull %p.stride166, i32 1, i32 0)
  %8 = load i32, ptr %p.lowerbound164, align 4
  %9 = load i32, ptr %p.upperbound165, align 4
  %reass.sub = sub i32 %9, %8
  %omp_loop.cmp159147.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp159147.not, label %omp_loop.exit156, label %omp_loop.body154.lr.ph

omp_loop.body154.lr.ph:                           ; preds = %omp.par.entry141
  %10 = add i32 %8, 1
  %.unpack108 = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !32
  %.unpack115.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !32
  %.unpack120 = load ptr, ptr @_QMcg_dataEz, align 8, !tbaa !32
  %.unpack127.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEz, i64 0, i32 7), align 8, !tbaa !32
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %8
  %min.iters.check = icmp ult i32 %12, 4
  br i1 %min.iters.check, label %omp_loop.body154.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %omp_loop.body154.lr.ph
  %13 = add i32 %8, 1
  %14 = add i32 %9, 1
  %15 = icmp slt i32 %14, %13
  br i1 %15, label %omp_loop.body154.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %12, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi double [ 0.000000e+00, %vector.ph ], [ %29, %vector.body ]
  %vec.phi160 = phi double [ 0.000000e+00, %vector.ph ], [ %31, %vector.body ]
  %16 = add i32 %10, %index
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %.unpack115.unpack.unpack
  %19 = getelementptr double, ptr %.unpack108, i64 %18
  %20 = getelementptr i8, ptr %19, i64 16
  %wide.load = load <2 x double>, ptr %19, align 8, !tbaa !34
  %wide.load161 = load <2 x double>, ptr %20, align 8, !tbaa !34
  %21 = sub nsw i64 %17, %.unpack127.unpack.unpack
  %22 = getelementptr double, ptr %.unpack120, i64 %21
  %23 = getelementptr i8, ptr %22, i64 16
  %wide.load162 = load <2 x double>, ptr %22, align 8, !tbaa !37
  %wide.load163 = load <2 x double>, ptr %23, align 8, !tbaa !37
  %24 = fmul contract <2 x double> %wide.load, %wide.load162
  %25 = fmul contract <2 x double> %wide.load161, %wide.load163
  %26 = fmul contract <2 x double> %wide.load162, %wide.load162
  %27 = fmul contract <2 x double> %wide.load163, %wide.load163
  %28 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi, <2 x double> %24)
  %29 = call contract double @llvm.vector.reduce.fadd.v2f64(double %28, <2 x double> %25)
  %30 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi160, <2 x double> %26)
  %31 = call contract double @llvm.vector.reduce.fadd.v2f64(double %30, <2 x double> %27)
  %index.next = add nuw i32 %index, 4
  %32 = icmp eq i32 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %12, %n.vec
  br i1 %cmp.n, label %omp_loop.exit156, label %omp_loop.body154.preheader

omp_loop.body154.preheader:                       ; preds = %vector.scevcheck, %omp_loop.body154.lr.ph, %middle.block
  %omp_loop.iv158148.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %omp_loop.body154.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi double [ 0.000000e+00, %vector.scevcheck ], [ 0.000000e+00, %omp_loop.body154.lr.ph ], [ %29, %middle.block ]
  %.ph179 = phi double [ 0.000000e+00, %vector.scevcheck ], [ 0.000000e+00, %omp_loop.body154.lr.ph ], [ %31, %middle.block ]
  br label %omp_loop.body154

omp_loop.exit156:                                 ; preds = %omp_loop.body154, %middle.block, %omp.par.entry141
  %.lcssa146 = phi double [ 0.000000e+00, %omp.par.entry141 ], [ %31, %middle.block ], [ %83, %omp_loop.body154 ]
  %.lcssa = phi double [ 0.000000e+00, %omp.par.entry141 ], [ %29, %middle.block ], [ %81, %omp_loop.body154 ]
  store double %.lcssa, ptr %1, align 8, !tbaa !42
  store double %.lcssa146, ptr %2, align 8, !tbaa !45
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num199)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num199)
  store ptr %1, ptr %red.array170, align 8
  %red.array.elem.1172 = getelementptr inbounds i8, ptr %red.array170, i64 8
  store ptr %2, ptr %red.array.elem.1172, align 8
  %reduce174 = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num199, i32 2, i64 16, ptr nonnull %red.array170, ptr nonnull @.omp.reduction.func.1, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce174, 1
  br i1 %cond, label %reduce.switch.nonatomic175, label %reduce.finalize169

reduce.switch.nonatomic175:                       ; preds = %omp_loop.exit156
  %red.value.0177 = load double, ptr %loadgep_, align 8
  %red.private.value.0178 = load double, ptr %1, align 8
  %33 = fadd contract double %red.value.0177, %red.private.value.0178
  store double %33, ptr %loadgep_, align 8
  %red.value.1179 = load double, ptr %loadgep_2, align 8
  %red.private.value.1180 = load double, ptr %2, align 8
  %34 = fadd contract double %red.value.1179, %red.private.value.1180
  store double %34, ptr %loadgep_2, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num199, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize169

reduce.finalize169:                               ; preds = %omp_loop.exit156, %reduce.switch.nonatomic175
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num199)
  %35 = load double, ptr %loadgep_2, align 8, !tbaa !4
  %36 = call contract double @llvm.sqrt.f64(double %35)
  %37 = fdiv contract double 1.000000e+00, %36
  %38 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !17
  %39 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !15
  %40 = sub i32 %38, %39
  %41 = icmp ugt i32 %40, 2147483646
  store i32 0, ptr %p.lowerbound196, align 4
  %42 = select i1 %41, i32 -1, i32 %40
  store i32 %42, ptr %p.upperbound197, align 4
  store i32 1, ptr %p.stride198, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num199, i32 34, ptr nonnull %p.lastiter195, ptr nonnull %p.lowerbound196, ptr nonnull %p.upperbound197, ptr nonnull %p.stride198, i32 1, i32 0)
  %43 = load i32, ptr %p.lowerbound196, align 4
  %44 = load i32, ptr %p.upperbound197, align 4
  %reass.sub152 = sub i32 %44, %43
  %omp_loop.cmp191150.not = icmp eq i32 %reass.sub152, -1
  br i1 %omp_loop.cmp191150.not, label %omp_loop.exit188, label %omp_loop.body186.lr.ph

omp_loop.body186.lr.ph:                           ; preds = %reduce.finalize169
  %45 = add i32 %43, 1
  %.unpack = load ptr, ptr @_QMcg_dataEz, align 8, !tbaa !32
  %.unpack91.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEz, i64 0, i32 7), align 8, !tbaa !32
  %.unpack96 = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !32
  %.unpack103.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !32
  %46 = add i32 %44, 1
  %47 = sub i32 %46, %43
  %min.iters.check168 = icmp ult i32 %47, 4
  br i1 %min.iters.check168, label %omp_loop.body186.preheader, label %vector.scevcheck165

vector.scevcheck165:                              ; preds = %omp_loop.body186.lr.ph
  %48 = add i32 %43, 1
  %49 = add i32 %44, 1
  %50 = icmp slt i32 %49, %48
  br i1 %50, label %omp_loop.body186.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %vector.scevcheck165
  %n.vec171 = and i32 %47, -4
  %broadcast.splatinsert = insertelement <2 x double> poison, double %37, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph169
  %index175 = phi i32 [ 0, %vector.ph169 ], [ %index.next178, %vector.body174 ]
  %51 = add i32 %45, %index175
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %52, %.unpack91.unpack.unpack
  %54 = getelementptr double, ptr %.unpack, i64 %53
  %55 = getelementptr i8, ptr %54, i64 16
  %wide.load176 = load <2 x double>, ptr %54, align 8, !tbaa !37
  %wide.load177 = load <2 x double>, ptr %55, align 8, !tbaa !37
  %56 = fmul contract <2 x double> %broadcast.splat, %wide.load176
  %57 = fmul contract <2 x double> %broadcast.splat, %wide.load177
  %58 = sub nsw i64 %52, %.unpack103.unpack.unpack
  %59 = getelementptr double, ptr %.unpack96, i64 %58
  %60 = getelementptr i8, ptr %59, i64 16
  store <2 x double> %56, ptr %59, align 8, !tbaa !34
  store <2 x double> %57, ptr %60, align 8, !tbaa !34
  %index.next178 = add nuw i32 %index175, 4
  %61 = icmp eq i32 %index.next178, %n.vec171
  br i1 %61, label %middle.block166, label %vector.body174, !llvm.loop !47

middle.block166:                                  ; preds = %vector.body174
  %cmp.n173 = icmp eq i32 %47, %n.vec171
  br i1 %cmp.n173, label %omp_loop.exit188, label %omp_loop.body186.preheader

omp_loop.body186.preheader:                       ; preds = %vector.scevcheck165, %omp_loop.body186.lr.ph, %middle.block166
  %omp_loop.iv190151.ph = phi i32 [ 0, %vector.scevcheck165 ], [ 0, %omp_loop.body186.lr.ph ], [ %n.vec171, %middle.block166 ]
  br label %omp_loop.body186

omp_loop.exit188:                                 ; preds = %omp_loop.body186, %middle.block166, %reduce.finalize169
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num199)
  ret void

omp_loop.body186:                                 ; preds = %omp_loop.body186.preheader, %omp_loop.body186
  %omp_loop.iv190151 = phi i32 [ %omp_loop.next192, %omp_loop.body186 ], [ %omp_loop.iv190151.ph, %omp_loop.body186.preheader ]
  %62 = add i32 %45, %omp_loop.iv190151
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %.unpack91.unpack.unpack
  %65 = getelementptr double, ptr %.unpack, i64 %64
  %66 = load double, ptr %65, align 8, !tbaa !37
  %67 = fmul contract double %37, %66
  %68 = sub nsw i64 %63, %.unpack103.unpack.unpack
  %69 = getelementptr double, ptr %.unpack96, i64 %68
  store double %67, ptr %69, align 8, !tbaa !34
  %omp_loop.next192 = add nuw i32 %omp_loop.iv190151, 1
  %exitcond155.not = icmp eq i32 %omp_loop.iv190151, %reass.sub152
  br i1 %exitcond155.not, label %omp_loop.exit188, label %omp_loop.body186, !llvm.loop !48

omp_loop.body154:                                 ; preds = %omp_loop.body154.preheader, %omp_loop.body154
  %omp_loop.iv158148 = phi i32 [ %omp_loop.next160, %omp_loop.body154 ], [ %omp_loop.iv158148.ph, %omp_loop.body154.preheader ]
  %70 = phi double [ %81, %omp_loop.body154 ], [ %.ph, %omp_loop.body154.preheader ]
  %71 = phi double [ %83, %omp_loop.body154 ], [ %.ph179, %omp_loop.body154.preheader ]
  %72 = add i32 %10, %omp_loop.iv158148
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %.unpack115.unpack.unpack
  %75 = getelementptr double, ptr %.unpack108, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !34
  %77 = sub nsw i64 %73, %.unpack127.unpack.unpack
  %78 = getelementptr double, ptr %.unpack120, i64 %77
  %79 = load double, ptr %78, align 8, !tbaa !37
  %80 = fmul contract double %76, %79
  %81 = fadd contract double %70, %80
  %82 = fmul contract double %79, %79
  %83 = fadd contract double %82, %71
  %omp_loop.next160 = add nuw i32 %omp_loop.iv158148, 1
  %exitcond.not = icmp eq i32 %omp_loop.iv158148, %reass.sub
  br i1 %exitcond.not, label %omp_loop.exit156, label %omp_loop.body154, !llvm.loop !49
}

; Function Attrs: nounwind
define internal void @_QQmain..omp_par.7(ptr noalias nocapture readnone %tid.addr80, ptr noalias nocapture readnone %zero.addr81, ptr nocapture readonly %0) #1 {
omp.par.entry82:
  %loadgep_ = load ptr, ptr %0, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 8
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %gep_3 = getelementptr i8, ptr %0, i64 16
  %loadgep_4 = load ptr, ptr %gep_3, align 8
  %gep_5 = getelementptr i8, ptr %0, i64 24
  %loadgep_6 = load ptr, ptr %gep_5, align 8
  %gep_7 = getelementptr i8, ptr %0, i64 32
  %loadgep_8 = load ptr, ptr %gep_7, align 8
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %p.lastiter104 = alloca i32, align 4
  %p.lowerbound105 = alloca i32, align 4
  %p.upperbound106 = alloca i32, align 4
  %p.stride107 = alloca i32, align 4
  %red.array = alloca [2 x ptr], align 8
  %p.lastiter131 = alloca i32, align 4
  %p.lowerbound132 = alloca i32, align 4
  %p.upperbound133 = alloca i32, align 4
  %p.stride134 = alloca i32, align 4
  %3 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !17
  %4 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !15
  %5 = sub i32 %3, %4
  %6 = icmp ugt i32 %5, 2147483646
  store i32 0, ptr %p.lowerbound105, align 4
  %7 = select i1 %6, i32 -1, i32 %5
  store i32 %7, ptr %p.upperbound106, align 4
  store i32 1, ptr %p.stride107, align 4
  %omp_global_thread_num135 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num135, i32 34, ptr nonnull %p.lastiter104, ptr nonnull %p.lowerbound105, ptr nonnull %p.upperbound106, ptr nonnull %p.stride107, i32 1, i32 0)
  %8 = load i32, ptr %p.lowerbound105, align 4
  %9 = load i32, ptr %p.upperbound106, align 4
  %reass.sub = sub i32 %9, %8
  %omp_loop.cmp100154.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp100154.not, label %omp_loop.exit97, label %omp_loop.body95.lr.ph

omp_loop.body95.lr.ph:                            ; preds = %omp.par.entry82
  %10 = add i32 %8, 1
  %.unpack115 = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !32
  %.unpack122.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !32
  %.unpack127 = load ptr, ptr @_QMcg_dataEz, align 8, !tbaa !32
  %.unpack134.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEz, i64 0, i32 7), align 8, !tbaa !32
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %8
  %min.iters.check = icmp ult i32 %12, 4
  br i1 %min.iters.check, label %omp_loop.body95.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %omp_loop.body95.lr.ph
  %13 = add i32 %8, 1
  %14 = add i32 %9, 1
  %15 = icmp slt i32 %14, %13
  br i1 %15, label %omp_loop.body95.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %12, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi double [ 0.000000e+00, %vector.ph ], [ %29, %vector.body ]
  %vec.phi167 = phi double [ 0.000000e+00, %vector.ph ], [ %31, %vector.body ]
  %16 = add i32 %10, %index
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %.unpack122.unpack.unpack
  %19 = getelementptr double, ptr %.unpack115, i64 %18
  %20 = getelementptr i8, ptr %19, i64 16
  %wide.load = load <2 x double>, ptr %19, align 8, !tbaa !34
  %wide.load168 = load <2 x double>, ptr %20, align 8, !tbaa !34
  %21 = sub nsw i64 %17, %.unpack134.unpack.unpack
  %22 = getelementptr double, ptr %.unpack127, i64 %21
  %23 = getelementptr i8, ptr %22, i64 16
  %wide.load169 = load <2 x double>, ptr %22, align 8, !tbaa !37
  %wide.load170 = load <2 x double>, ptr %23, align 8, !tbaa !37
  %24 = fmul contract <2 x double> %wide.load, %wide.load169
  %25 = fmul contract <2 x double> %wide.load168, %wide.load170
  %26 = fmul contract <2 x double> %wide.load169, %wide.load169
  %27 = fmul contract <2 x double> %wide.load170, %wide.load170
  %28 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi, <2 x double> %24)
  %29 = call contract double @llvm.vector.reduce.fadd.v2f64(double %28, <2 x double> %25)
  %30 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi167, <2 x double> %26)
  %31 = call contract double @llvm.vector.reduce.fadd.v2f64(double %30, <2 x double> %27)
  %index.next = add nuw i32 %index, 4
  %32 = icmp eq i32 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %12, %n.vec
  br i1 %cmp.n, label %omp_loop.exit97, label %omp_loop.body95.preheader

omp_loop.body95.preheader:                        ; preds = %vector.scevcheck, %omp_loop.body95.lr.ph, %middle.block
  %omp_loop.iv99155.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %omp_loop.body95.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi double [ 0.000000e+00, %vector.scevcheck ], [ 0.000000e+00, %omp_loop.body95.lr.ph ], [ %29, %middle.block ]
  %.ph186 = phi double [ 0.000000e+00, %vector.scevcheck ], [ 0.000000e+00, %omp_loop.body95.lr.ph ], [ %31, %middle.block ]
  br label %omp_loop.body95

omp_loop.exit97:                                  ; preds = %omp_loop.body95, %middle.block, %omp.par.entry82
  %.lcssa153 = phi double [ 0.000000e+00, %omp.par.entry82 ], [ %31, %middle.block ], [ %102, %omp_loop.body95 ]
  %.lcssa = phi double [ 0.000000e+00, %omp.par.entry82 ], [ %29, %middle.block ], [ %100, %omp_loop.body95 ]
  store double %.lcssa, ptr %1, align 8, !tbaa !42
  store double %.lcssa153, ptr %2, align 8, !tbaa !45
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num135)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num135)
  store ptr %1, ptr %red.array, align 8
  %red.array.elem.1 = getelementptr inbounds i8, ptr %red.array, i64 8
  store ptr %2, ptr %red.array.elem.1, align 8
  %reduce = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num135, i32 2, i64 16, ptr nonnull %red.array, ptr nonnull @.omp.reduction.func, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce, 1
  br i1 %cond, label %reduce.switch.nonatomic, label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_loop.exit97
  %red.value.0 = load double, ptr %loadgep_, align 8
  %red.private.value.0 = load double, ptr %1, align 8
  %33 = fadd contract double %red.value.0, %red.private.value.0
  store double %33, ptr %loadgep_, align 8
  %red.value.1 = load double, ptr %loadgep_2, align 8
  %red.private.value.1 = load double, ptr %2, align 8
  %34 = fadd contract double %red.value.1, %red.private.value.1
  store double %34, ptr %loadgep_2, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num135, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %omp_loop.exit97, %reduce.switch.nonatomic
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num135)
  %35 = load double, ptr %loadgep_2, align 8, !tbaa !4
  %36 = call contract double @llvm.sqrt.f64(double %35)
  %37 = fdiv contract double 1.000000e+00, %36
  %38 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num135)
  %.not = icmp eq i32 %38, 0
  br i1 %.not, label %omp_region.end, label %omp.master.region

omp_region.end:                                   ; preds = %reduce.finalize, %omp.region.cont113
  %39 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !17
  %40 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !15
  %41 = sub i32 %39, %40
  %42 = icmp ugt i32 %41, 2147483646
  store i32 0, ptr %p.lowerbound132, align 4
  %43 = select i1 %42, i32 -1, i32 %41
  store i32 %43, ptr %p.upperbound133, align 4
  store i32 1, ptr %p.stride134, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num135, i32 34, ptr nonnull %p.lastiter131, ptr nonnull %p.lowerbound132, ptr nonnull %p.upperbound133, ptr nonnull %p.stride134, i32 1, i32 0)
  %44 = load i32, ptr %p.lowerbound132, align 4
  %45 = load i32, ptr %p.upperbound133, align 4
  %reass.sub159 = sub i32 %45, %44
  %omp_loop.cmp127157.not = icmp eq i32 %reass.sub159, -1
  br i1 %omp_loop.cmp127157.not, label %omp_loop.exit124, label %omp_loop.body122.lr.ph

omp_loop.body122.lr.ph:                           ; preds = %omp_region.end
  %46 = add i32 %44, 1
  %.unpack = load ptr, ptr @_QMcg_dataEz, align 8, !tbaa !32
  %.unpack98.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEz, i64 0, i32 7), align 8, !tbaa !32
  %.unpack103 = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !32
  %.unpack110.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !32
  %47 = add i32 %45, 1
  %48 = sub i32 %47, %44
  %min.iters.check175 = icmp ult i32 %48, 4
  br i1 %min.iters.check175, label %omp_loop.body122.preheader, label %vector.scevcheck172

vector.scevcheck172:                              ; preds = %omp_loop.body122.lr.ph
  %49 = add i32 %44, 1
  %50 = add i32 %45, 1
  %51 = icmp slt i32 %50, %49
  br i1 %51, label %omp_loop.body122.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.scevcheck172
  %n.vec178 = and i32 %48, -4
  %broadcast.splatinsert = insertelement <2 x double> poison, double %37, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph176
  %index182 = phi i32 [ 0, %vector.ph176 ], [ %index.next185, %vector.body181 ]
  %52 = add i32 %46, %index182
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %.unpack98.unpack.unpack
  %55 = getelementptr double, ptr %.unpack, i64 %54
  %56 = getelementptr i8, ptr %55, i64 16
  %wide.load183 = load <2 x double>, ptr %55, align 8, !tbaa !37
  %wide.load184 = load <2 x double>, ptr %56, align 8, !tbaa !37
  %57 = fmul contract <2 x double> %broadcast.splat, %wide.load183
  %58 = fmul contract <2 x double> %broadcast.splat, %wide.load184
  %59 = sub nsw i64 %53, %.unpack110.unpack.unpack
  %60 = getelementptr double, ptr %.unpack103, i64 %59
  %61 = getelementptr i8, ptr %60, i64 16
  store <2 x double> %57, ptr %60, align 8, !tbaa !34
  store <2 x double> %58, ptr %61, align 8, !tbaa !34
  %index.next185 = add nuw i32 %index182, 4
  %62 = icmp eq i32 %index.next185, %n.vec178
  br i1 %62, label %middle.block173, label %vector.body181, !llvm.loop !51

middle.block173:                                  ; preds = %vector.body181
  %cmp.n180 = icmp eq i32 %48, %n.vec178
  br i1 %cmp.n180, label %omp_loop.exit124, label %omp_loop.body122.preheader

omp_loop.body122.preheader:                       ; preds = %vector.scevcheck172, %omp_loop.body122.lr.ph, %middle.block173
  %omp_loop.iv126158.ph = phi i32 [ 0, %vector.scevcheck172 ], [ 0, %omp_loop.body122.lr.ph ], [ %n.vec178, %middle.block173 ]
  br label %omp_loop.body122

omp_loop.exit124:                                 ; preds = %omp_loop.body122, %middle.block173, %omp_region.end
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num135)
  ret void

omp_loop.body122:                                 ; preds = %omp_loop.body122.preheader, %omp_loop.body122
  %omp_loop.iv126158 = phi i32 [ %omp_loop.next128, %omp_loop.body122 ], [ %omp_loop.iv126158.ph, %omp_loop.body122.preheader ]
  %63 = add i32 %46, %omp_loop.iv126158
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %.unpack98.unpack.unpack
  %66 = getelementptr double, ptr %.unpack, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !37
  %68 = fmul contract double %37, %67
  %69 = sub nsw i64 %64, %.unpack110.unpack.unpack
  %70 = getelementptr double, ptr %.unpack103, i64 %69
  store double %68, ptr %70, align 8, !tbaa !34
  %omp_loop.next128 = add nuw i32 %omp_loop.iv126158, 1
  %exitcond162.not = icmp eq i32 %omp_loop.iv126158, %reass.sub159
  br i1 %exitcond162.not, label %omp_loop.exit124, label %omp_loop.body122, !llvm.loop !52

omp.master.region:                                ; preds = %reduce.finalize
  %71 = load i32, ptr %loadgep_4, align 4, !tbaa !4
  %.fr91 = freeze i32 %71
  %72 = srem i32 %.fr91, 5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %omp.master.region114, label %switch.early.test

switch.early.test:                                ; preds = %omp.master.region
  switch i32 %.fr91, label %omp.region.cont113 [
    i32 100, label %omp.master.region114
    i32 1, label %omp.master.region114
  ]

omp.region.cont113:                               ; preds = %omp.master.region116, %switch.early.test
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num135)
  br label %omp_region.end

omp.master.region114:                             ; preds = %switch.early.test, %switch.early.test, %omp.master.region
  %74 = load double, ptr %loadgep_, align 8, !tbaa !4
  %75 = fdiv contract double 1.000000e+00, %74
  %76 = fadd contract double %75, 1.500000e+03
  store double %76, ptr %loadgep_6, align 8, !tbaa !4
  %77 = load i32, ptr %loadgep_4, align 4, !tbaa !4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %omp.master.region115, label %omp.master.region116

omp.master.region116:                             ; preds = %omp.master.region115, %omp.master.region114
  %79 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2834782C2069352C2036782C206532312E31342C206632302E313329, i64 28, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 321) #4
  %80 = load i32, ptr %loadgep_4, align 4, !tbaa !4
  %81 = call i1 @_FortranAioOutputInteger32(ptr %79, i32 %80) #4
  %82 = load double, ptr %loadgep_8, align 8, !tbaa !4
  %83 = call i1 @_FortranAioOutputReal64(ptr %79, double %82) #4
  %84 = load double, ptr %loadgep_6, align 8, !tbaa !4
  %85 = call i1 @_FortranAioOutputReal64(ptr %79, double %84) #4
  %86 = call i32 @_FortranAioEndIoStatement(ptr %79) #4
  br label %omp.region.cont113

omp.master.region115:                             ; preds = %omp.master.region114
  %87 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX8ab6002c60c9da36ad4bad5db1e7f1e7, i64 55, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 320) #4
  %88 = call i32 @_FortranAioEndIoStatement(ptr %87) #4
  br label %omp.master.region116

omp_loop.body95:                                  ; preds = %omp_loop.body95.preheader, %omp_loop.body95
  %omp_loop.iv99155 = phi i32 [ %omp_loop.next101, %omp_loop.body95 ], [ %omp_loop.iv99155.ph, %omp_loop.body95.preheader ]
  %89 = phi double [ %100, %omp_loop.body95 ], [ %.ph, %omp_loop.body95.preheader ]
  %90 = phi double [ %102, %omp_loop.body95 ], [ %.ph186, %omp_loop.body95.preheader ]
  %91 = add i32 %10, %omp_loop.iv99155
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %.unpack122.unpack.unpack
  %94 = getelementptr double, ptr %.unpack115, i64 %93
  %95 = load double, ptr %94, align 8, !tbaa !34
  %96 = sub nsw i64 %92, %.unpack134.unpack.unpack
  %97 = getelementptr double, ptr %.unpack127, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !37
  %99 = fmul contract double %95, %98
  %100 = fadd contract double %89, %99
  %101 = fmul contract double %98, %98
  %102 = fadd contract double %101, %90
  %omp_loop.next101 = add nuw i32 %omp_loop.iv99155, 1
  %exitcond.not = icmp eq i32 %omp_loop.iv99155, %reass.sub
  br i1 %exitcond.not, label %omp_loop.exit97, label %omp_loop.body95, !llvm.loop !53
}

; Function Attrs: nounwind
define internal void @_QQmain..omp_par.6(ptr noalias nocapture readnone %tid.addr48, ptr noalias nocapture readnone %zero.addr49) #1 {
omp.par.entry50:
  %p.lastiter71 = alloca i32, align 4
  %p.lowerbound72 = alloca i32, align 4
  %p.upperbound73 = alloca i32, align 4
  %p.stride74 = alloca i32, align 4
  store i32 0, ptr %p.lowerbound72, align 4
  store i32 9000000, ptr %p.upperbound73, align 4
  store i32 1, ptr %p.stride74, align 4
  %omp_global_thread_num76 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num76, i32 34, ptr nonnull %p.lastiter71, ptr nonnull %p.lowerbound72, ptr nonnull %p.upperbound73, ptr nonnull %p.stride74, i32 1, i32 0)
  %0 = load i32, ptr %p.lowerbound72, align 4
  %1 = load i32, ptr %p.upperbound73, align 4
  %reass.sub = sub i32 %1, %0
  %omp_loop.cmp6712.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp6712.not, label %omp_loop.exit64, label %omp_loop.body62.lr.ph

omp_loop.body62.lr.ph:                            ; preds = %omp.par.entry50
  %2 = add i32 %0, 1
  %.unpack = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !32
  %.unpack7.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !32
  %3 = add i32 %1, 1
  %4 = sub i32 %3, %0
  %min.iters.check = icmp ult i32 %4, 6
  br i1 %min.iters.check, label %omp_loop.body62.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %omp_loop.body62.lr.ph
  %5 = add i32 %0, 1
  %6 = add i32 %1, 1
  %7 = icmp slt i32 %6, %5
  br i1 %7, label %omp_loop.body62.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %4, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %8 = add i32 %2, %index
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 %9, %.unpack7.unpack.unpack
  %11 = getelementptr double, ptr %.unpack, i64 %10
  %12 = getelementptr i8, ptr %11, i64 16
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %11, align 8, !tbaa !34
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %12, align 8, !tbaa !34
  %index.next = add nuw i32 %index, 4
  %13 = icmp eq i32 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %4, %n.vec
  br i1 %cmp.n, label %omp_loop.exit64, label %omp_loop.body62.preheader

omp_loop.body62.preheader:                        ; preds = %vector.scevcheck, %omp_loop.body62.lr.ph, %middle.block
  %omp_loop.iv6613.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %omp_loop.body62.lr.ph ], [ %n.vec, %middle.block ]
  br label %omp_loop.body62

omp_loop.exit64:                                  ; preds = %omp_loop.body62, %middle.block, %omp.par.entry50
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num76)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num76)
  ret void

omp_loop.body62:                                  ; preds = %omp_loop.body62.preheader, %omp_loop.body62
  %omp_loop.iv6613 = phi i32 [ %omp_loop.next68, %omp_loop.body62 ], [ %omp_loop.iv6613.ph, %omp_loop.body62.preheader ]
  %14 = add i32 %2, %omp_loop.iv6613
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %15, %.unpack7.unpack.unpack
  %17 = getelementptr double, ptr %.unpack, i64 %16
  store double 1.000000e+00, ptr %17, align 8, !tbaa !34
  %omp_loop.next68 = add nuw i32 %omp_loop.iv6613, 1
  %exitcond.not = icmp eq i32 %omp_loop.iv6613, %reass.sub
  br i1 %exitcond.not, label %omp_loop.exit64, label %omp_loop.body62, !llvm.loop !55
}

; Function Attrs: nounwind
define internal void @_QQmain..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr) #1 {
omp.par.entry:
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %p.lastiter24 = alloca i32, align 4
  %p.lowerbound25 = alloca i32, align 4
  %p.upperbound26 = alloca i32, align 4
  %p.stride27 = alloca i32, align 4
  %p.lastiter42 = alloca i32, align 4
  %p.lowerbound43 = alloca i32, align 4
  %p.upperbound44 = alloca i32, align 4
  %p.stride45 = alloca i32, align 4
  %omp_global_thread_num46 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %0 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num46, ptr nonnull @_QMcg_dataEtran, i64 8, ptr nonnull @_QMcg_dataEtran.cache)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num46, ptr nonnull @_QMcg_dataEamult, i64 8, ptr nonnull @_QMcg_dataEamult.cache)
  store double 0x41B2B9B0A1000000, ptr %0, align 8, !tbaa !4
  store double 0x41D2309CE5400000, ptr %1, align 8, !tbaa !4
  %2 = tail call contract double @randlc_(ptr nonnull %0, ptr nonnull %1) #4
  %.unpack = load ptr, ptr @_QMcg_dataEa, align 8, !tbaa !32
  %.unpack298 = load ptr, ptr @_QMcg_dataEcolidx, align 8, !tbaa !32
  %.unpack310 = load ptr, ptr @_QMcg_dataErowstr, align 8, !tbaa !32
  %.unpack322 = load ptr, ptr @_QMcg_dataEarow, align 8, !tbaa !32
  %.unpack334 = load ptr, ptr @_QMcg_dataEacol, align 8, !tbaa !32
  %.unpack346 = load ptr, ptr @_QMcg_dataEaelt, align 8, !tbaa !32
  %.unpack358 = load ptr, ptr @_QMcg_dataEv, align 8, !tbaa !32
  %.unpack370 = load ptr, ptr @_QMcg_dataEiv, align 8, !tbaa !32
  tail call void @makea_(ptr nonnull @_QMcg_dataEnaa, ptr nonnull @_QMcg_dataEnzz, ptr %.unpack, ptr %.unpack298, ptr %.unpack310, ptr nonnull @_QMcg_dataEfirstrow, ptr nonnull @_QMcg_dataElastrow, ptr nonnull poison, ptr nonnull poison, ptr %.unpack322, ptr %.unpack334, ptr %.unpack346, ptr %.unpack358, ptr %.unpack370) #4
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num46)
  %3 = load i32, ptr @_QMcg_dataElastrow, align 4, !tbaa !13
  %4 = load i32, ptr @_QMcg_dataEfirstrow, align 4, !tbaa !11
  %5 = sub i32 %3, %4
  %6 = icmp ugt i32 %5, 2147483646
  store i32 0, ptr %p.lowerbound, align 4
  %7 = select i1 %6, i32 -1, i32 %5
  store i32 %7, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num46, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %8 = load i32, ptr %p.lowerbound, align 4
  %9 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %9, %8
  %omp_loop.cmp469.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp469.not, label %omp_loop.exit, label %omp_loop.body.lr.ph

omp_loop.body.lr.ph:                              ; preds = %omp.par.entry
  %.unpack442 = load ptr, ptr @_QMcg_dataErowstr, align 8, !tbaa !32
  %.unpack449.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataErowstr, i64 0, i32 7), align 8, !tbaa !32
  %.unpack454 = load ptr, ptr @_QMcg_dataEcolidx, align 8
  %.unpack461.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEcolidx, i64 0, i32 7), align 8
  %10 = load i32, ptr @_QMcg_dataEfirstcol, align 4
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %omp_loop.body

omp_loop.exit:                                    ; preds = %omp.wsloop.region10, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num46)
  store i32 0, ptr %p.lowerbound25, align 4
  store i32 9000000, ptr %p.upperbound26, align 4
  store i32 1, ptr %p.stride27, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num46, i32 34, ptr nonnull %p.lastiter24, ptr nonnull %p.lowerbound25, ptr nonnull %p.upperbound26, ptr nonnull %p.stride27, i32 1, i32 0)
  %11 = load i32, ptr %p.lowerbound25, align 4
  %12 = load i32, ptr %p.upperbound26, align 4
  %reass.sub475 = sub i32 %12, %11
  %omp_loop.cmp20471.not = icmp eq i32 %reass.sub475, -1
  br i1 %omp_loop.cmp20471.not, label %omp_loop.exit17, label %omp_loop.body15.lr.ph

omp_loop.body15.lr.ph:                            ; preds = %omp_loop.exit
  %13 = add i32 %11, 1
  %.unpack430 = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !32
  %.unpack437.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !32
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %11
  %min.iters.check484 = icmp ult i32 %15, 6
  br i1 %min.iters.check484, label %omp_loop.body15.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %omp_loop.body15.lr.ph
  %16 = add i32 %11, 1
  %17 = add i32 %12, 1
  %18 = icmp slt i32 %17, %16
  br i1 %18, label %omp_loop.body15.preheader, label %vector.ph485

vector.ph485:                                     ; preds = %vector.scevcheck
  %n.vec487 = and i32 %15, -4
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph485
  %index491 = phi i32 [ 0, %vector.ph485 ], [ %index.next492, %vector.body490 ]
  %19 = add i32 %13, %index491
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %20, %.unpack437.unpack.unpack
  %22 = getelementptr double, ptr %.unpack430, i64 %21
  %23 = getelementptr i8, ptr %22, i64 16
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %22, align 8, !tbaa !34
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %23, align 8, !tbaa !34
  %index.next492 = add nuw i32 %index491, 4
  %24 = icmp eq i32 %index.next492, %n.vec487
  br i1 %24, label %middle.block482, label %vector.body490, !llvm.loop !56

middle.block482:                                  ; preds = %vector.body490
  %cmp.n489 = icmp eq i32 %15, %n.vec487
  br i1 %cmp.n489, label %omp_loop.exit17, label %omp_loop.body15.preheader

omp_loop.body15.preheader:                        ; preds = %vector.scevcheck, %omp_loop.body15.lr.ph, %middle.block482
  %omp_loop.iv19472.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %omp_loop.body15.lr.ph ], [ %n.vec487, %middle.block482 ]
  br label %omp_loop.body15

omp_loop.exit17:                                  ; preds = %omp_loop.body15, %middle.block482, %omp_loop.exit
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num46)
  %25 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !17
  %26 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !15
  %27 = sub i32 %25, %26
  %28 = icmp ugt i32 %27, 2147483646
  store i32 0, ptr %p.lowerbound43, align 4
  %29 = select i1 %28, i32 -1, i32 %27
  store i32 %29, ptr %p.upperbound44, align 4
  store i32 1, ptr %p.stride45, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num46, i32 34, ptr nonnull %p.lastiter42, ptr nonnull %p.lowerbound43, ptr nonnull %p.upperbound44, ptr nonnull %p.stride45, i32 1, i32 0)
  %30 = load i32, ptr %p.lowerbound43, align 4
  %31 = load i32, ptr %p.upperbound44, align 4
  %reass.sub476 = sub i32 %31, %30
  %omp_loop.cmp38473.not = icmp eq i32 %reass.sub476, -1
  br i1 %omp_loop.cmp38473.not, label %omp_loop.exit35, label %omp_loop.body33.lr.ph

omp_loop.body33.lr.ph:                            ; preds = %omp_loop.exit17
  %32 = add i32 %30, 1
  %.unpack382 = load ptr, ptr @_QMcg_dataEq, align 8, !tbaa !32
  %.unpack389.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEq, i64 0, i32 7), align 8, !tbaa !32
  %.unpack394 = load ptr, ptr @_QMcg_dataEz, align 8, !tbaa !32
  %.unpack401.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEz, i64 0, i32 7), align 8, !tbaa !32
  %.unpack406 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !32
  %.unpack413.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !32
  %.unpack418 = load ptr, ptr @_QMcg_dataEp, align 8, !tbaa !32
  %.unpack425.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEp, i64 0, i32 7), align 8, !tbaa !32
  %33 = add i32 %31, 1
  %34 = sub i32 %33, %30
  %min.iters.check496 = icmp ult i32 %34, 4
  br i1 %min.iters.check496, label %omp_loop.body33.preheader, label %vector.scevcheck493

vector.scevcheck493:                              ; preds = %omp_loop.body33.lr.ph
  %35 = add i32 %30, 1
  %36 = add i32 %31, 1
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %omp_loop.body33.preheader, label %vector.ph497

vector.ph497:                                     ; preds = %vector.scevcheck493
  %n.vec499 = and i32 %34, -4
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph497
  %index503 = phi i32 [ 0, %vector.ph497 ], [ %index.next504, %vector.body502 ]
  %38 = add i32 %32, %index503
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %.unpack389.unpack.unpack
  %41 = getelementptr double, ptr %.unpack382, i64 %40
  %42 = getelementptr i8, ptr %41, i64 16
  store <2 x double> zeroinitializer, ptr %41, align 8, !tbaa !57
  store <2 x double> zeroinitializer, ptr %42, align 8, !tbaa !57
  %43 = sub nsw i64 %39, %.unpack401.unpack.unpack
  %44 = getelementptr double, ptr %.unpack394, i64 %43
  %45 = getelementptr i8, ptr %44, i64 16
  store <2 x double> zeroinitializer, ptr %44, align 8, !tbaa !37
  store <2 x double> zeroinitializer, ptr %45, align 8, !tbaa !37
  %46 = sub nsw i64 %39, %.unpack413.unpack.unpack
  %47 = getelementptr double, ptr %.unpack406, i64 %46
  %48 = getelementptr i8, ptr %47, i64 16
  store <2 x double> zeroinitializer, ptr %47, align 8, !tbaa !59
  store <2 x double> zeroinitializer, ptr %48, align 8, !tbaa !59
  %49 = sub nsw i64 %39, %.unpack425.unpack.unpack
  %50 = getelementptr double, ptr %.unpack418, i64 %49
  %51 = getelementptr i8, ptr %50, i64 16
  store <2 x double> zeroinitializer, ptr %50, align 8, !tbaa !61
  store <2 x double> zeroinitializer, ptr %51, align 8, !tbaa !61
  %index.next504 = add nuw i32 %index503, 4
  %52 = icmp eq i32 %index.next504, %n.vec499
  br i1 %52, label %middle.block494, label %vector.body502, !llvm.loop !63

middle.block494:                                  ; preds = %vector.body502
  %cmp.n501 = icmp eq i32 %34, %n.vec499
  br i1 %cmp.n501, label %omp_loop.exit35, label %omp_loop.body33.preheader

omp_loop.body33.preheader:                        ; preds = %vector.scevcheck493, %omp_loop.body33.lr.ph, %middle.block494
  %omp_loop.iv37474.ph = phi i32 [ 0, %vector.scevcheck493 ], [ 0, %omp_loop.body33.lr.ph ], [ %n.vec499, %middle.block494 ]
  br label %omp_loop.body33

omp_loop.exit35:                                  ; preds = %omp_loop.body33, %middle.block494, %omp_loop.exit17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num46)
  ret void

omp_loop.body33:                                  ; preds = %omp_loop.body33.preheader, %omp_loop.body33
  %omp_loop.iv37474 = phi i32 [ %omp_loop.next39, %omp_loop.body33 ], [ %omp_loop.iv37474.ph, %omp_loop.body33.preheader ]
  %53 = add i32 %32, %omp_loop.iv37474
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %.unpack389.unpack.unpack
  %56 = getelementptr double, ptr %.unpack382, i64 %55
  store double 0.000000e+00, ptr %56, align 8, !tbaa !57
  %57 = sub nsw i64 %54, %.unpack401.unpack.unpack
  %58 = getelementptr double, ptr %.unpack394, i64 %57
  store double 0.000000e+00, ptr %58, align 8, !tbaa !37
  %59 = sub nsw i64 %54, %.unpack413.unpack.unpack
  %60 = getelementptr double, ptr %.unpack406, i64 %59
  store double 0.000000e+00, ptr %60, align 8, !tbaa !59
  %61 = sub nsw i64 %54, %.unpack425.unpack.unpack
  %62 = getelementptr double, ptr %.unpack418, i64 %61
  store double 0.000000e+00, ptr %62, align 8, !tbaa !61
  %omp_loop.next39 = add nuw i32 %omp_loop.iv37474, 1
  %exitcond478.not = icmp eq i32 %omp_loop.iv37474, %reass.sub476
  br i1 %exitcond478.not, label %omp_loop.exit35, label %omp_loop.body33, !llvm.loop !64

omp_loop.body15:                                  ; preds = %omp_loop.body15.preheader, %omp_loop.body15
  %omp_loop.iv19472 = phi i32 [ %omp_loop.next21, %omp_loop.body15 ], [ %omp_loop.iv19472.ph, %omp_loop.body15.preheader ]
  %63 = add i32 %13, %omp_loop.iv19472
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %.unpack437.unpack.unpack
  %66 = getelementptr double, ptr %.unpack430, i64 %65
  store double 1.000000e+00, ptr %66, align 8, !tbaa !34
  %omp_loop.next21 = add nuw i32 %omp_loop.iv19472, 1
  %exitcond477.not = icmp eq i32 %omp_loop.iv19472, %reass.sub475
  br i1 %exitcond477.not, label %omp_loop.exit17, label %omp_loop.body15, !llvm.loop !65

omp_loop.body:                                    ; preds = %omp_loop.body.lr.ph, %omp.wsloop.region10
  %omp_loop.iv470 = phi i32 [ 0, %omp_loop.body.lr.ph ], [ %omp_loop.next, %omp.wsloop.region10 ]
  %67 = add i32 %omp_loop.iv470, %8
  %68 = add i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %.unpack449.unpack.unpack
  %71 = getelementptr i64, ptr %.unpack442, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !66
  %73 = add i32 %67, 2
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %.unpack449.unpack.unpack
  %76 = getelementptr i64, ptr %.unpack442, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !66
  %78 = sub i64 %77, %72
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %omp.wsloop.region9.preheader, label %omp.wsloop.region10

omp.wsloop.region9.preheader:                     ; preds = %omp_loop.body
  %80 = sub i64 %77, %72
  %min.iters.check = icmp ult i64 %80, 8
  br i1 %min.iters.check, label %omp.wsloop.region9.preheader505, label %vector.ph

vector.ph:                                        ; preds = %omp.wsloop.region9.preheader
  %n.vec = and i64 %80, -8
  %ind.end = sub i64 %78, %n.vec
  %ind.end479 = add i64 %72, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %72, %index
  %81 = sub nsw i64 %offset.idx, %.unpack461.unpack.unpack
  %82 = getelementptr i32, ptr %.unpack454, i64 %81
  %83 = getelementptr i8, ptr %82, i64 16
  %wide.load = load <4 x i32>, ptr %82, align 4, !tbaa !68
  %wide.load481 = load <4 x i32>, ptr %83, align 4, !tbaa !68
  %84 = add <4 x i32> %wide.load, <i32 1, i32 1, i32 1, i32 1>
  %85 = add <4 x i32> %wide.load481, <i32 1, i32 1, i32 1, i32 1>
  %86 = sub <4 x i32> %84, %broadcast.splat
  %87 = sub <4 x i32> %85, %broadcast.splat
  store <4 x i32> %86, ptr %82, align 4, !tbaa !68
  store <4 x i32> %87, ptr %83, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 8
  %88 = icmp eq i64 %index.next, %n.vec
  br i1 %88, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %80, %n.vec
  br i1 %cmp.n, label %omp.wsloop.region10, label %omp.wsloop.region9.preheader505

omp.wsloop.region9.preheader505:                  ; preds = %omp.wsloop.region9.preheader, %middle.block
  %.ph = phi i64 [ %78, %omp.wsloop.region9.preheader ], [ %ind.end, %middle.block ]
  %.ph506 = phi i64 [ %72, %omp.wsloop.region9.preheader ], [ %ind.end479, %middle.block ]
  br label %omp.wsloop.region9

omp.wsloop.region10:                              ; preds = %omp.wsloop.region9, %middle.block, %omp_loop.body
  %omp_loop.next = add nuw i32 %omp_loop.iv470, 1
  %exitcond.not = icmp eq i32 %omp_loop.iv470, %reass.sub
  br i1 %exitcond.not, label %omp_loop.exit, label %omp_loop.body

omp.wsloop.region9:                               ; preds = %omp.wsloop.region9.preheader505, %omp.wsloop.region9
  %89 = phi i64 [ %97, %omp.wsloop.region9 ], [ %.ph, %omp.wsloop.region9.preheader505 ]
  %90 = phi i64 [ %96, %omp.wsloop.region9 ], [ %.ph506, %omp.wsloop.region9.preheader505 ]
  %91 = sub nsw i64 %90, %.unpack461.unpack.unpack
  %92 = getelementptr i32, ptr %.unpack454, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !68
  %94 = add i32 %93, 1
  %95 = sub i32 %94, %10
  store i32 %95, ptr %92, align 4, !tbaa !68
  %96 = add i64 %90, 1
  %97 = add nsw i64 %89, -1
  %98 = icmp ugt i64 %89, 1
  br i1 %98, label %omp.wsloop.region9, label %omp.wsloop.region10, !llvm.loop !71
}

; Function Attrs: nounwind
define void @conj_grad_(ptr nocapture writeonly %0) local_unnamed_addr #1 {
entry:
  %structArg = alloca { ptr, ptr, ptr, ptr }, align 8
  %omp_global_thread_num2 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num2, ptr nonnull @_QMcg_dataEamult, i64 8, ptr nonnull @_QMcg_dataEamult.cache)
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num2, ptr nonnull @_QMcg_dataEtran, i64 8, ptr nonnull @_QMcg_dataEtran.cache)
  store double 0.000000e+00, ptr %3, align 8, !tbaa !25
  store double 0.000000e+00, ptr %5, align 8, !tbaa !25
  store ptr %3, ptr %structArg, align 8
  %gep_183 = getelementptr inbounds i8, ptr %structArg, i64 8
  store ptr %5, ptr %gep_183, align 8
  %gep_184 = getelementptr inbounds i8, ptr %structArg, i64 16
  store ptr %2, ptr %gep_184, align 8
  %gep_185 = getelementptr inbounds i8, ptr %structArg, i64 24
  store ptr %4, ptr %gep_185, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @conj_grad_..omp_par, ptr nonnull %structArg)
  %7 = load double, ptr %5, align 8, !tbaa !25
  %8 = call contract double @llvm.sqrt.f64(double %7)
  store double %8, ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind
define internal void @conj_grad_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_ = load ptr, ptr %0, align 8
  %gep_1 = getelementptr i8, ptr %0, i64 8
  %loadgep_2 = load ptr, ptr %gep_1, align 8
  %gep_3 = getelementptr i8, ptr %0, i64 16
  %loadgep_4 = load ptr, ptr %gep_3, align 8
  %gep_5 = getelementptr i8, ptr %0, i64 24
  %loadgep_6 = load ptr, ptr %gep_5, align 8
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %1 = alloca double, align 8
  %p.lastiter23 = alloca i32, align 4
  %p.lowerbound24 = alloca i32, align 4
  %p.upperbound25 = alloca i32, align 4
  %p.stride26 = alloca i32, align 4
  %red.array = alloca [1 x ptr], align 8
  %p.lastiter47 = alloca i32, align 4
  %p.lowerbound48 = alloca i32, align 4
  %p.upperbound49 = alloca i32, align 4
  %p.stride50 = alloca i32, align 4
  %2 = alloca double, align 8
  %p.lastiter66 = alloca i32, align 4
  %p.lowerbound67 = alloca i32, align 4
  %p.upperbound68 = alloca i32, align 4
  %p.stride69 = alloca i32, align 4
  %red.array72 = alloca [1 x ptr], align 8
  %p.lastiter100 = alloca i32, align 4
  %p.lowerbound101 = alloca i32, align 4
  %p.upperbound102 = alloca i32, align 4
  %p.stride103 = alloca i32, align 4
  %3 = alloca double, align 8
  %p.lastiter119 = alloca i32, align 4
  %p.lowerbound120 = alloca i32, align 4
  %p.upperbound121 = alloca i32, align 4
  %p.stride122 = alloca i32, align 4
  %red.array126 = alloca [1 x ptr], align 8
  %4 = alloca double, align 8
  %p.lastiter148 = alloca i32, align 4
  %p.lowerbound149 = alloca i32, align 4
  %p.upperbound150 = alloca i32, align 4
  %p.stride151 = alloca i32, align 4
  %red.array155 = alloca [1 x ptr], align 8
  %p.lastiter177 = alloca i32, align 4
  %p.lowerbound178 = alloca i32, align 4
  %p.upperbound179 = alloca i32, align 4
  %p.stride180 = alloca i32, align 4
  %5 = load i32, ptr @_QMcg_dataEnaa, align 4, !tbaa !72
  %6 = icmp ugt i32 %5, 2147483646
  store i32 0, ptr %p.lowerbound, align 4
  %7 = select i1 %6, i32 -1, i32 %5
  store i32 %7, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num182 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %8 = load i32, ptr %p.lowerbound, align 4
  %9 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %9, %8
  %omp_loop.cmp921.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp921.not, label %omp_loop.exit, label %omp_loop.body.lr.ph

omp_loop.body.lr.ph:                              ; preds = %omp.par.entry
  %10 = add i32 %8, 1
  %.unpack842 = load ptr, ptr @_QMcg_dataEq, align 8, !tbaa !75
  %.unpack849.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEq, i64 0, i32 7), align 8, !tbaa !75
  %.unpack854 = load ptr, ptr @_QMcg_dataEz, align 8, !tbaa !75
  %.unpack861.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEz, i64 0, i32 7), align 8, !tbaa !75
  %.unpack866 = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !75
  %.unpack873.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !75
  %.unpack878 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack885.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  %.unpack902 = load ptr, ptr @_QMcg_dataEp, align 8, !tbaa !75
  %.unpack909.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEp, i64 0, i32 7), align 8, !tbaa !75
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %8
  %min.iters.check = icmp ult i32 %12, 4
  br i1 %min.iters.check, label %omp_loop.body.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %omp_loop.body.lr.ph
  %13 = add i32 %8, 1
  %14 = add i32 %9, 1
  %15 = icmp slt i32 %14, %13
  br i1 %15, label %omp_loop.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %12, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %16 = add i32 %10, %index
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %.unpack849.unpack.unpack
  %19 = getelementptr double, ptr %.unpack842, i64 %18
  %20 = getelementptr i8, ptr %19, i64 16
  store <2 x double> zeroinitializer, ptr %19, align 8, !tbaa !77
  store <2 x double> zeroinitializer, ptr %20, align 8, !tbaa !77
  %21 = sub nsw i64 %17, %.unpack861.unpack.unpack
  %22 = getelementptr double, ptr %.unpack854, i64 %21
  %23 = getelementptr i8, ptr %22, i64 16
  store <2 x double> zeroinitializer, ptr %22, align 8, !tbaa !80
  store <2 x double> zeroinitializer, ptr %23, align 8, !tbaa !80
  %24 = sub nsw i64 %17, %.unpack873.unpack.unpack
  %25 = getelementptr double, ptr %.unpack866, i64 %24
  %26 = getelementptr i8, ptr %25, i64 16
  %wide.load = load <2 x double>, ptr %25, align 8, !tbaa !82
  %wide.load976 = load <2 x double>, ptr %26, align 8, !tbaa !82
  %27 = sub nsw i64 %17, %.unpack885.unpack.unpack
  %28 = getelementptr double, ptr %.unpack878, i64 %27
  %29 = getelementptr i8, ptr %28, i64 16
  store <2 x double> %wide.load, ptr %28, align 8, !tbaa !84
  store <2 x double> %wide.load976, ptr %29, align 8, !tbaa !84
  %30 = sub nsw i64 %17, %.unpack909.unpack.unpack
  %31 = getelementptr double, ptr %.unpack902, i64 %30
  %32 = getelementptr i8, ptr %31, i64 16
  store <2 x double> %wide.load, ptr %31, align 8, !tbaa !86
  store <2 x double> %wide.load976, ptr %32, align 8, !tbaa !86
  %index.next = add nuw i32 %index, 4
  %33 = icmp eq i32 %index.next, %n.vec
  br i1 %33, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %12, %n.vec
  br i1 %cmp.n, label %omp_loop.exit, label %omp_loop.body.preheader

omp_loop.body.preheader:                          ; preds = %vector.scevcheck, %omp_loop.body.lr.ph, %middle.block
  %omp_loop.iv922.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %omp_loop.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %omp_loop.body

omp_loop.exit:                                    ; preds = %omp_loop.body, %middle.block, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num182)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  %34 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !89
  %35 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !91
  %36 = sub i32 %34, %35
  store double 0.000000e+00, ptr %1, align 8
  %37 = icmp ugt i32 %36, 2147483646
  store i32 0, ptr %p.lowerbound24, align 4
  %38 = select i1 %37, i32 -1, i32 %36
  store i32 %38, ptr %p.upperbound25, align 4
  store i32 1, ptr %p.stride26, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter23, ptr nonnull %p.lowerbound24, ptr nonnull %p.upperbound25, ptr nonnull %p.stride26, i32 1, i32 0)
  %39 = load i32, ptr %p.lowerbound24, align 4
  %40 = load i32, ptr %p.upperbound25, align 4
  %reass.sub947 = sub i32 %40, %39
  %omp_loop.cmp19923.not = icmp eq i32 %reass.sub947, -1
  br i1 %omp_loop.cmp19923.not, label %omp_loop.exit16, label %omp_loop.body14.lr.ph

omp_loop.body14.lr.ph:                            ; preds = %omp_loop.exit
  %.promoted = load double, ptr %1, align 8, !tbaa !93
  %41 = add i32 %39, 1
  %.unpack830 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack837.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  %42 = add i32 %40, 1
  %43 = sub i32 %42, %39
  %min.iters.check980 = icmp ult i32 %43, 4
  br i1 %min.iters.check980, label %omp_loop.body14.preheader, label %vector.scevcheck977

vector.scevcheck977:                              ; preds = %omp_loop.body14.lr.ph
  %44 = add i32 %39, 1
  %45 = add i32 %40, 1
  %46 = icmp slt i32 %45, %44
  br i1 %46, label %omp_loop.body14.preheader, label %vector.ph981

vector.ph981:                                     ; preds = %vector.scevcheck977
  %n.vec983 = and i32 %43, -4
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph981
  %index987 = phi i32 [ 0, %vector.ph981 ], [ %index.next990, %vector.body986 ]
  %vec.phi = phi double [ %.promoted, %vector.ph981 ], [ %55, %vector.body986 ]
  %47 = add i32 %41, %index987
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %.unpack837.unpack.unpack
  %50 = getelementptr double, ptr %.unpack830, i64 %49
  %51 = getelementptr i8, ptr %50, i64 16
  %wide.load988 = load <2 x double>, ptr %50, align 8, !tbaa !84
  %wide.load989 = load <2 x double>, ptr %51, align 8, !tbaa !84
  %52 = fmul contract <2 x double> %wide.load988, %wide.load988
  %53 = fmul contract <2 x double> %wide.load989, %wide.load989
  %54 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi, <2 x double> %52)
  %55 = call contract double @llvm.vector.reduce.fadd.v2f64(double %54, <2 x double> %53)
  %index.next990 = add nuw i32 %index987, 4
  %56 = icmp eq i32 %index.next990, %n.vec983
  br i1 %56, label %middle.block978, label %vector.body986, !llvm.loop !95

middle.block978:                                  ; preds = %vector.body986
  %cmp.n985 = icmp eq i32 %43, %n.vec983
  br i1 %cmp.n985, label %omp_loop.header12.omp_loop.exit16_crit_edge, label %omp_loop.body14.preheader

omp_loop.body14.preheader:                        ; preds = %vector.scevcheck977, %omp_loop.body14.lr.ph, %middle.block978
  %omp_loop.iv18924.ph = phi i32 [ 0, %vector.scevcheck977 ], [ 0, %omp_loop.body14.lr.ph ], [ %n.vec983, %middle.block978 ]
  %.ph1076 = phi double [ %.promoted, %vector.scevcheck977 ], [ %.promoted, %omp_loop.body14.lr.ph ], [ %55, %middle.block978 ]
  br label %omp_loop.body14

omp_loop.header12.omp_loop.exit16_crit_edge:      ; preds = %omp_loop.body14, %middle.block978
  %.lcssa975 = phi double [ %55, %middle.block978 ], [ %331, %omp_loop.body14 ]
  store double %.lcssa975, ptr %1, align 8, !tbaa !93
  br label %omp_loop.exit16

omp_loop.exit16:                                  ; preds = %omp_loop.header12.omp_loop.exit16_crit_edge, %omp_loop.exit
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num182)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  store ptr %1, ptr %red.array, align 8
  %reduce = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num182, i32 1, i64 8, ptr nonnull %red.array, ptr nonnull @.omp.reduction.func.2, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond = icmp eq i32 %reduce, 1
  br i1 %cond, label %reduce.switch.nonatomic, label %reduce.finalize

reduce.switch.nonatomic:                          ; preds = %omp_loop.exit16
  %red.value.0 = load double, ptr %loadgep_, align 8
  %red.private.value.0 = load double, ptr %1, align 8
  %57 = fadd contract double %red.value.0, %red.private.value.0
  store double %57, ptr %loadgep_, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num182, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %omp_loop.exit16, %reduce.switch.nonatomic
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  br label %omp.par.region5

omp.par.region6:                                  ; preds = %omp_loop.exit170
  %58 = load i32, ptr @_QMcg_dataElastrow, align 4, !tbaa !96
  %59 = load i32, ptr @_QMcg_dataEfirstrow, align 4, !tbaa !98
  %60 = sub i32 %58, %59
  %61 = icmp ugt i32 %60, 2147483646
  store i32 0, ptr %p.lowerbound48, align 4
  %62 = select i1 %61, i32 -1, i32 %60
  store i32 %62, ptr %p.upperbound49, align 4
  store i32 1, ptr %p.stride50, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter47, ptr nonnull %p.lowerbound48, ptr nonnull %p.upperbound49, ptr nonnull %p.stride50, i32 1, i32 0)
  %63 = load i32, ptr %p.lowerbound48, align 4
  %64 = load i32, ptr %p.upperbound49, align 4
  %reass.sub952 = sub i32 %64, %63
  %omp_loop.cmp40940.not = icmp eq i32 %reass.sub952, -1
  br i1 %omp_loop.cmp40940.not, label %omp_loop.exit37, label %omp_loop.body35.lr.ph

omp_loop.body35.lr.ph:                            ; preds = %omp.par.region6
  %.unpack602 = load ptr, ptr @_QMcg_dataErowstr, align 8, !tbaa !75
  %.unpack609.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataErowstr, i64 0, i32 7), align 8, !tbaa !75
  %.unpack626 = load ptr, ptr @_QMcg_dataEa, align 8
  %.unpack633.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEa, i64 0, i32 7), align 8
  %.unpack638 = load ptr, ptr @_QMcg_dataEz, align 8
  %.unpack645.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEz, i64 0, i32 7), align 8
  %.unpack650 = load ptr, ptr @_QMcg_dataEcolidx, align 8
  %.unpack657.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEcolidx, i64 0, i32 7), align 8
  %.unpack614 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack621.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  br label %omp_loop.body35

omp_loop.exit37:                                  ; preds = %omp.wsloop.region46, %omp.par.region6
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num182)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  %65 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !89
  %66 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !91
  %67 = sub i32 %65, %66
  %68 = icmp ugt i32 %67, 2147483646
  store i32 0, ptr %p.lowerbound67, align 4
  %69 = select i1 %68, i32 -1, i32 %67
  store i32 %69, ptr %p.upperbound68, align 4
  store i32 1, ptr %p.stride69, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter66, ptr nonnull %p.lowerbound67, ptr nonnull %p.upperbound68, ptr nonnull %p.stride69, i32 1, i32 0)
  %70 = load i32, ptr %p.lowerbound67, align 4
  %71 = load i32, ptr %p.upperbound68, align 4
  %reass.sub953 = sub i32 %71, %70
  %omp_loop.cmp62944.not = icmp eq i32 %reass.sub953, -1
  br i1 %omp_loop.cmp62944.not, label %omp_loop.exit59, label %omp_loop.body57.lr.ph

omp_loop.body57.lr.ph:                            ; preds = %omp_loop.exit37
  %72 = add i32 %70, 1
  %.unpack = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !75
  %.unpack585.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !75
  %.unpack590 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack597.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  %73 = add i32 %71, 1
  %74 = sub i32 %73, %70
  %min.iters.check1052 = icmp ult i32 %74, 4
  br i1 %min.iters.check1052, label %omp_loop.body57.preheader, label %vector.scevcheck1049

vector.scevcheck1049:                             ; preds = %omp_loop.body57.lr.ph
  %75 = add i32 %70, 1
  %76 = add i32 %71, 1
  %77 = icmp slt i32 %76, %75
  br i1 %77, label %omp_loop.body57.preheader, label %vector.ph1053

vector.ph1053:                                    ; preds = %vector.scevcheck1049
  %n.vec1055 = and i32 %74, -4
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %vector.ph1053
  %index1059 = phi i32 [ 0, %vector.ph1053 ], [ %index.next1065, %vector.body1058 ]
  %vec.phi1060 = phi double [ 0.000000e+00, %vector.ph1053 ], [ %91, %vector.body1058 ]
  %78 = add i32 %72, %index1059
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %.unpack585.unpack.unpack
  %81 = getelementptr double, ptr %.unpack, i64 %80
  %82 = getelementptr i8, ptr %81, i64 16
  %wide.load1061 = load <2 x double>, ptr %81, align 8, !tbaa !82
  %wide.load1062 = load <2 x double>, ptr %82, align 8, !tbaa !82
  %83 = sub nsw i64 %79, %.unpack597.unpack.unpack
  %84 = getelementptr double, ptr %.unpack590, i64 %83
  %85 = getelementptr i8, ptr %84, i64 16
  %wide.load1063 = load <2 x double>, ptr %84, align 8, !tbaa !84
  %wide.load1064 = load <2 x double>, ptr %85, align 8, !tbaa !84
  %86 = fsub contract <2 x double> %wide.load1061, %wide.load1063
  %87 = fsub contract <2 x double> %wide.load1062, %wide.load1064
  %88 = fmul contract <2 x double> %86, %86
  %89 = fmul contract <2 x double> %87, %87
  %90 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi1060, <2 x double> %88)
  %91 = call contract double @llvm.vector.reduce.fadd.v2f64(double %90, <2 x double> %89)
  %index.next1065 = add nuw i32 %index1059, 4
  %92 = icmp eq i32 %index.next1065, %n.vec1055
  br i1 %92, label %middle.block1050, label %vector.body1058, !llvm.loop !100

middle.block1050:                                 ; preds = %vector.body1058
  %cmp.n1057 = icmp eq i32 %74, %n.vec1055
  br i1 %cmp.n1057, label %omp_loop.exit59, label %omp_loop.body57.preheader

omp_loop.body57.preheader:                        ; preds = %vector.scevcheck1049, %omp_loop.body57.lr.ph, %middle.block1050
  %omp_loop.iv61945.ph = phi i32 [ 0, %vector.scevcheck1049 ], [ 0, %omp_loop.body57.lr.ph ], [ %n.vec1055, %middle.block1050 ]
  %.ph = phi double [ 0.000000e+00, %vector.scevcheck1049 ], [ 0.000000e+00, %omp_loop.body57.lr.ph ], [ %91, %middle.block1050 ]
  br label %omp_loop.body57

omp_loop.exit59:                                  ; preds = %omp_loop.body57, %middle.block1050, %omp_loop.exit37
  %.lcssa943 = phi double [ 0.000000e+00, %omp_loop.exit37 ], [ %91, %middle.block1050 ], [ %105, %omp_loop.body57 ]
  store double %.lcssa943, ptr %2, align 8, !tbaa !101
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num182)
  store ptr %2, ptr %red.array72, align 8
  %reduce75 = call i32 @__kmpc_reduce_nowait(ptr nonnull @1, i32 %omp_global_thread_num182, i32 1, i64 8, ptr nonnull %red.array72, ptr nonnull @.omp.reduction.func.3, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond7 = icmp eq i32 %reduce75, 1
  br i1 %cond7, label %reduce.switch.nonatomic76, label %reduce.finalize71

reduce.switch.nonatomic76:                        ; preds = %omp_loop.exit59
  %red.value.078 = load double, ptr %loadgep_2, align 8
  %red.private.value.079 = load double, ptr %2, align 8
  %93 = fadd contract double %red.value.078, %red.private.value.079
  store double %93, ptr %loadgep_2, align 8
  call void @__kmpc_end_reduce_nowait(ptr nonnull @1, i32 %omp_global_thread_num182, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize71

reduce.finalize71:                                ; preds = %omp_loop.exit59, %reduce.switch.nonatomic76
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  ret void

omp_loop.body57:                                  ; preds = %omp_loop.body57.preheader, %omp_loop.body57
  %omp_loop.iv61945 = phi i32 [ %omp_loop.next63, %omp_loop.body57 ], [ %omp_loop.iv61945.ph, %omp_loop.body57.preheader ]
  %94 = phi double [ %105, %omp_loop.body57 ], [ %.ph, %omp_loop.body57.preheader ]
  %95 = add i32 %72, %omp_loop.iv61945
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %96, %.unpack585.unpack.unpack
  %98 = getelementptr double, ptr %.unpack, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !82
  %100 = sub nsw i64 %96, %.unpack597.unpack.unpack
  %101 = getelementptr double, ptr %.unpack590, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !84
  %103 = fsub contract double %99, %102
  %104 = fmul contract double %103, %103
  %105 = fadd contract double %94, %104
  %omp_loop.next63 = add nuw i32 %omp_loop.iv61945, 1
  %exitcond965.not = icmp eq i32 %omp_loop.iv61945, %reass.sub953
  br i1 %exitcond965.not, label %omp_loop.exit59, label %omp_loop.body57, !llvm.loop !103

omp_loop.body35:                                  ; preds = %omp_loop.body35.lr.ph, %omp.wsloop.region46
  %omp_loop.iv39941 = phi i32 [ 0, %omp_loop.body35.lr.ph ], [ %omp_loop.next41, %omp.wsloop.region46 ]
  %106 = add i32 %omp_loop.iv39941, %63
  %107 = add i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %108, %.unpack609.unpack.unpack
  %110 = getelementptr i64, ptr %.unpack602, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !104
  %112 = add i32 %106, 2
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 %113, %.unpack609.unpack.unpack
  %115 = getelementptr i64, ptr %.unpack602, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !104
  %117 = sub i64 %116, %111
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %omp.wsloop.region45, label %omp.wsloop.region46

omp.wsloop.region46:                              ; preds = %omp.wsloop.region45, %omp_loop.body35
  %.0.lcssa = phi double [ 0.000000e+00, %omp_loop.body35 ], [ %134, %omp.wsloop.region45 ]
  %119 = sub nsw i64 %108, %.unpack621.unpack.unpack
  %120 = getelementptr double, ptr %.unpack614, i64 %119
  store double %.0.lcssa, ptr %120, align 8, !tbaa !84
  %omp_loop.next41 = add nuw i32 %omp_loop.iv39941, 1
  %exitcond964.not = icmp eq i32 %omp_loop.iv39941, %reass.sub952
  br i1 %exitcond964.not, label %omp_loop.exit37, label %omp_loop.body35

omp.wsloop.region45:                              ; preds = %omp_loop.body35, %omp.wsloop.region45
  %121 = phi i64 [ %136, %omp.wsloop.region45 ], [ %117, %omp_loop.body35 ]
  %122 = phi i64 [ %135, %omp.wsloop.region45 ], [ %111, %omp_loop.body35 ]
  %.0938 = phi double [ %134, %omp.wsloop.region45 ], [ 0.000000e+00, %omp_loop.body35 ]
  %123 = sub nsw i64 %122, %.unpack633.unpack.unpack
  %124 = getelementptr double, ptr %.unpack626, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !106
  %126 = sub nsw i64 %122, %.unpack657.unpack.unpack
  %127 = getelementptr i32, ptr %.unpack650, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !108
  %129 = sext i32 %128 to i64
  %130 = sub nsw i64 %129, %.unpack645.unpack.unpack
  %131 = getelementptr double, ptr %.unpack638, i64 %130
  %132 = load double, ptr %131, align 8, !tbaa !80
  %133 = fmul contract double %125, %132
  %134 = fadd contract double %.0938, %133
  %135 = add i64 %122, 1
  %136 = add nsw i64 %121, -1
  %137 = icmp ugt i64 %121, 1
  br i1 %137, label %omp.wsloop.region45, label %omp.wsloop.region46

omp.par.region5:                                  ; preds = %reduce.finalize, %omp_loop.exit170
  %138 = phi i64 [ 25, %reduce.finalize ], [ %247, %omp_loop.exit170 ]
  %139 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num182)
  %.not = icmp eq i32 %139, 0
  br i1 %.not, label %omp_region.end, label %omp.master.region

omp_region.end:                                   ; preds = %omp.par.region5, %omp.master.region
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num182)
  %140 = load i32, ptr @_QMcg_dataElastrow, align 4, !tbaa !96
  %141 = load i32, ptr @_QMcg_dataEfirstrow, align 4, !tbaa !98
  %142 = sub i32 %140, %141
  %143 = icmp ugt i32 %142, 2147483646
  store i32 0, ptr %p.lowerbound101, align 4
  %144 = select i1 %143, i32 -1, i32 %142
  store i32 %144, ptr %p.upperbound102, align 4
  store i32 1, ptr %p.stride103, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter100, ptr nonnull %p.lowerbound101, ptr nonnull %p.upperbound102, ptr nonnull %p.stride103, i32 1, i32 0)
  %145 = load i32, ptr %p.lowerbound101, align 4
  %146 = load i32, ptr %p.upperbound102, align 4
  %reass.sub948 = sub i32 %146, %145
  %omp_loop.cmp93926.not = icmp eq i32 %reass.sub948, -1
  br i1 %omp_loop.cmp93926.not, label %omp_loop.exit90, label %omp_loop.body88.lr.ph

omp_loop.body88.lr.ph:                            ; preds = %omp_region.end
  %.unpack770 = load ptr, ptr @_QMcg_dataErowstr, align 8, !tbaa !75
  %.unpack777.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataErowstr, i64 0, i32 7), align 8, !tbaa !75
  %.unpack794 = load ptr, ptr @_QMcg_dataEa, align 8
  %.unpack801.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEa, i64 0, i32 7), align 8
  %.unpack806 = load ptr, ptr @_QMcg_dataEp, align 8
  %.unpack813.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEp, i64 0, i32 7), align 8
  %.unpack818 = load ptr, ptr @_QMcg_dataEcolidx, align 8
  %.unpack825.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEcolidx, i64 0, i32 7), align 8
  %.unpack782 = load ptr, ptr @_QMcg_dataEq, align 8, !tbaa !75
  %.unpack789.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEq, i64 0, i32 7), align 8, !tbaa !75
  br label %omp_loop.body88

omp_loop.exit90:                                  ; preds = %omp.wsloop.region99, %omp_region.end
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num182)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  %147 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !89
  %148 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !91
  %149 = sub i32 %147, %148
  store double 0.000000e+00, ptr %3, align 8
  %150 = icmp ugt i32 %149, 2147483646
  store i32 0, ptr %p.lowerbound120, align 4
  %151 = select i1 %150, i32 -1, i32 %149
  store i32 %151, ptr %p.upperbound121, align 4
  store i32 1, ptr %p.stride122, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter119, ptr nonnull %p.lowerbound120, ptr nonnull %p.upperbound121, ptr nonnull %p.stride122, i32 1, i32 0)
  %152 = load i32, ptr %p.lowerbound120, align 4
  %153 = load i32, ptr %p.upperbound121, align 4
  %reass.sub949 = sub i32 %153, %152
  %omp_loop.cmp115929.not = icmp eq i32 %reass.sub949, -1
  br i1 %omp_loop.cmp115929.not, label %omp_loop.exit112, label %omp_loop.body110.lr.ph

omp_loop.body110.lr.ph:                           ; preds = %omp_loop.exit90
  %.promoted928 = load double, ptr %3, align 8, !tbaa !110
  %154 = add i32 %152, 1
  %.unpack746 = load ptr, ptr @_QMcg_dataEp, align 8, !tbaa !75
  %.unpack753.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEp, i64 0, i32 7), align 8, !tbaa !75
  %.unpack758 = load ptr, ptr @_QMcg_dataEq, align 8, !tbaa !75
  %.unpack765.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEq, i64 0, i32 7), align 8, !tbaa !75
  %155 = add i32 %153, 1
  %156 = sub i32 %155, %152
  %min.iters.check1034 = icmp ult i32 %156, 4
  br i1 %min.iters.check1034, label %omp_loop.body110.preheader, label %vector.scevcheck1031

vector.scevcheck1031:                             ; preds = %omp_loop.body110.lr.ph
  %157 = add i32 %152, 1
  %158 = add i32 %153, 1
  %159 = icmp slt i32 %158, %157
  br i1 %159, label %omp_loop.body110.preheader, label %vector.ph1035

vector.ph1035:                                    ; preds = %vector.scevcheck1031
  %n.vec1037 = and i32 %156, -4
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %vector.ph1035
  %index1041 = phi i32 [ 0, %vector.ph1035 ], [ %index.next1047, %vector.body1040 ]
  %vec.phi1042 = phi double [ %.promoted928, %vector.ph1035 ], [ %171, %vector.body1040 ]
  %160 = add i32 %154, %index1041
  %161 = sext i32 %160 to i64
  %162 = sub nsw i64 %161, %.unpack753.unpack.unpack
  %163 = getelementptr double, ptr %.unpack746, i64 %162
  %164 = getelementptr i8, ptr %163, i64 16
  %wide.load1043 = load <2 x double>, ptr %163, align 8, !tbaa !86
  %wide.load1044 = load <2 x double>, ptr %164, align 8, !tbaa !86
  %165 = sub nsw i64 %161, %.unpack765.unpack.unpack
  %166 = getelementptr double, ptr %.unpack758, i64 %165
  %167 = getelementptr i8, ptr %166, i64 16
  %wide.load1045 = load <2 x double>, ptr %166, align 8, !tbaa !77
  %wide.load1046 = load <2 x double>, ptr %167, align 8, !tbaa !77
  %168 = fmul contract <2 x double> %wide.load1043, %wide.load1045
  %169 = fmul contract <2 x double> %wide.load1044, %wide.load1046
  %170 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi1042, <2 x double> %168)
  %171 = call contract double @llvm.vector.reduce.fadd.v2f64(double %170, <2 x double> %169)
  %index.next1047 = add nuw i32 %index1041, 4
  %172 = icmp eq i32 %index.next1047, %n.vec1037
  br i1 %172, label %middle.block1032, label %vector.body1040, !llvm.loop !112

middle.block1032:                                 ; preds = %vector.body1040
  %cmp.n1039 = icmp eq i32 %156, %n.vec1037
  br i1 %cmp.n1039, label %omp_loop.header108.omp_loop.exit112_crit_edge, label %omp_loop.body110.preheader

omp_loop.body110.preheader:                       ; preds = %vector.scevcheck1031, %omp_loop.body110.lr.ph, %middle.block1032
  %omp_loop.iv114930.ph = phi i32 [ 0, %vector.scevcheck1031 ], [ 0, %omp_loop.body110.lr.ph ], [ %n.vec1037, %middle.block1032 ]
  %.ph1070 = phi double [ %.promoted928, %vector.scevcheck1031 ], [ %.promoted928, %omp_loop.body110.lr.ph ], [ %171, %middle.block1032 ]
  br label %omp_loop.body110

omp_loop.header108.omp_loop.exit112_crit_edge:    ; preds = %omp_loop.body110, %middle.block1032
  %.lcssa973 = phi double [ %171, %middle.block1032 ], [ %290, %omp_loop.body110 ]
  store double %.lcssa973, ptr %3, align 8, !tbaa !110
  br label %omp_loop.exit112

omp_loop.exit112:                                 ; preds = %omp_loop.header108.omp_loop.exit112_crit_edge, %omp_loop.exit90
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num182)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  store ptr %3, ptr %red.array126, align 8
  %reduce129 = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num182, i32 1, i64 8, ptr nonnull %red.array126, ptr nonnull @.omp.reduction.func.4, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond8 = icmp eq i32 %reduce129, 1
  br i1 %cond8, label %reduce.switch.nonatomic130, label %reduce.finalize125

reduce.switch.nonatomic130:                       ; preds = %omp_loop.exit112
  %red.value.0132 = load double, ptr %loadgep_4, align 8
  %red.private.value.0133 = load double, ptr %3, align 8
  %173 = fadd contract double %red.value.0132, %red.private.value.0133
  store double %173, ptr %loadgep_4, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num182, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize125

reduce.finalize125:                               ; preds = %omp_loop.exit112, %reduce.switch.nonatomic130
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  %174 = load double, ptr %loadgep_6, align 8, !tbaa !25
  %175 = load double, ptr %loadgep_4, align 8, !tbaa !25
  %176 = fdiv contract double %174, %175
  %177 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !89
  %178 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !91
  %179 = sub i32 %177, %178
  store double 0.000000e+00, ptr %4, align 8
  %180 = icmp ugt i32 %179, 2147483646
  store i32 0, ptr %p.lowerbound149, align 4
  %181 = select i1 %180, i32 -1, i32 %179
  store i32 %181, ptr %p.upperbound150, align 4
  store i32 1, ptr %p.stride151, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter148, ptr nonnull %p.lowerbound149, ptr nonnull %p.upperbound150, ptr nonnull %p.stride151, i32 1, i32 0)
  %182 = load i32, ptr %p.lowerbound149, align 4
  %183 = load i32, ptr %p.upperbound150, align 4
  %reass.sub950 = sub i32 %183, %182
  %omp_loop.cmp144933.not = icmp eq i32 %reass.sub950, -1
  br i1 %omp_loop.cmp144933.not, label %omp_loop.exit141, label %omp_loop.body139.lr.ph

omp_loop.body139.lr.ph:                           ; preds = %reduce.finalize125
  %.promoted932 = load double, ptr %4, align 8, !tbaa !93
  %184 = add i32 %182, 1
  %.unpack686 = load ptr, ptr @_QMcg_dataEz, align 8, !tbaa !75
  %.unpack693.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEz, i64 0, i32 7), align 8, !tbaa !75
  %.unpack698 = load ptr, ptr @_QMcg_dataEp, align 8, !tbaa !75
  %.unpack705.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEp, i64 0, i32 7), align 8, !tbaa !75
  %.unpack710 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack717.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  %.unpack722 = load ptr, ptr @_QMcg_dataEq, align 8, !tbaa !75
  %.unpack729.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEq, i64 0, i32 7), align 8, !tbaa !75
  %185 = add i32 %183, 1
  %186 = sub i32 %185, %182
  %min.iters.check1010 = icmp ult i32 %186, 4
  br i1 %min.iters.check1010, label %omp_loop.body139.preheader, label %vector.scevcheck1007

vector.scevcheck1007:                             ; preds = %omp_loop.body139.lr.ph
  %187 = add i32 %182, 1
  %188 = add i32 %183, 1
  %189 = icmp slt i32 %188, %187
  br i1 %189, label %omp_loop.body139.preheader, label %vector.ph1011

vector.ph1011:                                    ; preds = %vector.scevcheck1007
  %n.vec1013 = and i32 %186, -4
  %broadcast.splatinsert1023 = insertelement <2 x double> poison, double %176, i64 0
  %broadcast.splat1024 = shufflevector <2 x double> %broadcast.splatinsert1023, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1011
  %index1017 = phi i32 [ 0, %vector.ph1011 ], [ %index.next1029, %vector.body1016 ]
  %vec.phi1018 = phi double [ %.promoted932, %vector.ph1011 ], [ %215, %vector.body1016 ]
  %190 = add i32 %184, %index1017
  %191 = sext i32 %190 to i64
  %192 = sub nsw i64 %191, %.unpack693.unpack.unpack
  %193 = getelementptr double, ptr %.unpack686, i64 %192
  %194 = getelementptr i8, ptr %193, i64 16
  %wide.load1019 = load <2 x double>, ptr %193, align 8, !tbaa !80
  %wide.load1020 = load <2 x double>, ptr %194, align 8, !tbaa !80
  %195 = sub nsw i64 %191, %.unpack705.unpack.unpack
  %196 = getelementptr double, ptr %.unpack698, i64 %195
  %197 = getelementptr i8, ptr %196, i64 16
  %wide.load1021 = load <2 x double>, ptr %196, align 8, !tbaa !86
  %wide.load1022 = load <2 x double>, ptr %197, align 8, !tbaa !86
  %198 = fmul contract <2 x double> %broadcast.splat1024, %wide.load1021
  %199 = fmul contract <2 x double> %broadcast.splat1024, %wide.load1022
  %200 = fadd contract <2 x double> %wide.load1019, %198
  %201 = fadd contract <2 x double> %wide.load1020, %199
  store <2 x double> %200, ptr %193, align 8, !tbaa !80
  store <2 x double> %201, ptr %194, align 8, !tbaa !80
  %202 = sub nsw i64 %191, %.unpack717.unpack.unpack
  %203 = getelementptr double, ptr %.unpack710, i64 %202
  %204 = getelementptr i8, ptr %203, i64 16
  %wide.load1025 = load <2 x double>, ptr %203, align 8, !tbaa !84
  %wide.load1026 = load <2 x double>, ptr %204, align 8, !tbaa !84
  %205 = sub nsw i64 %191, %.unpack729.unpack.unpack
  %206 = getelementptr double, ptr %.unpack722, i64 %205
  %207 = getelementptr i8, ptr %206, i64 16
  %wide.load1027 = load <2 x double>, ptr %206, align 8, !tbaa !77
  %wide.load1028 = load <2 x double>, ptr %207, align 8, !tbaa !77
  %208 = fmul contract <2 x double> %broadcast.splat1024, %wide.load1027
  %209 = fmul contract <2 x double> %broadcast.splat1024, %wide.load1028
  %210 = fsub contract <2 x double> %wide.load1025, %208
  %211 = fsub contract <2 x double> %wide.load1026, %209
  store <2 x double> %210, ptr %203, align 8, !tbaa !84
  store <2 x double> %211, ptr %204, align 8, !tbaa !84
  %212 = fmul contract <2 x double> %210, %210
  %213 = fmul contract <2 x double> %211, %211
  %214 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi1018, <2 x double> %212)
  %215 = call contract double @llvm.vector.reduce.fadd.v2f64(double %214, <2 x double> %213)
  %index.next1029 = add nuw i32 %index1017, 4
  %216 = icmp eq i32 %index.next1029, %n.vec1013
  br i1 %216, label %middle.block1008, label %vector.body1016, !llvm.loop !113

middle.block1008:                                 ; preds = %vector.body1016
  %cmp.n1015 = icmp eq i32 %186, %n.vec1013
  br i1 %cmp.n1015, label %omp_loop.header137.omp_loop.exit141_crit_edge, label %omp_loop.body139.preheader

omp_loop.body139.preheader:                       ; preds = %vector.scevcheck1007, %omp_loop.body139.lr.ph, %middle.block1008
  %omp_loop.iv143934.ph = phi i32 [ 0, %vector.scevcheck1007 ], [ 0, %omp_loop.body139.lr.ph ], [ %n.vec1013, %middle.block1008 ]
  %.ph1069 = phi double [ %.promoted932, %vector.scevcheck1007 ], [ %.promoted932, %omp_loop.body139.lr.ph ], [ %215, %middle.block1008 ]
  br label %omp_loop.body139

omp_loop.header137.omp_loop.exit141_crit_edge:    ; preds = %omp_loop.body139, %middle.block1008
  %.lcssa974 = phi double [ %215, %middle.block1008 ], [ %279, %omp_loop.body139 ]
  store double %.lcssa974, ptr %4, align 8, !tbaa !93
  br label %omp_loop.exit141

omp_loop.exit141:                                 ; preds = %omp_loop.header137.omp_loop.exit141_crit_edge, %reduce.finalize125
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num182)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  store ptr %4, ptr %red.array155, align 8
  %reduce158 = call i32 @__kmpc_reduce(ptr nonnull @1, i32 %omp_global_thread_num182, i32 1, i64 8, ptr nonnull %red.array155, ptr nonnull @.omp.reduction.func.5, ptr nonnull @.gomp_critical_user_.reduction.var)
  %cond9 = icmp eq i32 %reduce158, 1
  br i1 %cond9, label %reduce.switch.nonatomic159, label %reduce.finalize154

reduce.switch.nonatomic159:                       ; preds = %omp_loop.exit141
  %red.value.0161 = load double, ptr %loadgep_, align 8
  %red.private.value.0162 = load double, ptr %4, align 8
  %217 = fadd contract double %red.value.0161, %red.private.value.0162
  store double %217, ptr %loadgep_, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num182, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize154

reduce.finalize154:                               ; preds = %omp_loop.exit141, %reduce.switch.nonatomic159
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  %218 = load double, ptr %loadgep_, align 8, !tbaa !25
  %219 = load double, ptr %loadgep_6, align 8, !tbaa !25
  %220 = fdiv contract double %218, %219
  %221 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !89
  %222 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !91
  %223 = sub i32 %221, %222
  %224 = icmp ugt i32 %223, 2147483646
  store i32 0, ptr %p.lowerbound178, align 4
  %225 = select i1 %224, i32 -1, i32 %223
  store i32 %225, ptr %p.upperbound179, align 4
  store i32 1, ptr %p.stride180, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter177, ptr nonnull %p.lowerbound178, ptr nonnull %p.upperbound179, ptr nonnull %p.stride180, i32 1, i32 0)
  %226 = load i32, ptr %p.lowerbound178, align 4
  %227 = load i32, ptr %p.upperbound179, align 4
  %reass.sub951 = sub i32 %227, %226
  %omp_loop.cmp173936.not = icmp eq i32 %reass.sub951, -1
  br i1 %omp_loop.cmp173936.not, label %omp_loop.exit170, label %omp_loop.body168.lr.ph

omp_loop.body168.lr.ph:                           ; preds = %reduce.finalize154
  %228 = add i32 %226, 1
  %.unpack662 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack669.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  %.unpack674 = load ptr, ptr @_QMcg_dataEp, align 8, !tbaa !75
  %.unpack681.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEp, i64 0, i32 7), align 8, !tbaa !75
  %229 = add i32 %227, 1
  %230 = sub i32 %229, %226
  %min.iters.check994 = icmp ult i32 %230, 4
  br i1 %min.iters.check994, label %omp_loop.body168.preheader, label %vector.scevcheck991

vector.scevcheck991:                              ; preds = %omp_loop.body168.lr.ph
  %231 = add i32 %226, 1
  %232 = add i32 %227, 1
  %233 = icmp slt i32 %232, %231
  br i1 %233, label %omp_loop.body168.preheader, label %vector.ph995

vector.ph995:                                     ; preds = %vector.scevcheck991
  %n.vec997 = and i32 %230, -4
  %broadcast.splatinsert = insertelement <2 x double> poison, double %220, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %vector.ph995
  %index1001 = phi i32 [ 0, %vector.ph995 ], [ %index.next1006, %vector.body1000 ]
  %234 = add i32 %228, %index1001
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %235, %.unpack669.unpack.unpack
  %237 = getelementptr double, ptr %.unpack662, i64 %236
  %238 = getelementptr i8, ptr %237, i64 16
  %wide.load1002 = load <2 x double>, ptr %237, align 8, !tbaa !84
  %wide.load1003 = load <2 x double>, ptr %238, align 8, !tbaa !84
  %239 = sub nsw i64 %235, %.unpack681.unpack.unpack
  %240 = getelementptr double, ptr %.unpack674, i64 %239
  %241 = getelementptr i8, ptr %240, i64 16
  %wide.load1004 = load <2 x double>, ptr %240, align 8, !tbaa !86
  %wide.load1005 = load <2 x double>, ptr %241, align 8, !tbaa !86
  %242 = fmul contract <2 x double> %broadcast.splat, %wide.load1004
  %243 = fmul contract <2 x double> %broadcast.splat, %wide.load1005
  %244 = fadd contract <2 x double> %wide.load1002, %242
  %245 = fadd contract <2 x double> %wide.load1003, %243
  store <2 x double> %244, ptr %240, align 8, !tbaa !86
  store <2 x double> %245, ptr %241, align 8, !tbaa !86
  %index.next1006 = add nuw i32 %index1001, 4
  %246 = icmp eq i32 %index.next1006, %n.vec997
  br i1 %246, label %middle.block992, label %vector.body1000, !llvm.loop !114

middle.block992:                                  ; preds = %vector.body1000
  %cmp.n999 = icmp eq i32 %230, %n.vec997
  br i1 %cmp.n999, label %omp_loop.exit170, label %omp_loop.body168.preheader

omp_loop.body168.preheader:                       ; preds = %vector.scevcheck991, %omp_loop.body168.lr.ph, %middle.block992
  %omp_loop.iv172937.ph = phi i32 [ 0, %vector.scevcheck991 ], [ 0, %omp_loop.body168.lr.ph ], [ %n.vec997, %middle.block992 ]
  br label %omp_loop.body168

omp_loop.exit170:                                 ; preds = %omp_loop.body168, %middle.block992, %reduce.finalize154
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num182)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  %247 = add nsw i64 %138, -1
  %248 = icmp ugt i64 %138, 1
  br i1 %248, label %omp.par.region5, label %omp.par.region6

omp_loop.body168:                                 ; preds = %omp_loop.body168.preheader, %omp_loop.body168
  %omp_loop.iv172937 = phi i32 [ %omp_loop.next174, %omp_loop.body168 ], [ %omp_loop.iv172937.ph, %omp_loop.body168.preheader ]
  %249 = add i32 %228, %omp_loop.iv172937
  %250 = sext i32 %249 to i64
  %251 = sub nsw i64 %250, %.unpack669.unpack.unpack
  %252 = getelementptr double, ptr %.unpack662, i64 %251
  %253 = load double, ptr %252, align 8, !tbaa !84
  %254 = sub nsw i64 %250, %.unpack681.unpack.unpack
  %255 = getelementptr double, ptr %.unpack674, i64 %254
  %256 = load double, ptr %255, align 8, !tbaa !86
  %257 = fmul contract double %220, %256
  %258 = fadd contract double %253, %257
  store double %258, ptr %255, align 8, !tbaa !86
  %omp_loop.next174 = add nuw i32 %omp_loop.iv172937, 1
  %exitcond963.not = icmp eq i32 %omp_loop.iv172937, %reass.sub951
  br i1 %exitcond963.not, label %omp_loop.exit170, label %omp_loop.body168, !llvm.loop !115

omp_loop.body139:                                 ; preds = %omp_loop.body139.preheader, %omp_loop.body139
  %omp_loop.iv143934 = phi i32 [ %omp_loop.next145, %omp_loop.body139 ], [ %omp_loop.iv143934.ph, %omp_loop.body139.preheader ]
  %259 = phi double [ %279, %omp_loop.body139 ], [ %.ph1069, %omp_loop.body139.preheader ]
  %260 = add i32 %184, %omp_loop.iv143934
  %261 = sext i32 %260 to i64
  %262 = sub nsw i64 %261, %.unpack693.unpack.unpack
  %263 = getelementptr double, ptr %.unpack686, i64 %262
  %264 = load double, ptr %263, align 8, !tbaa !80
  %265 = sub nsw i64 %261, %.unpack705.unpack.unpack
  %266 = getelementptr double, ptr %.unpack698, i64 %265
  %267 = load double, ptr %266, align 8, !tbaa !86
  %268 = fmul contract double %176, %267
  %269 = fadd contract double %264, %268
  store double %269, ptr %263, align 8, !tbaa !80
  %270 = sub nsw i64 %261, %.unpack717.unpack.unpack
  %271 = getelementptr double, ptr %.unpack710, i64 %270
  %272 = load double, ptr %271, align 8, !tbaa !84
  %273 = sub nsw i64 %261, %.unpack729.unpack.unpack
  %274 = getelementptr double, ptr %.unpack722, i64 %273
  %275 = load double, ptr %274, align 8, !tbaa !77
  %276 = fmul contract double %176, %275
  %277 = fsub contract double %272, %276
  store double %277, ptr %271, align 8, !tbaa !84
  %278 = fmul contract double %277, %277
  %279 = fadd contract double %259, %278
  %omp_loop.next145 = add nuw i32 %omp_loop.iv143934, 1
  %exitcond962.not = icmp eq i32 %omp_loop.iv143934, %reass.sub950
  br i1 %exitcond962.not, label %omp_loop.header137.omp_loop.exit141_crit_edge, label %omp_loop.body139, !llvm.loop !116

omp_loop.body110:                                 ; preds = %omp_loop.body110.preheader, %omp_loop.body110
  %omp_loop.iv114930 = phi i32 [ %omp_loop.next116, %omp_loop.body110 ], [ %omp_loop.iv114930.ph, %omp_loop.body110.preheader ]
  %280 = phi double [ %290, %omp_loop.body110 ], [ %.ph1070, %omp_loop.body110.preheader ]
  %281 = add i32 %154, %omp_loop.iv114930
  %282 = sext i32 %281 to i64
  %283 = sub nsw i64 %282, %.unpack753.unpack.unpack
  %284 = getelementptr double, ptr %.unpack746, i64 %283
  %285 = load double, ptr %284, align 8, !tbaa !86
  %286 = sub nsw i64 %282, %.unpack765.unpack.unpack
  %287 = getelementptr double, ptr %.unpack758, i64 %286
  %288 = load double, ptr %287, align 8, !tbaa !77
  %289 = fmul contract double %285, %288
  %290 = fadd contract double %280, %289
  %omp_loop.next116 = add nuw i32 %omp_loop.iv114930, 1
  %exitcond961.not = icmp eq i32 %omp_loop.iv114930, %reass.sub949
  br i1 %exitcond961.not, label %omp_loop.header108.omp_loop.exit112_crit_edge, label %omp_loop.body110, !llvm.loop !117

omp_loop.body88:                                  ; preds = %omp_loop.body88.lr.ph, %omp.wsloop.region99
  %omp_loop.iv92927 = phi i32 [ 0, %omp_loop.body88.lr.ph ], [ %omp_loop.next94, %omp.wsloop.region99 ]
  %291 = add i32 %omp_loop.iv92927, %145
  %292 = add i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = sub nsw i64 %293, %.unpack777.unpack.unpack
  %295 = getelementptr i64, ptr %.unpack770, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !104
  %297 = add i32 %291, 2
  %298 = sext i32 %297 to i64
  %299 = sub nsw i64 %298, %.unpack777.unpack.unpack
  %300 = getelementptr i64, ptr %.unpack770, i64 %299
  %301 = load i64, ptr %300, align 8, !tbaa !104
  %302 = sub i64 %301, %296
  %303 = icmp sgt i64 %302, 0
  br i1 %303, label %omp.wsloop.region98, label %omp.wsloop.region99

omp.wsloop.region99:                              ; preds = %omp.wsloop.region98, %omp_loop.body88
  %.1.lcssa = phi double [ 0.000000e+00, %omp_loop.body88 ], [ %319, %omp.wsloop.region98 ]
  %304 = sub nsw i64 %293, %.unpack789.unpack.unpack
  %305 = getelementptr double, ptr %.unpack782, i64 %304
  store double %.1.lcssa, ptr %305, align 8, !tbaa !77
  %omp_loop.next94 = add nuw i32 %omp_loop.iv92927, 1
  %exitcond960.not = icmp eq i32 %omp_loop.iv92927, %reass.sub948
  br i1 %exitcond960.not, label %omp_loop.exit90, label %omp_loop.body88

omp.wsloop.region98:                              ; preds = %omp_loop.body88, %omp.wsloop.region98
  %306 = phi i64 [ %321, %omp.wsloop.region98 ], [ %302, %omp_loop.body88 ]
  %307 = phi i64 [ %320, %omp.wsloop.region98 ], [ %296, %omp_loop.body88 ]
  %.1925 = phi double [ %319, %omp.wsloop.region98 ], [ 0.000000e+00, %omp_loop.body88 ]
  %308 = sub nsw i64 %307, %.unpack801.unpack.unpack
  %309 = getelementptr double, ptr %.unpack794, i64 %308
  %310 = load double, ptr %309, align 8, !tbaa !106
  %311 = sub nsw i64 %307, %.unpack825.unpack.unpack
  %312 = getelementptr i32, ptr %.unpack818, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !108
  %314 = sext i32 %313 to i64
  %315 = sub nsw i64 %314, %.unpack813.unpack.unpack
  %316 = getelementptr double, ptr %.unpack806, i64 %315
  %317 = load double, ptr %316, align 8, !tbaa !86
  %318 = fmul contract double %310, %317
  %319 = fadd contract double %.1925, %318
  %320 = add i64 %307, 1
  %321 = add nsw i64 %306, -1
  %322 = icmp ugt i64 %306, 1
  br i1 %322, label %omp.wsloop.region98, label %omp.wsloop.region99

omp.master.region:                                ; preds = %omp.par.region5
  %323 = load double, ptr %loadgep_, align 8, !tbaa !25
  store double %323, ptr %loadgep_6, align 8, !tbaa !25
  store double 0.000000e+00, ptr %loadgep_4, align 8, !tbaa !25
  store double 0.000000e+00, ptr %loadgep_, align 8, !tbaa !25
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num182)
  br label %omp_region.end

omp_loop.body14:                                  ; preds = %omp_loop.body14.preheader, %omp_loop.body14
  %omp_loop.iv18924 = phi i32 [ %omp_loop.next20, %omp_loop.body14 ], [ %omp_loop.iv18924.ph, %omp_loop.body14.preheader ]
  %324 = phi double [ %331, %omp_loop.body14 ], [ %.ph1076, %omp_loop.body14.preheader ]
  %325 = add i32 %41, %omp_loop.iv18924
  %326 = sext i32 %325 to i64
  %327 = sub nsw i64 %326, %.unpack837.unpack.unpack
  %328 = getelementptr double, ptr %.unpack830, i64 %327
  %329 = load double, ptr %328, align 8, !tbaa !84
  %330 = fmul contract double %329, %329
  %331 = fadd contract double %324, %330
  %omp_loop.next20 = add nuw i32 %omp_loop.iv18924, 1
  %exitcond959.not = icmp eq i32 %omp_loop.iv18924, %reass.sub947
  br i1 %exitcond959.not, label %omp_loop.header12.omp_loop.exit16_crit_edge, label %omp_loop.body14, !llvm.loop !118

omp_loop.body:                                    ; preds = %omp_loop.body.preheader, %omp_loop.body
  %omp_loop.iv922 = phi i32 [ %omp_loop.next, %omp_loop.body ], [ %omp_loop.iv922.ph, %omp_loop.body.preheader ]
  %332 = add i32 %10, %omp_loop.iv922
  %333 = sext i32 %332 to i64
  %334 = sub nsw i64 %333, %.unpack849.unpack.unpack
  %335 = getelementptr double, ptr %.unpack842, i64 %334
  store double 0.000000e+00, ptr %335, align 8, !tbaa !77
  %336 = sub nsw i64 %333, %.unpack861.unpack.unpack
  %337 = getelementptr double, ptr %.unpack854, i64 %336
  store double 0.000000e+00, ptr %337, align 8, !tbaa !80
  %338 = sub nsw i64 %333, %.unpack873.unpack.unpack
  %339 = getelementptr double, ptr %.unpack866, i64 %338
  %340 = load double, ptr %339, align 8, !tbaa !82
  %341 = sub nsw i64 %333, %.unpack885.unpack.unpack
  %342 = getelementptr double, ptr %.unpack878, i64 %341
  store double %340, ptr %342, align 8, !tbaa !84
  %343 = sub nsw i64 %333, %.unpack909.unpack.unpack
  %344 = getelementptr double, ptr %.unpack902, i64 %343
  store double %340, ptr %344, align 8, !tbaa !86
  %omp_loop.next = add nuw i32 %omp_loop.iv922, 1
  %exitcond.not = icmp eq i32 %omp_loop.iv922, %reass.sub
  br i1 %exitcond.not, label %omp_loop.exit, label %omp_loop.body, !llvm.loop !119
}

define void @makea_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture writeonly %2, ptr nocapture writeonly %3, ptr nocapture %4, ptr nocapture readonly %5, ptr nocapture readonly %6, ptr nocapture readnone %7, ptr nocapture readnone %8, ptr nocapture %9, ptr nocapture %10, ptr nocapture %11, ptr nocapture %12, ptr nocapture %13) local_unnamed_addr #0 {
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %18 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMtinfoEihigh, i64 4, ptr nonnull @_QMtinfoEihigh.cache)
  %19 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMtinfoEilow, i64 4, ptr nonnull @_QMtinfoEilow.cache)
  %20 = alloca [27 x i32], align 16
  %21 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMtinfoEmyid, i64 4, ptr nonnull @_QMtinfoEmyid.cache)
  %22 = alloca i32, align 4
  %23 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMtinfoEnum_threads, i64 4, ptr nonnull @_QMtinfoEnum_threads.cache)
  %24 = alloca i32, align 4
  %25 = alloca [27 x double], align 8
  %26 = load i32, ptr %0, align 4, !tbaa !120
  br label %27

27:                                               ; preds = %27, %14
  %28 = phi i32 [ %29, %27 ], [ 1, %14 ]
  %29 = shl i32 %28, 1
  %30 = icmp slt i32 %29, %26
  br i1 %30, label %27, label %31

31:                                               ; preds = %27
  store i32 %29, ptr %22, align 4, !tbaa !126
  store i32 1, ptr %23, align 4, !tbaa !126
  %32 = tail call i32 @omp_get_num_threads_()
  store i32 %32, ptr %23, align 4, !tbaa !126
  store i32 0, ptr %21, align 4, !tbaa !126
  %33 = tail call i32 @omp_get_thread_num_()
  store i32 %33, ptr %21, align 4, !tbaa !126
  %34 = load i32, ptr %23, align 4, !tbaa !126
  %35 = icmp sgt i32 %34, 1024
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX662788a244b7c503085d082e53a6b65e, i64 62, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 733)
  %40 = load i32, ptr %23, align 4, !tbaa !126
  %41 = tail call i1 @_FortranAioOutputInteger32(ptr %39, i32 %40)
  %42 = tail call i1 @_FortranAioOutputInteger32(ptr %39, i32 1024)
  %43 = tail call i32 @_FortranAioEndIoStatement(ptr %39)
  br label %44

44:                                               ; preds = %38, %36
  store i32 1024, ptr %23, align 4, !tbaa !126
  %.pre = load i32, ptr %21, align 4, !tbaa !126
  br label %45

45:                                               ; preds = %44, %31
  %46 = phi i32 [ %.pre, %44 ], [ %33, %31 ]
  %47 = phi i32 [ 1024, %44 ], [ %34, %31 ]
  %48 = load i32, ptr %0, align 4, !tbaa !120
  %49 = add i32 %48, -1
  %50 = add i32 %49, %47
  %51 = sdiv i32 %50, %47
  %52 = mul i32 %46, %51
  %53 = add i32 %52, 1
  store i32 %53, ptr %19, align 4, !tbaa !126
  %54 = add i32 %52, %51
  store i32 %54, ptr %18, align 4, !tbaa !126
  %55 = load i32, ptr %0, align 4, !tbaa !120
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %54, i32 %55)
  store i32 %spec.store.select, ptr %18, align 4
  %invariant.gep25 = getelementptr i8, ptr %9, i64 -4
  %56 = icmp sgt i32 %spec.store.select, 0
  br i1 %56, label %.lr.ph28, label %._crit_edge

.lr.ph28:                                         ; preds = %45
  %57 = getelementptr inbounds i8, ptr %25, i64 208
  %58 = getelementptr inbounds i8, ptr %20, i64 104
  %invariant.gep = getelementptr i8, ptr %10, i64 -108
  %invariant.gep23 = getelementptr i8, ptr %11, i64 -216
  %narrow = add nuw i32 %spec.store.select, 1
  %59 = zext i32 %narrow to i64
  %60 = getelementptr inbounds i8, ptr %20, i64 16
  %61 = getelementptr inbounds i8, ptr %25, i64 32
  %62 = getelementptr inbounds i8, ptr %20, i64 32
  %63 = getelementptr inbounds i8, ptr %20, i64 48
  %64 = getelementptr inbounds i8, ptr %25, i64 64
  %65 = getelementptr inbounds i8, ptr %25, i64 96
  %66 = getelementptr inbounds i8, ptr %20, i64 64
  %67 = getelementptr inbounds i8, ptr %20, i64 80
  %68 = getelementptr inbounds i8, ptr %25, i64 128
  %69 = getelementptr inbounds i8, ptr %25, i64 160
  %70 = getelementptr inbounds i8, ptr %20, i64 96
  %71 = getelementptr inbounds i8, ptr %25, i64 192
  %72 = getelementptr inbounds i8, ptr %20, i64 100
  %73 = getelementptr inbounds i8, ptr %25, i64 200
  %74 = getelementptr inbounds i8, ptr %20, i64 104
  %75 = getelementptr inbounds i8, ptr %25, i64 208
  br label %76

76:                                               ; preds = %.lr.ph28, %.loopexit
  %indvars.iv35 = phi i64 [ 1, %.lr.ph28 ], [ %indvars.iv.next36, %.loopexit ]
  store i32 26, ptr %24, align 4, !tbaa !126
  call void @sprnvc_(ptr nonnull %0, ptr nonnull %24, ptr nonnull %22, ptr nonnull %25, ptr nonnull %20)
  %77 = load i32, ptr %19, align 4, !tbaa !126
  %78 = sext i32 %77 to i64
  %.not = icmp slt i64 %indvars.iv35, %78
  br i1 %.not, label %.loopexit, label %.outer.i

.outer.i:                                         ; preds = %76, %.thread.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next9.i, %.thread.i ], [ 1, %76 ]
  %79 = phi i1 [ false, %.thread.i ], [ true, %76 ]
  br label %80

80:                                               ; preds = %86, %.outer.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %86 ], [ %indvars.iv.ph.i, %.outer.i ]
  %81 = add nsw i64 %indvars.iv.i, -1
  %82 = getelementptr i32, ptr %20, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !127
  %84 = zext i32 %83 to i64
  %85 = icmp eq i64 %indvars.iv35, %84
  br i1 %85, label %.thread.i, label %86

86:                                               ; preds = %80
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 27
  br i1 %exitcond.not.i, label %._crit_edge.i, label %80

.thread.i:                                        ; preds = %80
  %87 = getelementptr double, ptr %25, i64 %81
  store double 5.000000e-01, ptr %87, align 8, !tbaa !133
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not10.i = icmp eq i64 %indvars.iv.next9.i, 27
  br i1 %exitcond.not10.i, label %.lr.ph, label %.outer.i

._crit_edge.i:                                    ; preds = %86
  br i1 %79, label %._crit_edge.thread.i, label %.lr.ph

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  store i32 27, ptr %24, align 4, !tbaa !135
  store double 5.000000e-01, ptr %57, align 8, !tbaa !133
  %88 = trunc nuw nsw i64 %indvars.iv35 to i32
  store i32 %88, ptr %58, align 8, !tbaa !127
  br label %.lr.ph

.lr.ph:                                           ; preds = %.thread.i, %._crit_edge.thread.i, %._crit_edge.i
  %89 = phi i32 [ 26, %._crit_edge.i ], [ 27, %._crit_edge.thread.i ], [ 26, %.thread.i ]
  %gep26 = getelementptr i32, ptr %invariant.gep25, i64 %indvars.iv35
  store i32 %89, ptr %gep26, align 4, !tbaa !137
  %90 = mul nuw nsw i64 %indvars.iv35, 27
  %gep = getelementptr i32, ptr %invariant.gep, i64 %90
  %gep24 = getelementptr double, ptr %invariant.gep23, i64 %90
  %narrow39 = add nuw nsw i32 %89, 1
  %wide.load = load <4 x i32>, ptr %20, align 16, !tbaa !126
  %wide.load50 = load <4 x i32>, ptr %60, align 16, !tbaa !126
  %91 = getelementptr i8, ptr %gep, i64 16
  store <4 x i32> %wide.load, ptr %gep, align 4, !tbaa !139
  store <4 x i32> %wide.load50, ptr %91, align 4, !tbaa !139
  %wide.load51 = load <4 x double>, ptr %25, align 8, !tbaa !126
  %wide.load52 = load <4 x double>, ptr %61, align 8, !tbaa !126
  %92 = getelementptr i8, ptr %gep24, i64 32
  store <4 x double> %wide.load51, ptr %gep24, align 8, !tbaa !141
  store <4 x double> %wide.load52, ptr %92, align 8, !tbaa !141
  %wide.load.1 = load <4 x i32>, ptr %62, align 16, !tbaa !126
  %wide.load50.1 = load <4 x i32>, ptr %63, align 16, !tbaa !126
  %93 = getelementptr i8, ptr %gep, i64 32
  %94 = getelementptr i8, ptr %gep, i64 48
  store <4 x i32> %wide.load.1, ptr %93, align 4, !tbaa !139
  store <4 x i32> %wide.load50.1, ptr %94, align 4, !tbaa !139
  %wide.load51.1 = load <4 x double>, ptr %64, align 8, !tbaa !126
  %wide.load52.1 = load <4 x double>, ptr %65, align 8, !tbaa !126
  %95 = getelementptr i8, ptr %gep24, i64 64
  %96 = getelementptr i8, ptr %gep24, i64 96
  store <4 x double> %wide.load51.1, ptr %95, align 8, !tbaa !141
  store <4 x double> %wide.load52.1, ptr %96, align 8, !tbaa !141
  %wide.load.2 = load <4 x i32>, ptr %66, align 16, !tbaa !126
  %wide.load50.2 = load <4 x i32>, ptr %67, align 16, !tbaa !126
  %97 = getelementptr i8, ptr %gep, i64 64
  %98 = getelementptr i8, ptr %gep, i64 80
  store <4 x i32> %wide.load.2, ptr %97, align 4, !tbaa !139
  store <4 x i32> %wide.load50.2, ptr %98, align 4, !tbaa !139
  %wide.load51.2 = load <4 x double>, ptr %68, align 8, !tbaa !126
  %wide.load52.2 = load <4 x double>, ptr %69, align 8, !tbaa !126
  %99 = getelementptr i8, ptr %gep24, i64 128
  %100 = getelementptr i8, ptr %gep24, i64 160
  store <4 x double> %wide.load51.2, ptr %99, align 8, !tbaa !141
  store <4 x double> %wide.load52.2, ptr %100, align 8, !tbaa !141
  %101 = load i32, ptr %70, align 16, !tbaa !126
  %102 = getelementptr i8, ptr %gep, i64 96
  store i32 %101, ptr %102, align 4, !tbaa !139
  %103 = load double, ptr %71, align 8, !tbaa !126
  %104 = getelementptr i8, ptr %gep24, i64 192
  store double %103, ptr %104, align 8, !tbaa !141
  %exitcond.not = icmp eq i32 %narrow39, 26
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph.1, !llvm.loop !143

scalar.ph.1:                                      ; preds = %.lr.ph
  %105 = load i32, ptr %72, align 4, !tbaa !126
  %106 = getelementptr i8, ptr %gep, i64 100
  store i32 %105, ptr %106, align 4, !tbaa !139
  %107 = load double, ptr %73, align 8, !tbaa !126
  %108 = getelementptr i8, ptr %gep24, i64 200
  store double %107, ptr %108, align 8, !tbaa !141
  %exitcond.not.1 = icmp eq i32 %narrow39, 27
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph.2, !llvm.loop !143

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %109 = load i32, ptr %74, align 8, !tbaa !126
  %110 = getelementptr i8, ptr %gep, i64 104
  store i32 %109, ptr %110, align 4, !tbaa !139
  %111 = load double, ptr %75, align 8, !tbaa !126
  %112 = getelementptr i8, ptr %gep24, i64 208
  store double %111, ptr %112, align 8, !tbaa !141
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %scalar.ph.1, %scalar.ph.2, %76
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, %59
  br i1 %exitcond38.not, label %._crit_edge, label %76

._crit_edge:                                      ; preds = %.loopexit, %45
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num4)
  %113 = load i64, ptr %1, align 8, !tbaa !144
  %114 = getelementptr i32, ptr %13, i64 %113
  store i32 26, ptr %17, align 4, !tbaa !126
  store double 1.000000e-01, ptr %16, align 8, !tbaa !126
  store double 1.500000e+03, ptr %15, align 8, !tbaa !126
  call void @sparse_(ptr %2, ptr %3, ptr %4, ptr nonnull %0, ptr nonnull %1, ptr nonnull %17, ptr %9, ptr %10, ptr %11, ptr %5, ptr %6, ptr %12, ptr %13, ptr %114, ptr nonnull %16, ptr nonnull %15)
  ret void
}

define void @sparse_(ptr nocapture writeonly %0, ptr nocapture writeonly %1, ptr nocapture %2, ptr nocapture readonly %3, ptr nocapture readonly %4, ptr nocapture readonly %5, ptr nocapture readonly %6, ptr nocapture readonly %7, ptr nocapture readonly %8, ptr nocapture readonly %9, ptr nocapture readonly %10, ptr nocapture %11, ptr nocapture %12, ptr nocapture %13, ptr nocapture readonly %14, ptr nocapture readonly %15) local_unnamed_addr #0 {
  %p.lastiter30 = alloca i32, align 4
  %p.lowerbound31 = alloca i32, align 4
  %p.upperbound32 = alloca i32, align 4
  %p.stride33 = alloca i32, align 4
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %omp_global_thread_num36 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %17 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num36, ptr nonnull @_QMtinfoEihigh, i64 4, ptr nonnull @_QMtinfoEihigh.cache)
  %18 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num36, ptr nonnull @_QMtinfoEilow, i64 4, ptr nonnull @_QMtinfoEilow.cache)
  %19 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num36, ptr nonnull @_QMtinfoEmyid, i64 4, ptr nonnull @_QMtinfoEmyid.cache)
  %20 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num36, ptr nonnull @_QMtinfoEnum_threads, i64 4, ptr nonnull @_QMtinfoEnum_threads.cache)
  %21 = load i32, ptr %5, align 4, !tbaa !146
  %22 = add i32 %21, 1
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = zext nneg i32 %23 to i64
  %25 = load i32, ptr %10, align 4, !tbaa !152
  %26 = load i32, ptr %9, align 4, !tbaa !154
  %27 = sub i32 %25, %26
  %28 = load i32, ptr %18, align 4, !tbaa !156
  %29 = add i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = load i32, ptr %17, align 4, !tbaa !156
  %32 = add i32 %31, 1
  %33 = sext i32 %32 to i64
  %reass.sub = sub nsw i64 %33, %30
  %invariant.gep = getelementptr i8, ptr %2, i64 -8
  %34 = icmp sgt i64 %reass.sub, -1
  br i1 %34, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %16
  %35 = add nuw nsw i64 %reass.sub, 1
  %36 = add nsw i64 %33, 1
  %37 = sub nsw i64 %36, %30
  %min.iters.check = icmp ult i64 %37, 18
  br i1 %min.iters.check, label %.lr.ph.preheader573, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %38 = sub nsw i64 %33, %30
  %39 = trunc i64 %38 to i32
  %40 = add i32 %29, %39
  %41 = icmp slt i32 %40, %29
  %42 = icmp ugt i64 %38, 4294967295
  %43 = or i1 %41, %42
  br i1 %43, label %.lr.ph.preheader573, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %37, -4
  %ind.end = sub nsw i64 %35, %n.vec
  %.cast = trunc i64 %n.vec to i32
  %ind.end403 = add i32 %29, %.cast
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %.cast405 = trunc i64 %index to i32
  %offset.idx = add i32 %29, %.cast405
  %44 = sext i32 %offset.idx to i64
  %45 = getelementptr i64, ptr %invariant.gep, i64 %44
  %46 = getelementptr i8, ptr %45, i64 16
  store <2 x i64> zeroinitializer, ptr %45, align 8, !tbaa !157
  store <2 x i64> zeroinitializer, ptr %46, align 8, !tbaa !157
  %index.next = add nuw i64 %index, 4
  %47 = icmp eq i64 %index.next, %n.vec
  br i1 %47, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %37, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader573

.lr.ph.preheader573:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.ph574 = phi i64 [ %35, %vector.scevcheck ], [ %35, %.lr.ph.preheader ], [ %ind.end, %middle.block ]
  %.ph575 = phi i32 [ %29, %vector.scevcheck ], [ %29, %.lr.ph.preheader ], [ %ind.end403, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader573, %.lr.ph
  %48 = phi i64 [ %52, %.lr.ph ], [ %.ph574, %.lr.ph.preheader573 ]
  %49 = phi i32 [ %51, %.lr.ph ], [ %.ph575, %.lr.ph.preheader573 ]
  %50 = sext i32 %49 to i64
  %gep = getelementptr i64, ptr %invariant.gep, i64 %50
  store i64 0, ptr %gep, align 8, !tbaa !157
  %51 = add i32 %49, 1
  %52 = add nsw i64 %48, -1
  %53 = icmp ugt i64 %48, 1
  br i1 %53, label %.lr.ph, label %._crit_edge, !llvm.loop !160

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %16
  %54 = load i32, ptr %3, align 4, !tbaa !161
  %invariant.gep211 = getelementptr i8, ptr %7, i64 -4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %._crit_edge
  %narrow = add nuw i32 %54, 1
  %56 = zext i32 %narrow to i64
  br label %57

57:                                               ; preds = %.lr.ph214, %._crit_edge208
  %indvars.iv = phi i64 [ 1, %.lr.ph214 ], [ %indvars.iv.next, %._crit_edge208 ]
  %58 = add nsw i64 %indvars.iv, -1
  %59 = getelementptr i32, ptr %6, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !163
  %61 = sext i32 %60 to i64
  %62 = icmp sgt i32 %60, 0
  br i1 %62, label %.lr.ph207, label %._crit_edge208

.lr.ph207:                                        ; preds = %57
  %63 = mul nuw nsw i64 %58, %24
  %gep212 = getelementptr i32, ptr %invariant.gep211, i64 %63
  br label %64

64:                                               ; preds = %.lr.ph207, %77
  %65 = phi i64 [ 1, %.lr.ph207 ], [ %78, %77 ]
  %gep210 = getelementptr i32, ptr %gep212, i64 %65
  %66 = load i32, ptr %gep210, align 4, !tbaa !165
  %67 = load i32, ptr %18, align 4, !tbaa !156
  %68 = icmp sge i32 %66, %67
  %69 = load i32, ptr %17, align 4, !tbaa !156
  %70 = icmp sle i32 %66, %69
  %71 = and i1 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = add i32 %66, 1
  %74 = sext i32 %73 to i64
  %gep205 = getelementptr i64, ptr %invariant.gep, i64 %74
  %75 = load i64, ptr %gep205, align 8, !tbaa !157
  %76 = add i64 %75, %61
  store i64 %76, ptr %gep205, align 8, !tbaa !157
  br label %77

77:                                               ; preds = %72, %64
  %78 = add nuw nsw i64 %65, 1
  %exitcond.not = icmp eq i64 %65, %61
  br i1 %exitcond.not, label %._crit_edge208, label %64

._crit_edge208:                                   ; preds = %77, %57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond341.not = icmp eq i64 %indvars.iv.next, %56
  br i1 %exitcond341.not, label %._crit_edge215, label %57

._crit_edge215:                                   ; preds = %._crit_edge208, %._crit_edge
  %79 = load i32, ptr %19, align 4, !tbaa !156
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %._crit_edge215
  store i64 1, ptr %2, align 8, !tbaa !157
  br label %82

82:                                               ; preds = %81, %._crit_edge215
  %.0158 = phi i64 [ 1, %81 ], [ %30, %._crit_edge215 ]
  %83 = trunc nsw i64 %.0158 to i32
  %84 = sub nsw i64 %33, %.0158
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %.lr.ph221.preheader, label %._crit_edge222

.lr.ph221.preheader:                              ; preds = %82
  %gep219.phi.trans.insert = getelementptr i64, ptr %invariant.gep, i64 %.0158
  %.pre = load i64, ptr %gep219.phi.trans.insert, align 8, !tbaa !157
  br label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %.lr.ph221
  %86 = phi i64 [ %91, %.lr.ph221 ], [ %.pre, %.lr.ph221.preheader ]
  %87 = phi i64 [ %92, %.lr.ph221 ], [ %84, %.lr.ph221.preheader ]
  %.in = phi i32 [ %88, %.lr.ph221 ], [ %83, %.lr.ph221.preheader ]
  %88 = add i32 %.in, 1
  %89 = sext i32 %88 to i64
  %gep217 = getelementptr i64, ptr %invariant.gep, i64 %89
  %90 = load i64, ptr %gep217, align 8, !tbaa !157
  %91 = add i64 %86, %90
  store i64 %91, ptr %gep217, align 8, !tbaa !157
  %92 = add nsw i64 %87, -1
  %93 = icmp ugt i64 %87, 1
  br i1 %93, label %.lr.ph221, label %._crit_edge222

._crit_edge222:                                   ; preds = %.lr.ph221, %82
  %94 = load i32, ptr %19, align 4, !tbaa !156
  %95 = load i32, ptr %20, align 4, !tbaa !156
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %._crit_edge222
  %98 = getelementptr i64, ptr %2, i64 %33
  %99 = getelementptr i8, ptr %98, i64 -8
  %100 = load i64, ptr %99, align 8, !tbaa !157
  %101 = sext i32 %94 to i64
  %102 = getelementptr i64, ptr @_QMtinfoElast_n, i64 %101
  store i64 %100, ptr %102, align 8, !tbaa !167
  br label %103

103:                                              ; preds = %97, %._crit_edge222
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %104 = load i32, ptr %19, align 4, !tbaa !156
  %105 = load i32, ptr %20, align 4, !tbaa !156
  %106 = icmp slt i32 %104, %105
  %107 = add i32 %104, -1
  %108 = icmp sgt i32 %107, -1
  %or.cond = and i1 %106, %108
  br i1 %or.cond, label %.lr.ph225.preheader, label %.thread

.lr.ph225.preheader:                              ; preds = %103
  %109 = zext i32 %104 to i64
  %110 = add nuw nsw i64 %109, 1
  %111 = icmp ne i32 %104, 0
  %umin406.neg = sext i1 %111 to i64
  %112 = add nsw i64 %110, %umin406.neg
  %min.iters.check409 = icmp ult i64 %112, 4
  br i1 %min.iters.check409, label %.lr.ph225.preheader568, label %vector.ph410

vector.ph410:                                     ; preds = %.lr.ph225.preheader
  %n.vec412 = and i64 %112, -4
  %ind.end414 = sub nsw i64 %109, %n.vec412
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph410
  %index418 = phi i64 [ 0, %vector.ph410 ], [ %index.next421, %vector.body417 ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph410 ], [ %115, %vector.body417 ]
  %vec.phi419 = phi <2 x i64> [ zeroinitializer, %vector.ph410 ], [ %116, %vector.body417 ]
  %113 = getelementptr i64, ptr @_QMtinfoElast_n, i64 %index418
  %114 = getelementptr i8, ptr %113, i64 16
  %wide.load = load <2 x i64>, ptr %113, align 8, !tbaa !167
  %wide.load420 = load <2 x i64>, ptr %114, align 8, !tbaa !167
  %115 = add <2 x i64> %wide.load, %vec.phi
  %116 = add <2 x i64> %wide.load420, %vec.phi419
  %index.next421 = add nuw i64 %index418, 4
  %117 = icmp eq i64 %index.next421, %n.vec412
  br i1 %117, label %middle.block407, label %vector.body417, !llvm.loop !170

middle.block407:                                  ; preds = %vector.body417
  %bin.rdx = add <2 x i64> %116, %115
  %118 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n416 = icmp eq i64 %112, %n.vec412
  br i1 %cmp.n416, label %._crit_edge226, label %.lr.ph225.preheader568

.lr.ph225.preheader568:                           ; preds = %.lr.ph225.preheader, %middle.block407
  %indvars.iv342.ph = phi i64 [ 0, %.lr.ph225.preheader ], [ %n.vec412, %middle.block407 ]
  %.ph569 = phi i64 [ %109, %.lr.ph225.preheader ], [ %ind.end414, %middle.block407 ]
  %.0152223.ph = phi i64 [ 0, %.lr.ph225.preheader ], [ %118, %middle.block407 ]
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader568, %.lr.ph225
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %.lr.ph225 ], [ %indvars.iv342.ph, %.lr.ph225.preheader568 ]
  %119 = phi i64 [ %123, %.lr.ph225 ], [ %.ph569, %.lr.ph225.preheader568 ]
  %.0152223 = phi i64 [ %122, %.lr.ph225 ], [ %.0152223.ph, %.lr.ph225.preheader568 ]
  %120 = getelementptr i64, ptr @_QMtinfoElast_n, i64 %indvars.iv342
  %121 = load i64, ptr %120, align 8, !tbaa !167
  %122 = add i64 %121, %.0152223
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1
  %123 = add nsw i64 %119, -1
  %124 = icmp ugt i64 %119, 1
  br i1 %124, label %.lr.ph225, label %._crit_edge226, !llvm.loop !171

._crit_edge226:                                   ; preds = %.lr.ph225, %middle.block407
  %.lcssa401 = phi i64 [ %118, %middle.block407 ], [ %122, %.lr.ph225 ]
  %125 = icmp sgt i64 %.lcssa401, 0
  br i1 %125, label %126, label %.thread

126:                                              ; preds = %._crit_edge226
  %127 = add nsw i64 %33, 1
  %128 = sub nsw i64 %127, %.0158
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %.lr.ph230.preheader, label %.thread

.lr.ph230.preheader:                              ; preds = %126
  %min.iters.check425 = icmp ult i64 %128, 6
  br i1 %min.iters.check425, label %.lr.ph230.preheader565, label %vector.scevcheck422

vector.scevcheck422:                              ; preds = %.lr.ph230.preheader
  %130 = trunc i64 %84 to i32
  %131 = add i32 %83, %130
  %132 = icmp slt i32 %131, %83
  %133 = icmp ugt i64 %84, 4294967295
  %134 = or i1 %132, %133
  br i1 %134, label %.lr.ph230.preheader565, label %vector.ph426

vector.ph426:                                     ; preds = %vector.scevcheck422
  %n.vec428 = and i64 %128, 9223372036854775804
  %ind.end429 = and i64 %128, 3
  %.cast431 = trunc i64 %n.vec428 to i32
  %ind.end432 = add i32 %83, %.cast431
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.lcssa401, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph426
  %index436 = phi i64 [ 0, %vector.ph426 ], [ %index.next441, %vector.body435 ]
  %offset.idx438 = add i64 %.0158, %index436
  %sext = shl i64 %offset.idx438, 32
  %135 = ashr exact i64 %sext, 32
  %136 = getelementptr i64, ptr %invariant.gep, i64 %135
  %137 = getelementptr i8, ptr %136, i64 16
  %wide.load439 = load <2 x i64>, ptr %136, align 8, !tbaa !157
  %wide.load440 = load <2 x i64>, ptr %137, align 8, !tbaa !157
  %138 = add <2 x i64> %wide.load439, %broadcast.splat
  %139 = add <2 x i64> %wide.load440, %broadcast.splat
  store <2 x i64> %138, ptr %136, align 8, !tbaa !157
  store <2 x i64> %139, ptr %137, align 8, !tbaa !157
  %index.next441 = add nuw i64 %index436, 4
  %140 = icmp eq i64 %index.next441, %n.vec428
  br i1 %140, label %middle.block423, label %vector.body435, !llvm.loop !172

middle.block423:                                  ; preds = %vector.body435
  %cmp.n434 = icmp eq i64 %128, %n.vec428
  br i1 %cmp.n434, label %.thread, label %.lr.ph230.preheader565

.lr.ph230.preheader565:                           ; preds = %vector.scevcheck422, %.lr.ph230.preheader, %middle.block423
  %.ph566 = phi i64 [ %128, %vector.scevcheck422 ], [ %128, %.lr.ph230.preheader ], [ %ind.end429, %middle.block423 ]
  %.ph567 = phi i32 [ %83, %vector.scevcheck422 ], [ %83, %.lr.ph230.preheader ], [ %ind.end432, %middle.block423 ]
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.preheader565, %.lr.ph230
  %141 = phi i64 [ %147, %.lr.ph230 ], [ %.ph566, %.lr.ph230.preheader565 ]
  %142 = phi i32 [ %146, %.lr.ph230 ], [ %.ph567, %.lr.ph230.preheader565 ]
  %143 = sext i32 %142 to i64
  %gep228 = getelementptr i64, ptr %invariant.gep, i64 %143
  %144 = load i64, ptr %gep228, align 8, !tbaa !157
  %145 = add i64 %144, %.lcssa401
  store i64 %145, ptr %gep228, align 8, !tbaa !157
  %146 = add i32 %142, 1
  %147 = add nsw i64 %141, -1
  %148 = icmp ugt i64 %141, 1
  br i1 %148, label %.lr.ph230, label %.thread, !llvm.loop !173

.thread:                                          ; preds = %.lr.ph230, %middle.block423, %126, %103, %._crit_edge226
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %149 = add i32 %27, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr i64, ptr %2, i64 %150
  %152 = getelementptr i8, ptr %151, i64 -8
  %153 = load i64, ptr %152, align 8, !tbaa !157
  %154 = add i64 %153, -1
  %155 = load i64, ptr %4, align 8, !tbaa !174
  %156 = icmp sgt i64 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %.thread
  %158 = tail call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num36)
  %.not = icmp eq i32 %158, 0
  br i1 %.not, label %omp_region.end, label %omp.master.region

omp.master.region:                                ; preds = %157
  %159 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 857)
  %160 = tail call i1 @_FortranAioOutputAscii(ptr %159, ptr nonnull @_QQclX8aa47eafef3dd9fef2a70f0e43e486f4, i64 44)
  %161 = tail call i32 @_FortranAioEndIoStatement(ptr %159)
  %162 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 858)
  %163 = tail call i1 @_FortranAioOutputAscii(ptr %162, ptr nonnull @_QQclX6E7A612C206E7A6D6178203D20, i64 13)
  %164 = tail call i1 @_FortranAioOutputInteger64(ptr %162, i64 %154)
  %165 = load i64, ptr %4, align 8, !tbaa !174
  %166 = tail call i1 @_FortranAioOutputInteger64(ptr %162, i64 %165)
  %167 = tail call i32 @_FortranAioEndIoStatement(ptr %162)
  tail call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num36)
  br label %omp_region.end

omp_region.end:                                   ; preds = %157, %omp.master.region
  %168 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

169:                                              ; preds = %.thread
  %170 = load i32, ptr %18, align 4, !tbaa !156
  %171 = sext i32 %170 to i64
  %172 = load i32, ptr %17, align 4, !tbaa !156
  %173 = sext i32 %172 to i64
  %reass.sub316 = sub nsw i64 %173, %171
  %174 = icmp sgt i64 %reass.sub316, -1
  br i1 %174, label %.lr.ph237.preheader, label %._crit_edge238

.lr.ph237.preheader:                              ; preds = %169
  %175 = add nuw nsw i64 %reass.sub316, 1
  br label %.lr.ph237

.lr.ph237:                                        ; preds = %.lr.ph237.preheader, %._crit_edge233
  %176 = phi i64 [ %203, %._crit_edge233 ], [ %175, %.lr.ph237.preheader ]
  %177 = phi i32 [ %182, %._crit_edge233 ], [ %170, %.lr.ph237.preheader ]
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, -1
  %180 = getelementptr i64, ptr %2, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !157
  %182 = add i32 %177, 1
  %183 = sext i32 %182 to i64
  %gep235 = getelementptr i64, ptr %invariant.gep, i64 %183
  %184 = load i64, ptr %gep235, align 8, !tbaa !157
  %185 = sub i64 %184, %181
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %.lr.ph232.preheader, label %._crit_edge233

.lr.ph232.preheader:                              ; preds = %.lr.ph237
  %187 = sub i64 %184, %181
  %min.iters.check445 = icmp ult i64 %187, 8
  br i1 %min.iters.check445, label %.lr.ph232.preheader562, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph232.preheader
  %n.vec448 = and i64 %187, -8
  %ind.end449 = sub i64 %185, %n.vec448
  %ind.end451 = add i64 %181, %n.vec448
  br label %vector.body454

vector.body454:                                   ; preds = %vector.body454, %vector.ph446
  %index455 = phi i64 [ 0, %vector.ph446 ], [ %index.next457, %vector.body454 ]
  %offset.idx456 = add i64 %181, %index455
  %188 = add nsw i64 %offset.idx456, -1
  %189 = getelementptr double, ptr %11, i64 %188
  %190 = getelementptr i8, ptr %189, i64 32
  store <4 x double> zeroinitializer, ptr %189, align 8, !tbaa !176
  store <4 x double> zeroinitializer, ptr %190, align 8, !tbaa !176
  %191 = getelementptr i32, ptr %12, i64 %188
  %192 = getelementptr i8, ptr %191, i64 16
  store <4 x i32> zeroinitializer, ptr %191, align 4, !tbaa !178
  store <4 x i32> zeroinitializer, ptr %192, align 4, !tbaa !178
  %index.next457 = add nuw i64 %index455, 8
  %193 = icmp eq i64 %index.next457, %n.vec448
  br i1 %193, label %middle.block443, label %vector.body454, !llvm.loop !180

middle.block443:                                  ; preds = %vector.body454
  %cmp.n453 = icmp eq i64 %187, %n.vec448
  br i1 %cmp.n453, label %._crit_edge233, label %.lr.ph232.preheader562

.lr.ph232.preheader562:                           ; preds = %.lr.ph232.preheader, %middle.block443
  %.ph563 = phi i64 [ %185, %.lr.ph232.preheader ], [ %ind.end449, %middle.block443 ]
  %.ph564 = phi i64 [ %181, %.lr.ph232.preheader ], [ %ind.end451, %middle.block443 ]
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232.preheader562, %.lr.ph232
  %194 = phi i64 [ %200, %.lr.ph232 ], [ %.ph563, %.lr.ph232.preheader562 ]
  %195 = phi i64 [ %199, %.lr.ph232 ], [ %.ph564, %.lr.ph232.preheader562 ]
  %196 = add nsw i64 %195, -1
  %197 = getelementptr double, ptr %11, i64 %196
  store double 0.000000e+00, ptr %197, align 8, !tbaa !176
  %198 = getelementptr i32, ptr %12, i64 %196
  store i32 0, ptr %198, align 4, !tbaa !178
  %199 = add i64 %195, 1
  %200 = add nsw i64 %194, -1
  %201 = icmp ugt i64 %194, 1
  br i1 %201, label %.lr.ph232, label %._crit_edge233, !llvm.loop !181

._crit_edge233:                                   ; preds = %.lr.ph232, %middle.block443, %.lr.ph237
  %202 = getelementptr i32, ptr %13, i64 %179
  store i32 0, ptr %202, align 4, !tbaa !182
  %203 = add nsw i64 %176, -1
  %204 = icmp sgt i64 %176, 1
  br i1 %204, label %.lr.ph237, label %._crit_edge238

._crit_edge238:                                   ; preds = %._crit_edge233, %169
  %205 = load double, ptr %14, align 8, !tbaa !184
  %206 = load i32, ptr %3, align 4, !tbaa !161
  %207 = sitofp i32 %206 to double
  %208 = fdiv contract double 1.000000e+00, %207
  %209 = tail call contract double @llvm.pow.f64(double %205, double %208)
  %210 = icmp sgt i32 %206, 0
  br i1 %210, label %.lr.ph283, label %._crit_edge284

.lr.ph283:                                        ; preds = %._crit_edge238
  %211 = add nuw i32 %206, 1
  %wide.trip.count = zext i32 %211 to i64
  br label %212

212:                                              ; preds = %.lr.ph283, %._crit_edge271
  %indvars.iv349 = phi i64 [ 1, %.lr.ph283 ], [ %indvars.iv.next350, %._crit_edge271 ]
  %.0149280 = phi double [ 1.000000e+00, %.lr.ph283 ], [ %305, %._crit_edge271 ]
  %213 = add nsw i64 %indvars.iv349, -1
  %214 = getelementptr i32, ptr %6, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !163
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %.lr.ph270, label %._crit_edge271

.lr.ph270:                                        ; preds = %212
  %217 = zext nneg i32 %215 to i64
  %218 = mul nuw nsw i64 %213, %24
  %219 = add nsw i64 %218, -1
  br label %220

220:                                              ; preds = %..loopexit_crit_edge.split.us.us, %.lr.ph270
  %.0153268.us = phi i64 [ 1, %.lr.ph270 ], [ %244, %..loopexit_crit_edge.split.us.us ]
  %221 = add nsw i64 %219, %.0153268.us
  %222 = getelementptr i32, ptr %7, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !165
  %224 = load i32, ptr %18, align 4, !tbaa !156
  %225 = icmp sge i32 %223, %224
  %226 = load i32, ptr %17, align 4, !tbaa !156
  %227 = icmp sle i32 %223, %226
  %.not185.us = and i1 %225, %227
  br i1 %.not185.us, label %.lr.ph257.us, label %..loopexit_crit_edge.split.us.us

.lr.ph257.us:                                     ; preds = %220
  %228 = getelementptr double, ptr %8, i64 %221
  %229 = load double, ptr %228, align 8, !tbaa !186
  %230 = fmul contract double %.0149280, %229
  %231 = zext i32 %223 to i64
  %232 = icmp eq i64 %indvars.iv349, %231
  %233 = sext i32 %223 to i64
  %234 = add nsw i64 %233, -1
  %235 = getelementptr i64, ptr %2, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !157
  %237 = add i32 %223, 1
  %238 = sext i32 %237 to i64
  %gep253.us = getelementptr i64, ptr %invariant.gep, i64 %238
  %239 = load i64, ptr %gep253.us, align 8, !tbaa !157
  %240 = sub i64 %239, %236
  %241 = icmp sgt i64 %240, 0
  %242 = getelementptr i32, ptr %13, i64 %234
  %243 = add i64 %239, -2
  br i1 %241, label %.lr.ph257.split.us.us, label %._crit_edge247

..loopexit_crit_edge.split.us.us:                 ; preds = %281, %220
  %244 = add nuw nsw i64 %.0153268.us, 1
  %exitcond348.not = icmp eq i64 %.0153268.us, %217
  br i1 %exitcond348.not, label %._crit_edge271, label %220

.lr.ph257.split.us.us:                            ; preds = %.lr.ph257.us, %281
  %.2254.us.us = phi i64 [ %285, %281 ], [ 1, %.lr.ph257.us ]
  %245 = add nsw i64 %219, %.2254.us.us
  %246 = getelementptr i32, ptr %7, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !165
  %248 = getelementptr double, ptr %8, i64 %245
  %249 = load double, ptr %248, align 8, !tbaa !186
  %250 = fmul contract double %230, %249
  %251 = icmp eq i32 %247, %223
  %252 = and i1 %232, %251
  br i1 %252, label %253, label %.lr.ph244.us.us

253:                                              ; preds = %.lr.ph257.split.us.us
  %254 = fadd contract double %205, %250
  %255 = load double, ptr %15, align 8, !tbaa !188
  %256 = fsub contract double %254, %255
  br label %.lr.ph244.us.us

.lr.ph244.us.us:                                  ; preds = %253, %.lr.ph257.split.us.us
  %.0.us.us = phi double [ %256, %253 ], [ %250, %.lr.ph257.split.us.us ]
  br label %257

257:                                              ; preds = %266, %.lr.ph244.us.us
  %.0150242.us.us = phi i64 [ %240, %.lr.ph244.us.us ], [ %267, %266 ]
  %.0156241.us.us = phi i64 [ %236, %.lr.ph244.us.us ], [ %268, %266 ]
  %258 = add nsw i64 %.0156241.us.us, -1
  %259 = getelementptr i32, ptr %12, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !178
  %261 = icmp sgt i32 %260, %247
  br i1 %261, label %275, label %262

262:                                              ; preds = %257
  %263 = icmp eq i32 %260, 0
  br i1 %263, label %273, label %264

264:                                              ; preds = %262
  %265 = icmp eq i32 %260, %247
  br i1 %265, label %270, label %266

266:                                              ; preds = %264
  %267 = add nsw i64 %.0150242.us.us, -1
  %268 = add i64 %.0156241.us.us, 1
  %269 = icmp sgt i64 %.0150242.us.us, 1
  br i1 %269, label %257, label %._crit_edge247

270:                                              ; preds = %264
  %271 = load i32, ptr %242, align 4, !tbaa !182
  %272 = add i32 %271, 1
  store i32 %272, ptr %242, align 4, !tbaa !182
  br label %281

273:                                              ; preds = %262
  %274 = getelementptr i32, ptr %12, i64 %258
  store i32 %247, ptr %274, align 4, !tbaa !178
  br label %281

275:                                              ; preds = %257
  %276 = getelementptr i32, ptr %12, i64 %258
  %277 = xor i64 %.0156241.us.us, -1
  %278 = add i64 %239, %277
  %279 = icmp sgt i64 %278, 0
  br i1 %279, label %.lr.ph250.us.us, label %._crit_edge251.us.us

._crit_edge251.us.us:                             ; preds = %297, %275
  store i32 %247, ptr %276, align 4, !tbaa !178
  %280 = getelementptr double, ptr %11, i64 %258
  store double 0.000000e+00, ptr %280, align 8, !tbaa !176
  br label %281

281:                                              ; preds = %._crit_edge251.us.us, %273, %270
  %282 = getelementptr double, ptr %11, i64 %258
  %283 = load double, ptr %282, align 8, !tbaa !176
  %284 = fadd contract double %.0.us.us, %283
  store double %284, ptr %282, align 8, !tbaa !176
  %285 = add nuw nsw i64 %.2254.us.us, 1
  %exitcond347.not = icmp eq i64 %.2254.us.us, %217
  br i1 %exitcond347.not, label %..loopexit_crit_edge.split.us.us, label %.lr.ph257.split.us.us

.lr.ph250.us.us:                                  ; preds = %275, %297
  %286 = phi i64 [ %298, %297 ], [ %278, %275 ]
  %287 = phi i64 [ %288, %297 ], [ %243, %275 ]
  %288 = add nsw i64 %287, -1
  %289 = getelementptr i32, ptr %12, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !178
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %.lr.ph250.us.us
  %293 = getelementptr double, ptr %11, i64 %288
  %294 = load double, ptr %293, align 8, !tbaa !176
  %295 = getelementptr double, ptr %11, i64 %287
  store double %294, ptr %295, align 8, !tbaa !176
  %296 = getelementptr i32, ptr %12, i64 %287
  store i32 %290, ptr %296, align 4, !tbaa !178
  br label %297

297:                                              ; preds = %292, %.lr.ph250.us.us
  %298 = add nsw i64 %286, -1
  %299 = icmp sgt i64 %286, 1
  br i1 %299, label %.lr.ph250.us.us, label %._crit_edge251.us.us

._crit_edge247:                                   ; preds = %.lr.ph257.us, %266
  %.0160277338 = trunc i64 %indvars.iv349 to i32
  %300 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 926)
  %301 = tail call i1 @_FortranAioOutputAscii(ptr %300, ptr nonnull @_QQclX696E7465726E616C206572726F7220696E207370617273653A20693D, i64 28)
  %302 = tail call i1 @_FortranAioOutputInteger32(ptr %300, i32 %.0160277338)
  %303 = tail call i32 @_FortranAioEndIoStatement(ptr %300)
  %304 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

._crit_edge271:                                   ; preds = %..loopexit_crit_edge.split.us.us, %212
  %305 = fmul contract double %209, %.0149280
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1
  %exitcond352.not = icmp eq i64 %indvars.iv.next350, %wide.trip.count
  br i1 %exitcond352.not, label %._crit_edge284, label %212

._crit_edge284:                                   ; preds = %._crit_edge271, %._crit_edge238
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %306 = load i32, ptr %18, align 4, !tbaa !156
  %307 = add i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = load i32, ptr %17, align 4, !tbaa !156
  %310 = sext i32 %309 to i64
  %reass.sub317 = sub nsw i64 %310, %308
  %invariant.gep285 = getelementptr i8, ptr %13, i64 -4
  %311 = icmp sgt i64 %reass.sub317, -1
  br i1 %311, label %.lr.ph290.preheader, label %._crit_edge291

.lr.ph290.preheader:                              ; preds = %._crit_edge284
  %312 = add nuw nsw i64 %reass.sub317, 1
  %.phi.trans.insert360 = sext i32 %306 to i64
  %gep288.phi.trans.insert = getelementptr i32, ptr %invariant.gep285, i64 %.phi.trans.insert360
  %.pre361 = load i32, ptr %gep288.phi.trans.insert, align 4, !tbaa !182
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %313 = phi i32 [ %318, %.lr.ph290 ], [ %.pre361, %.lr.ph290.preheader ]
  %314 = phi i64 [ %320, %.lr.ph290 ], [ %312, %.lr.ph290.preheader ]
  %315 = phi i32 [ %319, %.lr.ph290 ], [ %307, %.lr.ph290.preheader ]
  %316 = sext i32 %315 to i64
  %gep286 = getelementptr i32, ptr %invariant.gep285, i64 %316
  %317 = load i32, ptr %gep286, align 4, !tbaa !182
  %318 = add i32 %313, %317
  store i32 %318, ptr %gep286, align 4, !tbaa !182
  %319 = add i32 %315, 1
  %320 = add nsw i64 %314, -1
  %321 = icmp ugt i64 %314, 1
  br i1 %321, label %.lr.ph290, label %._crit_edge291

._crit_edge291:                                   ; preds = %.lr.ph290, %._crit_edge284
  %322 = load i32, ptr %19, align 4, !tbaa !156
  %323 = load i32, ptr %20, align 4, !tbaa !156
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %334

325:                                              ; preds = %._crit_edge291
  %326 = load i32, ptr %17, align 4, !tbaa !156
  %327 = sext i32 %326 to i64
  %328 = getelementptr i32, ptr %13, i64 %327
  %329 = getelementptr i8, ptr %328, i64 -4
  %330 = load i32, ptr %329, align 4, !tbaa !182
  %331 = sext i32 %330 to i64
  %332 = sext i32 %322 to i64
  %333 = getelementptr i64, ptr @_QMtinfoElast_n, i64 %332
  store i64 %331, ptr %333, align 8, !tbaa !167
  br label %334

334:                                              ; preds = %325, %._crit_edge291
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %335 = load i32, ptr %19, align 4, !tbaa !156
  %336 = load i32, ptr %20, align 4, !tbaa !156
  %337 = icmp slt i32 %335, %336
  %338 = add i32 %335, -1
  %339 = icmp sgt i32 %338, -1
  %or.cond540 = and i1 %337, %339
  br i1 %or.cond540, label %.lr.ph294.preheader, label %omp_loop.preheader

.lr.ph294.preheader:                              ; preds = %334
  %340 = zext i32 %335 to i64
  %341 = add nuw nsw i64 %340, 1
  %342 = icmp ne i32 %335, 0
  %umin458.neg = sext i1 %342 to i64
  %343 = add nsw i64 %341, %umin458.neg
  %min.iters.check461 = icmp ult i64 %343, 4
  br i1 %min.iters.check461, label %.lr.ph294.preheader546, label %vector.ph462

vector.ph462:                                     ; preds = %.lr.ph294.preheader
  %n.vec464 = and i64 %343, -4
  %ind.end466 = sub nsw i64 %340, %n.vec464
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph462
  %index470 = phi i64 [ 0, %vector.ph462 ], [ %index.next475, %vector.body469 ]
  %vec.phi471 = phi <2 x i64> [ zeroinitializer, %vector.ph462 ], [ %346, %vector.body469 ]
  %vec.phi472 = phi <2 x i64> [ zeroinitializer, %vector.ph462 ], [ %347, %vector.body469 ]
  %344 = getelementptr i64, ptr @_QMtinfoElast_n, i64 %index470
  %345 = getelementptr i8, ptr %344, i64 16
  %wide.load473 = load <2 x i64>, ptr %344, align 8, !tbaa !167
  %wide.load474 = load <2 x i64>, ptr %345, align 8, !tbaa !167
  %346 = add <2 x i64> %wide.load473, %vec.phi471
  %347 = add <2 x i64> %wide.load474, %vec.phi472
  %index.next475 = add nuw i64 %index470, 4
  %348 = icmp eq i64 %index.next475, %n.vec464
  br i1 %348, label %middle.block459, label %vector.body469, !llvm.loop !190

middle.block459:                                  ; preds = %vector.body469
  %bin.rdx476 = add <2 x i64> %347, %346
  %349 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx476)
  %cmp.n468 = icmp eq i64 %343, %n.vec464
  br i1 %cmp.n468, label %._crit_edge295, label %.lr.ph294.preheader546

.lr.ph294.preheader546:                           ; preds = %.lr.ph294.preheader, %middle.block459
  %indvars.iv353.ph = phi i64 [ 0, %.lr.ph294.preheader ], [ %n.vec464, %middle.block459 ]
  %.ph547 = phi i64 [ %340, %.lr.ph294.preheader ], [ %ind.end466, %middle.block459 ]
  %.3292.ph = phi i64 [ 0, %.lr.ph294.preheader ], [ %349, %middle.block459 ]
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader546, %.lr.ph294
  %indvars.iv353 = phi i64 [ %indvars.iv.next354, %.lr.ph294 ], [ %indvars.iv353.ph, %.lr.ph294.preheader546 ]
  %350 = phi i64 [ %354, %.lr.ph294 ], [ %.ph547, %.lr.ph294.preheader546 ]
  %.3292 = phi i64 [ %353, %.lr.ph294 ], [ %.3292.ph, %.lr.ph294.preheader546 ]
  %351 = getelementptr i64, ptr @_QMtinfoElast_n, i64 %indvars.iv353
  %352 = load i64, ptr %351, align 8, !tbaa !167
  %353 = add i64 %352, %.3292
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1
  %354 = add nsw i64 %350, -1
  %355 = icmp ugt i64 %350, 1
  br i1 %355, label %.lr.ph294, label %._crit_edge295, !llvm.loop !191

._crit_edge295:                                   ; preds = %.lr.ph294, %middle.block459
  %.lcssa = phi i64 [ %349, %middle.block459 ], [ %353, %.lr.ph294 ]
  %356 = icmp sgt i64 %.lcssa, 0
  br i1 %356, label %357, label %omp_loop.preheader

357:                                              ; preds = %._crit_edge295
  %358 = load i32, ptr %18, align 4, !tbaa !156
  %359 = sext i32 %358 to i64
  %360 = load i32, ptr %17, align 4, !tbaa !156
  %361 = sext i32 %360 to i64
  %reass.sub318 = sub nsw i64 %361, %359
  %362 = icmp sgt i64 %reass.sub318, -1
  br i1 %362, label %.lr.ph300, label %omp_loop.preheader

.lr.ph300:                                        ; preds = %357
  %363 = add nuw nsw i64 %reass.sub318, 1
  %364 = trunc i64 %.lcssa to i32
  %365 = add nsw i64 %361, 1
  %366 = sub nsw i64 %365, %359
  %min.iters.check483 = icmp ult i64 %366, 12
  br i1 %min.iters.check483, label %scalar.ph482.preheader, label %vector.scevcheck478

vector.scevcheck478:                              ; preds = %.lr.ph300
  %367 = sub nsw i64 %361, %359
  %368 = trunc i64 %367 to i32
  %369 = add i32 %358, %368
  %370 = icmp slt i32 %369, %358
  %371 = icmp ugt i64 %367, 4294967295
  %372 = or i1 %370, %371
  br i1 %372, label %scalar.ph482.preheader, label %vector.ph484

vector.ph484:                                     ; preds = %vector.scevcheck478
  %n.vec486 = and i64 %366, -8
  %ind.end487 = sub nsw i64 %363, %n.vec486
  %.cast489 = trunc i64 %n.vec486 to i32
  %ind.end490 = add i32 %358, %.cast489
  %broadcast.splatinsert499 = insertelement <4 x i32> poison, i32 %364, i64 0
  %broadcast.splat500 = shufflevector <4 x i32> %broadcast.splatinsert499, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph484
  %index494 = phi i64 [ 0, %vector.ph484 ], [ %index.next501, %vector.body493 ]
  %.cast495 = trunc i64 %index494 to i32
  %offset.idx496 = add i32 %358, %.cast495
  %373 = sext i32 %offset.idx496 to i64
  %374 = getelementptr i32, ptr %invariant.gep285, i64 %373
  %375 = getelementptr i8, ptr %374, i64 16
  %wide.load497 = load <4 x i32>, ptr %374, align 4, !tbaa !182
  %wide.load498 = load <4 x i32>, ptr %375, align 4, !tbaa !182
  %376 = add <4 x i32> %wide.load497, %broadcast.splat500
  %377 = add <4 x i32> %wide.load498, %broadcast.splat500
  store <4 x i32> %376, ptr %374, align 4, !tbaa !182
  store <4 x i32> %377, ptr %375, align 4, !tbaa !182
  %index.next501 = add nuw i64 %index494, 8
  %378 = icmp eq i64 %index.next501, %n.vec486
  br i1 %378, label %middle.block481, label %vector.body493, !llvm.loop !192

middle.block481:                                  ; preds = %vector.body493
  %cmp.n492 = icmp eq i64 %366, %n.vec486
  br i1 %cmp.n492, label %omp_loop.preheader, label %scalar.ph482.preheader

scalar.ph482.preheader:                           ; preds = %vector.scevcheck478, %.lr.ph300, %middle.block481
  %.ph544 = phi i64 [ %363, %vector.scevcheck478 ], [ %363, %.lr.ph300 ], [ %ind.end487, %middle.block481 ]
  %.ph545 = phi i32 [ %358, %vector.scevcheck478 ], [ %358, %.lr.ph300 ], [ %ind.end490, %middle.block481 ]
  br label %scalar.ph482

scalar.ph482:                                     ; preds = %scalar.ph482.preheader, %scalar.ph482
  %379 = phi i64 [ %385, %scalar.ph482 ], [ %.ph544, %scalar.ph482.preheader ]
  %380 = phi i32 [ %384, %scalar.ph482 ], [ %.ph545, %scalar.ph482.preheader ]
  %381 = sext i32 %380 to i64
  %gep298 = getelementptr i32, ptr %invariant.gep285, i64 %381
  %382 = load i32, ptr %gep298, align 4, !tbaa !182
  %383 = add i32 %382, %364
  store i32 %383, ptr %gep298, align 4, !tbaa !182
  %384 = add i32 %380, 1
  %385 = add nsw i64 %379, -1
  %386 = icmp ugt i64 %379, 1
  br i1 %386, label %scalar.ph482, label %omp_loop.preheader, !llvm.loop !193

omp_loop.preheader:                               ; preds = %scalar.ph482, %middle.block481, %357, %334, %._crit_edge295
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %387 = icmp ugt i32 %27, 2147483646
  store i32 0, ptr %p.lowerbound, align 4
  %388 = select i1 %387, i32 -1, i32 %27
  store i32 %388, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num36, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %389 = load i32, ptr %p.lowerbound, align 4
  %390 = load i32, ptr %p.upperbound, align 4
  %reass.sub319 = sub i32 %390, %389
  %omp_loop.cmp308.not = icmp eq i32 %reass.sub319, -1
  br i1 %omp_loop.cmp308.not, label %omp_loop.exit, label %omp_loop.body

omp_loop.body:                                    ; preds = %omp_loop.preheader, %omp.wsloop.region14
  %omp_loop.iv309 = phi i32 [ %omp_loop.next, %omp.wsloop.region14 ], [ 0, %omp_loop.preheader ]
  %391 = add i32 %omp_loop.iv309, %389
  %392 = add i32 %391, 1
  %393 = icmp sgt i32 %392, 1
  br i1 %393, label %omp.wsloop.region9, label %omp.wsloop.region11

omp.wsloop.region14:                              ; preds = %omp.wsloop.region13.preheader542, %omp.wsloop.region13.1, %omp.wsloop.region13.2, %middle.block502, %omp.wsloop.region11
  %omp_loop.next = add nuw i32 %omp_loop.iv309, 1
  %exitcond358.not = icmp eq i32 %omp_loop.iv309, %reass.sub319
  br i1 %exitcond358.not, label %omp_loop.exit, label %omp_loop.body

omp.wsloop.region13.1:                            ; preds = %omp.wsloop.region13.preheader542
  %394 = getelementptr double, ptr %11, i64 %.1154301.ph
  %395 = load double, ptr %394, align 8, !tbaa !176
  %396 = getelementptr double, ptr %0, i64 %.ph543
  store double %395, ptr %396, align 8, !tbaa !194
  %397 = getelementptr i32, ptr %12, i64 %.1154301.ph
  %398 = load i32, ptr %397, align 4, !tbaa !178
  %399 = getelementptr i32, ptr %1, i64 %.ph543
  store i32 %398, ptr %399, align 4, !tbaa !196
  %400 = add nsw i64 %.ph, -3
  %401 = icmp ult i64 %400, -2
  br i1 %401, label %omp.wsloop.region13.2, label %omp.wsloop.region14, !llvm.loop !198

omp.wsloop.region13.2:                            ; preds = %omp.wsloop.region13.1
  %402 = add i64 %.1154301.ph, 1
  %403 = getelementptr double, ptr %11, i64 %402
  %404 = load double, ptr %403, align 8, !tbaa !176
  %405 = add i64 %.ph543, 1
  %406 = getelementptr double, ptr %0, i64 %405
  store double %404, ptr %406, align 8, !tbaa !194
  %407 = getelementptr i32, ptr %12, i64 %402
  %408 = load i32, ptr %407, align 4, !tbaa !178
  %409 = getelementptr i32, ptr %1, i64 %405
  store i32 %408, ptr %409, align 4, !tbaa !196
  br label %omp.wsloop.region14

omp.wsloop.region11:                              ; preds = %omp_loop.body, %omp.wsloop.region9
  %.1159 = phi i64 [ %445, %omp.wsloop.region9 ], [ 1, %omp_loop.body ]
  %410 = add i32 %391, 2
  %411 = sext i32 %410 to i64
  %gep307 = getelementptr i64, ptr %invariant.gep, i64 %411
  %412 = load i64, ptr %gep307, align 8, !tbaa !157
  %413 = sext i32 %392 to i64
  %414 = add nsw i64 %413, -1
  %415 = getelementptr i32, ptr %13, i64 %414
  %416 = load i32, ptr %415, align 4, !tbaa !182
  %417 = xor i32 %416, -1
  %418 = sext i32 %417 to i64
  %reass.sub320 = sub i64 %412, %.1159
  %419 = add i64 %reass.sub320, 1
  %420 = add i64 %419, %418
  %421 = icmp sgt i64 %420, 0
  br i1 %421, label %omp.wsloop.region13.preheader, label %omp.wsloop.region14

omp.wsloop.region13.preheader:                    ; preds = %omp.wsloop.region11
  %422 = getelementptr i64, ptr %2, i64 %414
  %423 = load i64, ptr %422, align 8, !tbaa !157
  %min.iters.check504 = icmp ult i64 %420, 4
  br i1 %min.iters.check504, label %omp.wsloop.region13.preheader542, label %vector.ph505

vector.ph505:                                     ; preds = %omp.wsloop.region13.preheader
  %n.vec507 = and i64 %420, 9223372036854775804
  %ind.end508 = and i64 %420, 3
  %ind.end510 = add i64 %.1159, %n.vec507
  %ind.end512 = add i64 %423, %n.vec507
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph505
  %index516 = phi i64 [ 0, %vector.ph505 ], [ %index.next521, %vector.body515 ]
  %offset.idx517 = add i64 %.1159, %index516
  %offset.idx518 = add i64 %423, %index516
  %424 = add nsw i64 %offset.idx518, -1
  %425 = getelementptr double, ptr %11, i64 %424
  %wide.load519 = load <4 x double>, ptr %425, align 8, !tbaa !176
  %426 = add nsw i64 %offset.idx517, -1
  %427 = getelementptr double, ptr %0, i64 %426
  store <4 x double> %wide.load519, ptr %427, align 8, !tbaa !194
  %428 = getelementptr i32, ptr %12, i64 %424
  %wide.load520 = load <4 x i32>, ptr %428, align 4, !tbaa !178
  %429 = getelementptr i32, ptr %1, i64 %426
  store <4 x i32> %wide.load520, ptr %429, align 4, !tbaa !196
  %index.next521 = add nuw i64 %index516, 4
  %430 = icmp eq i64 %index.next521, %n.vec507
  br i1 %430, label %middle.block502, label %vector.body515, !llvm.loop !199

middle.block502:                                  ; preds = %vector.body515
  %cmp.n514 = icmp eq i64 %420, %n.vec507
  br i1 %cmp.n514, label %omp.wsloop.region14, label %omp.wsloop.region13.preheader542

omp.wsloop.region13.preheader542:                 ; preds = %omp.wsloop.region13.preheader, %middle.block502
  %.ph = phi i64 [ %420, %omp.wsloop.region13.preheader ], [ %ind.end508, %middle.block502 ]
  %.ph543 = phi i64 [ %.1159, %omp.wsloop.region13.preheader ], [ %ind.end510, %middle.block502 ]
  %.1154301.ph = phi i64 [ %423, %omp.wsloop.region13.preheader ], [ %ind.end512, %middle.block502 ]
  %431 = add nsw i64 %.1154301.ph, -1
  %432 = getelementptr double, ptr %11, i64 %431
  %433 = load double, ptr %432, align 8, !tbaa !176
  %434 = add nsw i64 %.ph543, -1
  %435 = getelementptr double, ptr %0, i64 %434
  store double %433, ptr %435, align 8, !tbaa !194
  %436 = getelementptr i32, ptr %12, i64 %431
  %437 = load i32, ptr %436, align 4, !tbaa !178
  %438 = getelementptr i32, ptr %1, i64 %434
  store i32 %437, ptr %438, align 4, !tbaa !196
  %439 = icmp ugt i64 %.ph, 1
  br i1 %439, label %omp.wsloop.region13.1, label %omp.wsloop.region14, !llvm.loop !198

omp.wsloop.region9:                               ; preds = %omp_loop.body
  %440 = zext nneg i32 %392 to i64
  %gep303 = getelementptr i64, ptr %invariant.gep, i64 %440
  %441 = load i64, ptr %gep303, align 8, !tbaa !157
  %442 = zext nneg i32 %391 to i64
  %gep305 = getelementptr i32, ptr %invariant.gep285, i64 %442
  %443 = load i32, ptr %gep305, align 4, !tbaa !182
  %444 = sext i32 %443 to i64
  %445 = sub i64 %441, %444
  br label %omp.wsloop.region11

omp_loop.exit:                                    ; preds = %omp.wsloop.region14, %omp_loop.preheader
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num36)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num36)
  %446 = icmp ugt i32 %27, 2147483645
  store i32 0, ptr %p.lowerbound31, align 4
  %447 = select i1 %446, i32 -1, i32 %27
  store i32 %447, ptr %p.upperbound32, align 4
  store i32 1, ptr %p.stride33, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num36, i32 34, ptr nonnull %p.lastiter30, ptr nonnull %p.lowerbound31, ptr nonnull %p.upperbound32, ptr nonnull %p.stride33, i32 1, i32 0)
  %448 = load i32, ptr %p.lowerbound31, align 4
  %449 = load i32, ptr %p.upperbound32, align 4
  %reass.sub321 = sub i32 %449, %448
  %omp_loop.cmp26314.not = icmp eq i32 %reass.sub321, -1
  br i1 %omp_loop.cmp26314.not, label %omp_loop.exit23, label %omp_loop.body21.preheader

omp_loop.body21.preheader:                        ; preds = %omp_loop.exit
  %450 = add i32 %449, 1
  %451 = sub i32 %450, %448
  %min.iters.check525 = icmp ult i32 %451, 8
  br i1 %min.iters.check525, label %omp_loop.body21.preheader541, label %vector.scevcheck522

vector.scevcheck522:                              ; preds = %omp_loop.body21.preheader
  %452 = add i32 %448, 2
  %453 = add i32 %449, 2
  %454 = icmp slt i32 %453, %452
  %455 = add i32 %448, 1
  %456 = add i32 %449, 1
  %457 = icmp slt i32 %456, %455
  %458 = or i1 %454, %457
  br i1 %458, label %omp_loop.body21.preheader541, label %vector.ph526

vector.ph526:                                     ; preds = %vector.scevcheck522
  %n.vec528 = and i32 %451, -8
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph526
  %index532 = phi i32 [ 0, %vector.ph526 ], [ %index.next537, %vector.body531 ]
  %459 = add i32 %index532, %448
  %460 = add i32 %459, 2
  %461 = sext i32 %460 to i64
  %462 = getelementptr i64, ptr %invariant.gep, i64 %461
  %463 = getelementptr i8, ptr %462, i64 32
  %wide.load533 = load <4 x i64>, ptr %462, align 8, !tbaa !157
  %wide.load534 = load <4 x i64>, ptr %463, align 8, !tbaa !157
  %464 = add i32 %459, 1
  %465 = sext i32 %464 to i64
  %466 = getelementptr i32, ptr %invariant.gep285, i64 %465
  %467 = getelementptr i8, ptr %466, i64 16
  %wide.load535 = load <4 x i32>, ptr %466, align 4, !tbaa !182
  %wide.load536 = load <4 x i32>, ptr %467, align 4, !tbaa !182
  %468 = sext <4 x i32> %wide.load535 to <4 x i64>
  %469 = sext <4 x i32> %wide.load536 to <4 x i64>
  %470 = sub <4 x i64> %wide.load533, %468
  %471 = sub <4 x i64> %wide.load534, %469
  store <4 x i64> %470, ptr %462, align 8, !tbaa !157
  store <4 x i64> %471, ptr %463, align 8, !tbaa !157
  %index.next537 = add nuw i32 %index532, 8
  %472 = icmp eq i32 %index.next537, %n.vec528
  br i1 %472, label %middle.block523, label %vector.body531, !llvm.loop !200

middle.block523:                                  ; preds = %vector.body531
  %cmp.n530 = icmp eq i32 %451, %n.vec528
  br i1 %cmp.n530, label %omp_loop.exit23, label %omp_loop.body21.preheader541

omp_loop.body21.preheader541:                     ; preds = %vector.scevcheck522, %omp_loop.body21.preheader, %middle.block523
  %omp_loop.iv25315.ph = phi i32 [ 0, %vector.scevcheck522 ], [ 0, %omp_loop.body21.preheader ], [ %n.vec528, %middle.block523 ]
  br label %omp_loop.body21

omp_loop.body21:                                  ; preds = %omp_loop.body21.preheader541, %omp_loop.body21
  %omp_loop.iv25315 = phi i32 [ %omp_loop.next27, %omp_loop.body21 ], [ %omp_loop.iv25315.ph, %omp_loop.body21.preheader541 ]
  %473 = add i32 %omp_loop.iv25315, %448
  %474 = add i32 %473, 2
  %475 = sext i32 %474 to i64
  %gep311 = getelementptr i64, ptr %invariant.gep, i64 %475
  %476 = load i64, ptr %gep311, align 8, !tbaa !157
  %477 = add i32 %473, 1
  %478 = sext i32 %477 to i64
  %gep313 = getelementptr i32, ptr %invariant.gep285, i64 %478
  %479 = load i32, ptr %gep313, align 4, !tbaa !182
  %480 = sext i32 %479 to i64
  %481 = sub i64 %476, %480
  store i64 %481, ptr %gep311, align 8, !tbaa !157
  %omp_loop.next27 = add nuw i32 %omp_loop.iv25315, 1
  %exitcond359.not = icmp eq i32 %omp_loop.iv25315, %reass.sub321
  br i1 %exitcond359.not, label %omp_loop.exit23, label %omp_loop.body21, !llvm.loop !201

omp_loop.exit23:                                  ; preds = %omp_loop.body21, %middle.block523, %omp_loop.exit
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num36)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num36)
  ret void
}

define void @sprnvc_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr nocapture writeonly %3, ptr nocapture %4) local_unnamed_addr #0 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %6 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMcg_dataEamult, i64 8, ptr nonnull @_QMcg_dataEamult.cache)
  %7 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMcg_dataEtran, i64 8, ptr nonnull @_QMcg_dataEtran.cache)
  %8 = load i32, ptr %1, align 4, !tbaa !202
  %.not2230 = icmp sgt i32 %8, 0
  br i1 %.not2230, label %.lr.ph23.lr.ph, label %.outer._crit_edge

.lr.ph23.lr.ph:                                   ; preds = %5
  %invariant.gep = getelementptr i8, ptr %4, i64 -4
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23.lr.ph, %.outer
  %indvars.iv43 = phi i64 [ 0, %.lr.ph23.lr.ph ], [ %indvars.iv.next44, %.outer ]
  %indvars.iv = phi i32 [ 1, %.lr.ph23.lr.ph ], [ %indvars.iv.next, %.outer ]
  %.not46 = icmp eq i64 %indvars.iv43, 0
  br i1 %.not46, label %.lr.ph23.split, label %.lr.ph23.split.us

.lr.ph23.split.us:                                ; preds = %.lr.ph23, %.backedge.us
  %9 = tail call contract double @randlc_(ptr %7, ptr %6)
  %10 = tail call contract double @randlc_(ptr %7, ptr %6)
  %11 = load i32, ptr %2, align 4, !tbaa !208
  %12 = sitofp i32 %11 to double
  %13 = fmul contract double %10, %12
  %14 = fptosi double %13 to i32
  %15 = add i32 %14, 1
  %16 = load i32, ptr %0, align 4, !tbaa !214
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %.backedge.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph23.split.us, %21
  %.01417.us = phi i32 [ %22, %21 ], [ 1, %.lr.ph23.split.us ]
  %18 = zext nneg i32 %.01417.us to i64
  %gep.us = getelementptr i32, ptr %invariant.gep, i64 %18
  %19 = load i32, ptr %gep.us, align 4, !tbaa !216
  %20 = icmp eq i32 %19, %15
  br i1 %20, label %.backedge.us, label %21

21:                                               ; preds = %.preheader.us
  %22 = add nuw nsw i32 %.01417.us, 1
  %exitcond.not = icmp eq i32 %22, %indvars.iv
  br i1 %exitcond.not, label %.outer, label %.preheader.us

.backedge.us:                                     ; preds = %.preheader.us, %.lr.ph23.split.us
  %23 = load i32, ptr %1, align 4, !tbaa !202
  %24 = sext i32 %23 to i64
  %.not.us = icmp slt i64 %indvars.iv43, %24
  br i1 %.not.us, label %.lr.ph23.split.us, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.backedge.us, %.backedge, %5
  ret void

.lr.ph23.split:                                   ; preds = %.lr.ph23, %.backedge
  %25 = tail call contract double @randlc_(ptr %7, ptr %6)
  %26 = tail call contract double @randlc_(ptr %7, ptr %6)
  %27 = load i32, ptr %2, align 4, !tbaa !208
  %28 = sitofp i32 %27 to double
  %29 = fmul contract double %26, %28
  %30 = fptosi double %29 to i32
  %31 = add i32 %30, 1
  %32 = load i32, ptr %0, align 4, !tbaa !214
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %.backedge, label %.outer

.backedge:                                        ; preds = %.lr.ph23.split
  %34 = load i32, ptr %1, align 4, !tbaa !202
  %35 = sext i32 %34 to i64
  %.not = icmp slt i64 %indvars.iv43, %35
  br i1 %.not, label %.lr.ph23.split, label %.outer._crit_edge

.outer:                                           ; preds = %.lr.ph23.split, %21
  %.lcssa16 = phi double [ %9, %21 ], [ %25, %.lr.ph23.split ]
  %.lcssa = phi i32 [ %15, %21 ], [ %31, %.lr.ph23.split ]
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %36 = getelementptr double, ptr %3, i64 %indvars.iv43
  store double %.lcssa16, ptr %36, align 8, !tbaa !218
  %37 = getelementptr i32, ptr %4, i64 %indvars.iv43
  store i32 %.lcssa, ptr %37, align 4, !tbaa !216
  %38 = load i32, ptr %1, align 4, !tbaa !202
  %39 = sext i32 %38 to i64
  %.not22 = icmp slt i64 %indvars.iv.next44, %39
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %.not22, label %.lr.ph23, label %.outer._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define i32 @icnvrt_(ptr nocapture readonly %0, ptr nocapture readonly %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4, !tbaa !208
  %4 = sitofp i32 %3 to double
  %5 = load double, ptr %0, align 8, !tbaa !220
  %6 = fmul contract double %5, %4
  %7 = fptosi double %6 to i32
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @vecset_(ptr nocapture readnone %0, ptr nocapture writeonly %1, ptr nocapture %2, ptr nocapture %3, ptr nocapture readonly %4, ptr nocapture readonly %5) local_unnamed_addr #3 {
  %7 = load i32, ptr %3, align 4, !tbaa !135
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %6
  %9 = load i32, ptr %4, align 4, !tbaa !222
  %narrow = add nuw i32 %7, 1
  %10 = zext i32 %narrow to i64
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph
  %indvars.iv.ph = phi i64 [ %indvars.iv.next9, %.thread ], [ 1, %.lr.ph ]
  %11 = phi i1 [ false, %.thread ], [ true, %.lr.ph ]
  br label %12

12:                                               ; preds = %.outer, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ %indvars.iv.ph, %.outer ]
  %13 = add nsw i64 %indvars.iv, -1
  %14 = getelementptr i32, ptr %2, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !127
  %16 = icmp eq i32 %15, %9
  br i1 %16, label %.thread, label %17

17:                                               ; preds = %12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %10
  br i1 %exitcond.not, label %._crit_edge, label %12

.thread:                                          ; preds = %12
  %18 = load double, ptr %5, align 8, !tbaa !224
  %19 = getelementptr double, ptr %1, i64 %13
  store double %18, ptr %19, align 8, !tbaa !133
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not10 = icmp eq i64 %indvars.iv.next9, %10
  br i1 %exitcond.not10, label %._crit_edge.thread12, label %.outer

._crit_edge:                                      ; preds = %17
  br i1 %11, label %._crit_edge.thread, label %._crit_edge.thread12

._crit_edge.thread:                               ; preds = %6, %._crit_edge
  %20 = add i32 %7, 1
  store i32 %20, ptr %3, align 4, !tbaa !135
  %21 = load double, ptr %5, align 8, !tbaa !224
  %22 = sext i32 %20 to i64
  %23 = getelementptr double, ptr %1, i64 %22
  %24 = getelementptr i8, ptr %23, i64 -8
  store double %21, ptr %24, align 8, !tbaa !133
  %25 = load i32, ptr %4, align 4, !tbaa !222
  %26 = getelementptr i32, ptr %2, i64 %22
  %27 = getelementptr i8, ptr %26, i64 -4
  store i32 %25, ptr %27, align 4, !tbaa !127
  br label %._crit_edge.thread12

._crit_edge.thread12:                             ; preds = %.thread, %._crit_edge.thread, %._crit_edge
  ret void
}

declare void @timer_clear_(ptr) local_unnamed_addr

declare void @check_timer_flag_(ptr) local_unnamed_addr

declare void @timer_start_(ptr) local_unnamed_addr

declare ptr @_FortranAioBeginExternalFormattedOutput(ptr, i64, ptr, i32, ptr, i32) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputInteger32(ptr, i32) local_unnamed_addr

declare i32 @omp_get_max_threads_() local_unnamed_addr

declare ptr @_FortranAioBeginExternalListOutput(i32, ptr, i32) local_unnamed_addr

declare void @alloc_space_() local_unnamed_addr

declare double @randlc_(ptr, ptr) local_unnamed_addr

declare void @timer_stop_(ptr) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputReal64(ptr, double) local_unnamed_addr

declare double @timer_read_(ptr) local_unnamed_addr

declare void @roi_begin_() local_unnamed_addr

declare void @roi_end_() local_unnamed_addr

declare i32 @_FortranACharacterCompareScalar1(ptr, ptr, i64, i64) local_unnamed_addr

declare void @free_space_() local_unnamed_addr

declare void @print_results_(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputAscii(ptr, ptr, i64) local_unnamed_addr

declare i32 @omp_get_num_threads_() local_unnamed_addr

declare i32 @omp_get_thread_num_() local_unnamed_addr

declare zeroext i1 @_FortranAioOutputInteger64(ptr, i64) local_unnamed_addr

declare {} @_FortranAStopStatement(i32, i1 zeroext, i1 zeroext) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func(ptr nocapture readonly %0, ptr nocapture readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = load double, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = load double, ptr %12, align 8
  %14 = fadd contract double %10, %13
  store double %14, ptr %9, align 8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(ptr, i32, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nounwind
declare i32 @__kmpc_master(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_end_master(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func.1(ptr nocapture readonly %0, ptr nocapture readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = load double, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = load double, ptr %12, align 8
  %14 = fadd contract double %10, %13
  store double %14, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func.2(ptr nocapture readonly %0, ptr nocapture readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func.3(ptr nocapture readonly %0, ptr nocapture readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func.4(ptr nocapture readonly %0, ptr nocapture readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define internal void @.omp.reduction.func.5(ptr nocapture readonly %0, ptr nocapture readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8
  %4 = load double, ptr %3, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load double, ptr %5, align 8
  %7 = fadd contract double %4, %6
  store double %7, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #6

; Function Attrs: nounwind
declare !callback !226 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #4 = { nounwind }
attributes #5 = { convergent nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

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
!9 = !{!"global data/_QMcg_dataEtimeron", !10, i64 0}
!10 = !{!"global data", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"global data/_QMcg_dataEfirstrow", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMcg_dataElastrow", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMcg_dataEfirstcol", !10, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"global data/_QMcg_dataElastcol", !10, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"global data/_QQclX45", !10, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"global data/_QMcg_dataEnaa", !10, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"global data/_QMcg_dataEnzz", !10, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"any data access", !27, i64 0}
!27 = !{!"any access", !28, i64 0}
!28 = !{!"Flang function root _QPconj_grad"}
!29 = !{!30, !30, i64 0}
!30 = !{!"dummy arg data/_QFconj_gradErnorm", !31, i64 0}
!31 = !{!"dummy arg data", !26, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"descriptor member", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"direct data/_QMcg_dataEx", !36, i64 0}
!36 = !{!"direct data", !5, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"direct data/_QMcg_dataEz", !36, i64 0}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!43, !43, i64 0}
!43 = !{!"dummy arg data/_QFEnorm_temp1", !44, i64 0}
!44 = !{!"dummy arg data", !5, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"dummy arg data/_QFEnorm_temp2", !44, i64 0}
!47 = distinct !{!47, !40, !41}
!48 = distinct !{!48, !40}
!49 = distinct !{!49, !40}
!50 = distinct !{!50, !40, !41}
!51 = distinct !{!51, !40, !41}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = distinct !{!54, !40, !41}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40, !41}
!57 = !{!58, !58, i64 0}
!58 = !{!"direct data/_QMcg_dataEq", !36, i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"direct data/_QMcg_dataEr", !36, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"direct data/_QMcg_dataEp", !36, i64 0}
!63 = distinct !{!63, !40, !41}
!64 = distinct !{!64, !40}
!65 = distinct !{!65, !40}
!66 = !{!67, !67, i64 0}
!67 = !{!"direct data/_QMcg_dataErowstr", !36, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"direct data/_QMcg_dataEcolidx", !36, i64 0}
!70 = distinct !{!70, !40, !41}
!71 = distinct !{!71, !41, !40}
!72 = !{!73, !73, i64 0}
!73 = !{!"global data/_QMcg_dataEnaa", !74, i64 0}
!74 = !{!"global data", !26, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"descriptor member", !27, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"direct data/_QMcg_dataEq", !79, i64 0}
!79 = !{!"direct data", !26, i64 0}
!80 = !{!81, !81, i64 0}
!81 = !{!"direct data/_QMcg_dataEz", !79, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"direct data/_QMcg_dataEx", !79, i64 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"direct data/_QMcg_dataEr", !79, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"direct data/_QMcg_dataEp", !79, i64 0}
!88 = distinct !{!88, !40, !41}
!89 = !{!90, !90, i64 0}
!90 = !{!"global data/_QMcg_dataElastcol", !74, i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"global data/_QMcg_dataEfirstcol", !74, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"dummy arg data/_QFconj_gradErho", !31, i64 0}
!95 = distinct !{!95, !40, !41}
!96 = !{!97, !97, i64 0}
!97 = !{!"global data/_QMcg_dataElastrow", !74, i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"global data/_QMcg_dataEfirstrow", !74, i64 0}
!100 = distinct !{!100, !40, !41}
!101 = !{!102, !102, i64 0}
!102 = !{!"dummy arg data/_QFconj_gradEsum", !31, i64 0}
!103 = distinct !{!103, !40}
!104 = !{!105, !105, i64 0}
!105 = !{!"direct data/_QMcg_dataErowstr", !79, i64 0}
!106 = !{!107, !107, i64 0}
!107 = !{!"direct data/_QMcg_dataEa", !79, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"direct data/_QMcg_dataEcolidx", !79, i64 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"dummy arg data/_QFconj_gradEd", !31, i64 0}
!112 = distinct !{!112, !40, !41}
!113 = distinct !{!113, !40, !41}
!114 = distinct !{!114, !40, !41}
!115 = distinct !{!115, !40}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40}
!119 = distinct !{!119, !40}
!120 = !{!121, !121, i64 0}
!121 = !{!"dummy arg data/_QFmakeaEn", !122, i64 0}
!122 = !{!"dummy arg data", !123, i64 0}
!123 = !{!"any data access", !124, i64 0}
!124 = !{!"any access", !125, i64 0}
!125 = !{!"Flang function root _QPmakea"}
!126 = !{!123, !123, i64 0}
!127 = !{!128, !128, i64 0}
!128 = !{!"dummy arg data/_QFvecsetEiv", !129, i64 0}
!129 = !{!"dummy arg data", !130, i64 0}
!130 = !{!"any data access", !131, i64 0}
!131 = !{!"any access", !132, i64 0}
!132 = !{!"Flang function root _QPvecset"}
!133 = !{!134, !134, i64 0}
!134 = !{!"dummy arg data/_QFvecsetEv", !129, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"dummy arg data/_QFvecsetEnzv", !129, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"dummy arg data/_QFmakeaEarow", !122, i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"dummy arg data/_QFmakeaEacol", !122, i64 0}
!141 = !{!142, !142, i64 0}
!142 = !{!"dummy arg data/_QFmakeaEaelt", !122, i64 0}
!143 = distinct !{!143, !41, !40}
!144 = !{!145, !145, i64 0}
!145 = !{!"dummy arg data/_QFmakeaEnz", !122, i64 0}
!146 = !{!147, !147, i64 0}
!147 = !{!"dummy arg data/_QFsparseEnonzer", !148, i64 0}
!148 = !{!"dummy arg data", !149, i64 0}
!149 = !{!"any data access", !150, i64 0}
!150 = !{!"any access", !151, i64 0}
!151 = !{!"Flang function root _QPsparse"}
!152 = !{!153, !153, i64 0}
!153 = !{!"dummy arg data/_QFsparseElastrow", !148, i64 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"dummy arg data/_QFsparseEfirstrow", !148, i64 0}
!156 = !{!149, !149, i64 0}
!157 = !{!158, !158, i64 0}
!158 = !{!"dummy arg data/_QFsparseErowstr", !148, i64 0}
!159 = distinct !{!159, !40, !41}
!160 = distinct !{!160, !40}
!161 = !{!162, !162, i64 0}
!162 = !{!"dummy arg data/_QFsparseEn", !148, i64 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"dummy arg data/_QFsparseEarow", !148, i64 0}
!165 = !{!166, !166, i64 0}
!166 = !{!"dummy arg data/_QFsparseEacol", !148, i64 0}
!167 = !{!168, !168, i64 0}
!168 = !{!"global data/_QMtinfoElast_n", !169, i64 0}
!169 = !{!"global data", !149, i64 0}
!170 = distinct !{!170, !40, !41}
!171 = distinct !{!171, !41, !40}
!172 = distinct !{!172, !40, !41}
!173 = distinct !{!173, !40}
!174 = !{!175, !175, i64 0}
!175 = !{!"dummy arg data/_QFsparseEnz", !148, i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"dummy arg data/_QFsparseEv", !148, i64 0}
!178 = !{!179, !179, i64 0}
!179 = !{!"dummy arg data/_QFsparseEiv", !148, i64 0}
!180 = distinct !{!180, !40, !41}
!181 = distinct !{!181, !41, !40}
!182 = !{!183, !183, i64 0}
!183 = !{!"dummy arg data/_QFsparseEnzloc", !148, i64 0}
!184 = !{!185, !185, i64 0}
!185 = !{!"dummy arg data/_QFsparseErcond", !148, i64 0}
!186 = !{!187, !187, i64 0}
!187 = !{!"dummy arg data/_QFsparseEaelt", !148, i64 0}
!188 = !{!189, !189, i64 0}
!189 = !{!"dummy arg data/_QFsparseEshift", !148, i64 0}
!190 = distinct !{!190, !40, !41}
!191 = distinct !{!191, !41, !40}
!192 = distinct !{!192, !40, !41}
!193 = distinct !{!193, !40}
!194 = !{!195, !195, i64 0}
!195 = !{!"dummy arg data/_QFsparseEa", !148, i64 0}
!196 = !{!197, !197, i64 0}
!197 = !{!"dummy arg data/_QFsparseEcolidx", !148, i64 0}
!198 = distinct !{!198, !41, !40}
!199 = distinct !{!199, !40, !41}
!200 = distinct !{!200, !40, !41}
!201 = distinct !{!201, !40}
!202 = !{!203, !203, i64 0}
!203 = !{!"dummy arg data/_QFsprnvcEnz", !204, i64 0}
!204 = !{!"dummy arg data", !205, i64 0}
!205 = !{!"any data access", !206, i64 0}
!206 = !{!"any access", !207, i64 0}
!207 = !{!"Flang function root _QPsprnvc"}
!208 = !{!209, !209, i64 0}
!209 = !{!"dummy arg data/_QFicnvrtEipwr2", !210, i64 0}
!210 = !{!"dummy arg data", !211, i64 0}
!211 = !{!"any data access", !212, i64 0}
!212 = !{!"any access", !213, i64 0}
!213 = !{!"Flang function root _QPicnvrt"}
!214 = !{!215, !215, i64 0}
!215 = !{!"dummy arg data/_QFsprnvcEn", !204, i64 0}
!216 = !{!217, !217, i64 0}
!217 = !{!"dummy arg data/_QFsprnvcEiv", !204, i64 0}
!218 = !{!219, !219, i64 0}
!219 = !{!"dummy arg data/_QFsprnvcEv", !204, i64 0}
!220 = !{!221, !221, i64 0}
!221 = !{!"dummy arg data/_QFicnvrtEx", !210, i64 0}
!222 = !{!223, !223, i64 0}
!223 = !{!"dummy arg data/_QFvecsetEi", !129, i64 0}
!224 = !{!225, !225, i64 0}
!225 = !{!"dummy arg data/_QFvecsetEval", !129, i64 0}
!226 = !{!227}
!227 = !{i64 2, i64 -1, i64 -1, i1 true}
