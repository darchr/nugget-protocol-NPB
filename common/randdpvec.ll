; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define double @randlc_(ptr nocapture %0, ptr nocapture readonly %1) local_unnamed_addr #0 {
  %3 = load double, ptr %1, align 8, !tbaa !4
  %4 = fmul contract double %3, 0x3E80000000000000
  %5 = fptosi double %4 to i32
  %6 = sitofp i32 %5 to double
  %7 = fmul contract double %6, 0x4160000000000000
  %8 = fsub contract double %3, %7
  %9 = load double, ptr %0, align 8, !tbaa !10
  %10 = fmul contract double %9, 0x3E80000000000000
  %11 = fptosi double %10 to i32
  %12 = sitofp i32 %11 to double
  %13 = fmul contract double %12, 0x4160000000000000
  %14 = fsub contract double %9, %13
  %15 = fmul contract double %14, %6
  %16 = fmul contract double %8, %12
  %17 = fadd contract double %16, %15
  %18 = fmul contract double %17, 0x3E80000000000000
  %19 = fptosi double %18 to i32
  %20 = sitofp i32 %19 to double
  %21 = fmul contract double %20, 0x4160000000000000
  %22 = fsub contract double %17, %21
  %23 = fmul contract double %22, 0x4160000000000000
  %24 = fmul contract double %8, %14
  %25 = fadd contract double %24, %23
  %26 = fmul contract double %25, 0x3D10000000000000
  %27 = fptosi double %26 to i32
  %28 = sitofp i32 %27 to double
  %29 = fmul contract double %28, 0x42D0000000000000
  %30 = fsub contract double %25, %29
  store double %30, ptr %0, align 8, !tbaa !10
  %31 = fmul contract double %30, 0x3D10000000000000
  ret double %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @vranlc_(ptr nocapture readonly %0, ptr nocapture %1, ptr nocapture readonly %2, ptr nocapture writeonly %3) local_unnamed_addr #1 {
  %5 = alloca [64 x double], align 8
  %6 = load i32, ptr %0, align 4, !tbaa !12
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 64)
  %invariant.gep = getelementptr i8, ptr %5, i64 -8
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %.lr.ph, label %.._crit_edge61_crit_edge

.lr.ph:                                           ; preds = %4
  %9 = zext nneg i32 %7 to i64
  %10 = load double, ptr %1, align 8, !tbaa !18
  %11 = load double, ptr %2, align 8, !tbaa !4
  %12 = fmul contract double %11, 0x3E80000000000000
  %13 = fptosi double %12 to i32
  %14 = sitofp i32 %13 to double
  %15 = fmul contract double %14, 0x4160000000000000
  %16 = fsub contract double %11, %15
  br label %17

17:                                               ; preds = %.lr.ph, %17
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %18 = phi i64 [ %9, %.lr.ph ], [ %42, %17 ]
  %.04446 = phi double [ %10, %.lr.ph ], [ %39, %17 ]
  %19 = fmul contract double %.04446, 0x3E80000000000000
  %20 = fptosi double %19 to i32
  %21 = sitofp i32 %20 to double
  %22 = fmul contract double %21, 0x4160000000000000
  %23 = fsub contract double %.04446, %22
  %24 = fmul contract double %23, %14
  %25 = fmul contract double %16, %21
  %26 = fadd contract double %24, %25
  %27 = fmul contract double %26, 0x3E80000000000000
  %28 = fptosi double %27 to i32
  %29 = sitofp i32 %28 to double
  %30 = fmul contract double %29, 0x4160000000000000
  %31 = fsub contract double %26, %30
  %32 = fmul contract double %31, 0x4160000000000000
  %33 = fmul contract double %23, %16
  %34 = fadd contract double %33, %32
  %35 = fmul contract double %34, 0x3D10000000000000
  %36 = fptosi double %35 to i32
  %37 = sitofp i32 %36 to double
  %38 = fmul contract double %37, 0x42D0000000000000
  %39 = fsub contract double %34, %38
  %40 = fmul contract double %39, 0x3D10000000000000
  %41 = fmul contract double %40, 0x42D0000000000000
  %gep = getelementptr double, ptr %invariant.gep, i64 %indvars.iv
  store double %41, ptr %gep, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %42 = add nsw i64 %18, -1
  %43 = icmp ugt i64 %18, 1
  br i1 %43, label %17, label %._crit_edge

._crit_edge:                                      ; preds = %17
  %44 = icmp sgt i32 %6, 64
  br i1 %44, label %45, label %83

45:                                               ; preds = %._crit_edge
  %46 = load double, ptr %2, align 8
  %47 = fmul contract double %46, 0x3E80000000000000
  %48 = fptosi double %47 to i32
  %49 = sitofp i32 %48 to double
  %50 = fmul contract double %49, 0x4160000000000000
  %51 = fsub contract double %46, %50
  br label %52

52:                                               ; preds = %45, %52
  %53 = phi i64 [ 63, %45 ], [ %75, %52 ]
  %.14547 = phi double [ %46, %45 ], [ %74, %52 ]
  %54 = fmul contract double %.14547, 0x3E80000000000000
  %55 = fptosi double %54 to i32
  %56 = sitofp i32 %55 to double
  %57 = fmul contract double %56, 0x4160000000000000
  %58 = fsub contract double %.14547, %57
  %59 = fmul contract double %58, %49
  %60 = fmul contract double %51, %56
  %61 = fadd contract double %60, %59
  %62 = fmul contract double %61, 0x3E80000000000000
  %63 = fptosi double %62 to i32
  %64 = sitofp i32 %63 to double
  %65 = fmul contract double %64, 0x4160000000000000
  %66 = fsub contract double %61, %65
  %67 = fmul contract double %66, 0x4160000000000000
  %68 = fmul contract double %51, %58
  %69 = fadd contract double %68, %67
  %70 = fmul contract double %69, 0x3D10000000000000
  %71 = fptosi double %70 to i32
  %72 = sitofp i32 %71 to double
  %73 = fmul contract double %72, 0x42D0000000000000
  %74 = fsub contract double %69, %73
  %75 = add nsw i64 %53, -1
  %76 = icmp ugt i64 %53, 1
  br i1 %76, label %52, label %77

77:                                               ; preds = %52
  %.037 = fmul contract double %74, 0x3D10000000000000
  %78 = fmul contract double %.037, 0x42D0000000000000
  %79 = fmul contract double %78, 0x3E80000000000000
  %80 = tail call contract double @llvm.trunc.f64(double %79)
  %81 = fmul contract double %80, 0x4160000000000000
  %82 = fsub contract double %78, %81
  br label %83

83:                                               ; preds = %77, %._crit_edge
  %.035 = phi double [ %82, %77 ], [ undef, %._crit_edge ]
  %.034 = phi double [ %80, %77 ], [ undef, %._crit_edge ]
  %84 = add nuw i32 %6, 63
  %85 = icmp sgt i32 %84, 63
  br i1 %85, label %.lr.ph60, label %.._crit_edge61_crit_edge

.._crit_edge61_crit_edge:                         ; preds = %4, %83
  %.pre = sext i32 %7 to i64
  br label %._crit_edge61

.lr.ph60:                                         ; preds = %83
  %86 = lshr i32 %84, 6
  %invariant.gep50 = getelementptr i8, ptr %3, i64 -8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.034, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <2 x double> poison, double %.035, i64 0
  %broadcast.splat82 = shufflevector <2 x double> %broadcast.splatinsert81, <2 x double> poison, <2 x i32> zeroinitializer
  br label %87

87:                                               ; preds = %.lr.ph60, %middle.block
  %indvar = phi i32 [ 0, %.lr.ph60 ], [ %indvar.next, %middle.block ]
  %indvars.iv72 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next73, %middle.block ]
  %.058 = phi i32 [ %86, %.lr.ph60 ], [ %131, %middle.block ]
  %88 = shl i32 %indvar, 6
  %89 = sub i32 %6, %88
  %90 = sext i32 %89 to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %90, i64 64)
  %91 = add nsw i64 %smin, 1
  %smin83 = tail call i64 @llvm.smin.i64(i64 %90, i64 1)
  %92 = sub i64 %91, %smin83
  %indvars74 = trunc i64 %indvars.iv72 to i32
  %93 = sub i32 %6, %indvars74
  %94 = tail call i32 @llvm.smin.i32(i32 %93, i32 64)
  %95 = sext i32 %94 to i64
  %96 = icmp sgt i32 %93, 0
  br i1 %96, label %.lr.ph53.preheader, label %._crit_edge54

.lr.ph53.preheader:                               ; preds = %87
  %invariant.gep78 = getelementptr double, ptr %invariant.gep50, i64 %indvars.iv72
  %min.iters.check = icmp ult i64 %92, 4
  br i1 %min.iters.check, label %.lr.ph53.preheader96, label %vector.ph86

vector.ph86:                                      ; preds = %.lr.ph53.preheader
  %n.vec = and i64 %92, -4
  %ind.end = or disjoint i64 %n.vec, 1
  %ind.end88 = sub i64 %95, %n.vec
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph86
  %index91 = phi i64 [ 0, %vector.ph86 ], [ %index.next95, %vector.body90 ]
  %offset.idx92 = or disjoint i64 %index91, 1
  %97 = getelementptr double, ptr %invariant.gep, i64 %offset.idx92
  %98 = getelementptr i8, ptr %97, i64 16
  %wide.load93 = load <2 x double>, ptr %97, align 8, !tbaa !20
  %wide.load94 = load <2 x double>, ptr %98, align 8, !tbaa !20
  %99 = fmul contract <2 x double> %wide.load93, <double 0x3D10000000000000, double 0x3D10000000000000>
  %100 = fmul contract <2 x double> %wide.load94, <double 0x3D10000000000000, double 0x3D10000000000000>
  %101 = getelementptr double, ptr %invariant.gep78, i64 %offset.idx92
  %102 = getelementptr i8, ptr %101, i64 16
  store <2 x double> %99, ptr %101, align 8, !tbaa !21
  store <2 x double> %100, ptr %102, align 8, !tbaa !21
  %index.next95 = add nuw i64 %index91, 4
  %103 = icmp eq i64 %index.next95, %n.vec
  br i1 %103, label %middle.block84, label %vector.body90, !llvm.loop !23

middle.block84:                                   ; preds = %vector.body90
  %cmp.n = icmp eq i64 %92, %n.vec
  br i1 %cmp.n, label %._crit_edge54, label %.lr.ph53.preheader96

.lr.ph53.preheader96:                             ; preds = %.lr.ph53.preheader, %middle.block84
  %indvars.iv66.ph = phi i64 [ 1, %.lr.ph53.preheader ], [ %ind.end, %middle.block84 ]
  %.ph = phi i64 [ %95, %.lr.ph53.preheader ], [ %ind.end88, %middle.block84 ]
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader96, %.lr.ph53
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %.lr.ph53 ], [ %indvars.iv66.ph, %.lr.ph53.preheader96 ]
  %104 = phi i64 [ %107, %.lr.ph53 ], [ %.ph, %.lr.ph53.preheader96 ]
  %gep49 = getelementptr double, ptr %invariant.gep, i64 %indvars.iv66
  %105 = load double, ptr %gep49, align 8, !tbaa !20
  %106 = fmul contract double %105, 0x3D10000000000000
  %gep79 = getelementptr double, ptr %invariant.gep78, i64 %indvars.iv66
  store double %106, ptr %gep79, align 8, !tbaa !21
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %107 = add nsw i64 %104, -1
  %108 = icmp sgt i64 %104, 1
  br i1 %108, label %.lr.ph53, label %._crit_edge54, !llvm.loop !26

._crit_edge54:                                    ; preds = %.lr.ph53, %middle.block84, %87
  %109 = add i32 %94, %indvars74
  %110 = icmp eq i32 %109, %6
  br i1 %110, label %._crit_edge61, label %vector.body

vector.body:                                      ; preds = %._crit_edge54, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %._crit_edge54 ]
  %offset.idx = or disjoint i64 %index, 1
  %111 = getelementptr double, ptr %invariant.gep, i64 %offset.idx
  %wide.load = load <2 x double>, ptr %111, align 8, !tbaa !20
  %112 = fmul contract <2 x double> %wide.load, <double 0x3E80000000000000, double 0x3E80000000000000>
  %113 = tail call contract <2 x double> @llvm.trunc.v2f64(<2 x double> %112)
  %114 = fmul contract <2 x double> %113, <double 0x4160000000000000, double 0x4160000000000000>
  %115 = fsub contract <2 x double> %wide.load, %114
  %116 = fmul contract <2 x double> %broadcast.splat, %115
  %117 = fmul contract <2 x double> %broadcast.splat82, %113
  %118 = fadd contract <2 x double> %117, %116
  %119 = fmul contract <2 x double> %118, <double 0x3E80000000000000, double 0x3E80000000000000>
  %120 = tail call contract <2 x double> @llvm.trunc.v2f64(<2 x double> %119)
  %121 = fmul contract <2 x double> %120, <double 0x4160000000000000, double 0x4160000000000000>
  %122 = fsub contract <2 x double> %118, %121
  %123 = fmul contract <2 x double> %122, <double 0x4160000000000000, double 0x4160000000000000>
  %124 = fmul contract <2 x double> %broadcast.splat82, %115
  %125 = fadd contract <2 x double> %124, %123
  %126 = fmul contract <2 x double> %125, <double 0x3D10000000000000, double 0x3D10000000000000>
  %127 = tail call contract <2 x double> @llvm.trunc.v2f64(<2 x double> %126)
  %128 = fmul contract <2 x double> %127, <double 0x42D0000000000000, double 0x42D0000000000000>
  %129 = fsub contract <2 x double> %125, %128
  store <2 x double> %129, ptr %111, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 2
  %130 = icmp eq i64 %index.next, 64
  br i1 %130, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %131 = add nsw i32 %.058, -1
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 64
  %132 = icmp sgt i32 %.058, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %132, label %87, label %._crit_edge61

._crit_edge61:                                    ; preds = %middle.block, %._crit_edge54, %.._crit_edge61_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge61_crit_edge ], [ %95, %._crit_edge54 ], [ %95, %middle.block ]
  %133 = getelementptr double, ptr %5, i64 %.pre-phi
  %134 = getelementptr i8, ptr %133, i64 -8
  %135 = load double, ptr %134, align 8, !tbaa !20
  store double %135, ptr %1, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.trunc.v2f64(<2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"dummy arg data/_QFrandlcEa", !6, i64 0}
!6 = !{!"dummy arg data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPrandlc"}
!10 = !{!11, !11, i64 0}
!11 = !{!"dummy arg data/_QFrandlcEx", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"dummy arg data/_QFvranlcEn", !14, i64 0}
!14 = !{!"dummy arg data", !15, i64 0}
!15 = !{!"any data access", !16, i64 0}
!16 = !{!"any access", !17, i64 0}
!17 = !{!"Flang function root _QPvranlc"}
!18 = !{!19, !19, i64 0}
!19 = !{!"dummy arg data/_QFvranlcEx", !14, i64 0}
!20 = !{!15, !15, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"dummy arg data/_QFvranlcEy", !14, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !25, !24}
!27 = distinct !{!27, !24, !25}
