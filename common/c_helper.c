#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <omp.h>
#include <time.h> 

#define BOOL uint8_t
#define TRUE 1
#define FALSE 0

#define ARRAY_SIZE 1000

__attribute__((no_profile_instrument_function))
unsigned long long calculate_nsec_difference(struct timespec start, struct timespec end) {
/*
 * :param: start: the start time
 * :param: end: the end time
 * :return: the difference between the two times in nanoseconds
*/
    long long nsec_diff = end.tv_nsec - start.tv_nsec;
    long long sec_diff = end.tv_sec - start.tv_sec;
    return sec_diff * 1000000000LL + nsec_diff;
}

#ifdef PROFILING
/**
 * @brief When compile with the PROFILING flag, the helper fucntions will be 
 * used for analyzing the phase of the program.
 */
#include <stdatomic.h>

atomic_ullong counter;

omp_lock_t lock;
BOOL wait = FALSE;
BOOL if_start = FALSE;
unsigned long long region = 0;
unsigned long long total_num_bbs = 0;

unsigned long long num_threads = 0;

unsigned long long* bbv;
unsigned long long* timestamp;
unsigned long long** bbv_array;
unsigned long long** timestamp_array;
unsigned long long* counter_array;
unsigned long long current_array_size = ARRAY_SIZE;

__attribute__((no_profile_instrument_function))
void increase_array() {
/*
 * this function is used to increase the size of the bbv_array and 
 * timestamp_array arrays when the current size is not enough to store the data
 */
    current_array_size += ARRAY_SIZE;

    bbv_array = (unsigned long long**) realloc(bbv_array, current_array_size * sizeof(unsigned long long*));
    timestamp_array = (unsigned long long**) realloc(timestamp_array, current_array_size * sizeof(unsigned long long*));

    if (bbv_array == NULL || timestamp_array == NULL) {
        printf("Failed to allocate memory for bbv_array and timestamp_array arrays\n");
        exit(1);
    }

    for (unsigned long long i = current_array_size - ARRAY_SIZE; i < current_array_size; i++) {
        bbv_array[i] = (unsigned long long*)malloc(((total_num_bbs + 64) * num_threads) * sizeof(unsigned long long));
        // pad the array with 64 elements to avoid false sharing
        timestamp_array[i] = (unsigned long long*)malloc(((total_num_bbs + 64) * num_threads) * sizeof(unsigned long long));
        if (bbv_array[i] == NULL || timestamp_array[i] == NULL) {
            printf("Failed to allocate memory for bbv_array and timestamp_array arrays\n");
            exit(1);
        }
        memset(bbv_array[i], 0, ((total_num_bbs + 64) * num_threads) * sizeof(unsigned long long));
        memset(timestamp_array[i], 0, ((total_num_bbs + 64) * num_threads) * sizeof(unsigned long long));
    }
    counter_array = (unsigned long long*)realloc(counter_array, current_array_size * sizeof(unsigned long long));
    if (counter_array == NULL) {
        printf("Failed to allocate memory for counter_array array\n");
        exit(1);
    }
}

__attribute__((no_profile_instrument_function))
void process_data() {
/*
 * this function is used to store the data for the current region and reset
 * the counter for the next region.
 * only one thread will execute this function at each end of the region.
 */
    counter_array[region] = atomic_load(&counter);
    region ++;
    bbv = bbv_array[region];
    timestamp = timestamp_array[region];
    if (region + 100 >= current_array_size) {
    // increase the size of the arrays when the current size is not enough
        increase_array();
    }
    atomic_store(&counter, 0);
}

__attribute__((no_profile_instrument_function))
void bb_hook(unsigned long long bb_inst, unsigned long long bb_id, unsigned long long threshold) {
/*
 * :param: bb_inst: the number of IR instructions in the basic block
 * :param: bb_id: the id of the basic block
 * :param: threshold: the threshold for the number of IR instructions in the 
 *  region
 * this function is designed to be called at the end of each IR basic block.
*/
    if(if_start) {
    // only start to count the IR instructions when the if_start is TRUE
        if (wait) {
        // if there is a thread reached the threshold, then wait for all the
        // threads to reach the threshold
            omp_set_lock(&lock);
            omp_unset_lock(&lock);
        }
        unsigned long long thread_id = omp_get_thread_num();
        unsigned long long index = thread_id * (total_num_bbs + 64) + bb_id;

        unsigned long long cur_counter = atomic_fetch_add(&counter, bb_inst) + bb_inst;

        bbv[index] ++;
        timestamp[index] = cur_counter;

        if (cur_counter >= threshold) {
            omp_set_lock(&lock);
            if (atomic_load(&counter) >= threshold) {
            // this ensures that only one thread will execute the process_data
            // function at each end of the region
                wait = TRUE;
                process_data();
                wait = FALSE;
            }
            omp_unset_lock(&lock);
        }
    }
}

__attribute__((no_profile_instrument_function))
void init_array(unsigned long long num_bbs) {
/*
 * :param: num_bbs: the total number of basic blocks in the program
 * this function is used to initialize the arrays for storing the data
*/
    total_num_bbs = num_bbs;
    // store the total number of basic blocks
    num_threads = omp_get_max_threads();
    bbv_array = (unsigned long long**)malloc(current_array_size * sizeof(unsigned long long*));
    timestamp_array = (unsigned long long**)malloc(current_array_size * sizeof(unsigned long long*));
    counter_array = (unsigned long long*)malloc(current_array_size * sizeof(unsigned long long));
    if (bbv_array == NULL || timestamp_array == NULL || counter_array == NULL) {
        printf("Failed to allocate memory for bbv_array and timestamp_array arrays\n");
        exit(1);
    }

    for (unsigned long long i = 0; i < current_array_size; i++) {
        bbv_array[i] = (unsigned long long*)malloc(((total_num_bbs + 64) * num_threads) * sizeof(unsigned long long));
        timestamp_array[i] = (unsigned long long*)malloc(((total_num_bbs + 64) * num_threads) * sizeof(unsigned long long));
        if (bbv_array[i] == NULL || timestamp_array[i] == NULL) {
            printf("Failed to allocate memory for bbv_array and timestamp_array arrays\n");
            exit(1);
        }
        memset(bbv_array[i], 0, ((total_num_bbs + 64) * num_threads) * sizeof(unsigned long long));
        memset(timestamp_array[i], 0, ((total_num_bbs + 64) * num_threads) * sizeof(unsigned long long));
    }
    bbv = bbv_array[0];
    timestamp = timestamp_array[0];
}

__attribute__((no_profile_instrument_function))
void delete_arrays() {
/*
 * this function is used to free the memory allocated for the arrays
*/
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
/*
* this function is used to initialize the variables and arrays for the
* profiling.
* this is meant to be called at the beginning of the region of interest.
*/

    atomic_init(&counter, 0);
    omp_init_lock(&lock);
    if_start = TRUE;

    printf("ROI begin\n");
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
/*
* this function is used to store the data for the last region and print the
* data to the output file.
* this is meant to be called at the end of the region of interest.
*/

    if_start = FALSE;
    omp_destroy_lock(&lock);

    process_data();
    // store the data for the last region

    char outputfile[256];
    sprintf(outputfile, "all_output_%d_threads.txt", omp_get_max_threads());

    FILE *fptr;
    fptr = fopen(outputfile, "w");
    if (fptr == NULL) {
        printf("Faile to open outputfile\n");
        exit(1);
    }

    unsigned long long total_IR_inst = 0;

    for (unsigned long long i = 0; i < region; i++) {
        fprintf(fptr, "Region: %llu\n", i);
        total_IR_inst += counter_array[i];
        fprintf(fptr, "Total IR instructions: %llu\n", total_IR_inst);
        fprintf(fptr, "Total IR instructions in region: %llu\n", counter_array[i]);
        for (unsigned long long j = 0; j < num_threads; j++) {
            fprintf(fptr, "Thread %llu BBV and Timesamp: [", j);
            unsigned long long index = j * (total_num_bbs + 64);
            for (unsigned long long k = 0; k < total_num_bbs; k++) {
                fprintf(fptr, "%llu:%llu,", bbv_array[i][index], timestamp_array[i][index]);
                index ++;
            }
            fprintf(fptr, "]\n");
        }
    }

    fclose(fptr);

    delete_arrays();

    printf("ROI end\n");
    printf("Region: %llu\n", region);
    printf("Total IR instructions: %llu\n", total_IR_inst);
}

#endif // PROFILING

#ifdef NAIVE
/**
 * @brief When compile with the NAIVE flag, the helper fucntions will do
 * nothing but print helper messages.
 */
__attribute__((no_profile_instrument_function))
void roi_begin_() {
    printf("ROI begin\n");
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
    printf("ROI end\n");
}
#endif // NAIVE

#ifdef USING_PAPI_PROFILING
/*
 * @brief When compile with the USING_PAPI_PROFILING flag, the helper functions
 * will be used for prifling the program with timers instead of collecting the
 * IR basic block vector.
*/
#include <stdatomic.h>

atomic_ullong counter;

omp_lock_t lock;
BOOL wait = FALSE;
BOOL if_start = FALSE;

unsigned long long region = 0;
unsigned long long total_IR_inst = 0;
unsigned long long* timestamp_array;
unsigned long long* counter_array;
unsigned long long current_array_size = ARRAY_SIZE;
struct timespec start, end;

__attribute__((no_profile_instrument_function))
void increase_array() {
/*
 * this function is used to increase the size of the timestamp_array and 
 * counter_array arrays when the current size is not enough to store the data
*/
    current_array_size += ARRAY_SIZE;
    timestamp_array = (unsigned long long*) realloc(timestamp_array, current_array_size * sizeof(unsigned long long));
    counter_array = (unsigned long long*) realloc(counter_array, current_array_size * sizeof(unsigned long long));
    if (timestamp_array == NULL || counter_array == NULL) {
        printf("Failed to allocate memory for timestamp_array and counter_array arrays\n");
        exit(1);
    }
}

__attribute__((no_profile_instrument_function))
void start_papi_region() {
    clock_gettime(CLOCK_MONOTONIC, &start);
    // record the start time of the region
}

__attribute__((no_profile_instrument_function))
void end_papi_region() {
    clock_gettime(CLOCK_MONOTONIC, &end);
    // record the end time of the region
    unsigned long long nsec_diff = calculate_nsec_difference(start, end);
    // calculate the time in nanosecond taken for the region
    timestamp_array[region] = nsec_diff;
    counter_array[region] = atomic_load(&counter);
    total_IR_inst += counter_array[region];
    region ++;
    if (region + 100 >= current_array_size) {
        increase_array();
    }
    atomic_store(&counter, 0);
}

__attribute__((no_profile_instrument_function))
void bb_hook(unsigned long long bb_inst, unsigned long long threshold) {
/*
 * :param: bb_inst: the number of IR instructions in the basic block
 * :param: threshold: the threshold for the number of IR instructions in the
 *  region
 * this function is designed to be called at the end of each IR basic block.
 * it will record the number of IR instructions and check if the threshold
 * is reached.
 * if the threshold is reached, then it will call the end_papi_region
 * function to record the time taken for the region.
 * only one thread will execute the end_papi_region function at each end of
 * the region.
 * this function is used for profiling the program with timers.
 * it will not collect the IR basic block vector.
*/
    if (if_start) {
        if (wait) {
            omp_set_lock(&lock);
            omp_unset_lock(&lock);
        }
        unsigned long long curr_count = atomic_fetch_add(&counter, bb_inst) + bb_inst;

        if (curr_count >= threshold) {
            omp_set_lock(&lock);
            if (atomic_load(&counter) >= threshold) {
                wait = TRUE;
                end_papi_region();
                wait = FALSE;
                start_papi_region();
            }
            omp_unset_lock(&lock);
        }
    }
}

__attribute__((no_profile_instrument_function))
void roi_begin_() {
    atomic_init(&counter, 0);
    omp_init_lock(&lock);
    if_start = TRUE;
    timestamp_array = (unsigned long long*) malloc(current_array_size * sizeof(unsigned long long));
    counter_array = (unsigned long long*) malloc(current_array_size * sizeof(unsigned long long));
    if (timestamp_array == NULL || counter_array == NULL) {
        printf("Failed to allocate memory for timestamp_array and counter_array arrays\n");
        exit(1);
    }
    
    printf("ROI begin\n");
    start_papi_region();
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
    end_papi_region();
    if_start = FALSE;
    omp_destroy_lock(&lock);

    printf("ROI end\n");
    printf("Region: %llu\n", region);
    printf("Total IR instructions: %llu\n", total_IR_inst);

    FILE *fptr;

    char outputfile[] = "analysis-output.csv";

    fptr = fopen(outputfile, "w");
    if (fptr == NULL) {
        printf("Faile to open outputfile\n");
        exit(1);
    }

    unsigned long long total_IR_inst = 0;
    unsigned long long index = 0;

    fprintf(fptr, "type,region,thread,data\n");

    for (unsigned long long i = 0; i < region; i++) {
        // the format of each line in the output file is:
        // type, region, thread, data

        for (unsigned long long j = 0; j < num_threads; j++) {
            fprintf(fptr, "bbv,%llu,%llu", i, j);
            index = j * (total_num_bbs + 64);
            for (unsigned long long k = 0; k < total_num_bbs; k++) {
                if (bbv_array[i][index] != 0) {
                    fprintf(fptr, ",%llu", bbv_array[i][index]);
                }
                index ++;
            }
            fprintf(fptr, "\n");

            fprintf(fptr, "csv,%llu,%llu", i, j);
            index = j * (total_num_bbs + 64);
            for (unsigned long long k = 0; k < total_num_bbs; k++) {
                if (timestamp_array[i][index] != 0) {
                    fprintf(fptr, ",%llu", timestamp_array[i][index]);
                }
                index ++;
            }
            fprintf(fptr, "\n");

            fprintf(fptr, "bb_id,%llu,%llu", i, j);
            index = j * (total_num_bbs + 64);
            for (unsigned long long k = 0; k < total_num_bbs; k++) {
                if (bbv_array[i][index] != 0) {
                    fprintf(fptr, ",%llu", k);
                }
                index ++;
            }
            fprintf(fptr, "\n");
        }
    }

    fprintf(fptr, "region_inst,N/A,N/A");
    for (unsigned long long i = 0; i < region; i++) {
        fprintf(fptr, ",%llu", counter_array[i]);
    }
    fprintf(fptr, "\n");

    fclose(fptr);

    free(timestamp_array);
    free(counter_array);

}

#endif // USING_PAPI_PROFILING

#ifdef MEASURING
/**
 * @brief When compile with the MEASURING flag, the helper functions will be
 * used for measuring the nuggets.
 */
#include <stdatomic.h>

atomic_ullong warmup_counter;
atomic_ullong start_counter;
atomic_ullong end_counter;

unsigned num_threads = 0;

unsigned long long warmup_threshold;
unsigned long long start_threshold;
unsigned long long end_threshold;

BOOL if_warmup_not_met = FALSE;
BOOL if_start_not_met = FALSE;
BOOL if_end_not_met = FALSE;

struct timespec start, end;

#ifdef PAPI_MEASURING
/*
 * @brief When compile with the PAPI_MEASURING flag, the helper functions will
 * be used for measuring the nuggets with timers on hardware.
*/
__attribute__((no_profile_instrument_function))
void warmup_event() {
/*
 * real hardware measurement doesn't need warmup
*/
}

__attribute__((no_profile_instrument_function))
void start_event() {
    clock_gettime(CLOCK_MONOTONIC, &start);
}

__attribute__((no_profile_instrument_function))
void end_event() {
    clock_gettime(CLOCK_MONOTONIC, &end);

    long long time_taken = calculate_nsec_difference(start, end);
    printf("Time taken: %lld\n", time_taken);
    printf("Now exiting the program\n");

    exit(0);
}

__attribute__((no_profile_instrument_function))
void roi_begin_() {
    num_threads = omp_get_max_threads();

    if_warmup_not_met = TRUE;

    printf("ROI begin\n");
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
    printf("ROI end\n");
}

#elif defined(M5_FS_MEASURING) // PAPI_MEASURING
/*
 * @brief When compile with the M5_FS_MEASURING flag, the helper functions will
 * be used for measuring the nuggets with the m5ops.
*/

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
    num_threads = omp_get_max_threads();

    if_warmup_not_met = TRUE;

    struct utsname buffer;
    errno = 0;
    if (uname(&buffer) != 0) {
        perror("uname");
        exit(1);
    }

    printf("arch     = %s\n", buffer.machine);

    if (strcmp(buffer.machine, "x86_64") == 0) {
    // different magic address for different architectures
        m5op_addr = 0xFFFF0000;
    } else if (strcmp(buffer.machine, "aarch64") == 0) {
        m5op_addr = 0x10010000;
    } else {
        m5op_addr = 0x0;
        printf("Unsupported architecture\n");
    }
    
#ifndef USING_INST_MODE
    printf("M5_FS ADDR MODE initialized\n");
    map_m5_mem();
#endif
    
    printf("M5_FS ROI started\n");
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
    printf("M5_FS ROI ended\n");
#ifndef USING_INST_MODE
    unmap_m5_mem();
#endif
}

#elif defined(MARKER_OVERHEAD_MEASURING) // M5_FS_MEASURING
/*
 * @brief When compile with the MARKER_OVERHEAD_MEASURING flag, the helper
 * functions will be used for measuring the marker overhead.
*/

#include <papi.h>

__attribute__((no_profile_instrument_function))
void warmup_event() {
    printf("Warmup marker\n");
}

__attribute__((no_profile_instrument_function))
void start_event() {
    printf("Start marker\n");
}

__attribute__((no_profile_instrument_function))
void end_event() {
    printf("End marker\n");
}

__attribute__((no_profile_instrument_function))
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

    printf("PAPI region begin\n");

    retval = PAPI_hl_region_begin("0");
    if (retval != PAPI_OK) {
        printf("PAPI_hl_region_begin failed due to %d.\n", retval);
    }
}

__attribute__((no_profile_instrument_function, noinline))
void roi_end_() {
    printf("PAPI region end\n");
    int retval = PAPI_hl_region_end("0");
    if (retval != PAPI_OK) {
        printf("PAPI_hl_region_end failed due to %d.\n", retval);
    }
    printf("PAPI ended\n");
}

#endif // MARKER_OVERHEAD_MEASURING

__attribute__((no_profile_instrument_function))
void setup_threshold(unsigned long long warm_up, unsigned long long start, unsigned long long end) {
/*
 * :param: warm_up: the threshold for the warm up marker
 * :param: start: the threshold for the start marker
 * :param: end: the threshold for the end marker
 * 
 * this function is used to set the thresholds for the warm up, start and end
 * markers
*/
    warmup_threshold = warm_up;
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

    atomic_init(&warmup_counter, 0);
    atomic_init(&start_counter, 0);
    atomic_init(&end_counter, 0);
}

__attribute__((no_profile_instrument_function))
void warmup_hook() {
    if (if_warmup_not_met) {
        unsigned long long curr_count = atomic_fetch_add(&warmup_counter, 1) + 1;
        if (curr_count == warmup_threshold) {
            warmup_event();
            if_warmup_not_met = FALSE;
            if_start_not_met = TRUE;
        }
    }
}

__attribute__((no_profile_instrument_function))
void start_hook() {
    if (if_start_not_met) {
        unsigned long long curr_count = atomic_fetch_add(&start_counter, 1) + 1;
        if (curr_count == start_threshold) {
            start_event();
            if_start_not_met = FALSE;
            if_end_not_met = TRUE;
        }
    }
}

__attribute__((no_profile_instrument_function))
void end_hook() {
    if (if_end_not_met) {
        unsigned long long curr_count = atomic_fetch_add(&end_counter, 1) + 1;
        if (curr_count == end_threshold) {
            end_event();
            if_end_not_met = FALSE;
            atomic_store(&end_counter, 0);
        }
    }
}

#endif // MEASURING

#ifdef PAPI_NAIVE
#include <papi.h>

__attribute__((no_profile_instrument_function, noinline))
void roi_begin_() {

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

    printf("PAPI region begin\n");

    retval = PAPI_hl_region_begin("0");
    if (retval != PAPI_OK) {
        printf("PAPI_hl_region_begin failed due to %d.\n", retval);
    }
}

__attribute__((no_profile_instrument_function, noinline))
void roi_end_() {
    printf("PAPI region end\n");
    int retval = PAPI_hl_region_end("0");
    if (retval != PAPI_OK) {
        printf("PAPI_hl_region_end failed due to %d.\n", retval);
    }
    printf("PAPI ended\n");
}

#endif // PAPI_NAIVE

#ifdef TIMING_NAIVE
struct timespec start, end;

__attribute__((no_profile_instrument_function, noinline))
void roi_begin_() {
    printf("ROI started\n");
    clock_gettime(CLOCK_MONOTONIC, &start);
}

__attribute__((no_profile_instrument_function, noinline))
void roi_end_() {
    clock_gettime(CLOCK_MONOTONIC, &end);
    printf("PAPI region end\n");
    long long time_taken = calculate_nsec_difference(start, end);
    printf("Time taken: %lld\n", time_taken);
}

#endif // TIMING_NAIVE

#ifdef M5_FS_NAIVE

#include "gem5/m5ops.h"
#include "m5_mmap.h"
#include <errno.h>
#include <sys/utsname.h>
#include <unistd.h>

__attribute__((no_profile_instrument_function, noinline))
void roi_begin_() {
    struct utsname buffer;
    errno = 0;
    if (uname(&buffer) != 0) {
        perror("uname");
        exit(1);
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
    
    printf("M5_FS ADDR MOP initialized\n");
    printf("M5_FS ROI started\n");

    printf("calling M5 workbegin\n");
#ifdef USING_INST_MODE
    m5_work_begin(0, 0);
#else
    map_m5_mem();
    m5_work_begin_addr(0, 0);
#endif
}

__attribute__((no_profile_instrument_function, noinline))
void roi_end_() {
#ifdef USING_INST_MODE
    m5_work_end(0, 0);
#else
    m5_work_end_addr(0, 0);
    unmap_m5_mem();
#endif
    printf("M5 workend calledr\n");
    printf("M5_FS ROI ended\n");
}

#endif // M5_FS_NAIVE

#ifdef M5_FS_WARMUP_MARKER_ONLY

#include "gem5/m5ops.h"
#include "m5_mmap.h"
#include <errno.h>
#include <sys/utsname.h>
#include <unistd.h>

#include <stdatomic.h>

atomic_ullong warmup_counter;

unsigned num_threads = 0;

unsigned long long warmup_threshold;

BOOL if_warmup_not_met = FALSE;

__attribute__((no_profile_instrument_function, noinline))
void roi_begin_() {
    struct utsname buffer;
    errno = 0;
    if (uname(&buffer) != 0) {
        perror("uname");
        exit(1);
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
    
    printf("M5_FS ROI started\n");

    if_warmup_not_met = TRUE;

#ifndef USING_INST_MODE
    printf("M5_FS ADDR MOP initialized\n");
    map_m5_mem();
#endif
}

__attribute__((no_profile_instrument_function, noinline))
void roi_end_() {
    m5_work_end(0, 0);
#ifndef USING_INST_MODE
    unmap_m5_mem();
#endif
    printf("M5 workend calledr\n");
    printf("M5_FS ROI ended\n");
}

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
void warmup_hook() {
    if (if_warmup_not_met) {
        unsigned long long curr_count = atomic_fetch_add(&warmup_counter, 1) + 1;
        if (curr_count == warmup_threshold) {
            warmup_event();
            if_warmup_not_met = FALSE;
        }
    }
}

__attribute__((no_profile_instrument_function))
void start_hook() {
}

__attribute__((no_profile_instrument_function))
void end_hook() {
}

__attribute__((no_profile_instrument_function))
void setup_threshold(unsigned long long warm_up, unsigned long long start, unsigned long long end) {
    warmup_threshold = warm_up;
    if (warmup_threshold == 0) {
        warmup_threshold = 1;
    }

    printf("Warmup threshold: %llu\n", warmup_threshold);

    atomic_init(&warmup_counter, 0);
}

#endif // M5_FS_WARMUP_MARKER_ONLY
