#include <cstdlib>
#include <iostream>
#include <string>
#include <omp.h>

#ifdef ATOMIC
#include <atomic>
std::atomic<uint64_t> counter(0);
#else
uint64_t** counters;
uint64_t current_counter;
uint8_t num_threads;
#endif

omp_lock_t lock;
bool wait = false;
bool ifStart = false;
uint64_t threshold = 100000000;
uint64_t region = 0;

__attribute__((no_profile_instrument_function, noinline))
void bb_hook(uint64_t inst) {
#ifdef ATOMIC
    if (ifStart) {
        if (wait) {
            omp_set_lock(&lock);
            omp_unset_lock(&lock);
        }
        counter += inst;
        if (omp_get_thread_num() == 0) {
            if (counter.load() >= threshold) {
                omp_set_lock(&lock);
                wait = true;
                counter = 0;
                region ++;
                wait = false;
                omp_unset_lock(&lock);
            }
        }
    }
#else
    if (ifStart) {
        if (wait) {
            omp_set_lock(&lock);
            omp_unset_lock(&lock);
        }
        *counters[omp_get_thread_num()] += inst;
        if (omp_get_thread_num() == 0) {
            current_counter = *counters[0];
            for (uint8_t i = 1; i < num_threads; i++) {
                current_counter += *counters[i];
            }
            if (current_counter >= threshold) {
                omp_set_lock(&lock);
                wait = true;
                for (uint8_t i = 0; i < num_threads; i++) {
                    *counters[i] = 0;
                }
                region ++;
                wait = false;
                omp_unset_lock(&lock);
            }
        }
    }
#endif
}

__attribute__((no_profile_instrument_function))
extern "C" void roi_begin_() {
#ifdef ATOMIC
    counter = 0;
#else
    num_threads = omp_get_max_threads();
    counters = (uint64_t**)malloc(num_threads * sizeof(uint64_t*));
    for (int i = 0; i < num_threads; i++) {
        counters[i] = (uint64_t*)malloc(sizeof(uint64_t));
        *counters[i] = 0;
    }
#endif 
    omp_init_lock(&lock);
    ifStart = true;
    printf("ROI begin\n");
}

__attribute__((no_profile_instrument_function))
extern "C" void roi_end_() {
    ifStart = false;
    omp_destroy_lock(&lock);
#ifdef PARALLEL
    for (int i = 0; i < num_threads; i++) {
        free(counters[i]);
    }
    free(counters);
#endif
    printf("ROI end\n");
    printf("Region: %lu\n", region);
}

