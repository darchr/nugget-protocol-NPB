list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../..")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

if (NOT DEFINED ENV{TARGET_NAME} OR "$ENV{TARGET_NAME}" STREQUAL "")
	message(FATAL_ERROR "Environment variable TARGET_NAME must be set")
endif()

set(TARGET_NAME $ENV{TARGET_NAME}_${TARGET_ARCH}_exe)

set(LLC_EXTRATION_FILE_PATH
    ${NUGGET_UTIL_PATH}/cmake/check-cpu-features/${TARGET_ARCH}/llc-command.txt)

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
set(NUGGET_BC_FILE_BASENAME $ENV{TARGET_NAME}_bc)

message(STATUS "LLC_CMD: ${LLC_CMD}")
