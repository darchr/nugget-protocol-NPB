list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(OPT_LEVEL O2)

set(TARGET_NAME 1_thread_m5_naive_${OPT_LEVEL}_exe)

set(LLC_EXTRATION_FILE_PATH
    ${NUGGET_UTIL_PATH}/cmake/check-cpu-features/llc-command.txt)

if(LLC_EXTRATION_FILE_PATH AND EXISTS ${LLC_EXTRATION_FILE_PATH})
    nugget_read_list(LLC_CMD ${LLC_EXTRATION_FILE_PATH})
else()
    message(WARNING "LLC command not found in ${LLC_EXTRATION_FILE_PATH}")
endif()

if(LLC_CMD)
    list(APPEND LLC_CMD -relocation-model=pic -${OPT_LEVEL})
else()
    set(LLC_CMD -relocation-model=pic -${OPT_LEVEL} -mtriple=${ARCH}-unknown-linux-gnu )
endif()

set(BC_FILE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc")
set(BC_FILE_BASENAME "1_thread_ir_bb_analysis_bc")

message(STATUS "LLC_CMD: ${LLC_CMD}")
list(APPEND EXTRA_FLAGS -no-pie)
set(EXTRA_LIB_PATHS -L${M5_PATH})
set(EXTRA_INCLUDES -I${M5_INCLUDE_PATH})
set(EXTRA_LIBS -lm5)