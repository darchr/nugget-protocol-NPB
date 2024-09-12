; ModuleID = 'is.c'
source_filename = "is.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZTW11bucket_ptrs = comdat any

@bucket_ptrs = dso_local thread_local global [1024 x i64] zeroinitializer, align 8
@KS = internal thread_local global i32 0, align 4
@R23 = internal thread_local global double 0.000000e+00, align 8
@R46 = internal thread_local global double 0.000000e+00, align 8
@T23 = internal thread_local global double 0.000000e+00, align 8
@T46 = internal thread_local global double 0.000000e+00, align 8
@key_buff_ptr_global = dso_local local_unnamed_addr global ptr null, align 8
@passed_verification = dso_local local_unnamed_addr global i32 0, align 4
@key_array = dso_local local_unnamed_addr global [34359738368 x i64] zeroinitializer, align 8
@key_buff1 = dso_local global [2147483648 x i64] zeroinitializer, align 8
@key_buff2 = dso_local global [34359738368 x i64] zeroinitializer, align 8
@partial_verify_vals = dso_local local_unnamed_addr global [5 x i64] zeroinitializer, align 8
@bucket_size = dso_local local_unnamed_addr global ptr null, align 8
@test_index_array = dso_local local_unnamed_addr global [5 x i64] zeroinitializer, align 8
@test_rank_array = dso_local local_unnamed_addr global [5 x i64] zeroinitializer, align 8
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
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, 34359738367
  %14 = sdiv i64 %13, %12
  %15 = sext i32 %10 to i64
  %16 = mul i64 %14, %15
  %17 = add i64 %16, %14
  %18 = tail call i64 @llvm.smin.i64(i64 %17, i64 34359738368)
  %19 = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @KS)
  store i32 0, ptr %19, align 4, !tbaa !7
  %20 = load double, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %4
  %23 = shl nsw i64 %15, 2
  %24 = mul i64 %14, %23
  store double %20, ptr %5, align 8, !tbaa !11
  store double %9, ptr %6, align 8, !tbaa !11
  %25 = icmp sgt i64 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %22, %36
  %27 = phi i64 [ %37, %36 ], [ %24, %22 ]
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = lshr exact i64 %27, 1
  %32 = call double @randlc(ptr noundef nonnull %6, ptr noundef nonnull %6)
  br label %36

33:                                               ; preds = %26
  %34 = call double @randlc(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %35 = add nsw i64 %27, -1
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i64 [ %31, %30 ], [ %35, %33 ]
  %38 = icmp sgt i64 %37, 1
  br i1 %38, label %26, label %39, !llvm.loop !15

39:                                               ; preds = %36, %22
  %40 = call double @randlc(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %41 = load double, ptr %5, align 8, !tbaa !11
  br label %42

42:                                               ; preds = %4, %39
  %43 = phi double [ %41, %39 ], [ %20, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  store double %43, ptr %7, align 8, !tbaa !11
  %44 = icmp slt i64 %16, %18
  br i1 %44, label %45, label %59

45:                                               ; preds = %42, %45
  %46 = phi i64 [ %57, %45 ], [ %16, %42 ]
  %47 = call double @randlc(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %48 = call double @randlc(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %49 = fadd double %47, %48
  %50 = call double @randlc(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %51 = fadd double %49, %50
  %52 = call double @randlc(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %53 = fadd double %51, %52
  %54 = fmul double %53, 0x41C0000000000000
  %55 = fptosi double %54 to i64
  %56 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %46
  store i64 %55, ptr %56, align 8, !tbaa !16
  %57 = add i64 %46, 1
  %58 = icmp eq i64 %57, %18
  br i1 %58, label %59, label %45, !llvm.loop !18

59:                                               ; preds = %45, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @omp_get_num_threads() local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !19 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

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
  store ptr %4, ptr @bucket_size, align 8, !tbaa !21
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %7, %14
  %10 = phi i64 [ %17, %14 ], [ 0, %7 ]
  %11 = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @perror(ptr noundef nonnull @.str) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

14:                                               ; preds = %9
  %15 = load ptr, ptr @bucket_size, align 8, !tbaa !21
  %16 = getelementptr inbounds ptr, ptr %15, i64 %10
  store ptr %11, ptr %16, align 8, !tbaa !21
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %2
  br i1 %18, label %19, label %9, !llvm.loop !23

19:                                               ; preds = %14, %7
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @alloc_key_buff.omp_outlined)
  ret void
}

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @alloc_key_buff.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1) #4 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 34359738367, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 1, ptr %5, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !tbaa !7
  %7 = load i32, ptr %0, align 4, !tbaa !7
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %7, i32 34, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5, i64 1, i64 1)
  %8 = load i64, ptr %4, align 8
  %9 = call i64 @llvm.smin.i64(i64 %8, i64 34359738367)
  store i64 %9, ptr %4, align 8, !tbaa !16
  %10 = load i64, ptr %3, align 8, !tbaa !16
  %11 = icmp sgt i64 %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = shl i64 %10, 3
  %14 = getelementptr i8, ptr @key_buff2, i64 %13
  %15 = add nsw i64 %9, 1
  %16 = sub i64 %15, %10
  %17 = shl nuw i64 %16, 3
  call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %17, i1 false), !tbaa !16
  br label %18

18:                                               ; preds = %12, %2
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @free_key_buff() local_unnamed_addr #3 {
  %1 = tail call i32 @omp_get_max_threads()
  %2 = sext i32 %1 to i64
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %9, %4 ], [ 0, %0 ]
  %6 = load ptr, ptr @bucket_size, align 8, !tbaa !21
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  tail call void @free(ptr noundef %8) #6
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, %2
  br i1 %10, label %11, label %4, !llvm.loop !24

11:                                               ; preds = %4, %0
  %12 = load ptr, ptr @bucket_size, align 8, !tbaa !21
  tail call void @free(ptr noundef %12) #6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @full_verify() local_unnamed_addr #3 {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #6
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i64 0, ptr %1, align 8, !tbaa !16
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %1)
  %2 = load i64, ptr %1, align 8, !tbaa !16
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %2)
  br label %9

6:                                                ; preds = %0
  %7 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @passed_verification, align 4, !tbaa !7
  br label %9

9:                                                ; preds = %6, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @full_verify.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1) #4 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 1023, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 1, ptr %5, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !tbaa !7
  %7 = load i32, ptr %0, align 4, !tbaa !7
  tail call void @__kmpc_dispatch_init_8(ptr nonnull @1, i32 %7, i32 1073741859, i64 0, i64 1023, i64 1, i64 1)
  %8 = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %7, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %52, label %10

10:                                               ; preds = %2
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @bucket_ptrs)
  br label %15

12:                                               ; preds = %48, %15
  %13 = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %7, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %10, %12
  %16 = load i64, ptr %3, align 8, !tbaa !16
  %17 = load i64, ptr %4, align 8, !tbaa !16, !llvm.access.group !25
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %12, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @key_buff_ptr_global, align 8
  br label %21

21:                                               ; preds = %19, %48
  %22 = phi i64 [ %17, %19 ], [ %49, %48 ]
  %23 = phi i64 [ %16, %19 ], [ %50, %48 ]
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = add nsw i64 %23, -1
  %27 = getelementptr inbounds [1024 x i64], ptr %11, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !16, !llvm.access.group !25
  br label %29

29:                                               ; preds = %21, %25
  %30 = phi i64 [ %28, %25 ], [ 0, %21 ]
  %31 = getelementptr inbounds [1024 x i64], ptr %11, i64 0, i64 %23
  %32 = load i64, ptr %31, align 8, !tbaa !16, !llvm.access.group !25
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29, %34
  %35 = phi i64 [ %43, %34 ], [ %30, %29 ]
  %36 = getelementptr inbounds [34359738368 x i64], ptr @key_buff2, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !16, !llvm.access.group !25
  %38 = getelementptr inbounds i64, ptr %20, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !16, !llvm.access.group !25
  %40 = add nsw i64 %39, -1
  store i64 %40, ptr %38, align 8, !tbaa !16, !llvm.access.group !25
  %41 = load i64, ptr %36, align 8, !tbaa !16, !llvm.access.group !25
  %42 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %40
  store i64 %41, ptr %42, align 8, !tbaa !16, !llvm.access.group !25
  %43 = add nsw i64 %35, 1
  %44 = load i64, ptr %31, align 8, !tbaa !16, !llvm.access.group !25
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %34, label %46, !llvm.loop !26

46:                                               ; preds = %34
  %47 = load i64, ptr %4, align 8, !tbaa !16, !llvm.access.group !25
  br label %48

48:                                               ; preds = %46, %29
  %49 = phi i64 [ %47, %46 ], [ %22, %29 ]
  %50 = add nsw i64 %23, 1
  %51 = icmp slt i64 %23, %49
  br i1 %51, label %21, label %12, !llvm.loop !27

52:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_8(ptr, i32, i32, i64, i64, i64, i64) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_8(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @full_verify.omp_outlined.1(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull align 8 dereferenceable(8) %2) #4 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [1 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 34359738366, ptr %5, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store i64 1, ptr %6, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %10 = load i32, ptr %0, align 4, !tbaa !7
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %10, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i64 1, i64 1)
  %11 = load i64, ptr %5, align 8
  %12 = call i64 @llvm.smin.i64(i64 %11, i64 34359738366)
  store i64 %12, ptr %5, align 8, !tbaa !16
  %13 = load i64, ptr %4, align 8, !tbaa !16
  %14 = icmp sgt i64 %13, %12
  br i1 %14, label %66, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !16
  %18 = add nsw i64 %12, 1
  %19 = sub i64 %18, %13
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %51, label %21

21:                                               ; preds = %15
  %22 = and i64 %19, -4
  %23 = add i64 %13, %22
  %24 = insertelement <2 x i64> poison, i64 %17, i64 1
  br label %25

25:                                               ; preds = %25, %21
  %26 = phi i64 [ 0, %21 ], [ %44, %25 ]
  %27 = phi <2 x i64> [ %24, %21 ], [ %35, %25 ]
  %28 = phi <2 x i64> [ zeroinitializer, %21 ], [ %42, %25 ]
  %29 = phi <2 x i64> [ zeroinitializer, %21 ], [ %43, %25 ]
  %30 = add i64 %13, %26
  %31 = add nsw i64 %30, 1
  %32 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 16
  %34 = load <2 x i64>, ptr %32, align 8, !tbaa !16
  %35 = load <2 x i64>, ptr %33, align 8, !tbaa !16
  %36 = shufflevector <2 x i64> %27, <2 x i64> %34, <2 x i32> <i32 1, i32 2>
  %37 = shufflevector <2 x i64> %34, <2 x i64> %35, <2 x i32> <i32 1, i32 2>
  %38 = icmp sgt <2 x i64> %36, %34
  %39 = icmp sgt <2 x i64> %37, %35
  %40 = zext <2 x i1> %38 to <2 x i64>
  %41 = zext <2 x i1> %39 to <2 x i64>
  %42 = add <2 x i64> %28, %40
  %43 = add <2 x i64> %29, %41
  %44 = add nuw i64 %26, 4
  %45 = icmp eq i64 %44, %22
  br i1 %45, label %46, label %25, !llvm.loop !29

46:                                               ; preds = %25
  %47 = add <2 x i64> %43, %42
  %48 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %47)
  %49 = icmp eq i64 %19, %22
  %50 = extractelement <2 x i64> %35, i64 1
  br i1 %49, label %66, label %51

51:                                               ; preds = %15, %46
  %52 = phi i64 [ %50, %46 ], [ %17, %15 ]
  %53 = phi i64 [ %23, %46 ], [ %13, %15 ]
  %54 = phi i64 [ %48, %46 ], [ 0, %15 ]
  br label %55

55:                                               ; preds = %51, %55
  %56 = phi i64 [ %61, %55 ], [ %52, %51 ]
  %57 = phi i64 [ %59, %55 ], [ %53, %51 ]
  %58 = phi i64 [ %64, %55 ], [ %54, %51 ]
  %59 = add nsw i64 %57, 1
  %60 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !16
  %62 = icmp sgt i64 %56, %61
  %63 = zext i1 %62 to i64
  %64 = add nuw nsw i64 %58, %63
  %65 = icmp eq i64 %57, %12
  br i1 %65, label %66, label %55, !llvm.loop !32

66:                                               ; preds = %55, %46, %3
  %67 = phi i64 [ 0, %3 ], [ %48, %46 ], [ %64, %55 ]
  store i64 %67, ptr %8, align 8, !tbaa !16
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %10)
  store ptr %8, ptr %9, align 8
  %68 = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %10, i32 1, i64 8, ptr nonnull %9, ptr nonnull @full_verify.omp_outlined.1.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %68, label %76 [
    i32 1, label %69
    i32 2, label %73
  ]

69:                                               ; preds = %66
  %70 = load i64, ptr %2, align 8, !tbaa !16
  %71 = load i64, ptr %8, align 8, !tbaa !16
  %72 = add nsw i64 %71, %70
  store i64 %72, ptr %2, align 8, !tbaa !16
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %10, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %76

73:                                               ; preds = %66
  %74 = load i64, ptr %8, align 8, !tbaa !16
  %75 = atomicrmw add ptr %2, i64 %74 monotonic, align 8
  br label %76

76:                                               ; preds = %73, %69, %66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @full_verify.omp_outlined.1.omp.reduction.reduction_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = load i64, ptr %4, align 8, !tbaa !16
  %6 = load i64, ptr %3, align 8, !tbaa !16
  %7 = add nsw i64 %6, %5
  store i64 %7, ptr %4, align 8, !tbaa !16
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
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 21, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 2097152, ptr %5, align 8, !tbaa !16
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %6
  store i64 %6, ptr %7, align 8, !tbaa !16
  %8 = sub nsw i64 2147483648, %6
  %9 = add nsw i32 %0, 10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %10
  store i64 %8, ptr %11, align 8, !tbaa !16
  %12 = load i64, ptr @test_index_array, align 8, !tbaa !16
  %13 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !16
  store i64 %14, ptr @partial_verify_vals, align 8, !tbaa !16
  %15 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_index_array, i64 0, i64 1), align 8, !tbaa !16
  %16 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !16
  store i64 %17, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 1), align 8, !tbaa !16
  %18 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_index_array, i64 0, i64 2), align 8, !tbaa !16
  %19 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !16
  store i64 %20, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 2), align 8, !tbaa !16
  %21 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_index_array, i64 0, i64 3), align 8, !tbaa !16
  %22 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !16
  store i64 %23, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 3), align 8, !tbaa !16
  %24 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_index_array, i64 0, i64 4), align 8, !tbaa !16
  %25 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !16
  store i64 %26, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 4), align 8, !tbaa !16
  store ptr @key_buff2, ptr %3, align 8, !tbaa !21
  store ptr @key_buff1, ptr %2, align 8, !tbaa !21
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 4, ptr nonnull @rank.omp_outlined, ptr nonnull %4, ptr nonnull %5, ptr nonnull %2, ptr nonnull %3)
  %27 = add nsw i32 %0, -2
  %28 = sext i32 %27 to i64
  %29 = icmp sgt i32 %0, 4
  %30 = icmp sgt i32 %0, 2
  %31 = sext i1 %30 to i64
  %32 = load i64, ptr @partial_verify_vals, align 8, !tbaa !16
  %33 = add i64 %32, -1
  %34 = icmp ult i64 %33, 34359738367
  br i1 %29, label %36, label %35

35:                                               ; preds = %1
  br i1 %34, label %119, label %132

36:                                               ; preds = %1
  br i1 %34, label %37, label %50

37:                                               ; preds = %36
  %38 = load ptr, ptr %2, align 8, !tbaa !21
  %39 = getelementptr i64, ptr %38, i64 %32
  %40 = getelementptr i8, ptr %39, i64 -8
  %41 = load i64, ptr %40, align 8, !tbaa !16
  %42 = load i64, ptr @test_rank_array, align 8, !tbaa !16
  %43 = add nsw i64 %42, %28
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 0)
  br label %50

47:                                               ; preds = %37
  %48 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr @passed_verification, align 4, !tbaa !7
  br label %50

50:                                               ; preds = %47, %45, %36
  %51 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 1), align 8, !tbaa !16
  %52 = add i64 %51, -1
  %53 = icmp ult i64 %52, 34359738367
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load ptr, ptr %2, align 8, !tbaa !21
  %56 = getelementptr i64, ptr %55, i64 %51
  %57 = getelementptr i8, ptr %56, i64 -8
  %58 = load i64, ptr %57, align 8, !tbaa !16
  %59 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 1), align 8, !tbaa !16
  %60 = add nsw i64 %59, %28
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 1)
  br label %67

64:                                               ; preds = %54
  %65 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr @passed_verification, align 4, !tbaa !7
  br label %67

67:                                               ; preds = %64, %62, %50
  %68 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 2), align 8, !tbaa !16
  %69 = add i64 %68, -1
  %70 = icmp ult i64 %69, 34359738367
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load ptr, ptr %2, align 8, !tbaa !21
  %73 = getelementptr i64, ptr %72, i64 %68
  %74 = getelementptr i8, ptr %73, i64 -8
  %75 = load i64, ptr %74, align 8, !tbaa !16
  %76 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 2), align 8, !tbaa !16
  %77 = add nsw i64 %76, %28
  %78 = add nsw i64 %77, -2
  %79 = icmp eq i64 %75, %78
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
  %86 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 3), align 8, !tbaa !16
  %87 = add i64 %86, -1
  %88 = icmp ult i64 %87, 34359738367
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load ptr, ptr %2, align 8, !tbaa !21
  %91 = getelementptr i64, ptr %90, i64 %86
  %92 = getelementptr i8, ptr %91, i64 -8
  %93 = load i64, ptr %92, align 8, !tbaa !16
  %94 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 3), align 8, !tbaa !16
  %95 = sub nsw i64 %94, %28
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %89
  %98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 3)
  br label %102

99:                                               ; preds = %89
  %100 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr @passed_verification, align 4, !tbaa !7
  br label %102

102:                                              ; preds = %99, %97, %85
  %103 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 4), align 8, !tbaa !16
  %104 = add i64 %103, -1
  %105 = icmp ult i64 %104, 34359738367
  br i1 %105, label %106, label %201

106:                                              ; preds = %102
  %107 = load ptr, ptr %2, align 8, !tbaa !21
  %108 = getelementptr i64, ptr %107, i64 %103
  %109 = getelementptr i8, ptr %108, i64 -8
  %110 = load i64, ptr %109, align 8, !tbaa !16
  %111 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 4), align 8, !tbaa !16
  %112 = sub nsw i64 %111, %28
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %116, label %114

114:                                              ; preds = %106
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 4)
  br label %201

116:                                              ; preds = %106
  %117 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr @passed_verification, align 4, !tbaa !7
  br label %201

119:                                              ; preds = %35
  %120 = load ptr, ptr %2, align 8, !tbaa !21
  %121 = getelementptr i64, ptr %120, i64 %32
  %122 = getelementptr i8, ptr %121, i64 -8
  %123 = load i64, ptr %122, align 8, !tbaa !16
  %124 = load i64, ptr @test_rank_array, align 8, !tbaa !16
  %125 = add nsw i64 %124, %28
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr @passed_verification, align 4, !tbaa !7
  br label %132

130:                                              ; preds = %119
  %131 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 0)
  br label %132

132:                                              ; preds = %127, %130, %35
  %133 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 1), align 8, !tbaa !16
  %134 = add i64 %133, -1
  %135 = icmp ult i64 %134, 34359738367
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load ptr, ptr %2, align 8, !tbaa !21
  %138 = getelementptr i64, ptr %137, i64 %133
  %139 = getelementptr i8, ptr %138, i64 -8
  %140 = load i64, ptr %139, align 8, !tbaa !16
  %141 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 1), align 8, !tbaa !16
  %142 = add nsw i64 %141, %28
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %146, label %144

144:                                              ; preds = %136
  %145 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 1)
  br label %149

146:                                              ; preds = %136
  %147 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr @passed_verification, align 4, !tbaa !7
  br label %149

149:                                              ; preds = %146, %144, %132
  %150 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 2), align 8, !tbaa !16
  %151 = add i64 %150, -1
  %152 = icmp ult i64 %151, 34359738367
  br i1 %152, label %153, label %167

153:                                              ; preds = %149
  %154 = load ptr, ptr %2, align 8, !tbaa !21
  %155 = getelementptr i64, ptr %154, i64 %150
  %156 = getelementptr i8, ptr %155, i64 -8
  %157 = load i64, ptr %156, align 8, !tbaa !16
  %158 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 2), align 8, !tbaa !16
  %159 = add nsw i64 %158, %28
  %160 = add nsw i64 %159, %31
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %164, label %162

162:                                              ; preds = %153
  %163 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 2)
  br label %167

164:                                              ; preds = %153
  %165 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr @passed_verification, align 4, !tbaa !7
  br label %167

167:                                              ; preds = %164, %162, %149
  %168 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 3), align 8, !tbaa !16
  %169 = add i64 %168, -1
  %170 = icmp ult i64 %169, 34359738367
  br i1 %170, label %171, label %184

171:                                              ; preds = %167
  %172 = load ptr, ptr %2, align 8, !tbaa !21
  %173 = getelementptr i64, ptr %172, i64 %168
  %174 = getelementptr i8, ptr %173, i64 -8
  %175 = load i64, ptr %174, align 8, !tbaa !16
  %176 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 3), align 8, !tbaa !16
  %177 = sub nsw i64 %176, %28
  %178 = icmp eq i64 %175, %177
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 3)
  br label %184

181:                                              ; preds = %171
  %182 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr @passed_verification, align 4, !tbaa !7
  br label %184

184:                                              ; preds = %181, %179, %167
  %185 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 4), align 8, !tbaa !16
  %186 = add i64 %185, -1
  %187 = icmp ult i64 %186, 34359738367
  br i1 %187, label %188, label %205

188:                                              ; preds = %184
  %189 = load ptr, ptr %2, align 8, !tbaa !21
  %190 = getelementptr i64, ptr %189, i64 %185
  %191 = getelementptr i8, ptr %190, i64 -8
  %192 = load i64, ptr %191, align 8, !tbaa !16
  %193 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 4), align 8, !tbaa !16
  %194 = sub nsw i64 %193, %28
  %195 = icmp eq i64 %192, %194
  br i1 %195, label %198, label %196

196:                                              ; preds = %188
  %197 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 4)
  br label %205

198:                                              ; preds = %188
  %199 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr @passed_verification, align 4, !tbaa !7
  br label %205

201:                                              ; preds = %102, %114, %116
  %202 = icmp eq i32 %0, 10
  br i1 %202, label %203, label %205

203:                                              ; preds = %201
  %204 = load ptr, ptr %2, align 8, !tbaa !21
  store ptr %204, ptr @key_buff_ptr_global, align 8, !tbaa !21
  br label %205

205:                                              ; preds = %198, %196, %184, %203, %201
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @rank.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = tail call i32 @omp_get_thread_num()
  %20 = tail call i32 @omp_get_num_threads()
  %21 = load ptr, ptr @bucket_size, align 8, !tbaa !21
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %24, i8 0, i64 8192, i1 false), !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store i64 0, ptr %7, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  store i64 34359738367, ptr %8, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  store i64 1, ptr %9, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !tbaa !7
  %25 = load i32, ptr %0, align 4, !tbaa !7
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %25, i32 34, ptr nonnull %10, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9, i64 1, i64 1)
  %26 = load i64, ptr %8, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 34359738367)
  store i64 %27, ptr %8, align 8, !tbaa !16
  %28 = load i64, ptr %7, align 8, !tbaa !16
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %43, label %30

30:                                               ; preds = %6
  %31 = load i32, ptr %2, align 4, !tbaa !7
  %32 = zext nneg i32 %31 to i64
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %28, %30 ], [ %41, %33 ]
  %35 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !16
  %37 = ashr i64 %36, %32
  %38 = getelementptr inbounds i64, ptr %24, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !16
  %40 = add nsw i64 %39, 1
  store i64 %40, ptr %38, align 8, !tbaa !16
  %41 = add nsw i64 %34, 1
  %42 = icmp slt i64 %34, %27
  br i1 %42, label %33, label %43

43:                                               ; preds = %33, %6
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @__kmpc_barrier(ptr nonnull @4, i32 %25)
  %44 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @bucket_ptrs)
  store i64 0, ptr %44, align 8, !tbaa !16
  %45 = icmp sgt i32 %19, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load ptr, ptr @bucket_size, align 8, !tbaa !21
  br label %53

48:                                               ; preds = %53, %43
  %49 = phi i64 [ 0, %43 ], [ %59, %53 ]
  %50 = sext i32 %20 to i64
  %51 = icmp slt i32 %19, %20
  %52 = load ptr, ptr @bucket_size, align 8
  br label %62

53:                                               ; preds = %46, %53
  %54 = phi i64 [ 0, %46 ], [ %59, %53 ]
  %55 = phi i64 [ 0, %46 ], [ %60, %53 ]
  %56 = getelementptr inbounds ptr, ptr %47, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !21
  %58 = load i64, ptr %57, align 8, !tbaa !16
  %59 = add nsw i64 %54, %58
  store i64 %59, ptr %44, align 8, !tbaa !16
  %60 = add nuw nsw i64 %55, 1
  %61 = icmp eq i64 %60, %22
  br i1 %61, label %48, label %53, !llvm.loop !33

62:                                               ; preds = %48, %89
  %63 = phi i64 [ %49, %48 ], [ %90, %89 ]
  %64 = phi i64 [ 1, %48 ], [ %91, %89 ]
  %65 = getelementptr inbounds [1024 x i64], ptr %44, i64 0, i64 %64
  store i64 %63, ptr %65, align 8, !tbaa !16
  br i1 %45, label %68, label %66

66:                                               ; preds = %68, %62
  %67 = phi i64 [ %63, %62 ], [ %75, %68 ]
  br i1 %51, label %78, label %89

68:                                               ; preds = %62, %68
  %69 = phi i64 [ %75, %68 ], [ %63, %62 ]
  %70 = phi i64 [ %76, %68 ], [ 0, %62 ]
  %71 = getelementptr inbounds ptr, ptr %52, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !21
  %73 = getelementptr inbounds i64, ptr %72, i64 %64
  %74 = load i64, ptr %73, align 8, !tbaa !16
  %75 = add nsw i64 %69, %74
  store i64 %75, ptr %65, align 8, !tbaa !16
  %76 = add nuw nsw i64 %70, 1
  %77 = icmp eq i64 %76, %22
  br i1 %77, label %66, label %68, !llvm.loop !34

78:                                               ; preds = %66, %78
  %79 = phi i64 [ %86, %78 ], [ %67, %66 ]
  %80 = phi i64 [ %87, %78 ], [ %22, %66 ]
  %81 = getelementptr inbounds ptr, ptr %52, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !21
  %83 = getelementptr i64, ptr %82, i64 %64
  %84 = getelementptr i8, ptr %83, i64 -8
  %85 = load i64, ptr %84, align 8, !tbaa !16
  %86 = add nsw i64 %79, %85
  store i64 %86, ptr %65, align 8, !tbaa !16
  %87 = add nsw i64 %80, 1
  %88 = icmp eq i64 %87, %50
  br i1 %88, label %89, label %78, !llvm.loop !35

89:                                               ; preds = %78, %66
  %90 = phi i64 [ %67, %66 ], [ %86, %78 ]
  %91 = add nuw nsw i64 %64, 1
  %92 = icmp eq i64 %91, 1024
  br i1 %92, label %93, label %62, !llvm.loop !36

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  store i64 0, ptr %11, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  store i64 34359738367, ptr %12, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #6
  store i64 1, ptr %13, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  store i32 0, ptr %14, align 4, !tbaa !7
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %25, i32 34, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 1)
  %94 = load i64, ptr %12, align 8
  %95 = call i64 @llvm.smin.i64(i64 %94, i64 34359738367)
  store i64 %95, ptr %12, align 8, !tbaa !16
  %96 = load i64, ptr %11, align 8, !tbaa !16
  %97 = icmp sgt i64 %96, %95
  br i1 %97, label %113, label %98

98:                                               ; preds = %93
  %99 = load i32, ptr %2, align 4, !tbaa !7
  %100 = zext nneg i32 %99 to i64
  br label %101

101:                                              ; preds = %98, %101
  %102 = phi i64 [ %96, %98 ], [ %110, %101 ]
  %103 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !16
  %105 = ashr i64 %104, %100
  %106 = getelementptr inbounds [1024 x i64], ptr %44, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !16
  %108 = add nsw i64 %107, 1
  store i64 %108, ptr %106, align 8, !tbaa !16
  %109 = getelementptr inbounds [34359738368 x i64], ptr @key_buff2, i64 0, i64 %107
  store i64 %104, ptr %109, align 8, !tbaa !16
  %110 = add nsw i64 %102, 1
  %111 = load i64, ptr %12, align 8, !tbaa !16
  %112 = icmp slt i64 %102, %111
  br i1 %112, label %101, label %113

113:                                              ; preds = %101, %93
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @__kmpc_barrier(ptr nonnull @4, i32 %25)
  %114 = add nsw i32 %20, -1
  %115 = icmp slt i32 %19, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %113
  %117 = add nsw i32 %19, 1
  %118 = sext i32 %117 to i64
  %119 = icmp slt i32 %117, %20
  %120 = load ptr, ptr @bucket_size, align 8
  br i1 %119, label %121, label %138

121:                                              ; preds = %116, %135
  %122 = phi i64 [ %136, %135 ], [ 0, %116 ]
  %123 = getelementptr inbounds [1024 x i64], ptr %44, i64 0, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !16
  br label %125

125:                                              ; preds = %121, %125
  %126 = phi i64 [ %124, %121 ], [ %132, %125 ]
  %127 = phi i64 [ %118, %121 ], [ %133, %125 ]
  %128 = getelementptr inbounds ptr, ptr %120, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !21
  %130 = getelementptr inbounds i64, ptr %129, i64 %122
  %131 = load i64, ptr %130, align 8, !tbaa !16
  %132 = add nsw i64 %126, %131
  store i64 %132, ptr %123, align 8, !tbaa !16
  %133 = add nsw i64 %127, 1
  %134 = icmp eq i64 %133, %50
  br i1 %134, label %135, label %125, !llvm.loop !37

135:                                              ; preds = %125
  %136 = add nuw nsw i64 %122, 1
  %137 = icmp eq i64 %136, 1024
  br i1 %137, label %138, label %121, !llvm.loop !38

138:                                              ; preds = %135, %116, %113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #6
  store i64 0, ptr %15, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #6
  store i64 1023, ptr %16, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #6
  store i64 1, ptr %17, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #6
  store i32 0, ptr %18, align 4, !tbaa !7
  call void @__kmpc_dispatch_init_8(ptr nonnull @1, i32 %25, i32 1073741859, i64 0, i64 1023, i64 1, i64 1)
  %139 = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %25, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %210, label %144

141:                                              ; preds = %205, %144
  %142 = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %25, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %210, label %144

144:                                              ; preds = %138, %141
  %145 = load i64, ptr %15, align 8, !tbaa !16
  %146 = load i64, ptr %16, align 8, !tbaa !16, !llvm.access.group !39
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %141, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %4, align 8
  %150 = load ptr, ptr %5, align 8
  br label %151

151:                                              ; preds = %148, %205
  %152 = phi i64 [ 0, %148 ], [ %209, %205 ]
  %153 = phi i64 [ %145, %148 ], [ %206, %205 ]
  %154 = load i64, ptr %3, align 8, !tbaa !16, !llvm.access.group !39
  %155 = mul i64 %154, %153
  %156 = add i64 %155, %154
  %157 = icmp sgt i64 %154, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %151
  %159 = add i64 %145, %152
  %160 = add i64 %145, %152
  %161 = shl i64 %160, 3
  %162 = mul i64 %154, %161
  %163 = getelementptr i8, ptr %149, i64 %162
  %164 = add i64 %155, 1
  %165 = call i64 @llvm.smax.i64(i64 %156, i64 %164)
  %166 = mul i64 %159, %154
  %167 = sub i64 %165, %166
  %168 = shl nuw i64 %167, 3
  call void @llvm.memset.p0.i64(ptr align 8 %163, i8 0, i64 %168, i1 false), !tbaa !16
  br label %169

169:                                              ; preds = %158, %151
  %170 = icmp sgt i64 %153, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %169
  %172 = add nsw i64 %153, -1
  %173 = getelementptr inbounds [1024 x i64], ptr %44, i64 0, i64 %172
  %174 = load i64, ptr %173, align 8, !tbaa !16, !llvm.access.group !39
  br label %175

175:                                              ; preds = %169, %171
  %176 = phi i64 [ %174, %171 ], [ 0, %169 ]
  %177 = getelementptr inbounds [1024 x i64], ptr %44, i64 0, i64 %153
  %178 = load i64, ptr %177, align 8, !tbaa !16, !llvm.access.group !39
  %179 = icmp slt i64 %176, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %175, %180
  %181 = phi i64 [ %187, %180 ], [ %176, %175 ]
  %182 = getelementptr inbounds i64, ptr %150, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !16, !llvm.access.group !39
  %184 = getelementptr inbounds i64, ptr %149, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !16, !llvm.access.group !39
  %186 = add nsw i64 %185, 1
  store i64 %186, ptr %184, align 8, !tbaa !16, !llvm.access.group !39
  %187 = add nsw i64 %181, 1
  %188 = load i64, ptr %177, align 8, !tbaa !16, !llvm.access.group !39
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %180, label %190, !llvm.loop !40

190:                                              ; preds = %180, %175
  %191 = getelementptr inbounds i64, ptr %149, i64 %155
  %192 = load i64, ptr %191, align 8, !tbaa !16, !llvm.access.group !39
  %193 = add nsw i64 %192, %176
  store i64 %193, ptr %191, align 8, !tbaa !16, !llvm.access.group !39
  %194 = icmp sgt i64 %154, 1
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = add nsw i64 %155, 1
  br label %197

197:                                              ; preds = %195, %197
  %198 = phi i64 [ %202, %197 ], [ %193, %195 ]
  %199 = phi i64 [ %203, %197 ], [ %196, %195 ]
  %200 = getelementptr inbounds i64, ptr %149, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !16, !llvm.access.group !39
  %202 = add nsw i64 %201, %198
  store i64 %202, ptr %200, align 8, !tbaa !16, !llvm.access.group !39
  %203 = add nsw i64 %199, 1
  %204 = icmp slt i64 %203, %156
  br i1 %204, label %197, label %205, !llvm.loop !41

205:                                              ; preds = %197, %190
  %206 = add nsw i64 %153, 1
  %207 = load i64, ptr %16, align 8, !tbaa !16, !llvm.access.group !39
  %208 = icmp slt i64 %153, %207
  %209 = add i64 %152, 1
  br i1 %208, label %151, label %141, !llvm.loop !42

210:                                              ; preds = %141, %138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #6
  call void @__kmpc_barrier(ptr nonnull @4, i32 %25)
  ret void
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @test_index_array, ptr noundef nonnull align 8 dereferenceable(40) @E_test_index_array, i64 40, i1 false), !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @test_rank_array, ptr noundef nonnull align 8 dereferenceable(40) @E_test_rank_array, i64 40, i1 false), !tbaa !16
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef 34359738368, i32 noundef 69)
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @test_index_array, ptr noundef nonnull align 8 dereferenceable(40) @E_test_index_array, i64 40, i1 false), !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @test_rank_array, ptr noundef nonnull align 8 dereferenceable(40) @E_test_rank_array, i64 40, i1 false), !tbaa !16
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef 34359738368, i32 noundef 69)
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
  br i1 %10, label %46, label %38

38:                                               ; preds = %25
  call void @timer_start(i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i64 0, ptr %4, align 8, !tbaa !16
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %4)
  %39 = load i64, ptr %4, align 8, !tbaa !16
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %39)
  br label %55

43:                                               ; preds = %38
  %44 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @passed_verification, align 4, !tbaa !7
  br label %55

46:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i64 0, ptr %3, align 8, !tbaa !16
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %3)
  %47 = load i64, ptr %3, align 8, !tbaa !16
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %47)
  br label %54

51:                                               ; preds = %46
  %52 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr @passed_verification, align 4, !tbaa !7
  br label %54

54:                                               ; preds = %51, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %56

55:                                               ; preds = %41, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @timer_stop(i32 noundef 2) #6
  call void @timer_stop(i32 noundef 3) #6
  br label %56

56:                                               ; preds = %54, %55
  %57 = call i32 @omp_get_max_threads()
  %58 = sext i32 %57 to i64
  %59 = icmp sgt i32 %57, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56, %60
  %61 = phi i64 [ %65, %60 ], [ 0, %56 ]
  %62 = load ptr, ptr @bucket_size, align 8, !tbaa !21
  %63 = getelementptr inbounds ptr, ptr %62, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !21
  call void @free(ptr noundef %64) #6
  %65 = add nuw nsw i64 %61, 1
  %66 = icmp eq i64 %65, %58
  br i1 %66, label %67, label %60, !llvm.loop !24

67:                                               ; preds = %60, %56
  %68 = load ptr, ptr @bucket_size, align 8, !tbaa !21
  call void @free(ptr noundef %68) #6
  %69 = load i32, ptr @passed_verification, align 4, !tbaa !7
  %70 = icmp eq i32 %69, 51
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, ptr @passed_verification, align 4, !tbaa !7
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ 0, %71 ], [ 51, %67 ]
  %74 = fdiv double 0x4114F8B588E368F0, %37
  call void @c_print_results(ptr noundef nonnull @.str.11, i8 noundef 69, i32 noundef 134217728, i32 noundef 256, i32 noundef 0, i32 noundef 10, double noundef %37, double noundef %74, ptr noundef nonnull @.str.12, i32 noundef %73, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17) #6
  br i1 %10, label %93, label %75

75:                                               ; preds = %72
  %76 = call double @timer_read(i32 noundef 3) #6
  %77 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %76)
  %79 = fcmp oeq double %76, 0.000000e+00
  %80 = select i1 %79, double 1.000000e+00, double %76
  %81 = call double @timer_read(i32 noundef 1) #6
  %82 = fdiv double %81, %80
  %83 = fmul double %82, 1.000000e+02
  %84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, double noundef %81, double noundef %83)
  %85 = call double @timer_read(i32 noundef 0) #6
  %86 = fdiv double %85, %80
  %87 = fmul double %86, 1.000000e+02
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %85, double noundef %87)
  %89 = call double @timer_read(i32 noundef 2) #6
  %90 = fdiv double %89, %80
  %91 = fmul double %90, 1.000000e+02
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, double noundef %89, double noundef %91)
  br label %93

93:                                               ; preds = %75, %72
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
  %1 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @bucket_ptrs)
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

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
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = distinct !{!18, !14}
!19 = !{!20}
!20 = !{i64 2, i64 -1, i64 -1, i1 true}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !9, i64 0}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.parallel_accesses", !25}
!29 = distinct !{!29, !30, !31}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = distinct !{!32, !31, !30}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.parallel_accesses", !39}
