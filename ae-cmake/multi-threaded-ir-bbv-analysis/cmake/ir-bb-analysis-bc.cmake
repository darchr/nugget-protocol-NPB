list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../..")
include(base_config)

set(TARGET_NAME "ir_bb_analysis_bc")
if(DEFINED ENV{REGION_LENGTH} AND NOT "$ENV{REGION_LENGTH}" STREQUAL "")
	set(REGION_LENGTH "$ENV{REGION_LENGTH}")
else()
    set(REGION_LENGTH 400000000)
endif()
set(HOOK_TARGET "openmp-ir-bb-analysis-balance")

set(OPT_CMD "-O2")

list(APPEND EXTRA_FLAGS "-cpp")
