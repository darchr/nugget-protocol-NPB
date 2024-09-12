; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

$_QQclXd044a3532b4ace85f79d78067c7c74b8 = comdat any

$_QQclX16ff7edbfbe74b6320b5b2126b80685f = comdat any

@_QMft_dataECa = local_unnamed_addr constant double 0x41D2309CE5400000
@_QMft_dataECalpha = local_unnamed_addr constant double 0x3EB0C6F7A0B5ED8D
@_QMft_dataECcompiletime = local_unnamed_addr constant [11 x i8] c"12 Sep 2024"
@_QMft_dataECconvertdouble = local_unnamed_addr constant i32 0
@_QMft_dataECcs1 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMft_dataECcs2 = local_unnamed_addr constant [5 x i8] c"$(FC)"
@_QMft_dataECcs3 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMft_dataECcs4 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMft_dataECcs5 = local_unnamed_addr constant [6 x i8] c"(none)"
@_QMft_dataECcs6 = local_unnamed_addr constant [9 x i8] c"$(FFLAGS)"
@_QMft_dataECcs7 = local_unnamed_addr constant [6 x i8] c"randi8"
@_QMft_dataEdebug = local_unnamed_addr global i32 0
@_QMft_dataEdebugsynch = local_unnamed_addr global i32 0
@_QMft_dataEdims = local_unnamed_addr global [3 x i32] zeroinitializer
@_QMft_dataEfftblock = local_unnamed_addr global i32 0
@_QMft_dataECfftblock_default = local_unnamed_addr constant i32 32
@_QMft_dataEfftblockpad = local_unnamed_addr global i32 0
@_QMft_dataECfftblockpad_default = local_unnamed_addr constant i32 34
@_QMft_dataECkind2 = local_unnamed_addr constant i32 8
@_QMft_dataECmaxdim = local_unnamed_addr constant i32 2048
@_QMft_dataEniter = local_unnamed_addr global i32 0
@_QMft_dataECniter_default = local_unnamed_addr constant i32 25
@_QMft_dataECnpbversion = local_unnamed_addr constant [5 x i8] c"3.4.2"
@_QMft_dataECntotal_f = local_unnamed_addr constant double 0x41E0000000000000
@_QMft_dataECntotalp = local_unnamed_addr constant i64 2148532224
@_QMft_dataECnx = local_unnamed_addr constant i32 2048
@_QMft_dataECnx_f = local_unnamed_addr constant double 2.048000e+03
@_QMft_dataECnxp = local_unnamed_addr constant i64 2049
@_QMft_dataECny = local_unnamed_addr constant i32 1024
@_QMft_dataECnz = local_unnamed_addr constant i32 1024
@_QMft_dataECpi = local_unnamed_addr constant double 0x400921FB54442D18
@_QMft_dataECseed = local_unnamed_addr constant double 0x41B2B9B0A1000000
@_QMft_dataEsums = local_unnamed_addr global [26 x { double, double }] zeroinitializer
@_QMft_dataECt_checksum = local_unnamed_addr constant i32 5
@_QMft_dataECt_evolve = local_unnamed_addr constant i32 4
@_QMft_dataECt_fft = local_unnamed_addr constant i32 3
@_QMft_dataECt_fftx = local_unnamed_addr constant i32 6
@_QMft_dataECt_ffty = local_unnamed_addr constant i32 7
@_QMft_dataECt_fftz = local_unnamed_addr constant i32 8
@_QMft_dataECt_max = local_unnamed_addr constant i32 8
@_QMft_dataECt_setup = local_unnamed_addr constant i32 2
@_QMft_dataECt_total = local_unnamed_addr constant i32 1
@_QMft_dataEtimers_enabled = local_unnamed_addr global i32 0
@_QMft_dataEu = local_unnamed_addr global [2049 x { double, double }] zeroinitializer
@_QMft_fieldsEpad1 = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr ({ double, double }, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 35, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr ({ double, double }, ptr null, i32 1) to i64)]] }
@_QMft_fieldsEpad2 = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr ({ double, double }, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 35, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr ({ double, double }, ptr null, i32 1) to i64)]] }
@_QMft_fieldsEtwiddle = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 28, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr (double, ptr null, i32 1) to i64)]] }
@_QMft_fieldsEu0 = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr ({ double, double }, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 35, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr ({ double, double }, ptr null, i32 1) to i64)]] }
@_QMft_fieldsEu1 = global { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr null, i64 ptrtoint (ptr getelementptr ({ double, double }, ptr null, i32 1) to i64), i32 20180515, i8 1, i8 35, i8 2, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 0, i64 ptrtoint (ptr getelementptr ({ double, double }, ptr null, i32 1) to i64)]] }
@_QQclXd044a3532b4ace85f79d78067c7c74b8 = linkonce constant [61 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/FT/ft_data.f90\00", comdat
@_QQclX16ff7edbfbe74b6320b5b2126b80685f = linkonce constant [37 x i8] c"Error encountered in allocating space", comdat

define void @alloc_space_() local_unnamed_addr #0 {
  %1 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMft_fieldsEu0, i32 0, i64 1, i64 2148532224)
  %2 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMft_fieldsEu0, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 175)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %.critedge

4:                                                ; preds = %0
  %5 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMft_fieldsEpad1, i32 0, i64 1, i64 3)
  %6 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMft_fieldsEpad1, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 175)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %.critedge

8:                                                ; preds = %4
  %9 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMft_fieldsEu1, i32 0, i64 1, i64 2148532224)
  %10 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMft_fieldsEu1, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 175)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %.critedge

12:                                               ; preds = %8
  %13 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMft_fieldsEpad2, i32 0, i64 1, i64 3)
  %14 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMft_fieldsEpad2, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 175)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %.critedge

16:                                               ; preds = %12
  %17 = tail call {} @_FortranAAllocatableSetBounds(ptr nonnull @_QMft_fieldsEtwiddle, i32 0, i64 1, i64 2148532224)
  %18 = tail call i32 @_FortranAAllocatableAllocate(ptr nonnull @_QMft_fieldsEtwiddle, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 175)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %.critedge

.critedge:                                        ; preds = %12, %8, %4, %0, %16
  %20 = tail call ptr @_FortranAioBeginExternalListOutput(i32 6, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 183)
  %21 = tail call i1 @_FortranAioOutputAscii(ptr %20, ptr nonnull @_QQclX16ff7edbfbe74b6320b5b2126b80685f, i64 37)
  %22 = tail call i32 @_FortranAioEndIoStatement(ptr %20)
  %23 = tail call {} @_FortranAStopStatement(i32 0, i1 false, i1 false)
  unreachable

24:                                               ; preds = %16
  ret void
}

define void @free_space_() local_unnamed_addr #0 {
  %1 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMft_fieldsEu0, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 208)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMft_fieldsEpad1, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 208)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMft_fieldsEu1, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 208)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMft_fieldsEpad2, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 208)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @_FortranAAllocatableDeallocate(ptr nonnull @_QMft_fieldsEtwiddle, i1 true, ptr null, ptr nonnull @_QQclXd044a3532b4ace85f79d78067c7c74b8, i32 208)
  br label %14

14:                                               ; preds = %12, %9, %6, %3, %0
  ret void
}

declare {} @_FortranAAllocatableSetBounds(ptr, i32, i64, i64) local_unnamed_addr

declare i32 @_FortranAAllocatableAllocate(ptr, i1 zeroext, ptr, ptr, i32) local_unnamed_addr

declare ptr @_FortranAioBeginExternalListOutput(i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputAscii(ptr, ptr, i64) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare {} @_FortranAStopStatement(i32, i1 zeroext, i1 zeroext) local_unnamed_addr

declare i32 @_FortranAAllocatableDeallocate(ptr, i1 zeroext, ptr, ptr, i32) local_unnamed_addr

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
