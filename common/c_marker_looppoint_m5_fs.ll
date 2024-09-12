; ModuleID = 'c_helper.c'
source_filename = "c_helper.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"arch     = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@m5op_addr = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"aarch64\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"cat /proc/%i/maps > proc_maps.txt;\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"running %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"m5 writefile proc_maps.txt;\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Unsupported architecture\00", align 1
@str.14 = private unnamed_addr constant [37 x i8] c"LOOPPOINT_M5_FS ADDR MOP initialized\00", align 1
@str.15 = private unnamed_addr constant [28 x i8] c"LOOPPOINT_M5_FS ROI started\00", align 1
@str.16 = private unnamed_addr constant [27 x i8] c"ready to call m5 writefile\00", align 1
@str.17 = private unnamed_addr constant [21 x i8] c"calling M5 workbegin\00", align 1
@str.18 = private unnamed_addr constant [19 x i8] c"M5 workend calledr\00", align 1
@str.19 = private unnamed_addr constant [16 x i8] c"M5_FS ROI ended\00", align 1

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

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #2 {
  %1 = alloca %struct.utsname, align 1
  %2 = alloca [262144 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %1) #12
  %3 = tail call ptr @__errno_location() #13
  store i32 0, ptr %3, align 4, !tbaa !7
  %4 = call i32 @uname(ptr noundef nonnull %1) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @perror(ptr noundef nonnull @.str) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

7:                                                ; preds = %0
  %8 = getelementptr inbounds i8, ptr %1, i64 260
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %8)
  %10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %8, ptr noundef nonnull dereferenceable(7) @.str.2, i64 7)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i64 4294901760, ptr @m5op_addr, align 8, !tbaa !11
  br label %19

13:                                               ; preds = %7
  %14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %8, ptr noundef nonnull dereferenceable(8) @.str.3, i64 8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i64 268500992, ptr @m5op_addr, align 8, !tbaa !11
  br label %19

17:                                               ; preds = %13
  store i64 0, ptr @m5op_addr, align 8, !tbaa !11
  %18 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %19

19:                                               ; preds = %16, %17, %12
  call void @map_m5_mem() #12
  %20 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  %21 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  call void @llvm.lifetime.start.p0(i64 262144, ptr nonnull %2) #12
  %22 = call i32 @getpid() #12
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %22) #12
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %2)
  %25 = call i32 @system(ptr noundef nonnull %2) #12
  %26 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %27 = call i32 @system(ptr noundef nonnull @.str.10) #12
  %28 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  call void @m5_work_begin_addr(i64 noundef 0, i64 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 262144, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %1) #12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @uname(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @map_m5_mem(...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @system(ptr nocapture noundef readonly) local_unnamed_addr #9

declare void @m5_work_begin_addr(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #2 {
  tail call void @m5_work_end_addr(i64 noundef 0, i64 noundef 0) #12
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  tail call void @unmap_m5_mem() #12
  ret void
}

declare void @m5_work_end_addr(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @unmap_m5_mem(...) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noprofile nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { cold nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
