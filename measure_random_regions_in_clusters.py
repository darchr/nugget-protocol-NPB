import subprocess
from multiprocessing import Pool
from pathlib import Path
import os
import argparse
import shutil
import random
import json

random.seed(627)

parser = argparse.ArgumentParser()
parser.add_argument("--region_size", type=int, default=1000_000_000)
parser.add_argument("--arch", type=str, default="aarch64")
parser.add_argument("--machine_name", type=str, default="saphir")
parser.add_argument("--threads", type=int, default=8)
parser.add_argument("--size", type=str, default="C")
parser.add_argument("--if_make_base", type=bool, default=False)
parser.add_argument("--if_make_final", type=bool, default=False)
parser.add_argument("--if_run", type=bool, default=False)
parser.add_argument("--pool_size", type=int, default=1)

args = parser.parse_args()

def process_this(run_ball):
    command = run_ball["cmd"]
    env = run_ball["env"]
    dir = run_ball["dir"]
    if "stdout" in run_ball:
        stdout_path = run_ball["stdout"]
    else:
        stdout_path = None
    if "stderr" in run_ball:
        stderr_path = run_ball["stderr"]
    else:
        stderr_path = None
    if "OMP_NUM_THREADS" in env:
        num_threads = env["OMP_NUM_THREADS"]
    else: 
        num_threads = 0
    if stdout_path is not None:
        with open(stdout_path, "w") as stdout, open(stderr_path, "w") as stderr:
            process_code = subprocess.run(command, cwd=dir, env=env, stdout=stdout, stderr=stderr)
        print("finished", dir, command, f"{num_threads} threads", process_code)
    else:
        process_code = subprocess.run(command, cwd=dir, env=env)
        print("finished", dir, command, process_code)
    return process_code

benchmarks = ["bt", "cg", "ep", "ft", "lu", "mg", "sp"]
threads = args.threads
region_size = args.region_size
arch = args.arch
size = args.size
pool_size = args.pool_size

workdir = Path().cwd()

with open("/home/studyztp/test_ground/experiments/hardware-profiling/nugget-paper/summer/NPB3.4-OMP-custom-makefile/all_clusters.json", "r") as f:
    raw_all_clusters_data = json.load(f)

rep_rids = {}
output_info = {}
sample_size = 5

for bench, bench_data in raw_all_clusters_data.items():
    output_info[bench] = {}
    for num_cluster, cluster_data in bench_data.items():
        if num_cluster != "30":
            continue
        bench_rep_rids = list(cluster_data["rep_rid"].values())
        all_samples = []
        for rid, values in cluster_data["clusters"].items():
            max_len = len(values) - 1
            if max_len == 0:
                continue
            randomly_selected = random.sample(values, min(sample_size, max_len))
            all_samples.extend(randomly_selected)
            output_info[bench][rid] = randomly_selected
        rep_rids[bench] = all_samples

print(rep_rids)
with open("/home/studyztp/test_ground/experiments/hardware-profiling/nugget-paper/summer/random_samples_in_clusters.json", "w") as f:
    json.dump(output_info, f)

must_env = os.environ
must_env["LD_LIBRARY_PATH"] = f"{workdir.as_posix()}/common/{arch}-unknown-linux-gnu"
must_env["LD_LIBRARY_PATH"] += f":{workdir.as_posix()}/common/all_papi/{arch}/lib"

if args.if_make_base:
    for bench in benchmarks:
        bench_env = must_env.copy()
        bench_env["PROGRAM"] = bench
        bench_env["SIZE"] = size
        bench_env["REGION_LENGTH"] = str(region_size)
        bench_env["TARGET_ARCH"] = arch
        bench_env["THREAD_SIZE"] = str(threads)
        bench_rep_rids = rep_rids[bench]
        for rid in bench_rep_rids:
            region_env = bench_env.copy()
            region_env["REGION_ID"] = str(rid)
            if threads == 1:
                subprocess.run(["make", "single_thread_c_papi_measuring"], cwd=workdir, env=region_env)
            else:
                subprocess.run(["make", "c_papi_measuring"], cwd=workdir, env=region_env)

if args.if_make_final:
    for bench in benchmarks:
        bench_env = must_env.copy()
        bench_env["PROGRAM"] = bench
        bench_env["SIZE"] = size
        bench_env["REGION_LENGTH"] = str(region_size)
        bench_env["TARGET_ARCH"] = arch
        bench_env["THREAD_SIZE"] = str(threads)
        bench_rep_rids = rep_rids[bench]
        for rid in bench_rep_rids:
            region_env = bench_env.copy()
            region_env["REGION_ID"] = str(rid)
            if threads == 1:
                subprocess.run(["make", "final_compile_single_thread_c_papi_measuring"], cwd=workdir, env=region_env)
            else:
                subprocess.run(["make", "final_compile_c_papi_measuring"], cwd=workdir, env=region_env)

if args.if_run:
    runs = []

    for bench in benchmarks:
        bench_rep_rids = rep_rids[bench]
        for rid in bench_rep_rids:
            if threads == 1:
                region_dir = Path(workdir/f"{bench.upper()}/{size}/single_thread_c_papi_measuring/{threads}/{region_size}/{rid}/{arch}")
                cpu_list = "0"
                for file in region_dir.glob("*.single_thread_c_papi_measuring"):
                    filename = file.name
            else:
                region_dir = Path(workdir/f"{bench.upper()}/{size}/c_papi_measuring/{threads}/{region_size}/{rid}/{arch}")
                cpu_list = f"0-{threads-1}"
                for file in region_dir.glob("*.c_papi_measuring"):
                    filename = file.name

            run_env = must_env.copy()
            run_env["OMP_NUM_THREADS"] = str(threads)

            runs.append(
                {
                    "cmd": ["taskset", "--cpu-list", cpu_list, f"./{filename}"],
                    "env": run_env.copy(),
                    "dir": region_dir.as_posix(),
                    "stdout": region_dir/"stdout.log",
                    "stderr": region_dir/"stderr.log"
                }
            )

    with Pool(pool_size) as p:
        p.map(process_this, runs)

print("All done!")
