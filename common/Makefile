FLAGS=${BASIC_FLAGS}

# all: c_print_results.ll c_timers.ll print_results.ll randdp.ll randdpvec.ll \
# 	randi8_safe.ll randi8.ll timers.ll wtime.ll \
# 	profile_helper_naive.ll profile_helper_profiling.ll \
# 	profile_helper_m5_fs.ll profile_helper_papi.ll \
# 	profile_helper_papi_profiling.ll \
# 	profile_helper_papi_naive.ll

all: c_print_results.ll c_timers.ll print_results.ll randdp.ll randdpvec.ll \
	randi8_safe.ll randi8.ll timers.ll wtime.ll \
	c_profiling.ll \
	c_naive.ll \
	c_papi_profiling.ll \
	c_papi_measuring.ll \
	c_m5_fs_measuring.ll \
	c_m5_fs_inst_measuring.ll \
	c_papi_naive.ll \
	c_time_naive.ll \
	c_marker_overhead_measuring.ll \
	c_marker_looppoint_m5_fs.ll \
	c_marker_looppoint_m5_fs_inst.ll \
	c_m5_fs_warmup_marker_only.ll \
	c_m5_fs_inst_warmup_marker_only.ll \
	single_thread_c_profiling.ll \
	single_thread_c_papi_profiling.ll \
	single_thread_c_papi_measuring.ll \
	single_thread_c_m5_fs_measuring.ll \
	single_thread_c_m5_fs_measuring_inst.ll \
	c_m5_fs_naive.ll \
	c_m5_fs_inst_naive.ll

c_print_results.ll: c_print_results.c
	${CC} ${FLAGS} -S -emit-llvm c_print_results.c -o c_print_results.ll

c_timers.ll: c_timers.c
	${CC} ${FLAGS} -S -emit-llvm c_timers.c -o c_timers.ll

print_results.ll: print_results.f90
	${FC} ${FLAGS} -S -emit-llvm print_results.f90 -o print_results.ll

randdp.ll: randdp.f90
	${FC} ${FLAGS} -S -emit-llvm randdp.f90 -o randdp.ll

randdpvec.ll: randdpvec.f90
	${FC} ${FLAGS} -S -emit-llvm randdpvec.f90 -o randdpvec.ll

randi8_safe.ll: randi8_safe.f90
	${FC} ${FLAGS} -S -emit-llvm randi8_safe.f90 -o randi8_safe.ll

randi8.ll: randi8.f90
	${FC} ${FLAGS} -S -emit-llvm randi8.f90 -o randi8.ll

timers.ll: timers.f90
	${FC} ${FLAGS} -S -emit-llvm timers.f90 -o timers.ll

wtime.ll: wtime.c
	${CC} ${FLAGS} -S -emit-llvm wtime.c -o wtime.ll

c_naive.ll: c_helper.c
	${CC} ${FLAGS} -S -DNAIVE -emit-llvm \
	c_helper.c -o c_naive.ll

c_profiling.ll: c_helper.c 
	${CC} ${FLAGS} -S -DPROFILING -emit-llvm \
	c_helper.c -o c_profiling.ll

c_papi_profiling.ll: c_helper.c 
	${CC} ${FLAGS} -S -DUSING_PAPI_PROFILING -emit-llvm \
	c_helper.c -o c_papi_profiling.ll 

c_papi_measuring.ll: c_helper.c 
	${CC} ${FLAGS} -S -DMEASURING -DPAPI_MEASURING -emit-llvm \
	c_helper.c -o c_papi_measuring.ll 

c_m5_fs_measuring.ll: c_helper.c 
	${CC} ${FLAGS} -S -DMEASURING -DM5_FS_MEASURING -emit-llvm \
	c_helper.c -o c_m5_fs_measuring.ll ${M5_LINE}

c_m5_fs_inst_measuring.ll: c_helper.c
	${CC} ${FLAGS} -S -DMEASURING -DM5_FS_MEASURING \
	-DUSING_INST_MODE -emit-llvm \
	c_helper.c -o c_m5_fs_inst_measuring.ll ${M5_LINE}

c_papi_naive.ll: c_helper.c
	${CC} ${FLAGS} -S -DPAPI_NAIVE -emit-llvm \
	c_helper.c -o c_papi_naive.ll ${PAPI_LINE}

c_time_naive.ll: c_helper.c
	${CC} ${FLAGS} -S -DTIMING_NAIVE -emit-llvm \
	c_helper.c -o c_time_naive.ll

c_marker_overhead_measuring.ll: c_helper.c
	${CC} ${FLAGS} -S -DMEASURING -DMARKER_OVERHEAD_MEASURING \
	-emit-llvm c_helper.c -o c_marker_overhead_measuring.ll ${PAPI_LINE}

c_m5_fs_warmup_marker_only.ll: c_helper.c
	${CC} ${FLAGS} -S -DM5_FS_WARMUP_MARKER_ONLY -emit-llvm \
	c_helper.c -o c_m5_fs_warmup_marker_only.ll ${M5_LINE}

c_m5_fs_inst_warmup_marker_only.ll: c_helper.c
	${CC} ${FLAGS} -S -DM5_FS_WARMUP_MARKER_ONLY -DUSING_INST_MODE \
	-emit-llvm c_helper.c -o c_m5_fs_inst_warmup_marker_only.ll ${M5_LINE}

c_marker_looppoint_m5_fs.ll: c_helper.c
	${CC} ${FLAGS} -S -DLOOPPOINT_M5_FS -emit-llvm \
	c_helper.c -o c_marker_looppoint_m5_fs.ll ${M5_LINE}

c_marker_looppoint_m5_fs_inst.ll: c_helper.c
	${CC} ${FLAGS} -S -DLOOPPOINT_M5_FS -DUSING_INST_MODE -emit-llvm \
	c_helper.c -o c_marker_looppoint_m5_fs_inst.ll ${M5_LINE}

single_thread_c_profiling.ll: single_thread_c_helper.c
	${CC} ${FLAGS} -S -DPROFILING -emit-llvm \
	single_thread_c_helper.c -o single_thread_c_profiling.ll

single_thread_c_papi_profiling.ll: single_thread_c_helper.c
	${CC} ${FLAGS} -S -DUSING_PAPI_PROFILING -emit-llvm \
	single_thread_c_helper.c -o single_thread_c_papi_profiling.ll ${PAPI_LINE}

single_thread_c_papi_measuring.ll: single_thread_c_helper.c
	${CC} ${FLAGS} -S -DMEASURING -DPAPI_MEASURING -emit-llvm \
	single_thread_c_helper.c -o single_thread_c_papi_measuring.ll ${PAPI_LINE}

single_thread_c_m5_fs_measuring.ll: single_thread_c_helper.c
	${CC} ${FLAGS} -S -DMEASURING -DM5_FS_MEASURING -emit-llvm \
	single_thread_c_helper.c -o single_thread_c_m5_fs_measuring.ll ${M5_LINE}

single_thread_c_m5_fs_measuring_inst.ll: single_thread_c_helper.c
	${CC} ${FLAGS} -S -DMEASURING -DM5_FS_MEASURING -DUSING_INST_MODE \
	-emit-llvm single_thread_c_helper.c -o \
	single_thread_c_m5_fs_measuring_inst.ll \
	${M5_LINE}

c_m5_fs_naive.ll: c_helper.c
	${CC} ${FLAGS} -S -DM5_FS_NAIVE -emit-llvm \
	c_helper.c -o c_m5_fs_naive.ll ${M5_LINE}

c_m5_fs_inst_naive.ll: c_helper.c 
	${CC} ${FLAGS} -S -DM5_FS_NAIVE -DUSING_INST_MODE -emit-llvm \
	c_helper.c -o c_m5_fs_inst_naive.ll ${M5_LINE}

clean:
	rm -f *.ll
