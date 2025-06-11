import argparse
import multiprocessing
import subprocess
import configparser
from pathlib import Path
import os
import shutil
import json
from datetime import datetime
import time  
import random

random.seed(627)

def run_this(run_ball):
    global core_queue_global, failed_list_global

    core = core_queue_global.get()
    print("Running on core: ", core)
    cmd = run_ball["cmd"]
    dir = run_ball["dir"]
    env = run_ball["env"]

    core_num = int(core)
    core_set_name = f"{core_num}_{core_num+2}/{core_num}"

    cpuset_name = "measurement/"  # Moved inside to ensure it's accessible
    # cset proc --exec --set=measurement/core_32 --
    command = ["cset", "proc","--exec", f"--set={cpuset_name}{core_set_name}", "--" ] + cmd

    start_time = time.perf_counter()
    start_datetime = datetime.now()

    print(f"Running {' '.join(command)} in {dir}")
    with open(Path(dir)/"run.log", "w") as stdout:
        with open(Path(dir)/"run.err", "w") as stderr:
            try:
                result = subprocess.run(command, 
                                     cwd=dir, 
                                     env=env, 
                                     stdout=stdout, 
                                     stderr=stderr)
                end_time = time.perf_counter()
                duration = end_time - start_time

                with open(Path(dir)/"python-time.log", "w") as time_file:
                    time_file.write(f"Start time: {start_datetime}\n")
                    time_file.write(f"End time: {datetime.now()}\n")
                    time_file.write(f"Duration: {duration} seconds\n")
                core_queue_global.put(core)

                if result.returncode != 0:
                    print(f"Command failed with return code: {result.returncode}")
                    # Print the last few lines of error output
                    with open(Path(dir)/"run.err", "r") as err_file:
                        err_content = err_file.readlines()
                        print("Last few lines of error output:")
                        for line in err_content[-5:]:
                            print(f"  {line.strip()}")
                        print("This is the command that failed:")
                        print(f"  {' '.join(command)}")
                        print(f"  in {dir}")
                    failed_list_global.append(f"  {' '.join(command)}")
                    return False
                return True
            except Exception as e:
                print(f"Exception while running command: {str(e)}")
                failed_list_global.append(f"  {' '.join(command)}")
                core_queue_global.put(core)
                return False

def init_worker(core_queue, failed_list):
    global core_queue_global, failed_list_global
    core_queue_global = core_queue
    failed_list_global = failed_list

def main():
    cores = ["3", "6", "9", "12", "15", "18","21"]
    max_threads = len(cores)

    core_queue = multiprocessing.Queue()
    for core in cores:
        core_queue.put(core)

    manager = multiprocessing.Manager()
    failed_list = manager.list()

    workdir = Path().cwd()

    env = os.environ.copy()
    env["OMP_NUM_THREADS"] = "1"
    env["LD_LIBRARY_PATH"] = "/home/ztpc/compiler/llvm-dir/lib/x86_64-unknown-linux-gnu;"
    
    all_papi_events = [['PAPI_L1_ICM', 'PAPI_L2_DCM', 'PAPI_L2_ICM', 'PAPI_TLB_DM', 'PAPI_BR_TKN'],
        ['PAPI_BR_MSP', 'PAPI_TOT_INS', 'PAPI_FP_INS', 'PAPI_BR_INS', 'PAPI_TOT_CYC'],
        ['PAPI_L2_DCH', 'PAPI_L1_DCA', 'PAPI_L2_DCR', 'PAPI_L2_ICH', 'PAPI_L2_ICR'],
        ['PAPI_L1_ICM', 'PAPI_L2_DCM', 'PAPI_L2_ICM', 'PAPI_TLB_IM', 'PAPI_L2_ICR'],
        ['PAPI_L1_ICM', 'PAPI_L2_DCM', 'PAPI_L2_ICM', 'PAPI_L2_ICR', 'PAPI_FP_OPS'],
        ]               

    size = "A"
    benchmarks = ["bt", "cg", "ep", "ft", "is", "lu", "mg", "sp"]

    if size is "D":
        benchmarks.remove("is")

    workdir = Path().cwd()
    runs_range = (0, 1)
    experiments_dir = Path(workdir/"experiments/1-thread-nuggets/summer-experiments")
    experiments_dir.mkdir(parents=True, exist_ok=True)

    input_size_experiments_dir = Path(experiments_dir/size)
    input_size_experiments_dir.mkdir(parents=True, exist_ok=True)

    all_run_balls = []

    

if __name__ == "__main__":
    main()