; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_QQclX55 = comdat any

$_QQclX53 = comdat any

$_QQclX57 = comdat any

$_QQclX41 = comdat any

$_QQclX42 = comdat any

$_QQclX43 = comdat any

$_QQclX44 = comdat any

$_QQclX45 = comdat any

$_QQclX46 = comdat any

$_QQclX24a72f89c95326424e5862f727553f10 = comdat any

$_QQclXfbd4f7fa4e05b91882caf871b16f6759 = comdat any

$_QQclX58860793655ac9dbc0430b8863e3b1bd = comdat any

$_QQclXe9495278c2e4384cf1395432a29c90c7 = comdat any

$_QQclX282720556E6B6E6F776E20636C6173732729 = comdat any

$_QQclXbcb23f864f3b8a6d88bc42954f8e5ad1 = comdat any

$_QQclX282720524D532D6E6F726D73206F6620726573696475616C2729 = comdat any

$_QQclX282720202020202020202020272C2069322C2032782C206532302E313329 = comdat any

$_QQclX15eda9a92180dff258ff2c6aa304e1f8 = comdat any

$_QQclXfbb3d0534361f91f5803d2c3dfa4e169 = comdat any

$_QQclXedd94963bb73957d2976ee6464bc08aa = comdat any

$_QQclX282720524D532D6E6F726D73206F6620736F6C7574696F6E206572726F722729 = comdat any

$_QQclXce117a3bb388544a35c6fafcc085e52d = comdat any

$_QQclX2827205375726661636520696E74656772616C2729 = comdat any

$_QQclX282720202020202020202020272C2034782C206532302E313329 = comdat any

$_QQclXad3996733915139f17a4bd454c1ea077 = comdat any

$_QQclX131ac07a9971e7bbddf28fce017df850 = comdat any

$_QQclXccb8c2b95738603d7bec24d2be9727b3 = comdat any

$_QQclX2827204E6F20766572696669636174696F6E20706572666F726D65642729 = comdat any

$_QQclX282720566572696669636174696F6E205375636365737366756C2729 = comdat any

$_QQclX282720566572696669636174696F6E206661696C65642729 = comdat any

@_QMlu_dataEa = external global [64 x [5 x [5 x double]]]
@_QMlu_dataEb = external global [64 x [5 x [5 x double]]]
@_QMlu_dataEc = external global [64 x [5 x [5 x double]]]
@_QMlu_dataEd = external global [64 x [5 x [5 x double]]]
@_QMlu_dataEdt = external local_unnamed_addr global double
@_QMlu_dataEflux = external global [64 x [5 x double]]
@_QMlu_dataEitmax = external local_unnamed_addr global i32
@_QMlu_dataEnx0 = external local_unnamed_addr global i32
@_QMlu_dataEny0 = external local_unnamed_addr global i32
@_QMlu_dataEnz0 = external local_unnamed_addr global i32
@_QQclX55 = linkonce constant [1 x i8] c"U", comdat
@_QQclX53 = linkonce local_unnamed_addr constant [1 x i8] c"S", comdat
@_QQclX57 = linkonce local_unnamed_addr constant [1 x i8] c"W", comdat
@_QQclX41 = linkonce local_unnamed_addr constant [1 x i8] c"A", comdat
@_QQclX42 = linkonce local_unnamed_addr constant [1 x i8] c"B", comdat
@_QQclX43 = linkonce local_unnamed_addr constant [1 x i8] c"C", comdat
@_QQclX44 = linkonce local_unnamed_addr constant [1 x i8] c"D", comdat
@_QQclX45 = linkonce local_unnamed_addr constant [1 x i8] c"E", comdat
@_QQclX46 = linkonce local_unnamed_addr constant [1 x i8] c"F", comdat
@_QQclX24a72f89c95326424e5862f727553f10 = linkonce constant [50 x i8] c"(/, ' Verification being performed for class ', a)", comdat
@_QQclXfbd4f7fa4e05b91882caf871b16f6759 = linkonce constant [60 x i8] c"/scr/studyztp/test/NPB3.4-OMP-custom-makefile/LU/verify.f90\00", comdat
@_QQclX58860793655ac9dbc0430b8863e3b1bd = linkonce constant [44 x i8] c"(' Accuracy setting for epsilon = ', e20.13)", comdat
@_QQclXe9495278c2e4384cf1395432a29c90c7 = linkonce constant [53 x i8] c"(' DT does not match the reference value of ', e15.8)", comdat
@_QQclX282720556E6B6E6F776E20636C6173732729 = linkonce constant [18 x i8] c"(' Unknown class')", comdat
@_QQclXbcb23f864f3b8a6d88bc42954f8e5ad1 = linkonce constant [40 x i8] c"(' Comparison of RMS-norms of residual')", comdat
@_QQclX282720524D532D6E6F726D73206F6620726573696475616C2729 = linkonce constant [26 x i8] c"(' RMS-norms of residual')", comdat
@_QQclX282720202020202020202020272C2069322C2032782C206532302E313329 = linkonce constant [30 x i8] c"('          ', i2, 2x, e20.13)", comdat
@_QQclX15eda9a92180dff258ff2c6aa304e1f8 = linkonce constant [46 x i8] c"('          ', i2, 2x, e20.13, e20.13, e20.13)", comdat
@_QQclXfbb3d0534361f91f5803d2c3dfa4e169 = linkonce constant [46 x i8] c"(' FAILURE: ', i2, 2x, e20.13, e20.13, e20.13)", comdat
@_QQclXedd94963bb73957d2976ee6464bc08aa = linkonce constant [46 x i8] c"(' Comparison of RMS-norms of solution error')", comdat
@_QQclX282720524D532D6E6F726D73206F6620736F6C7574696F6E206572726F722729 = linkonce constant [32 x i8] c"(' RMS-norms of solution error')", comdat
@_QQclXce117a3bb388544a35c6fafcc085e52d = linkonce constant [35 x i8] c"(' Comparison of surface integral')", comdat
@_QQclX2827205375726661636520696E74656772616C2729 = linkonce constant [21 x i8] c"(' Surface integral')", comdat
@_QQclX282720202020202020202020272C2034782C206532302E313329 = linkonce constant [26 x i8] c"('          ', 4x, e20.13)", comdat
@_QQclXad3996733915139f17a4bd454c1ea077 = linkonce constant [42 x i8] c"('          ', 4x, e20.13, e20.13, e20.13)", comdat
@_QQclX131ac07a9971e7bbddf28fce017df850 = linkonce constant [42 x i8] c"(' FAILURE: ', 4x, e20.13, e20.13, e20.13)", comdat
@_QQclXccb8c2b95738603d7bec24d2be9727b3 = linkonce constant [33 x i8] c"(' No reference values provided')", comdat
@_QQclX2827204E6F20766572696669636174696F6E20706572666F726D65642729 = linkonce constant [30 x i8] c"(' No verification performed')", comdat
@_QQclX282720566572696669636174696F6E205375636365737366756C2729 = linkonce constant [28 x i8] c"(' Verification Successful')", comdat
@_QQclX282720566572696669636174696F6E206661696C65642729 = linkonce constant [24 x i8] c"(' Verification failed')", comdat
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8

define void @verify_(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr %3, ptr nocapture %4, i64 %5) local_unnamed_addr #0 {
  %omp_global_thread_num4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %7 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEa, i64 12800, ptr nonnull @_QMlu_dataEa.cache)
  %8 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEb, i64 12800, ptr nonnull @_QMlu_dataEb.cache)
  %9 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEc, i64 12800, ptr nonnull @_QMlu_dataEc.cache)
  %10 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEd, i64 12800, ptr nonnull @_QMlu_dataEd.cache)
  %11 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num4, ptr nonnull @_QMlu_dataEflux, i64 2560, ptr nonnull @_QMlu_dataEflux.cache)
  %12 = alloca [5 x double], align 8
  %13 = alloca [5 x double], align 8
  %14 = alloca [5 x double], align 8
  %15 = alloca [5 x double], align 8
  %.unpack = load i8, ptr @_QQclX55, align 1, !tbaa !4
  store i8 %.unpack, ptr %3, align 1, !tbaa !10
  store i32 1, ptr %4, align 4, !tbaa !11
  store double 1.000000e+00, ptr %15, align 8, !tbaa !10
  store double 1.000000e+00, ptr %13, align 8, !tbaa !10
  %16 = getelementptr inbounds i8, ptr %15, i64 8
  store double 1.000000e+00, ptr %16, align 8, !tbaa !10
  %17 = getelementptr inbounds i8, ptr %13, i64 8
  store double 1.000000e+00, ptr %17, align 8, !tbaa !10
  %18 = getelementptr inbounds i8, ptr %15, i64 16
  store double 1.000000e+00, ptr %18, align 8, !tbaa !10
  %19 = getelementptr inbounds i8, ptr %13, i64 16
  store double 1.000000e+00, ptr %19, align 8, !tbaa !10
  %20 = getelementptr inbounds i8, ptr %15, i64 24
  store double 1.000000e+00, ptr %20, align 8, !tbaa !10
  %21 = getelementptr inbounds i8, ptr %13, i64 24
  store double 1.000000e+00, ptr %21, align 8, !tbaa !10
  %22 = getelementptr inbounds i8, ptr %15, i64 32
  store double 1.000000e+00, ptr %22, align 8, !tbaa !10
  %23 = getelementptr inbounds i8, ptr %13, i64 32
  store double 1.000000e+00, ptr %23, align 8, !tbaa !10
  %24 = load i32, ptr @_QMlu_dataEnx0, align 4, !tbaa !14
  %25 = icmp eq i32 %24, 12
  %26 = load i32, ptr @_QMlu_dataEny0, align 4, !tbaa !16
  %27 = icmp eq i32 %26, 12
  %28 = and i1 %25, %27
  %29 = load i32, ptr @_QMlu_dataEnz0, align 4, !tbaa !18
  %30 = icmp eq i32 %29, 12
  %31 = and i1 %28, %30
  %32 = load i32, ptr @_QMlu_dataEitmax, align 4, !tbaa !20
  %33 = icmp eq i32 %32, 50
  %34 = and i1 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  %.unpack59 = load i8, ptr @_QQclX53, align 1, !tbaa !22
  store i8 %.unpack59, ptr %3, align 1, !tbaa !10
  store double 0x3F9095C6319FADD6, ptr %15, align 8, !tbaa !10
  store double 0x3F6200DB859E0D21, ptr %16, align 8, !tbaa !10
  store double 0x3F58DEEC5217BFDD, ptr %18, align 8, !tbaa !10
  store double 0x3F589FDD57334EFA, ptr %20, align 8, !tbaa !10
  store double 0x3FA18B0F8343C057, ptr %22, align 8, !tbaa !10
  store double 0x3F450B714B573D84, ptr %13, align 8, !tbaa !10
  store double 0x3F160ED4C9F87163, ptr %17, align 8, !tbaa !10
  store double 0x3F0EB7959D8E8ADC, ptr %19, align 8, !tbaa !10
  store double 0x3F0EA846FD592A40, ptr %21, align 8, !tbaa !10
  store double 0x3F5577F144DBE709, ptr %23, align 8, !tbaa !10
  br label %.preheader66

36:                                               ; preds = %6
  %37 = icmp eq i32 %24, 33
  %38 = icmp eq i32 %26, 33
  %39 = and i1 %37, %38
  %40 = icmp eq i32 %29, 33
  %41 = and i1 %39, %40
  %42 = icmp eq i32 %32, 300
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  %.unpack58 = load i8, ptr @_QQclX57, align 1, !tbaa !24
  store i8 %.unpack58, ptr %3, align 1, !tbaa !10
  store double 0x4028BAF088CF2916, ptr %15, align 8, !tbaa !10
  store double 0x3FF5135E2B181AE6, ptr %16, align 8, !tbaa !10
  store double 0x400466A5B03CC305, ptr %18, align 8, !tbaa !10
  store double 0x40029C0852BD8158, ptr %20, align 8, !tbaa !10
  store double 0x403C449B48A36D65, ptr %22, align 8, !tbaa !10
  store double 0x3FDF2787A8624355, ptr %13, align 8, !tbaa !10
  store double 0x3FA9EE5781C9C74E, ptr %17, align 8, !tbaa !10
  store double 0x3FB7C2EEABF4115D, ptr %19, align 8, !tbaa !10
  store double 0x3FB5F084A43C7776, ptr %21, align 8, !tbaa !10
  store double 0x3FF15933471353D7, ptr %23, align 8, !tbaa !10
  br label %.preheader66

45:                                               ; preds = %36
  %46 = icmp eq i32 %24, 64
  %47 = icmp eq i32 %26, 64
  %48 = and i1 %46, %47
  %49 = icmp eq i32 %29, 64
  %50 = and i1 %48, %49
  %51 = icmp eq i32 %32, 250
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  %.unpack57 = load i8, ptr @_QQclX41, align 1, !tbaa !26
  store i8 %.unpack57, ptr %3, align 1, !tbaa !10
  store double 0x4088582B29EDD04B, ptr %15, align 8, !tbaa !10
  store double 0x404FB38DCFE12C44, ptr %16, align 8, !tbaa !10
  store double 0x40685FC289A41299, ptr %18, align 8, !tbaa !10
  store double 0x40664E7F123115E9, ptr %20, align 8, !tbaa !10
  store double 0x409CB9E775B47A97, ptr %22, align 8, !tbaa !10
  store double 0x403DF6CE51C9A4CC, ptr %13, align 8, !tbaa !10
  store double 0x40068E3FCE29CFA8, ptr %17, align 8, !tbaa !10
  store double 0x401D63AD6E0AB30F, ptr %19, align 8, !tbaa !10
  store double 0x401ADB0E84931B31, ptr %21, align 8, !tbaa !10
  store double 0x4051ADC7BB73FD8F, ptr %23, align 8, !tbaa !10
  br label %.preheader66

54:                                               ; preds = %45
  %55 = icmp eq i32 %24, 102
  %56 = icmp eq i32 %26, 102
  %57 = and i1 %55, %56
  %58 = icmp eq i32 %29, 102
  %59 = and i1 %57, %58
  %60 = and i1 %59, %51
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  %.unpack56 = load i8, ptr @_QQclX42, align 1, !tbaa !28
  store i8 %.unpack56, ptr %3, align 1, !tbaa !10
  store double 0x40ABC288DB26F3CF, ptr %15, align 8, !tbaa !10
  store double 0x4070625C314CA7E8, ptr %16, align 8, !tbaa !10
  store double 0x408B9AB29F9E3005, ptr %18, align 8, !tbaa !10
  store double 0x40885105A06D03B7, ptr %20, align 8, !tbaa !10
  store double 0x40BC8CCC05858E75, ptr %22, align 8, !tbaa !10
  store double 0x405C80C0BCF65A66, ptr %13, align 8, !tbaa !10
  store double 0x40203844561FE7D9, ptr %17, align 8, !tbaa !10
  store double 0x403C7B086D020F3F, ptr %19, align 8, !tbaa !10
  store double 0x4039E7C7F03AD18B, ptr %21, align 8, !tbaa !10
  store double 0x407048C902EB0ACF, ptr %23, align 8, !tbaa !10
  br label %.preheader66

62:                                               ; preds = %54
  %63 = icmp eq i32 %24, 162
  %64 = icmp eq i32 %26, 162
  %65 = and i1 %63, %64
  %66 = icmp eq i32 %29, 162
  %67 = and i1 %65, %66
  %68 = and i1 %67, %51
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  %.unpack55 = load i8, ptr @_QQclX43, align 1, !tbaa !30
  store i8 %.unpack55, ptr %3, align 1, !tbaa !10
  store double 0x40C44459591FC987, ptr %15, align 8, !tbaa !10
  store double 0x408BE1B31D9990A2, ptr %16, align 8, !tbaa !10
  store double 0x40A404C6BB0CBEBA, ptr %18, align 8, !tbaa !10
  store double 0x40A11FE30A619F4A, ptr %20, align 8, !tbaa !10
  store double 0x40D163F391043AD4, ptr %22, align 8, !tbaa !10
  store double 0x406AFF909623A296, ptr %13, align 8, !tbaa !10
  store double 0x402F286CE92EB19A, ptr %17, align 8, !tbaa !10
  store double 0x404B10E1A68939B8, ptr %19, align 8, !tbaa !10
  store double 0x40481CF63AA57509, ptr %21, align 8, !tbaa !10
  store double 0x407C7E7251CD2FD8, ptr %23, align 8, !tbaa !10
  br label %.preheader66

70:                                               ; preds = %62
  %71 = icmp eq i32 %24, 408
  %72 = icmp eq i32 %26, 408
  %73 = and i1 %71, %72
  %74 = icmp eq i32 %29, 408
  %75 = and i1 %73, %74
  %76 = and i1 %75, %42
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  %.unpack54 = load i8, ptr @_QQclX44, align 1, !tbaa !32
  store i8 %.unpack54, ptr %3, align 1, !tbaa !10
  store double 0x40E7C585BD66ADB4, ptr %15, align 8, !tbaa !10
  store double 0x40B2585EFD233020, ptr %16, align 8, !tbaa !10
  store double 0x40C7CA929FABAC6C, ptr %18, align 8, !tbaa !10
  store double 0x40C43101E96096C4, ptr %20, align 8, !tbaa !10
  store double 0x40F16FFFBF07AA6E, ptr %22, align 8, !tbaa !10
  store double 0x407773D42CB4EEFF, ptr %13, align 8, !tbaa !10
  store double 0x403ED75EB6352403, ptr %17, align 8, !tbaa !10
  store double 0x405795EFED9DFE5C, ptr %19, align 8, !tbaa !10
  store double 0x405493A3B4BA4240, ptr %21, align 8, !tbaa !10
  store double 0x4085E218B4CFCD55, ptr %23, align 8, !tbaa !10
  br label %.preheader66

78:                                               ; preds = %70
  %79 = icmp eq i32 %24, 1020
  %80 = icmp eq i32 %26, 1020
  %81 = and i1 %79, %80
  %82 = icmp eq i32 %29, 1020
  %83 = and i1 %81, %82
  %84 = and i1 %83, %42
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  %.unpack53 = load i8, ptr @_QQclX45, align 1, !tbaa !34
  store i8 %.unpack53, ptr %3, align 1, !tbaa !10
  store double 0x4109A16159AD3558, ptr %15, align 8, !tbaa !10
  store double 0x40D4CE0202F9E534, ptr %16, align 8, !tbaa !10
  store double 0x40E9F909366CDEA6, ptr %18, align 8, !tbaa !10
  store double 0x40E60533B988FD95, ptr %20, align 8, !tbaa !10
  store double 0x4111E5D000ACC0BE, ptr %22, align 8, !tbaa !10
  store double 0x407E00EA8730976A, ptr %13, align 8, !tbaa !10
  store double 0x40451C26CC209732, ptr %17, align 8, !tbaa !10
  store double 0x405E4573C39EB53E, ptr %19, align 8, !tbaa !10
  store double 0x405A327D50E064A7, ptr %21, align 8, !tbaa !10
  store double 0x408A226C2FE6A7B3, ptr %23, align 8, !tbaa !10
  br label %.preheader66

86:                                               ; preds = %78
  %87 = icmp eq i32 %24, 2560
  %88 = icmp eq i32 %26, 2560
  %89 = and i1 %87, %88
  %90 = icmp eq i32 %29, 2560
  %91 = and i1 %89, %90
  %92 = and i1 %91, %42
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  %.unpack52 = load i8, ptr @_QQclX46, align 1, !tbaa !36
  store i8 %.unpack52, ptr %3, align 1, !tbaa !10
  store double 0x4129F4A112565EB1, ptr %15, align 8, !tbaa !10
  store double 0x40F56C28D9D3BBA9, ptr %16, align 8, !tbaa !10
  store double 0x410A74AE8F1FEB58, ptr %18, align 8, !tbaa !10
  store double 0x4106708434B5A716, ptr %20, align 8, !tbaa !10
  store double 0x4131F004832DA123, ptr %22, align 8, !tbaa !10
  store double 0x40808B219D44EFAA, ptr %13, align 8, !tbaa !10
  store double 0x4047EC9F74BBDCEF, ptr %17, align 8, !tbaa !10
  store double 0x4060B8A4E3D2C89B, ptr %19, align 8, !tbaa !10
  store double 0x405CDAF9EFF67B25, ptr %21, align 8, !tbaa !10
  store double 0x408BFD0373808FB9, ptr %23, align 8, !tbaa !10
  br label %.preheader66

94:                                               ; preds = %86
  store i32 0, ptr %4, align 4, !tbaa !11
  br label %.preheader66

.preheader66:                                     ; preds = %94, %93, %85, %77, %69, %61, %53, %44, %35
  %95 = phi double [ 1.000000e+00, %94 ], [ 0x408BFD0373808FB9, %93 ], [ 0x408A226C2FE6A7B3, %85 ], [ 0x4085E218B4CFCD55, %77 ], [ 0x407C7E7251CD2FD8, %69 ], [ 0x407048C902EB0ACF, %61 ], [ 0x4051ADC7BB73FD8F, %53 ], [ 0x3FF15933471353D7, %44 ], [ 0x3F5577F144DBE709, %35 ]
  %96 = phi double [ 1.000000e+00, %94 ], [ 0x4131F004832DA123, %93 ], [ 0x4111E5D000ACC0BE, %85 ], [ 0x40F16FFFBF07AA6E, %77 ], [ 0x40D163F391043AD4, %69 ], [ 0x40BC8CCC05858E75, %61 ], [ 0x409CB9E775B47A97, %53 ], [ 0x403C449B48A36D65, %44 ], [ 0x3FA18B0F8343C057, %35 ]
  %97 = phi double [ 1.000000e+00, %94 ], [ 0x405CDAF9EFF67B25, %93 ], [ 0x405A327D50E064A7, %85 ], [ 0x405493A3B4BA4240, %77 ], [ 0x40481CF63AA57509, %69 ], [ 0x4039E7C7F03AD18B, %61 ], [ 0x401ADB0E84931B31, %53 ], [ 0x3FB5F084A43C7776, %44 ], [ 0x3F0EA846FD592A40, %35 ]
  %98 = phi double [ 1.000000e+00, %94 ], [ 0x4106708434B5A716, %93 ], [ 0x40E60533B988FD95, %85 ], [ 0x40C43101E96096C4, %77 ], [ 0x40A11FE30A619F4A, %69 ], [ 0x40885105A06D03B7, %61 ], [ 0x40664E7F123115E9, %53 ], [ 0x40029C0852BD8158, %44 ], [ 0x3F589FDD57334EFA, %35 ]
  %99 = phi double [ 1.000000e+00, %94 ], [ 0x4060B8A4E3D2C89B, %93 ], [ 0x405E4573C39EB53E, %85 ], [ 0x405795EFED9DFE5C, %77 ], [ 0x404B10E1A68939B8, %69 ], [ 0x403C7B086D020F3F, %61 ], [ 0x401D63AD6E0AB30F, %53 ], [ 0x3FB7C2EEABF4115D, %44 ], [ 0x3F0EB7959D8E8ADC, %35 ]
  %100 = phi double [ 1.000000e+00, %94 ], [ 0x410A74AE8F1FEB58, %93 ], [ 0x40E9F909366CDEA6, %85 ], [ 0x40C7CA929FABAC6C, %77 ], [ 0x40A404C6BB0CBEBA, %69 ], [ 0x408B9AB29F9E3005, %61 ], [ 0x40685FC289A41299, %53 ], [ 0x400466A5B03CC305, %44 ], [ 0x3F58DEEC5217BFDD, %35 ]
  %101 = phi double [ 1.000000e+00, %94 ], [ 0x4047EC9F74BBDCEF, %93 ], [ 0x40451C26CC209732, %85 ], [ 0x403ED75EB6352403, %77 ], [ 0x402F286CE92EB19A, %69 ], [ 0x40203844561FE7D9, %61 ], [ 0x40068E3FCE29CFA8, %53 ], [ 0x3FA9EE5781C9C74E, %44 ], [ 0x3F160ED4C9F87163, %35 ]
  %102 = phi double [ 1.000000e+00, %94 ], [ 0x40F56C28D9D3BBA9, %93 ], [ 0x40D4CE0202F9E534, %85 ], [ 0x40B2585EFD233020, %77 ], [ 0x408BE1B31D9990A2, %69 ], [ 0x4070625C314CA7E8, %61 ], [ 0x404FB38DCFE12C44, %53 ], [ 0x3FF5135E2B181AE6, %44 ], [ 0x3F6200DB859E0D21, %35 ]
  %103 = phi double [ 1.000000e+00, %94 ], [ 0x40808B219D44EFAA, %93 ], [ 0x407E00EA8730976A, %85 ], [ 0x407773D42CB4EEFF, %77 ], [ 0x406AFF909623A296, %69 ], [ 0x405C80C0BCF65A66, %61 ], [ 0x403DF6CE51C9A4CC, %53 ], [ 0x3FDF2787A8624355, %44 ], [ 0x3F450B714B573D84, %35 ]
  %104 = phi double [ 1.000000e+00, %94 ], [ 0x4129F4A112565EB1, %93 ], [ 0x4109A16159AD3558, %85 ], [ 0x40E7C585BD66ADB4, %77 ], [ 0x40C44459591FC987, %69 ], [ 0x40ABC288DB26F3CF, %61 ], [ 0x4088582B29EDD04B, %53 ], [ 0x4028BAF088CF2916, %44 ], [ 0x3F9095C6319FADD6, %35 ]
  %.046.ph = phi double [ undef, %94 ], [ 2.000000e-01, %93 ], [ 5.000000e-01, %85 ], [ 1.000000e+00, %77 ], [ 2.000000e+00, %69 ], [ 2.000000e+00, %61 ], [ 2.000000e+00, %53 ], [ 1.500000e-03, %44 ], [ 5.000000e-01, %35 ]
  %.0.ph = phi double [ 1.000000e+00, %94 ], [ 0x4059100F75F96953, %93 ], [ 0x4057C7C8D49D8FEC, %85 ], [ 0x4054D5D32C11DF01, %77 ], [ 0x4050A8FD38777331, %69 ], [ 0x4047F18E8C26784B, %61 ], [ 0x403A07EABD8D9878, %53 ], [ 0x40273A5D4E10D079, %44 ], [ 0x401F5E192B3A9EBC, %35 ]
  %105 = load double, ptr %0, align 8, !tbaa !38
  %106 = fsub contract double %105, %104
  %107 = fdiv contract double %106, %104
  %108 = tail call contract double @llvm.fabs.f64(double %107)
  store double %108, ptr %14, align 8, !tbaa !10
  %109 = load double, ptr %1, align 8, !tbaa !40
  %110 = fsub contract double %109, %103
  %111 = fdiv contract double %110, %103
  %112 = tail call contract double @llvm.fabs.f64(double %111)
  store double %112, ptr %12, align 8, !tbaa !10
  %113 = getelementptr i8, ptr %0, i64 8
  %114 = load double, ptr %113, align 8, !tbaa !38
  %115 = fsub contract double %114, %102
  %116 = fdiv contract double %115, %102
  %117 = tail call contract double @llvm.fabs.f64(double %116)
  %118 = getelementptr inbounds i8, ptr %14, i64 8
  store double %117, ptr %118, align 8, !tbaa !10
  %119 = getelementptr i8, ptr %1, i64 8
  %120 = load double, ptr %119, align 8, !tbaa !40
  %121 = fsub contract double %120, %101
  %122 = fdiv contract double %121, %101
  %123 = tail call contract double @llvm.fabs.f64(double %122)
  %124 = getelementptr inbounds i8, ptr %12, i64 8
  store double %123, ptr %124, align 8, !tbaa !10
  %125 = getelementptr i8, ptr %0, i64 16
  %126 = load double, ptr %125, align 8, !tbaa !38
  %127 = fsub contract double %126, %100
  %128 = fdiv contract double %127, %100
  %129 = tail call contract double @llvm.fabs.f64(double %128)
  %130 = getelementptr inbounds i8, ptr %14, i64 16
  store double %129, ptr %130, align 8, !tbaa !10
  %131 = getelementptr i8, ptr %1, i64 16
  %132 = load double, ptr %131, align 8, !tbaa !40
  %133 = fsub contract double %132, %99
  %134 = fdiv contract double %133, %99
  %135 = tail call contract double @llvm.fabs.f64(double %134)
  %136 = getelementptr inbounds i8, ptr %12, i64 16
  store double %135, ptr %136, align 8, !tbaa !10
  %137 = getelementptr i8, ptr %0, i64 24
  %138 = load double, ptr %137, align 8, !tbaa !38
  %139 = fsub contract double %138, %98
  %140 = fdiv contract double %139, %98
  %141 = tail call contract double @llvm.fabs.f64(double %140)
  %142 = getelementptr inbounds i8, ptr %14, i64 24
  store double %141, ptr %142, align 8, !tbaa !10
  %143 = getelementptr i8, ptr %1, i64 24
  %144 = load double, ptr %143, align 8, !tbaa !40
  %145 = fsub contract double %144, %97
  %146 = fdiv contract double %145, %97
  %147 = tail call contract double @llvm.fabs.f64(double %146)
  %148 = getelementptr inbounds i8, ptr %12, i64 24
  store double %147, ptr %148, align 8, !tbaa !10
  %149 = getelementptr i8, ptr %0, i64 32
  %150 = load double, ptr %149, align 8, !tbaa !38
  %151 = fsub contract double %150, %96
  %152 = fdiv contract double %151, %96
  %153 = tail call contract double @llvm.fabs.f64(double %152)
  %154 = getelementptr inbounds i8, ptr %14, i64 32
  store double %153, ptr %154, align 8, !tbaa !10
  %155 = getelementptr i8, ptr %1, i64 32
  %156 = load double, ptr %155, align 8, !tbaa !40
  %157 = fsub contract double %156, %95
  %158 = fdiv contract double %157, %95
  %159 = tail call contract double @llvm.fabs.f64(double %158)
  %160 = getelementptr inbounds i8, ptr %12, i64 32
  store double %159, ptr %160, align 8, !tbaa !10
  %161 = load double, ptr %2, align 8, !tbaa !42
  %162 = fsub contract double %161, %.0.ph
  %163 = fdiv contract double %162, %.0.ph
  %164 = tail call contract double @llvm.fabs.f64(double %163)
  %165 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %3, ptr nonnull @_QQclX55, i64 1, i64 1)
  %.not = icmp eq i32 %165, 0
  br i1 %.not, label %181, label %166

166:                                              ; preds = %.preheader66
  %167 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX24a72f89c95326424e5862f727553f10, i64 50, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 346)
  %168 = tail call i1 @_FortranAioOutputAscii(ptr %167, ptr nonnull %3, i64 1)
  %169 = tail call i32 @_FortranAioEndIoStatement(ptr %167)
  %170 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX58860793655ac9dbc0430b8863e3b1bd, i64 44, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 348)
  %171 = tail call i1 @_FortranAioOutputReal64(ptr %170, double 1.000000e-08)
  %172 = tail call i32 @_FortranAioEndIoStatement(ptr %170)
  %173 = load double, ptr @_QMlu_dataEdt, align 8, !tbaa !44
  %174 = fsub contract double %173, %.046.ph
  %175 = tail call contract double @llvm.fabs.f64(double %174)
  %176 = fcmp contract ole double %175, 1.000000e-08
  %177 = zext i1 %176 to i32
  store i32 %177, ptr %4, align 4, !tbaa !11
  br i1 %176, label %184, label %178

178:                                              ; preds = %166
  store i8 %.unpack, ptr %3, align 1, !tbaa !10
  %179 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXe9495278c2e4384cf1395432a29c90c7, i64 53, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 353)
  %180 = tail call i1 @_FortranAioOutputReal64(ptr %179, double %.046.ph)
  br label %.sink.split

181:                                              ; preds = %.preheader66
  %182 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720556E6B6E6F776E20636C6173732729, i64 18, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 358)
  br label %.sink.split

.sink.split:                                      ; preds = %181, %178
  %.sink = phi ptr [ %179, %178 ], [ %182, %181 ]
  %183 = tail call i32 @_FortranAioEndIoStatement(ptr %.sink)
  br label %184

184:                                              ; preds = %.sink.split, %166
  %185 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %3, ptr nonnull @_QQclX55, i64 1, i64 1)
  %.not61 = icmp eq i32 %185, 0
  br i1 %.not61, label %188, label %186

186:                                              ; preds = %184
  %187 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXbcb23f864f3b8a6d88bc42954f8e5ad1, i64 40, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 364)
  br label %.preheader65

188:                                              ; preds = %184
  %189 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720524D532D6E6F726D73206F6620726573696475616C2729, i64 26, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 366)
  br label %.preheader65

.preheader65:                                     ; preds = %188, %186
  %.sink76 = phi ptr [ %189, %188 ], [ %187, %186 ]
  %190 = tail call i32 @_FortranAioEndIoStatement(ptr %.sink76)
  %invariant.gep = getelementptr i8, ptr %0, i64 -8
  br label %191

191:                                              ; preds = %.preheader65, %227
  %indvars.iv = phi i64 [ 1, %.preheader65 ], [ %indvars.iv.next, %227 ]
  %192 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %3, ptr nonnull @_QQclX55, i64 1, i64 1)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720202020202020202020272C2069322C2032782C206532302E313329, i64 30, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 373)
  %196 = trunc nuw nsw i64 %indvars.iv to i32
  %197 = tail call i1 @_FortranAioOutputInteger32(ptr %195, i32 %196)
  %gep = getelementptr double, ptr %invariant.gep, i64 %indvars.iv
  %198 = load double, ptr %gep, align 8, !tbaa !38
  %199 = tail call i1 @_FortranAioOutputReal64(ptr %195, double %198)
  br label %227

200:                                              ; preds = %191
  %201 = add nsw i64 %indvars.iv, -1
  %202 = getelementptr double, ptr %14, i64 %201
  %203 = load double, ptr %202, align 8, !tbaa !10
  %204 = fcmp contract ugt double %203, 1.000000e-08
  br i1 %204, label %216, label %205

205:                                              ; preds = %200
  %206 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX15eda9a92180dff258ff2c6aa304e1f8, i64 46, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 376)
  %207 = trunc nuw nsw i64 %indvars.iv to i32
  %208 = tail call i1 @_FortranAioOutputInteger32(ptr %206, i32 %207)
  %209 = getelementptr double, ptr %0, i64 %201
  %210 = load double, ptr %209, align 8, !tbaa !38
  %211 = tail call i1 @_FortranAioOutputReal64(ptr %206, double %210)
  %212 = getelementptr double, ptr %15, i64 %201
  %213 = load double, ptr %212, align 8, !tbaa !10
  %214 = tail call i1 @_FortranAioOutputReal64(ptr %206, double %213)
  %215 = tail call i1 @_FortranAioOutputReal64(ptr %206, double %203)
  br label %227

216:                                              ; preds = %200
  store i32 0, ptr %4, align 4, !tbaa !11
  %217 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfbb3d0534361f91f5803d2c3dfa4e169, i64 46, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 379)
  %218 = trunc nuw nsw i64 %indvars.iv to i32
  %219 = tail call i1 @_FortranAioOutputInteger32(ptr %217, i32 %218)
  %220 = getelementptr double, ptr %0, i64 %201
  %221 = load double, ptr %220, align 8, !tbaa !38
  %222 = tail call i1 @_FortranAioOutputReal64(ptr %217, double %221)
  %223 = getelementptr double, ptr %15, i64 %201
  %224 = load double, ptr %223, align 8, !tbaa !10
  %225 = tail call i1 @_FortranAioOutputReal64(ptr %217, double %224)
  %226 = tail call i1 @_FortranAioOutputReal64(ptr %217, double %203)
  br label %227

227:                                              ; preds = %194, %205, %216
  %.sink77 = phi ptr [ %195, %194 ], [ %206, %205 ], [ %217, %216 ]
  %228 = tail call i32 @_FortranAioEndIoStatement(ptr %.sink77)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %229, label %191

229:                                              ; preds = %227
  %230 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %3, ptr nonnull @_QQclX55, i64 1, i64 1)
  %.not62 = icmp eq i32 %230, 0
  br i1 %.not62, label %233, label %231

231:                                              ; preds = %229
  %232 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXedd94963bb73957d2976ee6464bc08aa, i64 46, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 384)
  br label %.preheader

233:                                              ; preds = %229
  %234 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720524D532D6E6F726D73206F6620736F6C7574696F6E206572726F722729, i64 32, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 386)
  br label %.preheader

.preheader:                                       ; preds = %233, %231
  %.sink78 = phi ptr [ %234, %233 ], [ %232, %231 ]
  %235 = tail call i32 @_FortranAioEndIoStatement(ptr %.sink78)
  %invariant.gep67 = getelementptr i8, ptr %1, i64 -8
  br label %236

236:                                              ; preds = %.preheader, %272
  %indvars.iv72 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next73, %272 ]
  %237 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %3, ptr nonnull @_QQclX55, i64 1, i64 1)
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720202020202020202020272C2069322C2032782C206532302E313329, i64 30, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 393)
  %241 = trunc nuw nsw i64 %indvars.iv72 to i32
  %242 = tail call i1 @_FortranAioOutputInteger32(ptr %240, i32 %241)
  %gep68 = getelementptr double, ptr %invariant.gep67, i64 %indvars.iv72
  %243 = load double, ptr %gep68, align 8, !tbaa !40
  %244 = tail call i1 @_FortranAioOutputReal64(ptr %240, double %243)
  br label %272

245:                                              ; preds = %236
  %246 = add nsw i64 %indvars.iv72, -1
  %247 = getelementptr double, ptr %12, i64 %246
  %248 = load double, ptr %247, align 8, !tbaa !10
  %249 = fcmp contract ugt double %248, 1.000000e-08
  br i1 %249, label %261, label %250

250:                                              ; preds = %245
  %251 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX15eda9a92180dff258ff2c6aa304e1f8, i64 46, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 396)
  %252 = trunc nuw nsw i64 %indvars.iv72 to i32
  %253 = tail call i1 @_FortranAioOutputInteger32(ptr %251, i32 %252)
  %254 = getelementptr double, ptr %1, i64 %246
  %255 = load double, ptr %254, align 8, !tbaa !40
  %256 = tail call i1 @_FortranAioOutputReal64(ptr %251, double %255)
  %257 = getelementptr double, ptr %13, i64 %246
  %258 = load double, ptr %257, align 8, !tbaa !10
  %259 = tail call i1 @_FortranAioOutputReal64(ptr %251, double %258)
  %260 = tail call i1 @_FortranAioOutputReal64(ptr %251, double %248)
  br label %272

261:                                              ; preds = %245
  store i32 0, ptr %4, align 4, !tbaa !11
  %262 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXfbb3d0534361f91f5803d2c3dfa4e169, i64 46, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 399)
  %263 = trunc nuw nsw i64 %indvars.iv72 to i32
  %264 = tail call i1 @_FortranAioOutputInteger32(ptr %262, i32 %263)
  %265 = getelementptr double, ptr %1, i64 %246
  %266 = load double, ptr %265, align 8, !tbaa !40
  %267 = tail call i1 @_FortranAioOutputReal64(ptr %262, double %266)
  %268 = getelementptr double, ptr %13, i64 %246
  %269 = load double, ptr %268, align 8, !tbaa !10
  %270 = tail call i1 @_FortranAioOutputReal64(ptr %262, double %269)
  %271 = tail call i1 @_FortranAioOutputReal64(ptr %262, double %248)
  br label %272

272:                                              ; preds = %239, %250, %261
  %.sink79 = phi ptr [ %240, %239 ], [ %251, %250 ], [ %262, %261 ]
  %273 = tail call i32 @_FortranAioEndIoStatement(ptr %.sink79)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond75.not = icmp eq i64 %indvars.iv.next73, 6
  br i1 %exitcond75.not, label %274, label %236

274:                                              ; preds = %272
  %275 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %3, ptr nonnull @_QQclX55, i64 1, i64 1)
  %.not63 = icmp eq i32 %275, 0
  br i1 %.not63, label %278, label %276

276:                                              ; preds = %274
  %277 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXce117a3bb388544a35c6fafcc085e52d, i64 35, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 408)
  br label %280

278:                                              ; preds = %274
  %279 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827205375726661636520696E74656772616C2729, i64 21, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 410)
  br label %280

280:                                              ; preds = %276, %278
  %.sink80 = phi ptr [ %277, %276 ], [ %279, %278 ]
  %281 = tail call i32 @_FortranAioEndIoStatement(ptr %.sink80)
  %282 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %3, ptr nonnull @_QQclX55, i64 1, i64 1)
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720202020202020202020272C2034782C206532302E313329, i64 26, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 417)
  %286 = load double, ptr %2, align 8, !tbaa !42
  %287 = tail call i1 @_FortranAioOutputReal64(ptr %285, double %286)
  br label %304

288:                                              ; preds = %280
  %289 = fcmp ord double %163, 0.000000e+00
  %290 = fcmp contract ole double %164, 1.000000e-08
  %291 = and i1 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  %293 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXad3996733915139f17a4bd454c1ea077, i64 42, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 420)
  %294 = load double, ptr %2, align 8, !tbaa !42
  %295 = tail call i1 @_FortranAioOutputReal64(ptr %293, double %294)
  %296 = tail call i1 @_FortranAioOutputReal64(ptr %293, double %.0.ph)
  %297 = tail call i1 @_FortranAioOutputReal64(ptr %293, double %164)
  br label %304

298:                                              ; preds = %288
  store i32 0, ptr %4, align 4, !tbaa !11
  %299 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX131ac07a9971e7bbddf28fce017df850, i64 42, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 423)
  %300 = load double, ptr %2, align 8, !tbaa !42
  %301 = tail call i1 @_FortranAioOutputReal64(ptr %299, double %300)
  %302 = tail call i1 @_FortranAioOutputReal64(ptr %299, double %.0.ph)
  %303 = tail call i1 @_FortranAioOutputReal64(ptr %299, double %164)
  br label %304

304:                                              ; preds = %284, %292, %298
  %.sink81 = phi ptr [ %285, %284 ], [ %293, %292 ], [ %299, %298 ]
  %305 = tail call i32 @_FortranAioEndIoStatement(ptr %.sink81)
  %306 = tail call i32 @_FortranACharacterCompareScalar1(ptr nonnull %3, ptr nonnull @_QQclX55, i64 1, i64 1)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclXccb8c2b95738603d7bec24d2be9727b3, i64 33, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 433)
  %310 = tail call i32 @_FortranAioEndIoStatement(ptr %309)
  %311 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX2827204E6F20766572696669636174696F6E20706572666F726D65642729, i64 30, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 434)
  br label %318

312:                                              ; preds = %304
  %313 = load i32, ptr %4, align 4, !tbaa !11
  %.not64 = icmp eq i32 %313, 0
  br i1 %.not64, label %316, label %314

314:                                              ; preds = %312
  %315 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720566572696669636174696F6E205375636365737366756C2729, i64 28, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 438)
  br label %318

316:                                              ; preds = %312
  %317 = tail call ptr @_FortranAioBeginExternalFormattedOutput(ptr nonnull @_QQclX282720566572696669636174696F6E206661696C65642729, i64 24, ptr null, i32 6, ptr nonnull @_QQclXfbd4f7fa4e05b91882caf871b16f6759, i32 441)
  br label %318

318:                                              ; preds = %308, %314, %316
  %.sink82 = phi ptr [ %311, %308 ], [ %315, %314 ], [ %317, %316 ]
  %319 = tail call i32 @_FortranAioEndIoStatement(ptr %.sink82)
  ret void
}

declare i32 @_FortranACharacterCompareScalar1(ptr, ptr, i64, i64) local_unnamed_addr

declare ptr @_FortranAioBeginExternalFormattedOutput(ptr, i64, ptr, i32, ptr, i32) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputAscii(ptr, ptr, i64) local_unnamed_addr

declare i32 @_FortranAioEndIoStatement(ptr) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputReal64(ptr, double) local_unnamed_addr

declare zeroext i1 @_FortranAioOutputInteger32(ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

attributes #0 = { "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QQclX55", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPverify"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"dummy arg data/_QFverifyEverified", !13, i64 0}
!13 = !{!"dummy arg data", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"global data/_QMlu_dataEnx0", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"global data/_QMlu_dataEny0", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"global data/_QMlu_dataEnz0", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"global data/_QMlu_dataEitmax", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"global data/_QQclX53", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"global data/_QQclX57", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"global data/_QQclX41", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"global data/_QQclX42", !6, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"global data/_QQclX43", !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"global data/_QQclX44", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"global data/_QQclX45", !6, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"global data/_QQclX46", !6, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"dummy arg data/_QFverifyExcr", !13, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"dummy arg data/_QFverifyExce", !13, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"dummy arg data/_QFverifyExci", !13, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"global data/_QMlu_dataEdt", !6, i64 0}
