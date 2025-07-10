set(NUGGET_UTIL_PATH "${CMAKE_CURRENT_LIST_DIR}/../../nugget_util")

set(NUGGET_LIBRARY_PATH "${NUGGET_UTIL_PATH}/cmake")
set(NUGGET_HOOKS_PATH "${NUGGET_UTIL_PATH}/hook_helper")
set(NUGGET_C_HOOKS_PATH "${NUGGET_HOOKS_PATH}/c_hooks")

set(PAPI_PATH "${NUGGET_HOOKS_PATH}/other_tools/papi/aarch64")
set(M5_PATH "${NUGGET_HOOKS_PATH}/other_tools/gem5/arm64")
set(M5_INCLUDE_PATH "${NUGGET_HOOKS_PATH}/other_tools/gem5/include")

set(LLVM_BC_DIR "${CMAKE_CURRENT_BINARY_DIR}/llvm-bc")

set(LLVM_ROOT "/scr/studyztp/compiler/llvm-dir")
set(LLVM_BIN "${LLVM_ROOT}/bin")

set(EXTRA_FLAGS "-lm" "-fopenmp" "-DUSE_NUGGET")
