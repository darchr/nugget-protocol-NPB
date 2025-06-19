list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../cmake")
include(base_config)
list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
include(Nugget)


set(GRACE_PERC 0.99)
set(OPT_LEVEL O2)

set(TARGET_NAME 1_thread_dynamorio_count_nugget_${GRACE_PERC}_${OPT_LEVEL}_exe)

set(HOOK_TARGET empty-hooks-nugget)


set(INFO_DIR ${CMAKE_CURRENT_LIST_DIR}/../../info)
set(RANDOM_SELECTION_DIR ${INFO_DIR}/random-selections/1/A)

set(LLC_EXTRATION_FILE_PATH
    ${NUGGET_UTIL_PATH}/cmake/check-cpu-features/llc-command.txt)

if(LLC_EXTRATION_FILE_PATH AND EXISTS ${LLC_EXTRATION_FILE_PATH})
    nugget_read_list(LLC_CMD ${LLC_EXTRATION_FILE_PATH})
else()
    message(WARNING "LLC command not found in ${LLC_EXTRATION_FILE_PATH}")
endif()

if(LLC_CMD)
    list(APPEND LLC_CMD -relocation-model=pic -${OPT_LEVEL})
else()
    set(LLC_CMD -relocation-model=pic -${OPT_LEVEL} -mtriple=${ARCH}-unknown-linux-gnu )
endif()

set(ALL_NUGGET_RIDS_DIR "${RANDOM_SELECTION_DIR}")
set(RID_CONFIG_FILE_NAME "selected-regions.txt")

set(NUGGET_BC_FILE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../cbuild/llvm-bc")
set(NUGGET_BC_FILE_BASENAME 1_thread_dynamorio_count_nugget_${GRACE_PERC}_bc)

message(STATUS "LLC_CMD: ${LLC_CMD}")


