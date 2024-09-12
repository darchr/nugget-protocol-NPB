; ModuleID = 'c_helper.c'
source_filename = "c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.omp_lock_t = type { ptr }
%struct.timespec = type { i64, i64 }

@counter = dso_local global i64 0, align 8
@lock = dso_local global %struct.omp_lock_t zeroinitializer, align 8
@timestamp_array = dso_local local_unnamed_addr global ptr null, align 8
@counter_array = dso_local local_unnamed_addr global ptr null, align 8
@start = dso_local global %struct.timespec zeroinitializer, align 16
@end = dso_local global %struct.timespec zeroinitializer, align 16
@wait = dso_local local_unnamed_addr global i8 0, align 4
@if_start = dso_local local_unnamed_addr global i8 0, align 4
@region = dso_local local_unnamed_addr global i64 0, align 8
@total_IR_inst = dso_local local_unnamed_addr global i64 0, align 8
@current_array_size = dso_local local_unnamed_addr global i64 1000, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Region: %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Total IR instructions: %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"all_output_%d_threads.txt\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Time: %llu\0A\00", align 1
@str.9 = private unnamed_addr constant [10 x i8] c"ROI begin\00", align 1
@str.10 = private unnamed_addr constant [71 x i8] c"Failed to allocate memory for timestamp_array and counter_array arrays\00", align 1
@str.11 = private unnamed_addr constant [8 x i8] c"ROI end\00", align 1
@str.12 = private unnamed_addr constant [25 x i8] c"Faile to open outputfile\00", align 1

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
  %3 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %4 = shl i64 %2, 3
  %5 = tail call ptr @realloc(ptr noundef %3, i64 noundef %4) #11
  store ptr %5, ptr @timestamp_array, align 8, !tbaa !11
  %6 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %7 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %8 = shl i64 %7, 3
  %9 = tail call ptr @realloc(ptr noundef %6, i64 noundef %8) #11
  store ptr %9, ptr @counter_array, align 8, !tbaa !11
  %10 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %9, null
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  tail call void @exit(i32 noundef 1) #12
  unreachable

16:                                               ; preds = %0
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: noprofile nounwind uwtable
define dso_local void @start_papi_region() local_unnamed_addr #2 {
  %1 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @start) #13
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noprofile nounwind uwtable
define dso_local void @end_papi_region() local_unnamed_addr #2 {
  %1 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @end) #13
  %2 = load <2 x i64>, ptr @start, align 16
  %3 = load <2 x i64>, ptr @end, align 16
  %4 = sub <2 x i64> %3, %2
  %5 = extractelement <2 x i64> %4, i64 0
  %6 = mul nsw i64 %5, 1000000000
  %7 = extractelement <2 x i64> %4, i64 1
  %8 = add nsw i64 %7, %6
  %9 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %10 = load i64, ptr @region, align 8, !tbaa !7
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  store i64 %8, ptr %11, align 8, !tbaa !7
  %12 = load atomic i64, ptr @counter seq_cst, align 8
  %13 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %14 = load i64, ptr @region, align 8, !tbaa !7
  %15 = getelementptr inbounds i64, ptr %13, i64 %14
  store i64 %12, ptr %15, align 8, !tbaa !7
  %16 = load i64, ptr @region, align 8, !tbaa !7
  %17 = getelementptr inbounds i64, ptr %13, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !7
  %19 = load i64, ptr @total_IR_inst, align 8, !tbaa !7
  %20 = add i64 %19, %18
  store i64 %20, ptr @total_IR_inst, align 8, !tbaa !7
  %21 = add i64 %16, 1
  store i64 %21, ptr @region, align 8, !tbaa !7
  %22 = add i64 %16, 101
  %23 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %0
  %26 = add i64 %23, 1000
  store i64 %26, ptr @current_array_size, align 8, !tbaa !7
  %27 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %28 = shl i64 %26, 3
  %29 = tail call ptr @realloc(ptr noundef %27, i64 noundef %28) #11
  store ptr %29, ptr @timestamp_array, align 8, !tbaa !11
  %30 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %31 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %32 = shl i64 %31, 3
  %33 = tail call ptr @realloc(ptr noundef %30, i64 noundef %32) #11
  store ptr %33, ptr @counter_array, align 8, !tbaa !11
  %34 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %35 = icmp eq ptr %34, null
  %36 = icmp eq ptr %33, null
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  tail call void @exit(i32 noundef 1) #12
  unreachable

40:                                               ; preds = %25, %0
  store atomic i64 0, ptr @counter seq_cst, align 8
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @bb_hook(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = load i8, ptr @if_start, align 4, !tbaa !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr @wait, align 4, !tbaa !13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @omp_set_lock(ptr noundef nonnull @lock) #13
  tail call void @omp_unset_lock(ptr noundef nonnull @lock) #13
  br label %9

9:                                                ; preds = %8, %5
  %10 = atomicrmw add ptr @counter, i64 %0 seq_cst, align 8
  %11 = add i64 %10, %0
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  tail call void @omp_set_lock(ptr noundef nonnull @lock) #13
  %14 = load atomic i64, ptr @counter seq_cst, align 8
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  store i8 1, ptr @wait, align 4, !tbaa !13
  tail call void @end_papi_region()
  store i8 0, ptr @wait, align 4, !tbaa !13
  %17 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @start) #13
  br label %18

18:                                               ; preds = %16, %13
  tail call void @omp_unset_lock(ptr noundef nonnull @lock) #13
  br label %19

19:                                               ; preds = %9, %18, %2
  ret void
}

declare void @omp_set_lock(ptr noundef) local_unnamed_addr #7

declare void @omp_unset_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #2 {
  store i64 0, ptr @counter, align 8, !tbaa !13
  tail call void @omp_init_lock(ptr noundef nonnull @lock) #13
  store i8 1, ptr @if_start, align 4, !tbaa !13
  %1 = load i64, ptr @current_array_size, align 8, !tbaa !7
  %2 = shl i64 %1, 3
  %3 = tail call noalias ptr @malloc(i64 noundef %2) #14
  store ptr %3, ptr @timestamp_array, align 8, !tbaa !11
  %4 = tail call noalias ptr @malloc(i64 noundef %2) #14
  store ptr %4, ptr @counter_array, align 8, !tbaa !11
  %5 = icmp eq ptr %3, null
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  tail call void @exit(i32 noundef 1) #12
  unreachable

10:                                               ; preds = %0
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  %12 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @start) #13
  ret void
}

declare void @omp_init_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #2 {
  %1 = alloca [256 x i8], align 1
  tail call void @end_papi_region()
  store i8 0, ptr @if_start, align 4, !tbaa !13
  tail call void @omp_destroy_lock(ptr noundef nonnull @lock) #13
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %3 = load i64, ptr @region, align 8, !tbaa !7
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %3)
  %5 = load i64, ptr @total_IR_inst, align 8, !tbaa !7
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %5)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #13
  %7 = tail call i32 @omp_get_max_threads()
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %7) #13
  %9 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.6)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i64, ptr @region, align 8, !tbaa !7
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %20

14:                                               ; preds = %0
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  tail call void @exit(i32 noundef 1) #12
  unreachable

16:                                               ; preds = %20, %11
  %17 = tail call i32 @fclose(ptr noundef nonnull %9)
  %18 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %18) #13
  %19 = load ptr, ptr @counter_array, align 8, !tbaa !11
  tail call void @free(ptr noundef %19) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #13
  ret void

20:                                               ; preds = %11, %20
  %21 = phi i64 [ %31, %20 ], [ 0, %11 ]
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.3, i64 noundef %21) #13
  %23 = load ptr, ptr @counter_array, align 8, !tbaa !11
  %24 = getelementptr inbounds i64, ptr %23, i64 %21
  %25 = load i64, ptr %24, align 8, !tbaa !7
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.4, i64 noundef %25) #13
  %27 = load ptr, ptr @timestamp_array, align 8, !tbaa !11
  %28 = getelementptr inbounds i64, ptr %27, i64 %21
  %29 = load i64, ptr %28, align 8, !tbaa !7
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.8, i64 noundef %29) #13
  %31 = add nuw i64 %21, 1
  %32 = load i64, ptr @region, align 8, !tbaa !7
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %20, label %16, !llvm.loop !14
}

declare void @omp_destroy_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

attributes #0 = { mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
