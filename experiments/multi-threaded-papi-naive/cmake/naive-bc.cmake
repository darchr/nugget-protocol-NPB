list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)

set(TARGET_NAME "m5_naive_bc")
set(HOOK_TARGET m5-naive)

set(SOURCE_BC_FILE_PATH ${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc)
set(SOURCE_BC_FILE_BASENAME "ir_bb_analysis_bc")
