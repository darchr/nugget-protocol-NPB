list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(GRACE_PERC 0.99)

set(TARGET_NAME 1_thread_with_hook_m5_nugget_${GRACE_PERC}_bc)

set(INFO_DIR ${CMAKE_CURRENT_LIST_DIR}/../../info)
set(K_MEANS_SELECTION_DIR ${INFO_DIR}/k-means-selections/1/A)
set(MARKER_DIR ${INFO_DIR}/create-markers/1/A/${GRACE_PERC})
set(BB_INFO_INPUT_DIR ${INFO_DIR}/bb-info-output)

set(HOOK_TARGET single-threaded-empty-m5-nugget)

set(ALL_NUGGET_RIDS_DIR "${K_MEANS_SELECTION_DIR}")
set(RID_CONFIG_FILE_NAME "selected-regions.txt")

set(ALL_MARKER_DIR "${MARKER_DIR}")
set(MARKER_CONFIG_FILE_EXT "-marker.txt")

set(SOURCE_BC_FILE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc")
set(SOURCE_BC_FILE_BASENAME "1_thread_ir_bb_analysis_bc")

set(EXTRA_LIB_PATHS -L${M5_PATH})
set(EXTRA_INCLUDES -I${M5_INCLUDE_PATH})
set(EXTRA_LIBS -lm5)
