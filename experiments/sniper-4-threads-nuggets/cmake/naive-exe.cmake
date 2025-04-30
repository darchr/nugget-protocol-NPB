list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)

set(TARGET_NAME "m5_nugget_4_threads_exe")

set(INFO_DIR ${CMAKE_CURRENT_LIST_DIR}/../../4-threads-info)
set(KMEANS_INFO_DIR ${INFO_DIR}/k-means-selections)
set(RANDOM_SELECTIONS_DIR ${INFO_DIR}/random-selections)

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

set(ALL_NUGGET_RIDS_DIR "${KMEANS_INFO_DIR}")
set(RID_CONFIG_FILE_NAME "selected-regions.txt")

set(NUGGET_BC_FILE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc")
set(NUGGET_BC_FILE_BASENAME "m5_nugget_4_threads_bc")

message(STATUS "LLC_CMD: ${LLC_CMD}")

list(APPEND EXTRA_FLAGS -no-pie)
set(EXTRA_INCLUDES -I${SNIPER_INCLUDE_PATH})
