list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(TARGET_NAME papi_nugget_bc)

set(INFO_DIR ${CMAKE_CURRENT_LIST_DIR}/../../info)
set(KMEANS_INFO_DIR ${INFO_DIR}/k-means-selections)
set(RANDOM_SELECTIONS_DIR ${INFO_DIR}/random-selections)
set(MARKER_DIR ${INFO_DIR}/create-markers)
set(BB_INFO_DIR ${INFO_DIR}/bb-info-output)

set(HOOK_TARGET openmp-time-nugget)

set(ALL_NUGGET_RIDS_DIR "${KMEANS_INFO_DIR}")
set(RID_CONFIG_FILE_NAME "selected-regions.txt")

set(ALL_MARKER_DIR "${MARKER_DIR}")
set(MARKER_CONFIG_FILE_EXT "-marker.txt")

set(SOURCE_BC_FILE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc")
set(SOURCE_BC_FILE_BASENAME "ir_bb_analysis_bc")

