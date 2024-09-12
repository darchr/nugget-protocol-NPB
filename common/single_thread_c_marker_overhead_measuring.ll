; ModuleID = 'single_thread_c_helper.c'
source_filename = "single_thread_c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@warmup_threshold = dso_local local_unnamed_addr global i64 0, align 8
@start_threshold = dso_local local_unnamed_addr global i64 0, align 8
@end_threshold = dso_local local_unnamed_addr global i64 0, align 8
@counter = dso_local local_unnamed_addr global i64 0, align 8
@if_start_not_met = dso_local local_unnamed_addr global i8 0, align 4
@if_warmup_not_met = dso_local local_unnamed_addr global i8 0, align 4
@if_end_not_met = dso_local local_unnamed_addr global i8 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"PAPI_library_init failed due to %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"PAPI_set_domain failed due to %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"PAPI_hl_region_begin failed due to %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"PAPI_hl_region_end failed due to %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Warmup threshold: %llu\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Start threshold: %llu\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"End threshold: %llu\0A\00", align 1
@str = private unnamed_addr constant [13 x i8] c"Start marker\00", align 1
@str.20 = private unnamed_addr constant [14 x i8] c"Warmup marker\00", align 1
@str.21 = private unnamed_addr constant [11 x i8] c"End marker\00", align 1
@str.23 = private unnamed_addr constant [12 x i8] c"ROI started\00", align 1
@str.24 = private unnamed_addr constant [17 x i8] c"PAPI initialized\00", align 1
@str.25 = private unnamed_addr constant [18 x i8] c"PAPI region begin\00", align 1
@str.26 = private unnamed_addr constant [16 x i8] c"PAPI region end\00", align 1
@str.27 = private unnamed_addr constant [11 x i8] c"PAPI ended\00", align 1
@str.28 = private unnamed_addr constant [8 x i8] c"ROI end\00", align 1
@str.29 = private unnamed_addr constant [19 x i8] c"Warm up marker met\00", align 1
@str.30 = private unnamed_addr constant [17 x i8] c"Start marker met\00", align 1
@str.31 = private unnamed_addr constant [15 x i8] c"End marker met\00", align 1

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @start_event() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @warmup_event() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @end_event() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #2 {
  store i8 1, ptr @if_warmup_not_met, align 4, !tbaa !7
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %2 = tail call i32 @PAPI_library_init(i32 noundef 117440512) #6
  %3 = icmp eq i32 %2, 117440512
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %2)
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32 @PAPI_set_domain(i32 noundef 15) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %7)
  br label %11

11:                                               ; preds = %9, %6
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %15 = tail call i32 @PAPI_hl_region_begin(ptr noundef nonnull @.str.8) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %15)
  br label %19

19:                                               ; preds = %17, %11
  ret void
}

declare i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #3

declare i32 @PAPI_set_domain(i32 noundef) local_unnamed_addr #3

declare i32 @PAPI_hl_region_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #4 {
  %1 = tail call i32 @PAPI_hl_region_end(ptr noundef nonnull @.str.8) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %1)
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  ret void
}

declare i32 @PAPI_hl_region_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @setup_threshold(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %7)
  %15 = load i64, ptr @start_threshold, align 8, !tbaa !10
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %15)
  %17 = load i64, ptr @end_threshold, align 8, !tbaa !10
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %17)
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @warmup_hook() local_unnamed_addr #0 {
  %1 = load i8, ptr @if_warmup_not_met, align 4, !tbaa !7
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @counter, align 8, !tbaa !10
  %5 = add i64 %4, 1
  store i64 %5, ptr @counter, align 8, !tbaa !10
  %6 = load i64, ptr @warmup_threshold, align 8, !tbaa !10
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  store i8 0, ptr @if_warmup_not_met, align 4, !tbaa !7
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  store i64 0, ptr @counter, align 8, !tbaa !10
  store i8 1, ptr @if_start_not_met, align 4, !tbaa !7
  br label %11

11:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @start_hook() local_unnamed_addr #0 {
  %1 = load i8, ptr @if_start_not_met, align 4, !tbaa !7
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @counter, align 8, !tbaa !10
  %5 = add i64 %4, 1
  store i64 %5, ptr @counter, align 8, !tbaa !10
  %6 = load i64, ptr @start_threshold, align 8, !tbaa !10
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  store i8 0, ptr @if_start_not_met, align 4, !tbaa !7
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i64 0, ptr @counter, align 8, !tbaa !10
  store i8 1, ptr @if_end_not_met, align 4, !tbaa !7
  br label %11

11:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @end_hook() local_unnamed_addr #0 {
  %1 = load i8, ptr @if_end_not_met, align 4, !tbaa !7
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @counter, align 8, !tbaa !10
  %5 = add i64 %4, 1
  store i64 %5, ptr @counter, align 8, !tbaa !10
  %6 = load i64, ptr @end_threshold, align 8, !tbaa !10
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  store i8 0, ptr @if_end_not_met, align 4, !tbaa !7
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  br label %11

11:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

attributes #0 = { nofree noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { noinline noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
