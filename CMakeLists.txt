cmake_minimum_required(VERSION 3.30 FATAL_ERROR)
project(NPB LANGUAGES Fortran C)

set(SYS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/sys)
set(COMMON_DIR ${CMAKE_CURRENT_SOURCE_DIR}/common)
set(CONFIG_DIR ${CMAKE_CURRENT_SOURCE_DIR}/config)

set(ALL_CLASSES A B C D E)
set(TARGET_BENCHMARKS BT CG EP FT IS LU MG SP)

# Allow specific classes to be selected via cmake option
set(CLASSES ${ALL_CLASSES} CACHE STRING "NPB problem classes to build")

foreach(TARGET ${TARGET_BENCHMARKS})
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/${TARGET})
endforeach()

