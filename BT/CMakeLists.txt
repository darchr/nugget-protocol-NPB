cmake_minimum_required(VERSION 3.30 FATAL_ERROR)
project(BT LANGUAGES Fortran C)

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
    add.f90
    adi.f90
    bt_data.f90
    bt.f90
    error.f90
    exact_rhs.f90
    exact_solution.f90
    initialize.f90
    rhs.f90
    set_constants.f90
    solve_subs${BLK}.f90
    verify.f90
    work_lhs${BLK}.f90
    x_solve${BLK}.f90
    y_solve${BLK}.f90
    z_solve${BLK}.f90
    ${COMMON_DIR}/print_results.f90
    ${COMMON_DIR}/timers.f90
    ${COMMON_DIR}/wtime.c
)

# ------------------------------------------------------------------------------
# If we are building the BLK version, we need to generate blk_par.h from blk_par0.h
# This replicates the Makefile step:
#
#   sed -e 's/= 0/= $(BLKFAC)/' blk_par0.h > blk_par.h_wk
#   diff blk_par.h_wk blk_par.h > /dev/null || mv -f blk_par.h_wk blk_par.h
# ------------------------------------------------------------------------------

add_custom_command(
    OUTPUT blk_par.h
    COMMAND ${CMAKE_COMMAND} -E echo "Generating blk_par.h with BLKFAC=${BLKFAC}"
    COMMAND sed -e "s/= 0/= ${BLKFAC}/" ${CMAKE_CURRENT_SOURCE_DIR}/blk_par0.h
            > ${CMAKE_CURRENT_BINARY_DIR}/blk_par.h_wk
    # Remove the compare step and just copy the file
    COMMAND ${CMAKE_COMMAND} -E copy
            ${CMAKE_CURRENT_BINARY_DIR}/blk_par.h_wk
            ${CMAKE_CURRENT_BINARY_DIR}/blk_par.h
    COMMAND ${CMAKE_COMMAND} -E remove -f
            ${CMAKE_CURRENT_BINARY_DIR}/blk_par.h_wk
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/blk_par0.h
    COMMENT "Generating blk_par.h from blk_par0.h using BLKFAC=${BLKFAC}"
)

# We'll make a phony target so that we always generate it before building the .f90 that includes it
add_custom_target(generate_blk_par ALL
    DEPENDS blk_par.h)


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

message(STATUS "Building BT classes: ${CLASSES}")

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
        COMMAND setparams bt ${CLASS}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}
        DEPENDS setparams
        COMMENT "Generating npbparams.h for BT class ${CLASS}"
    )

    # Create target for this class's npbparams.h
    add_custom_target(generate_npbparams_${CLASS} 
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}/npbparams.h)

    # Create the executable for this class
    add_executable(bt_${CLASS} ${ALL_SOURCE_CODE})
    
    # Add dependencies
    add_dependencies(bt_${CLASS} generate_npbparams_${CLASS})
    add_dependencies(bt_${CLASS} generate_blk_par)

    # Set include directories
    target_include_directories(bt_${CLASS} PRIVATE ${COMMON_DIR})
    target_include_directories(bt_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR})
    target_include_directories(bt_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/${CLASS})
    
    # Set Fortran as linker language
    set_target_properties(bt_${CLASS} 
        PROPERTIES 
        LINKER_LANGUAGE Fortran
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
endforeach()
