from pathlib import Path
from multiprocessing import Pool
import subprocess
import json
import sys
import os

def run_this(run_ball):
    cmd = run_ball["cmd"]
    dir = run_ball["dir"]
    env = run_ball["env"]
    print(f"Running command: {cmd} in directory: {dir}")
    with open(dir / "run.log", "w") as log_file:
        with open(dir / "run.err", "w") as err_file:
            result = subprocess.run(cmd, cwd=dir, env=env, stdout=log_file, stderr=err_file)
            if result.returncode != 0:
                print(f"Command failed with return code {result.returncode}. Check run.log and run.err for details.")
            else:
                print("Command executed successfully.")

env = os.environ.copy()
env["LD_LIBRARY_PATH"] = Path("/home/ztpc/compiler/llvm-dir/lib/x86_64-unknown-linux-gnu").as_posix() + ":" + env.get("LD_LIBRARY_PATH", "")
env["DYNAMORIO_HOME"] = Path("/home/ztpc/experiments/nugget-eval/dynamoRIO/dynamorio").as_posix()
env["OMP_NUM_THREADS"] = "1"
dynamorio_dir = Path("/home/ztpc/experiments/nugget-eval/dynamoRIO/dynamorio")

experiment_dir = Path("/home/ztpc/experiments/nugget-eval/dynamoRIO/nugget-protocol-NPB/experiments/1-thread-check-all-marker-execution/summer-experiments")
experiment_dir.mkdir(parents=True, exist_ok=True)

with open(Path("/home/ztpc/experiments/nugget-eval/dynamoRIO/nugget-protocol-NPB/addr_map.json"), "r") as f:
    addr_map = json.load(f)

executable_dir = Path("/home/ztpc/experiments/nugget-eval/dynamoRIO/nugget-protocol-NPB/cbuild/llvm-exec")

all_runs = []

for binary_name, addrs in addr_map.items():
    binary_path = Path(executable_dir/f"{binary_name}/{binary_name}")
    track_pc = addrs["end_marker_addr"]
    cmd = [
        f"{dynamorio_dir.as_posix()}/build/bin64/drrun",
        "-c",
        f"{dynamorio_dir.as_posix()}/../client_cmake/libtrack_marker.so",
        "-pc",
        f"0x{track_pc}",
        "--",
        f"{binary_path.as_posix()}"
    ]
    binary_experiment_dir = experiment_dir / binary_name
    binary_experiment_dir.mkdir(parents=True, exist_ok=True)
    run_ball = {
        "cmd": cmd,
        "dir": binary_experiment_dir,
        "env": env.copy()
    }

    all_runs.append(run_ball)

with Pool(processes=20) as pool:
    pool.map(run_this, all_runs)

print("All experiments have been submitted.")
