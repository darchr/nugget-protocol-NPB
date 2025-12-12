list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)

set(TARGET_NAME "papi_naive_bc")
set(HOOK_TARGET papi-naive)

if (NOT DEFINED ENV{SOURCE_BC_FILE_PATH} OR "$ENV{SOURCE_BC_FILE_PATH}" STREQUAL "")
	message(FATAL_ERROR "Environment variable SOURCE_BC_FILE_PATH must be set")
endif()

set(SOURCE_BC_FILE_PATH $ENV{SOURCE_BC_FILE_PATH})
set(SOURCE_BC_FILE_BASENAME "ir_bb_analysis_bc")

set(EXTRA_LIB_PATHS -L${PAPI_PATH}/lib)
set(EXTRA_INCLUDES -I${PAPI_PATH}/include)
set(EXTRA_LIBS "-lpapi")
