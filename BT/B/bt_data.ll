; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclXaf749999ee0e0f5785d9be89e42dec81 = comdat any

$_QQclX16ff7edbfbe74b6320b5b2126b80685f = comdat any

@_QMbt_dataECaa = local_unnamed_addr constant i32 1
@_QMbt_dataECbb = local_unnamed_addr constant i32 2
@_QMbt_dataECblock_size = local_unnamed_addr constant i32 5
@_QMbt_dataEbuf = global [5 x [103 x double]] zeroinitializer
@_QMbt_dataEc1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc1345 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc1c2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc1c5 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc2dttx1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc2dtty1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc2dttz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc2iv = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc3c4 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc3c4tx3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc3c4ty3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc3c4tz3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc4 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc4dssp = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc5 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEc5dssp = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataECcc = local_unnamed_addr constant i32 3
@_QMbt_dataEce = local_unnamed_addr global [13 x [5 x double]] zeroinitializer
@_QMbt_dataECcompiletime = local_unnamed_addr constant [11 x i8] c"12 Sep 2024"
@_QMbt_dataEcomz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEcomz4 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEcomz5 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEcomz6 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEcon16 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEcon43 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataECconvertdouble = local_unnamed_addr constant i32 0
@_QMbt_dataEconz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataECcs1 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMbt_dataECcs2 = local_unnamed_addr constant [5 x i8] c"$(FC)"
@_QMbt_dataECcs3 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMbt_dataECcs4 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMbt_dataECcs5 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMbt_dataECcs6 = local_unnamed_addr constant [9 x i8] c"$(FFLAGS)"
@_QMbt_dataECcs7 = local_unnamed_addr constant [6 x i8] c"randi8"
@_QMbt_dataEcuf = global [103 x double] zeroinitializer
@_QMbt_dataEdnxm1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdnym1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdnzm1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdssp = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdt = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataECdt_default = local_unnamed_addr constant double 3.000000e-04
@_QMbt_dataEdtdssp = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdttx1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdttx2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdtty1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdtty2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdttz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdttz2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx1tx1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx2tx1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx3tx1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx4 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx4tx1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx5 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdx5tx1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdxmax = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy1ty1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy2ty1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy3ty1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy4 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy4ty1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy5 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdy5ty1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdymax = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz1tz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz2tz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz3tz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz4 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz4tz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz5 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdz5tz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEdzmax = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEelapsed_time = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEforcing = global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 4, i8 28, i8 2, i8 0, [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMbt_dataEgrid_points = local_unnamed_addr global [3 x i32] zeroinitializer
@_QMbt_dataECimax = local_unnamed_addr constant i32 102
@_QMbt_dataECjmax = local_unnamed_addr constant i32 102
@_QMbt_dataECkmax = local_unnamed_addr constant i32 102
@_QMbt_dataECniter_default = local_unnamed_addr constant i32 200
@_QMbt_dataECnpbversion = local_unnamed_addr constant [5 x i8] c"3.4.2"
@_QMbt_dataECproblem_size = local_unnamed_addr constant i32 102
@_QMbt_dataEq = global [103 x double] zeroinitializer
@_QMbt_dataEqs = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMbt_dataErho_i = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMbt_dataErhs = global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 4, i8 28, i8 2, i8 0, [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMbt_dataEsquare = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMbt_dataECt_add = local_unnamed_addr constant i32 11
@_QMbt_dataECt_last = local_unnamed_addr constant i32 11
@_QMbt_dataECt_rdis1 = local_unnamed_addr constant i32 9
@_QMbt_dataECt_rhs = local_unnamed_addr constant i32 5
@_QMbt_dataECt_rhsx = local_unnamed_addr constant i32 2
@_QMbt_dataECt_rhsy = local_unnamed_addr constant i32 3
@_QMbt_dataECt_rhsz = local_unnamed_addr constant i32 4
@_QMbt_dataECt_solsub = local_unnamed_addr constant i32 10
@_QMbt_dataECt_total = local_unnamed_addr constant i32 1
@_QMbt_dataECt_xsolve = local_unnamed_addr constant i32 6
@_QMbt_dataECt_ysolve = local_unnamed_addr constant i32 7
@_QMbt_dataECt_zsolve = local_unnamed_addr constant i32 8
@_QMbt_dataEtimeron = local_unnamed_addr global i32 0
@_QMbt_dataEtx1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEtx2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEtx3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEty1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEty2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEty3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEtz1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEtz2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEtz3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEu = global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 4, i8 28, i8 2, i8 0, [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMbt_dataEue = global [5 x [103 x double]] zeroinitializer
@_QMbt_dataEus = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMbt_dataEvs = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMbt_dataEws = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMbt_dataExxcon1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataExxcon2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataExxcon3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataExxcon4 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataExxcon5 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEyycon1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEyycon2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEyycon3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEyycon4 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEyycon5 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEzzcon1 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEzzcon2 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEzzcon3 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEzzcon4 = local_unnamed_addr global double 0.000000e+00
@_QMbt_dataEzzcon5 = local_unnamed_addr global double 0.000000e+00
@_QQclXaf749999ee0e0f5785d9be89e42dec81 = linkonce constant [61 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/BT/bt_data.f90\00", comdat
@_QQclX16ff7edbfbe74b6320b5b2126b80685f = linkonce constant [37 x i8] c"Error encountered in allocating space", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMbt_dataEbuf.cache = common global ptr null, align 8
@_QMbt_dataEcuf.cache = common global ptr null, align 8
@_QMbt_dataEq.cache = common global ptr null, align 8
@_QMbt_dataEue.cache = common global ptr null, align 8

define void @alloc_space_() local_unnamed_addr #0 {
  %omp_global_thread_num3 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEbuf, i64 4120, ptr nonnull @_QMbt_dataEbuf.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEcuf, i64 824, ptr nonnull @_QMbt_dataEcuf.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEq, i64 824, ptr nonnull @_QMbt_dataEq.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEue, i64 4120, ptr nonnull @_QMbt_dataEue.cache)
  %5 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEus, i32 0, i64 0, i64 102)
  %6 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEus, i32 1, i64 0, i64 102)
  %7 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEus, i32 2, i64 0, i64 101)
  %8 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMbt_dataEus, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 113)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %.critedge

10:                                               ; preds = %0
  %11 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEvs, i32 0, i64 0, i64 102)
  %12 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEvs, i32 1, i64 0, i64 102)
  %13 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEvs, i32 2, i64 0, i64 101)
  %14 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMbt_dataEvs, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 113)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %.critedge

16:                                               ; preds = %10
  %17 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEws, i32 0, i64 0, i64 102)
  %18 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEws, i32 1, i64 0, i64 102)
  %19 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEws, i32 2, i64 0, i64 101)
  %20 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMbt_dataEws, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 113)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %.critedge

22:                                               ; preds = %16
  %23 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEqs, i32 0, i64 0, i64 102)
  %24 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEqs, i32 1, i64 0, i64 102)
  %25 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEqs, i32 2, i64 0, i64 101)
  %26 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMbt_dataEqs, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 113)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %.critedge

28:                                               ; preds = %22
  %29 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataErho_i, i32 0, i64 0, i64 102)
  %30 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataErho_i, i32 1, i64 0, i64 102)
  %31 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataErho_i, i32 2, i64 0, i64 101)
  %32 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMbt_dataErho_i, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 113)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %.critedge

34:                                               ; preds = %28
  %35 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEsquare, i32 0, i64 0, i64 102)
  %36 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEsquare, i32 1, i64 0, i64 102)
  %37 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEsquare, i32 2, i64 0, i64 101)
  %38 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMbt_dataEsquare, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 113)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %.critedge

40:                                               ; preds = %34
  %41 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEforcing, i32 0, i64 1, i64 5)
  %42 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEforcing, i32 1, i64 0, i64 102)
  %43 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEforcing, i32 2, i64 0, i64 102)
  %44 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEforcing, i32 3, i64 0, i64 101)
  %45 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMbt_dataEforcing, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 113)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %.critedge

47:                                               ; preds = %40
  %48 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEu, i32 0, i64 1, i64 5)
  %49 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEu, i32 1, i64 0, i64 102)
  %50 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEu, i32 2, i64 0, i64 102)
  %51 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataEu, i32 3, i64 0, i64 101)
  %52 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMbt_dataEu, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 113)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %.critedge

54:                                               ; preds = %47
  %55 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataErhs, i32 0, i64 1, i64 5)
  %56 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataErhs, i32 1, i64 0, i64 102)
  %57 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataErhs, i32 2, i64 0, i64 102)
  %58 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMbt_dataErhs, i32 3, i64 0, i64 101)
  %59 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMbt_dataErhs, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 113)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %.critedge

.critedge:                                        ; preds = %47, %40, %34, %28, %22, %16, %10, %0, %54
  %61 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 126)
  %62 = tail call i1 @_FortranAioOutputAscii(ptr %61, ptr nonnull @_QQclX16ff7edbfbe74b6320b5b2126b80685f, i64 37)
  %63 = tail call i32 @_FortranAioEndIoStatement(ptr %61)
  %64 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

65:                                               ; preds = %54
  ret void
}

define void @free_space_() local_unnamed_addr #0 {
  %omp_global_thread_num3 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEbuf, i64 4120, ptr nonnull @_QMbt_dataEbuf.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEcuf, i64 824, ptr nonnull @_QMbt_dataEcuf.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEq, i64 824, ptr nonnull @_QMbt_dataEq.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMbt_dataEue, i64 4120, ptr nonnull @_QMbt_dataEue.cache)
  %5 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMbt_dataEus, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 150)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %0
  %8 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMbt_dataEvs, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 150)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMbt_dataEws, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 150)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMbt_dataEqs, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 150)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMbt_dataErho_i, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 150)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMbt_dataEsquare, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 150)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMbt_dataEforcing, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 150)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMbt_dataEu, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 150)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMbt_dataErhs, i1 true, ptr null, ptr nonnull @_QQclXaf749999ee0e0f5785d9be89e42dec81, i32 150)
  br label %30

30:                                               ; preds = %28, %25, %22, %19, %16, %13, %10, %7, %0
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
