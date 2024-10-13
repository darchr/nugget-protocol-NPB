; ModuleID = 'c_helper.c'
source_filename = "c_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"arch     = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@m5op_addr = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"aarch64\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Unsupported architecture\00", align 1
@str.10 = private unnamed_addr constant [27 x i8] c"M5_FS ADDR MOP initialized\00", align 1
@str.11 = private unnamed_addr constant [18 x i8] c"M5_FS ROI started\00", align 1
@str.12 = private unnamed_addr constant [21 x i8] c"calling M5 workbegin\00", align 1
@str.13 = private unnamed_addr constant [19 x i8] c"M5 workend calledr\00", align 1
@str.14 = private unnamed_addr constant [16 x i8] c"M5_FS ROI ended\00", align 1

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

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_begin_() local_unnamed_addr #2 {
  %1 = alloca %struct.utsname, align 1
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %1) #10
  %2 = tail call ptr @__errno_location() #11
  store i32 0, ptr %2, align 4, !tbaa !6
  %3 = call i32 @uname(ptr noundef nonnull %1) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @perror(ptr noundef nonnull @.str) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

6:                                                ; preds = %0
  %7 = getelementptr inbounds i8, ptr %1, i64 260
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %7)
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %7, ptr noundef nonnull dereferenceable(7) @.str.2, i64 7)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i64 4294901760, ptr @m5op_addr, align 8, !tbaa !10
  br label %18

12:                                               ; preds = %6
  %13 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %7, ptr noundef nonnull dereferenceable(8) @.str.3, i64 8)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i64 268500992, ptr @m5op_addr, align 8, !tbaa !10
  br label %18

16:                                               ; preds = %12
  store i64 0, ptr @m5op_addr, align 8, !tbaa !10
  %17 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %18

18:                                               ; preds = %15, %16, %11
  %19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %20 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %21 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  call void @m5_work_begin(i64 noundef 0, i64 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %1) #10
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

declare void @m5_work_begin(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline noprofile nounwind uwtable
define dso_local void @roi_end_() local_unnamed_addr #2 {
  tail call void @m5_work_end(i64 noundef 0, i64 noundef 0) #10
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  ret void
}

declare void @m5_work_end(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

attributes #0 = { mustprogress nofree noprofile norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noprofile nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
