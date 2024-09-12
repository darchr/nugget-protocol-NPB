; ModuleID = 'c_helper.c'
source_filename = "c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@start = dso_local global %struct.timespec zeroinitializer, align 16
@end = dso_local global %struct.timespec zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"Time taken: %lld\0A\00", align 1
@str = private unnamed_addr constant [12 x i8] c"ROI started\00", align 1
@str.3 = private unnamed_addr constant [16 x i8] c"PAPI region end\00", align 1

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
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @start) #5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #1 {
  %1 = tail call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull @end) #5
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %3 = load <2 x i64>, ptr @start, align 16
  %4 = load <2 x i64>, ptr @end, align 16
  %5 = sub <2 x i64> %4, %3
  %6 = extractelement <2 x i64> %5, i64 0
  %7 = mul nsw i64 %6, 1000000000
  %8 = extractelement <2 x i64> %5, i64 1
  %9 = add nsw i64 %8, %7
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %9)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { noinline noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
