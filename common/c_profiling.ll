; ModuleID = 'c_helper.c'
source_filename = "c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.omp_lock_t = type { ptr }

@counter = dso_local global i64 0, align 8
@lock = dso_local global %struct.omp_lock_t zeroinitializer, align 8
@bbv = dso_local local_unnamed_addr global ptr null, align 8
@timestamp = dso_local local_unnamed_addr global ptr null, align 8
@bbv_array = dso_local local_unnamed_addr global ptr null, align 8
@timestamp_array = dso_local local_unnamed_addr global ptr null, align 8
@counter_array = dso_local local_unnamed_addr global ptr null, align 8
@wait = dso_local local_unnamed_addr global i8 0, align 4
@if_start = dso_local local_unnamed_addr global i8 0, align 4
@region = dso_local local_unnamed_addr global i64 0, align 8
@total_num_bbs = dso_local local_unnamed_addr global i64 0, align 8
@num_threads = dso_local local_unnamed_addr global i64 0, align 8
@current_array_size = dso_local local_unnamed_addr global i64 1000, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"all_output_%d_threads.txt\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Region: %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Total IR instructions: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Total IR instructions in region: %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Thread %llu BBV and Timesamp: [\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%llu:%llu,\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@str = private unnamed_addr constant [50 x i8] c"Failed to allocate memory for counter_array array\00", align 1
@str.16 = private unnamed_addr constant [67 x i8] c"Failed to allocate memory for bbv_array and timestamp_array arrays\00", align 1
@str.17 = private unnamed_addr constant [10 x i8] c"ROI begin\00", align 1
@str.18 = private unnamed_addr constant [8 x i8] c"ROI end\00", align 1
@str.19 = private unnamed_addr constant [25 x i8] c"Faile to open outputfile\00", align 1

; Function Attrs: mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @calculate_nsec_difference([2 x i64] %0, [2 x i64] %1) local_unnamed_addr #0 {
  %3 = extractvalue [2 x i64] %0, 0
  %4 = extractvalue [2 x i64] %0, 1
  %5 = extractvalue [2 x i64] %1, 0
  %6 = extractvalue [2 x i64] %1, 1
  %7 = sub i64 %6, %4
  %8 = sub nsw i64 %5, %3
  %9 = mul nsw i64 %8, 1000000000
  %10 = add nsw i64 %7, %9
  ret i64 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noprofile nounwind uwtable
define dso_local void @increase_array() local_unnamed_addr #2 {
  %1 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %2 = add i64 %1, 1000
  store i64 %2, ptr @current_array_size, align 8, !tbaa !7
  %3 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %4 = shl i64 %2, 3
  %5 = tail call ptr @realloc(ptr noundef %3, i64 noundef %4) #12
  store ptr %5, ptr @bbv_array, align 8, !tbaa !11
  %6 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %7 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %8 = shl i64 %7, 3
  %9 = tail call ptr @realloc(ptr noundef %6, i64 noundef %8) #12
  store ptr %9, ptr @timestamp_array, align 8, !tbaa !11
  %10 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %9, null
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  tail call void @exit(i32 noundef 1) #13
  unreachable

16:                                               ; preds = %0
  %17 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %18 = icmp ugt i64 %17, 999
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = add i64 %17, -1000
  br label %27

21:                                               ; preds = %51, %16
  %22 = phi i64 [ %17, %16 ], [ %61, %51 ]
  %23 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %24 = shl i64 %22, 3
  %25 = tail call ptr @realloc(ptr noundef %23, i64 noundef %24) #12
  store ptr %25, ptr @counter_array, align 8, !tbaa !11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %63, label %65

27:                                               ; preds = %19, %51
  %28 = phi i64 [ %60, %51 ], [ %20, %19 ]
  %29 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %30 = add i64 %29, 64
  %31 = load i64, ptr @num_threads, align 8, !tbaa !7
  %32 = shl i64 %31, 3
  %33 = mul i64 %32, %30
  %34 = tail call noalias ptr @malloc(i64 noundef %33) #14
  %35 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %36 = getelementptr inbounds ptr, ptr %35, i64 %28
  store ptr %34, ptr %36, align 8, !tbaa !11
  %37 = tail call noalias ptr @malloc(i64 noundef %33) #14
  %38 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %39 = getelementptr inbounds ptr, ptr %38, i64 %28
  store ptr %37, ptr %39, align 8, !tbaa !11
  %40 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %41 = getelementptr inbounds ptr, ptr %40, i64 %28
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %27
  %45 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %46 = getelementptr inbounds ptr, ptr %45, i64 %28
  %47 = load ptr, ptr %46, align 8, !tbaa !11
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %27
  %50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  tail call void @exit(i32 noundef 1) #13
  unreachable

51:                                               ; preds = %44
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %42, i8 0, i64 %33, i1 false)
  %52 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %53 = getelementptr inbounds ptr, ptr %52, i64 %28
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %56 = add i64 %55, 64
  %57 = load i64, ptr @num_threads, align 8, !tbaa !7
  %58 = shl i64 %57, 3
  %59 = mul i64 %58, %56
  tail call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 %59, i1 false)
  %60 = add nuw i64 %28, 1
  %61 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %27, label %21, !llvm.loop !13

63:                                               ; preds = %21
  %64 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 1) #13
  unreachable

65:                                               ; preds = %21
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noprofile nounwind uwtable
define dso_local void @process_data() local_unnamed_addr #2 {
  %1 = load atomic i64, ptr @counter seq_cst, align 8
  %2 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %3 = load i64, ptr @region, align 8, !tbaa !7
  %4 = getelementptr inbounds i64, ptr %2, i64 %3
  store i64 %1, ptr %4, align 8, !tbaa !7
  %5 = load i64, ptr @region, align 8, !tbaa !7
  %6 = add i64 %5, 1
  store i64 %6, ptr @region, align 8, !tbaa !7
  %7 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %8 = getelementptr inbounds ptr, ptr %7, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  store ptr %9, ptr @bbv, align 8, !tbaa !11
  %10 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %11 = getelementptr inbounds ptr, ptr %10, i64 %6
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  store ptr %12, ptr @timestamp, align 8, !tbaa !11
  %13 = add i64 %5, 101
  %14 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  tail call void @increase_array()
  br label %17

17:                                               ; preds = %16, %0
  store atomic i64 0, ptr @counter seq_cst, align 8
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @bb_hook(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = load i8, ptr @if_start, align 4, !tbaa !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr @wait, align 4, !tbaa !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @omp_set_lock(ptr noundef nonnull @lock) #15
  tail call void @omp_unset_lock(ptr noundef nonnull @lock) #15
  br label %10

10:                                               ; preds = %9, %6
  %11 = tail call i32 @omp_get_thread_num()
  %12 = sext i32 %11 to i64
  %13 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %14 = add i64 %13, 64
  %15 = mul i64 %14, %12
  %16 = add i64 %15, %1
  %17 = atomicrmw add ptr @counter, i64 %0 seq_cst, align 8
  %18 = add i64 %17, %0
  %19 = load ptr, ptr @bbv, align 8, !tbaa !11
  %20 = getelementptr inbounds i64, ptr %19, i64 %16
  %21 = load i64, ptr %20, align 8, !tbaa !7
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !7
  %23 = load ptr, ptr @timestamp, align 8, !tbaa !11
  %24 = getelementptr inbounds i64, ptr %23, i64 %16
  store i64 %18, ptr %24, align 8, !tbaa !7
  %25 = icmp ult i64 %18, %2
  br i1 %25, label %48, label %26

26:                                               ; preds = %10
  tail call void @omp_set_lock(ptr noundef nonnull @lock) #15
  %27 = load atomic i64, ptr @counter seq_cst, align 8
  %28 = icmp ult i64 %27, %2
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  store i8 1, ptr @wait, align 4, !tbaa !15
  %30 = load atomic i64, ptr @counter seq_cst, align 8
  %31 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %32 = load i64, ptr @region, align 8, !tbaa !7
  %33 = getelementptr inbounds i64, ptr %31, i64 %32
  store i64 %30, ptr %33, align 8, !tbaa !7
  %34 = load i64, ptr @region, align 8, !tbaa !7
  %35 = add i64 %34, 1
  store i64 %35, ptr @region, align 8, !tbaa !7
  %36 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  store ptr %38, ptr @bbv, align 8, !tbaa !11
  %39 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %40 = getelementptr inbounds ptr, ptr %39, i64 %35
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  store ptr %41, ptr @timestamp, align 8, !tbaa !11
  %42 = add i64 %34, 101
  %43 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %29
  tail call void @increase_array()
  br label %46

46:                                               ; preds = %29, %45
  store atomic i64 0, ptr @counter seq_cst, align 8
  store i8 0, ptr @wait, align 4, !tbaa !15
  br label %47

47:                                               ; preds = %46, %26
  tail call void @omp_unset_lock(ptr noundef nonnull @lock) #15
  br label %48

48:                                               ; preds = %10, %47, %3
  ret void
}

declare void @omp_set_lock(ptr noundef) local_unnamed_addr #8

declare void @omp_unset_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() local_unnamed_addr #9

; Function Attrs: noprofile nounwind uwtable
define dso_local void @init_array(i64 noundef %0) local_unnamed_addr #2 {
  store i64 %0, ptr @total_num_bbs, align 8, !tbaa !7
  %2 = tail call i32 @omp_get_max_threads()
  %3 = sext i32 %2 to i64
  store i64 %3, ptr @num_threads, align 8, !tbaa !7
  %4 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %5 = shl i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #14
  store ptr %6, ptr @bbv_array, align 8, !tbaa !11
  %7 = tail call noalias ptr @malloc(i64 noundef %5) #14
  store ptr %7, ptr @timestamp_array, align 8, !tbaa !11
  %8 = tail call noalias ptr @malloc(i64 noundef %5) #14
  store ptr %8, ptr @counter_array, align 8, !tbaa !11
  %9 = icmp eq ptr %6, null
  %10 = icmp eq ptr %7, null
  %11 = or i1 %9, %10
  %12 = icmp eq ptr %8, null
  %13 = or i1 %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = icmp eq i64 %4, 0
  br i1 %15, label %22, label %26

16:                                               ; preds = %1
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  tail call void @exit(i32 noundef 1) #13
  unreachable

18:                                               ; preds = %50
  %19 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi ptr [ %21, %18 ], [ %7, %14 ]
  %24 = phi ptr [ %20, %18 ], [ undef, %14 ]
  store ptr %24, ptr @bbv, align 8, !tbaa !11
  %25 = load ptr, ptr %23, align 8, !tbaa !11
  store ptr %25, ptr @timestamp, align 8, !tbaa !11
  ret void

26:                                               ; preds = %14, %50
  %27 = phi i64 [ %59, %50 ], [ 0, %14 ]
  %28 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %29 = add i64 %28, 64
  %30 = load i64, ptr @num_threads, align 8, !tbaa !7
  %31 = shl i64 %30, 3
  %32 = mul i64 %31, %29
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #14
  %34 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %33, ptr %35, align 8, !tbaa !11
  %36 = tail call noalias ptr @malloc(i64 noundef %32) #14
  %37 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %38 = getelementptr inbounds ptr, ptr %37, i64 %27
  store ptr %36, ptr %38, align 8, !tbaa !11
  %39 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %40 = getelementptr inbounds ptr, ptr %39, i64 %27
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %26
  %44 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %45 = getelementptr inbounds ptr, ptr %44, i64 %27
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %26
  %49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  tail call void @exit(i32 noundef 1) #13
  unreachable

50:                                               ; preds = %43
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %41, i8 0, i64 %32, i1 false)
  %51 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %52 = getelementptr inbounds ptr, ptr %51, i64 %27
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %55 = add i64 %54, 64
  %56 = load i64, ptr @num_threads, align 8, !tbaa !7
  %57 = shl i64 %56, 3
  %58 = mul i64 %57, %55
  tail call void @llvm.memset.p0.i64(ptr align 8 %53, i8 0, i64 %58, i1 false)
  %59 = add nuw i64 %27, 1
  %60 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %26, label %18, !llvm.loop !16
}

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #9

; Function Attrs: noprofile nounwind uwtable
define dso_local void @delete_arrays() local_unnamed_addr #2 {
  %1 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %7, %0
  %4 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %4) #15
  %5 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %5) #15
  %6 = load ptr, ptr @counter_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %6) #15
  ret void

7:                                                ; preds = %0, %7
  %8 = phi i64 [ %15, %7 ], [ 0, %0 ]
  %9 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  tail call void @free(ptr noundef %11) #15
  %12 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %13 = getelementptr inbounds ptr, ptr %12, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  tail call void @free(ptr noundef %14) #15
  %15 = add nuw i64 %8, 1
  %16 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %7, label %3, !llvm.loop !17
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #2 {
  store i64 0, ptr @counter, align 8, !tbaa !15
  tail call void @omp_init_lock(ptr noundef nonnull @lock) #15
  store i8 1, ptr @if_start, align 4, !tbaa !15
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  ret void
}

declare void @omp_init_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #2 {
  %1 = alloca [256 x i8], align 1
  store i8 0, ptr @if_start, align 4, !tbaa !15
  tail call void @omp_destroy_lock(ptr noundef nonnull @lock) #15
  %2 = load atomic i64, ptr @counter seq_cst, align 8
  %3 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %4 = load i64, ptr @region, align 8, !tbaa !7
  %5 = getelementptr inbounds i64, ptr %3, i64 %4
  store i64 %2, ptr %5, align 8, !tbaa !7
  %6 = load i64, ptr @region, align 8, !tbaa !7
  %7 = add i64 %6, 1
  store i64 %7, ptr @region, align 8, !tbaa !7
  %8 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %9 = getelementptr inbounds ptr, ptr %8, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  store ptr %10, ptr @bbv, align 8, !tbaa !11
  %11 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %12 = getelementptr inbounds ptr, ptr %11, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  store ptr %13, ptr @timestamp, align 8, !tbaa !11
  %14 = add i64 %6, 101
  %15 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  tail call void @increase_array()
  br label %18

18:                                               ; preds = %0, %17
  store atomic i64 0, ptr @counter seq_cst, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #15
  %19 = tail call i32 @omp_get_max_threads()
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %19) #15
  %21 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.4)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i64, ptr @region, align 8, !tbaa !7
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %52

26:                                               ; preds = %18
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  tail call void @exit(i32 noundef 1) #13
  unreachable

28:                                               ; preds = %67, %23
  %29 = phi i64 [ 0, %23 ], [ %59, %67 ]
  %30 = tail call i32 @fclose(ptr noundef nonnull %21)
  %31 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28, %33
  %34 = phi i64 [ %41, %33 ], [ 0, %28 ]
  %35 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  tail call void @free(ptr noundef %37) #15
  %38 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %39 = getelementptr inbounds ptr, ptr %38, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  tail call void @free(ptr noundef %40) #15
  %41 = add nuw i64 %34, 1
  %42 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %33, label %44, !llvm.loop !17

44:                                               ; preds = %33, %28
  %45 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %45) #15
  %46 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %46) #15
  %47 = load ptr, ptr @counter_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %47) #15
  %48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %49 = load i64, ptr @region, align 8, !tbaa !7
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %49)
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %29)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #15
  ret void

52:                                               ; preds = %23, %67
  %53 = phi i64 [ %68, %67 ], [ 0, %23 ]
  %54 = phi i64 [ %59, %67 ], [ 0, %23 ]
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.6, i64 noundef %53) #15
  %56 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %57 = getelementptr inbounds i64, ptr %56, i64 %53
  %58 = load i64, ptr %57, align 8, !tbaa !7
  %59 = add i64 %58, %54
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.7, i64 noundef %59) #15
  %61 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %62 = getelementptr inbounds i64, ptr %61, i64 %53
  %63 = load i64, ptr %62, align 8, !tbaa !7
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.8, i64 noundef %63) #15
  %65 = load i64, ptr @num_threads, align 8, !tbaa !7
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %79, %52
  %68 = add nuw i64 %53, 1
  %69 = load i64, ptr @region, align 8, !tbaa !7
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %52, label %28, !llvm.loop !18

71:                                               ; preds = %52, %79
  %72 = phi i64 [ %81, %79 ], [ 0, %52 ]
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.9, i64 noundef %72) #15
  %74 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = add i64 %74, 64
  %78 = mul i64 %77, %72
  br label %84

79:                                               ; preds = %84, %71
  %80 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr nonnull %21)
  %81 = add nuw i64 %72, 1
  %82 = load i64, ptr @num_threads, align 8, !tbaa !7
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %71, label %67, !llvm.loop !19

84:                                               ; preds = %76, %84
  %85 = phi i64 [ %99, %84 ], [ 0, %76 ]
  %86 = phi i64 [ %98, %84 ], [ %78, %76 ]
  %87 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %88 = getelementptr inbounds ptr, ptr %87, i64 %53
  %89 = load ptr, ptr %88, align 8, !tbaa !11
  %90 = getelementptr inbounds i64, ptr %89, i64 %86
  %91 = load i64, ptr %90, align 8, !tbaa !7
  %92 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %93 = getelementptr inbounds ptr, ptr %92, i64 %53
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = getelementptr inbounds i64, ptr %94, i64 %86
  %96 = load i64, ptr %95, align 8, !tbaa !7
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.10, i64 noundef %91, i64 noundef %96) #15
  %98 = add i64 %86, 1
  %99 = add nuw i64 %85, 1
  %100 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %84, label %79, !llvm.loop !20
}

declare void @omp_destroy_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }

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
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
