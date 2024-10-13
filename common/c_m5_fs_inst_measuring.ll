; ModuleID = 'c_helper.c'
source_filename = "c_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@warmup_counter = dso_local global i64 0, align 8
@start_counter = dso_local global i64 0, align 8
@end_counter = dso_local global i64 0, align 8
@warmup_threshold = dso_local local_unnamed_addr global i64 0, align 8
@start_threshold = dso_local local_unnamed_addr global i64 0, align 8
@end_threshold = dso_local local_unnamed_addr global i64 0, align 8
@start = dso_local local_unnamed_addr global %struct.timespec zeroinitializer, align 8
@end = dso_local local_unnamed_addr global %struct.timespec zeroinitializer, align 8
@num_threads = dso_local local_unnamed_addr global i32 0, align 4
@if_warmup_not_met = dso_local local_unnamed_addr global i8 0, align 1
@if_start_not_met = dso_local local_unnamed_addr global i8 0, align 1
@if_end_not_met = dso_local local_unnamed_addr global i8 0, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"arch     = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@m5op_addr = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"aarch64\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Warmup threshold: %llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Start threshold: %llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"End threshold: %llu\0A\00", align 1
@str = private unnamed_addr constant [20 x i8] c"M5_FS Warmup marker\00", align 1
@str.13 = private unnamed_addr constant [19 x i8] c"M5_FS Start marker\00", align 1
@str.14 = private unnamed_addr constant [17 x i8] c"M5_FS End marker\00", align 1
@str.15 = private unnamed_addr constant [25 x i8] c"Unsupported architecture\00", align 1
@str.16 = private unnamed_addr constant [18 x i8] c"M5_FS ROI started\00", align 1
@str.17 = private unnamed_addr constant [16 x i8] c"M5_FS ROI ended\00", align 1

; Function Attrs: mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @calculate_nsec_difference(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = sub i64 %3, %1
  %6 = sub nsw i64 %2, %0
  %7 = mul nsw i64 %6, 1000000000
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noprofile nounwind uwtable
define dso_local void @warmup_event() local_unnamed_addr #2 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @m5_work_begin(i64 noundef 0, i64 noundef 0) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @m5_work_begin(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noprofile nounwind uwtable
define dso_local void @start_event() local_unnamed_addr #2 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  tail call void @m5_work_begin(i64 noundef 0, i64 noundef 0) #12
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @end_event() local_unnamed_addr #2 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  tail call void @m5_work_end(i64 noundef 0, i64 noundef 0) #12
  ret void
}

declare void @m5_work_end(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #2 {
  %1 = alloca %struct.utsname, align 1
  %2 = tail call i32 @omp_get_max_threads()
  store i32 %2, ptr @num_threads, align 4, !tbaa !6
  store i8 1, ptr @if_warmup_not_met, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %1) #12
  %3 = tail call ptr @__errno_location() #13
  store i32 0, ptr %3, align 4, !tbaa !6
  %4 = call i32 @uname(ptr noundef nonnull %1) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @perror(ptr noundef nonnull @.str.3) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

7:                                                ; preds = %0
  %8 = getelementptr inbounds i8, ptr %1, i64 260
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %8)
  %10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %8, ptr noundef nonnull dereferenceable(7) @.str.5, i64 7)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i64 4294901760, ptr @m5op_addr, align 8, !tbaa !11
  br label %19

13:                                               ; preds = %7
  %14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %8, ptr noundef nonnull dereferenceable(8) @.str.6, i64 8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i64 268500992, ptr @m5op_addr, align 8, !tbaa !11
  br label %19

17:                                               ; preds = %13
  store i64 0, ptr @m5op_addr, align 8, !tbaa !11
  %18 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  br label %19

19:                                               ; preds = %16, %17, %12
  %20 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %1) #12
  ret void
}

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @uname(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #9 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  ret void
}

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @setup_threshold(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  store i64 %0, ptr @warmup_threshold, align 8, !tbaa !13
  store i64 %1, ptr @start_threshold, align 8, !tbaa !13
  store i64 %2, ptr @end_threshold, align 8, !tbaa !13
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i64 1, ptr @warmup_threshold, align 8, !tbaa !13
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i64 [ 1, %5 ], [ %0, %3 ]
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i64 1, ptr @start_threshold, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store i64 1, ptr @end_threshold, align 8, !tbaa !13
  br label %13

13:                                               ; preds = %12, %10
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %7)
  %15 = load i64, ptr @start_threshold, align 8, !tbaa !13
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %15)
  %17 = load i64, ptr @end_threshold, align 8, !tbaa !13
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %17)
  store i64 0, ptr @warmup_counter, align 8, !tbaa !10
  store i64 0, ptr @start_counter, align 8, !tbaa !10
  store i64 0, ptr @end_counter, align 8, !tbaa !10
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @warmup_hook() local_unnamed_addr #2 {
  %1 = load i8, ptr @if_warmup_not_met, align 1, !tbaa !10
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = atomicrmw add ptr @warmup_counter, i64 1 seq_cst, align 8
  %5 = add i64 %4, 1
  %6 = load i64, ptr @warmup_threshold, align 8, !tbaa !13
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @m5_work_begin(i64 noundef 0, i64 noundef 0) #12
  store i8 0, ptr @if_warmup_not_met, align 1, !tbaa !10
  store i8 1, ptr @if_start_not_met, align 1, !tbaa !10
  br label %10

10:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @start_hook() local_unnamed_addr #2 {
  %1 = load i8, ptr @if_start_not_met, align 1, !tbaa !10
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = atomicrmw add ptr @start_counter, i64 1 seq_cst, align 8
  %5 = add i64 %4, 1
  %6 = load i64, ptr @start_threshold, align 8, !tbaa !13
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  tail call void @m5_work_begin(i64 noundef 0, i64 noundef 0) #12
  store i8 0, ptr @if_start_not_met, align 1, !tbaa !10
  store i8 1, ptr @if_end_not_met, align 1, !tbaa !10
  br label %10

10:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @end_hook() local_unnamed_addr #2 {
  %1 = load i8, ptr @if_end_not_met, align 1, !tbaa !10
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = atomicrmw add ptr @end_counter, i64 1 seq_cst, align 8
  %5 = add i64 %4, 1
  %6 = load i64, ptr @end_threshold, align 8, !tbaa !13
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  tail call void @m5_work_end(i64 noundef 0, i64 noundef 0) #12
  store i8 0, ptr @if_end_not_met, align 1, !tbaa !10
  store atomic i64 0, ptr @end_counter seq_cst, align 8
  br label %10

10:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

attributes #0 = { mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noprofile nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noprofile nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }

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
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !8, i64 0}
