#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <omp.h>

#include <stdatomic.h>
atomic_ullong counter;

#define BOOL uint8_t
#define TRUE 1
#define FALSE 0

omp_lock_t lock;
BOOL wait = FALSE;
BOOL ifStart = FALSE;
unsigned long long threshold = 100000000;
unsigned long long region = 0;
unsigned long long totalIRInst = 0;

unsigned long long total_num_bbs = 0;
unsigned long long num_threads = 0;
unsigned long long* bbv;
unsigned long long* timestamp;

char outputfile[] = "all_output.txt";
FILE *fptr = NULL;

__attribute__((no_profile_instrument_function, noinline))
void process_data() {
    fprintf(fptr, "Region: %lu\n", region);
    fprintf(fptr, "Total IR instructions: %lu\n", totalIRInst);
    fprintf(fptr, "Total IR instructions in region: %lu\n", atomic_load(&counter));
    for (unsigned long long i = 0; i < num_threads; i += 1) {
        fprintf(fptr, "Thread %lu BBV: [", i);
        for (unsigned long long j = 0; j < total_num_bbs; j += 1) {
            unsigned long long index = i * (total_num_bbs + 64) + j;
            fprintf(fptr, "%lu,", bbv[index]);
        }
        fprintf(fptr, "]\n");
    }
    fprintf(fptr, "Timestamp: [");
    for (unsigned long long i = 0; i < total_num_bbs; i += 1) {
        fprintf(fptr, "%lu,", timestamp[i]);
    }
    fprintf(fptr, "]\n");
}

__attribute__((no_profile_instrument_function, noinline))
void bb_hook(unsigned long long bb_inst, unsigned long long bb_id, unsigned long long threshold) {
    if (ifStart) {
        if (wait) {
            omp_set_lock(&lock);
            omp_unset_lock(&lock);
        }
        unsigned long long thread_id = omp_get_thread_num();
        unsigned long long index = thread_id * (total_num_bbs + 64) + bb_id;

        atomic_fetch_add(&counter, inst);

        bbv[index] += 1;

        if (omp_get_thread_num() == 0) {
            unsigned long long cur_counter = atomic_load(&counter);
            timestamp[bb_id] = cur_counter;
            if (cur_counter >= threshold) {
                omp_set_lock(&lock);
                wait = TRUE;
                region ++;
                totalIRInst += atomic_load(&counter);
                process_data();
                atomic_store(&counter, 0);
                wait = FALSE;
                omp_unset_lock(&lock);
            }
        }
    }
}

__attribute__((no_profile_instrument_function, noinline))
void init_arrays(unsigned long long num_bbs) {
    total_num_bbs = num_bbs;
    num_threads = omp_get_max_threads();
    bbv = (unsigned long long*)malloc(((num_bbs + 64) * num_threads) * sizeof(unsigned long long));
    timestamp = (unsigned long long*)malloc((num_bbs * num_threads) * sizeof(unsigned long long));
    if (bbv == NULL || timestamp == NULL) {
        std::cerr << "Failed to allocate memory for bbv and timestamp arrays" << std::endl;
        exit(1);
    }
    memset(bbv, 0, ((num_bbs + 64) * num_threads) * sizeof(unsigned long long));
    memset(timestamp, 0, (num_bbs * num_threads) * sizeof(unsigned long long));
}

__attribute__((no_profile_instrument_function))
void delete_arrays() {
    free(bbv);
    free(timestamp);
}

__attribute__((no_profile_instrument_function))
void roi_begin_(uint8_t num_threads_) {
    atomic_init(&counter, 0);
    omp_init_lock(&lock);
    ifStart = TRUE;

    fptr = fopen(outputfile.c_str(), "w");
    if (fptr == NULL) {
        std::cerr << "Failed to open file " << outputfile << std::endl;
        exit(1);
    }

    printf("ROI begin\n");
}

__attribute__((no_profile_instrument_function))
void roi_end_() {
    ifStart = FALSE;
    omp_destroy_lock(&lock);

    fclose(fptr);

    printf("ROI end\n");
    printf("Region: %lu\n", region);
    printf("Total IR instructions: %lu\n", totalIRInst);
}
