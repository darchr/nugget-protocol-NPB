list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(TARGET_NAME "papi_naive_exe")

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

set(BC_FILE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc")
set(BC_FILE_BASENAME "papi_naive_bc")

message(STATUS "LLC_CMD: ${LLC_CMD}")

set(EXTRA_LIB_PATHS -L${PAPI_PATH}/lib)
set(EXTRA_INCLUDES -I${PAPI_PATH}/include)
set(EXTRA_LIBS -lpapi -lpfm)

