; ModuleID = 'c_print_results.c'
source_filename = "c_print_results.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c" Time in seconds =             %12.2f\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c" Total threads   =             %12d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c" Avail threads   =             %12d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c" Mop/s total     =             %12.2f\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c" Mop/s/thread    =             %12.2f\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c" Compile date    =             %12s\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"    CC           = %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"    CLINK        = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"    C_LIB        = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"    C_INC        = %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"    CFLAGS       = %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"    CLINKFLAGS   = %s\0A\00", align 1
@str = private unnamed_addr constant [53 x i8] c" Warning: Threads used differ from threads available\00", align 1
@str.28 = private unnamed_addr constant [44 x i8] c" Verification    =             UNSUCCESSFUL\00", align 1
@str.29 = private unnamed_addr constant [44 x i8] c" Verification    =               SUCCESSFUL\00", align 1
@str.30 = private unnamed_addr constant [44 x i8] c" Verification    =            NOT PERFORMED\00", align 1
@str.31 = private unnamed_addr constant [19 x i8] c"\0A Compile options:\00", align 1
@str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.33 = private unnamed_addr constant [39 x i8] c" Please send all errors/feedbacks to:\0A\00", align 1
@str.34 = private unnamed_addr constant [22 x i8] c" NPB Development Team\00", align 1
@str.35 = private unnamed_addr constant [20 x i8] c" npb@nas.nasa.gov\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @c_print_results(ptr noundef %0, i8 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17) local_unnamed_addr #0 {
  %19 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #4
  store i32 0, ptr %19, align 4, !tbaa !7
  %20 = tail call i32 @omp_get_max_threads()
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @c_print_results.omp_outlined, ptr nonnull %19)
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0)
  %22 = zext i8 %1 to i32
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %22)
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = sext i32 %2 to i64
  %27 = call i32 @llvm.umax.i32(i32 %3, i32 1)
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, %26
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %29)
  br label %33

31:                                               ; preds = %18
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %33

33:                                               ; preds = %31, %25
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %5)
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %6)
  %36 = load i32, ptr %19, align 4, !tbaa !7
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %36)
  br label %40

40:                                               ; preds = %38, %33
  %41 = icmp sgt i32 %20, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %20)
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, ptr %19, align 4, !tbaa !7
  %46 = icmp eq i32 %45, %20
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %49

49:                                               ; preds = %47, %44
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %7)
  %51 = load i32, ptr %19, align 4, !tbaa !7
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = sitofp i32 %51 to double
  %55 = fdiv double %7, %54
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %8)
  %59 = icmp slt i32 %9, 0
  %60 = icmp eq i32 %9, 0
  %61 = select i1 %60, ptr @str.28, ptr @str.29
  %62 = select i1 %59, ptr @str.30, ptr %61
  %63 = call i32 @puts(ptr nonnull dereferenceable(1) %62)
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %10)
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %11)
  %66 = call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  %67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %12)
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef %13)
  %69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %14)
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %15)
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %16)
  %72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %17)
  %73 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  %74 = call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  %75 = call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  %76 = call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @omp_get_max_threads() local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @c_print_results.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2) #3 {
  %4 = load i32, ptr %0, align 4, !tbaa !7
  %5 = tail call i32 @__kmpc_master(ptr nonnull @1, i32 %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @omp_get_num_threads()
  store i32 %8, ptr %2, align 4, !tbaa !7
  tail call void @__kmpc_end_master(ptr nonnull @1, i32 %4)
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_master(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_end_master(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @omp_get_num_threads() local_unnamed_addr #2

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nounwind }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!11 = !{!12}
!12 = !{i64 2, i64 -1, i64 -1, i1 true}
