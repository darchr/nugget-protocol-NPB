cmake_minimum_required(VERSION 3.30 FATAL_ERROR)
project(SP LANGUAGES Fortran C)

set(SYS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../sys)
set(COMMON_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../common)
set(CONFIG_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../config)

add_executable(setparams ${SYS_DIR}/setparams.c)
target_compile_definitions(setparams PRIVATE DEFFILE="${CONFIG_DIR}/make.def")

if("${BLKFAC}" STREQUAL "")
    set(BLKFAC 0)
endif()

if(NOT "${BLK}" STREQUAL "")
    set(BLK _blk)
endif()

set(ALL_SOURCE_CODE
    sp.f90
    sp_data.f90
    initialize.f90
    exact_solution.f90
    exact_rhs.f90
    set_constants.f90
    adi.f90
    rhs.f90
    work_lhs${BLK}.f90
    x_solve${BLK}.f90
    ninvr.f90
    y_solve${BLK}.f90
    pinvr.f90
    z_solve${BLK}.f90
    tzetar.f90
    add.f90
    txinvr.f90
    error.f90
    verify.f90
    ${COMMON_DIR}/print_results.f90
    ${COMMON_DIR}/timers.f90
    ${COMMON_DIR}/wtime.c
)

if (EXISTS "${CMAKE_CURRENT_BINARY_DIR}/blk_par.h")
    file(REMOVE "${CMAKE_CURRENT_BINARY_DIR}/blk_par.h")
endif()

file(READ "${CMAKE_CURRENT_SOURCE_DIR}/blk_par0.h" BLKPAR0_CONTENTS)
string(REPLACE "=0" "=${BLKFAC}" BLKPAR_CONTENTS "${BLKPAR0_CONTENTS}")
string(REPLACE "= 0" "=${BLKFAC}" BLKPAR_CONTENTS "${BLKPAR_CONTENTS}")
file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/blk_par.h" "${BLKPAR_CONTENTS}")

message(STATUS "Built blk_par.h with BLKFAC=${BLKFAC}") 

if("${CLASSES}" STREQUAL "")
    if(DEFINED ENV{CLASSES})
        string(REPLACE " " ";" CLASSES_FROM_ENV "$ENV{CLASSES}")
        message(STATUS "Using classes from environment variable: $ENV{CLASSES}")
        message(STATUS "Classes: ${CLASSES_FROM_ENV}")
        set(CLASSES ${CLASSES_FROM_ENV})
    else()
        message(FATAL_ERROR "No classes specified. Please set CLASSES or CLASS environment
                            variable to a valid class (A, B, C, D, or E)")
    endif()
endif()

message(STATUS "Building SP classes: ${CLASSES}")

foreach(CLASS ${CLASSES})
    # Generate npbparams.h for this class
    if(NOT EXISTS ${CMAKE_CURRENT_BINARY_DIR}/${CLASS})
        FILE(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${CLASS})
        if(NOT EXISTS ${CMAKE_CURRENT_BINARY_DIR}/${CLASS})
            message(FATAL_ERROR "Could not create directory ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}")
        endif()
    endif()
    add_custom_command(
        OUTPUT  ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}/npbparams.h
        COMMAND setparams sp ${CLASS}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}
        DEPENDS setparams
        COMMENT "Generating npbparams.h for SP class ${CLASS}"
    )

    # Create target for this class's npbparams.h
    add_custom_target(generate_npbparams_${CLASS} 
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}/npbparams.h)

    # Create the executable for this class
    add_executable(sp_${CLASS} ${ALL_SOURCE_CODE})

    target_compile_options(sp_${CLASS} PRIVATE 
        -cpp
        -O3
        -fopenmp
    )

    target_link_libraries(sp_${CLASS} PRIVATE m)
    target_link_libraries(sp_${CLASS} PRIVATE -fopenmp)

    # Add dependencies
    add_dependencies(sp_${CLASS} generate_npbparams_${CLASS})

    # Set include directories
    target_include_directories(sp_${CLASS} PRIVATE ${COMMON_DIR})
    target_include_directories(sp_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR})
    target_include_directories(sp_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/${CLASS})
    
    # Set Fortran as linker language
    set_target_properties(sp_${CLASS} 
        PROPERTIES 
        LINKER_LANGUAGE Fortran
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
endforeach()
