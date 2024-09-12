; ModuleID = 'c_helper.c'
source_filename = "c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@warmup_counter = dso_local global i64 0, align 8
@start_counter = dso_local global i64 0, align 8
@end_counter = dso_local global i64 0, align 8
@warmup_threshold = dso_local local_unnamed_addr global i64 0, align 8
@start_threshold = dso_local local_unnamed_addr global i64 0, align 8
@end_threshold = dso_local local_unnamed_addr global i64 0, align 8
@start = dso_local global %struct.timespec zeroinitializer, align 16
@end = dso_local global %struct.timespec zeroinitializer, align 16
@num_threads = dso_local local_unnamed_addr global i32 0, align 4
@if_warmup_not_met = dso_local local_unnamed_addr global i8 0, align 4
@if_start_not_met = dso_local local_unnamed_addr global i8 0, align 4
@if_end_not_met = dso_local local_unnamed_addr global i8 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Time taken: %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Warmup threshold: %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Start threshold: %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"End threshold: %llu\0A\00", align 1
@str = private unnamed_addr constant [24 x i8] c"Now exiting the program\00", align 1
@str.7 = private unnamed_addr constant [10 x i8] c"ROI begin\00", align 1
@str.8 = private unnamed_addr constant [8 x i8] c"ROI end\00", align 1

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

; Function Attrs: mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @warmup_event() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @start_event() local_unnamed_addr #1 {
  %1 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @start) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noprofile noreturn nounwind uwtable
define dso_local void @end_event() local_unnamed_addr #3 {
  %1 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @end) #9
  %2 = load <2 x i64>, ptr @start, align 16
  %3 = load <2 x i64>, ptr @end, align 16
  %4 = sub <2 x i64> %3, %2
  %5 = extractelement <2 x i64> %4, i64 0
  %6 = mul nsw i64 %5, 1000000000
  %7 = extractelement <2 x i64> %4, i64 1
  %8 = add nsw i64 %7, %6
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %8)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 0) #10
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #1 {
  %1 = tail call i32 @omp_get_max_threads()
  store i32 %1, ptr @num_threads, align 4, !tbaa !7
  store i8 1, ptr @if_warmup_not_met, align 4, !tbaa !11
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  ret void
}

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #2

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #6 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @setup_threshold(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  store i64 %0, ptr @warmup_threshold, align 8, !tbaa !12
  store i64 %1, ptr @start_threshold, align 8, !tbaa !12
  store i64 %2, ptr @end_threshold, align 8, !tbaa !12
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i64 1, ptr @warmup_threshold, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i64 [ 1, %5 ], [ %0, %3 ]
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i64 1, ptr @start_threshold, align 8, !tbaa !12
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store i64 1, ptr @end_threshold, align 8, !tbaa !12
  br label %13

13:                                               ; preds = %12, %10
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %7)
  %15 = load i64, ptr @start_threshold, align 8, !tbaa !12
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %15)
  %17 = load i64, ptr @end_threshold, align 8, !tbaa !12
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %17)
  store i64 0, ptr @warmup_counter, align 8, !tbaa !11
  store i64 0, ptr @start_counter, align 8, !tbaa !11
  store i64 0, ptr @end_counter, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noprofile norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @warmup_hook() local_unnamed_addr #7 {
  %1 = load i8, ptr @if_warmup_not_met, align 4, !tbaa !11
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = atomicrmw add ptr @warmup_counter, i64 1 seq_cst, align 8
  %5 = add i64 %4, 1
  %6 = load i64, ptr @warmup_threshold, align 8, !tbaa !12
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store i8 0, ptr @if_warmup_not_met, align 4, !tbaa !11
  store i8 1, ptr @if_start_not_met, align 4, !tbaa !11
  br label %9

9:                                                ; preds = %3, %8, %0
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @start_hook() local_unnamed_addr #1 {
  %1 = load i8, ptr @if_start_not_met, align 4, !tbaa !11
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = atomicrmw add ptr @start_counter, i64 1 seq_cst, align 8
  %5 = add i64 %4, 1
  %6 = load i64, ptr @start_threshold, align 8, !tbaa !12
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @start) #9
  store i8 0, ptr @if_start_not_met, align 4, !tbaa !11
  store i8 1, ptr @if_end_not_met, align 4, !tbaa !11
  br label %10

10:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @end_hook() local_unnamed_addr #1 {
  %1 = load i8, ptr @if_end_not_met, align 4, !tbaa !11
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = atomicrmw add ptr @end_counter, i64 1 seq_cst, align 8
  %5 = add i64 %4, 1
  %6 = load i64, ptr @end_threshold, align 8, !tbaa !12
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @end) #9
  %10 = load <2 x i64>, ptr @start, align 16
  %11 = load <2 x i64>, ptr @end, align 16
  %12 = sub <2 x i64> %11, %10
  %13 = extractelement <2 x i64> %12, i64 0
  %14 = mul nsw i64 %13, 1000000000
  %15 = extractelement <2 x i64> %12, i64 1
  %16 = add nsw i64 %15, %14
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %16)
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 0) #10
  unreachable

19:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { noprofile noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nofree noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { mustprogress nofree noprofile norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long long", !9, i64 0}
