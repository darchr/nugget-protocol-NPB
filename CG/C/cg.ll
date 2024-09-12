; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX696E6974 = comdat any

$_QQclX62656E63686D6B = comdat any

$_QQclX636F6E6A6764 = comdat any

$_QQclX43 = comdat any

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
@_QMcg_dataEnzz = external global i32
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
@_QQclX43 = linkonce local_unnamed_addr constant [1 x i8] c"C", comdat
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
@_QMtinfoElast_n = external local_unnamed_addr global [1025 x i32]
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
  store i32 150000, ptr @_QMcg_dataElastrow, align 4, !tbaa !13
  store i32 1, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !15
  store i32 150000, ptr @_QMcg_dataElastcol, align 4, !tbaa !17
  %.unpack = load i8, ptr @_QQclX43, align 1, !tbaa !19
  store i8 %.unpack, ptr %34, align 4, !tbaa !4
  %57 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX574bc9483b879864d24e2171888a3194, i64 66, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 145)
  %58 = call i32 @_FortranAioEndIoStatement(ptr %57)
  %59 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272053697A653A20272C2069313129, i64 16, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 146)
  %60 = call i1 @_FortranAioOutputInteger32(ptr %59, i32 150000)
  %61 = call i32 @_FortranAioEndIoStatement(ptr %59)
  %62 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX63f70da6b7cfde3fd15fbdfe6ad3cc9f, i64 38, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 147)
  %63 = call i1 @_FortranAioOutputInteger32(ptr %62, i32 75)
  %64 = call i32 @_FortranAioEndIoStatement(ptr %62)
  %65 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXf923a2af02906180bfbdd179b9b5c308, i64 38, ptr null, i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 148)
  %66 = call i32 @omp_get_max_threads_()
  %67 = call i1 @_FortranAioOutputInteger32(ptr %65, i32 %66)
  %68 = call i32 @_FortranAioEndIoStatement(ptr %65)
  %69 = call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 149)
  %70 = call i32 @_FortranAioEndIoStatement(ptr %69)
  store i32 150000, ptr @_QMcg_dataEnaa, align 4, !tbaa !21
  store i32 38400000, ptr @_QMcg_dataEnzz, align 4, !tbaa !23
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
  %80 = phi i64 [ 75, %omp_parallel ], [ %93, %omp_parallel207 ]
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
  %102 = fadd contract double %101, 0xC03CF93E375478D3
  %103 = call contract double @llvm.fabs.f64(double %102)
  %104 = fdiv contract double %103, 0x403CF93E375478D3
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
  %123 = call i1 @_FortranAioOutputReal64(ptr %122, double 0x403CF93E375478D3)
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
  %135 = fdiv contract double 0x41017F9BFFFFFFFF, %96
  %storemerge = select i1 %134, double %135, double 0.000000e+00
  store double %storemerge, ptr %37, align 8, !tbaa !4
  %136 = load i16, ptr @_QQclX4347, align 1
  store i16 %136, ptr %24, align 4
  store i32 150000, ptr %23, align 4, !tbaa !4
  store i32 0, ptr %22, align 4, !tbaa !4
  store i32 0, ptr %21, align 4, !tbaa !4
  store i32 75, ptr %20, align 4, !tbaa !4
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
    i32 75, label %omp.master.region114
    i32 1, label %omp.master.region114
  ]

omp.region.cont113:                               ; preds = %omp.master.region116, %switch.early.test
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num135)
  br label %omp_region.end

omp.master.region114:                             ; preds = %switch.early.test, %switch.early.test, %omp.master.region
  %74 = load double, ptr %loadgep_, align 8, !tbaa !4
  %75 = fdiv contract double 1.000000e+00, %74
  %76 = fadd contract double %75, 1.100000e+02
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
  store i32 150000, ptr %p.upperbound73, align 4
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
  %omp_loop.cmp470.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp470.not, label %omp_loop.exit, label %omp_loop.body.lr.ph

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
  store i32 150000, ptr %p.upperbound26, align 4
  store i32 1, ptr %p.stride27, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num46, i32 34, ptr nonnull %p.lastiter24, ptr nonnull %p.lowerbound25, ptr nonnull %p.upperbound26, ptr nonnull %p.stride27, i32 1, i32 0)
  %11 = load i32, ptr %p.lowerbound25, align 4
  %12 = load i32, ptr %p.upperbound26, align 4
  %reass.sub477 = sub i32 %12, %11
  %omp_loop.cmp20472.not = icmp eq i32 %reass.sub477, -1
  br i1 %omp_loop.cmp20472.not, label %omp_loop.exit17, label %omp_loop.body15.lr.ph

omp_loop.body15.lr.ph:                            ; preds = %omp_loop.exit
  %13 = add i32 %11, 1
  %.unpack430 = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !32
  %.unpack437.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !32
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %11
  %min.iters.check489 = icmp ult i32 %15, 6
  br i1 %min.iters.check489, label %omp_loop.body15.preheader, label %vector.scevcheck486

vector.scevcheck486:                              ; preds = %omp_loop.body15.lr.ph
  %16 = add i32 %11, 1
  %17 = add i32 %12, 1
  %18 = icmp slt i32 %17, %16
  br i1 %18, label %omp_loop.body15.preheader, label %vector.ph490

vector.ph490:                                     ; preds = %vector.scevcheck486
  %n.vec492 = and i32 %15, -4
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph490
  %index496 = phi i32 [ 0, %vector.ph490 ], [ %index.next497, %vector.body495 ]
  %19 = add i32 %13, %index496
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %20, %.unpack437.unpack.unpack
  %22 = getelementptr double, ptr %.unpack430, i64 %21
  %23 = getelementptr i8, ptr %22, i64 16
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %22, align 8, !tbaa !34
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %23, align 8, !tbaa !34
  %index.next497 = add nuw i32 %index496, 4
  %24 = icmp eq i32 %index.next497, %n.vec492
  br i1 %24, label %middle.block487, label %vector.body495, !llvm.loop !56

middle.block487:                                  ; preds = %vector.body495
  %cmp.n494 = icmp eq i32 %15, %n.vec492
  br i1 %cmp.n494, label %omp_loop.exit17, label %omp_loop.body15.preheader

omp_loop.body15.preheader:                        ; preds = %vector.scevcheck486, %omp_loop.body15.lr.ph, %middle.block487
  %omp_loop.iv19473.ph = phi i32 [ 0, %vector.scevcheck486 ], [ 0, %omp_loop.body15.lr.ph ], [ %n.vec492, %middle.block487 ]
  br label %omp_loop.body15

omp_loop.exit17:                                  ; preds = %omp_loop.body15, %middle.block487, %omp_loop.exit
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
  %reass.sub478 = sub i32 %31, %30
  %omp_loop.cmp38474.not = icmp eq i32 %reass.sub478, -1
  br i1 %omp_loop.cmp38474.not, label %omp_loop.exit35, label %omp_loop.body33.lr.ph

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
  %min.iters.check501 = icmp ult i32 %34, 4
  br i1 %min.iters.check501, label %omp_loop.body33.preheader, label %vector.scevcheck498

vector.scevcheck498:                              ; preds = %omp_loop.body33.lr.ph
  %35 = add i32 %30, 1
  %36 = add i32 %31, 1
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %omp_loop.body33.preheader, label %vector.ph502

vector.ph502:                                     ; preds = %vector.scevcheck498
  %n.vec504 = and i32 %34, -4
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph502
  %index508 = phi i32 [ 0, %vector.ph502 ], [ %index.next509, %vector.body507 ]
  %38 = add i32 %32, %index508
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
  %index.next509 = add nuw i32 %index508, 4
  %52 = icmp eq i32 %index.next509, %n.vec504
  br i1 %52, label %middle.block499, label %vector.body507, !llvm.loop !63

middle.block499:                                  ; preds = %vector.body507
  %cmp.n506 = icmp eq i32 %34, %n.vec504
  br i1 %cmp.n506, label %omp_loop.exit35, label %omp_loop.body33.preheader

omp_loop.body33.preheader:                        ; preds = %vector.scevcheck498, %omp_loop.body33.lr.ph, %middle.block499
  %omp_loop.iv37475.ph = phi i32 [ 0, %vector.scevcheck498 ], [ 0, %omp_loop.body33.lr.ph ], [ %n.vec504, %middle.block499 ]
  br label %omp_loop.body33

omp_loop.exit35:                                  ; preds = %omp_loop.body33, %middle.block499, %omp_loop.exit17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num46)
  ret void

omp_loop.body33:                                  ; preds = %omp_loop.body33.preheader, %omp_loop.body33
  %omp_loop.iv37475 = phi i32 [ %omp_loop.next39, %omp_loop.body33 ], [ %omp_loop.iv37475.ph, %omp_loop.body33.preheader ]
  %53 = add i32 %32, %omp_loop.iv37475
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
  %omp_loop.next39 = add nuw i32 %omp_loop.iv37475, 1
  %exitcond480.not = icmp eq i32 %omp_loop.iv37475, %reass.sub478
  br i1 %exitcond480.not, label %omp_loop.exit35, label %omp_loop.body33, !llvm.loop !64

omp_loop.body15:                                  ; preds = %omp_loop.body15.preheader, %omp_loop.body15
  %omp_loop.iv19473 = phi i32 [ %omp_loop.next21, %omp_loop.body15 ], [ %omp_loop.iv19473.ph, %omp_loop.body15.preheader ]
  %63 = add i32 %13, %omp_loop.iv19473
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %.unpack437.unpack.unpack
  %66 = getelementptr double, ptr %.unpack430, i64 %65
  store double 1.000000e+00, ptr %66, align 8, !tbaa !34
  %omp_loop.next21 = add nuw i32 %omp_loop.iv19473, 1
  %exitcond479.not = icmp eq i32 %omp_loop.iv19473, %reass.sub477
  br i1 %exitcond479.not, label %omp_loop.exit17, label %omp_loop.body15, !llvm.loop !65

omp_loop.body:                                    ; preds = %omp_loop.body.lr.ph, %omp.wsloop.region10
  %omp_loop.iv471 = phi i32 [ 0, %omp_loop.body.lr.ph ], [ %omp_loop.next, %omp.wsloop.region10 ]
  %67 = add i32 %omp_loop.iv471, %8
  %68 = add i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %.unpack449.unpack.unpack
  %71 = getelementptr i32, ptr %.unpack442, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !66
  %73 = sext i32 %72 to i64
  %74 = add i32 %67, 2
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %.unpack449.unpack.unpack
  %77 = getelementptr i32, ptr %.unpack442, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !66
  %79 = add i32 %78, -1
  %80 = sext i32 %79 to i64
  %reass.sub476 = sub nsw i64 %80, %73
  %81 = icmp sgt i64 %reass.sub476, -1
  br i1 %81, label %omp.wsloop.region9.preheader, label %omp.wsloop.region10

omp.wsloop.region9.preheader:                     ; preds = %omp_loop.body
  %82 = add nuw nsw i64 %reass.sub476, 1
  %83 = add nsw i64 %80, 1
  %84 = sub nsw i64 %83, %73
  %min.iters.check = icmp ult i64 %84, 12
  br i1 %min.iters.check, label %omp.wsloop.region9.preheader510, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %omp.wsloop.region9.preheader
  %85 = sub nsw i64 %80, %73
  %86 = trunc i64 %85 to i32
  %87 = add i32 %72, %86
  %88 = icmp slt i32 %87, %72
  %89 = icmp ugt i64 %85, 4294967295
  %90 = or i1 %88, %89
  br i1 %90, label %omp.wsloop.region9.preheader510, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %84, -8
  %ind.end = sub nsw i64 %82, %n.vec
  %.cast = trunc i64 %n.vec to i32
  %ind.end482 = add i32 %72, %.cast
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %.cast484 = trunc i64 %index to i32
  %offset.idx = add i32 %72, %.cast484
  %91 = sext i32 %offset.idx to i64
  %92 = sub nsw i64 %91, %.unpack461.unpack.unpack
  %93 = getelementptr i32, ptr %.unpack454, i64 %92
  %94 = getelementptr i8, ptr %93, i64 16
  %wide.load = load <4 x i32>, ptr %93, align 4, !tbaa !68
  %wide.load485 = load <4 x i32>, ptr %94, align 4, !tbaa !68
  %95 = add <4 x i32> %wide.load, <i32 1, i32 1, i32 1, i32 1>
  %96 = add <4 x i32> %wide.load485, <i32 1, i32 1, i32 1, i32 1>
  %97 = sub <4 x i32> %95, %broadcast.splat
  %98 = sub <4 x i32> %96, %broadcast.splat
  store <4 x i32> %97, ptr %93, align 4, !tbaa !68
  store <4 x i32> %98, ptr %94, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 8
  %99 = icmp eq i64 %index.next, %n.vec
  br i1 %99, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %84, %n.vec
  br i1 %cmp.n, label %omp.wsloop.region10, label %omp.wsloop.region9.preheader510

omp.wsloop.region9.preheader510:                  ; preds = %vector.scevcheck, %omp.wsloop.region9.preheader, %middle.block
  %.ph = phi i64 [ %82, %vector.scevcheck ], [ %82, %omp.wsloop.region9.preheader ], [ %ind.end, %middle.block ]
  %.ph511 = phi i32 [ %72, %vector.scevcheck ], [ %72, %omp.wsloop.region9.preheader ], [ %ind.end482, %middle.block ]
  br label %omp.wsloop.region9

omp.wsloop.region10:                              ; preds = %omp.wsloop.region9, %middle.block, %omp_loop.body
  %omp_loop.next = add nuw i32 %omp_loop.iv471, 1
  %exitcond.not = icmp eq i32 %omp_loop.iv471, %reass.sub
  br i1 %exitcond.not, label %omp_loop.exit, label %omp_loop.body

omp.wsloop.region9:                               ; preds = %omp.wsloop.region9.preheader510, %omp.wsloop.region9
  %100 = phi i64 [ %109, %omp.wsloop.region9 ], [ %.ph, %omp.wsloop.region9.preheader510 ]
  %101 = phi i32 [ %108, %omp.wsloop.region9 ], [ %.ph511, %omp.wsloop.region9.preheader510 ]
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %102, %.unpack461.unpack.unpack
  %104 = getelementptr i32, ptr %.unpack454, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !68
  %106 = add i32 %105, 1
  %107 = sub i32 %106, %10
  store i32 %107, ptr %104, align 4, !tbaa !68
  %108 = add i32 %101, 1
  %109 = add nsw i64 %100, -1
  %110 = icmp ugt i64 %100, 1
  br i1 %110, label %omp.wsloop.region9, label %omp.wsloop.region10, !llvm.loop !71
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
  %omp_loop.cmp923.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_loop.cmp923.not, label %omp_loop.exit, label %omp_loop.body.lr.ph

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
  %wide.load980 = load <2 x double>, ptr %26, align 8, !tbaa !82
  %27 = sub nsw i64 %17, %.unpack885.unpack.unpack
  %28 = getelementptr double, ptr %.unpack878, i64 %27
  %29 = getelementptr i8, ptr %28, i64 16
  store <2 x double> %wide.load, ptr %28, align 8, !tbaa !84
  store <2 x double> %wide.load980, ptr %29, align 8, !tbaa !84
  %30 = sub nsw i64 %17, %.unpack909.unpack.unpack
  %31 = getelementptr double, ptr %.unpack902, i64 %30
  %32 = getelementptr i8, ptr %31, i64 16
  store <2 x double> %wide.load, ptr %31, align 8, !tbaa !86
  store <2 x double> %wide.load980, ptr %32, align 8, !tbaa !86
  %index.next = add nuw i32 %index, 4
  %33 = icmp eq i32 %index.next, %n.vec
  br i1 %33, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %12, %n.vec
  br i1 %cmp.n, label %omp_loop.exit, label %omp_loop.body.preheader

omp_loop.body.preheader:                          ; preds = %vector.scevcheck, %omp_loop.body.lr.ph, %middle.block
  %omp_loop.iv924.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %omp_loop.body.lr.ph ], [ %n.vec, %middle.block ]
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
  %reass.sub949 = sub i32 %40, %39
  %omp_loop.cmp19925.not = icmp eq i32 %reass.sub949, -1
  br i1 %omp_loop.cmp19925.not, label %omp_loop.exit16, label %omp_loop.body14.lr.ph

omp_loop.body14.lr.ph:                            ; preds = %omp_loop.exit
  %.promoted = load double, ptr %1, align 8, !tbaa !93
  %41 = add i32 %39, 1
  %.unpack830 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack837.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  %42 = add i32 %40, 1
  %43 = sub i32 %42, %39
  %min.iters.check984 = icmp ult i32 %43, 4
  br i1 %min.iters.check984, label %omp_loop.body14.preheader, label %vector.scevcheck981

vector.scevcheck981:                              ; preds = %omp_loop.body14.lr.ph
  %44 = add i32 %39, 1
  %45 = add i32 %40, 1
  %46 = icmp slt i32 %45, %44
  br i1 %46, label %omp_loop.body14.preheader, label %vector.ph985

vector.ph985:                                     ; preds = %vector.scevcheck981
  %n.vec987 = and i32 %43, -4
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %vector.ph985
  %index991 = phi i32 [ 0, %vector.ph985 ], [ %index.next994, %vector.body990 ]
  %vec.phi = phi double [ %.promoted, %vector.ph985 ], [ %55, %vector.body990 ]
  %47 = add i32 %41, %index991
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %.unpack837.unpack.unpack
  %50 = getelementptr double, ptr %.unpack830, i64 %49
  %51 = getelementptr i8, ptr %50, i64 16
  %wide.load992 = load <2 x double>, ptr %50, align 8, !tbaa !84
  %wide.load993 = load <2 x double>, ptr %51, align 8, !tbaa !84
  %52 = fmul contract <2 x double> %wide.load992, %wide.load992
  %53 = fmul contract <2 x double> %wide.load993, %wide.load993
  %54 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi, <2 x double> %52)
  %55 = call contract double @llvm.vector.reduce.fadd.v2f64(double %54, <2 x double> %53)
  %index.next994 = add nuw i32 %index991, 4
  %56 = icmp eq i32 %index.next994, %n.vec987
  br i1 %56, label %middle.block982, label %vector.body990, !llvm.loop !95

middle.block982:                                  ; preds = %vector.body990
  %cmp.n989 = icmp eq i32 %43, %n.vec987
  br i1 %cmp.n989, label %omp_loop.header12.omp_loop.exit16_crit_edge, label %omp_loop.body14.preheader

omp_loop.body14.preheader:                        ; preds = %vector.scevcheck981, %omp_loop.body14.lr.ph, %middle.block982
  %omp_loop.iv18926.ph = phi i32 [ 0, %vector.scevcheck981 ], [ 0, %omp_loop.body14.lr.ph ], [ %n.vec987, %middle.block982 ]
  %.ph1080 = phi double [ %.promoted, %vector.scevcheck981 ], [ %.promoted, %omp_loop.body14.lr.ph ], [ %55, %middle.block982 ]
  br label %omp_loop.body14

omp_loop.header12.omp_loop.exit16_crit_edge:      ; preds = %omp_loop.body14, %middle.block982
  %.lcssa979 = phi double [ %55, %middle.block982 ], [ %339, %omp_loop.body14 ]
  store double %.lcssa979, ptr %1, align 8, !tbaa !93
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
  %reass.sub955 = sub i32 %64, %63
  %omp_loop.cmp40942.not = icmp eq i32 %reass.sub955, -1
  br i1 %omp_loop.cmp40942.not, label %omp_loop.exit37, label %omp_loop.body35.lr.ph

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
  %reass.sub957 = sub i32 %71, %70
  %omp_loop.cmp62946.not = icmp eq i32 %reass.sub957, -1
  br i1 %omp_loop.cmp62946.not, label %omp_loop.exit59, label %omp_loop.body57.lr.ph

omp_loop.body57.lr.ph:                            ; preds = %omp_loop.exit37
  %72 = add i32 %70, 1
  %.unpack = load ptr, ptr @_QMcg_dataEx, align 8, !tbaa !75
  %.unpack585.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEx, i64 0, i32 7), align 8, !tbaa !75
  %.unpack590 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack597.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  %73 = add i32 %71, 1
  %74 = sub i32 %73, %70
  %min.iters.check1056 = icmp ult i32 %74, 4
  br i1 %min.iters.check1056, label %omp_loop.body57.preheader, label %vector.scevcheck1053

vector.scevcheck1053:                             ; preds = %omp_loop.body57.lr.ph
  %75 = add i32 %70, 1
  %76 = add i32 %71, 1
  %77 = icmp slt i32 %76, %75
  br i1 %77, label %omp_loop.body57.preheader, label %vector.ph1057

vector.ph1057:                                    ; preds = %vector.scevcheck1053
  %n.vec1059 = and i32 %74, -4
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1057
  %index1063 = phi i32 [ 0, %vector.ph1057 ], [ %index.next1069, %vector.body1062 ]
  %vec.phi1064 = phi double [ 0.000000e+00, %vector.ph1057 ], [ %91, %vector.body1062 ]
  %78 = add i32 %72, %index1063
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %.unpack585.unpack.unpack
  %81 = getelementptr double, ptr %.unpack, i64 %80
  %82 = getelementptr i8, ptr %81, i64 16
  %wide.load1065 = load <2 x double>, ptr %81, align 8, !tbaa !82
  %wide.load1066 = load <2 x double>, ptr %82, align 8, !tbaa !82
  %83 = sub nsw i64 %79, %.unpack597.unpack.unpack
  %84 = getelementptr double, ptr %.unpack590, i64 %83
  %85 = getelementptr i8, ptr %84, i64 16
  %wide.load1067 = load <2 x double>, ptr %84, align 8, !tbaa !84
  %wide.load1068 = load <2 x double>, ptr %85, align 8, !tbaa !84
  %86 = fsub contract <2 x double> %wide.load1065, %wide.load1067
  %87 = fsub contract <2 x double> %wide.load1066, %wide.load1068
  %88 = fmul contract <2 x double> %86, %86
  %89 = fmul contract <2 x double> %87, %87
  %90 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi1064, <2 x double> %88)
  %91 = call contract double @llvm.vector.reduce.fadd.v2f64(double %90, <2 x double> %89)
  %index.next1069 = add nuw i32 %index1063, 4
  %92 = icmp eq i32 %index.next1069, %n.vec1059
  br i1 %92, label %middle.block1054, label %vector.body1062, !llvm.loop !100

middle.block1054:                                 ; preds = %vector.body1062
  %cmp.n1061 = icmp eq i32 %74, %n.vec1059
  br i1 %cmp.n1061, label %omp_loop.exit59, label %omp_loop.body57.preheader

omp_loop.body57.preheader:                        ; preds = %vector.scevcheck1053, %omp_loop.body57.lr.ph, %middle.block1054
  %omp_loop.iv61947.ph = phi i32 [ 0, %vector.scevcheck1053 ], [ 0, %omp_loop.body57.lr.ph ], [ %n.vec1059, %middle.block1054 ]
  %.ph = phi double [ 0.000000e+00, %vector.scevcheck1053 ], [ 0.000000e+00, %omp_loop.body57.lr.ph ], [ %91, %middle.block1054 ]
  br label %omp_loop.body57

omp_loop.exit59:                                  ; preds = %omp_loop.body57, %middle.block1054, %omp_loop.exit37
  %.lcssa945 = phi double [ 0.000000e+00, %omp_loop.exit37 ], [ %91, %middle.block1054 ], [ %105, %omp_loop.body57 ]
  store double %.lcssa945, ptr %2, align 8, !tbaa !101
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
  %omp_loop.iv61947 = phi i32 [ %omp_loop.next63, %omp_loop.body57 ], [ %omp_loop.iv61947.ph, %omp_loop.body57.preheader ]
  %94 = phi double [ %105, %omp_loop.body57 ], [ %.ph, %omp_loop.body57.preheader ]
  %95 = add i32 %72, %omp_loop.iv61947
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
  %omp_loop.next63 = add nuw i32 %omp_loop.iv61947, 1
  %exitcond969.not = icmp eq i32 %omp_loop.iv61947, %reass.sub957
  br i1 %exitcond969.not, label %omp_loop.exit59, label %omp_loop.body57, !llvm.loop !103

omp_loop.body35:                                  ; preds = %omp_loop.body35.lr.ph, %omp.wsloop.region46
  %omp_loop.iv39943 = phi i32 [ 0, %omp_loop.body35.lr.ph ], [ %omp_loop.next41, %omp.wsloop.region46 ]
  %106 = add i32 %omp_loop.iv39943, %63
  %107 = add i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %108, %.unpack609.unpack.unpack
  %110 = getelementptr i32, ptr %.unpack602, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !104
  %112 = sext i32 %111 to i64
  %113 = add i32 %106, 2
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %.unpack609.unpack.unpack
  %116 = getelementptr i32, ptr %.unpack602, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !104
  %118 = add i32 %117, -1
  %119 = sext i32 %118 to i64
  %reass.sub956 = sub nsw i64 %119, %112
  %120 = icmp sgt i64 %reass.sub956, -1
  br i1 %120, label %omp.wsloop.region45.preheader, label %omp.wsloop.region46

omp.wsloop.region45.preheader:                    ; preds = %omp_loop.body35
  %121 = add nuw nsw i64 %reass.sub956, 1
  br label %omp.wsloop.region45

omp.wsloop.region46:                              ; preds = %omp.wsloop.region45, %omp_loop.body35
  %.0.lcssa = phi double [ 0.000000e+00, %omp_loop.body35 ], [ %138, %omp.wsloop.region45 ]
  %122 = sub nsw i64 %108, %.unpack621.unpack.unpack
  %123 = getelementptr double, ptr %.unpack614, i64 %122
  store double %.0.lcssa, ptr %123, align 8, !tbaa !84
  %omp_loop.next41 = add nuw i32 %omp_loop.iv39943, 1
  %exitcond968.not = icmp eq i32 %omp_loop.iv39943, %reass.sub955
  br i1 %exitcond968.not, label %omp_loop.exit37, label %omp_loop.body35

omp.wsloop.region45:                              ; preds = %omp.wsloop.region45.preheader, %omp.wsloop.region45
  %124 = phi i64 [ %140, %omp.wsloop.region45 ], [ %121, %omp.wsloop.region45.preheader ]
  %125 = phi i32 [ %139, %omp.wsloop.region45 ], [ %111, %omp.wsloop.region45.preheader ]
  %.0940 = phi double [ %138, %omp.wsloop.region45 ], [ 0.000000e+00, %omp.wsloop.region45.preheader ]
  %126 = sext i32 %125 to i64
  %127 = sub nsw i64 %126, %.unpack633.unpack.unpack
  %128 = getelementptr double, ptr %.unpack626, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !106
  %130 = sub nsw i64 %126, %.unpack657.unpack.unpack
  %131 = getelementptr i32, ptr %.unpack650, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !108
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %133, %.unpack645.unpack.unpack
  %135 = getelementptr double, ptr %.unpack638, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !80
  %137 = fmul contract double %129, %136
  %138 = fadd contract double %.0940, %137
  %139 = add i32 %125, 1
  %140 = add nsw i64 %124, -1
  %141 = icmp ugt i64 %124, 1
  br i1 %141, label %omp.wsloop.region45, label %omp.wsloop.region46

omp.par.region5:                                  ; preds = %reduce.finalize, %omp_loop.exit170
  %142 = phi i64 [ 25, %reduce.finalize ], [ %251, %omp_loop.exit170 ]
  %143 = call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num182)
  %.not = icmp eq i32 %143, 0
  br i1 %.not, label %omp_region.end, label %omp.master.region

omp_region.end:                                   ; preds = %omp.par.region5, %omp.master.region
  call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num182)
  %144 = load i32, ptr @_QMcg_dataElastrow, align 4, !tbaa !96
  %145 = load i32, ptr @_QMcg_dataEfirstrow, align 4, !tbaa !98
  %146 = sub i32 %144, %145
  %147 = icmp ugt i32 %146, 2147483646
  store i32 0, ptr %p.lowerbound101, align 4
  %148 = select i1 %147, i32 -1, i32 %146
  store i32 %148, ptr %p.upperbound102, align 4
  store i32 1, ptr %p.stride103, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter100, ptr nonnull %p.lowerbound101, ptr nonnull %p.upperbound102, ptr nonnull %p.stride103, i32 1, i32 0)
  %149 = load i32, ptr %p.lowerbound101, align 4
  %150 = load i32, ptr %p.upperbound102, align 4
  %reass.sub950 = sub i32 %150, %149
  %omp_loop.cmp93928.not = icmp eq i32 %reass.sub950, -1
  br i1 %omp_loop.cmp93928.not, label %omp_loop.exit90, label %omp_loop.body88.lr.ph

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
  %151 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !89
  %152 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !91
  %153 = sub i32 %151, %152
  store double 0.000000e+00, ptr %3, align 8
  %154 = icmp ugt i32 %153, 2147483646
  store i32 0, ptr %p.lowerbound120, align 4
  %155 = select i1 %154, i32 -1, i32 %153
  store i32 %155, ptr %p.upperbound121, align 4
  store i32 1, ptr %p.stride122, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter119, ptr nonnull %p.lowerbound120, ptr nonnull %p.upperbound121, ptr nonnull %p.stride122, i32 1, i32 0)
  %156 = load i32, ptr %p.lowerbound120, align 4
  %157 = load i32, ptr %p.upperbound121, align 4
  %reass.sub952 = sub i32 %157, %156
  %omp_loop.cmp115931.not = icmp eq i32 %reass.sub952, -1
  br i1 %omp_loop.cmp115931.not, label %omp_loop.exit112, label %omp_loop.body110.lr.ph

omp_loop.body110.lr.ph:                           ; preds = %omp_loop.exit90
  %.promoted930 = load double, ptr %3, align 8, !tbaa !110
  %158 = add i32 %156, 1
  %.unpack746 = load ptr, ptr @_QMcg_dataEp, align 8, !tbaa !75
  %.unpack753.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEp, i64 0, i32 7), align 8, !tbaa !75
  %.unpack758 = load ptr, ptr @_QMcg_dataEq, align 8, !tbaa !75
  %.unpack765.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEq, i64 0, i32 7), align 8, !tbaa !75
  %159 = add i32 %157, 1
  %160 = sub i32 %159, %156
  %min.iters.check1038 = icmp ult i32 %160, 4
  br i1 %min.iters.check1038, label %omp_loop.body110.preheader, label %vector.scevcheck1035

vector.scevcheck1035:                             ; preds = %omp_loop.body110.lr.ph
  %161 = add i32 %156, 1
  %162 = add i32 %157, 1
  %163 = icmp slt i32 %162, %161
  br i1 %163, label %omp_loop.body110.preheader, label %vector.ph1039

vector.ph1039:                                    ; preds = %vector.scevcheck1035
  %n.vec1041 = and i32 %160, -4
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %vector.ph1039
  %index1045 = phi i32 [ 0, %vector.ph1039 ], [ %index.next1051, %vector.body1044 ]
  %vec.phi1046 = phi double [ %.promoted930, %vector.ph1039 ], [ %175, %vector.body1044 ]
  %164 = add i32 %158, %index1045
  %165 = sext i32 %164 to i64
  %166 = sub nsw i64 %165, %.unpack753.unpack.unpack
  %167 = getelementptr double, ptr %.unpack746, i64 %166
  %168 = getelementptr i8, ptr %167, i64 16
  %wide.load1047 = load <2 x double>, ptr %167, align 8, !tbaa !86
  %wide.load1048 = load <2 x double>, ptr %168, align 8, !tbaa !86
  %169 = sub nsw i64 %165, %.unpack765.unpack.unpack
  %170 = getelementptr double, ptr %.unpack758, i64 %169
  %171 = getelementptr i8, ptr %170, i64 16
  %wide.load1049 = load <2 x double>, ptr %170, align 8, !tbaa !77
  %wide.load1050 = load <2 x double>, ptr %171, align 8, !tbaa !77
  %172 = fmul contract <2 x double> %wide.load1047, %wide.load1049
  %173 = fmul contract <2 x double> %wide.load1048, %wide.load1050
  %174 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi1046, <2 x double> %172)
  %175 = call contract double @llvm.vector.reduce.fadd.v2f64(double %174, <2 x double> %173)
  %index.next1051 = add nuw i32 %index1045, 4
  %176 = icmp eq i32 %index.next1051, %n.vec1041
  br i1 %176, label %middle.block1036, label %vector.body1044, !llvm.loop !112

middle.block1036:                                 ; preds = %vector.body1044
  %cmp.n1043 = icmp eq i32 %160, %n.vec1041
  br i1 %cmp.n1043, label %omp_loop.header108.omp_loop.exit112_crit_edge, label %omp_loop.body110.preheader

omp_loop.body110.preheader:                       ; preds = %vector.scevcheck1035, %omp_loop.body110.lr.ph, %middle.block1036
  %omp_loop.iv114932.ph = phi i32 [ 0, %vector.scevcheck1035 ], [ 0, %omp_loop.body110.lr.ph ], [ %n.vec1041, %middle.block1036 ]
  %.ph1074 = phi double [ %.promoted930, %vector.scevcheck1035 ], [ %.promoted930, %omp_loop.body110.lr.ph ], [ %175, %middle.block1036 ]
  br label %omp_loop.body110

omp_loop.header108.omp_loop.exit112_crit_edge:    ; preds = %omp_loop.body110, %middle.block1036
  %.lcssa977 = phi double [ %175, %middle.block1036 ], [ %294, %omp_loop.body110 ]
  store double %.lcssa977, ptr %3, align 8, !tbaa !110
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
  %177 = fadd contract double %red.value.0132, %red.private.value.0133
  store double %177, ptr %loadgep_4, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num182, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize125

reduce.finalize125:                               ; preds = %omp_loop.exit112, %reduce.switch.nonatomic130
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  %178 = load double, ptr %loadgep_6, align 8, !tbaa !25
  %179 = load double, ptr %loadgep_4, align 8, !tbaa !25
  %180 = fdiv contract double %178, %179
  %181 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !89
  %182 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !91
  %183 = sub i32 %181, %182
  store double 0.000000e+00, ptr %4, align 8
  %184 = icmp ugt i32 %183, 2147483646
  store i32 0, ptr %p.lowerbound149, align 4
  %185 = select i1 %184, i32 -1, i32 %183
  store i32 %185, ptr %p.upperbound150, align 4
  store i32 1, ptr %p.stride151, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter148, ptr nonnull %p.lowerbound149, ptr nonnull %p.upperbound150, ptr nonnull %p.stride151, i32 1, i32 0)
  %186 = load i32, ptr %p.lowerbound149, align 4
  %187 = load i32, ptr %p.upperbound150, align 4
  %reass.sub953 = sub i32 %187, %186
  %omp_loop.cmp144935.not = icmp eq i32 %reass.sub953, -1
  br i1 %omp_loop.cmp144935.not, label %omp_loop.exit141, label %omp_loop.body139.lr.ph

omp_loop.body139.lr.ph:                           ; preds = %reduce.finalize125
  %.promoted934 = load double, ptr %4, align 8, !tbaa !93
  %188 = add i32 %186, 1
  %.unpack686 = load ptr, ptr @_QMcg_dataEz, align 8, !tbaa !75
  %.unpack693.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEz, i64 0, i32 7), align 8, !tbaa !75
  %.unpack698 = load ptr, ptr @_QMcg_dataEp, align 8, !tbaa !75
  %.unpack705.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEp, i64 0, i32 7), align 8, !tbaa !75
  %.unpack710 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack717.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  %.unpack722 = load ptr, ptr @_QMcg_dataEq, align 8, !tbaa !75
  %.unpack729.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEq, i64 0, i32 7), align 8, !tbaa !75
  %189 = add i32 %187, 1
  %190 = sub i32 %189, %186
  %min.iters.check1014 = icmp ult i32 %190, 4
  br i1 %min.iters.check1014, label %omp_loop.body139.preheader, label %vector.scevcheck1011

vector.scevcheck1011:                             ; preds = %omp_loop.body139.lr.ph
  %191 = add i32 %186, 1
  %192 = add i32 %187, 1
  %193 = icmp slt i32 %192, %191
  br i1 %193, label %omp_loop.body139.preheader, label %vector.ph1015

vector.ph1015:                                    ; preds = %vector.scevcheck1011
  %n.vec1017 = and i32 %190, -4
  %broadcast.splatinsert1027 = insertelement <2 x double> poison, double %180, i64 0
  %broadcast.splat1028 = shufflevector <2 x double> %broadcast.splatinsert1027, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %vector.ph1015
  %index1021 = phi i32 [ 0, %vector.ph1015 ], [ %index.next1033, %vector.body1020 ]
  %vec.phi1022 = phi double [ %.promoted934, %vector.ph1015 ], [ %219, %vector.body1020 ]
  %194 = add i32 %188, %index1021
  %195 = sext i32 %194 to i64
  %196 = sub nsw i64 %195, %.unpack693.unpack.unpack
  %197 = getelementptr double, ptr %.unpack686, i64 %196
  %198 = getelementptr i8, ptr %197, i64 16
  %wide.load1023 = load <2 x double>, ptr %197, align 8, !tbaa !80
  %wide.load1024 = load <2 x double>, ptr %198, align 8, !tbaa !80
  %199 = sub nsw i64 %195, %.unpack705.unpack.unpack
  %200 = getelementptr double, ptr %.unpack698, i64 %199
  %201 = getelementptr i8, ptr %200, i64 16
  %wide.load1025 = load <2 x double>, ptr %200, align 8, !tbaa !86
  %wide.load1026 = load <2 x double>, ptr %201, align 8, !tbaa !86
  %202 = fmul contract <2 x double> %broadcast.splat1028, %wide.load1025
  %203 = fmul contract <2 x double> %broadcast.splat1028, %wide.load1026
  %204 = fadd contract <2 x double> %wide.load1023, %202
  %205 = fadd contract <2 x double> %wide.load1024, %203
  store <2 x double> %204, ptr %197, align 8, !tbaa !80
  store <2 x double> %205, ptr %198, align 8, !tbaa !80
  %206 = sub nsw i64 %195, %.unpack717.unpack.unpack
  %207 = getelementptr double, ptr %.unpack710, i64 %206
  %208 = getelementptr i8, ptr %207, i64 16
  %wide.load1029 = load <2 x double>, ptr %207, align 8, !tbaa !84
  %wide.load1030 = load <2 x double>, ptr %208, align 8, !tbaa !84
  %209 = sub nsw i64 %195, %.unpack729.unpack.unpack
  %210 = getelementptr double, ptr %.unpack722, i64 %209
  %211 = getelementptr i8, ptr %210, i64 16
  %wide.load1031 = load <2 x double>, ptr %210, align 8, !tbaa !77
  %wide.load1032 = load <2 x double>, ptr %211, align 8, !tbaa !77
  %212 = fmul contract <2 x double> %broadcast.splat1028, %wide.load1031
  %213 = fmul contract <2 x double> %broadcast.splat1028, %wide.load1032
  %214 = fsub contract <2 x double> %wide.load1029, %212
  %215 = fsub contract <2 x double> %wide.load1030, %213
  store <2 x double> %214, ptr %207, align 8, !tbaa !84
  store <2 x double> %215, ptr %208, align 8, !tbaa !84
  %216 = fmul contract <2 x double> %214, %214
  %217 = fmul contract <2 x double> %215, %215
  %218 = call contract double @llvm.vector.reduce.fadd.v2f64(double %vec.phi1022, <2 x double> %216)
  %219 = call contract double @llvm.vector.reduce.fadd.v2f64(double %218, <2 x double> %217)
  %index.next1033 = add nuw i32 %index1021, 4
  %220 = icmp eq i32 %index.next1033, %n.vec1017
  br i1 %220, label %middle.block1012, label %vector.body1020, !llvm.loop !113

middle.block1012:                                 ; preds = %vector.body1020
  %cmp.n1019 = icmp eq i32 %190, %n.vec1017
  br i1 %cmp.n1019, label %omp_loop.header137.omp_loop.exit141_crit_edge, label %omp_loop.body139.preheader

omp_loop.body139.preheader:                       ; preds = %vector.scevcheck1011, %omp_loop.body139.lr.ph, %middle.block1012
  %omp_loop.iv143936.ph = phi i32 [ 0, %vector.scevcheck1011 ], [ 0, %omp_loop.body139.lr.ph ], [ %n.vec1017, %middle.block1012 ]
  %.ph1073 = phi double [ %.promoted934, %vector.scevcheck1011 ], [ %.promoted934, %omp_loop.body139.lr.ph ], [ %219, %middle.block1012 ]
  br label %omp_loop.body139

omp_loop.header137.omp_loop.exit141_crit_edge:    ; preds = %omp_loop.body139, %middle.block1012
  %.lcssa978 = phi double [ %219, %middle.block1012 ], [ %283, %omp_loop.body139 ]
  store double %.lcssa978, ptr %4, align 8, !tbaa !93
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
  %221 = fadd contract double %red.value.0161, %red.private.value.0162
  store double %221, ptr %loadgep_, align 8
  call void @__kmpc_end_reduce(ptr nonnull @1, i32 %omp_global_thread_num182, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %reduce.finalize154

reduce.finalize154:                               ; preds = %omp_loop.exit141, %reduce.switch.nonatomic159
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  %222 = load double, ptr %loadgep_, align 8, !tbaa !25
  %223 = load double, ptr %loadgep_6, align 8, !tbaa !25
  %224 = fdiv contract double %222, %223
  %225 = load i32, ptr @_QMcg_dataElastcol, align 4, !tbaa !89
  %226 = load i32, ptr @_QMcg_dataEfirstcol, align 4, !tbaa !91
  %227 = sub i32 %225, %226
  %228 = icmp ugt i32 %227, 2147483646
  store i32 0, ptr %p.lowerbound178, align 4
  %229 = select i1 %228, i32 -1, i32 %227
  store i32 %229, ptr %p.upperbound179, align 4
  store i32 1, ptr %p.stride180, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num182, i32 34, ptr nonnull %p.lastiter177, ptr nonnull %p.lowerbound178, ptr nonnull %p.upperbound179, ptr nonnull %p.stride180, i32 1, i32 0)
  %230 = load i32, ptr %p.lowerbound178, align 4
  %231 = load i32, ptr %p.upperbound179, align 4
  %reass.sub954 = sub i32 %231, %230
  %omp_loop.cmp173938.not = icmp eq i32 %reass.sub954, -1
  br i1 %omp_loop.cmp173938.not, label %omp_loop.exit170, label %omp_loop.body168.lr.ph

omp_loop.body168.lr.ph:                           ; preds = %reduce.finalize154
  %232 = add i32 %230, 1
  %.unpack662 = load ptr, ptr @_QMcg_dataEr, align 8, !tbaa !75
  %.unpack669.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEr, i64 0, i32 7), align 8, !tbaa !75
  %.unpack674 = load ptr, ptr @_QMcg_dataEp, align 8, !tbaa !75
  %.unpack681.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr @_QMcg_dataEp, i64 0, i32 7), align 8, !tbaa !75
  %233 = add i32 %231, 1
  %234 = sub i32 %233, %230
  %min.iters.check998 = icmp ult i32 %234, 4
  br i1 %min.iters.check998, label %omp_loop.body168.preheader, label %vector.scevcheck995

vector.scevcheck995:                              ; preds = %omp_loop.body168.lr.ph
  %235 = add i32 %230, 1
  %236 = add i32 %231, 1
  %237 = icmp slt i32 %236, %235
  br i1 %237, label %omp_loop.body168.preheader, label %vector.ph999

vector.ph999:                                     ; preds = %vector.scevcheck995
  %n.vec1001 = and i32 %234, -4
  %broadcast.splatinsert = insertelement <2 x double> poison, double %224, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph999
  %index1005 = phi i32 [ 0, %vector.ph999 ], [ %index.next1010, %vector.body1004 ]
  %238 = add i32 %232, %index1005
  %239 = sext i32 %238 to i64
  %240 = sub nsw i64 %239, %.unpack669.unpack.unpack
  %241 = getelementptr double, ptr %.unpack662, i64 %240
  %242 = getelementptr i8, ptr %241, i64 16
  %wide.load1006 = load <2 x double>, ptr %241, align 8, !tbaa !84
  %wide.load1007 = load <2 x double>, ptr %242, align 8, !tbaa !84
  %243 = sub nsw i64 %239, %.unpack681.unpack.unpack
  %244 = getelementptr double, ptr %.unpack674, i64 %243
  %245 = getelementptr i8, ptr %244, i64 16
  %wide.load1008 = load <2 x double>, ptr %244, align 8, !tbaa !86
  %wide.load1009 = load <2 x double>, ptr %245, align 8, !tbaa !86
  %246 = fmul contract <2 x double> %broadcast.splat, %wide.load1008
  %247 = fmul contract <2 x double> %broadcast.splat, %wide.load1009
  %248 = fadd contract <2 x double> %wide.load1006, %246
  %249 = fadd contract <2 x double> %wide.load1007, %247
  store <2 x double> %248, ptr %244, align 8, !tbaa !86
  store <2 x double> %249, ptr %245, align 8, !tbaa !86
  %index.next1010 = add nuw i32 %index1005, 4
  %250 = icmp eq i32 %index.next1010, %n.vec1001
  br i1 %250, label %middle.block996, label %vector.body1004, !llvm.loop !114

middle.block996:                                  ; preds = %vector.body1004
  %cmp.n1003 = icmp eq i32 %234, %n.vec1001
  br i1 %cmp.n1003, label %omp_loop.exit170, label %omp_loop.body168.preheader

omp_loop.body168.preheader:                       ; preds = %vector.scevcheck995, %omp_loop.body168.lr.ph, %middle.block996
  %omp_loop.iv172939.ph = phi i32 [ 0, %vector.scevcheck995 ], [ 0, %omp_loop.body168.lr.ph ], [ %n.vec1001, %middle.block996 ]
  br label %omp_loop.body168

omp_loop.exit170:                                 ; preds = %omp_loop.body168, %middle.block996, %reduce.finalize154
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num182)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num182)
  %251 = add nsw i64 %142, -1
  %252 = icmp ugt i64 %142, 1
  br i1 %252, label %omp.par.region5, label %omp.par.region6

omp_loop.body168:                                 ; preds = %omp_loop.body168.preheader, %omp_loop.body168
  %omp_loop.iv172939 = phi i32 [ %omp_loop.next174, %omp_loop.body168 ], [ %omp_loop.iv172939.ph, %omp_loop.body168.preheader ]
  %253 = add i32 %232, %omp_loop.iv172939
  %254 = sext i32 %253 to i64
  %255 = sub nsw i64 %254, %.unpack669.unpack.unpack
  %256 = getelementptr double, ptr %.unpack662, i64 %255
  %257 = load double, ptr %256, align 8, !tbaa !84
  %258 = sub nsw i64 %254, %.unpack681.unpack.unpack
  %259 = getelementptr double, ptr %.unpack674, i64 %258
  %260 = load double, ptr %259, align 8, !tbaa !86
  %261 = fmul contract double %224, %260
  %262 = fadd contract double %257, %261
  store double %262, ptr %259, align 8, !tbaa !86
  %omp_loop.next174 = add nuw i32 %omp_loop.iv172939, 1
  %exitcond967.not = icmp eq i32 %omp_loop.iv172939, %reass.sub954
  br i1 %exitcond967.not, label %omp_loop.exit170, label %omp_loop.body168, !llvm.loop !115

omp_loop.body139:                                 ; preds = %omp_loop.body139.preheader, %omp_loop.body139
  %omp_loop.iv143936 = phi i32 [ %omp_loop.next145, %omp_loop.body139 ], [ %omp_loop.iv143936.ph, %omp_loop.body139.preheader ]
  %263 = phi double [ %283, %omp_loop.body139 ], [ %.ph1073, %omp_loop.body139.preheader ]
  %264 = add i32 %188, %omp_loop.iv143936
  %265 = sext i32 %264 to i64
  %266 = sub nsw i64 %265, %.unpack693.unpack.unpack
  %267 = getelementptr double, ptr %.unpack686, i64 %266
  %268 = load double, ptr %267, align 8, !tbaa !80
  %269 = sub nsw i64 %265, %.unpack705.unpack.unpack
  %270 = getelementptr double, ptr %.unpack698, i64 %269
  %271 = load double, ptr %270, align 8, !tbaa !86
  %272 = fmul contract double %180, %271
  %273 = fadd contract double %268, %272
  store double %273, ptr %267, align 8, !tbaa !80
  %274 = sub nsw i64 %265, %.unpack717.unpack.unpack
  %275 = getelementptr double, ptr %.unpack710, i64 %274
  %276 = load double, ptr %275, align 8, !tbaa !84
  %277 = sub nsw i64 %265, %.unpack729.unpack.unpack
  %278 = getelementptr double, ptr %.unpack722, i64 %277
  %279 = load double, ptr %278, align 8, !tbaa !77
  %280 = fmul contract double %180, %279
  %281 = fsub contract double %276, %280
  store double %281, ptr %275, align 8, !tbaa !84
  %282 = fmul contract double %281, %281
  %283 = fadd contract double %263, %282
  %omp_loop.next145 = add nuw i32 %omp_loop.iv143936, 1
  %exitcond966.not = icmp eq i32 %omp_loop.iv143936, %reass.sub953
  br i1 %exitcond966.not, label %omp_loop.header137.omp_loop.exit141_crit_edge, label %omp_loop.body139, !llvm.loop !116

omp_loop.body110:                                 ; preds = %omp_loop.body110.preheader, %omp_loop.body110
  %omp_loop.iv114932 = phi i32 [ %omp_loop.next116, %omp_loop.body110 ], [ %omp_loop.iv114932.ph, %omp_loop.body110.preheader ]
  %284 = phi double [ %294, %omp_loop.body110 ], [ %.ph1074, %omp_loop.body110.preheader ]
  %285 = add i32 %158, %omp_loop.iv114932
  %286 = sext i32 %285 to i64
  %287 = sub nsw i64 %286, %.unpack753.unpack.unpack
  %288 = getelementptr double, ptr %.unpack746, i64 %287
  %289 = load double, ptr %288, align 8, !tbaa !86
  %290 = sub nsw i64 %286, %.unpack765.unpack.unpack
  %291 = getelementptr double, ptr %.unpack758, i64 %290
  %292 = load double, ptr %291, align 8, !tbaa !77
  %293 = fmul contract double %289, %292
  %294 = fadd contract double %284, %293
  %omp_loop.next116 = add nuw i32 %omp_loop.iv114932, 1
  %exitcond965.not = icmp eq i32 %omp_loop.iv114932, %reass.sub952
  br i1 %exitcond965.not, label %omp_loop.header108.omp_loop.exit112_crit_edge, label %omp_loop.body110, !llvm.loop !117

omp_loop.body88:                                  ; preds = %omp_loop.body88.lr.ph, %omp.wsloop.region99
  %omp_loop.iv92929 = phi i32 [ 0, %omp_loop.body88.lr.ph ], [ %omp_loop.next94, %omp.wsloop.region99 ]
  %295 = add i32 %omp_loop.iv92929, %149
  %296 = add i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = sub nsw i64 %297, %.unpack777.unpack.unpack
  %299 = getelementptr i32, ptr %.unpack770, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !104
  %301 = sext i32 %300 to i64
  %302 = add i32 %295, 2
  %303 = sext i32 %302 to i64
  %304 = sub nsw i64 %303, %.unpack777.unpack.unpack
  %305 = getelementptr i32, ptr %.unpack770, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !104
  %307 = add i32 %306, -1
  %308 = sext i32 %307 to i64
  %reass.sub951 = sub nsw i64 %308, %301
  %309 = icmp sgt i64 %reass.sub951, -1
  br i1 %309, label %omp.wsloop.region98.preheader, label %omp.wsloop.region99

omp.wsloop.region98.preheader:                    ; preds = %omp_loop.body88
  %310 = add nuw nsw i64 %reass.sub951, 1
  br label %omp.wsloop.region98

omp.wsloop.region99:                              ; preds = %omp.wsloop.region98, %omp_loop.body88
  %.1.lcssa = phi double [ 0.000000e+00, %omp_loop.body88 ], [ %327, %omp.wsloop.region98 ]
  %311 = sub nsw i64 %297, %.unpack789.unpack.unpack
  %312 = getelementptr double, ptr %.unpack782, i64 %311
  store double %.1.lcssa, ptr %312, align 8, !tbaa !77
  %omp_loop.next94 = add nuw i32 %omp_loop.iv92929, 1
  %exitcond964.not = icmp eq i32 %omp_loop.iv92929, %reass.sub950
  br i1 %exitcond964.not, label %omp_loop.exit90, label %omp_loop.body88

omp.wsloop.region98:                              ; preds = %omp.wsloop.region98.preheader, %omp.wsloop.region98
  %313 = phi i64 [ %329, %omp.wsloop.region98 ], [ %310, %omp.wsloop.region98.preheader ]
  %314 = phi i32 [ %328, %omp.wsloop.region98 ], [ %300, %omp.wsloop.region98.preheader ]
  %.1927 = phi double [ %327, %omp.wsloop.region98 ], [ 0.000000e+00, %omp.wsloop.region98.preheader ]
  %315 = sext i32 %314 to i64
  %316 = sub nsw i64 %315, %.unpack801.unpack.unpack
  %317 = getelementptr double, ptr %.unpack794, i64 %316
  %318 = load double, ptr %317, align 8, !tbaa !106
  %319 = sub nsw i64 %315, %.unpack825.unpack.unpack
  %320 = getelementptr i32, ptr %.unpack818, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !108
  %322 = sext i32 %321 to i64
  %323 = sub nsw i64 %322, %.unpack813.unpack.unpack
  %324 = getelementptr double, ptr %.unpack806, i64 %323
  %325 = load double, ptr %324, align 8, !tbaa !86
  %326 = fmul contract double %318, %325
  %327 = fadd contract double %.1927, %326
  %328 = add i32 %314, 1
  %329 = add nsw i64 %313, -1
  %330 = icmp ugt i64 %313, 1
  br i1 %330, label %omp.wsloop.region98, label %omp.wsloop.region99

omp.master.region:                                ; preds = %omp.par.region5
  %331 = load double, ptr %loadgep_, align 8, !tbaa !25
  store double %331, ptr %loadgep_6, align 8, !tbaa !25
  store double 0.000000e+00, ptr %loadgep_4, align 8, !tbaa !25
  store double 0.000000e+00, ptr %loadgep_, align 8, !tbaa !25
  call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num182)
  br label %omp_region.end

omp_loop.body14:                                  ; preds = %omp_loop.body14.preheader, %omp_loop.body14
  %omp_loop.iv18926 = phi i32 [ %omp_loop.next20, %omp_loop.body14 ], [ %omp_loop.iv18926.ph, %omp_loop.body14.preheader ]
  %332 = phi double [ %339, %omp_loop.body14 ], [ %.ph1080, %omp_loop.body14.preheader ]
  %333 = add i32 %41, %omp_loop.iv18926
  %334 = sext i32 %333 to i64
  %335 = sub nsw i64 %334, %.unpack837.unpack.unpack
  %336 = getelementptr double, ptr %.unpack830, i64 %335
  %337 = load double, ptr %336, align 8, !tbaa !84
  %338 = fmul contract double %337, %337
  %339 = fadd contract double %332, %338
  %omp_loop.next20 = add nuw i32 %omp_loop.iv18926, 1
  %exitcond963.not = icmp eq i32 %omp_loop.iv18926, %reass.sub949
  br i1 %exitcond963.not, label %omp_loop.header12.omp_loop.exit16_crit_edge, label %omp_loop.body14, !llvm.loop !118

omp_loop.body:                                    ; preds = %omp_loop.body.preheader, %omp_loop.body
  %omp_loop.iv924 = phi i32 [ %omp_loop.next, %omp_loop.body ], [ %omp_loop.iv924.ph, %omp_loop.body.preheader ]
  %340 = add i32 %10, %omp_loop.iv924
  %341 = sext i32 %340 to i64
  %342 = sub nsw i64 %341, %.unpack849.unpack.unpack
  %343 = getelementptr double, ptr %.unpack842, i64 %342
  store double 0.000000e+00, ptr %343, align 8, !tbaa !77
  %344 = sub nsw i64 %341, %.unpack861.unpack.unpack
  %345 = getelementptr double, ptr %.unpack854, i64 %344
  store double 0.000000e+00, ptr %345, align 8, !tbaa !80
  %346 = sub nsw i64 %341, %.unpack873.unpack.unpack
  %347 = getelementptr double, ptr %.unpack866, i64 %346
  %348 = load double, ptr %347, align 8, !tbaa !82
  %349 = sub nsw i64 %341, %.unpack885.unpack.unpack
  %350 = getelementptr double, ptr %.unpack878, i64 %349
  store double %348, ptr %350, align 8, !tbaa !84
  %351 = sub nsw i64 %341, %.unpack909.unpack.unpack
  %352 = getelementptr double, ptr %.unpack902, i64 %351
  store double %348, ptr %352, align 8, !tbaa !86
  %omp_loop.next = add nuw i32 %omp_loop.iv924, 1
  %exitcond.not = icmp eq i32 %omp_loop.iv924, %reass.sub
  br i1 %exitcond.not, label %omp_loop.exit, label %omp_loop.body, !llvm.loop !119
}

define void @makea_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture writeonly %2, ptr nocapture writeonly %3, ptr nocapture %4, ptr nocapture readonly %5, ptr nocapture readonly %6, ptr nocapture readnone %7, ptr nocapture readnone %8, ptr nocapture %9, ptr nocapture %10, ptr nocapture %11, ptr nocapture %12, ptr nocapture %13) local_unnamed_addr #0 {
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %18 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMtinfoEihigh, i64 4, ptr nonnull @_QMtinfoEihigh.cache)
  %19 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMtinfoEilow, i64 4, ptr nonnull @_QMtinfoEilow.cache)
  %20 = alloca [16 x i32], align 16
  %21 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMtinfoEmyid, i64 4, ptr nonnull @_QMtinfoEmyid.cache)
  %22 = alloca i32, align 4
  %23 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMtinfoEnum_threads, i64 4, ptr nonnull @_QMtinfoEnum_threads.cache)
  %24 = alloca i32, align 4
  %25 = alloca [16 x double], align 8
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
  %57 = getelementptr inbounds i8, ptr %25, i64 120
  %58 = getelementptr inbounds i8, ptr %20, i64 60
  %invariant.gep = getelementptr i8, ptr %10, i64 -64
  %invariant.gep23 = getelementptr i8, ptr %11, i64 -128
  %narrow = add nuw i32 %spec.store.select, 1
  %59 = zext i32 %narrow to i64
  %60 = getelementptr inbounds i8, ptr %20, i64 16
  %61 = getelementptr inbounds i8, ptr %25, i64 32
  %62 = getelementptr inbounds i8, ptr %20, i64 32
  %63 = getelementptr inbounds i8, ptr %20, i64 48
  %64 = getelementptr inbounds i8, ptr %25, i64 64
  %65 = getelementptr inbounds i8, ptr %25, i64 96
  br label %66

66:                                               ; preds = %.lr.ph28, %.loopexit
  %indvars.iv35 = phi i64 [ 1, %.lr.ph28 ], [ %indvars.iv.next36, %.loopexit ]
  store i32 15, ptr %24, align 4, !tbaa !126
  call void @sprnvc_(ptr nonnull %0, ptr nonnull %24, ptr nonnull %22, ptr nonnull %25, ptr nonnull %20)
  %67 = load i32, ptr %19, align 4, !tbaa !126
  %68 = sext i32 %67 to i64
  %.not = icmp slt i64 %indvars.iv35, %68
  br i1 %.not, label %.loopexit, label %.outer.i

.outer.i:                                         ; preds = %66, %.thread.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next9.i, %.thread.i ], [ 1, %66 ]
  %69 = phi i1 [ false, %.thread.i ], [ true, %66 ]
  br label %70

70:                                               ; preds = %76, %.outer.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %76 ], [ %indvars.iv.ph.i, %.outer.i ]
  %71 = add nsw i64 %indvars.iv.i, -1
  %72 = getelementptr i32, ptr %20, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !127
  %74 = zext i32 %73 to i64
  %75 = icmp eq i64 %indvars.iv35, %74
  br i1 %75, label %.thread.i, label %76

76:                                               ; preds = %70
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %._crit_edge.i, label %70

.thread.i:                                        ; preds = %70
  %77 = getelementptr double, ptr %25, i64 %71
  store double 5.000000e-01, ptr %77, align 8, !tbaa !133
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not10.i = icmp eq i64 %indvars.iv.next9.i, 16
  br i1 %exitcond.not10.i, label %.lr.ph, label %.outer.i

._crit_edge.i:                                    ; preds = %76
  br i1 %69, label %._crit_edge.thread.i, label %.lr.ph

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  store i32 16, ptr %24, align 4, !tbaa !135
  store double 5.000000e-01, ptr %57, align 8, !tbaa !133
  %78 = trunc nuw nsw i64 %indvars.iv35 to i32
  store i32 %78, ptr %58, align 4, !tbaa !127
  br label %.lr.ph

.lr.ph:                                           ; preds = %.thread.i, %._crit_edge.thread.i, %._crit_edge.i
  %79 = phi i32 [ 15, %._crit_edge.i ], [ 16, %._crit_edge.thread.i ], [ 15, %.thread.i ]
  %gep26 = getelementptr i32, ptr %invariant.gep25, i64 %indvars.iv35
  store i32 %79, ptr %gep26, align 4, !tbaa !137
  %80 = shl nsw i64 %indvars.iv35, 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %80
  %gep24 = getelementptr double, ptr %invariant.gep23, i64 %80
  %narrow39 = add nuw nsw i32 %79, 1
  %81 = zext nneg i32 %narrow39 to i64
  %82 = zext nneg i32 %79 to i64
  %n.vec = and i64 %82, 24
  %ind.end = or disjoint i64 %n.vec, 1
  %wide.load = load <4 x i32>, ptr %20, align 16, !tbaa !126
  %wide.load50 = load <4 x i32>, ptr %60, align 16, !tbaa !126
  %83 = getelementptr i8, ptr %gep, i64 16
  store <4 x i32> %wide.load, ptr %gep, align 4, !tbaa !139
  store <4 x i32> %wide.load50, ptr %83, align 4, !tbaa !139
  %wide.load51 = load <4 x double>, ptr %25, align 8, !tbaa !126
  %wide.load52 = load <4 x double>, ptr %61, align 8, !tbaa !126
  %84 = getelementptr i8, ptr %gep24, i64 32
  store <4 x double> %wide.load51, ptr %gep24, align 8, !tbaa !141
  store <4 x double> %wide.load52, ptr %84, align 8, !tbaa !141
  %85 = icmp eq i64 %n.vec, 8
  br i1 %85, label %middle.block, label %vector.body.1, !llvm.loop !143

vector.body.1:                                    ; preds = %.lr.ph
  %wide.load.1 = load <4 x i32>, ptr %62, align 16, !tbaa !126
  %wide.load50.1 = load <4 x i32>, ptr %63, align 16, !tbaa !126
  %86 = getelementptr i8, ptr %gep, i64 32
  %87 = getelementptr i8, ptr %gep, i64 48
  store <4 x i32> %wide.load.1, ptr %86, align 4, !tbaa !139
  store <4 x i32> %wide.load50.1, ptr %87, align 4, !tbaa !139
  %wide.load51.1 = load <4 x double>, ptr %64, align 8, !tbaa !126
  %wide.load52.1 = load <4 x double>, ptr %65, align 8, !tbaa !126
  %88 = getelementptr i8, ptr %gep24, i64 64
  %89 = getelementptr i8, ptr %gep24, i64 96
  store <4 x double> %wide.load51.1, ptr %88, align 8, !tbaa !141
  store <4 x double> %wide.load52.1, ptr %89, align 8, !tbaa !141
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %.lr.ph
  %cmp.n = icmp eq i64 %n.vec, %82
  br i1 %cmp.n, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %ind.end, %middle.block ]
  %90 = add nsw i64 %indvars.iv, -1
  %91 = getelementptr i32, ptr %20, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !126
  %93 = getelementptr i32, ptr %gep, i64 %90
  store i32 %92, ptr %93, align 4, !tbaa !139
  %94 = getelementptr double, ptr %25, i64 %90
  %95 = load double, ptr %94, align 8, !tbaa !126
  %96 = getelementptr double, ptr %gep24, i64 %90
  store double %95, ptr %96, align 8, !tbaa !141
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %81
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !144

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %66
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, %59
  br i1 %exitcond38.not, label %._crit_edge, label %66

._crit_edge:                                      ; preds = %.loopexit, %45
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num4)
  %97 = load i32, ptr %1, align 4, !tbaa !145
  %98 = add i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr i32, ptr %13, i64 %99
  %101 = getelementptr i8, ptr %100, i64 -4
  store i32 15, ptr %17, align 4, !tbaa !126
  store double 1.000000e-01, ptr %16, align 8, !tbaa !126
  store double 1.100000e+02, ptr %15, align 8, !tbaa !126
  call void @sparse_(ptr %2, ptr %3, ptr %4, ptr nonnull %0, ptr nonnull %1, ptr nonnull %17, ptr %9, ptr %10, ptr %11, ptr %5, ptr %6, ptr %12, ptr %13, ptr %101, ptr nonnull %16, ptr nonnull %15)
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
  %21 = load i32, ptr %5, align 4, !tbaa !147
  %22 = add i32 %21, 1
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = zext nneg i32 %23 to i64
  %25 = load i32, ptr %10, align 4, !tbaa !153
  %26 = load i32, ptr %9, align 4, !tbaa !155
  %27 = sub i32 %25, %26
  %28 = load i32, ptr %18, align 4, !tbaa !157
  %29 = add i32 %28, 1
  %30 = load i32, ptr %17, align 4, !tbaa !157
  %31 = add i32 %30, 1
  %32 = sext i32 %29 to i64
  %33 = sext i32 %31 to i64
  %reass.sub = sub nsw i64 %33, %32
  %invariant.gep = getelementptr i8, ptr %2, i64 -4
  %34 = icmp sgt i64 %reass.sub, -1
  br i1 %34, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %16
  %35 = add nuw nsw i64 %reass.sub, 1
  %36 = add nsw i64 %33, 1
  %37 = sub nsw i64 %36, %32
  %min.iters.check = icmp ult i64 %37, 20
  br i1 %min.iters.check, label %.lr.ph.preheader601, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %38 = sub nsw i64 %33, %32
  %39 = trunc i64 %38 to i32
  %40 = add i32 %29, %39
  %41 = icmp slt i32 %40, %29
  %42 = icmp ugt i64 %38, 4294967295
  %43 = or i1 %41, %42
  br i1 %43, label %.lr.ph.preheader601, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %37, -8
  %ind.end = sub nsw i64 %35, %n.vec
  %.cast = trunc i64 %n.vec to i32
  %ind.end418 = add i32 %29, %.cast
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %.cast420 = trunc i64 %index to i32
  %offset.idx = add i32 %29, %.cast420
  %44 = sext i32 %offset.idx to i64
  %45 = getelementptr i32, ptr %invariant.gep, i64 %44
  %46 = getelementptr i8, ptr %45, i64 16
  store <4 x i32> zeroinitializer, ptr %45, align 4, !tbaa !158
  store <4 x i32> zeroinitializer, ptr %46, align 4, !tbaa !158
  %index.next = add nuw i64 %index, 8
  %47 = icmp eq i64 %index.next, %n.vec
  br i1 %47, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %37, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader601

.lr.ph.preheader601:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.ph602 = phi i64 [ %35, %vector.scevcheck ], [ %35, %.lr.ph.preheader ], [ %ind.end, %middle.block ]
  %.ph603 = phi i32 [ %29, %vector.scevcheck ], [ %29, %.lr.ph.preheader ], [ %ind.end418, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader601, %.lr.ph
  %48 = phi i64 [ %52, %.lr.ph ], [ %.ph602, %.lr.ph.preheader601 ]
  %49 = phi i32 [ %51, %.lr.ph ], [ %.ph603, %.lr.ph.preheader601 ]
  %50 = sext i32 %49 to i64
  %gep = getelementptr i32, ptr %invariant.gep, i64 %50
  store i32 0, ptr %gep, align 4, !tbaa !158
  %51 = add i32 %49, 1
  %52 = add nsw i64 %48, -1
  %53 = icmp ugt i64 %48, 1
  br i1 %53, label %.lr.ph, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %16
  %54 = load i32, ptr %3, align 4, !tbaa !162
  %invariant.gep214 = getelementptr i8, ptr %7, i64 -4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %.lr.ph217, label %._crit_edge218

.lr.ph217:                                        ; preds = %._crit_edge
  %narrow = add nuw i32 %54, 1
  %56 = zext i32 %narrow to i64
  br label %57

57:                                               ; preds = %.lr.ph217, %._crit_edge211
  %indvars.iv346 = phi i64 [ 1, %.lr.ph217 ], [ %indvars.iv.next347, %._crit_edge211 ]
  %58 = add nsw i64 %indvars.iv346, -1
  %59 = getelementptr i32, ptr %6, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !164
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %57
  %62 = mul nuw nsw i64 %58, %24
  %gep215 = getelementptr i32, ptr %invariant.gep214, i64 %62
  %narrow374 = add nuw i32 %60, 1
  %63 = zext i32 %narrow374 to i64
  br label %64

64:                                               ; preds = %.lr.ph210, %76
  %indvars.iv = phi i64 [ 1, %.lr.ph210 ], [ %indvars.iv.next, %76 ]
  %gep213 = getelementptr i32, ptr %gep215, i64 %indvars.iv
  %65 = load i32, ptr %gep213, align 4, !tbaa !166
  %66 = load i32, ptr %18, align 4, !tbaa !157
  %67 = icmp sge i32 %65, %66
  %68 = load i32, ptr %17, align 4, !tbaa !157
  %69 = icmp sle i32 %65, %68
  %70 = and i1 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = add i32 %65, 1
  %73 = sext i32 %72 to i64
  %gep208 = getelementptr i32, ptr %invariant.gep, i64 %73
  %74 = load i32, ptr %gep208, align 4, !tbaa !158
  %75 = add i32 %74, %60
  store i32 %75, ptr %gep208, align 4, !tbaa !158
  br label %76

76:                                               ; preds = %71, %64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %63
  br i1 %exitcond.not, label %._crit_edge211, label %64

._crit_edge211:                                   ; preds = %76, %57
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1
  %exitcond349.not = icmp eq i64 %indvars.iv.next347, %56
  br i1 %exitcond349.not, label %._crit_edge218, label %57

._crit_edge218:                                   ; preds = %._crit_edge211, %._crit_edge
  %77 = load i32, ptr %19, align 4, !tbaa !157
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %._crit_edge218
  store i32 1, ptr %2, align 4, !tbaa !158
  br label %80

80:                                               ; preds = %79, %._crit_edge218
  %.0158 = phi i32 [ 1, %79 ], [ %29, %._crit_edge218 ]
  %81 = add i32 %.0158, 1
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %33, 1
  %84 = sub nsw i64 %83, %82
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %.lr.ph224.preheader, label %._crit_edge225

.lr.ph224.preheader:                              ; preds = %80
  %.phi.trans.insert = sext i32 %.0158 to i64
  %gep222.phi.trans.insert = getelementptr i32, ptr %invariant.gep, i64 %.phi.trans.insert
  %.pre = load i32, ptr %gep222.phi.trans.insert, align 4, !tbaa !158
  br label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %.lr.ph224
  %86 = phi i32 [ %91, %.lr.ph224 ], [ %.pre, %.lr.ph224.preheader ]
  %87 = phi i64 [ %93, %.lr.ph224 ], [ %84, %.lr.ph224.preheader ]
  %88 = phi i32 [ %92, %.lr.ph224 ], [ %81, %.lr.ph224.preheader ]
  %89 = sext i32 %88 to i64
  %gep220 = getelementptr i32, ptr %invariant.gep, i64 %89
  %90 = load i32, ptr %gep220, align 4, !tbaa !158
  %91 = add i32 %86, %90
  store i32 %91, ptr %gep220, align 4, !tbaa !158
  %92 = add i32 %88, 1
  %93 = add nsw i64 %87, -1
  %94 = icmp ugt i64 %87, 1
  br i1 %94, label %.lr.ph224, label %._crit_edge225

._crit_edge225:                                   ; preds = %.lr.ph224, %80
  %95 = load i32, ptr %19, align 4, !tbaa !157
  %96 = load i32, ptr %20, align 4, !tbaa !157
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %._crit_edge225
  %99 = getelementptr i32, ptr %2, i64 %33
  %100 = getelementptr i8, ptr %99, i64 -4
  %101 = load i32, ptr %100, align 4, !tbaa !158
  %102 = sext i32 %95 to i64
  %103 = getelementptr i32, ptr @_QMtinfoElast_n, i64 %102
  store i32 %101, ptr %103, align 4, !tbaa !168
  br label %104

104:                                              ; preds = %98, %._crit_edge225
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %105 = load i32, ptr %19, align 4, !tbaa !157
  %106 = load i32, ptr %20, align 4, !tbaa !157
  %107 = icmp slt i32 %105, %106
  %108 = add i32 %105, -1
  %109 = icmp sgt i32 %108, -1
  %or.cond = and i1 %107, %109
  br i1 %or.cond, label %.lr.ph228.preheader, label %.thread

.lr.ph228.preheader:                              ; preds = %104
  %110 = zext i32 %105 to i64
  %111 = add nuw nsw i64 %110, 1
  %112 = icmp ne i32 %105, 0
  %umin421.neg = sext i1 %112 to i64
  %113 = add nsw i64 %111, %umin421.neg
  %min.iters.check424 = icmp ult i64 %113, 8
  br i1 %min.iters.check424, label %.lr.ph228.preheader596, label %vector.ph425

vector.ph425:                                     ; preds = %.lr.ph228.preheader
  %n.vec427 = and i64 %113, -8
  %ind.end429 = sub nsw i64 %110, %n.vec427
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph425
  %index433 = phi i64 [ 0, %vector.ph425 ], [ %index.next436, %vector.body432 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph425 ], [ %116, %vector.body432 ]
  %vec.phi434 = phi <4 x i32> [ zeroinitializer, %vector.ph425 ], [ %117, %vector.body432 ]
  %114 = getelementptr i32, ptr @_QMtinfoElast_n, i64 %index433
  %115 = getelementptr i8, ptr %114, i64 16
  %wide.load = load <4 x i32>, ptr %114, align 4, !tbaa !168
  %wide.load435 = load <4 x i32>, ptr %115, align 4, !tbaa !168
  %116 = add <4 x i32> %wide.load, %vec.phi
  %117 = add <4 x i32> %wide.load435, %vec.phi434
  %index.next436 = add nuw i64 %index433, 8
  %118 = icmp eq i64 %index.next436, %n.vec427
  br i1 %118, label %middle.block422, label %vector.body432, !llvm.loop !171

middle.block422:                                  ; preds = %vector.body432
  %bin.rdx = add <4 x i32> %117, %116
  %119 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %cmp.n431 = icmp eq i64 %113, %n.vec427
  br i1 %cmp.n431, label %._crit_edge229, label %.lr.ph228.preheader596

.lr.ph228.preheader596:                           ; preds = %.lr.ph228.preheader, %middle.block422
  %indvars.iv350.ph = phi i64 [ 0, %.lr.ph228.preheader ], [ %n.vec427, %middle.block422 ]
  %.ph597 = phi i64 [ %110, %.lr.ph228.preheader ], [ %ind.end429, %middle.block422 ]
  %.0152226.ph = phi i32 [ 0, %.lr.ph228.preheader ], [ %119, %middle.block422 ]
  br label %.lr.ph228

.lr.ph228:                                        ; preds = %.lr.ph228.preheader596, %.lr.ph228
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %.lr.ph228 ], [ %indvars.iv350.ph, %.lr.ph228.preheader596 ]
  %120 = phi i64 [ %124, %.lr.ph228 ], [ %.ph597, %.lr.ph228.preheader596 ]
  %.0152226 = phi i32 [ %123, %.lr.ph228 ], [ %.0152226.ph, %.lr.ph228.preheader596 ]
  %121 = getelementptr i32, ptr @_QMtinfoElast_n, i64 %indvars.iv350
  %122 = load i32, ptr %121, align 4, !tbaa !168
  %123 = add i32 %122, %.0152226
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1
  %124 = add nsw i64 %120, -1
  %125 = icmp ugt i64 %120, 1
  br i1 %125, label %.lr.ph228, label %._crit_edge229, !llvm.loop !172

._crit_edge229:                                   ; preds = %.lr.ph228, %middle.block422
  %.lcssa416 = phi i32 [ %119, %middle.block422 ], [ %123, %.lr.ph228 ]
  %126 = icmp sgt i32 %.lcssa416, 0
  br i1 %126, label %127, label %.thread

127:                                              ; preds = %._crit_edge229
  %128 = sext i32 %.0158 to i64
  %129 = sub nsw i64 %83, %128
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %.lr.ph233.preheader, label %.thread

.lr.ph233.preheader:                              ; preds = %127
  %min.iters.check440 = icmp ult i64 %129, 8
  br i1 %min.iters.check440, label %.lr.ph233.preheader593, label %vector.scevcheck437

vector.scevcheck437:                              ; preds = %.lr.ph233.preheader
  %131 = sub nsw i64 %33, %128
  %132 = trunc i64 %131 to i32
  %133 = add i32 %.0158, %132
  %134 = icmp slt i32 %133, %.0158
  %135 = icmp ugt i64 %131, 4294967295
  %136 = or i1 %134, %135
  br i1 %136, label %.lr.ph233.preheader593, label %vector.ph441

vector.ph441:                                     ; preds = %vector.scevcheck437
  %n.vec443 = and i64 %129, 9223372036854775800
  %ind.end444 = and i64 %129, 7
  %.cast446 = trunc i64 %n.vec443 to i32
  %ind.end447 = add i32 %.0158, %.cast446
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.lcssa416, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph441
  %index451 = phi i64 [ 0, %vector.ph441 ], [ %index.next456, %vector.body450 ]
  %.cast452 = trunc i64 %index451 to i32
  %offset.idx453 = add i32 %.0158, %.cast452
  %137 = sext i32 %offset.idx453 to i64
  %138 = getelementptr i32, ptr %invariant.gep, i64 %137
  %139 = getelementptr i8, ptr %138, i64 16
  %wide.load454 = load <4 x i32>, ptr %138, align 4, !tbaa !158
  %wide.load455 = load <4 x i32>, ptr %139, align 4, !tbaa !158
  %140 = add <4 x i32> %wide.load454, %broadcast.splat
  %141 = add <4 x i32> %wide.load455, %broadcast.splat
  store <4 x i32> %140, ptr %138, align 4, !tbaa !158
  store <4 x i32> %141, ptr %139, align 4, !tbaa !158
  %index.next456 = add nuw i64 %index451, 8
  %142 = icmp eq i64 %index.next456, %n.vec443
  br i1 %142, label %middle.block438, label %vector.body450, !llvm.loop !173

middle.block438:                                  ; preds = %vector.body450
  %cmp.n449 = icmp eq i64 %129, %n.vec443
  br i1 %cmp.n449, label %.thread, label %.lr.ph233.preheader593

.lr.ph233.preheader593:                           ; preds = %vector.scevcheck437, %.lr.ph233.preheader, %middle.block438
  %.ph594 = phi i64 [ %129, %vector.scevcheck437 ], [ %129, %.lr.ph233.preheader ], [ %ind.end444, %middle.block438 ]
  %.ph595 = phi i32 [ %.0158, %vector.scevcheck437 ], [ %.0158, %.lr.ph233.preheader ], [ %ind.end447, %middle.block438 ]
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.preheader593, %.lr.ph233
  %143 = phi i64 [ %149, %.lr.ph233 ], [ %.ph594, %.lr.ph233.preheader593 ]
  %144 = phi i32 [ %148, %.lr.ph233 ], [ %.ph595, %.lr.ph233.preheader593 ]
  %145 = sext i32 %144 to i64
  %gep231 = getelementptr i32, ptr %invariant.gep, i64 %145
  %146 = load i32, ptr %gep231, align 4, !tbaa !158
  %147 = add i32 %146, %.lcssa416
  store i32 %147, ptr %gep231, align 4, !tbaa !158
  %148 = add i32 %144, 1
  %149 = add nsw i64 %143, -1
  %150 = icmp ugt i64 %143, 1
  br i1 %150, label %.lr.ph233, label %.thread, !llvm.loop !174

.thread:                                          ; preds = %.lr.ph233, %middle.block438, %127, %104, %._crit_edge229
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %151 = add i32 %27, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr i32, ptr %2, i64 %152
  %154 = getelementptr i8, ptr %153, i64 -4
  %155 = load i32, ptr %154, align 4, !tbaa !158
  %156 = add i32 %155, -1
  %157 = load i32, ptr %4, align 4, !tbaa !175
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %.thread
  %160 = tail call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num36)
  %.not = icmp eq i32 %160, 0
  br i1 %.not, label %omp_region.end, label %omp.master.region

omp.master.region:                                ; preds = %159
  %161 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 857)
  %162 = tail call i1 @_FortranAioOutputAscii(ptr %161, ptr nonnull @_QQclX8aa47eafef3dd9fef2a70f0e43e486f4, i64 44)
  %163 = tail call i32 @_FortranAioEndIoStatement(ptr %161)
  %164 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 858)
  %165 = tail call i1 @_FortranAioOutputAscii(ptr %164, ptr nonnull @_QQclX6E7A612C206E7A6D6178203D20, i64 13)
  %166 = tail call i1 @_FortranAioOutputInteger32(ptr %164, i32 %156)
  %167 = load i32, ptr %4, align 4, !tbaa !175
  %168 = tail call i1 @_FortranAioOutputInteger32(ptr %164, i32 %167)
  %169 = tail call i32 @_FortranAioEndIoStatement(ptr %164)
  tail call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num36)
  br label %omp_region.end

omp_region.end:                                   ; preds = %159, %omp.master.region
  %170 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

171:                                              ; preds = %.thread
  %172 = load i32, ptr %18, align 4, !tbaa !157
  %173 = sext i32 %172 to i64
  %174 = load i32, ptr %17, align 4, !tbaa !157
  %175 = sext i32 %174 to i64
  %reass.sub319 = sub nsw i64 %175, %173
  %176 = icmp sgt i64 %reass.sub319, -1
  br i1 %176, label %.lr.ph240.preheader, label %._crit_edge241

.lr.ph240.preheader:                              ; preds = %171
  %177 = add nuw nsw i64 %reass.sub319, 1
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %._crit_edge236
  %178 = phi i64 [ %217, %._crit_edge236 ], [ %177, %.lr.ph240.preheader ]
  %179 = phi i32 [ %185, %._crit_edge236 ], [ %172, %.lr.ph240.preheader ]
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, -1
  %182 = getelementptr i32, ptr %2, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !158
  %184 = sext i32 %183 to i64
  %185 = add i32 %179, 1
  %186 = sext i32 %185 to i64
  %gep238 = getelementptr i32, ptr %invariant.gep, i64 %186
  %187 = load i32, ptr %gep238, align 4, !tbaa !158
  %188 = add i32 %187, -1
  %189 = sext i32 %188 to i64
  %reass.sub320 = sub nsw i64 %189, %184
  %190 = icmp sgt i64 %reass.sub320, -1
  br i1 %190, label %.lr.ph235.preheader, label %._crit_edge236

.lr.ph235.preheader:                              ; preds = %.lr.ph240
  %191 = add nuw nsw i64 %reass.sub320, 1
  %192 = add nsw i64 %189, 1
  %193 = sub nsw i64 %192, %184
  %min.iters.check462 = icmp ult i64 %193, 12
  br i1 %min.iters.check462, label %.lr.ph235.preheader590, label %vector.scevcheck457

vector.scevcheck457:                              ; preds = %.lr.ph235.preheader
  %194 = sub nsw i64 %189, %184
  %195 = trunc i64 %194 to i32
  %196 = add i32 %183, %195
  %197 = icmp slt i32 %196, %183
  %198 = icmp ugt i64 %194, 4294967295
  %199 = or i1 %197, %198
  br i1 %199, label %.lr.ph235.preheader590, label %vector.ph463

vector.ph463:                                     ; preds = %vector.scevcheck457
  %n.vec465 = and i64 %193, -8
  %ind.end466 = sub nsw i64 %191, %n.vec465
  %.cast468 = trunc i64 %n.vec465 to i32
  %ind.end469 = add i32 %183, %.cast468
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph463
  %index473 = phi i64 [ 0, %vector.ph463 ], [ %index.next476, %vector.body472 ]
  %.cast474 = trunc i64 %index473 to i32
  %offset.idx475 = add i32 %183, %.cast474
  %200 = sext i32 %offset.idx475 to i64
  %201 = add nsw i64 %200, -1
  %202 = getelementptr double, ptr %11, i64 %201
  %203 = getelementptr i8, ptr %202, i64 32
  store <4 x double> zeroinitializer, ptr %202, align 8, !tbaa !177
  store <4 x double> zeroinitializer, ptr %203, align 8, !tbaa !177
  %204 = getelementptr i32, ptr %12, i64 %201
  %205 = getelementptr i8, ptr %204, i64 16
  store <4 x i32> zeroinitializer, ptr %204, align 4, !tbaa !179
  store <4 x i32> zeroinitializer, ptr %205, align 4, !tbaa !179
  %index.next476 = add nuw i64 %index473, 8
  %206 = icmp eq i64 %index.next476, %n.vec465
  br i1 %206, label %middle.block460, label %vector.body472, !llvm.loop !181

middle.block460:                                  ; preds = %vector.body472
  %cmp.n471 = icmp eq i64 %193, %n.vec465
  br i1 %cmp.n471, label %._crit_edge236, label %.lr.ph235.preheader590

.lr.ph235.preheader590:                           ; preds = %vector.scevcheck457, %.lr.ph235.preheader, %middle.block460
  %.ph591 = phi i64 [ %191, %vector.scevcheck457 ], [ %191, %.lr.ph235.preheader ], [ %ind.end466, %middle.block460 ]
  %.ph592 = phi i32 [ %183, %vector.scevcheck457 ], [ %183, %.lr.ph235.preheader ], [ %ind.end469, %middle.block460 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader590, %.lr.ph235
  %207 = phi i64 [ %214, %.lr.ph235 ], [ %.ph591, %.lr.ph235.preheader590 ]
  %208 = phi i32 [ %213, %.lr.ph235 ], [ %.ph592, %.lr.ph235.preheader590 ]
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, -1
  %211 = getelementptr double, ptr %11, i64 %210
  store double 0.000000e+00, ptr %211, align 8, !tbaa !177
  %212 = getelementptr i32, ptr %12, i64 %210
  store i32 0, ptr %212, align 4, !tbaa !179
  %213 = add i32 %208, 1
  %214 = add nsw i64 %207, -1
  %215 = icmp ugt i64 %207, 1
  br i1 %215, label %.lr.ph235, label %._crit_edge236, !llvm.loop !182

._crit_edge236:                                   ; preds = %.lr.ph235, %middle.block460, %.lr.ph240
  %216 = getelementptr i32, ptr %13, i64 %181
  store i32 0, ptr %216, align 4, !tbaa !183
  %217 = add nsw i64 %178, -1
  %218 = icmp sgt i64 %178, 1
  br i1 %218, label %.lr.ph240, label %._crit_edge241

._crit_edge241:                                   ; preds = %._crit_edge236, %171
  %219 = load double, ptr %14, align 8, !tbaa !185
  %220 = load i32, ptr %3, align 4, !tbaa !162
  %221 = sitofp i32 %220 to double
  %222 = fdiv contract double 1.000000e+00, %221
  %223 = tail call contract double @llvm.pow.f64(double %219, double %222)
  %224 = icmp sgt i32 %220, 0
  br i1 %224, label %.lr.ph286, label %._crit_edge287

.lr.ph286:                                        ; preds = %._crit_edge241
  %225 = add nuw i32 %220, 1
  %wide.trip.count365 = zext i32 %225 to i64
  br label %226

226:                                              ; preds = %.lr.ph286, %._crit_edge274
  %indvars.iv362 = phi i64 [ 1, %.lr.ph286 ], [ %indvars.iv.next363, %._crit_edge274 ]
  %.0149283 = phi double [ 1.000000e+00, %.lr.ph286 ], [ %325, %._crit_edge274 ]
  %227 = add nsw i64 %indvars.iv362, -1
  %228 = getelementptr i32, ptr %6, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !164
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %226
  %231 = mul nuw nsw i64 %227, %24
  %232 = add nsw i64 %231, -1
  %233 = add nuw i32 %229, 1
  %wide.trip.count360 = zext i32 %233 to i64
  br label %234

234:                                              ; preds = %..loopexit_crit_edge.split.us.us, %.lr.ph273
  %indvars.iv357 = phi i64 [ %indvars.iv.next358, %..loopexit_crit_edge.split.us.us ], [ 1, %.lr.ph273 ]
  %235 = add nsw i64 %232, %indvars.iv357
  %236 = getelementptr i32, ptr %7, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !166
  %238 = load i32, ptr %18, align 4, !tbaa !157
  %239 = icmp sge i32 %237, %238
  %240 = load i32, ptr %17, align 4, !tbaa !157
  %241 = icmp sle i32 %237, %240
  %.not185.us = and i1 %239, %241
  br i1 %.not185.us, label %.lr.ph260.us, label %..loopexit_crit_edge.split.us.us

.lr.ph260.us:                                     ; preds = %234
  %242 = getelementptr double, ptr %8, i64 %235
  %243 = load double, ptr %242, align 8, !tbaa !187
  %244 = fmul contract double %.0149283, %243
  %245 = zext i32 %237 to i64
  %246 = icmp eq i64 %indvars.iv362, %245
  %247 = sext i32 %237 to i64
  %248 = add nsw i64 %247, -1
  %249 = getelementptr i32, ptr %2, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !158
  %251 = add i32 %237, 1
  %252 = sext i32 %251 to i64
  %gep256.us = getelementptr i32, ptr %invariant.gep, i64 %252
  %253 = load i32, ptr %gep256.us, align 4, !tbaa !158
  %254 = sub i32 %253, %250
  %255 = icmp sgt i32 %254, 0
  %256 = getelementptr i32, ptr %13, i64 %248
  %257 = add i32 %253, -2
  %258 = sub i32 1, %253
  %259 = sext i32 %258 to i64
  br i1 %255, label %.lr.ph260.split.us.us, label %._crit_edge250

..loopexit_crit_edge.split.us.us:                 ; preds = %297, %234
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1
  %exitcond361.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count360
  br i1 %exitcond361.not, label %._crit_edge274, label %234

.lr.ph260.split.us.us:                            ; preds = %.lr.ph260.us, %297
  %indvars.iv353 = phi i64 [ %indvars.iv.next354, %297 ], [ 1, %.lr.ph260.us ]
  %260 = add nsw i64 %232, %indvars.iv353
  %261 = getelementptr i32, ptr %7, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !166
  %263 = getelementptr double, ptr %8, i64 %260
  %264 = load double, ptr %263, align 8, !tbaa !187
  %265 = fmul contract double %244, %264
  %266 = icmp eq i32 %262, %237
  %267 = and i1 %246, %266
  br i1 %267, label %268, label %.lr.ph247.us.us

268:                                              ; preds = %.lr.ph260.split.us.us
  %269 = fadd contract double %219, %265
  %270 = load double, ptr %15, align 8, !tbaa !189
  %271 = fsub contract double %269, %270
  br label %.lr.ph247.us.us

.lr.ph247.us.us:                                  ; preds = %268, %.lr.ph260.split.us.us
  %.0.us.us = phi double [ %271, %268 ], [ %265, %.lr.ph260.split.us.us ]
  br label %272

272:                                              ; preds = %282, %.lr.ph247.us.us
  %.0150245.us.us = phi i32 [ %254, %.lr.ph247.us.us ], [ %283, %282 ]
  %.0156244.us.us = phi i32 [ %250, %.lr.ph247.us.us ], [ %284, %282 ]
  %273 = sext i32 %.0156244.us.us to i64
  %274 = add nsw i64 %273, -1
  %275 = getelementptr i32, ptr %12, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !179
  %277 = icmp sgt i32 %276, %262
  br i1 %277, label %291, label %278

278:                                              ; preds = %272
  %279 = icmp eq i32 %276, 0
  br i1 %279, label %289, label %280

280:                                              ; preds = %278
  %281 = icmp eq i32 %276, %262
  br i1 %281, label %286, label %282

282:                                              ; preds = %280
  %283 = add nsw i32 %.0150245.us.us, -1
  %284 = add i32 %.0156244.us.us, 1
  %285 = icmp sgt i32 %.0150245.us.us, 1
  br i1 %285, label %272, label %._crit_edge250

286:                                              ; preds = %280
  %287 = load i32, ptr %256, align 4, !tbaa !183
  %288 = add i32 %287, 1
  store i32 %288, ptr %256, align 4, !tbaa !183
  br label %297

289:                                              ; preds = %278
  %290 = getelementptr i32, ptr %12, i64 %274
  store i32 %262, ptr %290, align 4, !tbaa !179
  br label %297

291:                                              ; preds = %272
  %292 = getelementptr i32, ptr %12, i64 %274
  %293 = add nsw i64 %259, %273
  %294 = icmp slt i64 %293, 0
  br i1 %294, label %.lr.ph253.us.us.preheader, label %._crit_edge254.us.us

.lr.ph253.us.us.preheader:                        ; preds = %291
  %295 = sub nsw i64 0, %293
  br label %.lr.ph253.us.us

._crit_edge254.us.us:                             ; preds = %316, %291
  store i32 %262, ptr %292, align 4, !tbaa !179
  %296 = getelementptr double, ptr %11, i64 %274
  store double 0.000000e+00, ptr %296, align 8, !tbaa !177
  br label %297

297:                                              ; preds = %._crit_edge254.us.us, %289, %286
  %298 = getelementptr double, ptr %11, i64 %274
  %299 = load double, ptr %298, align 8, !tbaa !177
  %300 = fadd contract double %.0.us.us, %299
  store double %300, ptr %298, align 8, !tbaa !177
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1
  %exitcond356.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count360
  br i1 %exitcond356.not, label %..loopexit_crit_edge.split.us.us, label %.lr.ph260.split.us.us

.lr.ph253.us.us:                                  ; preds = %.lr.ph253.us.us.preheader, %316
  %301 = phi i64 [ %318, %316 ], [ %295, %.lr.ph253.us.us.preheader ]
  %302 = phi i32 [ %317, %316 ], [ %257, %.lr.ph253.us.us.preheader ]
  %303 = sext i32 %302 to i64
  %304 = add nsw i64 %303, -1
  %305 = getelementptr i32, ptr %12, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !179
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %.lr.ph253.us.us
  %309 = getelementptr double, ptr %11, i64 %304
  %310 = load double, ptr %309, align 8, !tbaa !177
  %311 = add i32 %302, 1
  %312 = sext i32 %311 to i64
  %313 = add nsw i64 %312, -1
  %314 = getelementptr double, ptr %11, i64 %313
  store double %310, ptr %314, align 8, !tbaa !177
  %315 = getelementptr i32, ptr %12, i64 %313
  store i32 %306, ptr %315, align 4, !tbaa !179
  br label %316

316:                                              ; preds = %308, %.lr.ph253.us.us
  %317 = add i32 %302, -1
  %318 = add nsw i64 %301, -1
  %319 = icmp sgt i64 %301, 1
  br i1 %319, label %.lr.ph253.us.us, label %._crit_edge254.us.us

._crit_edge250:                                   ; preds = %.lr.ph260.us, %282
  %.0160280343 = trunc i64 %indvars.iv362 to i32
  %320 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX8830d4931fc25ecacdfc19bacad2daa1, i32 926)
  %321 = tail call i1 @_FortranAioOutputAscii(ptr %320, ptr nonnull @_QQclX696E7465726E616C206572726F7220696E207370617273653A20693D, i64 28)
  %322 = tail call i1 @_FortranAioOutputInteger32(ptr %320, i32 %.0160280343)
  %323 = tail call i32 @_FortranAioEndIoStatement(ptr %320)
  %324 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

._crit_edge274:                                   ; preds = %..loopexit_crit_edge.split.us.us, %226
  %325 = fmul contract double %223, %.0149283
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1
  %exitcond366.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count365
  br i1 %exitcond366.not, label %._crit_edge287, label %226

._crit_edge287:                                   ; preds = %._crit_edge274, %._crit_edge241
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %326 = load i32, ptr %18, align 4, !tbaa !157
  %327 = add i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = load i32, ptr %17, align 4, !tbaa !157
  %330 = sext i32 %329 to i64
  %reass.sub321 = sub nsw i64 %330, %328
  %invariant.gep288 = getelementptr i8, ptr %13, i64 -4
  %331 = icmp sgt i64 %reass.sub321, -1
  br i1 %331, label %.lr.ph293.preheader, label %._crit_edge294

.lr.ph293.preheader:                              ; preds = %._crit_edge287
  %332 = add nuw nsw i64 %reass.sub321, 1
  %.phi.trans.insert372 = sext i32 %326 to i64
  %gep291.phi.trans.insert = getelementptr i32, ptr %invariant.gep288, i64 %.phi.trans.insert372
  %.pre373 = load i32, ptr %gep291.phi.trans.insert, align 4, !tbaa !183
  br label %.lr.ph293

.lr.ph293:                                        ; preds = %.lr.ph293.preheader, %.lr.ph293
  %333 = phi i32 [ %338, %.lr.ph293 ], [ %.pre373, %.lr.ph293.preheader ]
  %334 = phi i64 [ %340, %.lr.ph293 ], [ %332, %.lr.ph293.preheader ]
  %335 = phi i32 [ %339, %.lr.ph293 ], [ %327, %.lr.ph293.preheader ]
  %336 = sext i32 %335 to i64
  %gep289 = getelementptr i32, ptr %invariant.gep288, i64 %336
  %337 = load i32, ptr %gep289, align 4, !tbaa !183
  %338 = add i32 %333, %337
  store i32 %338, ptr %gep289, align 4, !tbaa !183
  %339 = add i32 %335, 1
  %340 = add nsw i64 %334, -1
  %341 = icmp ugt i64 %334, 1
  br i1 %341, label %.lr.ph293, label %._crit_edge294

._crit_edge294:                                   ; preds = %.lr.ph293, %._crit_edge287
  %342 = load i32, ptr %19, align 4, !tbaa !157
  %343 = load i32, ptr %20, align 4, !tbaa !157
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %353

345:                                              ; preds = %._crit_edge294
  %346 = load i32, ptr %17, align 4, !tbaa !157
  %347 = sext i32 %346 to i64
  %348 = getelementptr i32, ptr %13, i64 %347
  %349 = getelementptr i8, ptr %348, i64 -4
  %350 = load i32, ptr %349, align 4, !tbaa !183
  %351 = sext i32 %342 to i64
  %352 = getelementptr i32, ptr @_QMtinfoElast_n, i64 %351
  store i32 %350, ptr %352, align 4, !tbaa !168
  br label %353

353:                                              ; preds = %345, %._crit_edge294
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %354 = load i32, ptr %19, align 4, !tbaa !157
  %355 = load i32, ptr %20, align 4, !tbaa !157
  %356 = icmp slt i32 %354, %355
  %357 = add i32 %354, -1
  %358 = icmp sgt i32 %357, -1
  %or.cond566 = and i1 %356, %358
  br i1 %or.cond566, label %.lr.ph297.preheader, label %omp_loop.preheader

.lr.ph297.preheader:                              ; preds = %353
  %359 = zext i32 %354 to i64
  %360 = add nuw nsw i64 %359, 1
  %361 = icmp ne i32 %354, 0
  %umin477.neg = sext i1 %361 to i64
  %362 = add nsw i64 %360, %umin477.neg
  %min.iters.check480 = icmp ult i64 %362, 8
  br i1 %min.iters.check480, label %.lr.ph297.preheader573, label %vector.ph481

vector.ph481:                                     ; preds = %.lr.ph297.preheader
  %n.vec483 = and i64 %362, -8
  %ind.end485 = sub nsw i64 %359, %n.vec483
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph481
  %index489 = phi i64 [ 0, %vector.ph481 ], [ %index.next494, %vector.body488 ]
  %vec.phi490 = phi <4 x i32> [ zeroinitializer, %vector.ph481 ], [ %365, %vector.body488 ]
  %vec.phi491 = phi <4 x i32> [ zeroinitializer, %vector.ph481 ], [ %366, %vector.body488 ]
  %363 = getelementptr i32, ptr @_QMtinfoElast_n, i64 %index489
  %364 = getelementptr i8, ptr %363, i64 16
  %wide.load492 = load <4 x i32>, ptr %363, align 4, !tbaa !168
  %wide.load493 = load <4 x i32>, ptr %364, align 4, !tbaa !168
  %365 = add <4 x i32> %wide.load492, %vec.phi490
  %366 = add <4 x i32> %wide.load493, %vec.phi491
  %index.next494 = add nuw i64 %index489, 8
  %367 = icmp eq i64 %index.next494, %n.vec483
  br i1 %367, label %middle.block478, label %vector.body488, !llvm.loop !191

middle.block478:                                  ; preds = %vector.body488
  %bin.rdx495 = add <4 x i32> %366, %365
  %368 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx495)
  %cmp.n487 = icmp eq i64 %362, %n.vec483
  br i1 %cmp.n487, label %._crit_edge298, label %.lr.ph297.preheader573

.lr.ph297.preheader573:                           ; preds = %.lr.ph297.preheader, %middle.block478
  %indvars.iv367.ph = phi i64 [ 0, %.lr.ph297.preheader ], [ %n.vec483, %middle.block478 ]
  %.ph574 = phi i64 [ %359, %.lr.ph297.preheader ], [ %ind.end485, %middle.block478 ]
  %.3295.ph = phi i32 [ 0, %.lr.ph297.preheader ], [ %368, %middle.block478 ]
  br label %.lr.ph297

.lr.ph297:                                        ; preds = %.lr.ph297.preheader573, %.lr.ph297
  %indvars.iv367 = phi i64 [ %indvars.iv.next368, %.lr.ph297 ], [ %indvars.iv367.ph, %.lr.ph297.preheader573 ]
  %369 = phi i64 [ %373, %.lr.ph297 ], [ %.ph574, %.lr.ph297.preheader573 ]
  %.3295 = phi i32 [ %372, %.lr.ph297 ], [ %.3295.ph, %.lr.ph297.preheader573 ]
  %370 = getelementptr i32, ptr @_QMtinfoElast_n, i64 %indvars.iv367
  %371 = load i32, ptr %370, align 4, !tbaa !168
  %372 = add i32 %371, %.3295
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1
  %373 = add nsw i64 %369, -1
  %374 = icmp ugt i64 %369, 1
  br i1 %374, label %.lr.ph297, label %._crit_edge298, !llvm.loop !192

._crit_edge298:                                   ; preds = %.lr.ph297, %middle.block478
  %.lcssa = phi i32 [ %368, %middle.block478 ], [ %372, %.lr.ph297 ]
  %375 = icmp sgt i32 %.lcssa, 0
  br i1 %375, label %376, label %omp_loop.preheader

376:                                              ; preds = %._crit_edge298
  %377 = load i32, ptr %18, align 4, !tbaa !157
  %378 = sext i32 %377 to i64
  %379 = load i32, ptr %17, align 4, !tbaa !157
  %380 = sext i32 %379 to i64
  %reass.sub322 = sub nsw i64 %380, %378
  %381 = icmp sgt i64 %reass.sub322, -1
  br i1 %381, label %.lr.ph303.preheader, label %omp_loop.preheader

.lr.ph303.preheader:                              ; preds = %376
  %382 = add nuw nsw i64 %reass.sub322, 1
  %383 = add nsw i64 %380, 1
  %384 = sub nsw i64 %383, %378
  %min.iters.check502 = icmp ult i64 %384, 12
  br i1 %min.iters.check502, label %.lr.ph303.preheader570, label %vector.scevcheck497

vector.scevcheck497:                              ; preds = %.lr.ph303.preheader
  %385 = sub nsw i64 %380, %378
  %386 = trunc i64 %385 to i32
  %387 = add i32 %377, %386
  %388 = icmp slt i32 %387, %377
  %389 = icmp ugt i64 %385, 4294967295
  %390 = or i1 %388, %389
  br i1 %390, label %.lr.ph303.preheader570, label %vector.ph503

vector.ph503:                                     ; preds = %vector.scevcheck497
  %n.vec505 = and i64 %384, -8
  %ind.end506 = sub nsw i64 %382, %n.vec505
  %.cast508 = trunc i64 %n.vec505 to i32
  %ind.end509 = add i32 %377, %.cast508
  %broadcast.splatinsert518 = insertelement <4 x i32> poison, i32 %.lcssa, i64 0
  %broadcast.splat519 = shufflevector <4 x i32> %broadcast.splatinsert518, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph503
  %index513 = phi i64 [ 0, %vector.ph503 ], [ %index.next520, %vector.body512 ]
  %.cast514 = trunc i64 %index513 to i32
  %offset.idx515 = add i32 %377, %.cast514
  %391 = sext i32 %offset.idx515 to i64
  %392 = getelementptr i32, ptr %invariant.gep288, i64 %391
  %393 = getelementptr i8, ptr %392, i64 16
  %wide.load516 = load <4 x i32>, ptr %392, align 4, !tbaa !183
  %wide.load517 = load <4 x i32>, ptr %393, align 4, !tbaa !183
  %394 = add <4 x i32> %wide.load516, %broadcast.splat519
  %395 = add <4 x i32> %wide.load517, %broadcast.splat519
  store <4 x i32> %394, ptr %392, align 4, !tbaa !183
  store <4 x i32> %395, ptr %393, align 4, !tbaa !183
  %index.next520 = add nuw i64 %index513, 8
  %396 = icmp eq i64 %index.next520, %n.vec505
  br i1 %396, label %middle.block500, label %vector.body512, !llvm.loop !193

middle.block500:                                  ; preds = %vector.body512
  %cmp.n511 = icmp eq i64 %384, %n.vec505
  br i1 %cmp.n511, label %omp_loop.preheader, label %.lr.ph303.preheader570

.lr.ph303.preheader570:                           ; preds = %vector.scevcheck497, %.lr.ph303.preheader, %middle.block500
  %.ph571 = phi i64 [ %382, %vector.scevcheck497 ], [ %382, %.lr.ph303.preheader ], [ %ind.end506, %middle.block500 ]
  %.ph572 = phi i32 [ %377, %vector.scevcheck497 ], [ %377, %.lr.ph303.preheader ], [ %ind.end509, %middle.block500 ]
  br label %.lr.ph303

.lr.ph303:                                        ; preds = %.lr.ph303.preheader570, %.lr.ph303
  %397 = phi i64 [ %403, %.lr.ph303 ], [ %.ph571, %.lr.ph303.preheader570 ]
  %398 = phi i32 [ %402, %.lr.ph303 ], [ %.ph572, %.lr.ph303.preheader570 ]
  %399 = sext i32 %398 to i64
  %gep301 = getelementptr i32, ptr %invariant.gep288, i64 %399
  %400 = load i32, ptr %gep301, align 4, !tbaa !183
  %401 = add i32 %400, %.lcssa
  store i32 %401, ptr %gep301, align 4, !tbaa !183
  %402 = add i32 %398, 1
  %403 = add nsw i64 %397, -1
  %404 = icmp ugt i64 %397, 1
  br i1 %404, label %.lr.ph303, label %omp_loop.preheader, !llvm.loop !194

omp_loop.preheader:                               ; preds = %.lr.ph303, %middle.block500, %376, %353, %._crit_edge298
  tail call void @__kmpc_barrier(ptr nonnull @2, i32 %omp_global_thread_num36)
  %405 = icmp ugt i32 %27, 2147483646
  store i32 0, ptr %p.lowerbound, align 4
  %406 = select i1 %405, i32 -1, i32 %27
  store i32 %406, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num36, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %407 = load i32, ptr %p.lowerbound, align 4
  %408 = load i32, ptr %p.upperbound, align 4
  %reass.sub323 = sub i32 %408, %407
  %omp_loop.cmp311.not = icmp eq i32 %reass.sub323, -1
  br i1 %omp_loop.cmp311.not, label %omp_loop.exit, label %omp_loop.body

omp_loop.body:                                    ; preds = %omp_loop.preheader, %omp.wsloop.region14
  %omp_loop.iv312 = phi i32 [ %omp_loop.next, %omp.wsloop.region14 ], [ 0, %omp_loop.preheader ]
  %409 = add i32 %omp_loop.iv312, %407
  %410 = add i32 %409, 1
  %411 = icmp sgt i32 %410, 1
  br i1 %411, label %omp.wsloop.region9, label %omp.wsloop.region11

omp.wsloop.region14:                              ; preds = %omp.wsloop.region13, %middle.block524, %omp.wsloop.region11
  %omp_loop.next = add nuw i32 %omp_loop.iv312, 1
  %exitcond370.not = icmp eq i32 %omp_loop.iv312, %reass.sub323
  br i1 %exitcond370.not, label %omp_loop.exit, label %omp_loop.body

omp.wsloop.region13:                              ; preds = %omp.wsloop.region13.preheader568, %omp.wsloop.region13
  %412 = phi i64 [ %426, %omp.wsloop.region13 ], [ %.ph, %omp.wsloop.region13.preheader568 ]
  %413 = phi i32 [ %425, %omp.wsloop.region13 ], [ %.ph569, %omp.wsloop.region13.preheader568 ]
  %.1154304 = phi i32 [ %424, %omp.wsloop.region13 ], [ %.1154304.ph, %omp.wsloop.region13.preheader568 ]
  %414 = sext i32 %.1154304 to i64
  %415 = add nsw i64 %414, -1
  %416 = getelementptr double, ptr %11, i64 %415
  %417 = load double, ptr %416, align 8, !tbaa !177
  %418 = sext i32 %413 to i64
  %419 = add nsw i64 %418, -1
  %420 = getelementptr double, ptr %0, i64 %419
  store double %417, ptr %420, align 8, !tbaa !195
  %421 = getelementptr i32, ptr %12, i64 %415
  %422 = load i32, ptr %421, align 4, !tbaa !179
  %423 = getelementptr i32, ptr %1, i64 %419
  store i32 %422, ptr %423, align 4, !tbaa !197
  %424 = add i32 %.1154304, 1
  %425 = add i32 %413, 1
  %426 = add nsw i64 %412, -1
  %427 = icmp ugt i64 %412, 1
  br i1 %427, label %omp.wsloop.region13, label %omp.wsloop.region14, !llvm.loop !199

omp.wsloop.region11:                              ; preds = %omp_loop.body, %omp.wsloop.region9
  %.1159 = phi i32 [ %468, %omp.wsloop.region9 ], [ 1, %omp_loop.body ]
  %428 = add i32 %409, 2
  %429 = sext i32 %428 to i64
  %gep310 = getelementptr i32, ptr %invariant.gep, i64 %429
  %430 = load i32, ptr %gep310, align 4, !tbaa !158
  %431 = sext i32 %410 to i64
  %432 = add nsw i64 %431, -1
  %433 = getelementptr i32, ptr %13, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !183
  %435 = xor i32 %434, -1
  %436 = add i32 %430, %435
  %437 = sext i32 %.1159 to i64
  %438 = sext i32 %436 to i64
  %reass.sub324 = sub nsw i64 %438, %437
  %439 = icmp sgt i64 %reass.sub324, -1
  br i1 %439, label %omp.wsloop.region13.preheader, label %omp.wsloop.region14

omp.wsloop.region13.preheader:                    ; preds = %omp.wsloop.region11
  %440 = add nuw nsw i64 %reass.sub324, 1
  %441 = getelementptr i32, ptr %2, i64 %432
  %442 = load i32, ptr %441, align 4, !tbaa !158
  %443 = add nsw i64 %438, 1
  %444 = sub nsw i64 %443, %437
  %min.iters.check526 = icmp ult i64 %444, 12
  br i1 %min.iters.check526, label %omp.wsloop.region13.preheader568, label %vector.scevcheck521

vector.scevcheck521:                              ; preds = %omp.wsloop.region13.preheader
  %445 = sub nsw i64 %438, %437
  %446 = trunc i64 %445 to i32
  %447 = add i32 %442, %446
  %448 = icmp slt i32 %447, %442
  %449 = trunc i64 %445 to i32
  %450 = add i32 %.1159, %449
  %451 = icmp slt i32 %450, %.1159
  %452 = icmp ugt i64 %445, 4294967295
  %453 = or i1 %451, %452
  %454 = or i1 %448, %453
  br i1 %454, label %omp.wsloop.region13.preheader568, label %vector.ph527

vector.ph527:                                     ; preds = %vector.scevcheck521
  %n.vec529 = and i64 %444, -4
  %ind.end530 = sub nsw i64 %440, %n.vec529
  %.cast532 = trunc i64 %n.vec529 to i32
  %ind.end533 = add i32 %.1159, %.cast532
  %.cast535 = trunc i64 %n.vec529 to i32
  %ind.end536 = add i32 %442, %.cast535
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph527
  %index540 = phi i64 [ 0, %vector.ph527 ], [ %index.next547, %vector.body539 ]
  %.cast541 = trunc i64 %index540 to i32
  %offset.idx542 = add i32 %.1159, %.cast541
  %.cast543 = trunc i64 %index540 to i32
  %offset.idx544 = add i32 %442, %.cast543
  %455 = sext i32 %offset.idx544 to i64
  %456 = add nsw i64 %455, -1
  %457 = getelementptr double, ptr %11, i64 %456
  %wide.load545 = load <4 x double>, ptr %457, align 8, !tbaa !177
  %458 = sext i32 %offset.idx542 to i64
  %459 = add nsw i64 %458, -1
  %460 = getelementptr double, ptr %0, i64 %459
  store <4 x double> %wide.load545, ptr %460, align 8, !tbaa !195
  %461 = getelementptr i32, ptr %12, i64 %456
  %wide.load546 = load <4 x i32>, ptr %461, align 4, !tbaa !179
  %462 = getelementptr i32, ptr %1, i64 %459
  store <4 x i32> %wide.load546, ptr %462, align 4, !tbaa !197
  %index.next547 = add nuw i64 %index540, 4
  %463 = icmp eq i64 %index.next547, %n.vec529
  br i1 %463, label %middle.block524, label %vector.body539, !llvm.loop !200

middle.block524:                                  ; preds = %vector.body539
  %cmp.n538 = icmp eq i64 %444, %n.vec529
  br i1 %cmp.n538, label %omp.wsloop.region14, label %omp.wsloop.region13.preheader568

omp.wsloop.region13.preheader568:                 ; preds = %vector.scevcheck521, %omp.wsloop.region13.preheader, %middle.block524
  %.ph = phi i64 [ %440, %vector.scevcheck521 ], [ %440, %omp.wsloop.region13.preheader ], [ %ind.end530, %middle.block524 ]
  %.ph569 = phi i32 [ %.1159, %vector.scevcheck521 ], [ %.1159, %omp.wsloop.region13.preheader ], [ %ind.end533, %middle.block524 ]
  %.1154304.ph = phi i32 [ %442, %vector.scevcheck521 ], [ %442, %omp.wsloop.region13.preheader ], [ %ind.end536, %middle.block524 ]
  br label %omp.wsloop.region13

omp.wsloop.region9:                               ; preds = %omp_loop.body
  %464 = zext nneg i32 %410 to i64
  %gep306 = getelementptr i32, ptr %invariant.gep, i64 %464
  %465 = load i32, ptr %gep306, align 4, !tbaa !158
  %466 = zext nneg i32 %409 to i64
  %gep308 = getelementptr i32, ptr %invariant.gep288, i64 %466
  %467 = load i32, ptr %gep308, align 4, !tbaa !183
  %468 = sub i32 %465, %467
  br label %omp.wsloop.region11

omp_loop.exit:                                    ; preds = %omp.wsloop.region14, %omp_loop.preheader
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num36)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num36)
  %469 = icmp ugt i32 %27, 2147483645
  store i32 0, ptr %p.lowerbound31, align 4
  %470 = select i1 %469, i32 -1, i32 %27
  store i32 %470, ptr %p.upperbound32, align 4
  store i32 1, ptr %p.stride33, align 4
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num36, i32 34, ptr nonnull %p.lastiter30, ptr nonnull %p.lowerbound31, ptr nonnull %p.upperbound32, ptr nonnull %p.stride33, i32 1, i32 0)
  %471 = load i32, ptr %p.lowerbound31, align 4
  %472 = load i32, ptr %p.upperbound32, align 4
  %reass.sub325 = sub i32 %472, %471
  %omp_loop.cmp26317.not = icmp eq i32 %reass.sub325, -1
  br i1 %omp_loop.cmp26317.not, label %omp_loop.exit23, label %omp_loop.body21.preheader

omp_loop.body21.preheader:                        ; preds = %omp_loop.exit
  %473 = add i32 %472, 1
  %474 = sub i32 %473, %471
  %min.iters.check551 = icmp ult i32 %474, 8
  br i1 %min.iters.check551, label %omp_loop.body21.preheader567, label %vector.scevcheck548

vector.scevcheck548:                              ; preds = %omp_loop.body21.preheader
  %475 = add i32 %471, 2
  %476 = add i32 %472, 2
  %477 = icmp slt i32 %476, %475
  %478 = add i32 %471, 1
  %479 = add i32 %472, 1
  %480 = icmp slt i32 %479, %478
  %481 = or i1 %477, %480
  br i1 %481, label %omp_loop.body21.preheader567, label %vector.ph552

vector.ph552:                                     ; preds = %vector.scevcheck548
  %n.vec554 = and i32 %474, -8
  br label %vector.body557

vector.body557:                                   ; preds = %vector.body557, %vector.ph552
  %index558 = phi i32 [ 0, %vector.ph552 ], [ %index.next563, %vector.body557 ]
  %482 = add i32 %index558, %471
  %483 = add i32 %482, 2
  %484 = sext i32 %483 to i64
  %485 = getelementptr i32, ptr %invariant.gep, i64 %484
  %486 = getelementptr i8, ptr %485, i64 16
  %wide.load559 = load <4 x i32>, ptr %485, align 4, !tbaa !158
  %wide.load560 = load <4 x i32>, ptr %486, align 4, !tbaa !158
  %487 = add i32 %482, 1
  %488 = sext i32 %487 to i64
  %489 = getelementptr i32, ptr %invariant.gep288, i64 %488
  %490 = getelementptr i8, ptr %489, i64 16
  %wide.load561 = load <4 x i32>, ptr %489, align 4, !tbaa !183
  %wide.load562 = load <4 x i32>, ptr %490, align 4, !tbaa !183
  %491 = sub <4 x i32> %wide.load559, %wide.load561
  %492 = sub <4 x i32> %wide.load560, %wide.load562
  store <4 x i32> %491, ptr %485, align 4, !tbaa !158
  store <4 x i32> %492, ptr %486, align 4, !tbaa !158
  %index.next563 = add nuw i32 %index558, 8
  %493 = icmp eq i32 %index.next563, %n.vec554
  br i1 %493, label %middle.block549, label %vector.body557, !llvm.loop !201

middle.block549:                                  ; preds = %vector.body557
  %cmp.n556 = icmp eq i32 %474, %n.vec554
  br i1 %cmp.n556, label %omp_loop.exit23, label %omp_loop.body21.preheader567

omp_loop.body21.preheader567:                     ; preds = %vector.scevcheck548, %omp_loop.body21.preheader, %middle.block549
  %omp_loop.iv25318.ph = phi i32 [ 0, %vector.scevcheck548 ], [ 0, %omp_loop.body21.preheader ], [ %n.vec554, %middle.block549 ]
  br label %omp_loop.body21

omp_loop.body21:                                  ; preds = %omp_loop.body21.preheader567, %omp_loop.body21
  %omp_loop.iv25318 = phi i32 [ %omp_loop.next27, %omp_loop.body21 ], [ %omp_loop.iv25318.ph, %omp_loop.body21.preheader567 ]
  %494 = add i32 %omp_loop.iv25318, %471
  %495 = add i32 %494, 2
  %496 = sext i32 %495 to i64
  %gep314 = getelementptr i32, ptr %invariant.gep, i64 %496
  %497 = load i32, ptr %gep314, align 4, !tbaa !158
  %498 = add i32 %494, 1
  %499 = sext i32 %498 to i64
  %gep316 = getelementptr i32, ptr %invariant.gep288, i64 %499
  %500 = load i32, ptr %gep316, align 4, !tbaa !183
  %501 = sub i32 %497, %500
  store i32 %501, ptr %gep314, align 4, !tbaa !158
  %omp_loop.next27 = add nuw i32 %omp_loop.iv25318, 1
  %exitcond371.not = icmp eq i32 %omp_loop.iv25318, %reass.sub325
  br i1 %exitcond371.not, label %omp_loop.exit23, label %omp_loop.body21, !llvm.loop !202

omp_loop.exit23:                                  ; preds = %omp_loop.body21, %middle.block549, %omp_loop.exit
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num36)
  call void @__kmpc_barrier(ptr nonnull @3, i32 %omp_global_thread_num36)
  ret void
}

define void @sprnvc_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr nocapture writeonly %3, ptr nocapture %4) local_unnamed_addr #0 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %6 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMcg_dataEamult, i64 8, ptr nonnull @_QMcg_dataEamult.cache)
  %7 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMcg_dataEtran, i64 8, ptr nonnull @_QMcg_dataEtran.cache)
  %8 = load i32, ptr %1, align 4, !tbaa !203
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
  %11 = load i32, ptr %2, align 4, !tbaa !209
  %12 = sitofp i32 %11 to double
  %13 = fmul contract double %10, %12
  %14 = fptosi double %13 to i32
  %15 = add i32 %14, 1
  %16 = load i32, ptr %0, align 4, !tbaa !215
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %.backedge.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph23.split.us, %21
  %.01417.us = phi i32 [ %22, %21 ], [ 1, %.lr.ph23.split.us ]
  %18 = zext nneg i32 %.01417.us to i64
  %gep.us = getelementptr i32, ptr %invariant.gep, i64 %18
  %19 = load i32, ptr %gep.us, align 4, !tbaa !217
  %20 = icmp eq i32 %19, %15
  br i1 %20, label %.backedge.us, label %21

21:                                               ; preds = %.preheader.us
  %22 = add nuw nsw i32 %.01417.us, 1
  %exitcond.not = icmp eq i32 %22, %indvars.iv
  br i1 %exitcond.not, label %.outer, label %.preheader.us

.backedge.us:                                     ; preds = %.preheader.us, %.lr.ph23.split.us
  %23 = load i32, ptr %1, align 4, !tbaa !203
  %24 = sext i32 %23 to i64
  %.not.us = icmp slt i64 %indvars.iv43, %24
  br i1 %.not.us, label %.lr.ph23.split.us, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.backedge.us, %.backedge, %5
  ret void

.lr.ph23.split:                                   ; preds = %.lr.ph23, %.backedge
  %25 = tail call contract double @randlc_(ptr %7, ptr %6)
  %26 = tail call contract double @randlc_(ptr %7, ptr %6)
  %27 = load i32, ptr %2, align 4, !tbaa !209
  %28 = sitofp i32 %27 to double
  %29 = fmul contract double %26, %28
  %30 = fptosi double %29 to i32
  %31 = add i32 %30, 1
  %32 = load i32, ptr %0, align 4, !tbaa !215
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %.backedge, label %.outer

.backedge:                                        ; preds = %.lr.ph23.split
  %34 = load i32, ptr %1, align 4, !tbaa !203
  %35 = sext i32 %34 to i64
  %.not = icmp slt i64 %indvars.iv43, %35
  br i1 %.not, label %.lr.ph23.split, label %.outer._crit_edge

.outer:                                           ; preds = %.lr.ph23.split, %21
  %.lcssa16 = phi double [ %9, %21 ], [ %25, %.lr.ph23.split ]
  %.lcssa = phi i32 [ %15, %21 ], [ %31, %.lr.ph23.split ]
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %36 = getelementptr double, ptr %3, i64 %indvars.iv43
  store double %.lcssa16, ptr %36, align 8, !tbaa !219
  %37 = getelementptr i32, ptr %4, i64 %indvars.iv43
  store i32 %.lcssa, ptr %37, align 4, !tbaa !217
  %38 = load i32, ptr %1, align 4, !tbaa !203
  %39 = sext i32 %38 to i64
  %.not22 = icmp slt i64 %indvars.iv.next44, %39
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %.not22, label %.lr.ph23, label %.outer._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define i32 @icnvrt_(ptr nocapture readonly %0, ptr nocapture readonly %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4, !tbaa !209
  %4 = sitofp i32 %3 to double
  %5 = load double, ptr %0, align 8, !tbaa !221
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
  %9 = load i32, ptr %4, align 4, !tbaa !223
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
  %18 = load double, ptr %5, align 8, !tbaa !225
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
  %21 = load double, ptr %5, align 8, !tbaa !225
  %22 = sext i32 %20 to i64
  %23 = getelementptr double, ptr %1, i64 %22
  %24 = getelementptr i8, ptr %23, i64 -8
  store double %21, ptr %24, align 8, !tbaa !133
  %25 = load i32, ptr %4, align 4, !tbaa !223
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
declare !callback !227 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

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
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

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
!20 = !{!"global data/_QQclX43", !10, i64 0}
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
!71 = distinct !{!71, !40}
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
!143 = distinct !{!143, !40, !41}
!144 = distinct !{!144, !41, !40}
!145 = !{!146, !146, i64 0}
!146 = !{!"dummy arg data/_QFmakeaEnz", !122, i64 0}
!147 = !{!148, !148, i64 0}
!148 = !{!"dummy arg data/_QFsparseEnonzer", !149, i64 0}
!149 = !{!"dummy arg data", !150, i64 0}
!150 = !{!"any data access", !151, i64 0}
!151 = !{!"any access", !152, i64 0}
!152 = !{!"Flang function root _QPsparse"}
!153 = !{!154, !154, i64 0}
!154 = !{!"dummy arg data/_QFsparseElastrow", !149, i64 0}
!155 = !{!156, !156, i64 0}
!156 = !{!"dummy arg data/_QFsparseEfirstrow", !149, i64 0}
!157 = !{!150, !150, i64 0}
!158 = !{!159, !159, i64 0}
!159 = !{!"dummy arg data/_QFsparseErowstr", !149, i64 0}
!160 = distinct !{!160, !40, !41}
!161 = distinct !{!161, !40}
!162 = !{!163, !163, i64 0}
!163 = !{!"dummy arg data/_QFsparseEn", !149, i64 0}
!164 = !{!165, !165, i64 0}
!165 = !{!"dummy arg data/_QFsparseEarow", !149, i64 0}
!166 = !{!167, !167, i64 0}
!167 = !{!"dummy arg data/_QFsparseEacol", !149, i64 0}
!168 = !{!169, !169, i64 0}
!169 = !{!"global data/_QMtinfoElast_n", !170, i64 0}
!170 = !{!"global data", !150, i64 0}
!171 = distinct !{!171, !40, !41}
!172 = distinct !{!172, !41, !40}
!173 = distinct !{!173, !40, !41}
!174 = distinct !{!174, !40}
!175 = !{!176, !176, i64 0}
!176 = !{!"dummy arg data/_QFsparseEnz", !149, i64 0}
!177 = !{!178, !178, i64 0}
!178 = !{!"dummy arg data/_QFsparseEv", !149, i64 0}
!179 = !{!180, !180, i64 0}
!180 = !{!"dummy arg data/_QFsparseEiv", !149, i64 0}
!181 = distinct !{!181, !40, !41}
!182 = distinct !{!182, !40}
!183 = !{!184, !184, i64 0}
!184 = !{!"dummy arg data/_QFsparseEnzloc", !149, i64 0}
!185 = !{!186, !186, i64 0}
!186 = !{!"dummy arg data/_QFsparseErcond", !149, i64 0}
!187 = !{!188, !188, i64 0}
!188 = !{!"dummy arg data/_QFsparseEaelt", !149, i64 0}
!189 = !{!190, !190, i64 0}
!190 = !{!"dummy arg data/_QFsparseEshift", !149, i64 0}
!191 = distinct !{!191, !40, !41}
!192 = distinct !{!192, !41, !40}
!193 = distinct !{!193, !40, !41}
!194 = distinct !{!194, !40}
!195 = !{!196, !196, i64 0}
!196 = !{!"dummy arg data/_QFsparseEa", !149, i64 0}
!197 = !{!198, !198, i64 0}
!198 = !{!"dummy arg data/_QFsparseEcolidx", !149, i64 0}
!199 = distinct !{!199, !40}
!200 = distinct !{!200, !40, !41}
!201 = distinct !{!201, !40, !41}
!202 = distinct !{!202, !40}
!203 = !{!204, !204, i64 0}
!204 = !{!"dummy arg data/_QFsprnvcEnz", !205, i64 0}
!205 = !{!"dummy arg data", !206, i64 0}
!206 = !{!"any data access", !207, i64 0}
!207 = !{!"any access", !208, i64 0}
!208 = !{!"Flang function root _QPsprnvc"}
!209 = !{!210, !210, i64 0}
!210 = !{!"dummy arg data/_QFicnvrtEipwr2", !211, i64 0}
!211 = !{!"dummy arg data", !212, i64 0}
!212 = !{!"any data access", !213, i64 0}
!213 = !{!"any access", !214, i64 0}
!214 = !{!"Flang function root _QPicnvrt"}
!215 = !{!216, !216, i64 0}
!216 = !{!"dummy arg data/_QFsprnvcEn", !205, i64 0}
!217 = !{!218, !218, i64 0}
!218 = !{!"dummy arg data/_QFsprnvcEiv", !205, i64 0}
!219 = !{!220, !220, i64 0}
!220 = !{!"dummy arg data/_QFsprnvcEv", !205, i64 0}
!221 = !{!222, !222, i64 0}
!222 = !{!"dummy arg data/_QFicnvrtEx", !211, i64 0}
!223 = !{!224, !224, i64 0}
!224 = !{!"dummy arg data/_QFvecsetEi", !129, i64 0}
!225 = !{!226, !226, i64 0}
!226 = !{!"dummy arg data/_QFvecsetEval", !129, i64 0}
!227 = !{!228}
!228 = !{i64 2, i64 -1, i64 -1, i1 true}
