; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX4c6075a09aa97009f9275aa44c53ff9f = comdat any

$_QQclX16ff7edbfbe74b6320b5b2126b80685f = comdat any

@_QMlu_dataEa = global [102 x [5 x [5 x double]]] zeroinitializer
@_QMlu_dataEb = global [102 x [5 x [5 x double]]] zeroinitializer
@_QMlu_dataEc = global [102 x [5 x [5 x double]]] zeroinitializer
@_QMlu_dataECc1 = local_unnamed_addr constant double 1.400000e+00
@_QMlu_dataECc2 = local_unnamed_addr constant double 4.000000e-01
@_QMlu_dataECc3 = local_unnamed_addr constant double 1.000000e-01
@_QMlu_dataECc4 = local_unnamed_addr constant double 1.000000e+00
@_QMlu_dataECc5 = local_unnamed_addr constant double 1.400000e+00
@_QMlu_dataEce = local_unnamed_addr global [13 x [5 x double]] zeroinitializer
@_QMlu_dataECcompiletime = local_unnamed_addr constant [11 x i8] c"12 Sep 2024"
@_QMlu_dataECconvertdouble = local_unnamed_addr constant i32 0
@_QMlu_dataECcs1 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMlu_dataECcs2 = local_unnamed_addr constant [5 x i8] c"$(FC)"
@_QMlu_dataECcs3 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMlu_dataECcs4 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMlu_dataECcs5 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMlu_dataECcs6 = local_unnamed_addr constant [9 x i8] c"$(FFLAGS)"
@_QMlu_dataECcs7 = local_unnamed_addr constant [6 x i8] c"randi8"
@_QMlu_dataEd = global [102 x [5 x [5 x double]]] zeroinitializer
@_QMlu_dataEdeta = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdssp = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdt = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataECdt_default = local_unnamed_addr constant double 2.000000e+00
@_QMlu_dataEdx1 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdx2 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdx3 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdx4 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdx5 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdxi = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdy1 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdy2 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdy3 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdy4 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdy5 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdz1 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdz2 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdz3 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdz4 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdz5 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEdzeta = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEerrnm = local_unnamed_addr global [5 x double] zeroinitializer
@_QMlu_dataEflux = global [102 x [5 x double]] zeroinitializer
@_QMlu_dataEfrc = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEfrct = global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 4, i8 28, i8 2, i8 0, [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMlu_dataEiend = local_unnamed_addr global i32 0
@_QMlu_dataEii1 = local_unnamed_addr global i32 0
@_QMlu_dataEii2 = local_unnamed_addr global i32 0
@_QMlu_dataEinorm = local_unnamed_addr global i32 0
@_QMlu_dataECinorm_default = local_unnamed_addr constant i32 250
@_QMlu_dataEinvert = local_unnamed_addr global i32 0
@_QMlu_dataEipr = local_unnamed_addr global i32 0
@_QMlu_dataECipr_default = local_unnamed_addr constant i32 1
@_QMlu_dataECisiz1 = local_unnamed_addr constant i32 102
@_QMlu_dataECisiz2 = local_unnamed_addr constant i32 102
@_QMlu_dataECisiz3 = local_unnamed_addr constant i32 102
@_QMlu_dataEist = local_unnamed_addr global i32 0
@_QMlu_dataEitmax = local_unnamed_addr global i32 0
@_QMlu_dataECitmax_default = local_unnamed_addr constant i32 250
@_QMlu_dataEjend = local_unnamed_addr global i32 0
@_QMlu_dataEji1 = local_unnamed_addr global i32 0
@_QMlu_dataEji2 = local_unnamed_addr global i32 0
@_QMlu_dataEjst = local_unnamed_addr global i32 0
@_QMlu_dataEki1 = local_unnamed_addr global i32 0
@_QMlu_dataEki2 = local_unnamed_addr global i32 0
@_QMlu_dataEmaxtime = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataECnpbversion = local_unnamed_addr constant [5 x i8] c"3.4.2"
@_QMlu_dataEnx = local_unnamed_addr global i32 0
@_QMlu_dataEnx0 = local_unnamed_addr global i32 0
@_QMlu_dataEny = local_unnamed_addr global i32 0
@_QMlu_dataEny0 = local_unnamed_addr global i32 0
@_QMlu_dataEnz = local_unnamed_addr global i32 0
@_QMlu_dataEnz0 = local_unnamed_addr global i32 0
@_QMlu_dataEomega = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEComega_default = local_unnamed_addr constant double 1.200000e+00
@_QMlu_dataEphi1 = global { ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 2, i8 28, i8 2, i8 0, [2 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMlu_dataEphi2 = global { ptr, i64, i32, i8, i8, i8, i8, [2 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 2, i8 28, i8 2, i8 0, [2 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMlu_dataEqs = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMlu_dataErho_i = global { ptr, i64, i32, i8, i8, i8, i8, [3 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 3, i8 28, i8 2, i8 0, [3 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMlu_dataErsd = global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 4, i8 28, i8 2, i8 0, [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QMlu_dataErsdnm = local_unnamed_addr global [5 x double] zeroinitializer
@_QMlu_dataECt_add = local_unnamed_addr constant i32 10
@_QMlu_dataECt_blts = local_unnamed_addr constant i32 7
@_QMlu_dataECt_buts = local_unnamed_addr constant i32 9
@_QMlu_dataECt_jacld = local_unnamed_addr constant i32 6
@_QMlu_dataECt_jacu = local_unnamed_addr constant i32 8
@_QMlu_dataECt_l2norm = local_unnamed_addr constant i32 11
@_QMlu_dataECt_last = local_unnamed_addr constant i32 11
@_QMlu_dataECt_rhs = local_unnamed_addr constant i32 5
@_QMlu_dataECt_rhsx = local_unnamed_addr constant i32 2
@_QMlu_dataECt_rhsy = local_unnamed_addr constant i32 3
@_QMlu_dataECt_rhsz = local_unnamed_addr constant i32 4
@_QMlu_dataECt_total = local_unnamed_addr constant i32 1
@_QMlu_dataEtimeron = local_unnamed_addr global i32 0
@_QMlu_dataEtolrsd = local_unnamed_addr global [5 x double] zeroinitializer
@_QMlu_dataECtolrsd1_def = local_unnamed_addr constant double 0x3E45798EE0000000
@_QMlu_dataECtolrsd2_def = local_unnamed_addr constant double 0x3E45798EE0000000
@_QMlu_dataECtolrsd3_def = local_unnamed_addr constant double 0x3E45798EE0000000
@_QMlu_dataECtolrsd4_def = local_unnamed_addr constant double 0x3E45798EE0000000
@_QMlu_dataECtolrsd5_def = local_unnamed_addr constant double 0x3E45798EE0000000
@_QMlu_dataEttotal = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEtx1 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEtx2 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEtx3 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEty1 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEty2 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEty3 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEtz1 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEtz2 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEtz3 = local_unnamed_addr global double 0.000000e+00
@_QMlu_dataEu = global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 4, i8 28, i8 2, i8 0, [4 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0], [3 x i64] [i64 1, i64 0, i64 0]] }
@_QQclX4c6075a09aa97009f9275aa44c53ff9f = linkonce constant [61 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/LU/lu_data.f90\00", comdat
@_QQclX16ff7edbfbe74b6320b5b2126b80685f = linkonce constant [37 x i8] c"Error encountered in allocating space", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8

define void @alloc_space_() local_unnamed_addr #0 {
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEa, i64 20400, ptr nonnull @_QMlu_dataEa.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEb, i64 20400, ptr nonnull @_QMlu_dataEb.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEc, i64 20400, ptr nonnull @_QMlu_dataEc.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEd, i64 20400, ptr nonnull @_QMlu_dataEd.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEflux, i64 4080, ptr nonnull @_QMlu_dataEflux.cache)
  %6 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEu, i32 0, i64 1, i64 5)
  %7 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEu, i32 1, i64 1, i64 103)
  %8 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEu, i32 2, i64 1, i64 103)
  %9 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEu, i32 3, i64 1, i64 102)
  %10 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMlu_dataEu, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 153)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %.critedge

12:                                               ; preds = %0
  %13 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataErsd, i32 0, i64 1, i64 5)
  %14 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataErsd, i32 1, i64 1, i64 103)
  %15 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataErsd, i32 2, i64 1, i64 103)
  %16 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataErsd, i32 3, i64 1, i64 102)
  %17 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMlu_dataErsd, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 153)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %.critedge

19:                                               ; preds = %12
  %20 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEfrct, i32 0, i64 1, i64 5)
  %21 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEfrct, i32 1, i64 1, i64 103)
  %22 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEfrct, i32 2, i64 1, i64 103)
  %23 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEfrct, i32 3, i64 1, i64 102)
  %24 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMlu_dataEfrct, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 153)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %.critedge

26:                                               ; preds = %19
  %27 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEqs, i32 0, i64 1, i64 103)
  %28 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEqs, i32 1, i64 1, i64 103)
  %29 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEqs, i32 2, i64 1, i64 102)
  %30 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMlu_dataEqs, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 153)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %.critedge

32:                                               ; preds = %26
  %33 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataErho_i, i32 0, i64 1, i64 103)
  %34 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataErho_i, i32 1, i64 1, i64 103)
  %35 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataErho_i, i32 2, i64 1, i64 102)
  %36 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMlu_dataErho_i, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 153)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %.critedge

38:                                               ; preds = %32
  %39 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEphi1, i32 0, i64 0, i64 103)
  %40 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEphi1, i32 1, i64 0, i64 103)
  %41 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMlu_dataEphi1, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 153)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %.critedge

43:                                               ; preds = %38
  %44 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEphi2, i32 0, i64 0, i64 103)
  %45 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMlu_dataEphi2, i32 1, i64 0, i64 103)
  %46 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMlu_dataEphi2, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 153)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %.critedge

.critedge:                                        ; preds = %38, %32, %26, %19, %12, %0, %43
  %48 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 164)
  %49 = tail call i1 @_FortranAioOutputAscii(ptr %48, ptr nonnull @_QQclX16ff7edbfbe74b6320b5b2126b80685f, i64 37)
  %50 = tail call i32 @_FortranAioEndIoStatement(ptr %48)
  %51 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

52:                                               ; preds = %43
  ret void
}

define void @free_space_() local_unnamed_addr #0 {
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEa, i64 20400, ptr nonnull @_QMlu_dataEa.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEb, i64 20400, ptr nonnull @_QMlu_dataEb.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEc, i64 20400, ptr nonnull @_QMlu_dataEc.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEd, i64 20400, ptr nonnull @_QMlu_dataEd.cache)
  %5 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEflux, i64 4080, ptr nonnull @_QMlu_dataEflux.cache)
  %6 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMlu_dataEu, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 188)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %0
  %9 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMlu_dataErsd, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 188)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMlu_dataEfrct, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 188)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMlu_dataEqs, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 188)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMlu_dataErho_i, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 188)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMlu_dataEphi1, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 188)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMlu_dataEphi2, i1 true, ptr null, ptr nonnull @_QQclX4c6075a09aa97009f9275aa44c53ff9f, i32 188)
  br label %25

25:                                               ; preds = %23, %20, %17, %14, %11, %8, %0
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
