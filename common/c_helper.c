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
    long long nsec_diff = end.tv_nsec - start.tv_nsec;
    long long sec_diff = end.tv_sec - start.tv_sec;
    return sec_diff * 1000000000LL + nsec_diff;
}

#ifdef PROFILING
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
    current_array_size += ARRAY_SIZE;
    bbv_array = (unsigned long long**) realloc(bbv_array, current_array_size * sizeof(unsigned long long*));
    timestamp_array = (unsigned long long**) realloc(timestamp_array, current_array_size * sizeof(unsigned long long*));
    if (bbv_array == NULL || timestamp_array == NULL) {
        printf("Failed to allocate memory for bbv_array and timestamp_array arrays\n");
        exit(1);
    }
    for (unsigned long long i = current_array_size - ARRAY_SIZE; i < current_array_size; i++) {
        bbv_array[i] = (unsigned long long*)malloc(((total_num_bbs + 64) * num_threads) * sizeof(unsigned long long));
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
    counter_array[region] = atomic_load(&counter);
    region ++;
    bbv = bbv_array[region];
    timestamp = timestamp_array[region];
    if (region + 100 >= current_array_size) {
        increase_array();
    }
    atomic_store(&counter, 0);
}

__attribute__((no_profile_instrument_function))
void bb_hook(unsigned long long bb_inst, unsigned long long bb_id, unsigned long long threshold) {
    if(if_start) {
        if (wait) {
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
    total_num_bbs = num_bbs;
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
    atomic_init(&counter, 0);
    omp_init_lock(&lock);
    if_start = TRUE;

    printf("ROI begin\n");
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
    if_start = FALSE;
    omp_destroy_lock(&lock);

    process_data();

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
#include <stdatomic.h>
#include <papi.h>
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
}

__attribute__((no_profile_instrument_function))
void end_papi_region() {
    clock_gettime(CLOCK_MONOTONIC, &end);
    unsigned long long nsec_diff = calculate_nsec_difference(start, end);
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

    char outputfile[256];
    sprintf(outputfile, "all_output_%d_threads.txt", omp_get_max_threads());

    fptr = fopen(outputfile, "w");
    if (fptr == NULL) {
        printf("Faile to open outputfile\n");
        exit(1);
    }

    for (unsigned long long i = 0; i < region; i ++) {
        fprintf(fptr, "Region: %llu\n", i);
        fprintf(fptr, "Total IR instructions: %llu\n", counter_array[i]);
        fprintf(fptr, "Time: %llu\n", timestamp_array[i]);
    }

    fclose(fptr);

    free(timestamp_array);
    free(counter_array);

}

#endif // USING_PAPI_PROFILING

#ifdef MEASURING
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
#include <papi.h>


__attribute__((no_profile_instrument_function))
void warmup_event() {}

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

#include "gem5/m5ops.h"
#include "m5_mmap.h"
#include <errno.h>
#include <sys/utsname.h>

__attribute__((no_profile_instrument_function))
void warmup_event() {
    printf("M5_FS Warmup marker\n");
    m5_work_begin_addr(0, 0);
}

__attribute__((no_profile_instrument_function))
void start_event() {
    printf("M5_FS Start marker\n");
    m5_work_begin_addr(0, 0);
}

__attribute__((no_profile_instrument_function))
void end_event() {
    printf("M5_FS End marker\n");
    m5_work_end_addr(0, 0);
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
        m5op_addr = 0xFFFF0000;
    } else if (strcmp(buffer.machine, "aarch64") == 0) {
        m5op_addr = 0x10010000;
    } else {
        m5op_addr = 0x0;
        printf("Unsupported architecture\n");
    }
    map_m5_mem();
    printf("M5_FS ADDR MOP initialized\n");
    printf("M5_FS ROI started\n");
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
    printf("M5_FS ROI ended\n");
    unmap_m5_mem();
}

#elif defined(MARKER_OVERHEAD_MEASURING) // M5_FS_MEASURING

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

#ifdef LOOPPOINT_M5_FS

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
    map_m5_mem();
    printf("LOOPPOINT_M5_FS ADDR MOP initialized\n");
    printf("LOOPPOINT_M5_FS ROI started\n");

    char buf[256 * 1024];
    int pid = getpid();
    sprintf(buf,"cat /proc/%i/maps > proc_maps.txt;",pid);
    printf("running %s\n",buf);
    system(buf);
    printf("ready to call m5 writefile\n");
    system("m5 writefile proc_maps.txt;");

    printf("calling M5 workbegin\n");
    m5_work_begin_addr(0, 0);
}

__attribute__((no_profile_instrument_function, noinline))
void roi_end_() {
    m5_work_end_addr(0, 0);
    printf("M5 workend calledr\n");
    printf("M5_FS ROI ended\n");
    unmap_m5_mem();
}

#endif // LOOPPOINT_M5_FS

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
    map_m5_mem();
    printf("M5_FS ADDR MOP initialized\n");
    printf("M5_FS ROI started\n");

    printf("calling M5 workbegin\n");
    m5_work_begin_addr(0, 0);
}

__attribute__((no_profile_instrument_function, noinline))
void roi_end_() {
    m5_work_end_addr(0, 0);
    printf("M5 workend calledr\n");
    printf("M5_FS ROI ended\n");
    unmap_m5_mem();
}

#endif // M5_FS_NAIVE
