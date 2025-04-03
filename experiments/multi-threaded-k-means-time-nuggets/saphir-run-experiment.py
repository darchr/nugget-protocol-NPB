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

    cpuset_name = "measurement/core_"  # Moved inside to ensure it's accessible
    # cset proc --exec --set=measurement/core_32 --
    command = ["cset", "proc","--exec", f"--set={cpuset_name}{str(core)}", "--" ] + cmd

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
    cores = ["20_23", "24_27", "28_31", "32_35", "36_39", "40_43", "44_47", "48_51", "52_55", "56_59", "60_63", "64_67"]
    max_threads = len(cores)

    core_queue = multiprocessing.Queue()
    for core in cores:
        core_queue.put(core)

    manager = multiprocessing.Manager()
    failed_list = manager.list()

    workdir = Path().cwd()

    env = os.environ.copy()
    env["OMP_NUM_THREADS"] = "4"
    env["LD_LIBRARY_PATH"] = "/scr/studyztp/compiler/llvm-dir/lib/aarch64-unknown-linux-gnu;"
    env["LD_LIBRARY_PATH"] += f"{workdir}/nugget_util/hook_helper/other_tools/papi/aarch64/lib"

    size = "C"
    benchmarks = ["bt", "cg", "ep", "ft", "is", "lu", "mg", "sp"]

    if size is "D":
        benchmarks.remove("is")

    workdir = Path().cwd()
    runs_range = (0, 5)
    experiments_dir = Path(workdir/"experiments/time-nuggets-experiments/experiments")
    experiments_dir.mkdir(parents=True, exist_ok=True)

    rid_file_dir = Path(workdir/"experiments/info/k-means-selections")

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
            if rid_experiments_dir.exists():
                all_done = True
                for run in range(*runs_range):
                    run_result_file = Path(benchmark_experiments_dir/f"{rid}/run-{run}/result.txt")
                    if not run_result_file.exists():
                        all_done = False
                        break
                if all_done:
                    print(f"All runs done for {benchmark} {rid}")
                    continue
            else:
                rid_experiments_dir.mkdir(parents=True, exist_ok=True)

            benchmark_binary = Path(workdir/f"cbuild/llvm-exec/papi_nugget_exe_{benchmark}_{rid}/papi_nugget_exe_{benchmark}_{rid}")
            if not benchmark_binary.exists():
                print(f"Binary for {benchmark} does not exist")
                exit(1)

            for run in range(*runs_range):
                run_experiments_dir = Path(rid_experiments_dir/f"run-{run}")
                if run_experiments_dir.exists():
                    if Path(run_experiments_dir/f"result.txt").exists():
                        print(f"Run {run} already exists for {benchmark} {rid}")
                        continue
                
                run_experiments_dir.mkdir(parents=True, exist_ok=False)

                cmd = [benchmark_binary.as_posix()]
                run_ball = {
                    "cmd": cmd,
                    "dir": run_experiments_dir.as_posix(),
                    "env": env.copy()
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
