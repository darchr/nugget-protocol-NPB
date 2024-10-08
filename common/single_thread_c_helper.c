#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <time.h> 

#define BOOL uint8_t
#define TRUE 1
#define FALSE 0

#define ARRAY_SIZE 1000

__attribute__((no_profile_instrument_function))

unsigned long long calculate_nsec_difference(struct timespec start, struct timespec end) {
    long long nsec_diff = end.tv_nsec - start.tv_nsec;
    long long sec_diff = end.tv_sec - start.tv_sec;
    return sec_diff * 1000000000LL + nsec_diff;
}

#ifdef PROFILING
unsigned long long counter = 0;

unsigned long long region = 0;
unsigned long long total_num_bbs = 0;

unsigned long long* bbv;
unsigned long long* timestamp;
unsigned long long** bbv_array;
unsigned long long** timestamp_array;
unsigned long long* counter_array;
unsigned long long current_array_size = ARRAY_SIZE;

BOOL if_start = FALSE;

__attribute__((no_profile_instrument_function))
void increase_array() {

    current_array_size += ARRAY_SIZE;
    bbv_array = (unsigned long long**)realloc(bbv_array, current_array_size * sizeof(unsigned long long*));
    timestamp_array = (unsigned long long**)realloc(timestamp_array, current_array_size * sizeof(unsigned long long*));
    if (bbv_array == NULL || timestamp_array == NULL) {
        printf("Error: realloc failed\n");
        exit(1);
    }
    for (unsigned long long i = current_array_size - ARRAY_SIZE; i < current_array_size; i++) {
        bbv_array[i] = (unsigned long long*)malloc((total_num_bbs) * sizeof(unsigned long long));
        timestamp_array[i] = (unsigned long long*)malloc((total_num_bbs) * sizeof(unsigned long long));
        if (bbv_array[i] == NULL || timestamp_array[i] == NULL) {
            printf("Error: malloc failed\n");
            exit(1);
        }
        memset(bbv_array[i], 0, total_num_bbs * sizeof(unsigned long long));
        memset(timestamp_array[i], 0, total_num_bbs * sizeof(unsigned long long));
    }
    counter_array = (unsigned long long*)realloc(counter_array, current_array_size * sizeof(unsigned long long));
    if (counter_array == NULL) {
        printf("Error: realloc failed\n");
        exit(1);
    }
}

__attribute__((no_profile_instrument_function))
void process_data() {
    counter_array[region] = counter;
    region ++;
    bbv = bbv_array[region];
    timestamp = timestamp_array[region];
    if (region + 100 >= current_array_size) {
        increase_array();
    }
    counter = 0;
}

__attribute__((no_profile_instrument_function))
void bb_hook(unsigned long long bb_inst, unsigned long long bb_id, unsigned long long threshold) {
    if (if_start) {
        counter += bb_inst;
        bbv[bb_id] += bb_inst;
        timestamp[bb_id] = counter;
        if (counter > threshold) {
            process_data();
        }
    }
}

__attribute__((no_profile_instrument_function))
void init_array(unsigned long long num_bbs) {
    total_num_bbs = num_bbs;
    bbv_array = (unsigned long long**)malloc(current_array_size * sizeof(unsigned long long*));
    timestamp_array = (unsigned long long**)malloc(current_array_size * sizeof(unsigned long long*));
    counter_array = (unsigned long long*)malloc(current_array_size * sizeof(unsigned long long));
    if (bbv_array == NULL || timestamp_array == NULL || counter_array == NULL) {
        printf("Error: malloc failed\n");
        exit(1);
    }
    for (unsigned long long i = 0; i < current_array_size; i++) {
        bbv_array[i] = (unsigned long long*)malloc((total_num_bbs) * sizeof(unsigned long long));
        timestamp_array[i] = (unsigned long long*)malloc((total_num_bbs) * sizeof(unsigned long long));
        if (bbv_array[i] == NULL || timestamp_array[i] == NULL) {
            printf("Error: malloc failed\n");
            exit(1);
        }
        memset(bbv_array[i], 0, total_num_bbs * sizeof(unsigned long long));
        memset(timestamp_array[i], 0, total_num_bbs * sizeof(unsigned long long));
    }
    bbv = bbv_array[region];
    timestamp = timestamp_array[region];
}

__attribute__((no_profile_instrument_function))
void delete_array() {
    for (unsigned long long i = 0; i < current_array_size; i++) {
        free(bbv_array[i]);
        free(timestamp_array[i]);
    }
    free(bbv_array);
    free(timestamp_array);
    free(counter_array);
}

__attribute__((no_profile_instrument_function))
void roi_begin_() {
    if_start = TRUE;

    printf("ROI begin\n");
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
    if_start = FALSE;

    process_data();

    char outputfile[256];
    sprintf(outputfile, "all_output_1_threads.txt");

    FILE* fptr = fopen(outputfile, "w");
    if (fptr == NULL) {
        printf("Error: cannot open file\n");
        exit(1);
    }

    unsigned long long total_IR_inst = 0;

    for (unsigned long long i = 0; i < region; i ++) {
        fprintf(fptr, "Region: %llu\n", i);
        total_IR_inst += counter_array[i];
        fprintf(fptr, "Total IR instructions: %llu\n", total_IR_inst);
        fprintf(fptr, "Total IR instructions in region: %llu\n", counter_array[i]);
        fprintf(fptr, "Thread 0 BBV and Timestamp: [");
        for (unsigned long long k = 0; k < total_num_bbs; k ++) {
            fprintf(fptr, "%llu:%llu,", bbv_array[i][k], timestamp_array[i][k]);
        }
        fprintf(fptr, "]\n");
    }

    fclose(fptr);

    delete_array();

    printf("ROI end\n");
    printf("Region: %llu\n", region);
    printf("Total IR instructions: %llu\n", total_IR_inst);
}

#endif // PROFILING

#ifdef USING_PAPI_PROFILING
#include <papi.h>

unsigned long long counter = 0;
unsigned long long region = 0;
unsigned long long total_IR_inst = 0;

BOOL if_start = FALSE;

__attribute__((no_profile_instrument_function, noinline))
void start_papi_region() {
    char str[64];
    sprintf(str, "%llu", region);
    int retval = PAPI_hl_region_begin(str);
    if (retval != PAPI_OK) {
        printf("PAPI_hl_region_begin failed due to %d.\n", retval);
    }
}

__attribute__((no_profile_instrument_function, noinline))
void end_papi_region() {
    char str[64];
    sprintf(str, "%llu", region);
    int retval = PAPI_hl_region_end(str);
    if (retval != PAPI_OK) {
        printf("PAPI_hl_region_end failed due to %d.\n", retval);
    }
}

__attribute__((no_profile_instrument_function, noinline))
void bb_hook(unsigned long long bb_inst, unsigned long long threshold) {
    if (if_start) { 
        counter += bb_inst;
        if (counter >= threshold) {
            end_papi_region();
            total_IR_inst += counter;
            counter = 0;
            region ++;
            start_papi_region();
        }
    }
}

__attribute__((no_profile_instrument_function, noinline))
void roi_begin_() {
    if_start = TRUE;

    int retval = PAPI_library_init(PAPI_VER_CURRENT);
    if (retval != PAPI_VER_CURRENT) {
        printf("PAPI_library_init failed due to %d.\n", retval);
    }
    retval = PAPI_set_domain(PAPI_DOM_ALL);
    // this specifies that we want to measure all the domains 
    // (user, kernel, etc.)
    if (retval != PAPI_OK) {
        printf("PAPI_set_domain failed due to %d.\n", retval);
    }

    printf("ROI begin\n");

    start_papi_region();
}

__attribute__((no_profile_instrument_function, noinline))
void roi_end_() {
    if_start = FALSE;

    end_papi_region();

    printf("ROI end\n");
    printf("Region: %llu\n", region);
    printf("Total IR instructions: %llu\n", total_IR_inst);
}

#endif // USING_PAPI_PROFILING

#ifdef MEASURING

unsigned long long counter = 0;

unsigned long long warmup_threshold;
unsigned long long start_threshold;
unsigned long long end_threshold;

BOOL if_warmup_not_met = FALSE;
BOOL if_start_not_met = FALSE;
BOOL if_end_not_met = FALSE;

#ifdef PAPI_MEASURING
#include <papi.h>

__attribute__((no_profile_instrument_function))
void warmup_event() {
    printf("PAPI warmup event\n");
}

__attribute__((no_profile_instrument_function))
void start_event() {
    printf("Papi Start marker\n");
    int retval = PAPI_hl_region_begin("0");
    if (retval != PAPI_OK) {
        printf("PAPI_hl_region_begin failed due to %d.\n", retval);
    }
}

__attribute__((no_profile_instrument_function, noinline))
void end_event() {
    int retval = PAPI_hl_region_end("0");
    if (retval != PAPI_OK) {
        printf("PAPI_hl_region_end failed due to %d.\n", retval);
    }
    printf("Papi End marker\n");
    printf("Now exiting the program\n");
    exit(0);
}

__attribute__((no_profile_instrument_function, noinline))
void roi_begin_() {
    if_warmup_not_met = TRUE;

    int retval = PAPI_library_init(PAPI_VER_CURRENT);
    if (retval != PAPI_VER_CURRENT) {
        printf("PAPI_library_init failed due to %d.\n", retval);
    }
    retval = PAPI_set_domain(PAPI_DOM_ALL);
    if (retval != PAPI_OK) {
        printf("PAPI_set_domain failed due to %d.\n", retval);
    }
    printf("ROI started\n");
    printf("PAPI initialized\n");
}

__attribute__((no_profile_instrument_function, noinline))
void roi_end_() {
    // do nothing because  the program should exit before this function 
    // is called
    printf("ROI ended\n");
}

#elif defined(M5_FS_MEASURING) // PAPI_MEASURING

#include "gem5/m5ops.h"
#include "m5_mmap.h"
#include <errno.h>
#include <sys/utsname.h>

__attribute__((no_profile_instrument_function))
void warmup_event() {
    printf("M5_FS Warmup marker\n");
#ifdef USING_INST_MODE
    m5_work_begin(0, 0);
#else
    m5_work_begin_addr(0, 0);
#endif
}

__attribute__((no_profile_instrument_function))
void start_event() {
    printf("M5_FS Start marker\n");
    m5_work_begin(0, 0);
}

__attribute__((no_profile_instrument_function))
void end_event() {
    printf("M5_FS End marker\n");
    m5_work_end(0, 0);
}

__attribute__((no_profile_instrument_function))
void roi_begin_() {
    if_warmup_not_met = TRUE;

    struct utsname buffer;
    errno = 0;
    if (uname(&buffer) < 0) {
        perror("uname");
        exit(EXIT_FAILURE);
    }

    printf("arch     = %s\n", buffer.machine);

    if (strcmp(buffer.machine, "x86_64") == 0) {
        m5op_addr = 0xFFFF0000;
    } else if (strcmp(buffer.machine, "aarch64") == 0) {
        m5op_addr = 0x10010000;
    } else {
        m5op_addr = 0x0;
        printf("Unsupported architecture\n");
    }

#ifndef USING_INST_MODE
    printf("M5_FS ADDR MOP initialized\n");
    map_m5_mem();
#endif
    printf("M5_FS ROI started\n");
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
#ifndef USING_INST_MODE
    unmap_m5_mem();
#endif
    printf("M5_FS ROI ended\n");
}

#endif // M5_FS_MEASURING

__attribute__((no_profile_instrument_function))
void setup_threshold(unsigned long long warmup, unsigned long long start, unsigned long long end) {

    warmup_threshold = warmup;
    start_threshold = start;
    end_threshold = end;

    if (warmup_threshold == 0) {
        warmup_threshold = 1;
    }

    if (start_threshold == 0) {
        start_threshold = 1;
    }

    if (end_threshold == 0) {
        end_threshold = 1;
    }

    printf("Warmup threshold: %llu\n", warmup_threshold);
    printf("Start threshold: %llu\n", start_threshold);
    printf("End threshold: %llu\n", end_threshold);
}

__attribute__((no_profile_instrument_function))
void warmup_hook() {
    if (if_warmup_not_met) {
        counter ++;
        if (counter == warmup_threshold) {
            if_warmup_not_met = FALSE;
            printf("Warm up marker met\n");
            warmup_event();
            counter = 0;
            if_start_not_met = TRUE;
        }
    }
}

__attribute__((no_profile_instrument_function))
void start_hook() {
    if (if_start_not_met) {
        counter ++;
        if (counter == start_threshold) {
            if_start_not_met = FALSE;
            printf("Start marker met\n");
            start_event();
            counter = 0;
            if_end_not_met = TRUE;
        }
    }
}

__attribute__((no_profile_instrument_function))
void end_hook() {
    if (if_end_not_met) {
        counter ++;
        if (counter == end_threshold) {
            if_end_not_met = FALSE;
            printf("End marker met\n");
            end_event();
        }
    }
}

#endif // MEASURING
