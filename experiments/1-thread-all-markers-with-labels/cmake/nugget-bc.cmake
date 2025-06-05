list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(TARGET_NAME 1_thread_without_hook_nugget_bc)

set(INFO_DIR ${CMAKE_CURRENT_LIST_DIR}/../../info)
set(UNIQUE_BID_DIR ${INFO_DIR}/find-all-unique-markers/1/A/1)
set(MARKER_DIR ${UNIQUE_BID_DIR})
set(BB_INFO_INPUT_DIR ${INFO_DIR}/bb-info-output)

set(HOOK_TARGET empty-hooks-nugget)

set(ALL_NUGGET_RIDS_DIR "${UNIQUE_BID_DIR}")
set(RID_CONFIG_FILE_NAME "unique_markers.txt")

set(ALL_MARKER_DIR "${MARKER_DIR}")
set(MARKER_CONFIG_FILE_EXT "-marker.txt")

set(SOURCE_BC_FILE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc")
set(SOURCE_BC_FILE_BASENAME "1_thread_ir_bb_analysis_bc")

set(LABEL_TARGET "x86_64")
set(LABEL_WARMUP "true")
