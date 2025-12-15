list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../..")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(TARGET_NAME "time_naive_${TARGET_ARCH}_exe")

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

if (NOT DEFINED ENV{BC_FILE_PATH} OR "$ENV{BC_FILE_PATH}" STREQUAL "")
	message(FATAL_ERROR "Environment variable BC_FILE_PATH must be set")
endif()

set(BC_FILE_PATH $ENV{BC_FILE_PATH})
set(BC_FILE_BASENAME "time_naive_bc")

message(STATUS "LLC_CMD: ${LLC_CMD}")
