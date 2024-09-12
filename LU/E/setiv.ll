; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@_QMlu_dataEa = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEb = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEc = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEd = external global [1020 x [5 x [5 x double]]]
@_QMlu_dataEflux = external global [1020 x [5 x double]]
@_QMlu_dataEnx = external local_unnamed_addr global i32
@_QMlu_dataEnx0 = external global i32
@_QMlu_dataEny = external local_unnamed_addr global i32
@_QMlu_dataEny0 = external global i32
@_QMlu_dataEnz = external global i32
@_QMlu_dataEu = external local_unnamed_addr global { ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_QMlu_dataEa.cache = common global ptr null, align 8
@_QMlu_dataEb.cache = common global ptr null, align 8
@_QMlu_dataEc.cache = common global ptr null, align 8
@_QMlu_dataEd.cache = common global ptr null, align 8
@_QMlu_dataEflux.cache = common global ptr null, align 8

; Function Attrs: nounwind
define void @setiv_() local_unnamed_addr #0 {
entry:
  %omp_global_thread_num5 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %0 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEa, i64 204000, ptr nonnull @_QMlu_dataEa.cache)
  %1 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEb, i64 204000, ptr nonnull @_QMlu_dataEb.cache)
  %2 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEc, i64 204000, ptr nonnull @_QMlu_dataEc.cache)
  %3 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEd, i64 204000, ptr nonnull @_QMlu_dataEd.cache)
  %4 = tail call ptr @__kmpc_threadprivate_cached(ptr nonnull @1, i32 %omp_global_thread_num5, ptr nonnull @_QMlu_dataEflux, i64 40800, ptr nonnull @_QMlu_dataEflux.cache)
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 0, ptr nonnull @setiv_..omp_par)
  ret void
}

; Function Attrs: nounwind
define internal void @setiv_..omp_par(ptr noalias nocapture readnone %tid.addr, ptr noalias nocapture readnone %zero.addr) #0 {
omp.par.entry:
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x double], align 8
  %7 = alloca [5 x double], align 8
  %8 = alloca [5 x double], align 8
  %9 = alloca [5 x double], align 8
  %10 = alloca [5 x double], align 8
  %11 = alloca [5 x double], align 8
  %12 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !4
  %13 = add i32 %12, -1
  %14 = load i32, ptr @_QMlu_dataEny, align 4, !tbaa !10
  %15 = add i32 %14, -1
  %16 = icmp slt i32 %13, 2
  %17 = add i32 %12, -2
  %omp_loop.tripcount = select i1 %16, i32 0, i32 %17
  %18 = icmp slt i32 %15, 2
  %19 = add i32 %14, -2
  %omp_loop.tripcount7 = select i1 %18, i32 0, i32 %19
  %20 = mul nuw i32 %omp_loop.tripcount7, %omp_loop.tripcount
  store i32 0, ptr %p.lowerbound, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num25 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %omp_global_thread_num25, i32 34, ptr nonnull %p.lastiter, ptr nonnull %p.lowerbound, ptr nonnull %p.upperbound, ptr nonnull %p.stride, i32 1, i32 0)
  %22 = load i32, ptr %p.lowerbound, align 4
  %23 = load i32, ptr %p.upperbound, align 4
  %reass.sub = sub i32 %23, %22
  %omp_collapsed.cmp34.not = icmp eq i32 %reass.sub, -1
  br i1 %omp_collapsed.cmp34.not, label %omp_collapsed.exit, label %omp_collapsed.body.preheader

omp_collapsed.body.preheader:                     ; preds = %omp.par.entry
  %24 = getelementptr inbounds i8, ptr %11, i64 8
  %25 = getelementptr inbounds i8, ptr %10, i64 8
  %26 = getelementptr inbounds i8, ptr %9, i64 8
  %27 = getelementptr inbounds i8, ptr %8, i64 8
  %28 = getelementptr inbounds i8, ptr %7, i64 8
  %29 = getelementptr inbounds i8, ptr %6, i64 8
  %30 = getelementptr inbounds i8, ptr %11, i64 16
  %31 = getelementptr inbounds i8, ptr %10, i64 16
  %32 = getelementptr inbounds i8, ptr %9, i64 16
  %33 = getelementptr inbounds i8, ptr %8, i64 16
  %34 = getelementptr inbounds i8, ptr %7, i64 16
  %35 = getelementptr inbounds i8, ptr %6, i64 16
  %36 = getelementptr inbounds i8, ptr %11, i64 24
  %37 = getelementptr inbounds i8, ptr %10, i64 24
  %38 = getelementptr inbounds i8, ptr %9, i64 24
  %39 = getelementptr inbounds i8, ptr %8, i64 24
  %40 = getelementptr inbounds i8, ptr %7, i64 24
  %41 = getelementptr inbounds i8, ptr %6, i64 24
  %42 = getelementptr inbounds i8, ptr %11, i64 32
  %43 = getelementptr inbounds i8, ptr %10, i64 32
  %44 = getelementptr inbounds i8, ptr %9, i64 32
  %45 = getelementptr inbounds i8, ptr %8, i64 32
  %46 = getelementptr inbounds i8, ptr %7, i64 32
  %47 = getelementptr inbounds i8, ptr %6, i64 32
  br label %omp_collapsed.body

omp_collapsed.exit:                               ; preds = %omp.wsloop.region24, %omp.par.entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %omp_global_thread_num25)
  ret void

omp_collapsed.body:                               ; preds = %omp_collapsed.body.preheader, %omp.wsloop.region24
  %omp_collapsed.iv35 = phi i32 [ %omp_collapsed.next, %omp.wsloop.region24 ], [ 0, %omp_collapsed.body.preheader ]
  %48 = add i32 %omp_collapsed.iv35, %22
  %.frozen = freeze i32 %48
  %.frozen42 = freeze i32 %19
  %49 = udiv i32 %.frozen, %.frozen42
  %50 = mul i32 %49, %.frozen42
  %.decomposed = sub i32 %.frozen, %50
  %51 = add i32 %49, 2
  %52 = add i32 %.decomposed, 2
  store i32 %51, ptr %5, align 4, !tbaa !12
  store i32 %52, ptr %4, align 4, !tbaa !12
  %53 = add i32 %49, 1
  %54 = sitofp i32 %53 to double
  %55 = load i32, ptr @_QMlu_dataEnz, align 4, !tbaa !4
  %56 = add i32 %55, -1
  %57 = sitofp i32 %56 to double
  %58 = fdiv contract double %54, %57
  %59 = add nuw i32 %.decomposed, 1
  %60 = sitofp i32 %59 to double
  %61 = load i32, ptr @_QMlu_dataEny0, align 4, !tbaa !13
  %62 = add i32 %61, -1
  %63 = sitofp i32 %62 to double
  %64 = fdiv contract double %60, %63
  %65 = load i32, ptr @_QMlu_dataEnx, align 4, !tbaa !15
  %66 = add i32 %65, -1
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %omp.wsloop.region20.lr.ph, label %omp.wsloop.region24

omp.wsloop.region20.lr.ph:                        ; preds = %omp_collapsed.body
  %68 = zext nneg i32 %66 to i64
  %69 = fsub contract double 1.000000e+00, %64
  %70 = fsub contract double 1.000000e+00, %58
  br label %omp.wsloop.region20

omp.wsloop.region24:                              ; preds = %omp.wsloop.region20, %omp_collapsed.body
  %.lcssa = phi i32 [ 2, %omp_collapsed.body ], [ %233, %omp.wsloop.region20 ]
  store i32 %.lcssa, ptr %3, align 4, !tbaa !12
  %omp_collapsed.next = add nuw i32 %omp_collapsed.iv35, 1
  %exitcond.not = icmp eq i32 %omp_collapsed.iv35, %reass.sub
  br i1 %exitcond.not, label %omp_collapsed.exit, label %omp_collapsed.body

omp.wsloop.region20:                              ; preds = %omp.wsloop.region20.lr.ph, %omp.wsloop.region20
  %.in = phi i64 [ %68, %omp.wsloop.region20.lr.ph ], [ %231, %omp.wsloop.region20 ]
  %71 = phi i32 [ 2, %omp.wsloop.region20.lr.ph ], [ %233, %omp.wsloop.region20 ]
  store i32 %71, ptr %3, align 4, !tbaa !12
  %72 = add i32 %71, -1
  %73 = sitofp i32 %72 to double
  %74 = load i32, ptr @_QMlu_dataEnx0, align 4, !tbaa !17
  %75 = add i32 %74, -1
  %76 = sitofp i32 %75 to double
  %77 = fdiv contract double %73, %76
  store i32 1, ptr %2, align 4, !tbaa !12
  call void @exact_(ptr nonnull %2, ptr nonnull %4, ptr nonnull %5, ptr nonnull %11) #1
  call void @exact_(ptr nonnull @_QMlu_dataEnx0, ptr nonnull %4, ptr nonnull %5, ptr nonnull %10) #1
  store i32 1, ptr %1, align 4, !tbaa !12
  call void @exact_(ptr nonnull %3, ptr nonnull %1, ptr nonnull %5, ptr nonnull %9) #1
  call void @exact_(ptr nonnull %3, ptr nonnull @_QMlu_dataEny0, ptr nonnull %5, ptr nonnull %8) #1
  store i32 1, ptr %0, align 4, !tbaa !12
  call void @exact_(ptr nonnull %3, ptr nonnull %4, ptr nonnull %0, ptr nonnull %7) #1
  call void @exact_(ptr nonnull %3, ptr nonnull %4, ptr nonnull @_QMlu_dataEnz, ptr nonnull %6) #1
  %78 = fsub contract double 1.000000e+00, %77
  %.unpack = load ptr, ptr @_QMlu_dataEu, align 8, !tbaa !19
  %.unpack17.unpack.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7), align 8, !tbaa !19
  %.unpack17.unpack.unpack22 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 0, i64 1), align 8, !tbaa !19
  %.unpack17.unpack18.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1), align 8, !tbaa !19
  %.unpack17.unpack18.unpack25 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 1, i64 1), align 8, !tbaa !19
  %.unpack17.unpack19.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2), align 8, !tbaa !19
  %.unpack17.unpack19.unpack28 = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 2, i64 1), align 8, !tbaa !19
  %.unpack17.unpack20.unpack = load i64, ptr getelementptr inbounds ({ ptr, i64, i32, i8, i8, i8, i8, [4 x [3 x i64]] }, ptr @_QMlu_dataEu, i64 0, i32 7, i64 3), align 8, !tbaa !19
  %79 = load i32, ptr %3, align 4, !tbaa !12
  %80 = sext i32 %79 to i64
  %81 = load i32, ptr %4, align 4, !tbaa !12
  %82 = sext i32 %81 to i64
  %83 = load i32, ptr %5, align 4, !tbaa !12
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %80, %.unpack17.unpack18.unpack
  %86 = mul nsw i64 %85, %.unpack17.unpack.unpack22
  %87 = mul nsw i64 %.unpack17.unpack18.unpack25, %.unpack17.unpack.unpack22
  %88 = sub nsw i64 %82, %.unpack17.unpack19.unpack
  %89 = mul nsw i64 %88, %87
  %90 = mul nsw i64 %.unpack17.unpack19.unpack28, %87
  %91 = sub nsw i64 %84, %.unpack17.unpack20.unpack
  %92 = mul nsw i64 %90, %91
  %93 = getelementptr double, ptr %.unpack, i64 %92
  %94 = getelementptr double, ptr %93, i64 %89
  %95 = getelementptr double, ptr %94, i64 %86
  %96 = load double, ptr %11, align 8, !tbaa !12
  %97 = fmul contract double %78, %96
  %98 = load double, ptr %10, align 8, !tbaa !12
  %99 = fmul contract double %77, %98
  %100 = fadd contract double %97, %99
  %101 = load double, ptr %9, align 8, !tbaa !12
  %102 = fmul contract double %69, %101
  %103 = load double, ptr %8, align 8, !tbaa !12
  %104 = fmul contract double %64, %103
  %105 = fadd contract double %102, %104
  %106 = load double, ptr %7, align 8, !tbaa !12
  %107 = fmul contract double %70, %106
  %108 = load double, ptr %6, align 8, !tbaa !12
  %109 = fmul contract double %58, %108
  %110 = fadd contract double %107, %109
  %111 = fadd contract double %100, %105
  %112 = fadd contract double %111, %110
  %113 = fmul contract double %100, %105
  %114 = fsub contract double %112, %113
  %115 = fmul contract double %105, %110
  %116 = fsub contract double %114, %115
  %117 = fmul contract double %100, %110
  %118 = fsub contract double %116, %117
  %119 = fmul contract double %113, %110
  %120 = fadd contract double %119, %118
  %121 = sub nsw i64 1, %.unpack17.unpack.unpack
  %122 = getelementptr double, ptr %95, i64 %121
  store double %120, ptr %122, align 8, !tbaa !21
  %123 = load double, ptr %24, align 8, !tbaa !12
  %124 = fmul contract double %78, %123
  %125 = load double, ptr %25, align 8, !tbaa !12
  %126 = fmul contract double %77, %125
  %127 = fadd contract double %124, %126
  %128 = load double, ptr %26, align 8, !tbaa !12
  %129 = fmul contract double %69, %128
  %130 = load double, ptr %27, align 8, !tbaa !12
  %131 = fmul contract double %64, %130
  %132 = fadd contract double %129, %131
  %133 = load double, ptr %28, align 8, !tbaa !12
  %134 = fmul contract double %70, %133
  %135 = load double, ptr %29, align 8, !tbaa !12
  %136 = fmul contract double %58, %135
  %137 = fadd contract double %134, %136
  %138 = fadd contract double %127, %132
  %139 = fadd contract double %138, %137
  %140 = fmul contract double %127, %132
  %141 = fsub contract double %139, %140
  %142 = fmul contract double %132, %137
  %143 = fsub contract double %141, %142
  %144 = fmul contract double %127, %137
  %145 = fsub contract double %143, %144
  %146 = fmul contract double %140, %137
  %147 = fadd contract double %146, %145
  %148 = sub nsw i64 2, %.unpack17.unpack.unpack
  %149 = getelementptr double, ptr %95, i64 %148
  store double %147, ptr %149, align 8, !tbaa !21
  %150 = load double, ptr %30, align 8, !tbaa !12
  %151 = fmul contract double %78, %150
  %152 = load double, ptr %31, align 8, !tbaa !12
  %153 = fmul contract double %77, %152
  %154 = fadd contract double %151, %153
  %155 = load double, ptr %32, align 8, !tbaa !12
  %156 = fmul contract double %69, %155
  %157 = load double, ptr %33, align 8, !tbaa !12
  %158 = fmul contract double %64, %157
  %159 = fadd contract double %156, %158
  %160 = load double, ptr %34, align 8, !tbaa !12
  %161 = fmul contract double %70, %160
  %162 = load double, ptr %35, align 8, !tbaa !12
  %163 = fmul contract double %58, %162
  %164 = fadd contract double %161, %163
  %165 = fadd contract double %154, %159
  %166 = fadd contract double %165, %164
  %167 = fmul contract double %154, %159
  %168 = fsub contract double %166, %167
  %169 = fmul contract double %159, %164
  %170 = fsub contract double %168, %169
  %171 = fmul contract double %154, %164
  %172 = fsub contract double %170, %171
  %173 = fmul contract double %167, %164
  %174 = fadd contract double %173, %172
  %175 = sub nsw i64 3, %.unpack17.unpack.unpack
  %176 = getelementptr double, ptr %95, i64 %175
  store double %174, ptr %176, align 8, !tbaa !21
  %177 = load double, ptr %36, align 8, !tbaa !12
  %178 = fmul contract double %78, %177
  %179 = load double, ptr %37, align 8, !tbaa !12
  %180 = fmul contract double %77, %179
  %181 = fadd contract double %178, %180
  %182 = load double, ptr %38, align 8, !tbaa !12
  %183 = fmul contract double %69, %182
  %184 = load double, ptr %39, align 8, !tbaa !12
  %185 = fmul contract double %64, %184
  %186 = fadd contract double %183, %185
  %187 = load double, ptr %40, align 8, !tbaa !12
  %188 = fmul contract double %70, %187
  %189 = load double, ptr %41, align 8, !tbaa !12
  %190 = fmul contract double %58, %189
  %191 = fadd contract double %188, %190
  %192 = fadd contract double %181, %186
  %193 = fadd contract double %192, %191
  %194 = fmul contract double %181, %186
  %195 = fsub contract double %193, %194
  %196 = fmul contract double %186, %191
  %197 = fsub contract double %195, %196
  %198 = fmul contract double %181, %191
  %199 = fsub contract double %197, %198
  %200 = fmul contract double %194, %191
  %201 = fadd contract double %200, %199
  %202 = sub nsw i64 4, %.unpack17.unpack.unpack
  %203 = getelementptr double, ptr %95, i64 %202
  store double %201, ptr %203, align 8, !tbaa !21
  %204 = load double, ptr %42, align 8, !tbaa !12
  %205 = fmul contract double %78, %204
  %206 = load double, ptr %43, align 8, !tbaa !12
  %207 = fmul contract double %77, %206
  %208 = fadd contract double %205, %207
  %209 = load double, ptr %44, align 8, !tbaa !12
  %210 = fmul contract double %69, %209
  %211 = load double, ptr %45, align 8, !tbaa !12
  %212 = fmul contract double %64, %211
  %213 = fadd contract double %210, %212
  %214 = load double, ptr %46, align 8, !tbaa !12
  %215 = fmul contract double %70, %214
  %216 = load double, ptr %47, align 8, !tbaa !12
  %217 = fmul contract double %58, %216
  %218 = fadd contract double %215, %217
  %219 = fadd contract double %208, %213
  %220 = fadd contract double %219, %218
  %221 = fmul contract double %208, %213
  %222 = fsub contract double %220, %221
  %223 = fmul contract double %213, %218
  %224 = fsub contract double %222, %223
  %225 = fmul contract double %208, %218
  %226 = fsub contract double %224, %225
  %227 = fmul contract double %221, %218
  %228 = fadd contract double %227, %226
  %229 = sub nsw i64 5, %.unpack17.unpack.unpack
  %230 = getelementptr double, ptr %95, i64 %229
  store double %228, ptr %230, align 8, !tbaa !21
  %231 = add nsw i64 %.in, -1
  %232 = load i32, ptr %3, align 4, !tbaa !12
  %233 = add i32 %232, 1
  %234 = icmp ugt i64 %.in, 2
  br i1 %234, label %omp.wsloop.region20, label %omp.wsloop.region24
}

declare void @exact_(ptr, ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__kmpc_threadprivate_cached(ptr, i32, ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare !callback !24 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+outline-atomics,+v8a,+fp-armv8,+neon" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"openmp", i32 11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"global data/_QMlu_dataEnz", !6, i64 0}
!6 = !{!"global data", !7, i64 0}
!7 = !{!"any data access", !8, i64 0}
!8 = !{!"any access", !9, i64 0}
!9 = !{!"Flang function root _QPsetiv"}
!10 = !{!11, !11, i64 0}
!11 = !{!"global data/_QMlu_dataEny", !6, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"global data/_QMlu_dataEny0", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"global data/_QMlu_dataEnx", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"global data/_QMlu_dataEnx0", !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"descriptor member", !8, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"direct data/_QMlu_dataEu", !23, i64 0}
!23 = !{!"direct data", !7, i64 0}
!24 = !{!25}
!25 = !{i64 2, i64 -1, i64 -1, i1 true}
