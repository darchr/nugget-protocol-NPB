cmake_minimum_required(VERSION 3.30 FATAL_ERROR)
project(FT LANGUAGES Fortran C)

set(SYS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../sys)
set(COMMON_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../common)
set(CONFIG_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../config)

# Check if setparams target exists before creating it
if(NOT TARGET setparams)
    add_executable(setparams ${SYS_DIR}/setparams.c)
    target_compile_definitions(setparams PRIVATE DEFFILE="${CONFIG_DIR}/make.def")
endif()

if("${BLKFAC}" STREQUAL "")
    set(BLKFAC 32)
endif()

if("${RAND}" STREQUAL "")
    set(RAND "randi8")
endif()

set(ALL_SOURCE_CODE
    ft_data.f90
    ft.f90
    ${COMMON_DIR}/print_results.f90
    ${COMMON_DIR}/${RAND}.f90
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

message(STATUS "Building FT classes: ${CLASSES}")

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
        COMMAND setparams ft ${CLASS}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}
        DEPENDS setparams
        COMMENT "Generating npbparams.h for FT class ${CLASS}"
    )

    # Create target for this class's npbparams.h
    add_custom_target(generate_npbparams_ft_${CLASS} 
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}/npbparams.h)

    # Create the executable for this class
    add_executable(ft_${CLASS} ${ALL_SOURCE_CODE})
    
    # Add dependencies
    add_dependencies(ft_${CLASS} generate_npbparams_ft_${CLASS})

    target_compile_options(ft_${CLASS} PRIVATE 
        -cpp
        -O3
        -fopenmp
    )

    target_link_libraries(ft_${CLASS} PRIVATE m)
    target_link_libraries(ft_${CLASS} PRIVATE -fopenmp)

    # Set include directories
    target_include_directories(ft_${CLASS} PRIVATE ${COMMON_DIR})
    target_include_directories(ft_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR})
    target_include_directories(ft_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/${CLASS})
    
    # Set Fortran as linker language
    set_target_properties(ft_${CLASS} 
        PROPERTIES 
        LINKER_LANGUAGE Fortran
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
endforeach()

