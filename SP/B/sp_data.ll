; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclXb4f2500de4b937ee45b7ae35e9843512 = comdat any

$_QQclX16ff7edbfbe74b6320b5b2126b80685f = comdat any

@_QMsp_dataEbt = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEbuf = global [5 x [102 x double]] zeroinitializer
@_QMsp_dataEc1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc1345 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc1c2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc1c5 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc2dttx1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc2dtty1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc2dttz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc2iv = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc3c4 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc3c4tx3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc3c4ty3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc3c4tz3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc4 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc4dssp = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc5 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEc5dssp = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEce = local_unnamed_addr global [13 x [5 x double]] zeroinitializer
@_QMsp_dataECcompiletime = local_unnamed_addr constant [11 x i8] c"12 Sep 2024"
@_QMsp_dataEcomz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEcomz4 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEcomz5 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEcomz6 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEcon16 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEcon43 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataECconvertdouble = local_unnamed_addr constant i32 0
@_QMsp_dataEconz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataECcs1 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMsp_dataECcs2 = local_unnamed_addr constant [5 x i8] c"$(FC)"
@_QMsp_dataECcs3 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMsp_dataECcs4 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMsp_dataECcs5 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMsp_dataECcs6 = local_unnamed_addr constant [9 x i8] c"$(FFLAGS)"
@_QMsp_dataECcs7 = local_unnamed_addr constant [6 x i8] c"randi8"
@_QMsp_dataEcuf = global [102 x double] zeroinitializer
@_QMsp_dataEdnxm1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdnym1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdnzm1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdssp = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdt = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataECdt_default = local_unnamed_addr constant double 1.000000e-03
@_QMsp_dataEdtdssp = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdttx1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdttx2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdtty1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdtty2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdttz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdttz2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx1tx1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx2tx1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx3tx1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx4 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx4tx1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx5 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdx5tx1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdxmax = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy1ty1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy2ty1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy3ty1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy4 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy4ty1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy5 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdy5ty1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdymax = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz1tz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz2tz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz3tz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz4 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz4tz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz5 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdz5tz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEdzmax = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEforcing = global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 4, i8 28, i8 2, i8 0, [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataEgrid_points = local_unnamed_addr global [3 x i32] zeroinitializer
@_QMsp_dataECimax = local_unnamed_addr constant i32 102
@_QMsp_dataECjmax = local_unnamed_addr constant i32 102
@_QMsp_dataECkmax = local_unnamed_addr constant i32 102
@_QMsp_dataECniter_default = local_unnamed_addr constant i32 400
@_QMsp_dataECnpbversion = local_unnamed_addr constant [5 x i8] c"3.4.2"
@_QMsp_dataEnx2 = local_unnamed_addr global i32 0
@_QMsp_dataEny2 = local_unnamed_addr global i32 0
@_QMsp_dataEnz2 = local_unnamed_addr global i32 0
@_QMsp_dataECproblem_size = local_unnamed_addr constant i32 102
@_QMsp_dataEq = global [102 x double] zeroinitializer
@_QMsp_dataEqs = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataErho_i = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataErhs = global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 4, i8 28, i8 2, i8 0, [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataEspeed = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataEsquare = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataECt_add = local_unnamed_addr constant i32 15
@_QMsp_dataECt_last = local_unnamed_addr constant i32 15
@_QMsp_dataECt_ninvr = local_unnamed_addr constant i32 13
@_QMsp_dataECt_pinvr = local_unnamed_addr constant i32 12
@_QMsp_dataECt_rdis1 = local_unnamed_addr constant i32 9
@_QMsp_dataECt_rdis2 = local_unnamed_addr constant i32 10
@_QMsp_dataECt_rhs = local_unnamed_addr constant i32 5
@_QMsp_dataECt_rhsx = local_unnamed_addr constant i32 2
@_QMsp_dataECt_rhsy = local_unnamed_addr constant i32 3
@_QMsp_dataECt_rhsz = local_unnamed_addr constant i32 4
@_QMsp_dataECt_total = local_unnamed_addr constant i32 1
@_QMsp_dataECt_txinvr = local_unnamed_addr constant i32 11
@_QMsp_dataECt_tzetar = local_unnamed_addr constant i32 14
@_QMsp_dataECt_xsolve = local_unnamed_addr constant i32 6
@_QMsp_dataECt_ysolve = local_unnamed_addr constant i32 7
@_QMsp_dataECt_zsolve = local_unnamed_addr constant i32 8
@_QMsp_dataEtimeron = local_unnamed_addr global i32 0
@_QMsp_dataEtx1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEtx2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEtx3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEty1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEty2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEty3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEtz1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEtz2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEtz3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEu = global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 4, i8 28, i8 2, i8 0, [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataEue = global [5 x [102 x double]] zeroinitializer
@_QMsp_dataEus = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataEvs = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataEws = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMsp_dataExxcon1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataExxcon2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataExxcon3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataExxcon4 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataExxcon5 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEyycon1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEyycon2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEyycon3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEyycon4 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEyycon5 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEzzcon1 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEzzcon2 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEzzcon3 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEzzcon4 = local_unnamed_addr global double 0.000000e+00
@_QMsp_dataEzzcon5 = local_unnamed_addr global double 0.000000e+00
@_QQclXb4f2500de4b937ee45b7ae35e9843512 = linkonce constant [61 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/SP/sp_data.f90\00", comdat
@_QQclX16ff7edbfbe74b6320b5b2126b80685f = linkonce constant [37 x i8] c"Error encountered in allocating space", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMsp_dataEbuf.cache = common global ptr null, align 8
@_QMsp_dataEcuf.cache = common global ptr null, align 8
@_QMsp_dataEq.cache = common global ptr null, align 8
@_QMsp_dataEue.cache = common global ptr null, align 8

define void @alloc_space_() local_unnamed_addr #0 {
  %omp_global_thread_num3 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEbuf, i64 4080, ptr nonnull @_QMsp_dataEbuf.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEcuf, i64 816, ptr nonnull @_QMsp_dataEcuf.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEq, i64 816, ptr nonnull @_QMsp_dataEq.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEue, i64 4080, ptr nonnull @_QMsp_dataEue.cache)
  %5 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEu, i32 0, i64 1, i64 5)
  %6 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEu, i32 1, i64 0, i64 102)
  %7 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEu, i32 2, i64 0, i64 102)
  %8 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEu, i32 3, i64 0, i64 101)
  %9 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataEu, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %0
  %12 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEus, i32 0, i64 0, i64 102)
  %13 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEus, i32 1, i64 0, i64 102)
  %14 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEus, i32 2, i64 0, i64 101)
  %15 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataEus, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %.critedge

17:                                               ; preds = %11
  %18 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEvs, i32 0, i64 0, i64 102)
  %19 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEvs, i32 1, i64 0, i64 102)
  %20 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEvs, i32 2, i64 0, i64 101)
  %21 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataEvs, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %.critedge

23:                                               ; preds = %17
  %24 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEws, i32 0, i64 0, i64 102)
  %25 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEws, i32 1, i64 0, i64 102)
  %26 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEws, i32 2, i64 0, i64 101)
  %27 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataEws, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %.critedge

29:                                               ; preds = %23
  %30 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEqs, i32 0, i64 0, i64 102)
  %31 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEqs, i32 1, i64 0, i64 102)
  %32 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEqs, i32 2, i64 0, i64 101)
  %33 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataEqs, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %.critedge

35:                                               ; preds = %29
  %36 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataErho_i, i32 0, i64 0, i64 102)
  %37 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataErho_i, i32 1, i64 0, i64 102)
  %38 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataErho_i, i32 2, i64 0, i64 101)
  %39 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataErho_i, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %.critedge

41:                                               ; preds = %35
  %42 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEspeed, i32 0, i64 0, i64 102)
  %43 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEspeed, i32 1, i64 0, i64 102)
  %44 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEspeed, i32 2, i64 0, i64 101)
  %45 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataEspeed, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %.critedge

47:                                               ; preds = %41
  %48 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEsquare, i32 0, i64 0, i64 102)
  %49 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEsquare, i32 1, i64 0, i64 102)
  %50 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEsquare, i32 2, i64 0, i64 101)
  %51 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataEsquare, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %.critedge

53:                                               ; preds = %47
  %54 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataErhs, i32 0, i64 1, i64 5)
  %55 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataErhs, i32 1, i64 0, i64 102)
  %56 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataErhs, i32 2, i64 0, i64 102)
  %57 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataErhs, i32 3, i64 0, i64 101)
  %58 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataErhs, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %.critedge

60:                                               ; preds = %53
  %61 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEforcing, i32 0, i64 1, i64 5)
  %62 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEforcing, i32 1, i64 0, i64 102)
  %63 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEforcing, i32 2, i64 0, i64 102)
  %64 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMsp_dataEforcing, i32 3, i64 0, i64 101)
  %65 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMsp_dataEforcing, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 114)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %.critedge

.critedge:                                        ; preds = %53, %47, %41, %35, %29, %23, %17, %11, %0, %60
  %67 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 128)
  %68 = tail call i1 @_FortranAioOutputAscii(ptr %67, ptr nonnull @_QQclX16ff7edbfbe74b6320b5b2126b80685f, i64 37)
  %69 = tail call i32 @_FortranAioEndIoStatement(ptr %67)
  %70 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

71:                                               ; preds = %60
  ret void
}

define void @free_space_() local_unnamed_addr #0 {
  %omp_global_thread_num3 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEbuf, i64 4080, ptr nonnull @_QMsp_dataEbuf.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEcuf, i64 816, ptr nonnull @_QMsp_dataEcuf.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEq, i64 816, ptr nonnull @_QMsp_dataEq.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num3, ptr nonnull @_QMsp_dataEue, i64 4080, ptr nonnull @_QMsp_dataEue.cache)
  %5 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataEu, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %0
  %8 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataEus, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataEvs, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataEws, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataEqs, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataErho_i, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataEspeed, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataEsquare, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataErhs, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMsp_dataEforcing, i1 true, ptr null, ptr nonnull @_QQclXb4f2500de4b937ee45b7ae35e9843512, i32 152)
  br label %33

33:                                               ; preds = %31, %28, %25, %22, %19, %16, %13, %10, %7, %0
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
