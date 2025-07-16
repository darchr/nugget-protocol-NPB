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
    cores = ["3", "6", "21"]
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
    env["LD_LIBRARY_PATH"] += f"{workdir}/nugget_util/hook_helper/other_tools/papi/x86_64/lib"
    all_events = [['PAPI_L1_ICM', 'PAPI_L2_DCM', 'PAPI_L2_ICM', 'PAPI_TLB_DM', 'PAPI_BR_TKN'],
    ['PAPI_BR_MSP', 'PAPI_TOT_INS', 'PAPI_FP_INS', 'PAPI_BR_INS', 'PAPI_TOT_CYC'],
    ['PAPI_L2_DCH', 'PAPI_L1_DCA', 'PAPI_L2_DCR', 'PAPI_L2_ICH', 'PAPI_L2_ICR'],
    ['PAPI_L1_ICM', 'PAPI_L2_DCM', 'PAPI_L2_ICM', 'PAPI_TLB_IM', 'PAPI_L2_ICR'],
    ['PAPI_L1_ICM', 'PAPI_L2_DCM', 'PAPI_L2_ICM', 'PAPI_L2_ICR', 'PAPI_FP_OPS'],
    ]
    size = "A"
    benchmarks = ["bt", "cg", "ep", "ft", "is", "lu", "mg", "sp"]

    if size is "D":
        benchmarks.remove("is")
    
    num_threads = 1
    grace_perc = 0.99
    opt_level = "O2"

    workdir = Path().cwd()
    runs_range = (0, 5)
    experiments_dir = Path(workdir/f"experiments/{num_threads}-thread-papi-nuggets/summer-experiments")
    experiments_dir.mkdir(parents=True, exist_ok=True)

    rid_file_dir = Path(workdir/f"experiments/info/k-means-selections/{num_threads}/{size}")

    input_size_experiments_dir = Path(experiments_dir/size)
    input_size_experiments_dir.mkdir(parents=True, exist_ok=True)

    all_run_balls = []

    for benchmark in benchmarks:
        # create the input folder for the experiments
        benchmark = f"{benchmark}_{size}"
        benchmark_experiments_dir = Path(input_size_experiments_dir/benchmark)
        benchmark_experiments_dir.mkdir(parents=True, exist_ok=True)

        benchmark_rid_file = Path(rid_file_dir/f"{benchmark}/selected-regions.txt")
        all_benchmark_rids = []
        with open(benchmark_rid_file, "r") as rid_file:
            for line in rid_file:
                all_benchmark_rids.append(int(line.strip()))
        all_benchmark_rids = sorted(all_benchmark_rids)
        print(f"All benchmark rids: {all_benchmark_rids}")

        for rid in all_benchmark_rids:

            rid_experiments_dir = Path(benchmark_experiments_dir/f"{rid}")
            rid_experiments_dir.mkdir(parents=True, exist_ok=True)

            benchmark_binary = Path(workdir/f"cbuild/llvm-exec/{num_threads}_thread_with_hook_papi_nugget_{grace_perc}_{opt_level}_exe_{benchmark}_{rid}/{num_threads}_thread_with_hook_papi_nugget_{grace_perc}_{opt_level}_exe_{benchmark}_{rid}")
            if not benchmark_binary.exists():
                print(f"Binary for {benchmark} does not exist")
                exit(1)
            cmd = [benchmark_binary.as_posix()]
            for event_index, event in enumerate(all_events):
                event_env = env.copy()
                event_env['PAPI_EVENTS'] = ', '.join(event)
                event_dir = Path(rid_experiments_dir/f"event-{event_index}")
                event_dir.mkdir(parents=True, exist_ok=True)
                for run in range(*runs_range):
                    run_dir = Path(event_dir/f"run-{run}")
                    if(run_dir.exists()):
                        shutil.rmtree(run_dir)
                    run_dir.mkdir(parents=True, exist_ok=False)
                    run_ball = {
                        "cmd": cmd,
                        "dir": run_dir.as_posix(),
                        "env": event_env.copy()
                    }
                    all_run_balls.append(run_ball)

    random.shuffle(all_run_balls)

    # Use initializer to pass core_queue and failed_list globally
    with multiprocessing.Pool(max_threads, initializer=init_worker, initargs=(core_queue, failed_list)) as pool:
        pool.map(run_this, all_run_balls)

    print("Failed list: ", list(failed_list))
    print("Failed list length: ", len(failed_list))

    with open(experiments_dir / "failed_list.txt", "w") as failed_list_file:
        for failed in failed_list:
            failed_list_file.write(f"{failed}\n")

    print("Done running all experiments")

if __name__ == "__main__":

    main()