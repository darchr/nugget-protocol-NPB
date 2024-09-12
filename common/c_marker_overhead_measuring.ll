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
@start = dso_local local_unnamed_addr global %struct.timespec zeroinitializer, align 8
@end = dso_local local_unnamed_addr global %struct.timespec zeroinitializer, align 8
@num_threads = dso_local local_unnamed_addr global i32 0, align 4
@if_warmup_not_met = dso_local local_unnamed_addr global i8 0, align 4
@if_start_not_met = dso_local local_unnamed_addr global i8 0, align 4
@if_end_not_met = dso_local local_unnamed_addr global i8 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"PAPI_library_init failed due to %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"PAPI_set_domain failed due to %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"PAPI_hl_region_begin failed due to %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"PAPI_hl_region_end failed due to %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Warmup threshold: %llu\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Start threshold: %llu\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"End threshold: %llu\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"Warmup marker\00", align 1
@str.16 = private unnamed_addr constant [13 x i8] c"Start marker\00", align 1
@str.17 = private unnamed_addr constant [11 x i8] c"End marker\00", align 1
@str.18 = private unnamed_addr constant [12 x i8] c"ROI started\00", align 1
@str.19 = private unnamed_addr constant [17 x i8] c"PAPI initialized\00", align 1
@str.20 = private unnamed_addr constant [18 x i8] c"PAPI region begin\00", align 1
@str.21 = private unnamed_addr constant [16 x i8] c"PAPI region end\00", align 1
@str.22 = private unnamed_addr constant [11 x i8] c"PAPI ended\00", align 1

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

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @warmup_event() local_unnamed_addr #1 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @start_event() local_unnamed_addr #1 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @end_event() local_unnamed_addr #1 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #3 {
  store i8 1, ptr @if_warmup_not_met, align 4, !tbaa !7
  %1 = tail call i32 @PAPI_library_init(i32 noundef 117440512) #7
  %2 = icmp eq i32 %1, 117440512
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1)
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @PAPI_set_domain(i32 noundef 15) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %6)
  br label %10

10:                                               ; preds = %8, %5
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  %14 = tail call i32 @PAPI_hl_region_begin(ptr noundef nonnull @.str.8) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %14)
  br label %18

18:                                               ; preds = %16, %10
  ret void
}

declare i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare i32 @PAPI_set_domain(i32 noundef) local_unnamed_addr #4

declare i32 @PAPI_hl_region_begin(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #5 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %2 = tail call i32 @PAPI_hl_region_end(ptr noundef nonnull @.str.8) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %2)
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  ret void
}

declare i32 @PAPI_hl_region_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @setup_threshold(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  store i64 %0, ptr @warmup_threshold, align 8, !tbaa !10
  store i64 %1, ptr @start_threshold, align 8, !tbaa !10
  store i64 %2, ptr @end_threshold, align 8, !tbaa !10
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i64 1, ptr @warmup_threshold, align 8, !tbaa !10
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i64 [ 1, %5 ], [ %0, %3 ]
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i64 1, ptr @start_threshold, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store i64 1, ptr @end_threshold, align 8, !tbaa !10
  br label %13

13:                                               ; preds = %12, %10
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %7)
  %15 = load i64, ptr @start_threshold, align 8, !tbaa !10
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %15)
  %17 = load i64, ptr @end_threshold, align 8, !tbaa !10
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %17)
  store i64 0, ptr @warmup_counter, align 8, !tbaa !7
  store i64 0, ptr @start_counter, align 8, !tbaa !7
  store i64 0, ptr @end_counter, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @warmup_hook() local_unnamed_addr #1 {
  %1 = load i8, ptr @if_warmup_not_met, align 4, !tbaa !7
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = atomicrmw add ptr @warmup_counter, i64 1 seq_cst, align 8
  %5 = add i64 %4, 1
  %6 = load i64, ptr @warmup_threshold, align 8, !tbaa !10
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i8 0, ptr @if_warmup_not_met, align 4, !tbaa !7
  store i8 1, ptr @if_start_not_met, align 4, !tbaa !7
  br label %10

10:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @start_hook() local_unnamed_addr #1 {
  %1 = load i8, ptr @if_start_not_met, align 4, !tbaa !7
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = atomicrmw add ptr @start_counter, i64 1 seq_cst, align 8
  %5 = add i64 %4, 1
  %6 = load i64, ptr @start_threshold, align 8, !tbaa !10
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  store i8 0, ptr @if_start_not_met, align 4, !tbaa !7
  store i8 1, ptr @if_end_not_met, align 4, !tbaa !7
  br label %10

10:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @end_hook() local_unnamed_addr #1 {
  %1 = load i8, ptr @if_end_not_met, align 4, !tbaa !7
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = atomicrmw add ptr @end_counter, i64 1 seq_cst, align 8
  %5 = add i64 %4, 1
  %6 = load i64, ptr @end_threshold, align 8, !tbaa !10
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  store i8 0, ptr @if_end_not_met, align 4, !tbaa !7
  store atomic i64 0, ptr @end_counter seq_cst, align 8
  br label %10

10:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nofree noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { noinline noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !8, i64 0}
