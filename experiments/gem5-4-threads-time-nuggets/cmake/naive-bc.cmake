list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(TARGET_NAME time_nugget_4_threads_bc)

set(INFO_DIR ${CMAKE_CURRENT_LIST_DIR}/../../4-threads-info)
set(KMEANS_INFO_DIR ${INFO_DIR}/k-means-selections)
set(MARKER_DIR ${INFO_DIR}/create-markers/0.98)
set(BB_INFO_INPUT_DIR ${INFO_DIR}/bb-info-output)

set(HOOK_TARGET openmp-time-nugget)

set(ALL_NUGGET_RIDS_DIR "${KMEANS_INFO_DIR}")
set(RID_CONFIG_FILE_NAME "selected-regions.txt")

set(ALL_MARKER_DIR "${MARKER_DIR}")
set(MARKER_CONFIG_FILE_EXT "-marker.txt")

set(SOURCE_BC_FILE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc")
set(SOURCE_BC_FILE_BASENAME "ir_bb_analysis_400000000_bc")

set(EXTRA_LIB_PATHS -L${PAPI_PATH}/lib)
set(EXTRA_INCLUDES -I${PAPI_PATH}/include)
set(EXTRA_LIBS -lpapi -lpfm)
