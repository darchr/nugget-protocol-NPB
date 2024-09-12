; ModuleID = 'single_thread_c_helper.c'
source_filename = "single_thread_c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@counter = dso_local local_unnamed_addr global i64 0, align 8
@region = dso_local local_unnamed_addr global i64 0, align 8
@total_IR_inst = dso_local local_unnamed_addr global i64 0, align 8
@if_start = dso_local local_unnamed_addr global i8 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"PAPI_hl_region_begin failed due to %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"PAPI_hl_region_end failed due to %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"PAPI_library_init failed due to %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"PAPI_set_domain failed due to %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Region: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Total IR instructions: %llu\0A\00", align 1
@str = private unnamed_addr constant [10 x i8] c"ROI begin\00", align 1
@str.9 = private unnamed_addr constant [8 x i8] c"ROI end\00", align 1

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @start_papi_region() local_unnamed_addr #0 {
  %1 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #5
  %2 = load i64, ptr @region, align 8, !tbaa !7
  %3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %2) #5
  %4 = call i32 @PAPI_hl_region_begin(ptr noundef nonnull %1) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4)
  br label %8

8:                                                ; preds = %6, %0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i32 @PAPI_hl_region_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @end_papi_region() local_unnamed_addr #0 {
  %1 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #5
  %2 = load i64, ptr @region, align 8, !tbaa !7
  %3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %2) #5
  %4 = call i32 @PAPI_hl_region_end(ptr noundef nonnull %1) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %4)
  br label %8

8:                                                ; preds = %6, %0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #5
  ret void
}

declare i32 @PAPI_hl_region_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @bb_hook(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @if_start, align 4, !tbaa !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr @counter, align 8, !tbaa !7
  %7 = add i64 %6, %0
  store i64 %7, ptr @counter, align 8, !tbaa !7
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  tail call void @end_papi_region()
  %10 = load i64, ptr @counter, align 8, !tbaa !7
  %11 = load i64, ptr @total_IR_inst, align 8, !tbaa !7
  %12 = add i64 %11, %10
  store i64 %12, ptr @total_IR_inst, align 8, !tbaa !7
  store i64 0, ptr @counter, align 8, !tbaa !7
  %13 = load i64, ptr @region, align 8, !tbaa !7
  %14 = add i64 %13, 1
  store i64 %14, ptr @region, align 8, !tbaa !7
  tail call void @start_papi_region()
  br label %15

15:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #0 {
  store i8 1, ptr @if_start, align 4, !tbaa !11
  %1 = tail call i32 @PAPI_library_init(i32 noundef 117440512) #5
  %2 = icmp eq i32 %1, 117440512
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1)
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @PAPI_set_domain(i32 noundef 15) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %6)
  br label %10

10:                                               ; preds = %8, %5
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @start_papi_region()
  ret void
}

declare i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #3

declare i32 @PAPI_set_domain(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #0 {
  store i8 0, ptr @if_start, align 4, !tbaa !11
  tail call void @end_papi_region()
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  %2 = load i64, ptr @region, align 8, !tbaa !7
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %2)
  %4 = load i64, ptr @total_IR_inst, align 8, !tbaa !7
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %4)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { noinline noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
