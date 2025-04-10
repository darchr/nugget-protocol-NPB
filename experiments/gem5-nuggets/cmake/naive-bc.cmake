list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)

set(TARGET_NAME "annotated_naive_bc")
set(HOOK_TARGET m5-naive)

set(SOURCE_BC_FILE_PATH ${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc)
set(SOURCE_BC_FILE_BASENAME "ir_bb_analysis_bc")

set(EXTRA_LIB_PATHS -L${M5_PATH})
set(EXTRA_INCLUDES -I${M5_INCLUDE_PATH})
set(LABEL_TARGET aarch64)
set(LABEL_WARMUP TRUE)
set(EXTRA_LIBS -lm5)