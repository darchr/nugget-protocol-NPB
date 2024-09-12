; ModuleID = 'c_timers.c'
source_filename = "c_timers.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@start = internal thread_local global [64 x double] zeroinitializer, align 8
@elapsed = internal thread_local global [64 x double] zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"NPB_TIMER_FLAG\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define dso_local double @elapsed_time() local_unnamed_addr #0 {
  %1 = tail call double @omp_get_wtime()
  ret double %1
}

; Function Attrs: nounwind
declare double @omp_get_wtime() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @timer_clear(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @elapsed)
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %3
  store double 0.000000e+00, ptr %4, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

; Function Attrs: nounwind uwtable
define dso_local void @timer_start(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @omp_get_wtime()
  %3 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @start)
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %4
  store double %2, ptr %5, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @timer_stop(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @omp_get_wtime()
  %3 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @start)
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [64 x double], ptr %3, i64 0, i64 %4
  %6 = load double, ptr %5, align 8, !tbaa !7
  %7 = fsub double %2, %6
  %8 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @elapsed)
  %9 = getelementptr inbounds [64 x double], ptr %8, i64 0, i64 %4
  %10 = load double, ptr %9, align 8, !tbaa !7
  %11 = fadd double %10, %7
  store double %11, ptr %9, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local double @timer_read(i32 noundef %0) local_unnamed_addr #4 {
  %2 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @elapsed)
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [64 x double], ptr %2, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !7
  ret double %5
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @check_timer_flag() local_unnamed_addr #5 {
  %1 = tail call ptr @getenv(ptr noundef nonnull @.str) #9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr %1, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 0
  %6 = add i8 %4, -49
  %7 = icmp ult i8 %6, 9
  %8 = or i1 %5, %7
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.1) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.2) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.3) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.5) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.6) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %21, %18, %15, %12, %9
  br label %33

28:                                               ; preds = %0
  %29 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @fclose(ptr noundef nonnull %29)
  br label %33

33:                                               ; preds = %28, %31, %3, %24, %27
  %34 = phi i32 [ 1, %27 ], [ 0, %24 ], [ 1, %3 ], [ 1, %31 ], [ 0, %28 ]
  ret i32 %34
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
