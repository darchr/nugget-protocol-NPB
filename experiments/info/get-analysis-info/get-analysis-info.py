from pathlib import Path
import pandas as pd
from multiprocessing import Pool
import subprocess

import argparse

parser = argparse.ArgumentParser(description="Get analysis info from CSV files.")
parser.add_argument("--experiment_dir", type=str, help="Path to the experiment directory")
parser.add_argument("--output_dir", type=str, help="Path to the output directory")
parser.add_argument("--bb_info_dir", type=str, help="Path to the basic block info directory")
parser.add_argument("--size", type=str, default="A", help="Size of the experiment (default: A)")
parser.add_argument("--num_threads", type=int, default=1, help="Number of threads for the benchmarks")
args = parser.parse_args()

root_path = Path(Path.cwd()).absolute()
current_dir = Path(__file__).parent
print(current_dir)

# Note that for all parameters used in creating and selecting the nuggets
# the following values were used:

size = args.size
num_threads = args.num_threads

output_dir = Path(f"{args.output_dir}/{num_threads}/{size}")
experiment_dir = Path(f"{args.experiment_dir}/{size}")
bb_info_dir = Path(args.bb_info_dir)

# 
# The reason why the parameters are not passed as arguments is because this set
# of parameters is used to create the nuggets used for this particular
# experiment. It is important to fixed them so that the nuggets can be
# recreated.
#

def run_this(run_ball):
    cmd = run_ball["cmd"]
    result = subprocess.run(" ".join(cmd), cwd=root_path, shell=True, capture_output=True)
    if result.returncode != 0:
        print(f"Error running command: {cmd}")
        print(result.stderr.decode())
    else:
        print(f"Command succeeded: {cmd}")
        print(result.stdout.decode())
    return result.returncode

if __name__ == "__main__":
    print("Running in main")

    all_runs = []

    for dir in experiment_dir.iterdir():
        benchmark = dir.name
        print(benchmark)
        bb_info_path = Path(bb_info_dir/f"{benchmark}/basic-block-info.txt")
        benchmark_output_dir = Path(output_dir/benchmark)
        benchmark_output_dir.mkdir(parents=True, exist_ok=True)
        analysis_csv = Path(dir/f"run-0/analysis-output.csv")
        out_analysis_file = Path(benchmark_output_dir/f"{benchmark}_df.csv")
        cmd = ["python3", f"{current_dir}/get.py",
            "--analysis_csv", str(analysis_csv),
            "--out_analysis_file", str(out_analysis_file)
            ]
        run_ball = {
            "cmd": cmd,
        }
        all_runs.append(run_ball)

    with Pool(20) as pool:
        results = pool.map(run_this, all_runs)

    print("All Processes Done")
