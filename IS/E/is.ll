; ModuleID = 'is.c'
source_filename = "is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZTW11bucket_ptrs = comdat any

@bucket_ptrs = dso_local thread_local global [1024 x i64] zeroinitializer, align 16
@KS = internal thread_local global i32 0, align 4
@R23 = internal thread_local global double 0.000000e+00, align 8
@R46 = internal thread_local global double 0.000000e+00, align 8
@T23 = internal thread_local global double 0.000000e+00, align 8
@T46 = internal thread_local global double 0.000000e+00, align 8
@key_buff_ptr_global = dso_local local_unnamed_addr global ptr null, align 8
@passed_verification = dso_local local_unnamed_addr global i32 0, align 4
@key_array = dso_local local_unnamed_addr global [34359738368 x i64] zeroinitializer, align 16
@key_buff1 = dso_local global [2147483648 x i64] zeroinitializer, align 16
@key_buff2 = dso_local global [34359738368 x i64] zeroinitializer, align 16
@partial_verify_vals = dso_local local_unnamed_addr global [5 x i64] zeroinitializer, align 16
@bucket_size = dso_local local_unnamed_addr global ptr null, align 8
@test_index_array = dso_local local_unnamed_addr global [5 x i64] zeroinitializer, align 16
@test_rank_array = dso_local local_unnamed_addr global [5 x i64] zeroinitializer, align 16
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
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, 34359738367
  %14 = sdiv i64 %13, %12
  %15 = sext i32 %10 to i64
  %16 = mul nsw i64 %14, %15
  %17 = add nsw i64 %16, %14
  %18 = tail call i64 @llvm.smin.i64(i64 %17, i64 34359738368)
  %19 = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @KS)
  store i32 0, ptr %19, align 4, !tbaa !6
  %20 = load double, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %4
  %23 = shl nsw i64 %15, 2
  %24 = mul i64 %14, %23
  store double %20, ptr %5, align 8, !tbaa !10
  store double %9, ptr %6, align 8, !tbaa !10
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
  br i1 %38, label %26, label %39, !llvm.loop !14

39:                                               ; preds = %36, %22
  %40 = call double @randlc(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %41 = load double, ptr %5, align 8, !tbaa !10
  br label %42

42:                                               ; preds = %4, %39
  %43 = phi double [ %41, %39 ], [ %20, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  store double %43, ptr %7, align 8, !tbaa !10
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
  store i64 %55, ptr %56, align 8, !tbaa !15
  %57 = add nsw i64 %46, 1
  %58 = icmp slt i64 %57, %18
  br i1 %58, label %45, label %59, !llvm.loop !17

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
declare !callback !18 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

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
  store ptr %4, ptr @bucket_size, align 8, !tbaa !20
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %7, %14
  %10 = phi i64 [ %17, %14 ], [ 0, %7 ]
  %11 = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @perror(ptr noundef nonnull @.str) #21
  tail call void @exit(i32 noundef 1) #22
  unreachable

14:                                               ; preds = %9
  %15 = load ptr, ptr @bucket_size, align 8, !tbaa !20
  %16 = getelementptr inbounds ptr, ptr %15, i64 %10
  store ptr %11, ptr %16, align 8, !tbaa !20
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %2
  br i1 %18, label %19, label %9, !llvm.loop !22

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
  store i64 0, ptr %3, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 34359738367, ptr %4, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 1, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !tbaa !6
  %7 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %7, i32 34, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5, i64 1, i64 1)
  %8 = load i64, ptr %4, align 8
  %9 = call i64 @llvm.smin.i64(i64 %8, i64 34359738367)
  store i64 %9, ptr %4, align 8, !tbaa !15
  %10 = load i64, ptr %3, align 8, !tbaa !15
  %11 = icmp sgt i64 %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = shl i64 %10, 3
  %14 = getelementptr i8, ptr @key_buff2, i64 %13
  %15 = add nsw i64 %9, 1
  %16 = sub i64 %15, %10
  %17 = shl nuw i64 %16, 3
  call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %17, i1 false), !tbaa !15
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
  %6 = load ptr, ptr @bucket_size, align 8, !tbaa !20
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  tail call void @free(ptr noundef %8) #6
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, %2
  br i1 %10, label %11, label %4, !llvm.loop !23

11:                                               ; preds = %4, %0
  %12 = load ptr, ptr @bucket_size, align 8, !tbaa !20
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
  store i64 0, ptr %1, align 8, !tbaa !15
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %1)
  %2 = load i64, ptr %1, align 8, !tbaa !15
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %2)
  br label %9

6:                                                ; preds = %0
  %7 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @passed_verification, align 4, !tbaa !6
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
  store i64 0, ptr %3, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 1023, ptr %4, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 1, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !tbaa !6
  %7 = load i32, ptr %0, align 4, !tbaa !6
  tail call void @__kmpc_dispatch_init_8(ptr nonnull @1, i32 %7, i32 1073741859, i64 0, i64 1023, i64 1, i64 1)
  %8 = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %7, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %52, label %10

10:                                               ; preds = %2
  %11 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  br label %15

12:                                               ; preds = %48, %15
  %13 = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %7, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %10, %12
  %16 = load i64, ptr %3, align 8, !tbaa !15
  %17 = load i64, ptr %4, align 8, !tbaa !15, !llvm.access.group !24
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
  %28 = load i64, ptr %27, align 8, !tbaa !15, !llvm.access.group !24
  br label %29

29:                                               ; preds = %21, %25
  %30 = phi i64 [ %28, %25 ], [ 0, %21 ]
  %31 = getelementptr inbounds [1024 x i64], ptr %11, i64 0, i64 %23
  %32 = load i64, ptr %31, align 8, !tbaa !15, !llvm.access.group !24
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29, %34
  %35 = phi i64 [ %43, %34 ], [ %30, %29 ]
  %36 = getelementptr inbounds [34359738368 x i64], ptr @key_buff2, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !15, !llvm.access.group !24
  %38 = getelementptr inbounds i64, ptr %20, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !15, !llvm.access.group !24
  %40 = add nsw i64 %39, -1
  store i64 %40, ptr %38, align 8, !tbaa !15, !llvm.access.group !24
  %41 = load i64, ptr %36, align 8, !tbaa !15, !llvm.access.group !24
  %42 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %40
  store i64 %41, ptr %42, align 8, !tbaa !15, !llvm.access.group !24
  %43 = add nsw i64 %35, 1
  %44 = load i64, ptr %31, align 8, !tbaa !15, !llvm.access.group !24
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %34, label %46, !llvm.loop !25

46:                                               ; preds = %34
  %47 = load i64, ptr %4, align 8, !tbaa !15, !llvm.access.group !24
  br label %48

48:                                               ; preds = %46, %29
  %49 = phi i64 [ %47, %46 ], [ %22, %29 ]
  %50 = add nsw i64 %23, 1
  %51 = icmp slt i64 %23, %49
  br i1 %51, label %21, label %12, !llvm.loop !26

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
  store i64 0, ptr %4, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 34359738366, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store i64 1, ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %10 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %10, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i64 1, i64 1)
  %11 = load i64, ptr %5, align 8
  %12 = call i64 @llvm.smin.i64(i64 %11, i64 34359738366)
  store i64 %12, ptr %5, align 8, !tbaa !15
  %13 = load i64, ptr %4, align 8, !tbaa !15
  %14 = icmp sgt i64 %13, %12
  br i1 %14, label %66, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !15
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
  %34 = load <2 x i64>, ptr %32, align 8, !tbaa !15
  %35 = load <2 x i64>, ptr %33, align 8, !tbaa !15
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
  br i1 %45, label %46, label %25, !llvm.loop !28

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
  %61 = load i64, ptr %60, align 8, !tbaa !15
  %62 = icmp sgt i64 %56, %61
  %63 = zext i1 %62 to i64
  %64 = add nuw nsw i64 %58, %63
  %65 = icmp eq i64 %57, %12
  br i1 %65, label %66, label %55, !llvm.loop !31

66:                                               ; preds = %55, %46, %3
  %67 = phi i64 [ 0, %3 ], [ %48, %46 ], [ %64, %55 ]
  store i64 %67, ptr %8, align 8, !tbaa !15
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %10)
  store ptr %8, ptr %9, align 8
  %68 = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %10, i32 1, i64 8, ptr nonnull %9, ptr nonnull @full_verify.omp_outlined.1.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %68, label %76 [
    i32 1, label %69
    i32 2, label %73
  ]

69:                                               ; preds = %66
  %70 = load i64, ptr %2, align 8, !tbaa !15
  %71 = load i64, ptr %8, align 8, !tbaa !15
  %72 = add nsw i64 %71, %70
  store i64 %72, ptr %2, align 8, !tbaa !15
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %10, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %76

73:                                               ; preds = %66
  %74 = load i64, ptr %8, align 8, !tbaa !15
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
  %5 = load i64, ptr %4, align 8, !tbaa !15
  %6 = load i64, ptr %3, align 8, !tbaa !15
  %7 = add nsw i64 %6, %5
  store i64 %7, ptr %4, align 8, !tbaa !15
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
  store i32 21, ptr %4, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 2097152, ptr %5, align 8, !tbaa !15
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %6
  store i64 %6, ptr %7, align 8, !tbaa !15
  %8 = sub nsw i64 2147483648, %6
  %9 = add nsw i32 %0, 10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %10
  store i64 %8, ptr %11, align 8, !tbaa !15
  %12 = load i64, ptr @test_index_array, align 16, !tbaa !15
  %13 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !15
  store i64 %14, ptr @partial_verify_vals, align 16, !tbaa !15
  %15 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_index_array, i64 0, i64 1), align 8, !tbaa !15
  %16 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !15
  store i64 %17, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 1), align 8, !tbaa !15
  %18 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_index_array, i64 0, i64 2), align 16, !tbaa !15
  %19 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !15
  store i64 %20, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 2), align 16, !tbaa !15
  %21 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_index_array, i64 0, i64 3), align 8, !tbaa !15
  %22 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !15
  store i64 %23, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 3), align 8, !tbaa !15
  %24 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_index_array, i64 0, i64 4), align 16, !tbaa !15
  %25 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !15
  store i64 %26, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 4), align 16, !tbaa !15
  store ptr @key_buff2, ptr %3, align 8, !tbaa !20
  store ptr @key_buff1, ptr %2, align 8, !tbaa !20
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 4, ptr nonnull @rank.omp_outlined, ptr nonnull %4, ptr nonnull %5, ptr nonnull %2, ptr nonnull %3)
  %27 = add nsw i32 %0, -2
  %28 = sext i32 %27 to i64
  %29 = icmp sgt i32 %0, 4
  %30 = icmp sgt i32 %0, 2
  %31 = sext i1 %30 to i64
  %32 = load i64, ptr @partial_verify_vals, align 16, !tbaa !15
  %33 = add i64 %32, -1
  %34 = icmp ult i64 %33, 34359738367
  br i1 %29, label %36, label %35

35:                                               ; preds = %1
  br i1 %34, label %119, label %132

36:                                               ; preds = %1
  br i1 %34, label %37, label %50

37:                                               ; preds = %36
  %38 = load ptr, ptr %2, align 8, !tbaa !20
  %39 = getelementptr i64, ptr %38, i64 %32
  %40 = getelementptr i8, ptr %39, i64 -8
  %41 = load i64, ptr %40, align 8, !tbaa !15
  %42 = load i64, ptr @test_rank_array, align 16, !tbaa !15
  %43 = add nsw i64 %42, %28
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 0)
  br label %50

47:                                               ; preds = %37
  %48 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr @passed_verification, align 4, !tbaa !6
  br label %50

50:                                               ; preds = %47, %45, %36
  %51 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 1), align 8, !tbaa !15
  %52 = add i64 %51, -1
  %53 = icmp ult i64 %52, 34359738367
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load ptr, ptr %2, align 8, !tbaa !20
  %56 = getelementptr i64, ptr %55, i64 %51
  %57 = getelementptr i8, ptr %56, i64 -8
  %58 = load i64, ptr %57, align 8, !tbaa !15
  %59 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 1), align 8, !tbaa !15
  %60 = add nsw i64 %59, %28
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 1)
  br label %67

64:                                               ; preds = %54
  %65 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr @passed_verification, align 4, !tbaa !6
  br label %67

67:                                               ; preds = %64, %62, %50
  %68 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 2), align 16, !tbaa !15
  %69 = add i64 %68, -1
  %70 = icmp ult i64 %69, 34359738367
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load ptr, ptr %2, align 8, !tbaa !20
  %73 = getelementptr i64, ptr %72, i64 %68
  %74 = getelementptr i8, ptr %73, i64 -8
  %75 = load i64, ptr %74, align 8, !tbaa !15
  %76 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 2), align 16, !tbaa !15
  %77 = add nsw i64 %76, %28
  %78 = add nsw i64 %77, -2
  %79 = icmp eq i64 %75, %78
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
  %86 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 3), align 8, !tbaa !15
  %87 = add i64 %86, -1
  %88 = icmp ult i64 %87, 34359738367
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load ptr, ptr %2, align 8, !tbaa !20
  %91 = getelementptr i64, ptr %90, i64 %86
  %92 = getelementptr i8, ptr %91, i64 -8
  %93 = load i64, ptr %92, align 8, !tbaa !15
  %94 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 3), align 8, !tbaa !15
  %95 = sub nsw i64 %94, %28
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %89
  %98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 3)
  br label %102

99:                                               ; preds = %89
  %100 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr @passed_verification, align 4, !tbaa !6
  br label %102

102:                                              ; preds = %99, %97, %85
  %103 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 4), align 16, !tbaa !15
  %104 = add i64 %103, -1
  %105 = icmp ult i64 %104, 34359738367
  br i1 %105, label %106, label %201

106:                                              ; preds = %102
  %107 = load ptr, ptr %2, align 8, !tbaa !20
  %108 = getelementptr i64, ptr %107, i64 %103
  %109 = getelementptr i8, ptr %108, i64 -8
  %110 = load i64, ptr %109, align 8, !tbaa !15
  %111 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 4), align 16, !tbaa !15
  %112 = sub nsw i64 %111, %28
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %116, label %114

114:                                              ; preds = %106
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 4)
  br label %201

116:                                              ; preds = %106
  %117 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr @passed_verification, align 4, !tbaa !6
  br label %201

119:                                              ; preds = %35
  %120 = load ptr, ptr %2, align 8, !tbaa !20
  %121 = getelementptr i64, ptr %120, i64 %32
  %122 = getelementptr i8, ptr %121, i64 -8
  %123 = load i64, ptr %122, align 8, !tbaa !15
  %124 = load i64, ptr @test_rank_array, align 16, !tbaa !15
  %125 = add nsw i64 %124, %28
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr @passed_verification, align 4, !tbaa !6
  br label %132

130:                                              ; preds = %119
  %131 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 0)
  br label %132

132:                                              ; preds = %127, %130, %35
  %133 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 1), align 8, !tbaa !15
  %134 = add i64 %133, -1
  %135 = icmp ult i64 %134, 34359738367
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load ptr, ptr %2, align 8, !tbaa !20
  %138 = getelementptr i64, ptr %137, i64 %133
  %139 = getelementptr i8, ptr %138, i64 -8
  %140 = load i64, ptr %139, align 8, !tbaa !15
  %141 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 1), align 8, !tbaa !15
  %142 = add nsw i64 %141, %28
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %146, label %144

144:                                              ; preds = %136
  %145 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 1)
  br label %149

146:                                              ; preds = %136
  %147 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr @passed_verification, align 4, !tbaa !6
  br label %149

149:                                              ; preds = %146, %144, %132
  %150 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 2), align 16, !tbaa !15
  %151 = add i64 %150, -1
  %152 = icmp ult i64 %151, 34359738367
  br i1 %152, label %153, label %167

153:                                              ; preds = %149
  %154 = load ptr, ptr %2, align 8, !tbaa !20
  %155 = getelementptr i64, ptr %154, i64 %150
  %156 = getelementptr i8, ptr %155, i64 -8
  %157 = load i64, ptr %156, align 8, !tbaa !15
  %158 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 2), align 16, !tbaa !15
  %159 = add nsw i64 %158, %28
  %160 = add nsw i64 %159, %31
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %164, label %162

162:                                              ; preds = %153
  %163 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 2)
  br label %167

164:                                              ; preds = %153
  %165 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr @passed_verification, align 4, !tbaa !6
  br label %167

167:                                              ; preds = %164, %162, %149
  %168 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 3), align 8, !tbaa !15
  %169 = add i64 %168, -1
  %170 = icmp ult i64 %169, 34359738367
  br i1 %170, label %171, label %184

171:                                              ; preds = %167
  %172 = load ptr, ptr %2, align 8, !tbaa !20
  %173 = getelementptr i64, ptr %172, i64 %168
  %174 = getelementptr i8, ptr %173, i64 -8
  %175 = load i64, ptr %174, align 8, !tbaa !15
  %176 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 3), align 8, !tbaa !15
  %177 = sub nsw i64 %176, %28
  %178 = icmp eq i64 %175, %177
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 3)
  br label %184

181:                                              ; preds = %171
  %182 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr @passed_verification, align 4, !tbaa !6
  br label %184

184:                                              ; preds = %181, %179, %167
  %185 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @partial_verify_vals, i64 0, i64 4), align 16, !tbaa !15
  %186 = add i64 %185, -1
  %187 = icmp ult i64 %186, 34359738367
  br i1 %187, label %188, label %205

188:                                              ; preds = %184
  %189 = load ptr, ptr %2, align 8, !tbaa !20
  %190 = getelementptr i64, ptr %189, i64 %185
  %191 = getelementptr i8, ptr %190, i64 -8
  %192 = load i64, ptr %191, align 8, !tbaa !15
  %193 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @test_rank_array, i64 0, i64 4), align 16, !tbaa !15
  %194 = sub nsw i64 %193, %28
  %195 = icmp eq i64 %192, %194
  br i1 %195, label %198, label %196

196:                                              ; preds = %188
  %197 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef 4)
  br label %205

198:                                              ; preds = %188
  %199 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr @passed_verification, align 4, !tbaa !6
  br label %205

201:                                              ; preds = %102, %114, %116
  %202 = icmp eq i32 %0, 10
  br i1 %202, label %203, label %205

203:                                              ; preds = %201
  %204 = load ptr, ptr %2, align 8, !tbaa !20
  store ptr %204, ptr @key_buff_ptr_global, align 8, !tbaa !20
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
  %21 = load ptr, ptr @bucket_size, align 8, !tbaa !20
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %24, i8 0, i64 8192, i1 false), !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store i64 0, ptr %7, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  store i64 34359738367, ptr %8, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  store i64 1, ptr %9, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !tbaa !6
  %25 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %25, i32 34, ptr nonnull %10, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9, i64 1, i64 1)
  %26 = load i64, ptr %8, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 34359738367)
  store i64 %27, ptr %8, align 8, !tbaa !15
  %28 = load i64, ptr %7, align 8, !tbaa !15
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %64, label %30

30:                                               ; preds = %6
  %31 = load i32, ptr %2, align 4, !tbaa !6
  %32 = zext nneg i32 %31 to i64
  %33 = add i64 %27, %28
  %34 = and i64 %33, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %28
  %38 = load i64, ptr %37, align 8, !tbaa !15
  %39 = ashr i64 %38, %32
  %40 = getelementptr inbounds i64, ptr %24, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !15
  %42 = add nsw i64 %41, 1
  store i64 %42, ptr %40, align 8, !tbaa !15
  %43 = add nsw i64 %28, 1
  br label %44

44:                                               ; preds = %36, %30
  %45 = phi i64 [ %28, %30 ], [ %43, %36 ]
  %46 = icmp eq i64 %27, %28
  br i1 %46, label %64, label %47

47:                                               ; preds = %44, %47
  %48 = phi i64 [ %62, %47 ], [ %45, %44 ]
  %49 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !15
  %51 = ashr i64 %50, %32
  %52 = getelementptr inbounds i64, ptr %24, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !15
  %54 = add nsw i64 %53, 1
  store i64 %54, ptr %52, align 8, !tbaa !15
  %55 = add nsw i64 %48, 1
  %56 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !15
  %58 = ashr i64 %57, %32
  %59 = getelementptr inbounds i64, ptr %24, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !15
  %61 = add nsw i64 %60, 1
  store i64 %61, ptr %59, align 8, !tbaa !15
  %62 = add nsw i64 %48, 2
  %63 = icmp slt i64 %55, %27
  br i1 %63, label %47, label %64

64:                                               ; preds = %44, %47, %6
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @__kmpc_barrier(ptr nonnull @4, i32 %25)
  %65 = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  store i64 0, ptr %65, align 16, !tbaa !15
  %66 = icmp sgt i32 %19, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %64
  %68 = load ptr, ptr @bucket_size, align 8, !tbaa !20
  %69 = and i64 %22, 3
  %70 = icmp ult i32 %19, 4
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = and i64 %22, 2147483644
  br label %106

73:                                               ; preds = %106, %67
  %74 = phi i64 [ undef, %67 ], [ %128, %106 ]
  %75 = phi i64 [ 0, %67 ], [ %128, %106 ]
  %76 = phi i64 [ 0, %67 ], [ %129, %106 ]
  %77 = icmp eq i64 %69, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %73, %78
  %79 = phi i64 [ %85, %78 ], [ %75, %73 ]
  %80 = phi i64 [ %86, %78 ], [ %76, %73 ]
  %81 = phi i64 [ %87, %78 ], [ 0, %73 ]
  %82 = getelementptr inbounds ptr, ptr %68, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !20
  %84 = load i64, ptr %83, align 8, !tbaa !15
  %85 = add nsw i64 %79, %84
  store i64 %85, ptr %65, align 16, !tbaa !15
  %86 = add nuw nsw i64 %80, 1
  %87 = add i64 %81, 1
  %88 = icmp eq i64 %87, %69
  br i1 %88, label %89, label %78, !llvm.loop !32

89:                                               ; preds = %73, %78, %64
  %90 = phi i64 [ 0, %64 ], [ %74, %73 ], [ %85, %78 ]
  %91 = sext i32 %20 to i64
  %92 = icmp slt i32 %19, %20
  %93 = load ptr, ptr @bucket_size, align 8
  %94 = sub nsw i64 %91, %22
  %95 = and i64 %22, 3
  %96 = icmp ult i32 %19, 4
  %97 = and i64 %22, 2147483644
  %98 = icmp eq i64 %95, 0
  %99 = and i64 %94, 3
  %100 = icmp eq i64 %99, 0
  %101 = sub nsw i64 %22, %91
  %102 = icmp ugt i64 %101, -4
  %103 = getelementptr i8, ptr %93, i64 8
  %104 = getelementptr i8, ptr %93, i64 16
  %105 = getelementptr i8, ptr %93, i64 24
  br label %132

106:                                              ; preds = %106, %71
  %107 = phi i64 [ 0, %71 ], [ %128, %106 ]
  %108 = phi i64 [ 0, %71 ], [ %129, %106 ]
  %109 = phi i64 [ 0, %71 ], [ %130, %106 ]
  %110 = getelementptr inbounds ptr, ptr %68, i64 %108
  %111 = load ptr, ptr %110, align 8, !tbaa !20
  %112 = load i64, ptr %111, align 8, !tbaa !15
  %113 = add nsw i64 %107, %112
  store i64 %113, ptr %65, align 16, !tbaa !15
  %114 = or disjoint i64 %108, 1
  %115 = getelementptr inbounds ptr, ptr %68, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !20
  %117 = load i64, ptr %116, align 8, !tbaa !15
  %118 = add nsw i64 %113, %117
  store i64 %118, ptr %65, align 16, !tbaa !15
  %119 = or disjoint i64 %108, 2
  %120 = getelementptr inbounds ptr, ptr %68, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !20
  %122 = load i64, ptr %121, align 8, !tbaa !15
  %123 = add nsw i64 %118, %122
  store i64 %123, ptr %65, align 16, !tbaa !15
  %124 = or disjoint i64 %108, 3
  %125 = getelementptr inbounds ptr, ptr %68, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !20
  %127 = load i64, ptr %126, align 8, !tbaa !15
  %128 = add nsw i64 %123, %127
  store i64 %128, ptr %65, align 16, !tbaa !15
  %129 = add nuw nsw i64 %108, 4
  %130 = add i64 %109, 4
  %131 = icmp eq i64 %130, %72
  br i1 %131, label %73, label %106, !llvm.loop !34

132:                                              ; preds = %89, %232
  %133 = phi i64 [ %90, %89 ], [ %233, %232 ]
  %134 = phi i64 [ 1, %89 ], [ %234, %232 ]
  %135 = getelementptr inbounds [1024 x i64], ptr %65, i64 0, i64 %134
  store i64 %133, ptr %135, align 8, !tbaa !15
  br i1 %66, label %136, label %153

136:                                              ; preds = %132
  br i1 %96, label %137, label %173

137:                                              ; preds = %173, %136
  %138 = phi i64 [ undef, %136 ], [ %199, %173 ]
  %139 = phi i64 [ %133, %136 ], [ %199, %173 ]
  %140 = phi i64 [ 0, %136 ], [ %200, %173 ]
  br i1 %98, label %153, label %141

141:                                              ; preds = %137, %141
  %142 = phi i64 [ %149, %141 ], [ %139, %137 ]
  %143 = phi i64 [ %150, %141 ], [ %140, %137 ]
  %144 = phi i64 [ %151, %141 ], [ 0, %137 ]
  %145 = getelementptr inbounds ptr, ptr %93, i64 %143
  %146 = load ptr, ptr %145, align 8, !tbaa !20
  %147 = getelementptr inbounds i64, ptr %146, i64 %134
  %148 = load i64, ptr %147, align 8, !tbaa !15
  %149 = add nsw i64 %142, %148
  store i64 %149, ptr %135, align 8, !tbaa !15
  %150 = add nuw nsw i64 %143, 1
  %151 = add i64 %144, 1
  %152 = icmp eq i64 %151, %95
  br i1 %152, label %153, label %141, !llvm.loop !35

153:                                              ; preds = %137, %141, %132
  %154 = phi i64 [ %133, %132 ], [ %138, %137 ], [ %149, %141 ]
  br i1 %92, label %155, label %232

155:                                              ; preds = %153
  br i1 %100, label %169, label %156

156:                                              ; preds = %155, %156
  %157 = phi i64 [ %165, %156 ], [ %154, %155 ]
  %158 = phi i64 [ %166, %156 ], [ %22, %155 ]
  %159 = phi i64 [ %167, %156 ], [ 0, %155 ]
  %160 = getelementptr inbounds ptr, ptr %93, i64 %158
  %161 = load ptr, ptr %160, align 8, !tbaa !20
  %162 = getelementptr i64, ptr %161, i64 %134
  %163 = getelementptr i8, ptr %162, i64 -8
  %164 = load i64, ptr %163, align 8, !tbaa !15
  %165 = add nsw i64 %157, %164
  store i64 %165, ptr %135, align 8, !tbaa !15
  %166 = add nsw i64 %158, 1
  %167 = add i64 %159, 1
  %168 = icmp eq i64 %167, %99
  br i1 %168, label %169, label %156, !llvm.loop !36

169:                                              ; preds = %156, %155
  %170 = phi i64 [ undef, %155 ], [ %165, %156 ]
  %171 = phi i64 [ %154, %155 ], [ %165, %156 ]
  %172 = phi i64 [ %22, %155 ], [ %166, %156 ]
  br i1 %102, label %232, label %203

173:                                              ; preds = %136, %173
  %174 = phi i64 [ %199, %173 ], [ %133, %136 ]
  %175 = phi i64 [ %200, %173 ], [ 0, %136 ]
  %176 = phi i64 [ %201, %173 ], [ 0, %136 ]
  %177 = getelementptr inbounds ptr, ptr %93, i64 %175
  %178 = load ptr, ptr %177, align 8, !tbaa !20
  %179 = getelementptr inbounds i64, ptr %178, i64 %134
  %180 = load i64, ptr %179, align 8, !tbaa !15
  %181 = add nsw i64 %174, %180
  store i64 %181, ptr %135, align 8, !tbaa !15
  %182 = or disjoint i64 %175, 1
  %183 = getelementptr inbounds ptr, ptr %93, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !20
  %185 = getelementptr inbounds i64, ptr %184, i64 %134
  %186 = load i64, ptr %185, align 8, !tbaa !15
  %187 = add nsw i64 %181, %186
  store i64 %187, ptr %135, align 8, !tbaa !15
  %188 = or disjoint i64 %175, 2
  %189 = getelementptr inbounds ptr, ptr %93, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !20
  %191 = getelementptr inbounds i64, ptr %190, i64 %134
  %192 = load i64, ptr %191, align 8, !tbaa !15
  %193 = add nsw i64 %187, %192
  store i64 %193, ptr %135, align 8, !tbaa !15
  %194 = or disjoint i64 %175, 3
  %195 = getelementptr inbounds ptr, ptr %93, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !20
  %197 = getelementptr inbounds i64, ptr %196, i64 %134
  %198 = load i64, ptr %197, align 8, !tbaa !15
  %199 = add nsw i64 %193, %198
  store i64 %199, ptr %135, align 8, !tbaa !15
  %200 = add nuw nsw i64 %175, 4
  %201 = add i64 %176, 4
  %202 = icmp eq i64 %201, %97
  br i1 %202, label %137, label %173, !llvm.loop !37

203:                                              ; preds = %169, %203
  %204 = phi i64 [ %229, %203 ], [ %171, %169 ]
  %205 = phi i64 [ %230, %203 ], [ %172, %169 ]
  %206 = getelementptr inbounds ptr, ptr %93, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !20
  %208 = getelementptr i64, ptr %207, i64 %134
  %209 = getelementptr i8, ptr %208, i64 -8
  %210 = load i64, ptr %209, align 8, !tbaa !15
  %211 = add nsw i64 %204, %210
  store i64 %211, ptr %135, align 8, !tbaa !15
  %212 = getelementptr ptr, ptr %103, i64 %205
  %213 = load ptr, ptr %212, align 8, !tbaa !20
  %214 = getelementptr i64, ptr %213, i64 %134
  %215 = getelementptr i8, ptr %214, i64 -8
  %216 = load i64, ptr %215, align 8, !tbaa !15
  %217 = add nsw i64 %211, %216
  store i64 %217, ptr %135, align 8, !tbaa !15
  %218 = getelementptr ptr, ptr %104, i64 %205
  %219 = load ptr, ptr %218, align 8, !tbaa !20
  %220 = getelementptr i64, ptr %219, i64 %134
  %221 = getelementptr i8, ptr %220, i64 -8
  %222 = load i64, ptr %221, align 8, !tbaa !15
  %223 = add nsw i64 %217, %222
  store i64 %223, ptr %135, align 8, !tbaa !15
  %224 = getelementptr ptr, ptr %105, i64 %205
  %225 = load ptr, ptr %224, align 8, !tbaa !20
  %226 = getelementptr i64, ptr %225, i64 %134
  %227 = getelementptr i8, ptr %226, i64 -8
  %228 = load i64, ptr %227, align 8, !tbaa !15
  %229 = add nsw i64 %223, %228
  store i64 %229, ptr %135, align 8, !tbaa !15
  %230 = add nsw i64 %205, 4
  %231 = icmp eq i64 %230, %91
  br i1 %231, label %232, label %203, !llvm.loop !38

232:                                              ; preds = %169, %203, %153
  %233 = phi i64 [ %154, %153 ], [ %170, %169 ], [ %229, %203 ]
  %234 = add nuw nsw i64 %134, 1
  %235 = icmp eq i64 %234, 1024
  br i1 %235, label %236, label %132, !llvm.loop !39

236:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  store i64 0, ptr %11, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  store i64 34359738367, ptr %12, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #6
  store i64 1, ptr %13, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  store i32 0, ptr %14, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %25, i32 34, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 1)
  %237 = load i64, ptr %12, align 8
  %238 = call i64 @llvm.smin.i64(i64 %237, i64 34359738367)
  store i64 %238, ptr %12, align 8, !tbaa !15
  %239 = load i64, ptr %11, align 8, !tbaa !15
  %240 = icmp sgt i64 %239, %238
  br i1 %240, label %256, label %241

241:                                              ; preds = %236
  %242 = load i32, ptr %2, align 4, !tbaa !6
  %243 = zext nneg i32 %242 to i64
  br label %244

244:                                              ; preds = %241, %244
  %245 = phi i64 [ %239, %241 ], [ %253, %244 ]
  %246 = getelementptr inbounds [34359738368 x i64], ptr @key_array, i64 0, i64 %245
  %247 = load i64, ptr %246, align 8, !tbaa !15
  %248 = ashr i64 %247, %243
  %249 = getelementptr inbounds [1024 x i64], ptr %65, i64 0, i64 %248
  %250 = load i64, ptr %249, align 8, !tbaa !15
  %251 = add nsw i64 %250, 1
  store i64 %251, ptr %249, align 8, !tbaa !15
  %252 = getelementptr inbounds [34359738368 x i64], ptr @key_buff2, i64 0, i64 %250
  store i64 %247, ptr %252, align 8, !tbaa !15
  %253 = add nsw i64 %245, 1
  %254 = load i64, ptr %12, align 8, !tbaa !15
  %255 = icmp slt i64 %245, %254
  br i1 %255, label %244, label %256

256:                                              ; preds = %244, %236
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @__kmpc_barrier(ptr nonnull @4, i32 %25)
  %257 = add nsw i32 %20, -1
  %258 = icmp slt i32 %19, %257
  br i1 %258, label %259, label %320

259:                                              ; preds = %256
  %260 = add nsw i32 %19, 1
  %261 = sext i32 %260 to i64
  %262 = icmp slt i32 %260, %20
  %263 = load ptr, ptr @bucket_size, align 8
  br i1 %262, label %264, label %320

264:                                              ; preds = %259
  %265 = sub nsw i64 %91, %261
  %266 = and i64 %265, 3
  %267 = icmp eq i64 %266, 0
  %268 = sub nsw i64 %261, %91
  %269 = icmp ugt i64 %268, -4
  %270 = getelementptr i8, ptr %263, i64 8
  %271 = getelementptr i8, ptr %263, i64 16
  %272 = getelementptr i8, ptr %263, i64 24
  br label %273

273:                                              ; preds = %264, %317
  %274 = phi i64 [ %318, %317 ], [ 0, %264 ]
  %275 = getelementptr inbounds [1024 x i64], ptr %65, i64 0, i64 %274
  %276 = load i64, ptr %275, align 8, !tbaa !15
  br i1 %267, label %289, label %277

277:                                              ; preds = %273, %277
  %278 = phi i64 [ %285, %277 ], [ %276, %273 ]
  %279 = phi i64 [ %286, %277 ], [ %261, %273 ]
  %280 = phi i64 [ %287, %277 ], [ 0, %273 ]
  %281 = getelementptr inbounds ptr, ptr %263, i64 %279
  %282 = load ptr, ptr %281, align 8, !tbaa !20
  %283 = getelementptr inbounds i64, ptr %282, i64 %274
  %284 = load i64, ptr %283, align 8, !tbaa !15
  %285 = add nsw i64 %278, %284
  store i64 %285, ptr %275, align 8, !tbaa !15
  %286 = add nsw i64 %279, 1
  %287 = add i64 %280, 1
  %288 = icmp eq i64 %287, %266
  br i1 %288, label %289, label %277, !llvm.loop !40

289:                                              ; preds = %277, %273
  %290 = phi i64 [ %276, %273 ], [ %285, %277 ]
  %291 = phi i64 [ %261, %273 ], [ %286, %277 ]
  br i1 %269, label %317, label %292

292:                                              ; preds = %289, %292
  %293 = phi i64 [ %314, %292 ], [ %290, %289 ]
  %294 = phi i64 [ %315, %292 ], [ %291, %289 ]
  %295 = getelementptr inbounds ptr, ptr %263, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !20
  %297 = getelementptr inbounds i64, ptr %296, i64 %274
  %298 = load i64, ptr %297, align 8, !tbaa !15
  %299 = add nsw i64 %293, %298
  store i64 %299, ptr %275, align 8, !tbaa !15
  %300 = getelementptr ptr, ptr %270, i64 %294
  %301 = load ptr, ptr %300, align 8, !tbaa !20
  %302 = getelementptr inbounds i64, ptr %301, i64 %274
  %303 = load i64, ptr %302, align 8, !tbaa !15
  %304 = add nsw i64 %299, %303
  store i64 %304, ptr %275, align 8, !tbaa !15
  %305 = getelementptr ptr, ptr %271, i64 %294
  %306 = load ptr, ptr %305, align 8, !tbaa !20
  %307 = getelementptr inbounds i64, ptr %306, i64 %274
  %308 = load i64, ptr %307, align 8, !tbaa !15
  %309 = add nsw i64 %304, %308
  store i64 %309, ptr %275, align 8, !tbaa !15
  %310 = getelementptr ptr, ptr %272, i64 %294
  %311 = load ptr, ptr %310, align 8, !tbaa !20
  %312 = getelementptr inbounds i64, ptr %311, i64 %274
  %313 = load i64, ptr %312, align 8, !tbaa !15
  %314 = add nsw i64 %309, %313
  store i64 %314, ptr %275, align 8, !tbaa !15
  %315 = add nsw i64 %294, 4
  %316 = icmp eq i64 %315, %91
  br i1 %316, label %317, label %292, !llvm.loop !41

317:                                              ; preds = %292, %289
  %318 = add nuw nsw i64 %274, 1
  %319 = icmp eq i64 %318, 1024
  br i1 %319, label %320, label %273, !llvm.loop !42

320:                                              ; preds = %317, %259, %256
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #6
  store i64 0, ptr %15, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #6
  store i64 1023, ptr %16, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #6
  store i64 1, ptr %17, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #6
  store i32 0, ptr %18, align 4, !tbaa !6
  call void @__kmpc_dispatch_init_8(ptr nonnull @1, i32 %25, i32 1073741859, i64 0, i64 1023, i64 1, i64 1)
  %321 = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %25, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17)
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %392, label %326

323:                                              ; preds = %387, %326
  %324 = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %25, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17)
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %392, label %326

326:                                              ; preds = %320, %323
  %327 = load i64, ptr %15, align 8, !tbaa !15
  %328 = load i64, ptr %16, align 8, !tbaa !15, !llvm.access.group !43
  %329 = icmp sgt i64 %327, %328
  br i1 %329, label %323, label %330

330:                                              ; preds = %326
  %331 = load ptr, ptr %4, align 8
  %332 = load ptr, ptr %5, align 8
  br label %333

333:                                              ; preds = %330, %387
  %334 = phi i64 [ 0, %330 ], [ %391, %387 ]
  %335 = phi i64 [ %327, %330 ], [ %388, %387 ]
  %336 = load i64, ptr %3, align 8, !tbaa !15, !llvm.access.group !43
  %337 = mul i64 %336, %335
  %338 = add i64 %337, %336
  %339 = icmp sgt i64 %336, 0
  br i1 %339, label %340, label %351

340:                                              ; preds = %333
  %341 = add i64 %327, %334
  %342 = add i64 %327, %334
  %343 = shl i64 %342, 3
  %344 = mul i64 %336, %343
  %345 = getelementptr i8, ptr %331, i64 %344
  %346 = add i64 %337, 1
  %347 = call i64 @llvm.smax.i64(i64 %338, i64 %346)
  %348 = mul i64 %341, %336
  %349 = sub i64 %347, %348
  %350 = shl nuw i64 %349, 3
  call void @llvm.memset.p0.i64(ptr align 8 %345, i8 0, i64 %350, i1 false), !tbaa !15
  br label %351

351:                                              ; preds = %340, %333
  %352 = icmp sgt i64 %335, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %351
  %354 = add nsw i64 %335, -1
  %355 = getelementptr inbounds [1024 x i64], ptr %65, i64 0, i64 %354
  %356 = load i64, ptr %355, align 8, !tbaa !15, !llvm.access.group !43
  br label %357

357:                                              ; preds = %351, %353
  %358 = phi i64 [ %356, %353 ], [ 0, %351 ]
  %359 = getelementptr inbounds [1024 x i64], ptr %65, i64 0, i64 %335
  %360 = load i64, ptr %359, align 8, !tbaa !15, !llvm.access.group !43
  %361 = icmp slt i64 %358, %360
  br i1 %361, label %362, label %372

362:                                              ; preds = %357, %362
  %363 = phi i64 [ %369, %362 ], [ %358, %357 ]
  %364 = getelementptr inbounds i64, ptr %332, i64 %363
  %365 = load i64, ptr %364, align 8, !tbaa !15, !llvm.access.group !43
  %366 = getelementptr inbounds i64, ptr %331, i64 %365
  %367 = load i64, ptr %366, align 8, !tbaa !15, !llvm.access.group !43
  %368 = add nsw i64 %367, 1
  store i64 %368, ptr %366, align 8, !tbaa !15, !llvm.access.group !43
  %369 = add nsw i64 %363, 1
  %370 = load i64, ptr %359, align 8, !tbaa !15, !llvm.access.group !43
  %371 = icmp slt i64 %369, %370
  br i1 %371, label %362, label %372, !llvm.loop !44

372:                                              ; preds = %362, %357
  %373 = getelementptr inbounds i64, ptr %331, i64 %337
  %374 = load i64, ptr %373, align 8, !tbaa !15, !llvm.access.group !43
  %375 = add nsw i64 %374, %358
  store i64 %375, ptr %373, align 8, !tbaa !15, !llvm.access.group !43
  %376 = icmp sgt i64 %336, 1
  br i1 %376, label %377, label %387

377:                                              ; preds = %372
  %378 = add nsw i64 %337, 1
  br label %379

379:                                              ; preds = %377, %379
  %380 = phi i64 [ %384, %379 ], [ %375, %377 ]
  %381 = phi i64 [ %385, %379 ], [ %378, %377 ]
  %382 = getelementptr inbounds i64, ptr %331, i64 %381
  %383 = load i64, ptr %382, align 8, !tbaa !15, !llvm.access.group !43
  %384 = add nsw i64 %383, %380
  store i64 %384, ptr %382, align 8, !tbaa !15, !llvm.access.group !43
  %385 = add nsw i64 %381, 1
  %386 = icmp slt i64 %385, %338
  br i1 %386, label %379, label %387, !llvm.loop !45

387:                                              ; preds = %379, %372
  %388 = add nsw i64 %335, 1
  %389 = load i64, ptr %16, align 8, !tbaa !15, !llvm.access.group !43
  %390 = icmp slt i64 %335, %389
  %391 = add i64 %334, 1
  br i1 %390, label %333, label %323, !llvm.loop !46

392:                                              ; preds = %323, %320
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @test_index_array, ptr noundef nonnull align 16 dereferenceable(40) @E_test_index_array, i64 40, i1 false), !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @test_rank_array, ptr noundef nonnull align 16 dereferenceable(40) @E_test_rank_array, i64 40, i1 false), !tbaa !15
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef 34359738368, i32 noundef 69)
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @test_index_array, ptr noundef nonnull align 16 dereferenceable(40) @E_test_index_array, i64 40, i1 false), !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @test_rank_array, ptr noundef nonnull align 16 dereferenceable(40) @E_test_rank_array, i64 40, i1 false), !tbaa !15
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef 34359738368, i32 noundef 69)
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
  br i1 %10, label %46, label %38

38:                                               ; preds = %25
  call void @timer_start(i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i64 0, ptr %4, align 8, !tbaa !15
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %4)
  %39 = load i64, ptr %4, align 8, !tbaa !15
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %39)
  br label %55

43:                                               ; preds = %38
  %44 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @passed_verification, align 4, !tbaa !6
  br label %55

46:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @full_verify.omp_outlined)
  store i64 0, ptr %3, align 8, !tbaa !15
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @full_verify.omp_outlined.1, ptr nonnull %3)
  %47 = load i64, ptr %3, align 8, !tbaa !15
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %47)
  br label %54

51:                                               ; preds = %46
  %52 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr @passed_verification, align 4, !tbaa !6
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
  %62 = load ptr, ptr @bucket_size, align 8, !tbaa !20
  %63 = getelementptr inbounds ptr, ptr %62, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !20
  call void @free(ptr noundef %64) #6
  %65 = add nuw nsw i64 %61, 1
  %66 = icmp eq i64 %65, %58
  br i1 %66, label %67, label %60, !llvm.loop !23

67:                                               ; preds = %60, %56
  %68 = load ptr, ptr @bucket_size, align 8, !tbaa !20
  call void @free(ptr noundef %68) #6
  %69 = load i32, ptr @passed_verification, align 4, !tbaa !6
  %70 = icmp eq i32 %69, 51
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, ptr @passed_verification, align 4, !tbaa !6
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ 0, %71 ], [ 51, %67 ]
  %74 = fdiv double 0x4114F8B588E368F0, %37
  call void @c_print_results(ptr noundef nonnull @.str.11, i8 noundef signext 69, i32 noundef 134217728, i32 noundef 256, i32 noundef 0, i32 noundef 10, double noundef %37, double noundef %74, ptr noundef nonnull @.str.12, i32 noundef %73, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17) #6
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

declare void @c_print_results(ptr noundef, i8 noundef signext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define weak_odr hidden ptr @_ZTW11bucket_ptrs() local_unnamed_addr #15 comdat {
  %1 = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @bucket_ptrs)
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #16

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
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = distinct !{!17, !13}
!18 = !{!19}
!19 = !{i64 2, i64 -1, i64 -1, i1 true}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !8, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.parallel_accesses", !24}
!28 = distinct !{!28, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !30, !29}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.parallel_accesses", !43}
