; ModuleID = 'c_helper.c'
source_filename = "c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"PAPI_library_init failed due to %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PAPI_set_domain failed due to %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"PAPI_hl_region_begin failed due to %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"PAPI_hl_region_end failed due to %d.\0A\00", align 1
@str = private unnamed_addr constant [12 x i8] c"ROI started\00", align 1
@str.10 = private unnamed_addr constant [17 x i8] c"PAPI initialized\00", align 1
@str.11 = private unnamed_addr constant [18 x i8] c"PAPI region begin\00", align 1
@str.12 = private unnamed_addr constant [16 x i8] c"PAPI region end\00", align 1
@str.13 = private unnamed_addr constant [11 x i8] c"PAPI ended\00", align 1

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

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #1 {
  %1 = tail call i32 @PAPI_library_init(i32 noundef 117440512) #5
  %2 = icmp eq i32 %1, 117440512
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @PAPI_set_domain(i32 noundef 15) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  br label %10

10:                                               ; preds = %8, %5
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %14 = tail call i32 @PAPI_hl_region_begin(ptr noundef nonnull @.str.5) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %14)
  br label %18

18:                                               ; preds = %16, %10
  ret void
}

declare i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @PAPI_set_domain(i32 noundef) local_unnamed_addr #2

declare i32 @PAPI_hl_region_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #1 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  %2 = tail call i32 @PAPI_hl_region_end(ptr noundef nonnull @.str.5) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %2)
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  ret void
}

declare i32 @PAPI_hl_region_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { noinline noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 19.0.0git (git@github.com:studyztp/llvm-project.git ea54371a8e03ebdb4d383b89964705018ddf3d9e)"}
