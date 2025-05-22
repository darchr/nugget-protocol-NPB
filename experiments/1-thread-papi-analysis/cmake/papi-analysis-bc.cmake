list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)

set(TARGET_NAME "papi_analysis_bc")
set(REGION_LENGTH 100000000)
set(HOOK_TARGET "single-threaded-papi-analysis")

list(APPEND EXTRA_FLAGS "-cpp")

set(SOURCE_BC_FILE_PATH ${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc)
set(SOURCE_BC_FILE_BASENAME "ir_bb_analysis_bc")
