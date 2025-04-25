list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)

set(TARGET_NAME "ir_bb_analysis_1600000000_bc")
set(REGION_LENGTH 1600000000)
set(HOOK_TARGET "openmp-ir-bb-analysis-balance")

set(OPT_CMD "-O2")

list(APPEND EXTRA_FLAGS "-cpp")
