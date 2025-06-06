set(NUGGET_UTIL_PATH "${CMAKE_CURRENT_LIST_DIR}/../../nugget_util")

set(ARCH "x86_64")
set(LLVM_ROOT "/home/ztpc/compiler/llvm-dir")

set(NUGGET_LIBRARY_PATH "${NUGGET_UTIL_PATH}/cmake")
set(NUGGET_HOOKS_PATH "${NUGGET_UTIL_PATH}/hook_helper")
set(NUGGET_C_HOOKS_PATH "${NUGGET_HOOKS_PATH}/c_hooks")

if ("${ARCH}" STREQUAL "x86_64")
    set(PAPI_PATH "${NUGGET_HOOKS_PATH}/other_tools/papi/x86_64")
    set(M5_PATH "${NUGGET_HOOKS_PATH}/other_tools/gem5/x86")
else()
    set(PAPI_PATH "${NUGGET_HOOKS_PATH}/other_tools/papi/aarch64")
    set(M5_PATH "${NUGGET_HOOKS_PATH}/other_tools/gem5/arm64")
endif()

set(M5_INCLUDE_PATH "${NUGGET_HOOKS_PATH}/other_tools/gem5/include")
set(SNIPER_PATH "${NUGGET_HOOKS_PATH}/other_tools/sniper")

set(LLVM_BC_DIR "${CMAKE_CURRENT_BINARY_DIR}/llvm-bc")

# set if we should use addr mop m5 ops in the beginning and end of the ROI
# for
set(USE_ADDR_VERSION_M5OPS_BEGIN TRUE)
# set(USE_ADDR_VERSION_M5OPS_END TRUE)

set(LLVM_BIN "${LLVM_ROOT}/bin")

set(EXTRA_FLAGS "-lm" "-fopenmp" "-DUSE_NUGGET")
