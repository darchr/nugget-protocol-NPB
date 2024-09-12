; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclXe19930870898b1ec58a1e308924da098 = comdat any

$_QQclX553396c2ab0f96ae3b4de2b3a57281de = comdat any

$_QQclX7919783500b678075096608c12ca6e6f = comdat any

$_QQclX4550 = comdat any

$_QQclX286631352E3029 = comdat any

$_QQclX2E = comdat any

$_QQclX28272053697A652020202020202020202020203D20272C39782C2061313529 = comdat any

$_QQclX28272053697A652020202020202020202020203D20272C3132782C2069313229 = comdat any

$_QQclXe3a1e23b04750251dbc06349338db4fb = comdat any

$_QQclXf488e6fe6425733b75180e52e5729edc = comdat any

$_QQclXa1c2bf91d970756dd56bdfc60d12ff2f = comdat any

$_QQclX67d0ac278b44cd755d1148ac300c1d8c = comdat any

$_QQclXdf40c4bd5154c5951f47109be404a9e9 = comdat any

$_QQclXb31c53e949b780b69beb427a06e2a9a5 = comdat any

$_QQclX3ce1cd80a98b929c53b6d1b1762dfdf0 = comdat any

$_QQclX3f05b3bd875754a1aa9fca54b5896b7e = comdat any

$_QQclX2827204F7065726174696F6E207479706520203D20272C2061323429 = comdat any

$_QQclX282720566572696669636174696F6E202020203D20272C203132782C206129 = comdat any

$_QQclX20205355434345535346554C = comdat any

$_QQclX554E5355434345535346554C = comdat any

$_QQclX7f7a534499813298534f45d0655a9f43 = comdat any

$_QQclXdd4ec6d209782ab5bf14fb2987babcce = comdat any

$_QQclX1f51d49042e7689683328f2246bbaff1 = comdat any

$_QQclX282720202020464C494E4B20202020202020203D20272C206129 = comdat any

$_QQclX282720202020465F4C494220202020202020203D20272C206129 = comdat any

$_QQclX282720202020465F494E4320202020202020203D20272C206129 = comdat any

$_QQclX28272020202046464C414753202020202020203D20272C206129 = comdat any

$_QQclX282720202020464C494E4B464C4147532020203D20272C206129 = comdat any

$_QQclX28272020202052414E442020202020202020203D20272C206129 = comdat any

$_QQclXb976bf930fdd5cc64607d5cbc6346625 = comdat any

@_QQclXe19930870898b1ec58a1e308924da098 = linkonce constant [37 x i8] c"(//, ' ', a, ' Benchmark Completed.')", comdat
@_QQclX553396c2ab0f96ae3b4de2b3a57281de = linkonce constant [71 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/common/print_results.f90\00", comdat
@_QQclX7919783500b678075096608c12ca6e6f = linkonce constant [33 x i8] c"(' Class           = ', 12x, a12)", comdat
@_QQclX4550 = linkonce constant [2 x i8] c"EP", comdat
@_QQclX286631352E3029 = linkonce constant [7 x i8] c"(f15.0)", comdat
@_QQclX2E = linkonce constant [1 x i8] c".", comdat
@_QQclX28272053697A652020202020202020202020203D20272C39782C2061313529 = linkonce constant [31 x i8] c"(' Size            = ',9x, a15)", comdat
@_QQclX28272053697A652020202020202020202020203D20272C3132782C2069313229 = linkonce constant [32 x i8] c"(' Size            = ',12x, i12)", comdat
@_QQclXe3a1e23b04750251dbc06349338db4fb = linkonce constant [45 x i8] c"(' Size            =  ',9x, i4,'x',i4,'x',i4)", comdat
@_QQclXf488e6fe6425733b75180e52e5729edc = linkonce constant [33 x i8] c"(' Iterations      = ', 12x, i12)", comdat
@_QQclXa1c2bf91d970756dd56bdfc60d12ff2f = linkonce constant [34 x i8] c"(' Time in seconds = ',12x, f12.2)", comdat
@_QQclX67d0ac278b44cd755d1148ac300c1d8c = linkonce constant [33 x i8] c"(' Total threads   = ', 12x, i12)", comdat
@_QQclXdf40c4bd5154c5951f47109be404a9e9 = linkonce constant [33 x i8] c"(' Avail threads   = ', 12x, i12)", comdat
@_QQclXb31c53e949b780b69beb427a06e2a9a5 = linkonce constant [56 x i8] c"(' Warning: Threads used differ from threads available')", comdat
@_QQclX3ce1cd80a98b929c53b6d1b1762dfdf0 = linkonce constant [34 x i8] c"(' Mop/s total     = ',12x, f12.2)", comdat
@_QQclX3f05b3bd875754a1aa9fca54b5896b7e = linkonce constant [35 x i8] c"(' Mop/s/thread    = ', 12x, f12.2)", comdat
@_QQclX2827204F7065726174696F6E207479706520203D20272C2061323429 = linkonce constant [28 x i8] c"(' Operation type  = ', a24)", comdat
@_QQclX282720566572696669636174696F6E202020203D20272C203132782C206129 = linkonce constant [31 x i8] c"(' Verification    = ', 12x, a)", comdat
@_QQclX20205355434345535346554C = linkonce constant [12 x i8] c"  SUCCESSFUL", comdat
@_QQclX554E5355434345535346554C = linkonce constant [12 x i8] c"UNSUCCESSFUL", comdat
@_QQclX7f7a534499813298534f45d0655a9f43 = linkonce constant [33 x i8] c"(' Version         = ', 12x, a12)", comdat
@_QQclXdd4ec6d209782ab5bf14fb2987babcce = linkonce constant [33 x i8] c"(' Compile date    = ', 12x, a12)", comdat
@_QQclX1f51d49042e7689683328f2246bbaff1 = linkonce constant [53 x i8] c"(/, ' Compile options:', /, '    FC           = ', a)", comdat
@_QQclX282720202020464C494E4B20202020202020203D20272C206129 = linkonce constant [26 x i8] c"('    FLINK        = ', a)", comdat
@_QQclX282720202020465F4C494220202020202020203D20272C206129 = linkonce constant [26 x i8] c"('    F_LIB        = ', a)", comdat
@_QQclX282720202020465F494E4320202020202020203D20272C206129 = linkonce constant [26 x i8] c"('    F_INC        = ', a)", comdat
@_QQclX28272020202046464C414753202020202020203D20272C206129 = linkonce constant [26 x i8] c"('    FFLAGS       = ', a)", comdat
@_QQclX282720202020464C494E4B464C4147532020203D20272C206129 = linkonce constant [26 x i8] c"('    FLINKFLAGS   = ', a)", comdat
@_QQclX28272020202052414E442020202020202020203D20272C206129 = linkonce constant [26 x i8] c"('    RAND         = ', a)", comdat
@_QQclXb976bf930fdd5cc64607d5cbc6346625 = linkonce constant [92 x i8] c"(//' Please send all errors/feedbacks to:'// ' NPB Development Team'/ ' npb@nas.nasa.gov'//)", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

define void @print_results_(ptr %0, ptr %1, ptr nocapture readonly %2, ptr nocapture readonly %3, ptr nocapture readonly %4, ptr nocapture readonly %5, ptr nocapture readonly %6, ptr nocapture readonly %7, ptr %8, ptr nocapture readonly %9, ptr %10, ptr %11, ptr %12, ptr %13, ptr %14, ptr %15, ptr %16, ptr %17, ptr %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30) local_unnamed_addr #0 {
entry:
  %structArg = alloca { ptr }, align 8
  %31 = alloca i32, align 4
  %32 = alloca [15 x i8], align 4
  %33 = tail call i32 @omp_get_max_threads_()
  store i32 0, ptr %31, align 4, !tbaa !4
  %omp_global_thread_num = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %31, ptr %structArg, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @print_results_..omp_par, ptr nonnull %structArg)
  %34 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXe19930870898b1ec58a1e308924da098, i64 37, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 32)
  %35 = call i1 @_FortranAioOutputAscii(ptr %34, ptr %0, i64 %19)
  %36 = call i32 @_FortranAioEndIoStatement(ptr %34)
  %37 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX7919783500b678075096608c12ca6e6f, i64 33, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 35)
  %38 = call i1 @_FortranAioOutputAscii(ptr %37, ptr %1, i64 1)
  %39 = call i32 @_FortranAioEndIoStatement(ptr %37)
  %40 = load i32, ptr %3, align 4, !tbaa !8
  %41 = load i32, ptr %4, align 4, !tbaa !11
  %42 = or i32 %41, %40
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %entry
  %45 = call i32 @_FortranACharacterCompareScalar1(ptr %0, ptr nonnull @_QQclX4550, i64 2, i64 2)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = call ptr @_FortranAioBeginInternalFormattedOutput(ptr nonnull %32, i64 15, ptr nonnull @_QQclX286631352E3029, i64 7, ptr null, ptr null, i64 0, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 45)
  %49 = load i32, ptr %2, align 4, !tbaa !13
  %50 = call contract double @llvm.powi.f64.i32(double 2.000000e+00, i32 %49)
  %51 = call i1 @_FortranAioOutputReal64(ptr %48, double %50)
  %52 = call i32 @_FortranAioEndIoStatement(ptr %48)
  %53 = getelementptr inbounds i8, ptr %32, i64 14
  %54 = call i32 @_FortranACharacterCompareScalar1(ptr nonnull %53, ptr nonnull @_QQclX2E, i64 1, i64 1)
  %55 = icmp eq i32 %54, 0
  %spec.select = select i1 %55, i64 14, i64 15
  %56 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272053697A652020202020202020202020203D20272C39782C2061313529, i64 31, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 48)
  %57 = call i1 @_FortranAioOutputAscii(ptr %56, ptr nonnull %32, i64 %spec.select)
  br label %70

58:                                               ; preds = %44
  %59 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272053697A652020202020202020202020203D20272C3132782C2069313229, i64 32, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 51)
  %60 = load i32, ptr %2, align 4, !tbaa !13
  %61 = call i1 @_FortranAioOutputInteger32(ptr %59, i32 %60)
  br label %70

62:                                               ; preds = %entry
  %63 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXe3a1e23b04750251dbc06349338db4fb, i64 45, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 55)
  %64 = load i32, ptr %2, align 4, !tbaa !13
  %65 = call i1 @_FortranAioOutputInteger32(ptr %63, i32 %64)
  %66 = load i32, ptr %3, align 4, !tbaa !8
  %67 = call i1 @_FortranAioOutputInteger32(ptr %63, i32 %66)
  %68 = load i32, ptr %4, align 4, !tbaa !11
  %69 = call i1 @_FortranAioOutputInteger32(ptr %63, i32 %68)
  br label %70

70:                                               ; preds = %47, %58, %62
  %.sink = phi ptr [ %56, %47 ], [ %59, %58 ], [ %63, %62 ]
  %71 = call i32 @_FortranAioEndIoStatement(ptr %.sink)
  %72 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXf488e6fe6425733b75180e52e5729edc, i64 33, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 59)
  %73 = load i32, ptr %5, align 4, !tbaa !15
  %74 = call i1 @_FortranAioOutputInteger32(ptr %72, i32 %73)
  %75 = call i32 @_FortranAioEndIoStatement(ptr %72)
  %76 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXa1c2bf91d970756dd56bdfc60d12ff2f, i64 34, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 62)
  %77 = load double, ptr %6, align 8, !tbaa !17
  %78 = call i1 @_FortranAioOutputReal64(ptr %76, double %77)
  %79 = call i32 @_FortranAioEndIoStatement(ptr %76)
  %80 = load i32, ptr %31, align 4, !tbaa !4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX67d0ac278b44cd755d1148ac300c1d8c, i64 33, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 65)
  %84 = load i32, ptr %31, align 4, !tbaa !4
  %85 = call i1 @_FortranAioOutputInteger32(ptr %83, i32 %84)
  %86 = call i32 @_FortranAioEndIoStatement(ptr %83)
  br label %87

87:                                               ; preds = %82, %70
  %88 = icmp sgt i32 %33, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXdf40c4bd5154c5951f47109be404a9e9, i64 33, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 68)
  %91 = call i1 @_FortranAioOutputInteger32(ptr %90, i32 %33)
  %92 = call i32 @_FortranAioEndIoStatement(ptr %90)
  br label %93

93:                                               ; preds = %89, %87
  %94 = load i32, ptr %31, align 4, !tbaa !4
  %.not = icmp eq i32 %94, %33
  br i1 %.not, label %98, label %95

95:                                               ; preds = %93
  %96 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXb31c53e949b780b69beb427a06e2a9a5, i64 56, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 71)
  %97 = call i32 @_FortranAioEndIoStatement(ptr %96)
  br label %98

98:                                               ; preds = %95, %93
  %99 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3ce1cd80a98b929c53b6d1b1762dfdf0, i64 34, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 74)
  %100 = load double, ptr %7, align 8, !tbaa !19
  %101 = call i1 @_FortranAioOutputReal64(ptr %99, double %100)
  %102 = call i32 @_FortranAioEndIoStatement(ptr %99)
  %103 = load i32, ptr %31, align 4, !tbaa !4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX3f05b3bd875754a1aa9fca54b5896b7e, i64 35, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 77)
  %107 = load double, ptr %7, align 8, !tbaa !19
  %108 = load i32, ptr %31, align 4, !tbaa !4
  %109 = sitofp i32 %108 to float
  %110 = fpext float %109 to double
  %111 = fdiv contract double %107, %110
  %112 = call i1 @_FortranAioOutputReal64(ptr %106, double %111)
  %113 = call i32 @_FortranAioEndIoStatement(ptr %106)
  br label %114

114:                                              ; preds = %105, %98
  %115 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827204F7065726174696F6E207479706520203D20272C2061323429, i64 28, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 80)
  %116 = call i1 @_FortranAioOutputAscii(ptr %115, ptr %8, i64 24)
  %117 = call i32 @_FortranAioEndIoStatement(ptr %115)
  %118 = load i32, ptr %9, align 4, !tbaa !21
  %.not10 = icmp eq i32 %118, 0
  br i1 %.not10, label %122, label %119

119:                                              ; preds = %114
  %120 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720566572696669636174696F6E202020203D20272C203132782C206129, i64 31, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 84)
  %121 = call i1 @_FortranAioOutputAscii(ptr %120, ptr nonnull @_QQclX20205355434345535346554C, i64 12)
  br label %125

122:                                              ; preds = %114
  %123 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720566572696669636174696F6E202020203D20272C203132782C206129, i64 31, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 86)
  %124 = call i1 @_FortranAioOutputAscii(ptr %123, ptr nonnull @_QQclX554E5355434345535346554C, i64 12)
  br label %125

125:                                              ; preds = %119, %122
  %.sink11 = phi ptr [ %120, %119 ], [ %123, %122 ]
  %126 = call i32 @_FortranAioEndIoStatement(ptr %.sink11)
  %127 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX7f7a534499813298534f45d0655a9f43, i64 33, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 90)
  %128 = call i1 @_FortranAioOutputAscii(ptr %127, ptr %10, i64 %22)
  %129 = call i32 @_FortranAioEndIoStatement(ptr %127)
  %130 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXdd4ec6d209782ab5bf14fb2987babcce, i64 33, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 93)
  %131 = call i1 @_FortranAioOutputAscii(ptr %130, ptr %11, i64 %23)
  %132 = call i32 @_FortranAioEndIoStatement(ptr %130)
  %133 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX1f51d49042e7689683328f2246bbaff1, i64 53, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 97)
  %134 = call i1 @_FortranAioOutputAscii(ptr %133, ptr %12, i64 %24)
  %135 = call i32 @_FortranAioEndIoStatement(ptr %133)
  %136 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720202020464C494E4B20202020202020203D20272C206129, i64 26, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 101)
  %137 = call i1 @_FortranAioOutputAscii(ptr %136, ptr %13, i64 %25)
  %138 = call i32 @_FortranAioEndIoStatement(ptr %136)
  %139 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720202020465F4C494220202020202020203D20272C206129, i64 26, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 104)
  %140 = call i1 @_FortranAioOutputAscii(ptr %139, ptr %14, i64 %26)
  %141 = call i32 @_FortranAioEndIoStatement(ptr %139)
  %142 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720202020465F494E4320202020202020203D20272C206129, i64 26, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 107)
  %143 = call i1 @_FortranAioOutputAscii(ptr %142, ptr %15, i64 %27)
  %144 = call i32 @_FortranAioEndIoStatement(ptr %142)
  %145 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272020202046464C414753202020202020203D20272C206129, i64 26, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 110)
  %146 = call i1 @_FortranAioOutputAscii(ptr %145, ptr %16, i64 %28)
  %147 = call i32 @_FortranAioEndIoStatement(ptr %145)
  %148 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720202020464C494E4B464C4147532020203D20272C206129, i64 26, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 113)
  %149 = call i1 @_FortranAioOutputAscii(ptr %148, ptr %17, i64 %29)
  %150 = call i32 @_FortranAioEndIoStatement(ptr %148)
  %151 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX28272020202052414E442020202020202020203D20272C206129, i64 26, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 116)
  %152 = call i1 @_FortranAioOutputAscii(ptr %151, ptr %18, i64 %30)
  %153 = call i32 @_FortranAioEndIoStatement(ptr %151)
  %154 = call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXb976bf930fdd5cc64607d5cbc6346625, i64 92, ptr null, i32 6, ptr nonnull @_QQclX553396c2ab0f96ae3b4de2b3a57281de, i32 119)
  %155 = call i32 @_FortranAioEndIoStatement(ptr %154)
  ret void
}

; Function Attrs: nounwind
define internal void @print_results_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr, ptr nocapture readonly %0) #1 {
omp.par.entry:
  %loadgep_ = load ptr, ptr %0, align 8
  %omp_global_thread_num2 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %1 = tail call i32 @__kmpc_master(ptr nonnull @1, i32 %omp_global_thread_num2)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %omp.par.outlined.exit.exitStub, label %omp.master.region

omp.master.region:                                ; preds = %omp.par.entry
  %2 = tail call i32 @omp_get_num_threads_() #2
  store i32 %2, ptr %loadgep_, align 4, !tbaa !4
  tail call void @__kmpc_end_master(ptr nonnull @1, i32 %omp_global_thread_num2)
  br label %omp.par.outlined.exit.exitStub

omp.par.outlined.exit.exitStub:                   ; preds = %omp.master.region, %omp.par.entry
  ret void
}

declare i32 @omp_get_max_threads_() local_unnamed_addr

declare i32 @omp_get_num_threads_() local_unnamed_addr

declare ptr @_FortranAioBeginExternalFormattedOutput(ptr, i64, ptr, i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputAscii(ptr, ptr, i64) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare i32 @_FortranACharacterCompareScalar1(ptr, ptr, i64, i64) local_unnamed_addr

declare ptr @_FortranAioBeginInternalFormattedOutput(ptr, i64, ptr, i64, ptr, ptr, i64, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputReal64(ptr, double) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputInteger32(ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_master(ptr, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_end_master(ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.powi.f64.i32(double, i32) #3

; Function Attrs: nounwind
declare !callback !23 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #2

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"any data access", !6, i64 0}
!6 = !{!"any access", !7, i64 0}
!7 = !{!"Flang function root _QPprint_results"}
!8 = !{!9, !9, i64 0}
!9 = !{!"dummy arg data/_QFprint_resultsEn2", !10, i64 0}
!10 = !{!"dummy arg data", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"dummy arg data/_QFprint_resultsEn3", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"dummy arg data/_QFprint_resultsEn1", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"dummy arg data/_QFprint_resultsEniter", !10, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"dummy arg data/_QFprint_resultsEt", !10, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"dummy arg data/_QFprint_resultsEmops", !10, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"dummy arg data/_QFprint_resultsEverified", !10, i64 0}
!23 = !{!24}
!24 = !{i64 2, i64 -1, i64 -1, i1 true}
