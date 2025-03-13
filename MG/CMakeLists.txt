cmake_minimum_required(VERSION 3.30 FATAL_ERROR)
project(MG LANGUAGES Fortran C)

set(SYS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../sys)
set(COMMON_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../common)
set(CONFIG_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../config)

# Check if setparams target exists before creating it
if(NOT TARGET setparams)
    add_executable(setparams ${SYS_DIR}/setparams.c)
    target_compile_definitions(setparams PRIVATE DEFFILE="${CONFIG_DIR}/make.def")
endif()

if("${RAND}" STREQUAL "")
    set(RAND "randi8")
endif()

set(ALL_SOURCE_CODE
    mg.f90
    mg_data.f90
    ${COMMON_DIR}/print_results.f90
    ${COMMON_DIR}/${RAND}.f90
    ${COMMON_DIR}/timers.f90
    ${COMMON_DIR}/wtime.c
)

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

message(STATUS "Building MG classes: ${CLASSES}")

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
        COMMAND setparams mg ${CLASS}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}
        DEPENDS setparams
        COMMENT "Generating npbparams.h for MG class ${CLASS}"
    )

    # Create target for this class's npbparams.h
    add_custom_target(generate_npbparams_mg_${CLASS} 
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${CLASS}/npbparams.h)

    # Create the executable for this class
    add_executable(mg_${CLASS} ${ALL_SOURCE_CODE})

    target_compile_options(mg_${CLASS} PRIVATE 
        -cpp
        -O3
        -fopenmp
    )

    target_link_libraries(mg_${CLASS} PRIVATE m)
    target_link_libraries(mg_${CLASS} PRIVATE -fopenmp)
    
    # Add dependencies
    add_dependencies(mg_${CLASS} generate_npbparams_mg_${CLASS})

    # Set include directories
    target_include_directories(mg_${CLASS} PRIVATE ${COMMON_DIR})
    target_include_directories(mg_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR})
    target_include_directories(mg_${CLASS} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/${CLASS})
    
    # Set Fortran as linker language
    set_target_properties(mg_${CLASS} 
        PROPERTIES 
        LINKER_LANGUAGE Fortran
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
endforeach()
