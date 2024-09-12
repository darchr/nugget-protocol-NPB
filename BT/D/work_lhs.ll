; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@_QMwork_lhsEfjac = local_unnamed_addr global [409 x [5 x [5 x double]]] zeroinitializer
@_QMwork_lhsElhs = local_unnamed_addr global [409 x [3 x [5 x [5 x double]]]] zeroinitializer
@_QMwork_lhsEnjac = local_unnamed_addr global [409 x [5 x [5 x double]]] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define void @lhsinit_(ptr nocapture writeonly %0, ptr nocapture readonly %1) local_unnamed_addr #0 {
.preheader29:
  store double 0.000000e+00, ptr %0, align 8, !tbaa !4
  %2 = getelementptr i8, ptr %0, i64 400
  store double 0.000000e+00, ptr %2, align 8, !tbaa !4
  %3 = getelementptr i8, ptr %0, i64 40
  store double 0.000000e+00, ptr %3, align 8, !tbaa !4
  %4 = getelementptr i8, ptr %0, i64 240
  store double 0.000000e+00, ptr %4, align 8, !tbaa !4
  %5 = getelementptr i8, ptr %0, i64 440
  store double 0.000000e+00, ptr %5, align 8, !tbaa !4
  %6 = getelementptr i8, ptr %0, i64 80
  store double 0.000000e+00, ptr %6, align 8, !tbaa !4
  %7 = getelementptr i8, ptr %0, i64 280
  store double 0.000000e+00, ptr %7, align 8, !tbaa !4
  %8 = getelementptr i8, ptr %0, i64 480
  store double 0.000000e+00, ptr %8, align 8, !tbaa !4
  %9 = getelementptr i8, ptr %0, i64 120
  store double 0.000000e+00, ptr %9, align 8, !tbaa !4
  %10 = getelementptr i8, ptr %0, i64 320
  store double 0.000000e+00, ptr %10, align 8, !tbaa !4
  %11 = getelementptr i8, ptr %0, i64 520
  store double 0.000000e+00, ptr %11, align 8, !tbaa !4
  %12 = getelementptr i8, ptr %0, i64 160
  store double 0.000000e+00, ptr %12, align 8, !tbaa !4
  %13 = getelementptr i8, ptr %0, i64 360
  store double 0.000000e+00, ptr %13, align 8, !tbaa !4
  %14 = getelementptr i8, ptr %0, i64 560
  store double 0.000000e+00, ptr %14, align 8, !tbaa !4
  %gep31 = getelementptr i8, ptr %0, i64 200
  store double 1.000000e+00, ptr %gep31, align 8, !tbaa !4
  %15 = getelementptr i8, ptr %0, i64 8
  store double 0.000000e+00, ptr %15, align 8, !tbaa !4
  %16 = getelementptr i8, ptr %0, i64 208
  store double 0.000000e+00, ptr %16, align 8, !tbaa !4
  %17 = getelementptr i8, ptr %0, i64 408
  store double 0.000000e+00, ptr %17, align 8, !tbaa !4
  %18 = getelementptr i8, ptr %0, i64 48
  store double 0.000000e+00, ptr %18, align 8, !tbaa !4
  %19 = getelementptr i8, ptr %0, i64 448
  store double 0.000000e+00, ptr %19, align 8, !tbaa !4
  %20 = getelementptr i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %20, align 8, !tbaa !4
  %21 = getelementptr i8, ptr %0, i64 288
  store double 0.000000e+00, ptr %21, align 8, !tbaa !4
  %22 = getelementptr i8, ptr %0, i64 488
  store double 0.000000e+00, ptr %22, align 8, !tbaa !4
  %23 = getelementptr i8, ptr %0, i64 128
  store double 0.000000e+00, ptr %23, align 8, !tbaa !4
  %24 = getelementptr i8, ptr %0, i64 328
  store double 0.000000e+00, ptr %24, align 8, !tbaa !4
  %25 = getelementptr i8, ptr %0, i64 528
  store double 0.000000e+00, ptr %25, align 8, !tbaa !4
  %26 = getelementptr i8, ptr %0, i64 168
  store double 0.000000e+00, ptr %26, align 8, !tbaa !4
  %27 = getelementptr i8, ptr %0, i64 368
  store double 0.000000e+00, ptr %27, align 8, !tbaa !4
  %28 = getelementptr i8, ptr %0, i64 568
  store double 0.000000e+00, ptr %28, align 8, !tbaa !4
  %gep31.1 = getelementptr i8, ptr %0, i64 248
  store double 1.000000e+00, ptr %gep31.1, align 8, !tbaa !4
  %29 = getelementptr i8, ptr %0, i64 16
  store double 0.000000e+00, ptr %29, align 8, !tbaa !4
  %30 = getelementptr i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %30, align 8, !tbaa !4
  %31 = getelementptr i8, ptr %0, i64 416
  store double 0.000000e+00, ptr %31, align 8, !tbaa !4
  %32 = getelementptr i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %32, align 8, !tbaa !4
  %33 = getelementptr i8, ptr %0, i64 256
  store double 0.000000e+00, ptr %33, align 8, !tbaa !4
  %34 = getelementptr i8, ptr %0, i64 456
  store double 0.000000e+00, ptr %34, align 8, !tbaa !4
  %35 = getelementptr i8, ptr %0, i64 96
  store double 0.000000e+00, ptr %35, align 8, !tbaa !4
  %36 = getelementptr i8, ptr %0, i64 496
  store double 0.000000e+00, ptr %36, align 8, !tbaa !4
  %37 = getelementptr i8, ptr %0, i64 136
  store double 0.000000e+00, ptr %37, align 8, !tbaa !4
  %38 = getelementptr i8, ptr %0, i64 336
  store double 0.000000e+00, ptr %38, align 8, !tbaa !4
  %39 = getelementptr i8, ptr %0, i64 536
  store double 0.000000e+00, ptr %39, align 8, !tbaa !4
  %40 = getelementptr i8, ptr %0, i64 176
  store double 0.000000e+00, ptr %40, align 8, !tbaa !4
  %41 = getelementptr i8, ptr %0, i64 376
  store double 0.000000e+00, ptr %41, align 8, !tbaa !4
  %42 = getelementptr i8, ptr %0, i64 576
  store double 0.000000e+00, ptr %42, align 8, !tbaa !4
  %gep31.2 = getelementptr i8, ptr %0, i64 296
  store double 1.000000e+00, ptr %gep31.2, align 8, !tbaa !4
  %43 = getelementptr i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %43, align 8, !tbaa !4
  %44 = getelementptr i8, ptr %0, i64 224
  store double 0.000000e+00, ptr %44, align 8, !tbaa !4
  %45 = getelementptr i8, ptr %0, i64 424
  store double 0.000000e+00, ptr %45, align 8, !tbaa !4
  %46 = getelementptr i8, ptr %0, i64 64
  store double 0.000000e+00, ptr %46, align 8, !tbaa !4
  %47 = getelementptr i8, ptr %0, i64 264
  store double 0.000000e+00, ptr %47, align 8, !tbaa !4
  %48 = getelementptr i8, ptr %0, i64 464
  store double 0.000000e+00, ptr %48, align 8, !tbaa !4
  %49 = getelementptr i8, ptr %0, i64 104
  store double 0.000000e+00, ptr %49, align 8, !tbaa !4
  %50 = getelementptr i8, ptr %0, i64 304
  store double 0.000000e+00, ptr %50, align 8, !tbaa !4
  %51 = getelementptr i8, ptr %0, i64 504
  store double 0.000000e+00, ptr %51, align 8, !tbaa !4
  %52 = getelementptr i8, ptr %0, i64 144
  store double 0.000000e+00, ptr %52, align 8, !tbaa !4
  %53 = getelementptr i8, ptr %0, i64 544
  store double 0.000000e+00, ptr %53, align 8, !tbaa !4
  %54 = getelementptr i8, ptr %0, i64 184
  store double 0.000000e+00, ptr %54, align 8, !tbaa !4
  %55 = getelementptr i8, ptr %0, i64 384
  store double 0.000000e+00, ptr %55, align 8, !tbaa !4
  %56 = getelementptr i8, ptr %0, i64 584
  store double 0.000000e+00, ptr %56, align 8, !tbaa !4
  %gep31.3 = getelementptr i8, ptr %0, i64 344
  store double 1.000000e+00, ptr %gep31.3, align 8, !tbaa !4
  %57 = getelementptr i8, ptr %0, i64 32
  store double 0.000000e+00, ptr %57, align 8, !tbaa !4
  %58 = getelementptr i8, ptr %0, i64 232
  store double 0.000000e+00, ptr %58, align 8, !tbaa !4
  %59 = getelementptr i8, ptr %0, i64 432
  store double 0.000000e+00, ptr %59, align 8, !tbaa !4
  %60 = getelementptr i8, ptr %0, i64 72
  store double 0.000000e+00, ptr %60, align 8, !tbaa !4
  %61 = getelementptr i8, ptr %0, i64 272
  store double 0.000000e+00, ptr %61, align 8, !tbaa !4
  %62 = getelementptr i8, ptr %0, i64 472
  store double 0.000000e+00, ptr %62, align 8, !tbaa !4
  %63 = getelementptr i8, ptr %0, i64 112
  store double 0.000000e+00, ptr %63, align 8, !tbaa !4
  %64 = getelementptr i8, ptr %0, i64 312
  store double 0.000000e+00, ptr %64, align 8, !tbaa !4
  %65 = getelementptr i8, ptr %0, i64 512
  store double 0.000000e+00, ptr %65, align 8, !tbaa !4
  %66 = getelementptr i8, ptr %0, i64 152
  store double 0.000000e+00, ptr %66, align 8, !tbaa !4
  %67 = getelementptr i8, ptr %0, i64 352
  store double 0.000000e+00, ptr %67, align 8, !tbaa !4
  %68 = getelementptr i8, ptr %0, i64 552
  store double 0.000000e+00, ptr %68, align 8, !tbaa !4
  %69 = getelementptr i8, ptr %0, i64 192
  store double 0.000000e+00, ptr %69, align 8, !tbaa !4
  %70 = getelementptr i8, ptr %0, i64 592
  store double 0.000000e+00, ptr %70, align 8, !tbaa !4
  %gep31.4 = getelementptr i8, ptr %0, i64 392
  store double 1.000000e+00, ptr %gep31.4, align 8, !tbaa !4
  %71 = load i32, ptr %1, align 4, !tbaa !10
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, 75
  %74 = getelementptr double, ptr %0, i64 %73
  store double 0.000000e+00, ptr %74, align 8, !tbaa !4
  %75 = getelementptr i8, ptr %74, i64 400
  store double 0.000000e+00, ptr %75, align 8, !tbaa !4
  %76 = getelementptr i8, ptr %74, i64 40
  store double 0.000000e+00, ptr %76, align 8, !tbaa !4
  %77 = getelementptr i8, ptr %74, i64 240
  store double 0.000000e+00, ptr %77, align 8, !tbaa !4
  %78 = getelementptr i8, ptr %74, i64 440
  store double 0.000000e+00, ptr %78, align 8, !tbaa !4
  %79 = getelementptr i8, ptr %74, i64 80
  store double 0.000000e+00, ptr %79, align 8, !tbaa !4
  %80 = getelementptr i8, ptr %74, i64 280
  store double 0.000000e+00, ptr %80, align 8, !tbaa !4
  %81 = getelementptr i8, ptr %74, i64 480
  store double 0.000000e+00, ptr %81, align 8, !tbaa !4
  %82 = getelementptr i8, ptr %74, i64 120
  store double 0.000000e+00, ptr %82, align 8, !tbaa !4
  %83 = getelementptr i8, ptr %74, i64 320
  store double 0.000000e+00, ptr %83, align 8, !tbaa !4
  %84 = getelementptr i8, ptr %74, i64 520
  store double 0.000000e+00, ptr %84, align 8, !tbaa !4
  %85 = getelementptr i8, ptr %74, i64 160
  store double 0.000000e+00, ptr %85, align 8, !tbaa !4
  %86 = getelementptr i8, ptr %74, i64 360
  store double 0.000000e+00, ptr %86, align 8, !tbaa !4
  %87 = getelementptr i8, ptr %74, i64 560
  store double 0.000000e+00, ptr %87, align 8, !tbaa !4
  %gep35 = getelementptr i8, ptr %74, i64 200
  store double 1.000000e+00, ptr %gep35, align 8, !tbaa !4
  %88 = getelementptr i8, ptr %74, i64 8
  store double 0.000000e+00, ptr %88, align 8, !tbaa !4
  %89 = getelementptr i8, ptr %74, i64 208
  store double 0.000000e+00, ptr %89, align 8, !tbaa !4
  %90 = getelementptr i8, ptr %74, i64 408
  store double 0.000000e+00, ptr %90, align 8, !tbaa !4
  %91 = getelementptr i8, ptr %74, i64 48
  store double 0.000000e+00, ptr %91, align 8, !tbaa !4
  %92 = getelementptr i8, ptr %74, i64 448
  store double 0.000000e+00, ptr %92, align 8, !tbaa !4
  %93 = getelementptr i8, ptr %74, i64 88
  store double 0.000000e+00, ptr %93, align 8, !tbaa !4
  %94 = getelementptr i8, ptr %74, i64 288
  store double 0.000000e+00, ptr %94, align 8, !tbaa !4
  %95 = getelementptr i8, ptr %74, i64 488
  store double 0.000000e+00, ptr %95, align 8, !tbaa !4
  %96 = getelementptr i8, ptr %74, i64 128
  store double 0.000000e+00, ptr %96, align 8, !tbaa !4
  %97 = getelementptr i8, ptr %74, i64 328
  store double 0.000000e+00, ptr %97, align 8, !tbaa !4
  %98 = getelementptr i8, ptr %74, i64 528
  store double 0.000000e+00, ptr %98, align 8, !tbaa !4
  %99 = getelementptr i8, ptr %74, i64 168
  store double 0.000000e+00, ptr %99, align 8, !tbaa !4
  %100 = getelementptr i8, ptr %74, i64 368
  store double 0.000000e+00, ptr %100, align 8, !tbaa !4
  %101 = getelementptr i8, ptr %74, i64 568
  store double 0.000000e+00, ptr %101, align 8, !tbaa !4
  %gep35.1 = getelementptr i8, ptr %74, i64 248
  store double 1.000000e+00, ptr %gep35.1, align 8, !tbaa !4
  %102 = getelementptr i8, ptr %74, i64 16
  store double 0.000000e+00, ptr %102, align 8, !tbaa !4
  %103 = getelementptr i8, ptr %74, i64 216
  store double 0.000000e+00, ptr %103, align 8, !tbaa !4
  %104 = getelementptr i8, ptr %74, i64 416
  store double 0.000000e+00, ptr %104, align 8, !tbaa !4
  %105 = getelementptr i8, ptr %74, i64 56
  store double 0.000000e+00, ptr %105, align 8, !tbaa !4
  %106 = getelementptr i8, ptr %74, i64 256
  store double 0.000000e+00, ptr %106, align 8, !tbaa !4
  %107 = getelementptr i8, ptr %74, i64 456
  store double 0.000000e+00, ptr %107, align 8, !tbaa !4
  %108 = getelementptr i8, ptr %74, i64 96
  store double 0.000000e+00, ptr %108, align 8, !tbaa !4
  %109 = getelementptr i8, ptr %74, i64 496
  store double 0.000000e+00, ptr %109, align 8, !tbaa !4
  %110 = getelementptr i8, ptr %74, i64 136
  store double 0.000000e+00, ptr %110, align 8, !tbaa !4
  %111 = getelementptr i8, ptr %74, i64 336
  store double 0.000000e+00, ptr %111, align 8, !tbaa !4
  %112 = getelementptr i8, ptr %74, i64 536
  store double 0.000000e+00, ptr %112, align 8, !tbaa !4
  %113 = getelementptr i8, ptr %74, i64 176
  store double 0.000000e+00, ptr %113, align 8, !tbaa !4
  %114 = getelementptr i8, ptr %74, i64 376
  store double 0.000000e+00, ptr %114, align 8, !tbaa !4
  %115 = getelementptr i8, ptr %74, i64 576
  store double 0.000000e+00, ptr %115, align 8, !tbaa !4
  %gep35.2 = getelementptr i8, ptr %74, i64 296
  store double 1.000000e+00, ptr %gep35.2, align 8, !tbaa !4
  %116 = getelementptr i8, ptr %74, i64 24
  store double 0.000000e+00, ptr %116, align 8, !tbaa !4
  %117 = getelementptr i8, ptr %74, i64 224
  store double 0.000000e+00, ptr %117, align 8, !tbaa !4
  %118 = getelementptr i8, ptr %74, i64 424
  store double 0.000000e+00, ptr %118, align 8, !tbaa !4
  %119 = getelementptr i8, ptr %74, i64 64
  store double 0.000000e+00, ptr %119, align 8, !tbaa !4
  %120 = getelementptr i8, ptr %74, i64 264
  store double 0.000000e+00, ptr %120, align 8, !tbaa !4
  %121 = getelementptr i8, ptr %74, i64 464
  store double 0.000000e+00, ptr %121, align 8, !tbaa !4
  %122 = getelementptr i8, ptr %74, i64 104
  store double 0.000000e+00, ptr %122, align 8, !tbaa !4
  %123 = getelementptr i8, ptr %74, i64 304
  store double 0.000000e+00, ptr %123, align 8, !tbaa !4
  %124 = getelementptr i8, ptr %74, i64 504
  store double 0.000000e+00, ptr %124, align 8, !tbaa !4
  %125 = getelementptr i8, ptr %74, i64 144
  store double 0.000000e+00, ptr %125, align 8, !tbaa !4
  %126 = getelementptr i8, ptr %74, i64 544
  store double 0.000000e+00, ptr %126, align 8, !tbaa !4
  %127 = getelementptr i8, ptr %74, i64 184
  store double 0.000000e+00, ptr %127, align 8, !tbaa !4
  %128 = getelementptr i8, ptr %74, i64 384
  store double 0.000000e+00, ptr %128, align 8, !tbaa !4
  %129 = getelementptr i8, ptr %74, i64 584
  store double 0.000000e+00, ptr %129, align 8, !tbaa !4
  %gep35.3 = getelementptr i8, ptr %74, i64 344
  store double 1.000000e+00, ptr %gep35.3, align 8, !tbaa !4
  %130 = getelementptr i8, ptr %74, i64 32
  store double 0.000000e+00, ptr %130, align 8, !tbaa !4
  %131 = getelementptr i8, ptr %74, i64 232
  store double 0.000000e+00, ptr %131, align 8, !tbaa !4
  %132 = getelementptr i8, ptr %74, i64 432
  store double 0.000000e+00, ptr %132, align 8, !tbaa !4
  %133 = getelementptr i8, ptr %74, i64 72
  store double 0.000000e+00, ptr %133, align 8, !tbaa !4
  %134 = getelementptr i8, ptr %74, i64 272
  store double 0.000000e+00, ptr %134, align 8, !tbaa !4
  %135 = getelementptr i8, ptr %74, i64 472
  store double 0.000000e+00, ptr %135, align 8, !tbaa !4
  %136 = getelementptr i8, ptr %74, i64 112
  store double 0.000000e+00, ptr %136, align 8, !tbaa !4
  %137 = getelementptr i8, ptr %74, i64 312
  store double 0.000000e+00, ptr %137, align 8, !tbaa !4
  %138 = getelementptr i8, ptr %74, i64 512
  store double 0.000000e+00, ptr %138, align 8, !tbaa !4
  %139 = getelementptr i8, ptr %74, i64 152
  store double 0.000000e+00, ptr %139, align 8, !tbaa !4
  %140 = getelementptr i8, ptr %74, i64 352
  store double 0.000000e+00, ptr %140, align 8, !tbaa !4
  %141 = getelementptr i8, ptr %74, i64 552
  store double 0.000000e+00, ptr %141, align 8, !tbaa !4
  %142 = getelementptr i8, ptr %74, i64 192
  store double 0.000000e+00, ptr %142, align 8, !tbaa !4
  %143 = getelementptr i8, ptr %74, i64 592
  store double 0.000000e+00, ptr %143, align 8, !tbaa !4
  %gep35.4 = getelementptr i8, ptr %74, i64 392
  store double 1.000000e+00, ptr %gep35.4, align 8, !tbaa !4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"dummy arg data/_QFlhsinitElhs", !6, i64 0}
!6 = !{!"dummy arg data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPlhsinit"}
!10 = !{!11, !11, i64 0}
!11 = !{!"dummy arg data/_QFlhsinitEni", !6, i64 0}
