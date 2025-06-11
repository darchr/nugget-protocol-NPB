; ModuleID = '1_thread_with_hook_nugget_bc_is_A_89.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.timeval = type { i64, i64 }

$_ZTW11bucket_ptrs = comdat any

@bucket_ptrs = dso_local thread_local global [1024 x i32] zeroinitializer, align 16
@KS = internal thread_local global i32 0, align 4
@R23 = internal thread_local global double 0.000000e+00, align 8
@R46 = internal thread_local global double 0.000000e+00, align 8
@T23 = internal thread_local global double 0.000000e+00, align 8
@T46 = internal thread_local global double 0.000000e+00, align 8
@key_buff_ptr_global = dso_local local_unnamed_addr global ptr null, align 8
@passed_verification = dso_local local_unnamed_addr global i32 0, align 4
@key_array = dso_local local_unnamed_addr global [8388608 x i32] zeroinitializer, align 16
@key_buff1 = dso_local global [524288 x i32] zeroinitializer, align 16
@key_buff2 = dso_local global [8388608 x i32] zeroinitializer, align 16
@partial_verify_vals = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@bucket_size = dso_local local_unnamed_addr global ptr null, align 8
@test_index_array = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@test_rank_array = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@key_buff1_aptr = dso_local local_unnamed_addr global ptr null, align 8
@S_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 16
@S_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 16
@W_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 16
@W_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 16
@A_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 16
@A_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 16
@B_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 16
@B_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 16
@C_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 44172927, i32 72999161, i32 74326391, i32 129606274, i32 21736814], align 16
@C_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 61147, i32 882988, i32 266290, i32 133997595, i32 133525895], align 16
@D_test_index_array = dso_local local_unnamed_addr global [5 x i64] [i64 1317351170, i64 995930646, i64 1157283250, i64 1503301535, i64 1453734525], align 16
@D_test_rank_array = dso_local local_unnamed_addr global [5 x i64] [i64 1, i64 36538729, i64 1978098519, i64 2145192618, i64 2147425337], align 16
@E_test_index_array = dso_local local_unnamed_addr global [5 x i64] [i64 21492309536, i64 24606226181, i64 12608530949, i64 4065943607, i64 3324513396], align 16
@E_test_rank_array = dso_local local_unnamed_addr global [5 x i64] [i64 3, i64 27580354, i64 3248475153, i64 30048754302, i64 31485259697], align 16
@.str = private unnamed_addr constant [24 x i8] c"Memory allocation error\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @3 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 22, ptr @3 }, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @3 }, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.4-OMP) - IS Benchmark\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" Size:  %ld  (class %c)\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c" Iterations:  %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c" Number of available threads:  %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\0A   iteration\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"        %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"keys ranked\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"3.4.3\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"03 Jun 2025\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"gcc\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"$(CC)\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"-O3 -fopenmp\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"$(CFLAGS)\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"\0AAdditional timers -\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c" Total execution: %8.3f\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00", align 1
@3 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @3 }, align 8
@.str.26 = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str.2.27 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str.3.28 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str.4.29 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str.5.30 = private unnamed_addr constant [39 x i8] c" Time in seconds =             %12.2f\0A\00", align 1
@.str.6.31 = private unnamed_addr constant [37 x i8] c" Total threads   =             %12d\0A\00", align 1
@.str.7.32 = private unnamed_addr constant [37 x i8] c" Avail threads   =             %12d\0A\00", align 1
@.str.8.33 = private unnamed_addr constant [54 x i8] c" Warning: Threads used differ from threads available\0A\00", align 1
@.str.9.34 = private unnamed_addr constant [39 x i8] c" Mop/s total     =             %12.2f\0A\00", align 1
@.str.10.35 = private unnamed_addr constant [39 x i8] c" Mop/s/thread    =             %12.2f\0A\00", align 1
@.str.11.36 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str.12.37 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str.13.38 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str.14.39 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str.15.40 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str.16.41 = private unnamed_addr constant [37 x i8] c" Compile date    =             %12s\0A\00", align 1
@.str.17.42 = private unnamed_addr constant [20 x i8] c"\0A Compile options:\0A\00", align 1
@.str.18.43 = private unnamed_addr constant [23 x i8] c"    CC           = %s\0A\00", align 1
@.str.19.44 = private unnamed_addr constant [23 x i8] c"    CLINK        = %s\0A\00", align 1
@.str.20.45 = private unnamed_addr constant [23 x i8] c"    C_LIB        = %s\0A\00", align 1
@.str.21.46 = private unnamed_addr constant [23 x i8] c"    C_INC        = %s\0A\00", align 1
@.str.22.47 = private unnamed_addr constant [23 x i8] c"    CFLAGS       = %s\0A\00", align 1
@.str.23.48 = private unnamed_addr constant [23 x i8] c"    CLINKFLAGS   = %s\0A\00", align 1
@.str.24.49 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.25.50 = private unnamed_addr constant [40 x i8] c" Please send all errors/feedbacks to:\0A\0A\00", align 1
@.str.26.51 = private unnamed_addr constant [23 x i8] c" NPB Development Team\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c" npb@nas.nasa.gov\0A\0A\0A\00", align 1
@start = internal thread_local global [64 x double] zeroinitializer, align 16
@elapsed = internal thread_local global [64 x double] zeroinitializer, align 16
@.str.62 = private unnamed_addr constant [15 x i8] c"NPB_TIMER_FLAG\00", align 1
@.str.1.63 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2.64 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.3.65 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4.66 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.5.67 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.6.68 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.7.69 = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str.8.70 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@wtime_.sec = internal unnamed_addr global i32 -1, align 4
@.str.28 = private unnamed_addr constant [11 x i8] c"ROI begin\0A\00", align 1
@.str.1.31 = private unnamed_addr constant [9 x i8] c"ROI end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @randlc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %16 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @KS)
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %2
  %20 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R23)
  store double 1.000000e+00, ptr %20, align 8
  %21 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R46)
  store double 1.000000e+00, ptr %21, align 8
  %22 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  store double 1.000000e+00, ptr %22, align 8
  %23 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T46)
  store double 1.000000e+00, ptr %23, align 8
  store i32 1, ptr %14, align 4
  br label %24

24:                                               ; preds = %36, %19
  %25 = load i32, ptr %14, align 4
  %26 = icmp sle i32 %25, 23
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R23)
  %29 = load double, ptr %28, align 8
  %30 = fmul double 5.000000e-01, %29
  %31 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R23)
  store double %30, ptr %31, align 8
  %32 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  %33 = load double, ptr %32, align 8
  %34 = fmul double 2.000000e+00, %33
  %35 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  store double %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %27
  %37 = load i32, ptr %14, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %14, align 4
  br label %24, !llvm.loop !7

39:                                               ; preds = %24
  store i32 1, ptr %14, align 4
  br label %40

40:                                               ; preds = %52, %39
  %41 = load i32, ptr %14, align 4
  %42 = icmp sle i32 %41, 46
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R46)
  %45 = load double, ptr %44, align 8
  %46 = fmul double 5.000000e-01, %45
  %47 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R46)
  store double %46, ptr %47, align 8
  %48 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T46)
  %49 = load double, ptr %48, align 8
  %50 = fmul double 2.000000e+00, %49
  %51 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T46)
  store double %50, ptr %51, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i32, ptr %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %14, align 4
  br label %40, !llvm.loop !9

55:                                               ; preds = %40
  %56 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @KS)
  store i32 1, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %2
  %58 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R23)
  %59 = load double, ptr %58, align 8
  %60 = load ptr, ptr %4, align 8
  %61 = load double, ptr %60, align 8
  %62 = fmul double %59, %61
  store double %62, ptr %5, align 8
  %63 = load double, ptr %5, align 8
  %64 = fptosi double %63 to i32
  store i32 %64, ptr %15, align 4
  %65 = load i32, ptr %15, align 4
  %66 = sitofp i32 %65 to double
  store double %66, ptr %9, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = load double, ptr %67, align 8
  %69 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  %70 = load double, ptr %69, align 8
  %71 = load double, ptr %9, align 8
  %72 = fneg double %70
  %73 = call double @llvm.fmuladd.f64(double %72, double %71, double %68)
  store double %73, ptr %10, align 8
  %74 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R23)
  %75 = load double, ptr %74, align 8
  %76 = load ptr, ptr %3, align 8
  %77 = load double, ptr %76, align 8
  %78 = fmul double %75, %77
  store double %78, ptr %5, align 8
  %79 = load double, ptr %5, align 8
  %80 = fptosi double %79 to i32
  store i32 %80, ptr %15, align 4
  %81 = load i32, ptr %15, align 4
  %82 = sitofp i32 %81 to double
  store double %82, ptr %11, align 8
  %83 = load ptr, ptr %3, align 8
  %84 = load double, ptr %83, align 8
  %85 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  %86 = load double, ptr %85, align 8
  %87 = load double, ptr %11, align 8
  %88 = fneg double %86
  %89 = call double @llvm.fmuladd.f64(double %88, double %87, double %84)
  store double %89, ptr %12, align 8
  %90 = load double, ptr %9, align 8
  %91 = load double, ptr %12, align 8
  %92 = load double, ptr %10, align 8
  %93 = load double, ptr %11, align 8
  %94 = fmul double %92, %93
  %95 = call double @llvm.fmuladd.f64(double %90, double %91, double %94)
  store double %95, ptr %5, align 8
  %96 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R23)
  %97 = load double, ptr %96, align 8
  %98 = load double, ptr %5, align 8
  %99 = fmul double %97, %98
  %100 = fptosi double %99 to i32
  store i32 %100, ptr %15, align 4
  %101 = load i32, ptr %15, align 4
  %102 = sitofp i32 %101 to double
  store double %102, ptr %6, align 8
  %103 = load double, ptr %5, align 8
  %104 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  %105 = load double, ptr %104, align 8
  %106 = load double, ptr %6, align 8
  %107 = fneg double %105
  %108 = call double @llvm.fmuladd.f64(double %107, double %106, double %103)
  store double %108, ptr %13, align 8
  %109 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  %110 = load double, ptr %109, align 8
  %111 = load double, ptr %13, align 8
  %112 = load double, ptr %10, align 8
  %113 = load double, ptr %12, align 8
  %114 = fmul double %112, %113
  %115 = call double @llvm.fmuladd.f64(double %110, double %111, double %114)
  store double %115, ptr %7, align 8
  %116 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R46)
  %117 = load double, ptr %116, align 8
  %118 = load double, ptr %7, align 8
  %119 = fmul double %117, %118
  %120 = fptosi double %119 to i32
  store i32 %120, ptr %15, align 4
  %121 = load i32, ptr %15, align 4
  %122 = sitofp i32 %121 to double
  store double %122, ptr %8, align 8
  %123 = load double, ptr %7, align 8
  %124 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T46)
  %125 = load double, ptr %124, align 8
  %126 = load double, ptr %8, align 8
  %127 = fneg double %125
  %128 = call double @llvm.fmuladd.f64(double %127, double %126, double %123)
  %129 = load ptr, ptr %3, align 8
  store double %128, ptr %129, align 8
  %130 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R46)
  %131 = load double, ptr %130, align 8
  %132 = load ptr, ptr %3, align 8
  %133 = load double, ptr %132, align 8
  %134 = fmul double %131, %133
  ret double %134
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @find_my_seed(i32 noundef %0, i32 noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, ptr %7, align 4
  store i32 %1, ptr %8, align 4
  store i64 %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  store double %4, ptr %11, align 8
  %18 = load i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load double, ptr %10, align 8
  store double %21, ptr %6, align 8
  br label %61

22:                                               ; preds = %5
  %23 = load i64, ptr %9, align 8
  %24 = sdiv i64 %23, 4
  %25 = load i32, ptr %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = sub nsw i64 %27, 1
  %29 = load i32, ptr %8, align 4
  %30 = sext i32 %29 to i64
  %31 = sdiv i64 %28, %30
  store i64 %31, ptr %14, align 8
  %32 = load i64, ptr %14, align 8
  %33 = mul nsw i64 %32, 4
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %33, %35
  store i64 %36, ptr %15, align 8
  %37 = load double, ptr %10, align 8
  store double %37, ptr %12, align 8
  %38 = load double, ptr %11, align 8
  store double %38, ptr %13, align 8
  %39 = load i64, ptr %15, align 8
  store i64 %39, ptr %16, align 8
  br label %40

40:                                               ; preds = %57, %22
  %41 = load i64, ptr %16, align 8
  %42 = icmp sgt i64 %41, 1
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i64, ptr %16, align 8
  %45 = sdiv i64 %44, 2
  store i64 %45, ptr %17, align 8
  %46 = load i64, ptr %17, align 8
  %47 = mul nsw i64 2, %46
  %48 = load i64, ptr %16, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = call double @randlc(ptr noundef %13, ptr noundef %13)
  %52 = load i64, ptr %17, align 8
  store i64 %52, ptr %16, align 8
  br label %57

53:                                               ; preds = %43
  %54 = call double @randlc(ptr noundef %12, ptr noundef %13)
  %55 = load i64, ptr %16, align 8
  %56 = sub nsw i64 %55, 1
  store i64 %56, ptr %16, align 8
  br label %57

57:                                               ; preds = %53, %50
  br label %40, !llvm.loop !10

58:                                               ; preds = %40
  %59 = call double @randlc(ptr noundef %12, ptr noundef %13)
  %60 = load double, ptr %12, align 8
  store double %60, ptr %6, align 8
  br label %61

61:                                               ; preds = %58, %20
  %62 = load double, ptr %6, align 8
  ret double %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_seq(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @4, i32 2, ptr @create_seq.omp_outlined, ptr %4, ptr %3)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @create_seq.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = load double, ptr %19, align 8
  store double %21, ptr %15, align 8
  store i32 0, ptr %16, align 4
  store i32 1, ptr %17, align 4
  %22 = call i32 @omp_get_thread_num()
  store i32 %22, ptr %16, align 4
  %23 = call i32 @omp_get_num_threads()
  store i32 %23, ptr %17, align 4
  %24 = load i32, ptr %17, align 4
  %25 = add nsw i32 8388608, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, ptr %17, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, ptr %18, align 4
  %29 = load i32, ptr %18, align 4
  %30 = load i32, ptr %16, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, ptr %13, align 4
  %32 = load i32, ptr %13, align 4
  %33 = load i32, ptr %18, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, ptr %14, align 4
  %35 = load i32, ptr %14, align 4
  %36 = icmp sgt i32 %35, 8388608
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 8388608, ptr %14, align 4
  br label %38

38:                                               ; preds = %37, %4
  %39 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @KS)
  store i32 0, ptr %39, align 4
  %40 = load i32, ptr %16, align 4
  %41 = load i32, ptr %17, align 4
  %42 = load double, ptr %20, align 8
  %43 = load double, ptr %15, align 8
  %44 = call double @find_my_seed(i32 noundef %40, i32 noundef %41, i64 noundef 33554432, double noundef %42, double noundef %43)
  store double %44, ptr %10, align 8
  store i32 131072, ptr %12, align 4
  %45 = load i32, ptr %13, align 4
  store i32 %45, ptr %11, align 4
  br label %46

46:                                               ; preds = %69, %38
  %47 = load i32, ptr %11, align 4
  %48 = load i32, ptr %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = call double @randlc(ptr noundef %10, ptr noundef %15)
  store double %51, ptr %9, align 8
  %52 = call double @randlc(ptr noundef %10, ptr noundef %15)
  %53 = load double, ptr %9, align 8
  %54 = fadd double %53, %52
  store double %54, ptr %9, align 8
  %55 = call double @randlc(ptr noundef %10, ptr noundef %15)
  %56 = load double, ptr %9, align 8
  %57 = fadd double %56, %55
  store double %57, ptr %9, align 8
  %58 = call double @randlc(ptr noundef %10, ptr noundef %15)
  %59 = load double, ptr %9, align 8
  %60 = fadd double %59, %58
  store double %60, ptr %9, align 8
  %61 = load i32, ptr %12, align 4
  %62 = sitofp i32 %61 to double
  %63 = load double, ptr %9, align 8
  %64 = fmul double %62, %63
  %65 = fptosi double %64 to i32
  %66 = load i32, ptr %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8388608 x i32], ptr @key_array, i64 0, i64 %67
  store i32 %65, ptr %68, align 4
  br label %69

69:                                               ; preds = %50
  %70 = load i32, ptr %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %11, align 4
  br label %46, !llvm.loop !11

72:                                               ; preds = %46
  ret void
}

; Function Attrs: nounwind
declare !callback !12 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @omp_get_num_threads() local_unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @alloc_mem(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store i64 %0, ptr %2, align 8
  %4 = load i64, ptr %2, align 8
  %5 = call noalias ptr @malloc(i64 noundef %4) #16
  store ptr %5, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void @perror(ptr noundef @.str) #17
  call void @exit(i32 noundef 1) #18
  unreachable

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  ret ptr %10
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_key_buff() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, ptr %2, align 4
  %3 = call i32 @omp_get_max_threads()
  store i32 %3, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = sext i32 %4 to i64
  %6 = mul nsw i64 8, %5
  %7 = call ptr @alloc_mem(i64 noundef %6)
  store ptr %7, ptr @bucket_size, align 8
  store i32 0, ptr %1, align 4
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32, ptr %1, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = call ptr @alloc_mem(i64 noundef 4096)
  %14 = load ptr, ptr @bucket_size, align 8
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  store ptr %13, ptr %17, align 8
  br label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %1, align 4
  br label %8, !llvm.loop !14

21:                                               ; preds = %8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @4, i32 0, ptr @alloc_key_buff.omp_outlined)
  ret void
}

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #4

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @alloc_key_buff.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %7, align 4
  store i32 8388607, ptr %8, align 4
  store i32 1, ptr %9, align 4
  store i32 0, ptr %10, align 4
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %12, align 4
  call void @__kmpc_for_static_init_4(ptr @0, i32 %13, i32 34, ptr %10, ptr %7, ptr %8, ptr %9, i32 1, i32 1)
  %14 = load i32, ptr %8, align 4
  %15 = icmp sgt i32 %14, 8388607
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %19

17:                                               ; preds = %2
  %18 = load i32, ptr %8, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 8388607, %16 ], [ %18, %17 ]
  store i32 %20, ptr %8, align 4
  %21 = load i32, ptr %7, align 4
  store i32 %21, ptr %5, align 4
  br label %22

22:                                               ; preds = %34, %19
  %23 = load i32, ptr %5, align 4
  %24 = load i32, ptr %8, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32, ptr %5, align 4
  %28 = mul nuw nsw i32 %27, 1
  %29 = add nuw nsw i32 0, %28
  store i32 %29, ptr %11, align 4
  %30 = load i32, ptr %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8388608 x i32], ptr @key_buff2, i64 0, i64 %31
  store i32 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %5, align 4
  br label %22

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  call void @__kmpc_for_static_fini(ptr @0, i32 %13)
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_key_buff() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, ptr %2, align 4
  %3 = call i32 @omp_get_max_threads()
  store i32 %3, ptr %2, align 4
  store i32 0, ptr %1, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, ptr %1, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load ptr, ptr @bucket_size, align 8
  %10 = load i32, ptr %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %13) #3
  br label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %1, align 4
  br label %4, !llvm.loop !15

17:                                               ; preds = %4
  %18 = load ptr, ptr @bucket_size, align 8
  call void @free(ptr noundef %18) #3
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @full_verify() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @4, i32 0, ptr @full_verify.omp_outlined)
  store i32 0, ptr %2, align 4
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @4, i32 1, ptr @full_verify.omp_outlined.1, ptr %2)
  %6 = load i32, ptr %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, ptr %2, align 4
  %10 = sext i32 %9 to i64
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %10)
  br label %15

12:                                               ; preds = %0
  %13 = load i32, ptr @passed_verification, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @passed_verification, align 4
  br label %15

15:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @full_verify.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %7, align 4
  store i32 1023, ptr %8, align 4
  store i32 1, ptr %9, align 4
  store i32 0, ptr %10, align 4
  %16 = load ptr, ptr %3, align 8
  %17 = load i32, ptr %16, align 4
  call void @__kmpc_dispatch_init_4(ptr @4, i32 %17, i32 1073741859, i32 0, i32 1023, i32 1, i32 1)
  br label %18

18:                                               ; preds = %78, %2
  %19 = call i32 @__kmpc_dispatch_next_4(ptr @4, i32 %17, ptr %10, ptr %7, ptr %8, ptr %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  store i32 %22, ptr %5, align 4
  br label %23

23:                                               ; preds = %74, %21
  %24 = load i32, ptr %5, align 4, !llvm.access.group !16
  %25 = load i32, ptr %8, align 4, !llvm.access.group !16
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %23
  %28 = load i32, ptr %5, align 4, !llvm.access.group !16
  %29 = mul nuw nsw i32 %28, 1
  %30 = add nuw nsw i32 0, %29
  store i32 %30, ptr %12, align 4, !llvm.access.group !16
  %31 = load i32, ptr %12, align 4, !llvm.access.group !16
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %35 = load i32, ptr %12, align 4, !llvm.access.group !16
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1024 x i32], ptr %34, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !llvm.access.group !16
  br label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i32 [ %39, %33 ], [ 0, %40 ]
  store i32 %42, ptr %14, align 4, !llvm.access.group !16
  %43 = load i32, ptr %14, align 4, !llvm.access.group !16
  store i32 %43, ptr %11, align 4, !llvm.access.group !16
  br label %44

44:                                               ; preds = %69, %41
  %45 = load i32, ptr %11, align 4, !llvm.access.group !16
  %46 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %47 = load i32, ptr %12, align 4, !llvm.access.group !16
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !llvm.access.group !16
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %44
  %53 = load ptr, ptr @key_buff_ptr_global, align 8, !llvm.access.group !16
  %54 = load i32, ptr %11, align 4, !llvm.access.group !16
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8388608 x i32], ptr @key_buff2, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !llvm.access.group !16
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %53, i64 %58
  %60 = load i32, ptr %59, align 4, !llvm.access.group !16
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %59, align 4, !llvm.access.group !16
  store i32 %61, ptr %13, align 4, !llvm.access.group !16
  %62 = load i32, ptr %11, align 4, !llvm.access.group !16
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8388608 x i32], ptr @key_buff2, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !llvm.access.group !16
  %66 = load i32, ptr %13, align 4, !llvm.access.group !16
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8388608 x i32], ptr @key_array, i64 0, i64 %67
  store i32 %65, ptr %68, align 4, !llvm.access.group !16
  br label %69

69:                                               ; preds = %52
  %70 = load i32, ptr %11, align 4, !llvm.access.group !16
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %11, align 4, !llvm.access.group !16
  br label %44, !llvm.loop !17

72:                                               ; preds = %44
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  %75 = load i32, ptr %5, align 4, !llvm.access.group !16
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %5, align 4, !llvm.access.group !16
  br label %23, !llvm.loop !18

77:                                               ; preds = %23
  br label %78

78:                                               ; preds = %77
  br label %18

79:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @full_verify.omp_outlined.1(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x ptr], align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  store i32 0, ptr %9, align 4
  store i32 8388606, ptr %10, align 4
  store i32 1, ptr %11, align 4
  store i32 0, ptr %12, align 4
  store i32 0, ptr %13, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %17, align 4
  call void @__kmpc_for_static_init_4(ptr @0, i32 %18, i32 34, ptr %12, ptr %9, ptr %10, ptr %11, i32 1, i32 1)
  %19 = load i32, ptr %10, align 4
  %20 = icmp sgt i32 %19, 8388606
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %24

22:                                               ; preds = %3
  %23 = load i32, ptr %10, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 8388606, %21 ], [ %23, %22 ]
  store i32 %25, ptr %10, align 4
  %26 = load i32, ptr %9, align 4
  store i32 %26, ptr %7, align 4
  br label %27

27:                                               ; preds = %50, %24
  %28 = load i32, ptr %7, align 4
  %29 = load i32, ptr %10, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i32, ptr %7, align 4
  %33 = mul nuw nsw i32 %32, 1
  %34 = add nsw i32 1, %33
  store i32 %34, ptr %14, align 4
  %35 = load i32, ptr %14, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8388608 x i32], ptr @key_array, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8388608 x i32], ptr @key_array, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, ptr %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %13, align 4
  br label %48

48:                                               ; preds = %45, %31
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %7, align 4
  br label %27

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53
  call void @__kmpc_for_static_fini(ptr @0, i32 %18)
  %55 = getelementptr inbounds [1 x ptr], ptr %15, i64 0, i64 0
  store ptr %13, ptr %55, align 8
  %56 = call i32 @__kmpc_reduce_nowait(ptr @1, i32 %18, i32 1, i64 8, ptr %15, ptr @full_verify.omp_outlined.1.omp.reduction.reduction_func, ptr @.gomp_critical_user_.reduction.var)
  switch i32 %56, label %64 [
    i32 1, label %57
    i32 2, label %61
  ]

57:                                               ; preds = %54
  %58 = load i32, ptr %16, align 4
  %59 = load i32, ptr %13, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, ptr %16, align 4
  call void @__kmpc_end_reduce_nowait(ptr @1, i32 %18, ptr @.gomp_critical_user_.reduction.var)
  br label %64

61:                                               ; preds = %54
  %62 = load i32, ptr %13, align 4
  %63 = atomicrmw add ptr %16, i32 %62 monotonic, align 4
  br label %64

64:                                               ; preds = %61, %57, %54
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @full_verify.omp_outlined.1.omp.reduction.reduction_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = add nsw i32 %6, %5
  store i32 %7, ptr %4, align 4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_4(ptr, i32, i32, i32, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_4(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rank(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 9, ptr %7, align 4
  %12 = load i32, ptr %7, align 4
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %8, align 4
  %16 = load i32, ptr %2, align 4
  %17 = load i32, ptr %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8388608 x i32], ptr @key_array, i64 0, i64 %18
  store i32 %16, ptr %19, align 4
  %20 = load i32, ptr %2, align 4
  %21 = sub nsw i32 524288, %20
  %22 = load i32, ptr %2, align 4
  %23 = add nsw i32 %22, 10
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8388608 x i32], ptr @key_array, i64 0, i64 %24
  store i32 %21, ptr %25, align 4
  store i32 0, ptr %3, align 4
  call void @end_hook()
  br label %26

26:                                               ; preds = %40, %1
  %27 = load i32, ptr %3, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x i32], ptr @test_index_array, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8388608 x i32], ptr @key_array, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i32], ptr @partial_verify_vals, i64 0, i64 %38
  store i32 %36, ptr %39, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, ptr %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %3, align 4
  br label %26, !llvm.loop !20

43:                                               ; preds = %26
  store ptr @key_buff2, ptr %6, align 8
  store ptr @key_buff1, ptr %5, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @4, i32 4, ptr @rank.omp_outlined, ptr %7, ptr %8, ptr %5, ptr %6)
  store i32 0, ptr %3, align 4
  br label %44

44:                                               ; preds = %97, %43
  %45 = load i32, ptr %3, align 4
  %46 = icmp slt i32 %45, 5
  br i1 %46, label %47, label %100

47:                                               ; preds = %44
  %48 = load i32, ptr %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [5 x i32], ptr @partial_verify_vals, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %4, align 4
  %52 = load i32, ptr %4, align 4
  %53 = icmp slt i32 0, %52
  br i1 %53, label %54, label %96

54:                                               ; preds = %47
  %55 = load i32, ptr %4, align 4
  %56 = icmp sle i32 %55, 8388607
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  %58 = load ptr, ptr %5, align 8
  %59 = load i32, ptr %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %58, i64 %61
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %9, align 4
  %64 = load i32, ptr %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [5 x i32], ptr @test_rank_array, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %10, align 4
  store i32 0, ptr %11, align 4
  %68 = load i32, ptr %3, align 4
  %69 = icmp sle i32 %68, 2
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load i32, ptr %2, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, ptr %10, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, ptr %10, align 4
  br label %80

75:                                               ; preds = %57
  %76 = load i32, ptr %2, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load i32, ptr %10, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, ptr %10, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, ptr %9, align 4
  %82 = load i32, ptr %10, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, ptr %11, align 4
  br label %88

85:                                               ; preds = %80
  %86 = load i32, ptr @passed_verification, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr @passed_verification, align 4
  br label %88

88:                                               ; preds = %85, %84
  %89 = load i32, ptr %11, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, ptr %2, align 4
  %93 = load i32, ptr %3, align 4
  %94 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %92, i32 noundef %93)
  br label %95

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %54, %47
  br label %97

97:                                               ; preds = %96
  %98 = load i32, ptr %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %3, align 4
  br label %44, !llvm.loop !21

100:                                              ; preds = %44
  %101 = load i32, ptr %2, align 4
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load ptr, ptr %5, align 8
  store ptr %104, ptr @key_buff_ptr_global, align 8
  br label %105

105:                                              ; preds = %103, %100
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @rank.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #2 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
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
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %42 = load ptr, ptr %9, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = load ptr, ptr %11, align 8
  %45 = load ptr, ptr %12, align 8
  store i32 0, ptr %19, align 4
  store i32 1, ptr %20, align 4
  %46 = call i32 @omp_get_thread_num()
  store i32 %46, ptr %19, align 4
  %47 = call i32 @omp_get_num_threads()
  store i32 %47, ptr %20, align 4
  %48 = load ptr, ptr @bucket_size, align 8
  %49 = load i32, ptr %19, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8
  store ptr %52, ptr %15, align 8
  store i32 0, ptr %13, align 4
  br label %53

53:                                               ; preds = %61, %6
  %54 = load i32, ptr %13, align 4
  %55 = icmp slt i32 %54, 1024
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr %15, align 8
  %58 = load i32, ptr %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %13, align 4
  br label %53, !llvm.loop !22

64:                                               ; preds = %53
  store i32 0, ptr %23, align 4
  store i32 8388607, ptr %24, align 4
  store i32 1, ptr %25, align 4
  store i32 0, ptr %26, align 4
  %65 = load ptr, ptr %7, align 8
  %66 = load i32, ptr %65, align 4
  call void @__kmpc_for_static_init_4(ptr @0, i32 %66, i32 34, ptr %26, ptr %23, ptr %24, ptr %25, i32 1, i32 1)
  %67 = load i32, ptr %24, align 4
  %68 = icmp sgt i32 %67, 8388607
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %72

70:                                               ; preds = %64
  %71 = load i32, ptr %24, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ 8388607, %69 ], [ %71, %70 ]
  store i32 %73, ptr %24, align 4
  %74 = load i32, ptr %23, align 4
  store i32 %74, ptr %21, align 4
  br label %75

75:                                               ; preds = %95, %72
  %76 = load i32, ptr %21, align 4
  %77 = load i32, ptr %24, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = load i32, ptr %21, align 4
  %81 = mul nuw nsw i32 %80, 1
  %82 = add nuw nsw i32 0, %81
  store i32 %82, ptr %27, align 4
  %83 = load ptr, ptr %15, align 8
  %84 = load i32, ptr %27, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8388608 x i32], ptr @key_array, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %42, align 4
  %89 = ashr i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %83, i64 %90
  %92 = load i32, ptr %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %21, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %21, align 4
  br label %75

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %7, align 8
  %101 = load i32, ptr %100, align 4
  call void @__kmpc_for_static_fini(ptr @0, i32 %101)
  %102 = load ptr, ptr %7, align 8
  %103 = load i32, ptr %102, align 4
  call void @__kmpc_barrier(ptr @2, i32 %103)
  %104 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %105 = getelementptr inbounds [1024 x i32], ptr %104, i64 0, i64 0
  store i32 0, ptr %105, align 16
  store i32 0, ptr %14, align 4
  br label %106

106:                                              ; preds = %122, %99
  %107 = load i32, ptr %14, align 4
  %108 = load i32, ptr %19, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %106
  %111 = load ptr, ptr @bucket_size, align 8
  %112 = load i32, ptr %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %111, i64 %113
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds i32, ptr %115, i64 0
  %117 = load i32, ptr %116, align 4
  %118 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %119 = getelementptr inbounds [1024 x i32], ptr %118, i64 0, i64 0
  %120 = load i32, ptr %119, align 16
  %121 = add nsw i32 %120, %117
  store i32 %121, ptr %119, align 16
  br label %122

122:                                              ; preds = %110
  %123 = load i32, ptr %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %14, align 4
  br label %106, !llvm.loop !23

125:                                              ; preds = %106
  store i32 1, ptr %13, align 4
  br label %126

126:                                              ; preds = %190, %125
  %127 = load i32, ptr %13, align 4
  %128 = icmp slt i32 %127, 1024
  br i1 %128, label %129, label %193

129:                                              ; preds = %126
  %130 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %131 = load i32, ptr %13, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [1024 x i32], ptr %130, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4
  %136 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %137 = load i32, ptr %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [1024 x i32], ptr %136, i64 0, i64 %138
  store i32 %135, ptr %139, align 4
  store i32 0, ptr %14, align 4
  br label %140

140:                                              ; preds = %160, %129
  %141 = load i32, ptr %14, align 4
  %142 = load i32, ptr %19, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %140
  %145 = load ptr, ptr @bucket_size, align 8
  %146 = load i32, ptr %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds ptr, ptr %145, i64 %147
  %149 = load ptr, ptr %148, align 8
  %150 = load i32, ptr %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, ptr %149, i64 %151
  %153 = load i32, ptr %152, align 4
  %154 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %155 = load i32, ptr %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [1024 x i32], ptr %154, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = add nsw i32 %158, %153
  store i32 %159, ptr %157, align 4
  br label %160

160:                                              ; preds = %144
  %161 = load i32, ptr %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %14, align 4
  br label %140, !llvm.loop !24

163:                                              ; preds = %140
  %164 = load i32, ptr %19, align 4
  store i32 %164, ptr %14, align 4
  br label %165

165:                                              ; preds = %186, %163
  %166 = load i32, ptr %14, align 4
  %167 = load i32, ptr %20, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %189

169:                                              ; preds = %165
  %170 = load ptr, ptr @bucket_size, align 8
  %171 = load i32, ptr %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %170, i64 %172
  %174 = load ptr, ptr %173, align 8
  %175 = load i32, ptr %13, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %174, i64 %177
  %179 = load i32, ptr %178, align 4
  %180 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %181 = load i32, ptr %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [1024 x i32], ptr %180, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4
  %185 = add nsw i32 %184, %179
  store i32 %185, ptr %183, align 4
  br label %186

186:                                              ; preds = %169
  %187 = load i32, ptr %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %14, align 4
  br label %165, !llvm.loop !25

189:                                              ; preds = %165
  br label %190

190:                                              ; preds = %189
  %191 = load i32, ptr %13, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, ptr %13, align 4
  br label %126, !llvm.loop !26

193:                                              ; preds = %126
  store i32 0, ptr %30, align 4
  store i32 8388607, ptr %31, align 4
  store i32 1, ptr %32, align 4
  store i32 0, ptr %33, align 4
  %194 = load ptr, ptr %7, align 8
  %195 = load i32, ptr %194, align 4
  call void @__kmpc_for_static_init_4(ptr @0, i32 %195, i32 34, ptr %33, ptr %30, ptr %31, ptr %32, i32 1, i32 1)
  %196 = load i32, ptr %31, align 4
  %197 = icmp sgt i32 %196, 8388607
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %201

199:                                              ; preds = %193
  %200 = load i32, ptr %31, align 4
  br label %201

201:                                              ; preds = %199, %198
  %202 = phi i32 [ 8388607, %198 ], [ %200, %199 ]
  store i32 %202, ptr %31, align 4
  %203 = load i32, ptr %30, align 4
  store i32 %203, ptr %28, align 4
  br label %204

204:                                              ; preds = %228, %201
  %205 = load i32, ptr %28, align 4
  %206 = load i32, ptr %31, align 4
  %207 = icmp sle i32 %205, %206
  br i1 %207, label %208, label %231

208:                                              ; preds = %204
  %209 = load i32, ptr %28, align 4
  %210 = mul nuw nsw i32 %209, 1
  %211 = add nuw nsw i32 0, %210
  store i32 %211, ptr %34, align 4
  %212 = load i32, ptr %34, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [8388608 x i32], ptr @key_array, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4
  store i32 %215, ptr %14, align 4
  %216 = load i32, ptr %14, align 4
  %217 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %218 = load i32, ptr %14, align 4
  %219 = load i32, ptr %42, align 4
  %220 = ashr i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [1024 x i32], ptr %217, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr %222, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds [8388608 x i32], ptr @key_buff2, i64 0, i64 %225
  store i32 %216, ptr %226, align 4
  br label %227

227:                                              ; preds = %208
  br label %228

228:                                              ; preds = %227
  %229 = load i32, ptr %28, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr %28, align 4
  br label %204

231:                                              ; preds = %204
  br label %232

232:                                              ; preds = %231
  %233 = load ptr, ptr %7, align 8
  %234 = load i32, ptr %233, align 4
  call void @__kmpc_for_static_fini(ptr @0, i32 %234)
  %235 = load ptr, ptr %7, align 8
  %236 = load i32, ptr %235, align 4
  call void @__kmpc_barrier(ptr @2, i32 %236)
  %237 = load i32, ptr %19, align 4
  %238 = load i32, ptr %20, align 4
  %239 = sub nsw i32 %238, 1
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %276

241:                                              ; preds = %232
  store i32 0, ptr %13, align 4
  br label %242

242:                                              ; preds = %272, %241
  %243 = load i32, ptr %13, align 4
  %244 = icmp slt i32 %243, 1024
  br i1 %244, label %245, label %275

245:                                              ; preds = %242
  %246 = load i32, ptr %19, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr %14, align 4
  br label %248

248:                                              ; preds = %268, %245
  %249 = load i32, ptr %14, align 4
  %250 = load i32, ptr %20, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %271

252:                                              ; preds = %248
  %253 = load ptr, ptr @bucket_size, align 8
  %254 = load i32, ptr %14, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds ptr, ptr %253, i64 %255
  %257 = load ptr, ptr %256, align 8
  %258 = load i32, ptr %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, ptr %257, i64 %259
  %261 = load i32, ptr %260, align 4
  %262 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %263 = load i32, ptr %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [1024 x i32], ptr %262, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4
  %267 = add nsw i32 %266, %261
  store i32 %267, ptr %265, align 4
  br label %268

268:                                              ; preds = %252
  %269 = load i32, ptr %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, ptr %14, align 4
  br label %248, !llvm.loop !27

271:                                              ; preds = %248
  br label %272

272:                                              ; preds = %271
  %273 = load i32, ptr %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, ptr %13, align 4
  br label %242, !llvm.loop !28

275:                                              ; preds = %242
  br label %276

276:                                              ; preds = %275, %232
  store i32 0, ptr %37, align 4
  store i32 1023, ptr %38, align 4
  store i32 1, ptr %39, align 4
  store i32 0, ptr %40, align 4
  %277 = load ptr, ptr %7, align 8
  %278 = load i32, ptr %277, align 4
  call void @__kmpc_dispatch_init_4(ptr @4, i32 %278, i32 1073741859, i32 0, i32 1023, i32 1, i32 1)
  br label %279

279:                                              ; preds = %385, %276
  %280 = load ptr, ptr %7, align 8
  %281 = load i32, ptr %280, align 4
  %282 = call i32 @__kmpc_dispatch_next_4(ptr @4, i32 %281, ptr %40, ptr %37, ptr %38, ptr %39)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %386

284:                                              ; preds = %279
  %285 = load i32, ptr %37, align 4
  store i32 %285, ptr %35, align 4
  br label %286

286:                                              ; preds = %381, %284
  %287 = load i32, ptr %35, align 4, !llvm.access.group !29
  %288 = load i32, ptr %38, align 4, !llvm.access.group !29
  %289 = icmp sle i32 %287, %288
  br i1 %289, label %290, label %384

290:                                              ; preds = %286
  %291 = load i32, ptr %35, align 4, !llvm.access.group !29
  %292 = mul nuw nsw i32 %291, 1
  %293 = add nuw nsw i32 0, %292
  store i32 %293, ptr %41, align 4, !llvm.access.group !29
  %294 = load i32, ptr %41, align 4, !llvm.access.group !29
  %295 = load i32, ptr %43, align 4, !llvm.access.group !29
  %296 = mul nsw i32 %294, %295
  store i32 %296, ptr %17, align 4, !llvm.access.group !29
  %297 = load i32, ptr %17, align 4, !llvm.access.group !29
  %298 = load i32, ptr %43, align 4, !llvm.access.group !29
  %299 = add nsw i32 %297, %298
  store i32 %299, ptr %18, align 4, !llvm.access.group !29
  %300 = load i32, ptr %17, align 4, !llvm.access.group !29
  store i32 %300, ptr %14, align 4, !llvm.access.group !29
  br label %301

301:                                              ; preds = %310, %290
  %302 = load i32, ptr %14, align 4, !llvm.access.group !29
  %303 = load i32, ptr %18, align 4, !llvm.access.group !29
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %301
  %306 = load ptr, ptr %44, align 8, !llvm.access.group !29
  %307 = load i32, ptr %14, align 4, !llvm.access.group !29
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, ptr %306, i64 %308
  store i32 0, ptr %309, align 4, !llvm.access.group !29
  br label %310

310:                                              ; preds = %305
  %311 = load i32, ptr %14, align 4, !llvm.access.group !29
  %312 = add nsw i32 %311, 1
  store i32 %312, ptr %14, align 4, !llvm.access.group !29
  br label %301, !llvm.loop !30

313:                                              ; preds = %301
  %314 = load i32, ptr %41, align 4, !llvm.access.group !29
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %313
  %317 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %318 = load i32, ptr %41, align 4, !llvm.access.group !29
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [1024 x i32], ptr %317, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4, !llvm.access.group !29
  br label %324

323:                                              ; preds = %313
  br label %324

324:                                              ; preds = %323, %316
  %325 = phi i32 [ %322, %316 ], [ 0, %323 ]
  store i32 %325, ptr %16, align 4, !llvm.access.group !29
  %326 = load i32, ptr %16, align 4, !llvm.access.group !29
  store i32 %326, ptr %14, align 4, !llvm.access.group !29
  br label %327

327:                                              ; preds = %346, %324
  %328 = load i32, ptr %14, align 4, !llvm.access.group !29
  %329 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  %330 = load i32, ptr %41, align 4, !llvm.access.group !29
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [1024 x i32], ptr %329, i64 0, i64 %331
  %333 = load i32, ptr %332, align 4, !llvm.access.group !29
  %334 = icmp slt i32 %328, %333
  br i1 %334, label %335, label %349

335:                                              ; preds = %327
  %336 = load ptr, ptr %44, align 8, !llvm.access.group !29
  %337 = load ptr, ptr %45, align 8, !llvm.access.group !29
  %338 = load i32, ptr %14, align 4, !llvm.access.group !29
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, ptr %337, i64 %339
  %341 = load i32, ptr %340, align 4, !llvm.access.group !29
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, ptr %336, i64 %342
  %344 = load i32, ptr %343, align 4, !llvm.access.group !29
  %345 = add nsw i32 %344, 1
  store i32 %345, ptr %343, align 4, !llvm.access.group !29
  br label %346

346:                                              ; preds = %335
  %347 = load i32, ptr %14, align 4, !llvm.access.group !29
  %348 = add nsw i32 %347, 1
  store i32 %348, ptr %14, align 4, !llvm.access.group !29
  br label %327, !llvm.loop !31

349:                                              ; preds = %327
  %350 = load i32, ptr %16, align 4, !llvm.access.group !29
  %351 = load ptr, ptr %44, align 8, !llvm.access.group !29
  %352 = load i32, ptr %17, align 4, !llvm.access.group !29
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, ptr %351, i64 %353
  %355 = load i32, ptr %354, align 4, !llvm.access.group !29
  %356 = add nsw i32 %355, %350
  store i32 %356, ptr %354, align 4, !llvm.access.group !29
  %357 = load i32, ptr %17, align 4, !llvm.access.group !29
  %358 = add nsw i32 %357, 1
  store i32 %358, ptr %14, align 4, !llvm.access.group !29
  br label %359

359:                                              ; preds = %376, %349
  %360 = load i32, ptr %14, align 4, !llvm.access.group !29
  %361 = load i32, ptr %18, align 4, !llvm.access.group !29
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %379

363:                                              ; preds = %359
  %364 = load ptr, ptr %44, align 8, !llvm.access.group !29
  %365 = load i32, ptr %14, align 4, !llvm.access.group !29
  %366 = sub nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, ptr %364, i64 %367
  %369 = load i32, ptr %368, align 4, !llvm.access.group !29
  %370 = load ptr, ptr %44, align 8, !llvm.access.group !29
  %371 = load i32, ptr %14, align 4, !llvm.access.group !29
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, ptr %370, i64 %372
  %374 = load i32, ptr %373, align 4, !llvm.access.group !29
  %375 = add nsw i32 %374, %369
  store i32 %375, ptr %373, align 4, !llvm.access.group !29
  br label %376

376:                                              ; preds = %363
  %377 = load i32, ptr %14, align 4, !llvm.access.group !29
  %378 = add nsw i32 %377, 1
  store i32 %378, ptr %14, align 4, !llvm.access.group !29
  br label %359, !llvm.loop !32

379:                                              ; preds = %359
  br label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  %382 = load i32, ptr %35, align 4, !llvm.access.group !29
  %383 = add nsw i32 %382, 1
  store i32 %383, ptr %35, align 4, !llvm.access.group !29
  br label %286, !llvm.loop !33

384:                                              ; preds = %286
  br label %385

385:                                              ; preds = %384
  br label %279

386:                                              ; preds = %279
  %387 = load ptr, ptr %7, align 8
  %388 = load i32, ptr %387, align 4
  call void @__kmpc_barrier(ptr @2, i32 %388)
  ret void
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #11

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %12 = call i32 @check_timer_flag()
  store i32 %12, ptr %8, align 4
  call void @timer_clear(i32 noundef 0)
  %13 = load i32, ptr %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @timer_clear(i32 noundef 1)
  call void @timer_clear(i32 noundef 2)
  call void @timer_clear(i32 noundef 3)
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i32, ptr %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @timer_start(i32 noundef 3)
  br label %20

20:                                               ; preds = %19, %16
  store i32 0, ptr %6, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, ptr %6, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i32], ptr @A_test_index_array, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i32], ptr @test_index_array, i64 0, i64 %30
  store i32 %28, ptr %31, align 4
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x i32], ptr @A_test_rank_array, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x i32], ptr @test_rank_array, i64 0, i64 %37
  store i32 %35, ptr %38, align 4
  br label %39

39:                                               ; preds = %24
  %40 = load i32, ptr %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %6, align 4
  br label %21, !llvm.loop !35

42:                                               ; preds = %21
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i64 noundef 8388608, i32 noundef 65)
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef 10)
  %46 = call i32 @omp_get_max_threads()
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %46)
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %49 = load i32, ptr %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  call void @timer_start(i32 noundef 1)
  br label %52

52:                                               ; preds = %51, %42
  call void @create_seq(double noundef 0x41B2B9B0A1000000, double noundef 0x41D2309CE5400000)
  call void @alloc_key_buff()
  %53 = load i32, ptr %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @timer_stop(i32 noundef 1)
  br label %56

56:                                               ; preds = %55, %52
  call void @rank(i32 noundef 1)
  store i32 0, ptr @passed_verification, align 4
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  call void @timer_start(i32 noundef 0)
  call void (...) @roi_begin_()
  store i32 1, ptr %7, align 4
  br label %58

58:                                               ; preds = %65, %56
  %59 = load i32, ptr %7, align 4
  %60 = icmp sle i32 %59, 10
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, ptr %7, align 4
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %62)
  %64 = load i32, ptr %7, align 4
  call void @rank(i32 noundef %64)
  br label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %7, align 4
  br label %58, !llvm.loop !36

68:                                               ; preds = %58
  call void (...) @roi_end_()
  call void @timer_stop(i32 noundef 0)
  %69 = call double @timer_read(i32 noundef 0)
  store double %69, ptr %9, align 8
  %70 = load i32, ptr %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call void @timer_start(i32 noundef 2)
  br label %73

73:                                               ; preds = %72, %68
  call void @full_verify()
  %74 = load i32, ptr %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @timer_stop(i32 noundef 2)
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, ptr %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @timer_stop(i32 noundef 3)
  br label %81

81:                                               ; preds = %80, %77
  call void @free_key_buff()
  %82 = load i32, ptr @passed_verification, align 4
  %83 = icmp ne i32 %82, 51
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, ptr @passed_verification, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load double, ptr %9, align 8
  %87 = load double, ptr %9, align 8
  %88 = fdiv double 0x4054F8B588E368F0, %87
  %89 = load i32, ptr @passed_verification, align 4
  call void @c_print_results(ptr noundef @.str.11, i8 noundef signext 65, i32 noundef 8388608, i32 noundef 1, i32 noundef 0, i32 noundef 10, double noundef %86, double noundef %88, ptr noundef @.str.12, i32 noundef %89, ptr noundef @.str.13, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef @.str.16, ptr noundef @.str.17, ptr noundef @.str.18, ptr noundef @.str.19, ptr noundef @.str.20)
  %90 = load i32, ptr %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %85
  %93 = call double @timer_read(i32 noundef 3)
  store double %93, ptr %10, align 8
  %94 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %95 = load double, ptr %10, align 8
  %96 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, double noundef %95)
  %97 = load double, ptr %10, align 8
  %98 = fcmp oeq double %97, 0.000000e+00
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store double 1.000000e+00, ptr %10, align 8
  br label %100

100:                                              ; preds = %99, %92
  %101 = call double @timer_read(i32 noundef 1)
  store double %101, ptr %9, align 8
  %102 = load double, ptr %9, align 8
  %103 = load double, ptr %10, align 8
  %104 = fdiv double %102, %103
  %105 = fmul double %104, 1.000000e+02
  store double %105, ptr %11, align 8
  %106 = load double, ptr %9, align 8
  %107 = load double, ptr %11, align 8
  %108 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, double noundef %106, double noundef %107)
  %109 = call double @timer_read(i32 noundef 0)
  store double %109, ptr %9, align 8
  %110 = load double, ptr %9, align 8
  %111 = load double, ptr %10, align 8
  %112 = fdiv double %110, %111
  %113 = fmul double %112, 1.000000e+02
  store double %113, ptr %11, align 8
  %114 = load double, ptr %9, align 8
  %115 = load double, ptr %11, align 8
  %116 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, double noundef %114, double noundef %115)
  %117 = call double @timer_read(i32 noundef 2)
  store double %117, ptr %9, align 8
  %118 = load double, ptr %9, align 8
  %119 = load double, ptr %10, align 8
  %120 = fdiv double %118, %119
  %121 = fmul double %120, 1.000000e+02
  store double %121, ptr %11, align 8
  %122 = load double, ptr %9, align 8
  %123 = load double, ptr %11, align 8
  %124 = call i32 (ptr, ...) @printf(ptr noundef @.str.25, double noundef %122, double noundef %123)
  br label %125

125:                                              ; preds = %100, %85
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_timer_flag() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  %4 = call ptr @getenv(ptr noundef @.str.62) #3
  store ptr %4, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %52

7:                                                ; preds = %0
  %8 = load ptr, ptr %2, align 8
  %9 = load i8, ptr %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, ptr %1, align 4
  br label %51

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sge i32 %16, 49
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 8
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 57
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, ptr %1, align 4
  br label %50

24:                                               ; preds = %18, %13
  %25 = load ptr, ptr %2, align 8
  %26 = call i32 @strcmp(ptr noundef %25, ptr noundef @.str.1.63) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8
  %30 = call i32 @strcmp(ptr noundef %29, ptr noundef @.str.2.64) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %2, align 8
  %34 = call i32 @strcmp(ptr noundef %33, ptr noundef @.str.3.65) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %2, align 8
  %38 = call i32 @strcmp(ptr noundef %37, ptr noundef @.str.4.66) #19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %2, align 8
  %42 = call i32 @strcmp(ptr noundef %41, ptr noundef @.str.5.67) #19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %2, align 8
  %46 = call i32 @strcmp(ptr noundef %45, ptr noundef @.str.6.68) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40, %36, %32, %28, %24
  store i32 1, ptr %1, align 4
  br label %49

49:                                               ; preds = %48, %44
  br label %50

50:                                               ; preds = %49, %23
  br label %51

51:                                               ; preds = %50, %12
  br label %60

52:                                               ; preds = %0
  %53 = call noalias ptr @fopen(ptr noundef @.str.7.69, ptr noundef @.str.8.70)
  store ptr %53, ptr %3, align 8
  %54 = load ptr, ptr %3, align 8
  %55 = icmp ne ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load ptr, ptr %3, align 8
  %58 = call i32 @fclose(ptr noundef %57)
  store i32 1, ptr %1, align 4
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32, ptr %1, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_clear(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @elapsed)
  %4 = load i32, ptr %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %5
  store double 0.000000e+00, ptr %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_start(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = call double @elapsed_time()
  %4 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @start)
  %5 = load i32, ptr %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [64 x double], ptr %4, i64 0, i64 %6
  store double %3, ptr %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_stop(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 %0, ptr %2, align 4
  %5 = call double @elapsed_time()
  store double %5, ptr %4, align 8
  %6 = load double, ptr %4, align 8
  %7 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @start)
  %8 = load i32, ptr %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [64 x double], ptr %7, i64 0, i64 %9
  %11 = load double, ptr %10, align 8
  %12 = fsub double %6, %11
  store double %12, ptr %3, align 8
  %13 = load double, ptr %3, align 8
  %14 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @elapsed)
  %15 = load i32, ptr %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [64 x double], ptr %14, i64 0, i64 %16
  %18 = load double, ptr %17, align 8
  %19 = fadd double %18, %13
  store double %19, ptr %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @timer_read(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @elapsed)
  %4 = load i32, ptr %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %5
  %7 = load double, ptr %6, align 8
  ret double %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_print_results(ptr noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17) local_unnamed_addr #0 {
  %19 = alloca ptr, align 8
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  store ptr %0, ptr %19, align 8
  store i8 %1, ptr %20, align 1
  store i32 %2, ptr %21, align 4
  store i32 %3, ptr %22, align 4
  store i32 %4, ptr %23, align 4
  store i32 %5, ptr %24, align 4
  store double %6, ptr %25, align 8
  store double %7, ptr %26, align 8
  store ptr %8, ptr %27, align 8
  store i32 %9, ptr %28, align 4
  store ptr %10, ptr %29, align 8
  store ptr %11, ptr %30, align 8
  store ptr %12, ptr %31, align 8
  store ptr %13, ptr %32, align 8
  store ptr %14, ptr %33, align 8
  store ptr %15, ptr %34, align 8
  store ptr %16, ptr %35, align 8
  store ptr %17, ptr %36, align 8
  store i32 0, ptr %38, align 4
  store i32 0, ptr %37, align 4
  %40 = call i32 @omp_get_max_threads()
  store i32 %40, ptr %38, align 4
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @4, i32 1, ptr @c_print_results.omp_outlined, ptr %37)
  %41 = load ptr, ptr %19, align 8
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.26, ptr noundef %41)
  %43 = load i8, ptr %20, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %44)
  %46 = load i32, ptr %23, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %18
  %49 = load i32, ptr %21, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, ptr %39, align 8
  %51 = load i32, ptr %22, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, ptr %22, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, ptr %39, align 8
  %57 = mul nsw i64 %56, %55
  store i64 %57, ptr %39, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i64, ptr %39, align 8
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.2.27, i64 noundef %59)
  br label %66

61:                                               ; preds = %18
  %62 = load i32, ptr %21, align 4
  %63 = load i32, ptr %22, align 4
  %64 = load i32, ptr %23, align 4
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str.3.28, i32 noundef %62, i32 noundef %63, i32 noundef %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, ptr %24, align 4
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str.4.29, i32 noundef %67)
  %69 = load double, ptr %25, align 8
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.5.30, double noundef %69)
  %71 = load i32, ptr %37, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, ptr %37, align 4
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str.6.31, i32 noundef %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, ptr %38, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, ptr %38, align 4
  %81 = call i32 (ptr, ...) @printf(ptr noundef @.str.7.32, i32 noundef %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, ptr %37, align 4
  %84 = load i32, ptr %38, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (ptr, ...) @printf(ptr noundef @.str.8.33)
  br label %88

88:                                               ; preds = %86, %82
  %89 = load double, ptr %26, align 8
  %90 = call i32 (ptr, ...) @printf(ptr noundef @.str.9.34, double noundef %89)
  %91 = load i32, ptr %37, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load double, ptr %26, align 8
  %95 = load i32, ptr %37, align 4
  %96 = sitofp i32 %95 to double
  %97 = fdiv double %94, %96
  %98 = call i32 (ptr, ...) @printf(ptr noundef @.str.10.35, double noundef %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load ptr, ptr %27, align 8
  %101 = call i32 (ptr, ...) @printf(ptr noundef @.str.11.36, ptr noundef %100)
  %102 = load i32, ptr %28, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 (ptr, ...) @printf(ptr noundef @.str.12.37)
  br label %114

106:                                              ; preds = %99
  %107 = load i32, ptr %28, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (ptr, ...) @printf(ptr noundef @.str.13.38)
  br label %113

111:                                              ; preds = %106
  %112 = call i32 (ptr, ...) @printf(ptr noundef @.str.14.39)
  br label %113

113:                                              ; preds = %111, %109
  br label %114

114:                                              ; preds = %113, %104
  %115 = load ptr, ptr %29, align 8
  %116 = call i32 (ptr, ...) @printf(ptr noundef @.str.15.40, ptr noundef %115)
  %117 = load ptr, ptr %30, align 8
  %118 = call i32 (ptr, ...) @printf(ptr noundef @.str.16.41, ptr noundef %117)
  %119 = call i32 (ptr, ...) @printf(ptr noundef @.str.17.42)
  %120 = load ptr, ptr %31, align 8
  %121 = call i32 (ptr, ...) @printf(ptr noundef @.str.18.43, ptr noundef %120)
  %122 = load ptr, ptr %32, align 8
  %123 = call i32 (ptr, ...) @printf(ptr noundef @.str.19.44, ptr noundef %122)
  %124 = load ptr, ptr %33, align 8
  %125 = call i32 (ptr, ...) @printf(ptr noundef @.str.20.45, ptr noundef %124)
  %126 = load ptr, ptr %34, align 8
  %127 = call i32 (ptr, ...) @printf(ptr noundef @.str.21.46, ptr noundef %126)
  %128 = load ptr, ptr %35, align 8
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str.22.47, ptr noundef %128)
  %130 = load ptr, ptr %36, align 8
  %131 = call i32 (ptr, ...) @printf(ptr noundef @.str.23.48, ptr noundef %130)
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str.24.49)
  %133 = call i32 (ptr, ...) @printf(ptr noundef @.str.25.50)
  %134 = call i32 (ptr, ...) @printf(ptr noundef @.str.26.51)
  %135 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @c_print_results.omp_outlined(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @__kmpc_master(ptr @4, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @omp_get_num_threads()
  store i32 %13, ptr %7, align 4
  call void @__kmpc_end_master(ptr @4, i32 %9)
  br label %14

14:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_master(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_end_master(ptr, i32) local_unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @elapsed_time() local_unnamed_addr #0 {
  %1 = alloca double, align 8
  %2 = call double @omp_get_wtime()
  store double %2, ptr %1, align 8
  %3 = load double, ptr %1, align 8
  ret double %3
}

; Function Attrs: nounwind
declare double @omp_get_wtime() local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden ptr @_ZTW11bucket_ptrs() local_unnamed_addr #14 comdat {
  %1 = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wtime_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.timeval, align 8
  store ptr %0, ptr %2, align 8
  %4 = call i32 @gettimeofday(ptr noundef %3, ptr noundef null) #3
  %5 = load i32, ptr @wtime_.sec, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.timeval, ptr %3, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr @wtime_.sec, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.timeval, ptr %3, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = load i32, ptr @wtime_.sec, align 4
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %13, %15
  %17 = sitofp i64 %16 to double
  %18 = getelementptr inbounds %struct.timeval, ptr %3, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = sitofp i64 %19 to double
  %21 = call double @llvm.fmuladd.f64(double 0x3EB0C6F7A0B5ED8D, double %20, double %17)
  %22 = load ptr, ptr %2, align 8
  store double %21, ptr %22, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline noprofile nounwind optnone uwtable
define dso_local void @warmup_event() #15 {
  ret void
}

; Function Attrs: noinline noprofile nounwind optnone uwtable
define dso_local void @start_event() #15 {
  ret void
}

; Function Attrs: noinline noprofile nounwind optnone uwtable
define dso_local void @end_event() #15 {
  ret void
}

; Function Attrs: noinline noprofile nounwind optnone uwtable
define dso_local void @roi_begin_() #15 {
  call void @setup_threshold(i64 0, i64 0, i64 100)
  %1 = call i64 (i64, ...) @syscall(i64 noundef 888) #3
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.28)
  call void @warmup_hook()
  call void @start_hook()
  ret void
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) #4

; Function Attrs: noinline noprofile nounwind optnone uwtable
define dso_local void @roi_end_() #15 {
  %1 = call i64 (i64, ...) @syscall(i64 noundef 889) #3
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1.31)
  ret void
}

; Function Attrs: noinline noprofile nounwind optnone uwtable
define dso_local void @setup_threshold(i64 noundef %0, i64 noundef %1, i64 noundef %2) #15 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  ret void
}

; Function Attrs: noinline noprofile nounwind optnone uwtable
define dso_local void @warmup_hook() #15 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !37
  ret void
}

; Function Attrs: noinline noprofile nounwind optnone uwtable
define dso_local void @start_hook() #15 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !38
  ret void
}

; Function Attrs: noinline noprofile nounwind optnone uwtable
define dso_local void @end_hook() #15 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { convergent nounwind }
attributes #12 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noprofile nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 19.0.0git (git@github.com:studyztp/llvm-project.git faf8faf0bd6f446e0683b820349adbadb8576ad7)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = !{!13}
!13 = !{i64 2, i64 -1, i64 -1, i1 true}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.parallel_accesses", !16}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.parallel_accesses", !29}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = !{i64 473}
!38 = !{i64 555}
!39 = !{i64 635}
