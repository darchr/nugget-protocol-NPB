# Prefer environment overrides when present, otherwise fall back to defaults.
if(DEFINED ENV{NUGGET_UTIL_PATH} AND NOT "$ENV{NUGGET_UTIL_PATH}" STREQUAL "")
	set(NUGGET_UTIL_PATH "$ENV{NUGGET_UTIL_PATH}")
else()
	set(NUGGET_UTIL_PATH "${CMAKE_CURRENT_LIST_DIR}/../../nugget_util")
endif()

# Check the architecture of the target system.
if(CMAKE_SYSTEM_PROCESSOR MATCHES "aarch64")
	set(TARGET_ARCH "aarch64")
	set(GEM5_ABI "arm64")
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "x86_64")
	set(TARGET_ARCH "x86_64")
	set(GEM5_ABI "x86")
else()
	message(FATAL_ERROR "Unsupported target architecture: ${CMAKE_SYSTEM_PROCESSOR}")
endif()

set(NUGGET_LIBRARY_PATH "${NUGGET_UTIL_PATH}/cmake")
set(NUGGET_HOOKS_PATH "${NUGGET_UTIL_PATH}/hook_helper")
set(NUGGET_C_HOOKS_PATH "${NUGGET_HOOKS_PATH}/c_hooks")

set(PAPI_PATH "${NUGGET_HOOKS_PATH}/other_tools/papi/${TARGET_ARCH}")
set(M5_PATH "${NUGGET_HOOKS_PATH}/other_tools/gem5/${GEM5_ABI}")
set(M5_INCLUDE_PATH "${NUGGET_HOOKS_PATH}/other_tools/gem5/include")

set(LLVM_BC_DIR "${CMAKE_CURRENT_BINARY_DIR}/llvm-bc")

if(DEFINED ENV{LLVM_DIR} AND NOT "$ENV{LLVM_DIR}" STREQUAL "")
	set(LLVM_DIR "$ENV{LLVM_DIR}")
else()
	set(LLVM_DIR "${CMAKE_CURRENT_LIST_DIR}/../../llvm-dir/${TARGET_ARCH}")
endif()
set(LLVM_BIN "${LLVM_DIR}/bin")

set(EXTRA_FLAGS "-lm" "-fopenmp" "-DUSE_NUGGET")
