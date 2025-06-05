list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(TARGET_NAME "1_thread_with_hook_nugget_exe")

set(INFO_DIR ${CMAKE_CURRENT_LIST_DIR}/../../info)
set(UNIQUE_BID_DIR ${INFO_DIR}/find-all-unique-markers/1/A/1)

set(LLC_EXTRATION_FILE_PATH
    ${NUGGET_UTIL_PATH}/cmake/check-cpu-features/llc-command.txt)

if(LLC_EXTRATION_FILE_PATH AND EXISTS ${LLC_EXTRATION_FILE_PATH})
    nugget_read_list(LLC_CMD ${LLC_EXTRATION_FILE_PATH})
else()
    message(WARNING "LLC command not found in ${LLC_EXTRATION_FILE_PATH}")
endif()

if(LLC_CMD)
    list(APPEND LLC_CMD -relocation-model=pic -O2)
else()
    set(LLC_CMD -relocation-model=pic -O2 -mtriple=${ARCH}-unknown-linux-gnu )
endif()

set(ALL_NUGGET_RIDS_DIR "${UNIQUE_BID_DIR}")
set(RID_CONFIG_FILE_NAME "unique_markers.txt")

set(NUGGET_BC_FILE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc")
set(NUGGET_BC_FILE_BASENAME "1_thread_with_hook_nugget_bc")

message(STATUS "LLC_CMD: ${LLC_CMD}")
list(APPEND EXTRA_FLAGS -no-pie)
