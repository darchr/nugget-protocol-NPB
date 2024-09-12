; ModuleID = 'single_thread_c_helper.c'
source_filename = "single_thread_c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@bbv = dso_local local_unnamed_addr global ptr null, align 8
@timestamp = dso_local local_unnamed_addr global ptr null, align 8
@bbv_array = dso_local local_unnamed_addr global ptr null, align 8
@timestamp_array = dso_local local_unnamed_addr global ptr null, align 8
@counter_array = dso_local local_unnamed_addr global ptr null, align 8
@counter = dso_local local_unnamed_addr global i64 0, align 8
@region = dso_local local_unnamed_addr global i64 0, align 8
@total_num_bbs = dso_local local_unnamed_addr global i64 0, align 8
@current_array_size = dso_local local_unnamed_addr global i64 1000, align 8
@if_start = dso_local local_unnamed_addr global i8 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"all_output_1_threads.txt\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Region: %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Total IR instructions: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Total IR instructions in region: %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Thread 0 BBV and Timestamp: [\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%llu:%llu,\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@str.14 = private unnamed_addr constant [22 x i8] c"Error: realloc failed\00", align 1
@str.16 = private unnamed_addr constant [21 x i8] c"Error: malloc failed\00", align 1
@str.17 = private unnamed_addr constant [10 x i8] c"ROI begin\00", align 1
@str.18 = private unnamed_addr constant [8 x i8] c"ROI end\00", align 1
@str.19 = private unnamed_addr constant [24 x i8] c"Error: cannot open file\00", align 1

; Function Attrs: noprofile nounwind uwtable
define dso_local void @increase_array() local_unnamed_addr #0 {
  %1 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %2 = add i64 %1, 1000
  store i64 %2, ptr @current_array_size, align 8, !tbaa !7
  %3 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %4 = shl i64 %2, 3
  %5 = tail call ptr @realloc(ptr noundef %3, i64 noundef %4) #11
  store ptr %5, ptr @bbv_array, align 8, !tbaa !11
  %6 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %7 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %8 = shl i64 %7, 3
  %9 = tail call ptr @realloc(ptr noundef %6, i64 noundef %8) #11
  store ptr %9, ptr @timestamp_array, align 8, !tbaa !11
  %10 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %9, null
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  tail call void @exit(i32 noundef 1) #12
  unreachable

16:                                               ; preds = %0
  %17 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %18 = icmp ugt i64 %17, 999
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = add i64 %17, -1000
  br label %27

21:                                               ; preds = %48, %16
  %22 = phi i64 [ %17, %16 ], [ %55, %48 ]
  %23 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %24 = shl i64 %22, 3
  %25 = tail call ptr @realloc(ptr noundef %23, i64 noundef %24) #11
  store ptr %25, ptr @counter_array, align 8, !tbaa !11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %59

27:                                               ; preds = %19, %48
  %28 = phi i64 [ %54, %48 ], [ %20, %19 ]
  %29 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %30 = shl i64 %29, 3
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #13
  %32 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %33 = getelementptr inbounds ptr, ptr %32, i64 %28
  store ptr %31, ptr %33, align 8, !tbaa !11
  %34 = tail call noalias ptr @malloc(i64 noundef %30) #13
  %35 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %36 = getelementptr inbounds ptr, ptr %35, i64 %28
  store ptr %34, ptr %36, align 8, !tbaa !11
  %37 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %38 = getelementptr inbounds ptr, ptr %37, i64 %28
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %27
  %42 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %43 = getelementptr inbounds ptr, ptr %42, i64 %28
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %27
  %47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  tail call void @exit(i32 noundef 1) #12
  unreachable

48:                                               ; preds = %41
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %39, i8 0, i64 %30, i1 false)
  %49 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %50 = getelementptr inbounds ptr, ptr %49, i64 %28
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %53 = shl i64 %52, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %51, i8 0, i64 %53, i1 false)
  %54 = add nuw i64 %28, 1
  %55 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %27, label %21, !llvm.loop !13

57:                                               ; preds = %21
  %58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  tail call void @exit(i32 noundef 1) #12
  unreachable

59:                                               ; preds = %21
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noprofile nounwind uwtable
define dso_local void @process_data() local_unnamed_addr #0 {
  %1 = load i64, ptr @counter, align 8, !tbaa !7
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
  store i64 0, ptr @counter, align 8, !tbaa !7
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @bb_hook(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @if_start, align 4, !tbaa !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr @counter, align 8, !tbaa !7
  %8 = add i64 %7, %0
  store i64 %8, ptr @counter, align 8, !tbaa !7
  %9 = load ptr, ptr @bbv, align 8, !tbaa !11
  %10 = getelementptr inbounds i64, ptr %9, i64 %1
  %11 = load i64, ptr %10, align 8, !tbaa !7
  %12 = add i64 %11, %0
  store i64 %12, ptr %10, align 8, !tbaa !7
  %13 = load i64, ptr @counter, align 8, !tbaa !7
  %14 = load ptr, ptr @timestamp, align 8, !tbaa !11
  %15 = getelementptr inbounds i64, ptr %14, i64 %1
  store i64 %13, ptr %15, align 8, !tbaa !7
  %16 = icmp ugt i64 %13, %2
  br i1 %16, label %17, label %34

17:                                               ; preds = %6
  %18 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %19 = load i64, ptr @region, align 8, !tbaa !7
  %20 = getelementptr inbounds i64, ptr %18, i64 %19
  store i64 %13, ptr %20, align 8, !tbaa !7
  %21 = load i64, ptr @region, align 8, !tbaa !7
  %22 = add i64 %21, 1
  store i64 %22, ptr @region, align 8, !tbaa !7
  %23 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %24 = getelementptr inbounds ptr, ptr %23, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  store ptr %25, ptr @bbv, align 8, !tbaa !11
  %26 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %27 = getelementptr inbounds ptr, ptr %26, i64 %22
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  store ptr %28, ptr @timestamp, align 8, !tbaa !11
  %29 = add i64 %21, 101
  %30 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  tail call void @increase_array()
  br label %33

33:                                               ; preds = %17, %32
  store i64 0, ptr @counter, align 8, !tbaa !7
  br label %34

34:                                               ; preds = %6, %33, %3
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @init_array(i64 noundef %0) local_unnamed_addr #0 {
  store i64 %0, ptr @total_num_bbs, align 8, !tbaa !7
  %2 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %3 = shl i64 %2, 3
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #13
  store ptr %4, ptr @bbv_array, align 8, !tbaa !11
  %5 = tail call noalias ptr @malloc(i64 noundef %3) #13
  store ptr %5, ptr @timestamp_array, align 8, !tbaa !11
  %6 = tail call noalias ptr @malloc(i64 noundef %3) #13
  store ptr %6, ptr @counter_array, align 8, !tbaa !11
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %5, null
  %9 = or i1 %7, %8
  %10 = icmp eq ptr %6, null
  %11 = or i1 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = icmp eq i64 %2, 0
  br i1 %13, label %19, label %27

14:                                               ; preds = %1
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  tail call void @exit(i32 noundef 1) #12
  unreachable

16:                                               ; preds = %48
  %17 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %18 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi ptr [ %18, %16 ], [ %5, %12 ]
  %21 = phi ptr [ %17, %16 ], [ %4, %12 ]
  %22 = load i64, ptr @region, align 8, !tbaa !7
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  store ptr %24, ptr @bbv, align 8, !tbaa !11
  %25 = getelementptr inbounds ptr, ptr %20, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  store ptr %26, ptr @timestamp, align 8, !tbaa !11
  ret void

27:                                               ; preds = %12, %48
  %28 = phi i64 [ %54, %48 ], [ 0, %12 ]
  %29 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %30 = shl i64 %29, 3
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #13
  %32 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %33 = getelementptr inbounds ptr, ptr %32, i64 %28
  store ptr %31, ptr %33, align 8, !tbaa !11
  %34 = tail call noalias ptr @malloc(i64 noundef %30) #13
  %35 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %36 = getelementptr inbounds ptr, ptr %35, i64 %28
  store ptr %34, ptr %36, align 8, !tbaa !11
  %37 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %38 = getelementptr inbounds ptr, ptr %37, i64 %28
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %27
  %42 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %43 = getelementptr inbounds ptr, ptr %42, i64 %28
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %27
  %47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  tail call void @exit(i32 noundef 1) #12
  unreachable

48:                                               ; preds = %41
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %39, i8 0, i64 %30, i1 false)
  %49 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %50 = getelementptr inbounds ptr, ptr %49, i64 %28
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %53 = shl i64 %52, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %51, i8 0, i64 %53, i1 false)
  %54 = add nuw i64 %28, 1
  %55 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %27, label %16, !llvm.loop !16
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @delete_array() local_unnamed_addr #0 {
  %1 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %7, %0
  %4 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %4) #14
  %5 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %5) #14
  %6 = load ptr, ptr @counter_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %6) #14
  ret void

7:                                                ; preds = %0, %7
  %8 = phi i64 [ %15, %7 ], [ 0, %0 ]
  %9 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  tail call void @free(ptr noundef %11) #14
  %12 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %13 = getelementptr inbounds ptr, ptr %12, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  tail call void @free(ptr noundef %14) #14
  %15 = add nuw i64 %8, 1
  %16 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %7, label %3, !llvm.loop !17
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #8 {
  store i8 1, ptr @if_start, align 4, !tbaa !15
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #0 {
  %1 = alloca [256 x i8], align 1
  store i8 0, ptr @if_start, align 4, !tbaa !15
  %2 = load i64, ptr @counter, align 8, !tbaa !7
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
  store i64 0, ptr @counter, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 1 dereferenceable(25) @.str.3, i64 25, i1 false)
  %19 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.4)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr @region, align 8, !tbaa !7
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %50

24:                                               ; preds = %18
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  tail call void @exit(i32 noundef 1) #12
  unreachable

26:                                               ; preds = %66, %21
  %27 = phi i64 [ 0, %21 ], [ %57, %66 ]
  %28 = tail call i32 @fclose(ptr noundef nonnull %19)
  %29 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %39, %31 ], [ 0, %26 ]
  %33 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %34 = getelementptr inbounds ptr, ptr %33, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  tail call void @free(ptr noundef %35) #14
  %36 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %37 = getelementptr inbounds ptr, ptr %36, i64 %32
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  tail call void @free(ptr noundef %38) #14
  %39 = add nuw i64 %32, 1
  %40 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %31, label %42, !llvm.loop !17

42:                                               ; preds = %31, %26
  %43 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %43) #14
  %44 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %44) #14
  %45 = load ptr, ptr @counter_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %45) #14
  %46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %47 = load i64, ptr @region, align 8, !tbaa !7
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %47)
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %27)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #14
  ret void

50:                                               ; preds = %21, %66
  %51 = phi i64 [ %68, %66 ], [ 0, %21 ]
  %52 = phi i64 [ %57, %66 ], [ 0, %21 ]
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.6, i64 noundef %51) #14
  %54 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %55 = getelementptr inbounds i64, ptr %54, i64 %51
  %56 = load i64, ptr %55, align 8, !tbaa !7
  %57 = add i64 %56, %52
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.7, i64 noundef %57) #14
  %59 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %60 = getelementptr inbounds i64, ptr %59, i64 %51
  %61 = load i64, ptr %60, align 8, !tbaa !7
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.8, i64 noundef %61) #14
  %63 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 29, i64 1, ptr nonnull %19)
  %64 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %71, %50
  %67 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr nonnull %19)
  %68 = add nuw i64 %51, 1
  %69 = load i64, ptr @region, align 8, !tbaa !7
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %50, label %26, !llvm.loop !18

71:                                               ; preds = %50, %71
  %72 = phi i64 [ %84, %71 ], [ 0, %50 ]
  %73 = load ptr, ptr @bbv_array, align 8, !tbaa !11
  %74 = getelementptr inbounds ptr, ptr %73, i64 %51
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = getelementptr inbounds i64, ptr %75, i64 %72
  %77 = load i64, ptr %76, align 8, !tbaa !7
  %78 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %79 = getelementptr inbounds ptr, ptr %78, i64 %51
  %80 = load ptr, ptr %79, align 8, !tbaa !11
  %81 = getelementptr inbounds i64, ptr %80, i64 %72
  %82 = load i64, ptr %81, align 8, !tbaa !7
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.10, i64 noundef %77, i64 noundef %82) #14
  %84 = add nuw i64 %72, 1
  %85 = load i64, ptr @total_num_bbs, align 8, !tbaa !7
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %71, label %66, !llvm.loop !19
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

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
