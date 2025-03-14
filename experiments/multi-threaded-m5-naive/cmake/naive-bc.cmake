list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)

set(TARGET_NAME "papi_naive_bc")
set(HOOK_TARGET papi-naive)

set(SOURCE_BC_FILE_PATH ${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc)
set(SOURCE_BC_FILE_NAME "ir_bb_analysis_bc")

set(EXTRA_LIB_PATHS ${M5_PATH})
set(EXTRA_INCLUDES ${M5_INCLUDE_PATH})
set(EXTRA_LIBS "-lm5")
