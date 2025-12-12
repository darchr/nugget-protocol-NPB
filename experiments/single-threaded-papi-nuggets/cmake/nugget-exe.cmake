list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(TARGET_NAME "papi_nugget_exe")

set(LLC_EXTRATION_FILE_PATH
    ${NUGGET_UTIL_PATH}/cmake/check-cpu-features/llc-command.txt)

if(LLC_EXTRATION_FILE_PATH AND EXISTS ${LLC_EXTRATION_FILE_PATH})
    nugget_read_list(LLC_CMD ${LLC_EXTRATION_FILE_PATH})
else()
    message(WARNING "LLC command not found in ${LLC_EXTRATION_FILE_PATH}")
endif()

if(LLC_CMD)
    list(APPEND LLC_CMD -relocation-model=pic -O2)
endif()

if (NOT DEFINED ENV{ALL_NUGGET_RIDS_DIR} OR "$ENV{ALL_NUGGET_RIDS_DIR}" STREQUAL "")
	message(FATAL_ERROR "Environment variable ALL_NUGGET_RIDS_DIR must be set")
endif()

if (NOT DEFINED ENV{SOURCE_BC_FILE_PATH} OR "$ENV{SOURCE_BC_FILE_PATH}" STREQUAL "")
	message(FATAL_ERROR "Environment variable SOURCE_BC_FILE_PATH must be set")
endif()

set(ALL_NUGGET_RIDS_DIR $ENV{ALL_NUGGET_RIDS_DIR})
set(RID_CONFIG_FILE_NAME "selected-regions.txt")

set(NUGGET_BC_FILE_DIR $ENV{SOURCE_BC_FILE_PATH})
set(NUGGET_BC_FILE_BASENAME "papi_nugget_bc")

message(STATUS "LLC_CMD: ${LLC_CMD}")

set(EXTRA_LIB_PATHS -L${PAPI_PATH}/lib)
set(EXTRA_INCLUDES -I${PAPI_PATH}/include)
set(EXTRA_LIBS "-lpapi")
