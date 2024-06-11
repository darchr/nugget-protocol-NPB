FC = /scr/studyztp/compiler/llvm-dir/bin/flang-new
CC = /scr/studyztp/compiler/llvm-dir/bin/clang
OPT = /scr/studyztp/compiler/llvm-dir/bin/opt
LLVM_LINK = /scr/studyztp/compiler/llvm-dir/bin/llvm-link
HW_FLAGS =
LIB_FLAGS = -fopenmp -lm
OPT_FLAGS = -O3 
LLC = /scr/studyztp/compiler/llvm-dir/bin/llc
LLC_FLAGS = -relocation-model=pic -filetype=obj
HOST_ARCH = $(shell uname -m)-unknown-linux-gnu

BASIC_FLAGS = ${HW_FLAGS} ${LIB_FLAGS} ${OPT_FLAGS} 

COMMON = ${PWD}/common
SYS_DIR = ${PWD}/sys

PAPI_PATH = ${COMMON}/all_papi/${TARGET_ARCH}
PAPI_INCLUDE = ${PAPI_PATH}/include
PAPI_LIB = ${PAPI_PATH}/lib
PAPI_LINE = -I${PAPI_INCLUDE} -L${PAPI_LIB} -lpapi -lpthread

M5_PATH = ${COMMON}/gem5
M5_LINE = -I${M5_PATH} -L${M5_PATH}/out -lm5

PROGRAM_UPPER = $(shell echo ${PROGRAM} | tr '[:lower:]' '[:upper:]')
PROGRAM_PATH = ${PWD}/${PROGRAM_UPPER}

ENV_VARS = FC='${FC}' CC='${CC}' OPT='${OPT}' LLVM_LINK='${LLVM_LINK}' \
	HW_FLAGS='${HW_FLAGS}' LIB_FLAGS='${LIB_FLAGS}' OPT_FLAGS='${OPT_FLAGS}' \
	LLC='${LLC}' LLC_FLAGS='${LLC_FLAGS}' BASIC_FLAGS='${BASIC_FLAGS}' \
	COMMON='${COMMON}' SYS_DIR='${SYS_DIR}' PAPI_LINE='${PAPI_LINE}' \
	M5_LINE='${M5_LINE}' HOST_ARCH='${HOST_ARCH}'

F_PROGRAMS = bt cg ep ft lu mg sp

ifeq ($(filter $(PROGRAM),$(F_PROGRAMS)), $(PROGRAM))
COMPILER = ${FC}
else
COMPILER = ${CC}
endif

VERSION_STAMP = 

all: pre ${PROGRAM}

pre:
	cd ${COMMON} && make all ${ENV_VARS}

$(PROGRAM): pre ${PROGRAM_PATH}/${PROGRAM}.bc
${PROGRAM_PATH}/${PROGRAM}.bc:
	cd ${PROGRAM_PATH} && make all ${ENV_VARS}

get_version:
	$(eval FILE := $(wildcard ${PROGRAM_PATH}/*${PROGRAM}_O3_*.bc))
	$(eval VERSION_STAMP := $(subst ${PROGRAM_PATH}/$(PROGRAM)_O3_,,$(basename $(FILE))))
	@echo PROGRAM_PATH=${PROGRAM_PATH}
	@echo PROGRAM=${PROGRAM}
	@echo FILE=${FILE}	
	@echo ${VERSION_STAMP}

naive: ${PROGRAM} get_version naive_${PROGRAM}
naive_${PROGRAM}: ${COMMON}/profile_helper_naive.ll
	cd ${PROGRAM_PATH} && mkdir -p naive
	cd ${PROGRAM_PATH}/naive && ${LLVM_LINK} -o ${PROGRAM}_naive.bc "${PROGRAM_PATH}/${PROGRAM}_O3_${VERSION_STAMP}.bc" ${COMMON}/profile_helper_naive.ll
	cd ${PROGRAM_PATH}/naive && ${LLC} ${LLC_FLAGS} ${PROGRAM}_naive.bc -o ${PROGRAM}_${TARGET_ARCH}_naive.o --march=$(subst _,-,$(TARGET_ARCH))
	cd ${PROGRAM_PATH}/naive && ${COMPILER} ${LIB_FLAGS} ${PROGRAM}_${TARGET_ARCH}_naive.o -o ${PROGRAM}_${TARGET_ARCH}_${VERSION_STAMP}.naive --target=${TARGET_ARCH}-unknown-linux-gnu

papi_naive: ${PROGRAM} get_version papi_naive_${PROGRAM}
papi_naive_${PROGRAM}: ${COMMON}/profile_helper_papi_naive.ll
	cd ${PROGRAM_PATH} && mkdir -p papi_naive
	cd ${PROGRAM_PATH}/papi_naive && ${LLVM_LINK} -o ${PROGRAM}_papi_naive.bc ${PROGRAM_PATH}/${PROGRAM}_O3_${VERSION_STAMP}.bc ${COMMON}/profile_helper_papi_naive.ll
	cd ${PROGRAM_PATH}/papi_naive && ${LLC} ${LLC_FLAGS} ${PROGRAM}_papi_naive.bc -o ${PROGRAM}_${TARGET_ARCH}_papi_naive.o --march=$(subst _,-,$(TARGET_ARCH))
	cd ${PROGRAM_PATH}/papi_naive && ${COMPILER} ${PAPI_LINE} ${LIB_FLAGS} ${PROGRAM}_${TARGET_ARCH}_papi_naive.o -o ${PROGRAM}_${TARGET_ARCH}_${VERSION_STAMP}.papi_naive --target=${TARGET_ARCH}-unknown-linux-gnu

profiling: ${PROGRAM} get_version profiling_${PROGRAM}
profiling_${PROGRAM}: ${COMMON}/profile_helper_profiling.ll
	cd ${PROGRAM_PATH} && mkdir -p profiling
	cd ${PROGRAM_PATH}/profiling && ${LLVM_LINK} -o ${PROGRAM}_profiling.bc ${PROGRAM_PATH}/${PROGRAM}_O3_${VERSION_STAMP}.bc ${COMMON}/profile_helper_profiling.ll
	cd ${PROGRAM_PATH}/profiling && ${OPT} -passes=phase-analysis -phase-analysis-output-file=basic_block_info_output_${VERSION_STAMP}.txt ${PROGRAM}_profiling.bc -o ${PROGRAM}_profiling_opt.bc \
		2>> phase_analysis_log_${VERSION_STAMP}.log
	cd ${PROGRAM_PATH}/profiling && ${LLC} ${LLC_FLAGS} ${PROGRAM}_profiling_opt.bc -o ${PROGRAM}_${TARGET_ARCH}_profiling.o --march=$(subst _,-,$(TARGET_ARCH))
	cd ${PROGRAM_PATH}/profiling && ${COMPILER} ${LIB_FLAGS} ${PROGRAM}_${TARGET_ARCH}_profiling.o -o ${PROGRAM}_${TARGET_ARCH}_${VERSION_STAMP}.profiling --target=${TARGET_ARCH}-unknown-linux-gnu

m5_fs: get_version m5_fs_${PROGRAM}_${REGION}
m5_fs_${PROGRAM}_${REGION}: ${COMMON}/profile_helper_m5_fs.ll
	cd ${PROGRAM_PATH} && mkdir -p m5_fs
	cd ${PROGRAM_PATH}/m5_fs && mkdir -p ${REGION}
	cd ${PROGRAM_PATH}/m5_fs/${REGION} && ${LLVM_LINK} -o ${PROGRAM}_m5_fs.bc ${PROGRAM_PATH}/${PROGRAM}_O3_${VERSION_STAMP}.bc ${COMMON}/profile_helper_m5_fs.ll
	cd ${PROGRAM_PATH}/m5_fs/${REGION} && ${OPT} -passes=phase-bound \
	-phase-bound-bb-order-file=${PROGRAM_PATH}/profiling/basic_block_info_output_${VERSION_STAMP}.txt \
	-phase-bound-input-file=${PROGRAM_PATH}/clusters/${REGION}.txt \
	-phase-bound-output-file=basic_block_info_output_${VERSION_STAMP}.txt ${PROGRAM}_m5_fs.bc -o ${PROGRAM}_m5_fs_opt.bc \
	2>> phase_bound_log_${VERSION_STAMP}.log
	cd ${PROGRAM_PATH}/m5_fs/${REGION} && ${LLC} ${LLC_FLAGS} ${PROGRAM}_m5_fs_opt.bc -o ${PROGRAM}_${TARGET_ARCH}_m5_fs.o --march=$(subst _,-,$(TARGET_ARCH))
	cd ${PROGRAM_PATH}/m5_fs/${REGION} && ${COMPILER} ${LIB_FLAGS} ${PROGRAM}_${TARGET_ARCH}_m5_fs.o -o ${PROGRAM}_${TARGET_ARCH}_${VERSION_STAMP}.m5_fs --target=${TARGET_ARCH}-unknown-linux-gnu ${M5_LINE} 

papi: get_version papi_${PROGRAM}
papi_${PROGRAM}: ${COMMON}/profile_helper_papi.ll
	cd ${PROGRAM_PATH} && mkdir -p papi
	cd ${PROGRAM_PATH}/papi && mkdir -p ${REGION}
	cd ${PROGRAM_PATH}/papi/${REGION} && ${LLVM_LINK} -o ${PROGRAM}_papi.bc ${PROGRAM_PATH}/${PROGRAM}_O3_${VERSION_STAMP}.bc ${COMMON}/profile_helper_papi.ll
	cd ${PROGRAM_PATH}/papi/${REGION} && ${OPT} -passes=phase-bound \
	-phase-bound-bb-order-file=${PROGRAM_PATH}/profiling/basic_block_info_output_${VERSION_STAMP}.txt \
	-phase-bound-input-file=${PROGRAM_PATH}/clusters/${REGION}.txt \
	-phase-bound-output-file=basic_block_info_output_${VERSION_STAMP}.txt ${PROGRAM}_papi.bc -o ${PROGRAM}_papi_opt.bc \
	2>> phase_bound_log_${VERSION_STAMP}.log
	cd ${PROGRAM_PATH}/papi/${REGION} && ${LLC} ${LLC_FLAGS} ${PROGRAM}_papi_opt.bc -o ${PROGRAM}_${TARGET_ARCH}_papi.o --march=$(subst _,-,$(TARGET_ARCH))
	cd ${PROGRAM_PATH}/papi/${REGION} && ${COMPILER} ${PAPI_LINE} ${LIB_FLAGS} ${PROGRAM}_${TARGET_ARCH}_papi.o -o ${PROGRAM}_${TARGET_ARCH}_${VERSION_STAMP}.papi --target=${TARGET_ARCH}-unknown-linux-gnu

cross_compile_naive: get_version cross_compile_naive_${PROGRAM}_${TARGET_ARCH}
cross_compile_naive_${PROGRAM}_${TARGET_ARCH}:
	cd ${PROGRAM_PATH}/naive && mkdir -p ${TARGET_ARCH} 
	cd ${PROGRAM_PATH}/naive/${TARGET_ARCH} && ${LLC} ${LLC_FLAGS} ../${PROGRAM}_naive.bc -o ${PROGRAM}_${TARGET_ARCH}_naive.o --march=$(subst _,-,$(TARGET_ARCH))
	cd ${PROGRAM_PATH}/naive/${TARGET_ARCH} && ${COMPILER} ${LIB_FLAGS} ${PROGRAM}_${TARGET_ARCH}_naive.o -o ${PROGRAM}_${TARGET_ARCH}_${VERSION_STAMP}.naive --target=${TARGET_ARCH}-unknown-linux-gnu

cross_compile_profiling: get_version cross_compile_profiling_${PROGRAM}_${TARGET_ARCH}
cross_compile_profiling_${PROGRAM}_${TARGET_ARCH}:
	cd ${PROGRAM_PATH}/profiling && mkdir -p ${TARGET_ARCH}
	cd ${PROGRAM_PATH}/profiling/${TARGET_ARCH} && ${LLC} ${LLC_FLAGS} ../${PROGRAM}_profiling_opt.bc -o ${PROGRAM}_${TARGET_ARCH}_profiling.o --march=$(subst _,-,$(TARGET_ARCH))
	cd ${PROGRAM_PATH}/profiling/${TARGET_ARCH} && ${COMPILER} ${LIB_FLAGS} ${PROGRAM}_${TARGET_ARCH}_profiling.o -o ${PROGRAM}_${TARGET_ARCH}_${VERSION_STAMP}.profiling --target=${TARGET_ARCH}-unknown-linux-gnu

clean:
	cd ${COMMON} && make clean
	cd ${PROGRAM_PATH} && make clean

clean_all:
	cd ${COMMON} && make clean
	cd ${PROGRAM_PATH} && make clean_all



