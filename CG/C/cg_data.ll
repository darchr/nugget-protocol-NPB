; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0 = comdat any

$_QQclX16ff7edbfbe74b6320b5b2126b80685f = comdat any

@_QMcg_dataEa = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 28, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)]] }
@_QMcg_dataEacol = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 9, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64)]] }
@_QMcg_dataEaelt = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 28, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)]] }
@_QMcg_dataEamult = global double 0.000000e+00
@_QMcg_dataEarow = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 9, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64)]] }
@_QMcg_dataEcolidx = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 9, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64)]] }
@_QMcg_dataECcompiletime = local_unnamed_addr constant [11 x i8] c"12 Sep 2024"
@_QMcg_dataECconvertdouble = local_unnamed_addr constant i32 0
@_QMcg_dataECcs1 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMcg_dataECcs2 = local_unnamed_addr constant [5 x i8] c"$(FC)"
@_QMcg_dataECcs3 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMcg_dataECcs4 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMcg_dataECcs5 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMcg_dataECcs6 = local_unnamed_addr constant [9 x i8] c"$(FFLAGS)"
@_QMcg_dataECcs7 = local_unnamed_addr constant [6 x i8] c"randi8"
@_QMcg_dataEfirstcol = local_unnamed_addr global i32 0
@_QMcg_dataEfirstrow = local_unnamed_addr global i32 0
@_QMcg_dataEiv = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 9, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64)]] }
@_QMcg_dataECkz = local_unnamed_addr constant i32 4
@_QMcg_dataElastcol = local_unnamed_addr global i32 0
@_QMcg_dataElastrow = local_unnamed_addr global i32 0
@_QMcg_dataECna = local_unnamed_addr constant i32 150000
@_QMcg_dataEnaa = local_unnamed_addr global i32 0
@_QMcg_dataECnaz = local_unnamed_addr constant i32 2400000
@_QMcg_dataECniter = local_unnamed_addr constant i32 75
@_QMcg_dataECnonzer = local_unnamed_addr constant i32 15
@_QMcg_dataECnpbversion = local_unnamed_addr constant [5 x i8] c"3.4.2"
@_QMcg_dataECnz = local_unnamed_addr constant i32 38400000
@_QMcg_dataEnzz = local_unnamed_addr global i32 0
@_QMcg_dataEp = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 28, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)]] }
@_QMcg_dataEq = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 28, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)]] }
@_QMcg_dataEr = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 28, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)]] }
@_QMcg_dataECrcond = local_unnamed_addr constant double 1.000000e-01
@_QMcg_dataErowstr = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 9, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64)]] }
@_QMcg_dataECshift = local_unnamed_addr constant double 1.100000e+02
@_QMcg_dataECt_bench = local_unnamed_addr constant i32 2
@_QMcg_dataECt_conj_grad = local_unnamed_addr constant i32 3
@_QMcg_dataECt_init = local_unnamed_addr constant i32 1
@_QMcg_dataECt_last = local_unnamed_addr constant i32 3
@_QMcg_dataEtimeron = local_unnamed_addr global i32 0
@_QMcg_dataEtran = global double 0.000000e+00
@_QMcg_dataEv = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 28, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)]] }
@_QMcg_dataEx = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 28, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)]] }
@_QMcg_dataEz = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 28, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)]] }
@_QMtinfoEihigh = local_unnamed_addr global i32 0
@_QMtinfoEilow = local_unnamed_addr global i32 0
@_QMtinfoElast_n = local_unnamed_addr global [1025 x i32] zeroinitializer
@_QMtinfoECmax_threads = local_unnamed_addr constant i32 1024
@_QMtinfoEmyid = local_unnamed_addr global i32 0
@_QMtinfoEnum_threads = local_unnamed_addr global i32 0
@_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0 = linkonce constant [61 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/CG/cg_data.f90\00", comdat
@_QQclX16ff7edbfbe74b6320b5b2126b80685f = linkonce constant [37 x i8] c"Error encountered in allocating space", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMcg_dataEamult.cache = common global ptr null, align 8
@_QMcg_dataEtran.cache = common global ptr null, align 8

define void @alloc_space_() local_unnamed_addr #0 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMcg_dataEamult, i64 8, ptr nonnull @_QMcg_dataEamult.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMcg_dataEtran, i64 8, ptr nonnull @_QMcg_dataEtran.cache)
  %3 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEcolidx, i32 0, i64 1, i64 38400000)
  %4 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEcolidx, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %.critedge

6:                                                ; preds = %0
  %7 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataErowstr, i32 0, i64 1, i64 150001)
  %8 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataErowstr, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %.critedge

10:                                               ; preds = %6
  %11 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEiv, i32 0, i64 1, i64 38550000)
  %12 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEiv, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %.critedge

14:                                               ; preds = %10
  %15 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEarow, i32 0, i64 1, i64 150000)
  %16 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEarow, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %.critedge

18:                                               ; preds = %14
  %19 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEacol, i32 0, i64 1, i64 2400000)
  %20 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEacol, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %18
  %23 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEv, i32 0, i64 1, i64 38400000)
  %24 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEv, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %.critedge

26:                                               ; preds = %22
  %27 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEaelt, i32 0, i64 1, i64 2400000)
  %28 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEaelt, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %.critedge

30:                                               ; preds = %26
  %31 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEa, i32 0, i64 1, i64 38400000)
  %32 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEa, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %.critedge

34:                                               ; preds = %30
  %35 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEx, i32 0, i64 1, i64 150002)
  %36 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEx, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %.critedge

38:                                               ; preds = %34
  %39 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEz, i32 0, i64 1, i64 150002)
  %40 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEz, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %.critedge

42:                                               ; preds = %38
  %43 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEp, i32 0, i64 1, i64 150002)
  %44 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEp, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %.critedge

46:                                               ; preds = %42
  %47 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEq, i32 0, i64 1, i64 150002)
  %48 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEq, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %.critedge

50:                                               ; preds = %46
  %51 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMcg_dataEr, i32 0, i64 1, i64 150002)
  %52 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMcg_dataEr, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 100)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %.critedge

.critedge:                                        ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6, %0, %50
  %54 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 112)
  %55 = tail call i1 @_FortranAioOutputAscii(ptr %54, ptr nonnull @_QQclX16ff7edbfbe74b6320b5b2126b80685f, i64 37)
  %56 = tail call i32 @_FortranAioEndIoStatement(ptr %54)
  %57 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

58:                                               ; preds = %50
  ret void
}

define void @free_space_() local_unnamed_addr #0 {
  %omp_global_thread_num1 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMcg_dataEamult, i64 8, ptr nonnull @_QMcg_dataEamult.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num1, ptr nonnull @_QMcg_dataEtran, i64 8, ptr nonnull @_QMcg_dataEtran.cache)
  %3 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEcolidx, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %0
  %6 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataErowstr, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %5
  %9 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEiv, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEarow, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEacol, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEv, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEaelt, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEa, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEx, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEz, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEp, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEq, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMcg_dataEr, i1 true, ptr null, ptr nonnull @_QQclXf4ab9d3c33324f8b0ac9099adb1b03d0, i32 136)
  br label %40

40:                                               ; preds = %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %0
  ret void
}

declare {} @_FortranAAllocatableSetBounds(ptr, i32, i64, i64) local_unnamed_addr

declare i32 @_FortranAAllocatableAllocate(ptr, i1 zeroext, ptr, ptr, i32) local_unnamed_addr

declare ptr @_FortranAioBeginExternalListOutput(i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputAscii(ptr, ptr, i64) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare {} @_FortranAStopStatement(i32, i1 zeroext, i1 zeroext) local_unnamed_addr

declare i32 @_FortranAAllocatableDeallocate(ptr, i1 zeroext, ptr, ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #1

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
