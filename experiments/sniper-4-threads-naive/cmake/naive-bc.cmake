list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)

set(TARGET_NAME "sniper_naive_4_threads_bc")
set(HOOK_TARGET sniper-naive)

set(SOURCE_BC_FILE_PATH ${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc)
set(SOURCE_BC_FILE_BASENAME "ir_bb_analysis_400000000_bc")

# set(EXTRA_INCLUDES -I${SNIPER_INCLUDE_PATH})

