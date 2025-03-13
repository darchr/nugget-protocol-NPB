cmake_minimum_required(VERSION 3.30 FATAL_ERROR)
project(LU LANGUAGES Fortran C)

set(SYS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../sys)
set(COMMON_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../common)
set(CONFIG_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../config)

add_executable(setparams ${SYS_DIR}/setparams.c)
target_compile_definitions(setparams PRIVATE DEFFILE="${CONFIG_DIR}/make.def")

# can setup SVER

set(ALL_SOURCE_CODE
    lu.f90
    lu_data.f90
    read_input.f90
    domain.f90
    setcoeff.f90
    setbv.f90
    exact.f90
    setiv.f90
    erhs.f90
    ssor${SVER}.f90
    rhs.f90
    l2norm.f90
    jacld.f90
    blts.f90
    jacu.f90
    buts.f90
    error.f90
    pintgr.f90
    verify.f90
    ${COMMON_DIR}/print_results.f90
    ${COMMON_DIR}/timers.f90
    ${COMMON_DIR}/wtime.c
)

# if SVER is not setup, then we also add syncs.f90
if("${SVER}" STREQUAL "")
    list(APPEND ALL_SOURCE_CODE syncs.f90)
endif()

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

message(STATUS "Building LU classes: ${CLASSES}")

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
        COMMAND setparams lu ${CLASS}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}
        DEPENDS setparams
        COMMENT "Generating npbparams.h for CG class ${CLASS}"
    )

    # Create target for this class's npbparams.h
    add_custom_target(generate_npbparams_${CLASS} 
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}/npbparams.h)

    # Create the executable for this class
    add_executable(lu_${CLASS} ${ALL_SOURCE_CODE})

    target_compile_options(lu_${CLASS} PRIVATE 
        -cpp
        -O3
        -fopenmp
    )

    target_link_libraries(lu_${CLASS} PRIVATE m)
    target_link_libraries(lu_${CLASS} PRIVATE -fopenmp)
    
    # Add dependencies
    add_dependencies(lu_${CLASS} generate_npbparams_${CLASS})

    # Set include directories
    target_include_directories(lu_${CLASS} PRIVATE ${COMMON_DIR})
    target_include_directories(lu_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR})
    target_include_directories(lu_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/${CLASS})
    
    # Set Fortran as linker language
    set_target_properties(lu_${CLASS} 
        PROPERTIES 
        LINKER_LANGUAGE Fortran
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
endforeach()
