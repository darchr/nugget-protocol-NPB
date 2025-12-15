list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../..")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

if (NOT DEFINED ENV{TARGET_NAME} OR "$ENV{TARGET_NAME}" STREQUAL "")
	message(FATAL_ERROR "Environment variable TARGET_NAME must be set")
endif()

set(TARGET_NAME $ENV{TARGET_NAME}_bc)

# Pull required paths from environment; fail fast if missing.
if (NOT DEFINED ENV{ALL_NUGGET_RIDS_DIR} OR "$ENV{ALL_NUGGET_RIDS_DIR}" STREQUAL "")
	message(FATAL_ERROR "Environment variable ALL_NUGGET_RIDS_DIR must be set")
endif()
if (NOT DEFINED ENV{MARKER_DIR} OR "$ENV{MARKER_DIR}" STREQUAL "")
	message(FATAL_ERROR "Environment variable MARKER_DIR must be set")
endif()
if (NOT DEFINED ENV{BB_INFO_INPUT_DIR} OR "$ENV{BB_INFO_INPUT_DIR}" STREQUAL "")
	message(FATAL_ERROR "Environment variable BB_INFO_INPUT_DIR must be set")
endif()
if (NOT DEFINED ENV{SOURCE_BC_FILE_PATH} OR "$ENV{SOURCE_BC_FILE_PATH}" STREQUAL "")
	message(FATAL_ERROR "Environment variable SOURCE_BC_FILE_PATH must be set")
endif()

set(BB_INFO_INPUT_DIR $ENV{BB_INFO_INPUT_DIR})
set(ALL_NUGGET_RIDS_DIR $ENV{ALL_NUGGET_RIDS_DIR})
set(ALL_MARKER_DIR $ENV{MARKER_DIR})
set(SOURCE_BC_FILE_PATH $ENV{SOURCE_BC_FILE_PATH})

set(HOOK_TARGET openmp-time-nugget)
set(RID_CONFIG_FILE_NAME "selected-regions.txt")

set(MARKER_CONFIG_FILE_EXT "-marker.txt")
set(SOURCE_BC_FILE_BASENAME "ir_bb_analysis_bc")
