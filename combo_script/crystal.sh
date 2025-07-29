#!/bin/bash
set -e  # Exit on any error

# Function to build and run experiments
build_and_run() {
    local process_type=$1
    local config_file=$2
    local build_target=$3
    local run_script=$4

    echo "========== Starting $process_type =========="
    cd cbuild

    echo "Running CMake for $process_type"
    NUGGET_PROCESS_TYPE=$process_type \
    NUGGET_CONFIG_FILE=${PWD}/../$config_file \
    TARGET_CLASSES=A \
    cmake ..

    echo "Building target: $build_target"
    cmake --build . --target $build_target

    cd ..
    echo "Running experiment script: $run_script"
    python3 $run_script
    echo "========== Finished $process_type =========="
}

# Run all experiments
build_and_run "npb-naive-exe" \
    "experiments/1-thread-time-naive/cmake/naive-exe.cmake" \
    "1_thread_time_naive_O2_exe" \
    "experiments/1-thread-time-naive/liberty-run-experiments.py"

build_and_run "npb-nugget-exe" \
    "experiments/1-thread-k-means-selection-time-nugget/cmake/nugget-exe.cmake" \
    "1_thread_time_nugget_0.99_O2_exe" \
    "experiments/1-thread-k-means-selection-time-nugget/liberty-run-experiments.py"

build_and_run "npb-nugget-exe" \
    "experiments/1-thread-random-selection-time-nugget/cmake/nugget-exe.cmake" \
    "1_thread_time_nugget_0.99_O2_exe" \
    "experiments/1-thread-random-selection-time-nugget/liberty-run-experiments.py"
