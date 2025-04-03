cmake_minimum_required(VERSION 3.30 FATAL_ERROR)
project(NPB LANGUAGES Fortran C)

set(SYS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/sys)
set(COMMON_DIR ${CMAKE_CURRENT_SOURCE_DIR}/common)
set(CONFIG_DIR ${CMAKE_CURRENT_SOURCE_DIR}/config)

if (NOT DEFINED ENV{TARGET_CLASSES})
    message(STATUS "TARGET_CLASSES not set, using default A C D")
    set(TARGET_CLASSES A C D)
else()
    string(REPLACE " " ";" CLASSES_FROM_ENV "$ENV{TARGET_CLASSES}")
    message(STATUS "Using classes from environment variable: $ENV{TARGET_CLASSES}")
    message(STATUS "Classes: ${CLASSES_FROM_ENV}")
    set(TARGET_CLASSES ${CLASSES_FROM_ENV})
endif()

set(TARGET_BENCHMARKS BT CG EP FT IS LU MG SP)

# Allow specific classes to be selected via cmake option
set(CLASSES ${TARGET_CLASSES} CACHE STRING "NPB problem classes to build")

foreach(TARGET ${TARGET_BENCHMARKS})
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/${TARGET})
endforeach()

# from here on is Nugget related

if(DEFINED ENV{NUGGET_PROCESS_TYPE})
    if(NOT DEFINED ENV{NUGGET_CONFIG_FILE})
        message(FATAL_ERROR "NUGGET_CONFIG_FILE not defined")
    else()
        set(NUGGET_CONFIG_FILE $ENV{NUGGET_CONFIG_FILE})
    endif()

    set(ACTUAL_TARGETS "")
    foreach(TARGET ${TARGET_BENCHMARKS})
        foreach(CLASS ${CLASSES})
            string(TOLOWER ${TARGET} target)
            if("${target}" STREQUAL "is")
                if("${CLASS}" STREQUAL "D" OR "${CLASS}" STREQUAL "E")
                    continue()
                endif()
            endif()
            list(APPEND ACTUAL_TARGETS ${target}_${CLASS})
        endforeach()
    endforeach()

    set(TARGET_BENCHMARKS ${ACTUAL_TARGETS})

    set(NUGGET_PROCESS_TYPE $ENV{NUGGET_PROCESS_TYPE})

    message(STATUS "NUGGET_PROCESS_TYPE: ${NUGGET_PROCESS_TYPE}")
    message(STATUS "NUGGET_CONFIG_FILE: ${NUGGET_CONFIG_FILE}")

    include(${NUGGET_CONFIG_FILE})

    list(APPEND CMAKE_MODULE_PATH "${NUGGET_LIBRARY_PATH}")
    list(APPEND CMAKE_MODULE_PATH "${NUGGET_C_HOOKS_PATH}")
    message(STATUS "CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")

    include(Nugget)
    include(hooks)
    llvmir_setup()

    # debug("TARGET_BENCHMARKS: ${TARGET_BENCHMARKS}")
    message(STATUS "TARGET_BENCHMARKS: ${TARGET_BENCHMARKS}")

    set(TARGET "testing")
    set(ALL_EXECS "")

    if("${NUGGET_PROCESS_TYPE}" STREQUAL "npb-ir-bb-analysis-bc")
        message(STATUS "Building npb-ir-bb-analysis-bc")
        set(ALL_BCS "")
        
        foreach(benchmark ${TARGET_BENCHMARKS})
            set(BB_INFO_OUTPUT_PATH "${CMAKE_CURRENT_BINARY_DIR}/bb-info-output/${benchmark}")
            if(NOT EXISTS ${BB_INFO_OUTPUT_PATH})
                file(MAKE_DIRECTORY ${BB_INFO_OUTPUT_PATH})
                if(NOT EXISTS ${BB_INFO_OUTPUT_PATH})
                    message(FATAL_ERROR "Failed to create directory ${BB_INFO_OUTPUT_PATH}")
                endif()
            endif()
            get_target_property(LINKER_LANG ${benchmark} LINKER_LANGUAGE)
            llvmir_set_final_compiler(${LINKER_LANG})
            nugget_bbv_profiling_bc(
                TARGET ${TARGET_NAME}_${benchmark}
                REGION_LENGTH ${REGION_LENGTH}
                BB_INFO_OUTPUT_PATH ${BB_INFO_OUTPUT_PATH}/basic-block-info.txt
                DEPEND_TARGETS ${benchmark}
                EXTRA_FLAGS ${EXTRA_FLAGS}
                EXTRA_INCLUDES ${EXTRA_INCLUDES}
                EXTRA_LIBS ${EXTRA_LIBS}
                EXTRA_LIB_PATHS ${EXTRA_LIB_PATHS}
                HOOK_TARGET ${HOOK_TARGET}
                OPT_CMD ${OPT_CMD}
            )
            list(APPEND ALL_BCS ${TARGET_NAME}_${benchmark})
        endforeach()

        add_custom_target(${TARGET_NAME} DEPENDS ${ALL_BCS})

    elseif("${NUGGET_PROCESS_TYPE}" STREQUAL "npb-analysis-exe")
        message(STATUS "Building npb-analysis-exe")
        message(STATUS "TARGET_NAME ${TARGET_NAME}")
        set(ALL_EXES "")

        if("${BC_FILE_PATH}" STREQUAL "" OR "${BC_FILE_BASENAME}" STREQUAL "")
            message(FATAL_ERROR "No BC_FILE_PATH or BC_FILE_BASENAME")
        endif()
        
        foreach(benchmark ${TARGET_BENCHMARKS})

            if(NOT "${FINAL_BC_FILE_PATH}" STREQUAL "")
                set(FINAL_BC_FILE_PATHS ${FINAL_BC_FILE_PATH}/${FINAL_BC_FILE_BASENAME}_${benchmark}/${FINAL_BC_FILE_BASENAME}_${benchmark}.bc)
            else()
                set(FINAL_BC_FILE_PATHS "")
            endif()

            set(BENCH_BC_FILE_PATH ${BC_FILE_PATH}/${BC_FILE_BASENAME}_${benchmark}/${BC_FILE_BASENAME}_${benchmark}.bc)
            if(NOT EXISTS ${BENCH_BC_FILE_PATH})
                message(FATAL_ERROR "BC file ${BENCH_BC_FILE_PATH} does not exist")
            endif()

            get_target_property(LINKER_LANG ${benchmark} LINKER_LANGUAGE)
            llvmir_set_final_compiler(${LINKER_LANG})
            nugget_compile_exe(
                TARGET ${TARGET_NAME}_${benchmark}
                DEPEND_TARGETS ${benchmark}
                BC_FILE_PATH ${BENCH_BC_FILE_PATH}
                EXTRA_FLAGS ${EXTRA_FLAGS}
                EXTRA_INCLUDES ${EXTRA_INCLUDES}
                EXTRA_LIB_PATHS ${EXTRA_LIB_PATHS}
                EXTRA_LIBS ${EXTRA_LIBS}
                LLC_CMD ${LLC_CMD}
                EXTRACT_FUNCTIONS ${EXTRACT_FUNCTIONS}
                ADDITIONAL_OPT ${ADDITIONAL_OPT}
                FINAL_BC_FILE_PATHS ${FINAL_BC_FILE_PATHS}
            )
            list(APPEND ALL_EXES ${TARGET_NAME}_${benchmark})
        endforeach()

        add_custom_target(${TARGET_NAME} DEPENDS ${ALL_EXES})
    
    elseif("${NUGGET_PROCESS_TYPE}" STREQUAL "npb-papi-analysis-bc")
        message(STATUS "Building npb-papi-analysis-bc")
        
        set(ALL_BCS "")

        if("${SOURCE_BC_FILE_PATH}" STREQUAL "" OR "${SOURCE_BC_FILE_BASENAME}" STREQUAL "")
            message(FATAL_ERROR "No BC_FILE_PATH or BC_FILE_BASENAME")
        endif()

        foreach(benchmark ${TARGET_BENCHMARKS})
            get_target_property(LINKER_LANG ${benchmark} LINKER_LANGUAGE)
            llvmir_set_final_compiler(${LINKER_LANG})

            set(BB_INFO_OUTPUT_PATH "${CMAKE_CURRENT_BINARY_DIR}/papi-analysis-bb-info-output/${benchmark}")
            if(NOT EXISTS ${BB_INFO_OUTPUT_PATH})
                file(MAKE_DIRECTORY ${BB_INFO_OUTPUT_PATH})
                if(NOT EXISTS ${BB_INFO_OUTPUT_PATH})
                    message(FATAL_ERROR "Failed to create directory ${BB_INFO_OUTPUT_PATH}")
                endif()
            endif()

            set(BENCH_BC_FILE_PATH ${SOURCE_BC_FILE_PATH}/${SOURCE_BC_FILE_BASENAME}_${benchmark}_source_opted_bc/${SOURCE_BC_FILE_BASENAME}_${benchmark}_source_opted_bc.bc)
            if(NOT EXISTS ${BENCH_BC_FILE_PATH})
                message(FATAL_ERROR "BC file ${BENCH_BC_FILE_PATH} does not exist")
            endif()

            nugget_papi_profiling_bc(
                TARGET ${TARGET_NAME}_${benchmark}
                REGION_LENGTH ${REGION_LENGTH}
                SOURCE_BC_FILE_PATH ${BENCH_BC_FILE_PATH}
                BB_INFO_OUTPUT_PATH ${BB_INFO_OUTPUT_PATH}/basic-block-info.txt
                HOOK_TARGET ${HOOK_TARGET}
                DEPEND_TARGETS ${benchmark}
                EXTRA_FLAGS ${EXTRA_FLAGS}
                EXTRA_INCLUDES ${EXTRA_INCLUDES}
                EXTRA_LIB_PATHS ${EXTRA_LIB_PATHS}
                EXTRA_LIBS ${EXTRA_LIBS}
            )
            list(APPEND ALL_BCS ${TARGET_NAME}_${benchmark})
        endforeach()
        
        add_custom_target(${TARGET_NAME} DEPENDS ${ALL_BCS})

    elseif("${NUGGET_PROCESS_TYPE}" STREQUAL "npb-naive-bc")
        message(STATUS "Building npb-naive-bc")

        set(ALL_BCS "")

        if("${SOURCE_BC_FILE_PATH}" STREQUAL "" OR "${SOURCE_BC_FILE_BASENAME}" STREQUAL "")
            message(FATAL_ERROR "No SOURCE_BC_FILE_PATH or SOURCE_BC_FILE_BASENAME")
        endif()

        foreach(benchmark ${TARGET_BENCHMARKS})
            get_target_property(LINKER_LANG ${benchmark} LINKER_LANGUAGE)
            llvmir_set_final_compiler(${LINKER_LANG})

            set(BENCH_BC_FILE_PATH ${SOURCE_BC_FILE_PATH}/${SOURCE_BC_FILE_BASENAME}_${benchmark}_source_opted_bc/${SOURCE_BC_FILE_BASENAME}_${benchmark}_source_opted_bc.bc)
            if(NOT EXISTS ${BENCH_BC_FILE_PATH})
                message(FATAL_ERROR "BC file ${BENCH_BC_FILE_PATH} does not exist")
            endif()

            nugget_naive_bc(
                TARGET ${TARGET_NAME}_${benchmark}
                HOOK_TARGET ${HOOK_TARGET}
                SOURCE_BC_FILE_PATH ${BENCH_BC_FILE_PATH}
                HOOK_BC_FILE_PATH ${HOOK_BC_FILE_PATH}
                DEPEND_TARGETS ${benchmark}
                EXTRA_FLAGS ${EXTRA_FLAGS}
                EXTRA_INCLUDES ${EXTRA_INCLUDES}
                EXTRA_LIB_PATHS ${EXTRA_LIB_PATHS}
                EXTRA_LIBS ${EXTRA_LIBS}
            )
            list(APPEND ALL_BCS ${TARGET_NAME}_${benchmark})
        endforeach()

        add_custom_target(${TARGET_NAME} DEPENDS ${ALL_BCS})

    elseif("${NUGGET_PROCESS_TYPE}" STREQUAL "npb-naive-exe")
        message(STATUS "Building npb-naive-exe")

        set(ALL_EXES "")

        if("${BC_FILE_PATH}" STREQUAL "" OR "${BC_FILE_BASENAME}" STREQUAL "")
            message(FATAL_ERROR "No BC_FILE_PATH or BC_FILE_BASENAME")
        endif()

        foreach(benchmark ${TARGET_BENCHMARKS})
            get_target_property(LINKER_LANG ${benchmark} LINKER_LANGUAGE)
            llvmir_set_final_compiler(${LINKER_LANG})

            if(NOT "${FINAL_BC_FILE_PATH}" STREQUAL "")
                set(FINAL_BC_FILE_PATHS ${FINAL_BC_FILE_PATH}/${FINAL_BC_FILE_BASENAME}_${benchmark}/${FINAL_BC_FILE_BASENAME}_${benchmark}.bc)
            else()
                set(FINAL_BC_FILE_PATHS "")
            endif()

            set(BENCH_BC_FILE_PATH ${BC_FILE_PATH}/${BC_FILE_BASENAME}_${benchmark}/${BC_FILE_BASENAME}_${benchmark}.bc)
            if(NOT EXISTS ${BENCH_BC_FILE_PATH})
                message(FATAL_ERROR "BC file ${BENCH_BC_FILE_PATH} does not exist")
            endif()
            
            nugget_compile_exe(
                TARGET ${TARGET_NAME}_${benchmark}
                BC_FILE_PATH ${BENCH_BC_FILE_PATH}
                DEPEND_TARGETS ${benchmark}
                ADDITIONAL_OPT ${ADDITIONAL_OPT}
                EXTRA_FLAGS ${EXTRA_FLAGS}
                EXTRA_INCLUDES ${EXTRA_INCLUDES}
                EXTRA_LIB_PATHS ${EXTRA_LIB_PATHS}
                EXTRA_LIBS ${EXTRA_LIBS}
                LLC_CMD ${LLC_CMD}
                EXTRACT_FUNCTIONS ${EXTRACT_FUNCTIONS}
                FINAL_BC_FILE_PATHS ${FINAL_BC_FILE_PATHS}
            )
            list(APPEND ALL_EXES ${TARGET_NAME}_${benchmark})
        endforeach()

        add_custom_target(${TARGET_NAME} DEPENDS ${ALL_EXES})

    elseif("${NUGGET_PROCESS_TYPE}" STREQUAL "npb-nugget-bc")

        message(STATUS "Building npb-nugget-bc")

        # for NPB, class matters for the nugget
        # therefore, we need to exclude all the classes that are not for these
        # nuggets  

        list(LENGTH TARGET_CLASSES CLASS_COUNT)
        if(CLASS_COUNT GREATER 1)
            message(FATAL_ERROR "More than one class selected. Please select only one class for NPB")
        endif()

        set(ALL_BCS "")

        if(NOT BB_INFO_OUTPUT_PATH)
            set(BB_INFO_OUTPUT_PATH ${CMAKE_BINARY_DIR}/nugget-bb-info-output)
        endif()

        # since the list of targeted benchmark is in here, we need to get the 
        # rid and marker here for each benchmark

        if(NOT ALL_NUGGET_RIDS_DIR OR NOT RID_CONFIG_FILE_NAME)
            message(FATAL_ERROR "No ALL_NUGGET_RIDS_DIR or RID_CONFIG_FILE_NAME")
        endif()

        if(NOT ALL_MARKER_DIR OR NOT MARKER_CONFIG_FILE_EXT)
            message(FATAL_ERROR "No ALL_MARKER_DIR or MARKER_CONFIG_FILE_EXT")
        endif()

        if(NOT BB_INFO_INPUT_DIR)
            message(FATAL_ERROR "No BB_INFO_INPUT_DIR")
        endif()

        foreach(benchmark ${TARGET_BENCHMARKS})
            get_target_property(LINKER_LANG ${benchmark} LINKER_LANGUAGE)
            llvmir_set_final_compiler(${LINKER_LANG})

            # get the rid from the config file
            set(${benchmark}_RID_CONFIG_FILE ${ALL_NUGGET_RIDS_DIR}/${benchmark}/${RID_CONFIG_FILE_NAME})
            if(NOT EXISTS ${${benchmark}_RID_CONFIG_FILE})
                message(FATAL_ERROR "RID config file ${${benchmark}_RID_CONFIG_FILE} does not exist")
            endif()

            nugget_read_list(${benchmark}_ALL_NUGGET_RIDS ${${benchmark}_RID_CONFIG_FILE})
            
            if ("${${benchmark}_ALL_NUGGET_RIDS}" STREQUAL "")
                message(FATAL_ERROR "All nugget RIDs not found in ${${benchmark}_ALL_NUGGET_RIDS}")
            endif()

            set(${benchmark}_MARKER_DIR ${ALL_MARKER_DIR}/${benchmark}/"input-files")
            if(NOT EXISTS ${${benchmark}_MARKER_DIR})
                message(FATAL_ERROR "Marker directory ${${benchmark}_MARKER_DIR} does not exist")
            endif()

            set(${benchmark}_SOURCE_BC_FILE_PATH ${SOURCE_BC_FILE_PATH}/${SOURCE_BC_FILE_BASENAME}_${benchmark}_source_opted_bc/${SOURCE_BC_FILE_BASENAME}_${benchmark}_source_opted_bc.bc)
            if(NOT EXISTS ${${benchmark}_SOURCE_BC_FILE_PATH})
                message(FATAL_ERROR "BC file ${${benchmark}_SOURCE_BC_FILE_PATH} does not exist")
            endif()

            set(${benchmark}_BB_INFO_OUTPUT_PATH ${BB_INFO_OUTPUT_PATH}/${benchmark})
            if(NOT EXISTS ${${benchmark}_BB_INFO_OUTPUT_PATH})
                file(MAKE_DIRECTORY ${${benchmark}_BB_INFO_OUTPUT_PATH})
                if(NOT EXISTS ${${benchmark}_BB_INFO_OUTPUT_PATH})
                    message(FATAL_ERROR "Failed to create directory ${${benchmark}_BB_INFO_OUTPUT_PATH}")
                endif()
            endif()

            nugget_nugget_bc(
                TARGET ${TARGET_NAME}_${benchmark}
                HOOK_TARGET ${HOOK_TARGET}
                SOURCE_BC_FILE_PATH ${${benchmark}_SOURCE_BC_FILE_PATH}
                HOOK_BC_FILE_PATH ${HOOK_BC_FILE_PATH}
                INPUT_FILE_DIR ${${benchmark}_MARKER_DIR}
                INPUT_FILE_NAME_BASE ${MARKER_CONFIG_FILE_EXT}
                BB_INFO_INPUT_PATH ${BB_INFO_INPUT_DIR}/${benchmark}/basic-block-info.txt
                BB_INFO_OUTPUT_DIR ${${benchmark}_BB_INFO_OUTPUT_PATH}
                LABEL_TARGET ${LABEL_TARGET}
                LABEL_WARMUP ${LABEL_WARMUP}
                DEPEND_TARGETS ${benchmark}
                ALL_NUGGET_RIDS ${${benchmark}_ALL_NUGGET_RIDS}
                EXTRA_FLAGS ${EXTRA_FLAGS}
                EXTRA_INCLUDES ${EXTRA_INCLUDES}
                EXTRA_LIB_PATHS ${EXTRA_LIB_PATHS}
                EXTRA_LIBS ${EXTRA_LIBS}
            )
            list(APPEND ALL_BCS ${TARGET_NAME}_${benchmark})

        endforeach()

        add_custom_target(${TARGET_NAME} DEPENDS ${ALL_BCS})
    
    elseif("${NUGGET_PROCESS_TYPE}" STREQUAL "npb-nugget-exe")
        message(STATUS "Building npb-nugget-exe")

        set(ALL_EXES "")

        if(NOT ALL_NUGGET_RIDS_DIR OR NOT RID_CONFIG_FILE_NAME)
            message(FATAL_ERROR "No ALL_NUGGET_RIDS_DIR or RID_CONFIG_FILE_NAME")
        endif()
        
        foreach(benchmark ${TARGET_BENCHMARKS})
            get_target_property(LINKER_LANG ${benchmark} LINKER_LANGUAGE)
            llvmir_set_final_compiler(${LINKER_LANG})
                
            # get the rid from the config file
            set(${benchmark}_RID_CONFIG_FILE ${ALL_NUGGET_RIDS_DIR}/${benchmark}/${RID_CONFIG_FILE_NAME})
            if(NOT EXISTS ${BENCH_RID_CONFIG_FILE})
                message(FATAL_ERROR "RID config file ${BENCH_RID_CONFIG_FILE} does not exist")
            endif()

            nugget_read_list(${benchmark}_ALL_NUGGET_RIDS ${${benchmark}_RID_CONFIG_FILE})
            
            if ("${${benchmark}_ALL_NUGGET_RIDS}" STREQUAL "")
                message(FATAL_ERROR "All nugget RIDs not found in ${BENCH_RID_CONFIG_FILE}")
            endif()

            foreach(rid ${${benchmark}_ALL_NUGGET_RIDS})
                set(RID_BC_FILE_PATH ${NUGGET_BC_FILE_DIR}/${NUGGET_BC_FILE_BASENAME}_${benchmark}_${rid}/${NUGGET_BC_FILE_BASENAME}_${benchmark}_${rid}.bc)
                nugget_compile_exe(
                    TARGET ${TARGET_NAME}_${benchmark}_${rid}
                    BC_FILE_PATH ${RID_BC_FILE_PATH}
                    DEPEND_TARGETS ${benchmark} ${HOOK_TARGET}
                    ADDITIONAL_OPT ${ADDITIONAL_OPT}
                    EXTRA_FLAGS ${EXTRA_FLAGS}
                    EXTRA_INCLUDES ${EXTRA_INCLUDES}
                    EXTRA_LIB_PATHS ${EXTRA_LIB_PATHS}
                    EXTRA_LIBS ${EXTRA_LIBS}
                    LLC_CMD ${LLC_CMD}
                    EXTRACT_FUNCTIONS ${EXTRACT_FUNCTIONS}
                    FINAL_BC_FILE_PATHS ${FINAL_BC_FILE_PATHS_${benchmark}_${rid}}
                )
                list(APPEND ALL_EXES ${TARGET_NAME}_${benchmark}_${rid})
            endforeach()

        endforeach()

        add_custom_target(${TARGET_NAME} DEPENDS ${ALL_EXES})

    else()
        message(FATAL_ERROR "NUGGET_PROCESS_TYPE ${NUGGET_PROCESS_TYPE} not supported")
    endif()
    
endif()
