; ModuleID = 'is.c'
source_filename = "is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZTW11bucket_ptrs = comdat any

@bucket_ptrs = dso_local thread_local global [1024 x i32] zeroinitializer, align 16
@KS = internal thread_local global i32 0, align 4
@R23 = internal thread_local global double 0.000000e+00, align 8
@R46 = internal thread_local global double 0.000000e+00, align 8
@T23 = internal thread_local global double 0.000000e+00, align 8
@T46 = internal thread_local global double 0.000000e+00, align 8
@key_buff_ptr_global = dso_local local_unnamed_addr global ptr null, align 8
@passed_verification = dso_local local_unnamed_addr global i32 0, align 4
@key_array = dso_local local_unnamed_addr global [33554432 x i32] zeroinitializer, align 16
@key_buff1 = dso_local global [2097152 x i32] zeroinitializer, align 16
@key_buff2 = dso_local global [33554432 x i32] zeroinitializer, align 16
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
@.str.14 = private unnamed_addr constant [12 x i8] c"03 Dec 2024\00", align 1
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
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  %6 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R23)
  %7 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @R46)
  br i1 %5, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  %10 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T46)
  br label %119

11:                                               ; preds = %2
  store double 1.000000e+00, ptr %6, align 8, !tbaa !10
  store double 1.000000e+00, ptr %7, align 8, !tbaa !10
  %12 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T23)
  store double 1.000000e+00, ptr %12, align 8, !tbaa !10
  %13 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @T46)
  store double 1.000000e+00, ptr %13, align 8, !tbaa !10
  %14 = load double, ptr %6, align 8, !tbaa !10
  %15 = fmul double %14, 5.000000e-01
  store double %15, ptr %6, align 8, !tbaa !10
  %16 = load double, ptr %12, align 8, !tbaa !10
  %17 = fmul double %16, 2.000000e+00
  store double %17, ptr %12, align 8, !tbaa !10
  %18 = load double, ptr %6, align 8, !tbaa !10
  %19 = fmul double %18, 5.000000e-01
  store double %19, ptr %6, align 8, !tbaa !10
  %20 = load double, ptr %12, align 8, !tbaa !10
  %21 = fmul double %20, 2.000000e+00
  store double %21, ptr %12, align 8, !tbaa !10
  %22 = load double, ptr %6, align 8, !tbaa !10
  %23 = fmul double %22, 5.000000e-01
  store double %23, ptr %6, align 8, !tbaa !10
  %24 = load double, ptr %12, align 8, !tbaa !10
  %25 = fmul double %24, 2.000000e+00
  store double %25, ptr %12, align 8, !tbaa !10
  %26 = load double, ptr %6, align 8, !tbaa !10
  %27 = fmul double %26, 5.000000e-01
  store double %27, ptr %6, align 8, !tbaa !10
  %28 = load double, ptr %12, align 8, !tbaa !10
  %29 = fmul double %28, 2.000000e+00
  store double %29, ptr %12, align 8, !tbaa !10
  %30 = load double, ptr %6, align 8, !tbaa !10
  %31 = fmul double %30, 5.000000e-01
  store double %31, ptr %6, align 8, !tbaa !10
  %32 = load double, ptr %12, align 8, !tbaa !10
  %33 = fmul double %32, 2.000000e+00
  store double %33, ptr %12, align 8, !tbaa !10
  %34 = load double, ptr %6, align 8, !tbaa !10
  %35 = fmul double %34, 5.000000e-01
  store double %35, ptr %6, align 8, !tbaa !10
  %36 = load double, ptr %12, align 8, !tbaa !10
  %37 = fmul double %36, 2.000000e+00
  store double %37, ptr %12, align 8, !tbaa !10
  %38 = load double, ptr %6, align 8, !tbaa !10
  %39 = fmul double %38, 5.000000e-01
  store double %39, ptr %6, align 8, !tbaa !10
  %40 = load double, ptr %12, align 8, !tbaa !10
  %41 = fmul double %40, 2.000000e+00
  store double %41, ptr %12, align 8, !tbaa !10
  %42 = load double, ptr %6, align 8, !tbaa !10
  %43 = fmul double %42, 5.000000e-01
  store double %43, ptr %6, align 8, !tbaa !10
  %44 = load double, ptr %12, align 8, !tbaa !10
  %45 = fmul double %44, 2.000000e+00
  store double %45, ptr %12, align 8, !tbaa !10
  %46 = load double, ptr %6, align 8, !tbaa !10
  %47 = fmul double %46, 5.000000e-01
  store double %47, ptr %6, align 8, !tbaa !10
  %48 = load double, ptr %12, align 8, !tbaa !10
  %49 = fmul double %48, 2.000000e+00
  store double %49, ptr %12, align 8, !tbaa !10
  %50 = load double, ptr %6, align 8, !tbaa !10
  %51 = fmul double %50, 5.000000e-01
  store double %51, ptr %6, align 8, !tbaa !10
  %52 = load double, ptr %12, align 8, !tbaa !10
  %53 = fmul double %52, 2.000000e+00
  store double %53, ptr %12, align 8, !tbaa !10
  %54 = load double, ptr %6, align 8, !tbaa !10
  %55 = fmul double %54, 5.000000e-01
  store double %55, ptr %6, align 8, !tbaa !10
  %56 = load double, ptr %12, align 8, !tbaa !10
  %57 = fmul double %56, 2.000000e+00
  store double %57, ptr %12, align 8, !tbaa !10
  %58 = load double, ptr %6, align 8, !tbaa !10
  %59 = fmul double %58, 5.000000e-01
  store double %59, ptr %6, align 8, !tbaa !10
  %60 = load double, ptr %12, align 8, !tbaa !10
  %61 = fmul double %60, 2.000000e+00
  store double %61, ptr %12, align 8, !tbaa !10
  %62 = load double, ptr %6, align 8, !tbaa !10
  %63 = fmul double %62, 5.000000e-01
  store double %63, ptr %6, align 8, !tbaa !10
  %64 = load double, ptr %12, align 8, !tbaa !10
  %65 = fmul double %64, 2.000000e+00
  store double %65, ptr %12, align 8, !tbaa !10
  %66 = load double, ptr %6, align 8, !tbaa !10
  %67 = fmul double %66, 5.000000e-01
  store double %67, ptr %6, align 8, !tbaa !10
  %68 = load double, ptr %12, align 8, !tbaa !10
  %69 = fmul double %68, 2.000000e+00
  store double %69, ptr %12, align 8, !tbaa !10
  %70 = load double, ptr %6, align 8, !tbaa !10
  %71 = fmul double %70, 5.000000e-01
  store double %71, ptr %6, align 8, !tbaa !10
  %72 = load double, ptr %12, align 8, !tbaa !10
  %73 = fmul double %72, 2.000000e+00
  store double %73, ptr %12, align 8, !tbaa !10
  %74 = load double, ptr %6, align 8, !tbaa !10
  %75 = fmul double %74, 5.000000e-01
  store double %75, ptr %6, align 8, !tbaa !10
  %76 = load double, ptr %12, align 8, !tbaa !10
  %77 = fmul double %76, 2.000000e+00
  store double %77, ptr %12, align 8, !tbaa !10
  %78 = load double, ptr %6, align 8, !tbaa !10
  %79 = fmul double %78, 5.000000e-01
  store double %79, ptr %6, align 8, !tbaa !10
  %80 = load double, ptr %12, align 8, !tbaa !10
  %81 = fmul double %80, 2.000000e+00
  store double %81, ptr %12, align 8, !tbaa !10
  %82 = load double, ptr %6, align 8, !tbaa !10
  %83 = fmul double %82, 5.000000e-01
  store double %83, ptr %6, align 8, !tbaa !10
  %84 = load double, ptr %12, align 8, !tbaa !10
  %85 = fmul double %84, 2.000000e+00
  store double %85, ptr %12, align 8, !tbaa !10
  %86 = load double, ptr %6, align 8, !tbaa !10
  %87 = fmul double %86, 5.000000e-01
  store double %87, ptr %6, align 8, !tbaa !10
  %88 = load double, ptr %12, align 8, !tbaa !10
  %89 = fmul double %88, 2.000000e+00
  store double %89, ptr %12, align 8, !tbaa !10
  %90 = load double, ptr %6, align 8, !tbaa !10
  %91 = fmul double %90, 5.000000e-01
  store double %91, ptr %6, align 8, !tbaa !10
  %92 = load double, ptr %12, align 8, !tbaa !10
  %93 = fmul double %92, 2.000000e+00
  store double %93, ptr %12, align 8, !tbaa !10
  %94 = load double, ptr %6, align 8, !tbaa !10
  %95 = fmul double %94, 5.000000e-01
  store double %95, ptr %6, align 8, !tbaa !10
  %96 = load double, ptr %12, align 8, !tbaa !10
  %97 = fmul double %96, 2.000000e+00
  store double %97, ptr %12, align 8, !tbaa !10
  %98 = load double, ptr %6, align 8, !tbaa !10
  %99 = fmul double %98, 5.000000e-01
  store double %99, ptr %6, align 8, !tbaa !10
  %100 = load double, ptr %12, align 8, !tbaa !10
  %101 = fmul double %100, 2.000000e+00
  store double %101, ptr %12, align 8, !tbaa !10
  %102 = load double, ptr %6, align 8, !tbaa !10
  %103 = fmul double %102, 5.000000e-01
  store double %103, ptr %6, align 8, !tbaa !10
  %104 = load double, ptr %12, align 8, !tbaa !10
  %105 = fmul double %104, 2.000000e+00
  store double %105, ptr %12, align 8, !tbaa !10
  br label %106

106:                                              ; preds = %106, %11
  %107 = phi i32 [ 1, %11 ], [ %116, %106 ]
  %108 = load double, ptr %7, align 8, !tbaa !10
  %109 = fmul double %108, 5.000000e-01
  store double %109, ptr %7, align 8, !tbaa !10
  %110 = load double, ptr %13, align 8, !tbaa !10
  %111 = fmul double %110, 2.000000e+00
  store double %111, ptr %13, align 8, !tbaa !10
  %112 = load double, ptr %7, align 8, !tbaa !10
  %113 = fmul double %112, 5.000000e-01
  store double %113, ptr %7, align 8, !tbaa !10
  %114 = load double, ptr %13, align 8, !tbaa !10
  %115 = fmul double %114, 2.000000e+00
  store double %115, ptr %13, align 8, !tbaa !10
  %116 = add nuw nsw i32 %107, 2
  %117 = icmp eq i32 %116, 47
  br i1 %117, label %118, label %106, !llvm.loop !12

118:                                              ; preds = %106
  store i32 1, ptr %3, align 4, !tbaa !6
  br label %119

119:                                              ; preds = %8, %118
  %120 = phi ptr [ %10, %8 ], [ %13, %118 ]
  %121 = phi ptr [ %9, %8 ], [ %12, %118 ]
  %122 = load double, ptr %6, align 8, !tbaa !10
  %123 = load double, ptr %1, align 8, !tbaa !10
  %124 = load double, ptr %121, align 8, !tbaa !10
  %125 = fneg double %124
  %126 = load double, ptr %0, align 8, !tbaa !10
  %127 = insertelement <2 x double> poison, double %122, i64 0
  %128 = shufflevector <2 x double> %127, <2 x double> poison, <2 x i32> zeroinitializer
  %129 = insertelement <2 x double> poison, double %123, i64 0
  %130 = insertelement <2 x double> %129, double %126, i64 1
  %131 = fmul <2 x double> %128, %130
  %132 = fptosi <2 x double> %131 to <2 x i32>
  %133 = sitofp <2 x i32> %132 to <2 x double>
  %134 = insertelement <2 x double> poison, double %125, i64 0
  %135 = shufflevector <2 x double> %134, <2 x double> poison, <2 x i32> zeroinitializer
  %136 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %135, <2 x double> %133, <2 x double> %130)
  %137 = extractelement <2 x double> %136, i64 0
  %138 = shufflevector <2 x double> %133, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %139 = fmul <2 x double> %136, %138
  %140 = extractelement <2 x double> %139, i64 0
  %141 = extractelement <2 x double> %136, i64 1
  %142 = extractelement <2 x double> %133, i64 0
  %143 = tail call double @llvm.fmuladd.f64(double %142, double %141, double %140)
  %144 = fmul double %122, %143
  %145 = fptosi double %144 to i32
  %146 = sitofp i32 %145 to double
  %147 = tail call double @llvm.fmuladd.f64(double %125, double %146, double %143)
  %148 = fmul double %137, %141
  %149 = tail call double @llvm.fmuladd.f64(double %124, double %147, double %148)
  %150 = load double, ptr %7, align 8, !tbaa !10
  %151 = fmul double %150, %149
  %152 = fptosi double %151 to i32
  %153 = sitofp i32 %152 to double
  %154 = load double, ptr %120, align 8, !tbaa !10
  %155 = fneg double %154
  %156 = tail call double @llvm.fmuladd.f64(double %155, double %153, double %149)
  store double %156, ptr %0, align 8, !tbaa !10
  %157 = load double, ptr %7, align 8, !tbaa !10
  %158 = fmul double %157, %156
  ret double %158
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
  store double %3, ptr %6, align 8, !tbaa !10
  store double %4, ptr %7, align 8, !tbaa !10
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
  br i1 %31, label %19, label %32, !llvm.loop !14

32:                                               ; preds = %29, %9
  %33 = call double @randlc(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %34 = load double, ptr %6, align 8, !tbaa !10
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
  store double %0, ptr %3, align 8, !tbaa !10
  store double %1, ptr %4, align 8, !tbaa !10
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
  %9 = load double, ptr %2, align 8, !tbaa !10
  store double %9, ptr %8, align 8, !tbaa !10
  %10 = tail call i32 @omp_get_thread_num()
  %11 = tail call i32 @omp_get_num_threads()
  %12 = add nsw i32 %11, 33554431
  %13 = sdiv i32 %12, %11
  %14 = mul i32 %13, %10
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 33554432)
  %17 = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @KS)
  store i32 0, ptr %17, align 4, !tbaa !6
  %18 = load double, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %4
  %21 = sext i32 %11 to i64
  %22 = add nsw i64 %21, 33554431
  %23 = sdiv i64 %22, %21
  %24 = sext i32 %10 to i64
  %25 = shl nsw i64 %24, 2
  %26 = mul i64 %23, %25
  store double %18, ptr %5, align 8, !tbaa !10
  store double %9, ptr %6, align 8, !tbaa !10
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
  br i1 %40, label %28, label %41, !llvm.loop !14

41:                                               ; preds = %38, %20
  %42 = call double @randlc(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %43 = load double, ptr %5, align 8, !tbaa !10
  br label %44

44:                                               ; preds = %4, %41
  %45 = phi double [ %43, %41 ], [ %18, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  store double %45, ptr %7, align 8, !tbaa !10
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
  %58 = fmul double %57, 5.242880e+05
  %59 = fptosi double %58 to i32
  %60 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %50
  store i32 %59, ptr %60, align 4, !tbaa !6
  %61 = add nsw i64 %50, 1
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %16, %62
  br i1 %63, label %64, label %49, !llvm.loop !15

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
declare !callback !16 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @alloc_mem(i64 noundef %0) local_unnamed_addr #3 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @perror(ptr noundef nonnull @.str) #21
  tail call void @exit(i32 noundef 1) #22
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
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void @perror(ptr noundef nonnull @.str) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

7:                                                ; preds = %0
  store ptr %4, ptr @bucket_size, align 8, !tbaa !18
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %9, %16
  %12 = phi i64 [ 0, %9 ], [ %19, %16 ]
  %13 = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @perror(ptr noundef nonnull @.str) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

16:                                               ; preds = %11
  %17 = load ptr, ptr @bucket_size, align 8, !tbaa !18
  %18 = getelementptr inbounds ptr, ptr %17, i64 %12
  store ptr %13, ptr %18, align 8, !tbaa !18
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %21, label %11, !llvm.loop !20

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
  store i32 0, ptr %3, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 33554431, ptr %4, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 1, ptr %5, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !tbaa !6
  %7 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %7, i32 34, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5, i32 1, i32 1)
  %8 = load i32, ptr %4, align 4
  %9 = call i32 @llvm.smin.i32(i32 %8, i32 33554431)
  store i32 %9, ptr %4, align 4, !tbaa !6
  %10 = load i32, ptr %3, align 4, !tbaa !6
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %15, i8 0, i64 %19, i1 false), !tbaa !6
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
  %7 = load ptr, ptr @bucket_size, align 8, !tbaa !18
  %8 = getelementptr inbounds ptr, ptr %7, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  tail call void @free(ptr noundef %9) #6
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, %4
  br i1 %11, label %12, label %5, !llvm.loop !21

12:                                               ; preds = %5, %0
  %13 = load ptr, ptr @bucket_size, align 8, !tbaa !18
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
  store i32 0, ptr %1, align 4, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %1)
  %2 = load i32, ptr %1, align 4, !tbaa !6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = sext i32 %2 to i64
  %6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %5)
  br label %10

7:                                                ; preds = %0
  %8 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @passed_verification, align 4, !tbaa !6
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
  store i32 0, ptr %3, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 1023, ptr %4, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 1, ptr %5, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !tbaa !6
  %7 = load i32, ptr %0, align 4, !tbaa !6
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %7, i32 1073741859, i32 0, i32 1023, i32 1, i32 1)
  %8 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %7, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %2
  %11 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  br label %15

12:                                               ; preds = %54, %15
  %13 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %7, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %10, %12
  %16 = load i32, ptr %3, align 4, !tbaa !6
  %17 = load i32, ptr %4, align 4, !tbaa !6, !llvm.access.group !22
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
  %29 = load i32, ptr %28, align 4, !tbaa !6, !llvm.access.group !22
  br label %30

30:                                               ; preds = %22, %26
  %31 = phi i32 [ %29, %26 ], [ 0, %22 ]
  %32 = getelementptr inbounds [1024 x i32], ptr %11, i64 0, i64 %24
  %33 = load i32, ptr %32, align 4, !tbaa !6, !llvm.access.group !22
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = sext i32 %31 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ %36, %35 ], [ %48, %37 ]
  %39 = getelementptr inbounds [33554432 x i32], ptr @key_buff2, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !6, !llvm.access.group !22
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %20, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !6, !llvm.access.group !22
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %42, align 4, !tbaa !6, !llvm.access.group !22
  %45 = load i32, ptr %39, align 4, !tbaa !6, !llvm.access.group !22
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %46
  store i32 %45, ptr %47, align 4, !tbaa !6, !llvm.access.group !22
  %48 = add nsw i64 %38, 1
  %49 = load i32, ptr %32, align 4, !tbaa !6, !llvm.access.group !22
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %37, label %52, !llvm.loop !23

52:                                               ; preds = %37
  %53 = load i32, ptr %4, align 4, !tbaa !6, !llvm.access.group !22
  br label %54

54:                                               ; preds = %52, %30
  %55 = phi i32 [ %53, %52 ], [ %23, %30 ]
  %56 = add nsw i64 %24, 1
  %57 = sext i32 %55 to i64
  %58 = icmp slt i64 %24, %57
  br i1 %58, label %22, label %12, !llvm.loop !24

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
  store i32 0, ptr %4, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 33554430, ptr %5, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 1, ptr %6, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  %10 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %10, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %11 = load i32, ptr %5, align 4
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 33554430)
  store i32 %12, ptr %5, align 4, !tbaa !6
  %13 = load i32, ptr %4, align 4, !tbaa !6
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %71, label %15

15:                                               ; preds = %3
  %16 = sext i32 %13 to i64
  %17 = add nsw i32 %12, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !6
  %21 = call i32 @llvm.smin.i32(i32 %11, i32 33554430)
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
  %37 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %36
  %38 = getelementptr inbounds i8, ptr %37, i64 16
  %39 = load <4 x i32>, ptr %37, align 4, !tbaa !6
  %40 = load <4 x i32>, ptr %38, align 4, !tbaa !6
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
  br i1 %50, label %51, label %30, !llvm.loop !26

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
  %65 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !6
  %67 = icmp sgt i32 %61, %66
  %68 = zext i1 %67 to i32
  %69 = add nuw nsw i32 %63, %68
  %70 = icmp eq i64 %64, %18
  br i1 %70, label %71, label %60, !llvm.loop !29

71:                                               ; preds = %60, %51, %3
  %72 = phi i32 [ 0, %3 ], [ %53, %51 ], [ %69, %60 ]
  store i32 %72, ptr %8, align 4, !tbaa !6
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %10)
  store ptr %8, ptr %9, align 8
  %73 = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %10, i32 1, i64 8, ptr nonnull %9, ptr nonnull @full_verify.omp_outlined.1.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %73, label %81 [
    i32 1, label %74
    i32 2, label %78
  ]

74:                                               ; preds = %71
  %75 = load i32, ptr %2, align 4, !tbaa !6
  %76 = load i32, ptr %8, align 4, !tbaa !6
  %77 = add nsw i32 %76, %75
  store i32 %77, ptr %2, align 4, !tbaa !6
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %10, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %81

78:                                               ; preds = %71
  %79 = load i32, ptr %8, align 4, !tbaa !6
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
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = load i32, ptr %3, align 4, !tbaa !6
  %7 = add nsw i32 %6, %5
  store i32 %7, ptr %4, align 4, !tbaa !6
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
  store i32 11, ptr %4, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 2048, ptr %5, align 4, !tbaa !6
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %6
  store i32 %0, ptr %7, align 4, !tbaa !6
  %8 = sub nsw i32 2097152, %0
  %9 = add nsw i32 %0, 10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %10
  store i32 %8, ptr %11, align 4, !tbaa !6
  %12 = load i32, ptr @test_index_array, align 16, !tbaa !6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !6
  store i32 %15, ptr @partial_verify_vals, align 16, !tbaa !6
  %16 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_index_array, i64 0, i64 1), align 4, !tbaa !6
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !6
  store i32 %19, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 1), align 4, !tbaa !6
  %20 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_index_array, i64 0, i64 2), align 8, !tbaa !6
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !6
  store i32 %23, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 2), align 8, !tbaa !6
  %24 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_index_array, i64 0, i64 3), align 4, !tbaa !6
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !6
  store i32 %27, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 3), align 4, !tbaa !6
  %28 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_index_array, i64 0, i64 4), align 16, !tbaa !6
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !6
  store i32 %31, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 4), align 16, !tbaa !6
  store ptr @key_buff2, ptr %3, align 8, !tbaa !18
  store ptr @key_buff1, ptr %2, align 8, !tbaa !18
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 4, ptr nonnull @rank.omp_outlined, ptr nonnull %4, ptr nonnull %5, ptr nonnull %2, ptr nonnull %3)
  %32 = load i32, ptr @partial_verify_vals, align 16, !tbaa !6
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 33554431
  br i1 %34, label %35, label %49

35:                                               ; preds = %1
  %36 = load ptr, ptr %2, align 8, !tbaa !18
  %37 = zext nneg i32 %32 to i64
  %38 = getelementptr i32, ptr %36, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -4
  %40 = load i32, ptr %39, align 4, !tbaa !6
  %41 = load i32, ptr @test_rank_array, align 16, !tbaa !6
  %42 = sub nsw i32 %41, %0
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @passed_verification, align 4, !tbaa !6
  br label %49

47:                                               ; preds = %35
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 0)
  br label %49

49:                                               ; preds = %44, %47, %1
  %50 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 1), align 4, !tbaa !6
  %51 = add i32 %50, -1
  %52 = icmp ult i32 %51, 33554431
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load ptr, ptr %2, align 8, !tbaa !18
  %55 = zext nneg i32 %50 to i64
  %56 = getelementptr i32, ptr %54, i64 %55
  %57 = getelementptr i8, ptr %56, i64 -4
  %58 = load i32, ptr %57, align 4, !tbaa !6
  %59 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_rank_array, i64 0, i64 1), align 4, !tbaa !6
  %60 = add nsw i32 %59, %0
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 1)
  br label %67

64:                                               ; preds = %53
  %65 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr @passed_verification, align 4, !tbaa !6
  br label %67

67:                                               ; preds = %64, %62, %49
  %68 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 2), align 8, !tbaa !6
  %69 = add i32 %68, -1
  %70 = icmp ult i32 %69, 33554431
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load ptr, ptr %2, align 8, !tbaa !18
  %73 = zext nneg i32 %68 to i64
  %74 = getelementptr i32, ptr %72, i64 %73
  %75 = getelementptr i8, ptr %74, i64 -4
  %76 = load i32, ptr %75, align 4, !tbaa !6
  %77 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_rank_array, i64 0, i64 2), align 8, !tbaa !6
  %78 = add nsw i32 %77, %0
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %71
  %81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 2)
  br label %85

82:                                               ; preds = %71
  %83 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr @passed_verification, align 4, !tbaa !6
  br label %85

85:                                               ; preds = %82, %80, %67
  %86 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 3), align 4, !tbaa !6
  %87 = add i32 %86, -1
  %88 = icmp ult i32 %87, 33554431
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load ptr, ptr %2, align 8, !tbaa !18
  %91 = zext nneg i32 %86 to i64
  %92 = getelementptr i32, ptr %90, i64 %91
  %93 = getelementptr i8, ptr %92, i64 -4
  %94 = load i32, ptr %93, align 4, !tbaa !6
  %95 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_rank_array, i64 0, i64 3), align 4, !tbaa !6
  %96 = sub nsw i32 %95, %0
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %89
  %99 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 3)
  br label %103

100:                                              ; preds = %89
  %101 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr @passed_verification, align 4, !tbaa !6
  br label %103

103:                                              ; preds = %100, %98, %85
  %104 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @partial_verify_vals, i64 0, i64 4), align 16, !tbaa !6
  %105 = add i32 %104, -1
  %106 = icmp ult i32 %105, 33554431
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load ptr, ptr %2, align 8, !tbaa !18
  %109 = zext nneg i32 %104 to i64
  %110 = getelementptr i32, ptr %108, i64 %109
  %111 = getelementptr i8, ptr %110, i64 -4
  %112 = load i32, ptr %111, align 4, !tbaa !6
  %113 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @test_rank_array, i64 0, i64 4), align 16, !tbaa !6
  %114 = add nsw i32 %113, %0
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %107
  %117 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 4)
  br label %121

118:                                              ; preds = %107
  %119 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @passed_verification, align 4, !tbaa !6
  br label %121

121:                                              ; preds = %118, %116, %103
  %122 = icmp eq i32 %0, 10
  br i1 %122, label %123, label %125

123:                                              ; preds = %121
  %124 = load ptr, ptr %2, align 8, !tbaa !18
  store ptr %124, ptr @key_buff_ptr_global, align 8, !tbaa !18
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
  %21 = load ptr, ptr @bucket_size, align 8, !tbaa !18
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %24, i8 0, i64 4096, i1 false), !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 33554431, ptr %8, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 1, ptr %9, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !tbaa !6
  %25 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %25, i32 34, ptr nonnull %10, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9, i32 1, i32 1)
  %26 = load i32, ptr %8, align 4
  %27 = call i32 @llvm.smin.i32(i32 %26, i32 33554431)
  store i32 %27, ptr %8, align 4, !tbaa !6
  %28 = load i32, ptr %7, align 4, !tbaa !6
  %29 = icmp sgt i32 %28, %27
  br i1 %29, label %45, label %30

30:                                               ; preds = %6
  %31 = sext i32 %28 to i64
  %32 = sext i32 %27 to i64
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %31, %30 ], [ %43, %33 ]
  %35 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !6
  %37 = load i32, ptr %2, align 4, !tbaa !6
  %38 = ashr i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %24, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !6
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !6
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
  %46 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  store i32 0, ptr %46, align 16, !tbaa !6
  %47 = icmp sgt i32 %19, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load ptr, ptr @bucket_size, align 8, !tbaa !18
  %50 = zext nneg i32 %19 to i64
  %51 = and i64 %50, 3
  %52 = icmp ult i32 %19, 4
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = and i64 %50, 2147483644
  br label %89

55:                                               ; preds = %89, %48
  %56 = phi i32 [ undef, %48 ], [ %111, %89 ]
  %57 = phi i64 [ 0, %48 ], [ %112, %89 ]
  %58 = phi i32 [ 0, %48 ], [ %111, %89 ]
  %59 = icmp eq i64 %51, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55, %60
  %61 = phi i64 [ %68, %60 ], [ %57, %55 ]
  %62 = phi i32 [ %67, %60 ], [ %58, %55 ]
  %63 = phi i64 [ %69, %60 ], [ 0, %55 ]
  %64 = getelementptr inbounds ptr, ptr %49, i64 %61
  %65 = load ptr, ptr %64, align 8, !tbaa !18
  %66 = load i32, ptr %65, align 4, !tbaa !6
  %67 = add nsw i32 %62, %66
  store i32 %67, ptr %46, align 16, !tbaa !6
  %68 = add nuw nsw i64 %61, 1
  %69 = add i64 %63, 1
  %70 = icmp eq i64 %69, %51
  br i1 %70, label %71, label %60, !llvm.loop !30

71:                                               ; preds = %55, %60, %45
  %72 = phi i32 [ 0, %45 ], [ %56, %55 ], [ %67, %60 ]
  %73 = icmp slt i32 %19, %20
  %74 = load ptr, ptr @bucket_size, align 8
  %75 = zext i32 %19 to i64
  %76 = sext i32 %20 to i64
  %77 = sub nsw i64 %76, %22
  %78 = and i64 %75, 3
  %79 = icmp ult i32 %19, 4
  %80 = and i64 %75, 2147483644
  %81 = icmp eq i64 %78, 0
  %82 = and i64 %77, 3
  %83 = icmp eq i64 %82, 0
  %84 = sub nsw i64 %22, %76
  %85 = icmp ugt i64 %84, -4
  %86 = getelementptr i8, ptr %74, i64 8
  %87 = getelementptr i8, ptr %74, i64 16
  %88 = getelementptr i8, ptr %74, i64 24
  br label %115

89:                                               ; preds = %89, %53
  %90 = phi i64 [ 0, %53 ], [ %112, %89 ]
  %91 = phi i32 [ 0, %53 ], [ %111, %89 ]
  %92 = phi i64 [ 0, %53 ], [ %113, %89 ]
  %93 = getelementptr inbounds ptr, ptr %49, i64 %90
  %94 = load ptr, ptr %93, align 8, !tbaa !18
  %95 = load i32, ptr %94, align 4, !tbaa !6
  %96 = add nsw i32 %91, %95
  store i32 %96, ptr %46, align 16, !tbaa !6
  %97 = or disjoint i64 %90, 1
  %98 = getelementptr inbounds ptr, ptr %49, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !18
  %100 = load i32, ptr %99, align 4, !tbaa !6
  %101 = add nsw i32 %96, %100
  store i32 %101, ptr %46, align 16, !tbaa !6
  %102 = or disjoint i64 %90, 2
  %103 = getelementptr inbounds ptr, ptr %49, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !18
  %105 = load i32, ptr %104, align 4, !tbaa !6
  %106 = add nsw i32 %101, %105
  store i32 %106, ptr %46, align 16, !tbaa !6
  %107 = or disjoint i64 %90, 3
  %108 = getelementptr inbounds ptr, ptr %49, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !18
  %110 = load i32, ptr %109, align 4, !tbaa !6
  %111 = add nsw i32 %106, %110
  store i32 %111, ptr %46, align 16, !tbaa !6
  %112 = add nuw nsw i64 %90, 4
  %113 = add i64 %92, 4
  %114 = icmp eq i64 %113, %54
  br i1 %114, label %55, label %89, !llvm.loop !32

115:                                              ; preds = %71, %215
  %116 = phi i32 [ %72, %71 ], [ %216, %215 ]
  %117 = phi i64 [ 1, %71 ], [ %217, %215 ]
  %118 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %117
  store i32 %116, ptr %118, align 4, !tbaa !6
  br i1 %47, label %119, label %136

119:                                              ; preds = %115
  br i1 %79, label %120, label %156

120:                                              ; preds = %156, %119
  %121 = phi i32 [ undef, %119 ], [ %182, %156 ]
  %122 = phi i64 [ 0, %119 ], [ %183, %156 ]
  %123 = phi i32 [ %116, %119 ], [ %182, %156 ]
  br i1 %81, label %136, label %124

124:                                              ; preds = %120, %124
  %125 = phi i64 [ %133, %124 ], [ %122, %120 ]
  %126 = phi i32 [ %132, %124 ], [ %123, %120 ]
  %127 = phi i64 [ %134, %124 ], [ 0, %120 ]
  %128 = getelementptr inbounds ptr, ptr %74, i64 %125
  %129 = load ptr, ptr %128, align 8, !tbaa !18
  %130 = getelementptr inbounds i32, ptr %129, i64 %117
  %131 = load i32, ptr %130, align 4, !tbaa !6
  %132 = add nsw i32 %126, %131
  store i32 %132, ptr %118, align 4, !tbaa !6
  %133 = add nuw nsw i64 %125, 1
  %134 = add i64 %127, 1
  %135 = icmp eq i64 %134, %78
  br i1 %135, label %136, label %124, !llvm.loop !33

136:                                              ; preds = %120, %124, %115
  %137 = phi i32 [ %116, %115 ], [ %121, %120 ], [ %132, %124 ]
  br i1 %73, label %138, label %215

138:                                              ; preds = %136
  br i1 %83, label %152, label %139

139:                                              ; preds = %138, %139
  %140 = phi i64 [ %149, %139 ], [ %22, %138 ]
  %141 = phi i32 [ %148, %139 ], [ %137, %138 ]
  %142 = phi i64 [ %150, %139 ], [ 0, %138 ]
  %143 = getelementptr inbounds ptr, ptr %74, i64 %140
  %144 = load ptr, ptr %143, align 8, !tbaa !18
  %145 = getelementptr i32, ptr %144, i64 %117
  %146 = getelementptr i8, ptr %145, i64 -4
  %147 = load i32, ptr %146, align 4, !tbaa !6
  %148 = add nsw i32 %141, %147
  store i32 %148, ptr %118, align 4, !tbaa !6
  %149 = add nsw i64 %140, 1
  %150 = add i64 %142, 1
  %151 = icmp eq i64 %150, %82
  br i1 %151, label %152, label %139, !llvm.loop !34

152:                                              ; preds = %139, %138
  %153 = phi i32 [ undef, %138 ], [ %148, %139 ]
  %154 = phi i64 [ %22, %138 ], [ %149, %139 ]
  %155 = phi i32 [ %137, %138 ], [ %148, %139 ]
  br i1 %85, label %215, label %186

156:                                              ; preds = %119, %156
  %157 = phi i64 [ %183, %156 ], [ 0, %119 ]
  %158 = phi i32 [ %182, %156 ], [ %116, %119 ]
  %159 = phi i64 [ %184, %156 ], [ 0, %119 ]
  %160 = getelementptr inbounds ptr, ptr %74, i64 %157
  %161 = load ptr, ptr %160, align 8, !tbaa !18
  %162 = getelementptr inbounds i32, ptr %161, i64 %117
  %163 = load i32, ptr %162, align 4, !tbaa !6
  %164 = add nsw i32 %158, %163
  store i32 %164, ptr %118, align 4, !tbaa !6
  %165 = or disjoint i64 %157, 1
  %166 = getelementptr inbounds ptr, ptr %74, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !18
  %168 = getelementptr inbounds i32, ptr %167, i64 %117
  %169 = load i32, ptr %168, align 4, !tbaa !6
  %170 = add nsw i32 %164, %169
  store i32 %170, ptr %118, align 4, !tbaa !6
  %171 = or disjoint i64 %157, 2
  %172 = getelementptr inbounds ptr, ptr %74, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !18
  %174 = getelementptr inbounds i32, ptr %173, i64 %117
  %175 = load i32, ptr %174, align 4, !tbaa !6
  %176 = add nsw i32 %170, %175
  store i32 %176, ptr %118, align 4, !tbaa !6
  %177 = or disjoint i64 %157, 3
  %178 = getelementptr inbounds ptr, ptr %74, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !18
  %180 = getelementptr inbounds i32, ptr %179, i64 %117
  %181 = load i32, ptr %180, align 4, !tbaa !6
  %182 = add nsw i32 %176, %181
  store i32 %182, ptr %118, align 4, !tbaa !6
  %183 = add nuw nsw i64 %157, 4
  %184 = add i64 %159, 4
  %185 = icmp eq i64 %184, %80
  br i1 %185, label %120, label %156, !llvm.loop !35

186:                                              ; preds = %152, %186
  %187 = phi i64 [ %213, %186 ], [ %154, %152 ]
  %188 = phi i32 [ %212, %186 ], [ %155, %152 ]
  %189 = getelementptr inbounds ptr, ptr %74, i64 %187
  %190 = load ptr, ptr %189, align 8, !tbaa !18
  %191 = getelementptr i32, ptr %190, i64 %117
  %192 = getelementptr i8, ptr %191, i64 -4
  %193 = load i32, ptr %192, align 4, !tbaa !6
  %194 = add nsw i32 %188, %193
  store i32 %194, ptr %118, align 4, !tbaa !6
  %195 = getelementptr ptr, ptr %86, i64 %187
  %196 = load ptr, ptr %195, align 8, !tbaa !18
  %197 = getelementptr i32, ptr %196, i64 %117
  %198 = getelementptr i8, ptr %197, i64 -4
  %199 = load i32, ptr %198, align 4, !tbaa !6
  %200 = add nsw i32 %194, %199
  store i32 %200, ptr %118, align 4, !tbaa !6
  %201 = getelementptr ptr, ptr %87, i64 %187
  %202 = load ptr, ptr %201, align 8, !tbaa !18
  %203 = getelementptr i32, ptr %202, i64 %117
  %204 = getelementptr i8, ptr %203, i64 -4
  %205 = load i32, ptr %204, align 4, !tbaa !6
  %206 = add nsw i32 %200, %205
  store i32 %206, ptr %118, align 4, !tbaa !6
  %207 = getelementptr ptr, ptr %88, i64 %187
  %208 = load ptr, ptr %207, align 8, !tbaa !18
  %209 = getelementptr i32, ptr %208, i64 %117
  %210 = getelementptr i8, ptr %209, i64 -4
  %211 = load i32, ptr %210, align 4, !tbaa !6
  %212 = add nsw i32 %206, %211
  store i32 %212, ptr %118, align 4, !tbaa !6
  %213 = add nsw i64 %187, 4
  %214 = icmp eq i64 %213, %76
  br i1 %214, label %215, label %186, !llvm.loop !36

215:                                              ; preds = %152, %186, %136
  %216 = phi i32 [ %137, %136 ], [ %153, %152 ], [ %212, %186 ]
  %217 = add nuw nsw i64 %117, 1
  %218 = icmp eq i64 %217, 1024
  br i1 %218, label %219, label %115, !llvm.loop !37

219:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 0, ptr %11, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 33554431, ptr %12, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store i32 1, ptr %13, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  store i32 0, ptr %14, align 4, !tbaa !6
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %25, i32 34, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i32 1, i32 1)
  %220 = load i32, ptr %12, align 4
  %221 = call i32 @llvm.smin.i32(i32 %220, i32 33554431)
  store i32 %221, ptr %12, align 4, !tbaa !6
  %222 = load i32, ptr %11, align 4, !tbaa !6
  %223 = icmp sgt i32 %222, %221
  br i1 %223, label %242, label %224

224:                                              ; preds = %219
  %225 = sext i32 %222 to i64
  br label %226

226:                                              ; preds = %224, %226
  %227 = phi i64 [ %225, %224 ], [ %238, %226 ]
  %228 = getelementptr inbounds [33554432 x i32], ptr @key_array, i64 0, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !6
  %230 = load i32, ptr %2, align 4, !tbaa !6
  %231 = ashr i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !6
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %233, align 4, !tbaa !6
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds [33554432 x i32], ptr @key_buff2, i64 0, i64 %236
  store i32 %229, ptr %237, align 4, !tbaa !6
  %238 = add nsw i64 %227, 1
  %239 = load i32, ptr %12, align 4, !tbaa !6
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %227, %240
  br i1 %241, label %226, label %242

242:                                              ; preds = %226, %219
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  call void @__kmpc_barrier(ptr nonnull @4, i32 %25)
  %243 = add nsw i32 %20, -1
  %244 = icmp slt i32 %19, %243
  br i1 %244, label %245, label %309

245:                                              ; preds = %242
  %246 = add nsw i32 %19, 1
  %247 = icmp slt i32 %246, %20
  %248 = load ptr, ptr @bucket_size, align 8
  br i1 %247, label %249, label %309

249:                                              ; preds = %245
  %250 = add nsw i64 %22, 1
  %251 = xor i32 %19, -1
  %252 = add i32 %20, %251
  %253 = add i32 %20, -2
  %254 = sub i32 %253, %19
  %255 = and i32 %252, 3
  %256 = icmp eq i32 %255, 0
  %257 = icmp ult i32 %254, 3
  %258 = getelementptr i8, ptr %248, i64 8
  %259 = getelementptr i8, ptr %248, i64 16
  %260 = getelementptr i8, ptr %248, i64 24
  br label %261

261:                                              ; preds = %249, %306
  %262 = phi i64 [ 0, %249 ], [ %307, %306 ]
  %263 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !6
  br i1 %256, label %277, label %265

265:                                              ; preds = %261, %265
  %266 = phi i64 [ %274, %265 ], [ %250, %261 ]
  %267 = phi i32 [ %273, %265 ], [ %264, %261 ]
  %268 = phi i32 [ %275, %265 ], [ 0, %261 ]
  %269 = getelementptr inbounds ptr, ptr %248, i64 %266
  %270 = load ptr, ptr %269, align 8, !tbaa !18
  %271 = getelementptr inbounds i32, ptr %270, i64 %262
  %272 = load i32, ptr %271, align 4, !tbaa !6
  %273 = add nsw i32 %267, %272
  store i32 %273, ptr %263, align 4, !tbaa !6
  %274 = add nsw i64 %266, 1
  %275 = add i32 %268, 1
  %276 = icmp eq i32 %275, %255
  br i1 %276, label %277, label %265, !llvm.loop !38

277:                                              ; preds = %265, %261
  %278 = phi i64 [ %250, %261 ], [ %274, %265 ]
  %279 = phi i32 [ %264, %261 ], [ %273, %265 ]
  br i1 %257, label %306, label %280

280:                                              ; preds = %277, %280
  %281 = phi i64 [ %303, %280 ], [ %278, %277 ]
  %282 = phi i32 [ %302, %280 ], [ %279, %277 ]
  %283 = getelementptr inbounds ptr, ptr %248, i64 %281
  %284 = load ptr, ptr %283, align 8, !tbaa !18
  %285 = getelementptr inbounds i32, ptr %284, i64 %262
  %286 = load i32, ptr %285, align 4, !tbaa !6
  %287 = add nsw i32 %282, %286
  store i32 %287, ptr %263, align 4, !tbaa !6
  %288 = getelementptr ptr, ptr %258, i64 %281
  %289 = load ptr, ptr %288, align 8, !tbaa !18
  %290 = getelementptr inbounds i32, ptr %289, i64 %262
  %291 = load i32, ptr %290, align 4, !tbaa !6
  %292 = add nsw i32 %287, %291
  store i32 %292, ptr %263, align 4, !tbaa !6
  %293 = getelementptr ptr, ptr %259, i64 %281
  %294 = load ptr, ptr %293, align 8, !tbaa !18
  %295 = getelementptr inbounds i32, ptr %294, i64 %262
  %296 = load i32, ptr %295, align 4, !tbaa !6
  %297 = add nsw i32 %292, %296
  store i32 %297, ptr %263, align 4, !tbaa !6
  %298 = getelementptr ptr, ptr %260, i64 %281
  %299 = load ptr, ptr %298, align 8, !tbaa !18
  %300 = getelementptr inbounds i32, ptr %299, i64 %262
  %301 = load i32, ptr %300, align 4, !tbaa !6
  %302 = add nsw i32 %297, %301
  store i32 %302, ptr %263, align 4, !tbaa !6
  %303 = add nsw i64 %281, 4
  %304 = trunc i64 %303 to i32
  %305 = icmp eq i32 %20, %304
  br i1 %305, label %306, label %280, !llvm.loop !39

306:                                              ; preds = %280, %277
  %307 = add nuw nsw i64 %262, 1
  %308 = icmp eq i64 %307, 1024
  br i1 %308, label %309, label %261, !llvm.loop !40

309:                                              ; preds = %306, %245, %242
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #6
  store i32 0, ptr %15, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #6
  store i32 1023, ptr %16, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #6
  store i32 1, ptr %17, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #6
  store i32 0, ptr %18, align 4, !tbaa !6
  call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %25, i32 1073741859, i32 0, i32 1023, i32 1, i32 1)
  %310 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %25, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17)
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %456, label %315

312:                                              ; preds = %450, %315
  %313 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %25, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17)
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %456, label %315

315:                                              ; preds = %309, %312
  %316 = load i32, ptr %15, align 4, !tbaa !6
  %317 = load i32, ptr %16, align 4, !tbaa !6, !llvm.access.group !41
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %312, label %319

319:                                              ; preds = %315
  %320 = load ptr, ptr %4, align 8
  %321 = load ptr, ptr %5, align 8
  %322 = sext i32 %316 to i64
  br label %323

323:                                              ; preds = %319, %450
  %324 = phi i64 [ %322, %319 ], [ %451, %450 ]
  %325 = phi i32 [ 0, %319 ], [ %455, %450 ]
  %326 = load i32, ptr %3, align 4, !tbaa !6, !llvm.access.group !41
  %327 = trunc i64 %324 to i32
  %328 = mul i32 %326, %327
  %329 = add i32 %328, %326
  %330 = icmp sgt i32 %326, 0
  br i1 %330, label %331, label %344

331:                                              ; preds = %323
  %332 = add i32 %316, %325
  %333 = sext i32 %328 to i64
  %334 = shl nsw i64 %333, 2
  %335 = getelementptr i8, ptr %320, i64 %334
  %336 = add i32 %328, 1
  %337 = call i32 @llvm.smax.i32(i32 %329, i32 %336)
  %338 = mul i32 %332, %326
  %339 = xor i32 %338, -1
  %340 = add i32 %337, %339
  %341 = zext i32 %340 to i64
  %342 = shl nuw nsw i64 %341, 2
  %343 = add nuw nsw i64 %342, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %335, i8 0, i64 %343, i1 false), !tbaa !6
  br label %344

344:                                              ; preds = %331, %323
  %345 = icmp sgt i64 %324, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %344
  %347 = add nsw i64 %324, -1
  %348 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !6, !llvm.access.group !41
  br label %350

350:                                              ; preds = %344, %346
  %351 = phi i32 [ %349, %346 ], [ 0, %344 ]
  %352 = getelementptr inbounds [1024 x i32], ptr %46, i64 0, i64 %324
  %353 = load i32, ptr %352, align 4, !tbaa !6, !llvm.access.group !41
  %354 = icmp slt i32 %351, %353
  br i1 %354, label %355, label %369

355:                                              ; preds = %350
  %356 = sext i32 %351 to i64
  br label %357

357:                                              ; preds = %355, %357
  %358 = phi i64 [ %356, %355 ], [ %365, %357 ]
  %359 = getelementptr inbounds i32, ptr %321, i64 %358
  %360 = load i32, ptr %359, align 4, !tbaa !6, !llvm.access.group !41
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, ptr %320, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !6, !llvm.access.group !41
  %364 = add nsw i32 %363, 1
  store i32 %364, ptr %362, align 4, !tbaa !6, !llvm.access.group !41
  %365 = add nsw i64 %358, 1
  %366 = load i32, ptr %352, align 4, !tbaa !6, !llvm.access.group !41
  %367 = sext i32 %366 to i64
  %368 = icmp slt i64 %365, %367
  br i1 %368, label %357, label %369, !llvm.loop !42

369:                                              ; preds = %357, %350
  %370 = sext i32 %328 to i64
  %371 = getelementptr inbounds i32, ptr %320, i64 %370
  %372 = load i32, ptr %371, align 4, !tbaa !6, !llvm.access.group !41
  %373 = add nsw i32 %372, %351
  store i32 %373, ptr %371, align 4, !tbaa !6, !llvm.access.group !41
  %374 = icmp sgt i32 %326, 1
  br i1 %374, label %375, label %450

375:                                              ; preds = %369
  %376 = add i32 %328, 1
  %377 = sext i32 %376 to i64
  %378 = sext i32 %329 to i64
  %379 = add nsw i64 %377, 1
  %380 = call i64 @llvm.smax.i64(i64 %379, i64 %378)
  %381 = sub i64 %380, %377
  %382 = icmp ult i64 %381, 20
  br i1 %382, label %435, label %383

383:                                              ; preds = %375
  %384 = add nsw i64 %377, 1
  %385 = call i64 @llvm.smax.i64(i64 %384, i64 %378)
  %386 = xor i64 %377, -1
  %387 = add i64 %385, %386
  %388 = trunc i64 %387 to i32
  %389 = add i32 %328, %388
  %390 = icmp slt i32 %389, %328
  %391 = icmp ugt i64 %387, 4294967295
  %392 = or i1 %390, %391
  br i1 %392, label %435, label %393

393:                                              ; preds = %383
  %394 = shl nsw i64 %377, 2
  %395 = getelementptr i8, ptr %320, i64 %394
  %396 = add nsw i64 %377, 1
  %397 = call i64 @llvm.smax.i64(i64 %396, i64 %378)
  %398 = shl nsw i64 %397, 2
  %399 = getelementptr i8, ptr %320, i64 %398
  %400 = sext i32 %328 to i64
  %401 = shl nsw i64 %400, 2
  %402 = getelementptr i8, ptr %320, i64 %401
  %403 = add i64 %397, %400
  %404 = sub i64 %403, %377
  %405 = shl i64 %404, 2
  %406 = getelementptr i8, ptr %320, i64 %405
  %407 = icmp ult ptr %395, %406
  %408 = icmp ult ptr %402, %399
  %409 = and i1 %407, %408
  br i1 %409, label %435, label %410

410:                                              ; preds = %393
  %411 = and i64 %381, -8
  %412 = add i64 %411, %377
  %413 = trunc i64 %411 to i32
  %414 = add i32 %328, %413
  %415 = getelementptr i32, ptr %320, i64 %377
  br label %416

416:                                              ; preds = %416, %410
  %417 = phi i64 [ 0, %410 ], [ %431, %416 ]
  %418 = trunc i64 %417 to i32
  %419 = add i32 %328, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, ptr %320, i64 %420
  %422 = getelementptr inbounds i8, ptr %421, i64 16
  %423 = load <4 x i32>, ptr %421, align 4, !tbaa !6, !alias.scope !43, !llvm.access.group !41
  %424 = load <4 x i32>, ptr %422, align 4, !tbaa !6, !alias.scope !43, !llvm.access.group !41
  %425 = getelementptr i32, ptr %415, i64 %417
  %426 = getelementptr inbounds i8, ptr %425, i64 16
  %427 = load <4 x i32>, ptr %425, align 4, !tbaa !6, !alias.scope !46, !noalias !43, !llvm.access.group !41
  %428 = load <4 x i32>, ptr %426, align 4, !tbaa !6, !alias.scope !46, !noalias !43, !llvm.access.group !41
  %429 = add nsw <4 x i32> %427, %423
  %430 = add nsw <4 x i32> %428, %424
  store <4 x i32> %429, ptr %425, align 4, !tbaa !6, !alias.scope !46, !noalias !43, !llvm.access.group !41
  store <4 x i32> %430, ptr %426, align 4, !tbaa !6, !alias.scope !46, !noalias !43, !llvm.access.group !41
  %431 = add nuw i64 %417, 8
  %432 = icmp eq i64 %431, %411
  br i1 %432, label %433, label %416, !llvm.loop !48

433:                                              ; preds = %416
  %434 = icmp eq i64 %381, %411
  br i1 %434, label %450, label %435

435:                                              ; preds = %393, %383, %375, %433
  %436 = phi i64 [ %377, %393 ], [ %377, %383 ], [ %377, %375 ], [ %412, %433 ]
  %437 = phi i32 [ %328, %393 ], [ %328, %383 ], [ %328, %375 ], [ %414, %433 ]
  br label %438

438:                                              ; preds = %435, %438
  %439 = phi i64 [ %447, %438 ], [ %436, %435 ]
  %440 = phi i32 [ %449, %438 ], [ %437, %435 ]
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, ptr %320, i64 %441
  %443 = load i32, ptr %442, align 4, !tbaa !6, !llvm.access.group !41
  %444 = getelementptr inbounds i32, ptr %320, i64 %439
  %445 = load i32, ptr %444, align 4, !tbaa !6, !llvm.access.group !41
  %446 = add nsw i32 %445, %443
  store i32 %446, ptr %444, align 4, !tbaa !6, !llvm.access.group !41
  %447 = add nsw i64 %439, 1
  %448 = icmp slt i64 %447, %378
  %449 = trunc nsw i64 %439 to i32
  br i1 %448, label %438, label %450, !llvm.loop !49

450:                                              ; preds = %438, %433, %369
  %451 = add nsw i64 %324, 1
  %452 = load i32, ptr %16, align 4, !tbaa !6, !llvm.access.group !41
  %453 = sext i32 %452 to i64
  %454 = icmp slt i64 %324, %453
  %455 = add i32 %325, 1
  br i1 %454, label %323, label %312, !llvm.loop !50

456:                                              ; preds = %312, %309
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @test_index_array, ptr noundef nonnull align 16 dereferenceable(20) @B_test_index_array, i64 20, i1 false), !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @test_rank_array, ptr noundef nonnull align 16 dereferenceable(20) @B_test_rank_array, i64 20, i1 false), !tbaa !6
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef 33554432, i32 noundef 66)
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 10)
  %15 = tail call i32 @omp_get_max_threads()
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %15)
  %17 = tail call i32 @putchar(i32 10)
  tail call void @timer_start(i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store double 0x41B2B9B0A1000000, ptr %7, align 8, !tbaa !10
  store double 0x41D2309CE5400000, ptr %8, align 8, !tbaa !10
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 2, ptr nonnull @create_seq.omp_outlined, ptr nonnull %8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  call void @alloc_key_buff()
  call void @timer_stop(i32 noundef 1) #6
  br label %25

18:                                               ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @test_index_array, ptr noundef nonnull align 16 dereferenceable(20) @B_test_index_array, i64 20, i1 false), !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @test_rank_array, ptr noundef nonnull align 16 dereferenceable(20) @B_test_rank_array, i64 20, i1 false), !tbaa !6
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef 33554432, i32 noundef 66)
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 10)
  %22 = tail call i32 @omp_get_max_threads()
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %22)
  %24 = tail call i32 @putchar(i32 10)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store double 0x41B2B9B0A1000000, ptr %5, align 8, !tbaa !10
  store double 0x41D2309CE5400000, ptr %6, align 8, !tbaa !10
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 2, ptr nonnull @create_seq.omp_outlined, ptr nonnull %6, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  call void @alloc_key_buff()
  br label %25

25:                                               ; preds = %18, %11
  call void @rank(i32 noundef 1)
  store i32 0, ptr @passed_verification, align 4, !tbaa !6
  %26 = call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  call void @timer_start(i32 noundef 0) #6
  call void (...) @roi_begin_() #6
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
  call void (...) @roi_end_() #6
  call void @timer_stop(i32 noundef 0) #6
  %37 = call double @timer_read(i32 noundef 0) #6
  br i1 %10, label %47, label %38

38:                                               ; preds = %25
  call void @timer_start(i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i32 0, ptr %4, align 4, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %4)
  %39 = load i32, ptr %4, align 4, !tbaa !6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = sext i32 %39 to i64
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %42)
  br label %57

44:                                               ; preds = %38
  %45 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @passed_verification, align 4, !tbaa !6
  br label %57

47:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i32 0, ptr %3, align 4, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %3)
  %48 = load i32, ptr %3, align 4, !tbaa !6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = sext i32 %48 to i64
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %51)
  br label %56

53:                                               ; preds = %47
  %54 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr @passed_verification, align 4, !tbaa !6
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
  %65 = load ptr, ptr @bucket_size, align 8, !tbaa !18
  %66 = getelementptr inbounds ptr, ptr %65, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !18
  call void @free(ptr noundef %67) #6
  %68 = add nuw nsw i64 %64, 1
  %69 = icmp eq i64 %68, %62
  br i1 %69, label %70, label %63, !llvm.loop !21

70:                                               ; preds = %63, %58
  %71 = load ptr, ptr @bucket_size, align 8, !tbaa !18
  call void @free(ptr noundef %71) #6
  %72 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %73 = icmp eq i32 %72, 51
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 0, ptr @passed_verification, align 4, !tbaa !6
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ 0, %74 ], [ 51, %70 ]
  %77 = fdiv double 0x4074F8B588E368F0, %37
  call void @c_print_results(ptr noundef nonnull @.str.11, i8 noundef signext 66, i32 noundef 33554432, i32 noundef 1, i32 noundef 0, i32 noundef 10, double noundef %37, double noundef %77, ptr noundef nonnull @.str.12, i32 noundef %76, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17) #6
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

declare void @c_print_results(ptr noundef, i8 noundef signext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define weak_odr hidden ptr @_ZTW11bucket_ptrs() local_unnamed_addr #15 comdat {
  %1 = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { convergent nounwind }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"clang version 19.0.0git (git@github.com:studyztp/llvm-project.git ea54371a8e03ebdb4d383b89964705018ddf3d9e)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17}
!17 = !{i64 2, i64 -1, i64 -1, i1 true}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !8, i64 0}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.parallel_accesses", !22}
!26 = distinct !{!26, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !28, !27}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !31}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{}
!42 = distinct !{!42, !13}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !13, !27, !28}
!49 = distinct !{!49, !13, !27}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.parallel_accesses", !41}
