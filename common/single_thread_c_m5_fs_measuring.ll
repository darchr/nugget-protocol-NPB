; ModuleID = 'single_thread_c_helper.c'
source_filename = "single_thread_c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@warmup_threshold = dso_local local_unnamed_addr global i64 0, align 8
@start_threshold = dso_local local_unnamed_addr global i64 0, align 8
@end_threshold = dso_local local_unnamed_addr global i64 0, align 8
@counter = dso_local local_unnamed_addr global i64 0, align 8
@if_start_not_met = dso_local local_unnamed_addr global i8 0, align 4
@if_warmup_not_met = dso_local local_unnamed_addr global i8 0, align 4
@if_end_not_met = dso_local local_unnamed_addr global i8 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"arch     = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@m5op_addr = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"aarch64\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Warmup threshold: %llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Start threshold: %llu\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"End threshold: %llu\0A\00", align 1
@str = private unnamed_addr constant [20 x i8] c"M5_FS Warmup marker\00", align 1
@str.17 = private unnamed_addr constant [19 x i8] c"M5_FS Start marker\00", align 1
@str.18 = private unnamed_addr constant [17 x i8] c"M5_FS End marker\00", align 1
@str.19 = private unnamed_addr constant [25 x i8] c"Unsupported architecture\00", align 1
@str.20 = private unnamed_addr constant [27 x i8] c"M5_FS ADDR MOP initialized\00", align 1
@str.21 = private unnamed_addr constant [18 x i8] c"M5_FS ROI started\00", align 1
@str.22 = private unnamed_addr constant [16 x i8] c"M5_FS ROI ended\00", align 1
@str.23 = private unnamed_addr constant [19 x i8] c"Warm up marker met\00", align 1
@str.24 = private unnamed_addr constant [17 x i8] c"Start marker met\00", align 1
@str.25 = private unnamed_addr constant [15 x i8] c"End marker met\00", align 1

; Function Attrs: noprofile nounwind uwtable
define dso_local void @warmup_event() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @m5_work_begin_addr(i64 noundef 0, i64 noundef 0) #10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @m5_work_begin_addr(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noprofile nounwind uwtable
define dso_local void @start_event() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  tail call void @m5_work_begin_addr(i64 noundef 0, i64 noundef 0) #10
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @end_event() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @m5_work_end_addr(i64 noundef 0, i64 noundef 0) #10
  ret void
}

declare void @m5_work_end_addr(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #0 {
  %1 = alloca %struct.utsname, align 1
  store i8 1, ptr @if_warmup_not_met, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %1) #10
  %2 = tail call ptr @__errno_location() #11
  store i32 0, ptr %2, align 4, !tbaa !10
  %3 = call i32 @uname(ptr noundef nonnull %1) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call void @perror(ptr noundef nonnull @.str.3) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

6:                                                ; preds = %0
  %7 = getelementptr inbounds i8, ptr %1, i64 260
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %7)
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %7, ptr noundef nonnull dereferenceable(7) @.str.5, i64 7)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i64 4294901760, ptr @m5op_addr, align 8, !tbaa !12
  br label %18

12:                                               ; preds = %6
  %13 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %7, ptr noundef nonnull dereferenceable(8) @.str.6, i64 8)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i64 268500992, ptr @m5op_addr, align 8, !tbaa !12
  br label %18

16:                                               ; preds = %12
  store i64 0, ptr @m5op_addr, align 8, !tbaa !12
  %17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  br label %18

18:                                               ; preds = %15, %16, %11
  call void @map_m5_mem() #10
  %19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  %20 = call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %1) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @uname(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare void @map_m5_mem(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #0 {
  tail call void @unmap_m5_mem() #10
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  ret void
}

declare void @unmap_m5_mem(...) local_unnamed_addr #2

; Function Attrs: nofree noprofile nounwind uwtable
define dso_local void @setup_threshold(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  store i64 %0, ptr @warmup_threshold, align 8, !tbaa !14
  store i64 %1, ptr @start_threshold, align 8, !tbaa !14
  store i64 %2, ptr @end_threshold, align 8, !tbaa !14
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i64 1, ptr @warmup_threshold, align 8, !tbaa !14
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i64 [ 1, %5 ], [ %0, %3 ]
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i64 1, ptr @start_threshold, align 8, !tbaa !14
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store i64 1, ptr @end_threshold, align 8, !tbaa !14
  br label %13

13:                                               ; preds = %12, %10
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %7)
  %15 = load i64, ptr @start_threshold, align 8, !tbaa !14
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %15)
  %17 = load i64, ptr @end_threshold, align 8, !tbaa !14
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %17)
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @warmup_hook() local_unnamed_addr #0 {
  %1 = load i8, ptr @if_warmup_not_met, align 4, !tbaa !7
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @counter, align 8, !tbaa !14
  %5 = add i64 %4, 1
  store i64 %5, ptr @counter, align 8, !tbaa !14
  %6 = load i64, ptr @warmup_threshold, align 8, !tbaa !14
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  store i8 0, ptr @if_warmup_not_met, align 4, !tbaa !7
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @m5_work_begin_addr(i64 noundef 0, i64 noundef 0) #10
  store i64 0, ptr @counter, align 8, !tbaa !14
  store i8 1, ptr @if_start_not_met, align 4, !tbaa !7
  br label %11

11:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @start_hook() local_unnamed_addr #0 {
  %1 = load i8, ptr @if_start_not_met, align 4, !tbaa !7
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @counter, align 8, !tbaa !14
  %5 = add i64 %4, 1
  store i64 %5, ptr @counter, align 8, !tbaa !14
  %6 = load i64, ptr @start_threshold, align 8, !tbaa !14
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  store i8 0, ptr @if_start_not_met, align 4, !tbaa !7
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  tail call void @m5_work_begin_addr(i64 noundef 0, i64 noundef 0) #10
  store i64 0, ptr @counter, align 8, !tbaa !14
  store i8 1, ptr @if_end_not_met, align 4, !tbaa !7
  br label %11

11:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: noprofile nounwind uwtable
define dso_local void @end_hook() local_unnamed_addr #0 {
  %1 = load i8, ptr @if_end_not_met, align 4, !tbaa !7
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @counter, align 8, !tbaa !14
  %5 = add i64 %4, 1
  store i64 %5, ptr @counter, align 8, !tbaa !14
  %6 = load i64, ptr @end_threshold, align 8, !tbaa !14
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  store i8 0, ptr @if_end_not_met, align 4, !tbaa !7
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @m5_work_end_addr(i64 noundef 0, i64 noundef 0) #10
  br label %11

11:                                               ; preds = %3, %8, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

attributes #0 = { noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { cold nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { nofree noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

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
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !8, i64 0}
