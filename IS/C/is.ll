; ModuleID = 'is.c'
source_filename = "is.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZTW11bucket_ptrs = comdat any

@bucket_ptrs = dso_local thread_local global [1024 x i32] zeroinitializer, align 4
@KS = internal thread_local global i32 0, align 4
@R23 = internal thread_local global double 0.000000e+00, align 8
@R46 = internal thread_local global double 0.000000e+00, align 8
@T23 = internal thread_local global double 0.000000e+00, align 8
@T46 = internal thread_local global double 0.000000e+00, align 8
@key_buff_ptr_global = dso_local local_unnamed_addr global ptr null, align 8
@passed_verification = dso_local local_unnamed_addr global i32 0, align 4
@key_array = dso_local local_unnamed_addr global [134217728 x i32] zeroinitializer, align 4
@key_buff1 = dso_local global [8388608 x i32] zeroinitializer, align 4
@key_buff2 = dso_local global [134217728 x i32] zeroinitializer, align 4
@partial_verify_vals = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 4
@bucket_size = dso_local local_unnamed_addr global ptr null, align 8
@test_index_array = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 4
@test_rank_array = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 4
@key_buff1_aptr = dso_local local_unnamed_addr global ptr null, align 8
@S_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 4
@S_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 4
@W_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 4
@W_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 4
@A_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 4
@A_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 4
@B_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 4
@B_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 4
@C_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 44172927, i32 72999161, i32 74326391, i32 129606274, i32 21736814], align 4
@C_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 61147, i32 882988, i32 266290, i32 133997595, i32 133525895], align 4
@D_test_index_array = dso_local local_unnamed_addr global [5 x i64] [i64 1317351170, i64 995930646, i64 1157283250, i64 1503301535, i64 1453734525], align 8
@D_test_rank_array = dso_local local_unnamed_addr global [5 x i64] [i64 1, i64 36538729, i64 1978098519, i64 2145192618, i64 2147425337], align 8
@E_test_index_array = dso_local local_unnamed_addr global [5 x i64] [i64 21492309536, i64 24606226181, i64 12608530949, i64 4065943607, i64 3324513396], align 8
@E_test_rank_array = dso_local local_unnamed_addr global [5 x i64] [i64 3, i64 27580354, i64 3248475153, i64 30048754302, i64 31485259697], align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [24 x i8] c"Memory allocation error\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 22, ptr @0 }, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", align 1
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" Size:  %ld  (class %c)\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c" Iterations:  %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c" Number of available threads:  %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"        %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"keys ranked\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"3.4.2\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"12 Sep 2024\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"$(CC)\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"$(CFLAGS)\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c" Total execution: %8.3f\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00", align 1
@str = private unnamed_addr constant [56 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.4-OMP) - IS Benchmark\0A\00", align 1
@str.23 = private unnamed_addr constant [14 x i8] c"\0A   iteration\00", align 1
@str.24 = private unnamed_addr constant [21 x i8] c"\0AAdditional timers -\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @randlc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @KS)
  %4 = load i32, ptr %3, align 4, !tbaa !7
  %5 = icmp eq i32 %4, 0
  %6 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R23)
  %7 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R46)
  br i1 %5, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  %10 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T46)
  br label %115

11:                                               ; preds = %2
  store double 1.000000e+00, ptr %6, align 8, !tbaa !11
  store double 1.000000e+00, ptr %7, align 8, !tbaa !11
  %12 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  store double 1.000000e+00, ptr %12, align 8, !tbaa !11
  %13 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T46)
  store double 1.000000e+00, ptr %13, align 8, !tbaa !11
  %14 = load double, ptr %6, align 8, !tbaa !11
  %15 = fmul double %14, 5.000000e-01
  store double %15, ptr %6, align 8, !tbaa !11
  %16 = load double, ptr %12, align 8, !tbaa !11
  %17 = fmul double %16, 2.000000e+00
  store double %17, ptr %12, align 8, !tbaa !11
  %18 = load double, ptr %6, align 8, !tbaa !11
  %19 = fmul double %18, 5.000000e-01
  store double %19, ptr %6, align 8, !tbaa !11
  %20 = load double, ptr %12, align 8, !tbaa !11
  %21 = fmul double %20, 2.000000e+00
  store double %21, ptr %12, align 8, !tbaa !11
  %22 = load double, ptr %6, align 8, !tbaa !11
  %23 = fmul double %22, 5.000000e-01
  store double %23, ptr %6, align 8, !tbaa !11
  %24 = load double, ptr %12, align 8, !tbaa !11
  %25 = fmul double %24, 2.000000e+00
  store double %25, ptr %12, align 8, !tbaa !11
  %26 = load double, ptr %6, align 8, !tbaa !11
  %27 = fmul double %26, 5.000000e-01
  store double %27, ptr %6, align 8, !tbaa !11
  %28 = load double, ptr %12, align 8, !tbaa !11
  %29 = fmul double %28, 2.000000e+00
  store double %29, ptr %12, align 8, !tbaa !11
  %30 = load double, ptr %6, align 8, !tbaa !11
  %31 = fmul double %30, 5.000000e-01
  store double %31, ptr %6, align 8, !tbaa !11
  %32 = load double, ptr %12, align 8, !tbaa !11
  %33 = fmul double %32, 2.000000e+00
  store double %33, ptr %12, align 8, !tbaa !11
  %34 = load double, ptr %6, align 8, !tbaa !11
  %35 = fmul double %34, 5.000000e-01
  store double %35, ptr %6, align 8, !tbaa !11
  %36 = load double, ptr %12, align 8, !tbaa !11
  %37 = fmul double %36, 2.000000e+00
  store double %37, ptr %12, align 8, !tbaa !11
  %38 = load double, ptr %6, align 8, !tbaa !11
  %39 = fmul double %38, 5.000000e-01
  store double %39, ptr %6, align 8, !tbaa !11
  %40 = load double, ptr %12, align 8, !tbaa !11
  %41 = fmul double %40, 2.000000e+00
  store double %41, ptr %12, align 8, !tbaa !11
  %42 = load double, ptr %6, align 8, !tbaa !11
  %43 = fmul double %42, 5.000000e-01
  store double %43, ptr %6, align 8, !tbaa !11
  %44 = load double, ptr %12, align 8, !tbaa !11
  %45 = fmul double %44, 2.000000e+00
  store double %45, ptr %12, align 8, !tbaa !11
  %46 = load double, ptr %6, align 8, !tbaa !11
  %47 = fmul double %46, 5.000000e-01
  store double %47, ptr %6, align 8, !tbaa !11
  %48 = load double, ptr %12, align 8, !tbaa !11
  %49 = fmul double %48, 2.000000e+00
  store double %49, ptr %12, align 8, !tbaa !11
  %50 = load double, ptr %6, align 8, !tbaa !11
  %51 = fmul double %50, 5.000000e-01
  store double %51, ptr %6, align 8, !tbaa !11
  %52 = load double, ptr %12, align 8, !tbaa !11
  %53 = fmul double %52, 2.000000e+00
  store double %53, ptr %12, align 8, !tbaa !11
  %54 = load double, ptr %6, align 8, !tbaa !11
  %55 = fmul double %54, 5.000000e-01
  store double %55, ptr %6, align 8, !tbaa !11
  %56 = load double, ptr %12, align 8, !tbaa !11
  %57 = fmul double %56, 2.000000e+00
  store double %57, ptr %12, align 8, !tbaa !11
  %58 = load double, ptr %6, align 8, !tbaa !11
  %59 = fmul double %58, 5.000000e-01
  store double %59, ptr %6, align 8, !tbaa !11
  %60 = load double, ptr %12, align 8, !tbaa !11
  %61 = fmul double %60, 2.000000e+00
  store double %61, ptr %12, align 8, !tbaa !11
  %62 = load double, ptr %6, align 8, !tbaa !11
  %63 = fmul double %62, 5.000000e-01
  store double %63, ptr %6, align 8, !tbaa !11
  %64 = load double, ptr %12, align 8, !tbaa !11
  %65 = fmul double %64, 2.000000e+00
  store double %65, ptr %12, align 8, !tbaa !11
  %66 = load double, ptr %6, align 8, !tbaa !11
  %67 = fmul double %66, 5.000000e-01
  store double %67, ptr %6, align 8, !tbaa !11
  %68 = load double, ptr %12, align 8, !tbaa !11
  %69 = fmul double %68, 2.000000e+00
  store double %69, ptr %12, align 8, !tbaa !11
  %70 = load double, ptr %6, align 8, !tbaa !11
  %71 = fmul double %70, 5.000000e-01
  store double %71, ptr %6, align 8, !tbaa !11
  %72 = load double, ptr %12, align 8, !tbaa !11
  %73 = fmul double %72, 2.000000e+00
  store double %73, ptr %12, align 8, !tbaa !11
  %74 = load double, ptr %6, align 8, !tbaa !11
  %75 = fmul double %74, 5.000000e-01
  store double %75, ptr %6, align 8, !tbaa !11
  %76 = load double, ptr %12, align 8, !tbaa !11
  %77 = fmul double %76, 2.000000e+00
  store double %77, ptr %12, align 8, !tbaa !11
  %78 = load double, ptr %6, align 8, !tbaa !11
  %79 = fmul double %78, 5.000000e-01
  store double %79, ptr %6, align 8, !tbaa !11
  %80 = load double, ptr %12, align 8, !tbaa !11
  %81 = fmul double %80, 2.000000e+00
  store double %81, ptr %12, align 8, !tbaa !11
  %82 = load double, ptr %6, align 8, !tbaa !11
  %83 = fmul double %82, 5.000000e-01
  store double %83, ptr %6, align 8, !tbaa !11
  %84 = load double, ptr %12, align 8, !tbaa !11
  %85 = fmul double %84, 2.000000e+00
  store double %85, ptr %12, align 8, !tbaa !11
  %86 = load double, ptr %6, align 8, !tbaa !11
  %87 = fmul double %86, 5.000000e-01
  store double %87, ptr %6, align 8, !tbaa !11
  %88 = load double, ptr %12, align 8, !tbaa !11
  %89 = fmul double %88, 2.000000e+00
  store double %89, ptr %12, align 8, !tbaa !11
  %90 = load double, ptr %6, align 8, !tbaa !11
  %91 = fmul double %90, 5.000000e-01
  store double %91, ptr %6, align 8, !tbaa !11
  %92 = load double, ptr %12, align 8, !tbaa !11
  %93 = fmul double %92, 2.000000e+00
  store double %93, ptr %12, align 8, !tbaa !11
  %94 = load double, ptr %6, align 8, !tbaa !11
  %95 = fmul double %94, 5.000000e-01
  store double %95, ptr %6, align 8, !tbaa !11
  %96 = load double, ptr %12, align 8, !tbaa !11
  %97 = fmul double %96, 2.000000e+00
  store double %97, ptr %12, align 8, !tbaa !11
  %98 = load double, ptr %6, align 8, !tbaa !11
  %99 = fmul double %98, 5.000000e-01
  store double %99, ptr %6, align 8, !tbaa !11
  %100 = load double, ptr %12, align 8, !tbaa !11
  %101 = fmul double %100, 2.000000e+00
  store double %101, ptr %12, align 8, !tbaa !11
  %102 = load double, ptr %6, align 8, !tbaa !11
  %103 = fmul double %102, 5.000000e-01
  store double %103, ptr %6, align 8, !tbaa !11
  %104 = load double, ptr %12, align 8, !tbaa !11
  %105 = fmul double %104, 2.000000e+00
  store double %105, ptr %12, align 8, !tbaa !11
  br label %106

106:                                              ; preds = %11, %106
  %107 = phi i32 [ %112, %106 ], [ 1, %11 ]
  %108 = load double, ptr %7, align 8, !tbaa !11
  %109 = fmul double %108, 5.000000e-01
  store double %109, ptr %7, align 8, !tbaa !11
  %110 = load double, ptr %13, align 8, !tbaa !11
  %111 = fmul double %110, 2.000000e+00
  store double %111, ptr %13, align 8, !tbaa !11
  %112 = add nuw nsw i32 %107, 1
  %113 = icmp eq i32 %112, 47
  br i1 %113, label %114, label %106, !llvm.loop !13

114:                                              ; preds = %106
  store i32 1, ptr %3, align 4, !tbaa !7
  br label %115

115:                                              ; preds = %8, %114
  %116 = phi ptr [ %10, %8 ], [ %13, %114 ]
  %117 = phi ptr [ %9, %8 ], [ %12, %114 ]
  %118 = load double, ptr %6, align 8, !tbaa !11
  %119 = load double, ptr %1, align 8, !tbaa !11
  %120 = fmul double %118, %119
  %121 = fptosi double %120 to i32
  %122 = sitofp i32 %121 to double
  %123 = load double, ptr %117, align 8, !tbaa !11
  %124 = fneg double %123
  %125 = tail call double @llvm.fmuladd.f64(double %124, double %122, double %119)
  %126 = load double, ptr %0, align 8, !tbaa !11
  %127 = fmul double %118, %126
  %128 = fptosi double %127 to i32
  %129 = sitofp i32 %128 to double
  %130 = tail call double @llvm.fmuladd.f64(double %124, double %129, double %126)
  %131 = fmul double %125, %129
  %132 = tail call double @llvm.fmuladd.f64(double %122, double %130, double %131)
  %133 = fmul double %118, %132
  %134 = fptosi double %133 to i32
  %135 = sitofp i32 %134 to double
  %136 = tail call double @llvm.fmuladd.f64(double %124, double %135, double %132)
  %137 = fmul double %125, %130
  %138 = tail call double @llvm.fmuladd.f64(double %123, double %136, double %137)
  %139 = load double, ptr %7, align 8, !tbaa !11
  %140 = fmul double %139, %138
  %141 = fptosi double %140 to i32
  %142 = sitofp i32 %141 to double
  %143 = load double, ptr %116, align 8, !tbaa !11
  %144 = fneg double %143
  %145 = tail call double @llvm.fmuladd.f64(double %144, double %142, double %138)
  store double %145, ptr %0, align 8, !tbaa !11
  %146 = load double, ptr %7, align 8, !tbaa !11
  %147 = fmul double %146, %145
  ret double %147
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @find_my_seed(i32 noundef %0, i32 noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = sdiv i64 %2, 4
  %11 = sext i32 %1 to i64
  %12 = add nsw i64 %11, -1
  %13 = add nsw i64 %12, %10
  %14 = sdiv i64 %13, %11
  %15 = sext i32 %0 to i64
  %16 = shl nsw i64 %15, 2
  %17 = mul i64 %16, %14
  store double %3, ptr %6, align 8, !tbaa !11
  store double %4, ptr %7, align 8, !tbaa !11
  %18 = icmp sgt i64 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %9, %29
  %20 = phi i64 [ %30, %29 ], [ %17, %9 ]
  %21 = and i64 %20, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = lshr exact i64 %20, 1
  %25 = call double @randlc(ptr noundef nonnull %7, ptr noundef nonnull %7)
  br label %29

26:                                               ; preds = %19
  %27 = call double @randlc(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %28 = add nsw i64 %20, -1
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i64 [ %24, %23 ], [ %28, %26 ]
  %31 = icmp sgt i64 %30, 1
  br i1 %31, label %19, label %32, !llvm.loop !15

32:                                               ; preds = %29, %9
  %33 = call double @randlc(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %34 = load double, ptr %6, align 8, !tbaa !11
  br label %35

35:                                               ; preds = %5, %32
  %36 = phi double [ %34, %32 ], [ %3, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  ret double %36
}

; Function Attrs: nounwind uwtable
define dso_local void @create_seq(double noundef %0, double noundef %1) local_unnamed_addr #3 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8, !tbaa !11
  store double %1, ptr %4, align 8, !tbaa !11
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 2, ptr nonnull @create_seq.omp_outlined, ptr nonnull %4, ptr nonnull %3)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @create_seq.omp_outlined(ptr noalias nocapture readnone %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3) #4 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %9 = load double, ptr %2, align 8, !tbaa !11
  store double %9, ptr %8, align 8, !tbaa !11
  %10 = tail call i32 @omp_get_thread_num()
  %11 = tail call i32 @omp_get_num_threads()
  %12 = add nsw i32 %11, 134217727
  %13 = sdiv i32 %12, %11
  %14 = mul i32 %13, %10
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 134217728)
  %17 = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @KS)
  store i32 0, ptr %17, align 4, !tbaa !7
  %18 = load double, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %4
  %21 = sext i32 %11 to i64
  %22 = add nsw i64 %21, 134217727
  %23 = sdiv i64 %22, %21
  %24 = sext i32 %10 to i64
  %25 = shl nsw i64 %24, 2
  %26 = mul i64 %23, %25
  store double %18, ptr %5, align 8, !tbaa !11
  store double %9, ptr %6, align 8, !tbaa !11
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %28, label %41

28:                                               ; preds = %20, %38
  %29 = phi i64 [ %39, %38 ], [ %26, %20 ]
  %30 = and i64 %29, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = lshr exact i64 %29, 1
  %34 = call double @randlc(ptr noundef nonnull %6, ptr noundef nonnull %6)
  br label %38

35:                                               ; preds = %28
  %36 = call double @randlc(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %37 = add nsw i64 %29, -1
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i64 [ %33, %32 ], [ %37, %35 ]
  %40 = icmp sgt i64 %39, 1
  br i1 %40, label %28, label %41, !llvm.loop !15

41:                                               ; preds = %38, %20
  %42 = call double @randlc(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %43 = load double, ptr %5, align 8, !tbaa !11
  br label %44

44:                                               ; preds = %4, %41
  %45 = phi double [ %43, %41 ], [ %18, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  store double %45, ptr %7, align 8, !tbaa !11
  %46 = icmp slt i32 %14, %16
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = sext i32 %14 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %48, %47 ], [ %61, %49 ]
  %51 = call double @randlc(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %52 = call double @randlc(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %53 = fadd double %51, %52
  %54 = call double @randlc(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %55 = fadd double %53, %54
  %56 = call double @randlc(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %57 = fadd double %55, %56
  %58 = fmul double %57, 0x4140000000000000
  %59 = fptosi double %58 to i32
  %60 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %50
  store i32 %59, ptr %60, align 4, !tbaa !7
  %61 = add nsw i64 %50, 1
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %16, %62
  br i1 %63, label %64, label %49, !llvm.loop !16

64:                                               ; preds = %49, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @omp_get_num_threads() local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !17 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @alloc_mem(i64 noundef %0) local_unnamed_addr #3 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @perror(ptr noundef nonnull @.str) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

5:                                                ; preds = %1
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @alloc_key_buff() local_unnamed_addr #3 {
  %1 = tail call i32 @omp_get_max_threads()
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void @perror(ptr noundef nonnull @.str) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

7:                                                ; preds = %0
  store ptr %4, ptr @bucket_size, align 8, !tbaa !19
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %9, %16
  %12 = phi i64 [ 0, %9 ], [ %19, %16 ]
  %13 = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @perror(ptr noundef nonnull @.str) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

16:                                               ; preds = %11
  %17 = load ptr, ptr @bucket_size, align 8, !tbaa !19
  %18 = getelementptr inbounds ptr, ptr %17, i64 %12
  store ptr %13, ptr %18, align 8, !tbaa !19
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %21, label %11, !llvm.loop !21

21:                                               ; preds = %16, %7
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @alloc_key_buff.omp_outlined)
  ret void
}

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @alloc_key_buff.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 134217727, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 1, ptr %5, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !tbaa !7
  %7 = load i32, ptr %0, align 4, !tbaa !7
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %7, i32 34, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5, i32 1, i32 1)
  %8 = load i32, ptr %4, align 4
  %9 = call i32 @llvm.smin.i32(i32 %8, i32 134217727)
  store i32 %9, ptr %4, align 4, !tbaa !7
  %10 = load i32, ptr %3, align 4, !tbaa !7
  %11 = icmp sgt i32 %10, %9
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = sext i32 %10 to i64
  %14 = shl nsw i64 %13, 2
  %15 = getelementptr i8, ptr @key_buff2, i64 %14
  %16 = sub i32 %9, %10
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = add nuw nsw i64 %18, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %15, i8 0, i64 %19, i1 false), !tbaa !7
  br label %20

20:                                               ; preds = %12, %2
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @free_key_buff() local_unnamed_addr #3 {
  %1 = tail call i32 @omp_get_max_threads()
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %10, %5 ]
  %7 = load ptr, ptr @bucket_size, align 8, !tbaa !19
  %8 = getelementptr inbounds ptr, ptr %7, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  tail call void @free(ptr noundef %9) #6
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, %4
  br i1 %11, label %12, label %5, !llvm.loop !22

12:                                               ; preds = %5, %0
  %13 = load ptr, ptr @bucket_size, align 8, !tbaa !19
  tail call void @free(ptr noundef %13) #6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @full_verify() local_unnamed_addr #3 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #6
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i32 0, ptr %1, align 4, !tbaa !7
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %1)
  %2 = load i32, ptr %1, align 4, !tbaa !7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = sext i32 %2 to i64
  %6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %5)
  br label %10

7:                                                ; preds = %0
  %8 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @passed_verification, align 4, !tbaa !7
  br label %10

10:                                               ; preds = %7, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @full_verify.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 1023, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 1, ptr %5, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !tbaa !7
  %7 = load i32, ptr %0, align 4, !tbaa !7
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %7, i32 1073741859, i32 0, i32 1023, i32 1, i32 1)
  %8 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %7, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %2
  %11 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @bucket_ptrs)
  br label %15

12:                                               ; preds = %54, %15
  %13 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %7, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %10, %12
  %16 = load i32, ptr %3, align 4, !tbaa !7
  %17 = load i32, ptr %4, align 4, !tbaa !7, !llvm.access.group !23
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %12, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @key_buff_ptr_global, align 8
  %21 = sext i32 %16 to i64
  br label %22

22:                                               ; preds = %19, %54
  %23 = phi i32 [ %17, %19 ], [ %55, %54 ]
  %24 = phi i64 [ %21, %19 ], [ %56, %54 ]
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = add nsw i64 %24, -1
  %28 = getelementptr inbounds [1024 x i32], ptr %11, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !7, !llvm.access.group !23
  br label %30

30:                                               ; preds = %22, %26
  %31 = phi i32 [ %29, %26 ], [ 0, %22 ]
  %32 = getelementptr inbounds [1024 x i32], ptr %11, i64 0, i64 %24
  %33 = load i32, ptr %32, align 4, !tbaa !7, !llvm.access.group !23
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = sext i32 %31 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ %36, %35 ], [ %48, %37 ]
  %39 = getelementptr inbounds [134217728 x i32], ptr @key_buff2, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !7, !llvm.access.group !23
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %20, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !7, !llvm.access.group !23
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %42, align 4, !tbaa !7, !llvm.access.group !23
  %45 = load i32, ptr %39, align 4, !tbaa !7, !llvm.access.group !23
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %46
  store i32 %45, ptr %47, align 4, !tbaa !7, !llvm.access.group !23
  %48 = add nsw i64 %38, 1
  %49 = load i32, ptr %32, align 4, !tbaa !7, !llvm.access.group !23
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %37, label %52, !llvm.loop !24

52:                                               ; preds = %37
  %53 = load i32, ptr %4, align 4, !tbaa !7, !llvm.access.group !23
  br label %54

54:                                               ; preds = %52, %30
  %55 = phi i32 [ %53, %52 ], [ %23, %30 ]
  %56 = add nsw i64 %24, 1
  %57 = sext i32 %55 to i64
  %58 = icmp slt i64 %24, %57
  br i1 %58, label %22, label %12, !llvm.loop !25

59:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_4(ptr, i32, i32, i32, i32, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_4(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @full_verify.omp_outlined.1(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 134217726, ptr %5, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 1, ptr %6, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  %10 = load i32, ptr %0, align 4, !tbaa !7
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %10, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %11 = load i32, ptr %5, align 4
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 134217726)
  store i32 %12, ptr %5, align 4, !tbaa !7
  %13 = load i32, ptr %4, align 4, !tbaa !7
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %71, label %15

15:                                               ; preds = %3
  %16 = sext i32 %13 to i64
  %17 = add nsw i32 %12, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = call i32 @llvm.smin.i32(i32 %11, i32 134217726)
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %16
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %56, label %26

26:                                               ; preds = %15
  %27 = and i64 %24, -8
  %28 = add nsw i64 %27, %16
  %29 = insertelement <4 x i32> poison, i32 %20, i64 3
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi i64 [ 0, %26 ], [ %49, %30 ]
  %32 = phi <4 x i32> [ %29, %26 ], [ %40, %30 ]
  %33 = phi <4 x i32> [ zeroinitializer, %26 ], [ %47, %30 ]
  %34 = phi <4 x i32> [ zeroinitializer, %26 ], [ %48, %30 ]
  %35 = add i64 %31, %16
  %36 = add nsw i64 %35, 1
  %37 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %36
  %38 = getelementptr inbounds i8, ptr %37, i64 16
  %39 = load <4 x i32>, ptr %37, align 4, !tbaa !7
  %40 = load <4 x i32>, ptr %38, align 4, !tbaa !7
  %41 = shufflevector <4 x i32> %32, <4 x i32> %39, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %42 = shufflevector <4 x i32> %39, <4 x i32> %40, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %43 = icmp sgt <4 x i32> %41, %39
  %44 = icmp sgt <4 x i32> %42, %40
  %45 = zext <4 x i1> %43 to <4 x i32>
  %46 = zext <4 x i1> %44 to <4 x i32>
  %47 = add <4 x i32> %33, %45
  %48 = add <4 x i32> %34, %46
  %49 = add nuw i64 %31, 8
  %50 = icmp eq i64 %49, %27
  br i1 %50, label %51, label %30, !llvm.loop !27

51:                                               ; preds = %30
  %52 = add <4 x i32> %48, %47
  %53 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %52)
  %54 = icmp eq i64 %24, %27
  %55 = extractelement <4 x i32> %40, i64 3
  br i1 %54, label %71, label %56

56:                                               ; preds = %15, %51
  %57 = phi i32 [ %55, %51 ], [ %20, %15 ]
  %58 = phi i64 [ %28, %51 ], [ %16, %15 ]
  %59 = phi i32 [ %53, %51 ], [ 0, %15 ]
  br label %60

60:                                               ; preds = %56, %60
  %61 = phi i32 [ %66, %60 ], [ %57, %56 ]
  %62 = phi i64 [ %64, %60 ], [ %58, %56 ]
  %63 = phi i32 [ %69, %60 ], [ %59, %56 ]
  %64 = add nsw i64 %62, 1
  %65 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !7
  %67 = icmp sgt i32 %61, %66
  %68 = zext i1 %67 to i32
  %69 = add nuw nsw i32 %63, %68
  %70 = icmp eq i64 %64, %18
  br i1 %70, label %71, label %60, !llvm.loop !30

71:                                               ; preds = %60, %51, %3
  %72 = phi i32 [ 0, %3 ], [ %53, %51 ], [ %69, %60 ]
  store i32 %72, ptr %8, align 4, !tbaa !7
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %10)
  store ptr %8, ptr %9, align 8
  %73 = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %10, i32 1, i64 8, ptr nonnull %9, ptr nonnull @full_verify.omp_outlined.1.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %73, label %81 [
    i32 1, label %74
    i32 2, label %78
  ]

74:                                               ; preds = %71
  %75 = load i32, ptr %2, align 4, !tbaa !7
  %76 = load i32, ptr %8, align 4, !tbaa !7
  %77 = add nsw i32 %76, %75
  store i32 %77, ptr %2, align 4, !tbaa !7
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %10, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %81

78:                                               ; preds = %71
  %79 = load i32, ptr %8, align 4, !tbaa !7
  %80 = atomicrmw add ptr %2, i32 %79 monotonic, align 4
  br label %81

81:                                               ; preds = %78, %74, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @full_verify.omp_outlined.1.omp.reduction.reduction_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !7
  %6 = load i32, ptr %3, align 4, !tbaa !7
  %7 = add nsw i32 %6, %5
  store i32 %7, ptr %4, align 4, !tbaa !7
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @rank(i32 noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 13, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 8192, ptr %5, align 4, !tbaa !7
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %6
  store i32 %0, ptr %7, align 4, !tbaa !7
  %8 = sub nsw i32 8388608, %0
  %9 = add nsw i32 %0, 10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %10
  store i32 %8, ptr %11, align 4, !tbaa !7
  %12 = load i32, ptr @test_index_array, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !7
  store i32 %15, ptr @partial_verify_vals, align 4, !tbaa !7
  %16 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_index_array, i64 0, i64 1), align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !7
  store i32 %19, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 1), align 4, !tbaa !7
  %20 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_index_array, i64 0, i64 2), align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !7
  store i32 %23, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 2), align 4, !tbaa !7
  %24 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_index_array, i64 0, i64 3), align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !7
  store i32 %27, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 3), align 4, !tbaa !7
  %28 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_index_array, i64 0, i64 4), align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !7
  store i32 %31, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 4), align 4, !tbaa !7
  store ptr @key_buff2, ptr %3, align 8, !tbaa !19
  store ptr @key_buff1, ptr %2, align 8, !tbaa !19
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 4, ptr nonnull @rank.omp_outlined, ptr nonnull %4, ptr nonnull %5, ptr nonnull %2, ptr nonnull %3)
  %32 = load i32, ptr @partial_verify_vals, align 4, !tbaa !7
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 134217727
  br i1 %34, label %35, label %49

35:                                               ; preds = %1
  %36 = load ptr, ptr %2, align 8, !tbaa !19
  %37 = zext nneg i32 %32 to i64
  %38 = getelementptr i32, ptr %36, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -4
  %40 = load i32, ptr %39, align 4, !tbaa !7
  %41 = load i32, ptr @test_rank_array, align 4, !tbaa !7
  %42 = add i32 %41, %0
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @passed_verification, align 4, !tbaa !7
  br label %49

47:                                               ; preds = %35
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 0)
  br label %49

49:                                               ; preds = %44, %47, %1
  %50 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 1), align 4, !tbaa !7
  %51 = add i32 %50, -1
  %52 = icmp ult i32 %51, 134217727
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load ptr, ptr %2, align 8, !tbaa !19
  %55 = zext nneg i32 %50 to i64
  %56 = getelementptr i32, ptr %54, i64 %55
  %57 = getelementptr i8, ptr %56, i64 -4
  %58 = load i32, ptr %57, align 4, !tbaa !7
  %59 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_rank_array, i64 0, i64 1), align 4, !tbaa !7
  %60 = add i32 %59, %0
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 1)
  br label %67

64:                                               ; preds = %53
  %65 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr @passed_verification, align 4, !tbaa !7
  br label %67

67:                                               ; preds = %64, %62, %49
  %68 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 2), align 4, !tbaa !7
  %69 = add i32 %68, -1
  %70 = icmp ult i32 %69, 134217727
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load ptr, ptr %2, align 8, !tbaa !19
  %73 = zext nneg i32 %68 to i64
  %74 = getelementptr i32, ptr %72, i64 %73
  %75 = getelementptr i8, ptr %74, i64 -4
  %76 = load i32, ptr %75, align 4, !tbaa !7
  %77 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_rank_array, i64 0, i64 2), align 4, !tbaa !7
  %78 = add i32 %77, %0
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %71
  %81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 2)
  br label %85

82:                                               ; preds = %71
  %83 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr @passed_verification, align 4, !tbaa !7
  br label %85

85:                                               ; preds = %82, %80, %67
  %86 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 3), align 4, !tbaa !7
  %87 = add i32 %86, -1
  %88 = icmp ult i32 %87, 134217727
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load ptr, ptr %2, align 8, !tbaa !19
  %91 = zext nneg i32 %86 to i64
  %92 = getelementptr i32, ptr %90, i64 %91
  %93 = getelementptr i8, ptr %92, i64 -4
  %94 = load i32, ptr %93, align 4, !tbaa !7
  %95 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_rank_array, i64 0, i64 3), align 4, !tbaa !7
  %96 = sub i32 %95, %0
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %89
  %99 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 3)
  br label %103

100:                                              ; preds = %89
  %101 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr @passed_verification, align 4, !tbaa !7
  br label %103

103:                                              ; preds = %100, %98, %85
  %104 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 4), align 4, !tbaa !7
  %105 = add i32 %104, -1
  %106 = icmp ult i32 %105, 134217727
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load ptr, ptr %2, align 8, !tbaa !19
  %109 = zext nneg i32 %104 to i64
  %110 = getelementptr i32, ptr %108, i64 %109
  %111 = getelementptr i8, ptr %110, i64 -4
  %112 = load i32, ptr %111, align 4, !tbaa !7
  %113 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_rank_array, i64 0, i64 4), align 4, !tbaa !7
  %114 = sub i32 %113, %0
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %107
  %117 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 4)
  br label %121

118:                                              ; preds = %107
  %119 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @passed_verification, align 4, !tbaa !7
  br label %121

121:                                              ; preds = %118, %116, %103
  %122 = icmp eq i32 %0, 10
  br i1 %122, label %123, label %125

123:                                              ; preds = %121
  %124 = load ptr, ptr %2, align 8, !tbaa !19
  store ptr %124, ptr @key_buff_ptr_global, align 8, !tbaa !19
  br label %125

125:                                              ; preds = %123, %121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @rank.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = tail call i32 @omp_get_thread_num()
  %20 = tail call i32 @omp_get_num_threads()
  %21 = load ptr, ptr @bucket_size, align 8, !tbaa !19
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %24, i8 0, i64 4096, i1 false), !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 134217727, ptr %8, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 1, ptr %9, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !tbaa !7
  %25 = load i32, ptr %0, align 4, !tbaa !7
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %25, i32 34, ptr nonnull %10, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9, i32 1, i32 1)
  %26 = load i32, ptr %8, align 4
  %27 = call i32 @llvm.smin.i32(i32 %26, i32 134217727)
  store i32 %27, ptr %8, align 4, !tbaa !7
  %28 = load i32, ptr %7, align 4, !tbaa !7
  %29 = icmp sgt i32 %28, %27
  br i1 %29, label %45, label %30

30:                                               ; preds = %6
  %31 = sext i32 %28 to i64
  %32 = sext i32 %27 to i64
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %31, %30 ], [ %43, %33 ]
  %35 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !7
  %37 = load i32, ptr %2, align 4, !tbaa !7
  %38 = ashr i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %24, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !7
  %43 = add nsw i64 %34, 1
  %44 = icmp slt i64 %34, %32
  br i1 %44, label %33, label %45

45:                                               ; preds = %33, %6
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @__kmpc_barrier(ptr nonnull @4, i32 %25)
  %46 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @bucket_ptrs)
  store i32 0, ptr %46, align 4, !tbaa !7
  %47 = icmp sgt i32 %19, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load ptr, ptr @bucket_size, align 8, !tbaa !19
  %50 = zext nneg i32 %19 to i64
  br label %57

51:                                               ; preds = %57, %45
  %52 = phi i32 [ 0, %45 ], [ %63, %57 ]
  %53 = icmp slt i32 %19, %20
  %54 = load ptr, ptr @bucket_size, align 8
  %55 = zext nneg i32 %19 to i64
  %56 = sext i32 %20 to i64
  br label %66

57:                                               ; preds = %48, %57
  %58 = phi i64 [ 0, %48 ], [ %64, %57 ]
  %59 = phi i32 [ 0, %48 ], [ %63, %57 ]
  %60 = getelementptr inbounds ptr, ptr %49, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !19
  %62 = load i32, ptr %61, align 4, !tbaa !7
  %63 = add nsw i32 %59, %62
  store i32 %63, ptr %46, align 4, !tbaa !7
  %64 = add nuw nsw i64 %58, 1
  %65 = icmp eq i64 %64, %50
  br i1 %65, label %51, label %57, !llvm.loop !31

66:                                               ; preds = %51, %93
  %67 = phi i32 [ %52, %51 ], [ %94, %93 ]
  %68 = phi i64 [ 1, %51 ], [ %95, %93 ]
  %69 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %68
  store i32 %67, ptr %69, align 4, !tbaa !7
  br i1 %47, label %72, label %70

70:                                               ; preds = %72, %66
  %71 = phi i32 [ %67, %66 ], [ %79, %72 ]
  br i1 %53, label %82, label %93

72:                                               ; preds = %66, %72
  %73 = phi i64 [ %80, %72 ], [ 0, %66 ]
  %74 = phi i32 [ %79, %72 ], [ %67, %66 ]
  %75 = getelementptr inbounds ptr, ptr %54, i64 %73
  %76 = load ptr, ptr %75, align 8, !tbaa !19
  %77 = getelementptr inbounds i32, ptr %76, i64 %68
  %78 = load i32, ptr %77, align 4, !tbaa !7
  %79 = add nsw i32 %74, %78
  store i32 %79, ptr %69, align 4, !tbaa !7
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp eq i64 %80, %55
  br i1 %81, label %70, label %72, !llvm.loop !32

82:                                               ; preds = %70, %82
  %83 = phi i64 [ %91, %82 ], [ %22, %70 ]
  %84 = phi i32 [ %90, %82 ], [ %71, %70 ]
  %85 = getelementptr inbounds ptr, ptr %54, i64 %83
  %86 = load ptr, ptr %85, align 8, !tbaa !19
  %87 = getelementptr i32, ptr %86, i64 %68
  %88 = getelementptr i8, ptr %87, i64 -4
  %89 = load i32, ptr %88, align 4, !tbaa !7
  %90 = add nsw i32 %84, %89
  store i32 %90, ptr %69, align 4, !tbaa !7
  %91 = add nsw i64 %83, 1
  %92 = icmp eq i64 %91, %56
  br i1 %92, label %93, label %82, !llvm.loop !33

93:                                               ; preds = %82, %70
  %94 = phi i32 [ %71, %70 ], [ %90, %82 ]
  %95 = add nuw nsw i64 %68, 1
  %96 = icmp eq i64 %95, 1024
  br i1 %96, label %97, label %66, !llvm.loop !34

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 0, ptr %11, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 134217727, ptr %12, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store i32 1, ptr %13, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  store i32 0, ptr %14, align 4, !tbaa !7
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %25, i32 34, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i32 1, i32 1)
  %98 = load i32, ptr %12, align 4
  %99 = call i32 @llvm.smin.i32(i32 %98, i32 134217727)
  store i32 %99, ptr %12, align 4, !tbaa !7
  %100 = load i32, ptr %11, align 4, !tbaa !7
  %101 = icmp sgt i32 %100, %99
  br i1 %101, label %120, label %102

102:                                              ; preds = %97
  %103 = sext i32 %100 to i64
  br label %104

104:                                              ; preds = %102, %104
  %105 = phi i64 [ %103, %102 ], [ %116, %104 ]
  %106 = getelementptr inbounds [134217728 x i32], ptr @key_array, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !7
  %108 = load i32, ptr %2, align 4, !tbaa !7
  %109 = ashr i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !7
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %111, align 4, !tbaa !7
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [134217728 x i32], ptr @key_buff2, i64 0, i64 %114
  store i32 %107, ptr %115, align 4, !tbaa !7
  %116 = add nsw i64 %105, 1
  %117 = load i32, ptr %12, align 4, !tbaa !7
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %105, %118
  br i1 %119, label %104, label %120

120:                                              ; preds = %104, %97
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  call void @__kmpc_barrier(ptr nonnull @4, i32 %25)
  %121 = add nsw i32 %20, -1
  %122 = icmp slt i32 %19, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %120
  %124 = add nsw i32 %19, 1
  %125 = icmp slt i32 %124, %20
  %126 = load ptr, ptr @bucket_size, align 8
  br i1 %125, label %127, label %147

127:                                              ; preds = %123
  %128 = add nsw i64 %22, 1
  br label %129

129:                                              ; preds = %127, %144
  %130 = phi i64 [ 0, %127 ], [ %145, %144 ]
  %131 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !7
  br label %133

133:                                              ; preds = %129, %133
  %134 = phi i64 [ %128, %129 ], [ %141, %133 ]
  %135 = phi i32 [ %132, %129 ], [ %140, %133 ]
  %136 = getelementptr inbounds ptr, ptr %126, i64 %134
  %137 = load ptr, ptr %136, align 8, !tbaa !19
  %138 = getelementptr inbounds i32, ptr %137, i64 %130
  %139 = load i32, ptr %138, align 4, !tbaa !7
  %140 = add nsw i32 %135, %139
  store i32 %140, ptr %131, align 4, !tbaa !7
  %141 = add nsw i64 %134, 1
  %142 = trunc i64 %141 to i32
  %143 = icmp eq i32 %20, %142
  br i1 %143, label %144, label %133, !llvm.loop !35

144:                                              ; preds = %133
  %145 = add nuw nsw i64 %130, 1
  %146 = icmp eq i64 %145, 1024
  br i1 %146, label %147, label %129, !llvm.loop !36

147:                                              ; preds = %144, %123, %120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #6
  store i32 0, ptr %15, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #6
  store i32 1023, ptr %16, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #6
  store i32 1, ptr %17, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #6
  store i32 0, ptr %18, align 4, !tbaa !7
  call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %25, i32 1073741859, i32 0, i32 1023, i32 1, i32 1)
  %148 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %25, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %294, label %153

150:                                              ; preds = %288, %153
  %151 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %25, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %294, label %153

153:                                              ; preds = %147, %150
  %154 = load i32, ptr %15, align 4, !tbaa !7
  %155 = load i32, ptr %16, align 4, !tbaa !7, !llvm.access.group !37
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %150, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %4, align 8
  %159 = load ptr, ptr %5, align 8
  %160 = sext i32 %154 to i64
  br label %161

161:                                              ; preds = %157, %288
  %162 = phi i64 [ %160, %157 ], [ %289, %288 ]
  %163 = phi i32 [ 0, %157 ], [ %293, %288 ]
  %164 = load i32, ptr %3, align 4, !tbaa !7, !llvm.access.group !37
  %165 = trunc i64 %162 to i32
  %166 = mul i32 %164, %165
  %167 = add i32 %166, %164
  %168 = icmp sgt i32 %164, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %161
  %170 = add i32 %154, %163
  %171 = sext i32 %166 to i64
  %172 = shl nsw i64 %171, 2
  %173 = getelementptr i8, ptr %158, i64 %172
  %174 = add i32 %166, 1
  %175 = call i32 @llvm.smax.i32(i32 %167, i32 %174)
  %176 = mul i32 %170, %164
  %177 = xor i32 %176, -1
  %178 = add i32 %175, %177
  %179 = zext i32 %178 to i64
  %180 = shl nuw nsw i64 %179, 2
  %181 = add nuw nsw i64 %180, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %173, i8 0, i64 %181, i1 false), !tbaa !7
  br label %182

182:                                              ; preds = %169, %161
  %183 = icmp sgt i64 %162, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %182
  %185 = add nsw i64 %162, -1
  %186 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !7, !llvm.access.group !37
  br label %188

188:                                              ; preds = %182, %184
  %189 = phi i32 [ %187, %184 ], [ 0, %182 ]
  %190 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %162
  %191 = load i32, ptr %190, align 4, !tbaa !7, !llvm.access.group !37
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %207

193:                                              ; preds = %188
  %194 = sext i32 %189 to i64
  br label %195

195:                                              ; preds = %193, %195
  %196 = phi i64 [ %194, %193 ], [ %203, %195 ]
  %197 = getelementptr inbounds i32, ptr %159, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !7, !llvm.access.group !37
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, ptr %158, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !7, !llvm.access.group !37
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %200, align 4, !tbaa !7, !llvm.access.group !37
  %203 = add nsw i64 %196, 1
  %204 = load i32, ptr %190, align 4, !tbaa !7, !llvm.access.group !37
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %203, %205
  br i1 %206, label %195, label %207, !llvm.loop !38

207:                                              ; preds = %195, %188
  %208 = sext i32 %166 to i64
  %209 = getelementptr inbounds i32, ptr %158, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !7, !llvm.access.group !37
  %211 = add nsw i32 %210, %189
  store i32 %211, ptr %209, align 4, !tbaa !7, !llvm.access.group !37
  %212 = icmp sgt i32 %164, 1
  br i1 %212, label %213, label %288

213:                                              ; preds = %207
  %214 = add i32 %166, 1
  %215 = sext i32 %214 to i64
  %216 = sext i32 %167 to i64
  %217 = add nsw i64 %215, 1
  %218 = call i64 @llvm.smax.i64(i64 %217, i64 %216)
  %219 = sub i64 %218, %215
  %220 = icmp ult i64 %219, 20
  br i1 %220, label %273, label %221

221:                                              ; preds = %213
  %222 = add nsw i64 %215, 1
  %223 = call i64 @llvm.smax.i64(i64 %222, i64 %216)
  %224 = xor i64 %215, -1
  %225 = add i64 %223, %224
  %226 = trunc i64 %225 to i32
  %227 = add i32 %166, %226
  %228 = icmp slt i32 %227, %166
  %229 = icmp ugt i64 %225, 4294967295
  %230 = or i1 %228, %229
  br i1 %230, label %273, label %231

231:                                              ; preds = %221
  %232 = shl nsw i64 %215, 2
  %233 = getelementptr i8, ptr %158, i64 %232
  %234 = add nsw i64 %215, 1
  %235 = call i64 @llvm.smax.i64(i64 %234, i64 %216)
  %236 = shl nsw i64 %235, 2
  %237 = getelementptr i8, ptr %158, i64 %236
  %238 = sext i32 %166 to i64
  %239 = shl nsw i64 %238, 2
  %240 = getelementptr i8, ptr %158, i64 %239
  %241 = add i64 %235, %238
  %242 = sub i64 %241, %215
  %243 = shl i64 %242, 2
  %244 = getelementptr i8, ptr %158, i64 %243
  %245 = icmp ult ptr %233, %244
  %246 = icmp ult ptr %240, %237
  %247 = and i1 %245, %246
  br i1 %247, label %273, label %248

248:                                              ; preds = %231
  %249 = and i64 %219, -8
  %250 = add i64 %249, %215
  %251 = trunc i64 %249 to i32
  %252 = add i32 %166, %251
  %253 = getelementptr i32, ptr %158, i64 %215
  br label %254

254:                                              ; preds = %254, %248
  %255 = phi i64 [ 0, %248 ], [ %269, %254 ]
  %256 = trunc i64 %255 to i32
  %257 = add i32 %166, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, ptr %158, i64 %258
  %260 = getelementptr inbounds i8, ptr %259, i64 16
  %261 = load <4 x i32>, ptr %259, align 4, !tbaa !7, !alias.scope !39, !llvm.access.group !37
  %262 = load <4 x i32>, ptr %260, align 4, !tbaa !7, !alias.scope !39, !llvm.access.group !37
  %263 = getelementptr i32, ptr %253, i64 %255
  %264 = getelementptr inbounds i8, ptr %263, i64 16
  %265 = load <4 x i32>, ptr %263, align 4, !tbaa !7, !alias.scope !42, !noalias !39, !llvm.access.group !37
  %266 = load <4 x i32>, ptr %264, align 4, !tbaa !7, !alias.scope !42, !noalias !39, !llvm.access.group !37
  %267 = add nsw <4 x i32> %265, %261
  %268 = add nsw <4 x i32> %266, %262
  store <4 x i32> %267, ptr %263, align 4, !tbaa !7, !alias.scope !42, !noalias !39, !llvm.access.group !37
  store <4 x i32> %268, ptr %264, align 4, !tbaa !7, !alias.scope !42, !noalias !39, !llvm.access.group !37
  %269 = add nuw i64 %255, 8
  %270 = icmp eq i64 %269, %249
  br i1 %270, label %271, label %254, !llvm.loop !44

271:                                              ; preds = %254
  %272 = icmp eq i64 %219, %249
  br i1 %272, label %288, label %273

273:                                              ; preds = %231, %221, %213, %271
  %274 = phi i64 [ %215, %231 ], [ %215, %221 ], [ %215, %213 ], [ %250, %271 ]
  %275 = phi i32 [ %166, %231 ], [ %166, %221 ], [ %166, %213 ], [ %252, %271 ]
  br label %276

276:                                              ; preds = %273, %276
  %277 = phi i64 [ %285, %276 ], [ %274, %273 ]
  %278 = phi i32 [ %287, %276 ], [ %275, %273 ]
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %158, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !7, !llvm.access.group !37
  %282 = getelementptr inbounds i32, ptr %158, i64 %277
  %283 = load i32, ptr %282, align 4, !tbaa !7, !llvm.access.group !37
  %284 = add nsw i32 %283, %281
  store i32 %284, ptr %282, align 4, !tbaa !7, !llvm.access.group !37
  %285 = add nsw i64 %277, 1
  %286 = icmp slt i64 %285, %216
  %287 = trunc nsw i64 %277 to i32
  br i1 %286, label %276, label %288, !llvm.loop !45

288:                                              ; preds = %276, %271, %207
  %289 = add nsw i64 %162, 1
  %290 = load i32, ptr %16, align 4, !tbaa !7, !llvm.access.group !37
  %291 = sext i32 %290 to i64
  %292 = icmp slt i64 %162, %291
  %293 = add i32 %163, 1
  br i1 %292, label %161, label %150, !llvm.loop !46

294:                                              ; preds = %150, %147
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #6
  call void @__kmpc_barrier(ptr nonnull @4, i32 %25)
  ret void
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = tail call i32 @check_timer_flag() #6
  tail call void @timer_clear(i32 noundef 0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  tail call void @timer_clear(i32 noundef 1) #6
  tail call void @timer_clear(i32 noundef 2) #6
  tail call void @timer_clear(i32 noundef 3) #6
  tail call void @timer_start(i32 noundef 3) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @test_index_array, ptr noundef nonnull align 4 dereferenceable(20) @C_test_index_array, i64 20, i1 false), !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @test_rank_array, ptr noundef nonnull align 4 dereferenceable(20) @C_test_rank_array, i64 20, i1 false), !tbaa !7
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef 134217728, i32 noundef 67)
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 10)
  %15 = tail call i32 @omp_get_max_threads()
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %15)
  %17 = tail call i32 @putchar(i32 10)
  tail call void @timer_start(i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store double 0x41B2B9B0A1000000, ptr %7, align 8, !tbaa !11
  store double 0x41D2309CE5400000, ptr %8, align 8, !tbaa !11
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 2, ptr nonnull @create_seq.omp_outlined, ptr nonnull %8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  call void @alloc_key_buff()
  call void @timer_stop(i32 noundef 1) #6
  br label %25

18:                                               ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @test_index_array, ptr noundef nonnull align 4 dereferenceable(20) @C_test_index_array, i64 20, i1 false), !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @test_rank_array, ptr noundef nonnull align 4 dereferenceable(20) @C_test_rank_array, i64 20, i1 false), !tbaa !7
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef 134217728, i32 noundef 67)
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 10)
  %22 = tail call i32 @omp_get_max_threads()
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %22)
  %24 = tail call i32 @putchar(i32 10)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store double 0x41B2B9B0A1000000, ptr %5, align 8, !tbaa !11
  store double 0x41D2309CE5400000, ptr %6, align 8, !tbaa !11
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 2, ptr nonnull @create_seq.omp_outlined, ptr nonnull %6, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  call void @alloc_key_buff()
  br label %25

25:                                               ; preds = %18, %11
  call void @rank(i32 noundef 1)
  store i32 0, ptr @passed_verification, align 4, !tbaa !7
  %26 = call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  call void @timer_start(i32 noundef 0) #6
  call void @roi_begin_() #6
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 1)
  call void @rank(i32 noundef 1)
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 2)
  call void @rank(i32 noundef 2)
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 3)
  call void @rank(i32 noundef 3)
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 4)
  call void @rank(i32 noundef 4)
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 5)
  call void @rank(i32 noundef 5)
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 6)
  call void @rank(i32 noundef 6)
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 7)
  call void @rank(i32 noundef 7)
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 8)
  call void @rank(i32 noundef 8)
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 9)
  call void @rank(i32 noundef 9)
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 10)
  call void @rank(i32 noundef 10)
  call void @roi_end_() #6
  call void @timer_stop(i32 noundef 0) #6
  %37 = call double @timer_read(i32 noundef 0) #6
  br i1 %10, label %47, label %38

38:                                               ; preds = %25
  call void @timer_start(i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i32 0, ptr %4, align 4, !tbaa !7
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %4)
  %39 = load i32, ptr %4, align 4, !tbaa !7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = sext i32 %39 to i64
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %42)
  br label %57

44:                                               ; preds = %38
  %45 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @passed_verification, align 4, !tbaa !7
  br label %57

47:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i32 0, ptr %3, align 4, !tbaa !7
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %3)
  %48 = load i32, ptr %3, align 4, !tbaa !7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = sext i32 %48 to i64
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %51)
  br label %56

53:                                               ; preds = %47
  %54 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr @passed_verification, align 4, !tbaa !7
  br label %56

56:                                               ; preds = %53, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %58

57:                                               ; preds = %41, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @timer_stop(i32 noundef 2) #6
  call void @timer_stop(i32 noundef 3) #6
  br label %58

58:                                               ; preds = %56, %57
  %59 = call i32 @omp_get_max_threads()
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = zext nneg i32 %59 to i64
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i64 [ 0, %61 ], [ %68, %63 ]
  %65 = load ptr, ptr @bucket_size, align 8, !tbaa !19
  %66 = getelementptr inbounds ptr, ptr %65, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !19
  call void @free(ptr noundef %67) #6
  %68 = add nuw nsw i64 %64, 1
  %69 = icmp eq i64 %68, %62
  br i1 %69, label %70, label %63, !llvm.loop !22

70:                                               ; preds = %63, %58
  %71 = load ptr, ptr @bucket_size, align 8, !tbaa !19
  call void @free(ptr noundef %71) #6
  %72 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %73 = icmp eq i32 %72, 51
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 0, ptr @passed_verification, align 4, !tbaa !7
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ 0, %74 ], [ 51, %70 ]
  %77 = fdiv double 0x4094F8B588E368F0, %37
  call void @c_print_results(ptr noundef nonnull @.str.11, i8 noundef 67, i32 noundef 134217728, i32 noundef 1, i32 noundef 0, i32 noundef 10, double noundef %37, double noundef %77, ptr noundef nonnull @.str.12, i32 noundef %76, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17) #6
  br i1 %10, label %96, label %78

78:                                               ; preds = %75
  %79 = call double @timer_read(i32 noundef 3) #6
  %80 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %79)
  %82 = fcmp oeq double %79, 0.000000e+00
  %83 = select i1 %82, double 1.000000e+00, double %79
  %84 = call double @timer_read(i32 noundef 1) #6
  %85 = fdiv double %84, %83
  %86 = fmul double %85, 1.000000e+02
  %87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, double noundef %84, double noundef %86)
  %88 = call double @timer_read(i32 noundef 0) #6
  %89 = fdiv double %88, %83
  %90 = fmul double %89, 1.000000e+02
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %88, double noundef %90)
  %92 = call double @timer_read(i32 noundef 2) #6
  %93 = fdiv double %92, %83
  %94 = fmul double %93, 1.000000e+02
  %95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, double noundef %92, double noundef %94)
  br label %96

96:                                               ; preds = %78, %75
  ret i32 0
}

declare i32 @check_timer_flag() local_unnamed_addr #14

declare void @timer_clear(i32 noundef) local_unnamed_addr #14

declare void @timer_start(i32 noundef) local_unnamed_addr #14

declare void @timer_stop(i32 noundef) local_unnamed_addr #14

declare void @roi_begin_(...) local_unnamed_addr #14

declare void @roi_end_(...) local_unnamed_addr #14

declare double @timer_read(i32 noundef) local_unnamed_addr #14

declare void @c_print_results(ptr noundef, i8 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define weak_odr hidden ptr @_ZTW11bucket_ptrs() local_unnamed_addr #3 comdat {
  %1 = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @bucket_ptrs)
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nounwind }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { cold nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { convergent nounwind }
attributes #13 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 19.0.0git (git@github.com:studyztp/llvm-project.git ea54371a8e03ebdb4d383b89964705018ddf3d9e)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{!18}
!18 = !{i64 2, i64 -1, i64 -1, i1 true}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !9, i64 0}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.parallel_accesses", !23}
!27 = distinct !{!27, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !29, !28}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{}
!38 = distinct !{!38, !14}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !14, !28, !29}
!45 = distinct !{!45, !14, !28}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.parallel_accesses", !37}
