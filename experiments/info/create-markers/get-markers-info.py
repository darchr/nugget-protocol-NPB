from pathlib import Path
import pandas as pd
from multiprocessing import Pool
import subprocess
import argparse

parser = argparse.ArgumentParser(description="Create markers from analysis info")
parser.add_argument("--size", type=str, default="A", help="Benchmark size")
parser.add_argument("--output_dir", type=str, required=True, help="Output directory for markers")
parser.add_argument("--df_dir", type=str, required=True, help="Directory containing analysis info CSV files")
parser.add_argument("--bb_info_dir", type=str, required=True, help="Directory containing basic block info files")
parser.add_argument("--if_make_all_markers", type=str, default="false", help="Flag to make all markers")
parser.add_argument("--grace_perc", type=float, default=1, help="Grace percentage for marker selection")
parser.add_argument("--region_length", type=int, default=100_000_000, help="Length of each region")
parser.add_argument("--num_warmup_region", type=int, default=1, help="Number of warmup regions")
parser.add_argument("--num_threads", type=int, default=1, help="Number of threads for the benchmarks")
args = parser.parse_args()

root_path = Path(Path.cwd()).absolute()
current_dir = Path(__file__).parent
print(current_dir)

grace_perc = args.grace_perc
size = args.size
num_threads = args.num_threads

if_make_all_markers = args.if_make_all_markers

output_dir = Path(f"{args.output_dir}/{num_threads}/{size}/{grace_perc}")
df_dir = Path(root_path/f"experiments/info/get-analysis-info/{num_threads}/{size}")
bb_info_dir = Path(f"{root_path}/experiments/info/bb-info-output")

k_means_clustering_dir = Path(f"{root_path}/experiments/info/k-means-selections")
random_selections_dir = Path(f"{root_path}/experiments/info/random-selections")

if Path(k_means_clustering_dir/f"{size}").exists():
    if_k_means_selection = True
else:
    if_k_means_selection = False

if Path(random_selections_dir/f"{size}").exists():
    if_random_selection = True
else:
    if_random_selection = False

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

    for dir in df_dir.iterdir():
        if dir.is_file():
            continue
        benchmark = dir.name
        print(benchmark)
        bench_size = benchmark.split("_")[1]
        if bench_size != size:
            continue
        bb_info_path = Path(bb_info_dir/f"{benchmark}/basic-block-info.txt")

        benchmark_output_dir = Path(output_dir/benchmark)
        benchmark_output_dir.mkdir(parents=True, exist_ok=True)
        input_file_outdir = Path(benchmark_output_dir/"input-files")
        out_marker_file = Path(benchmark_output_dir/"markers.csv")

        analysis_file = Path(dir/f"{benchmark}_df.csv")
        k_means_selected_file = Path(k_means_clustering_dir/benchmark/"selected-regions.txt")
        random_selected_file = Path(random_selections_dir/benchmark/"selected-regions.txt")

        list_of_markers = []
        if if_k_means_selection:
            with open(k_means_selected_file, "r") as f:
                for line in f:
                    list_of_markers.append(int(line.strip()))

        if if_random_selection:
            with open(random_selected_file, "r") as f:
                for line in f:
                    list_of_markers.append(int(line.strip()))
        list_of_markers = list(set(list_of_markers))
        list_of_markers.sort()
        print("List of markers: ", list_of_markers)

        arg_list_of_markers = " ".join(map(str, list_of_markers))
        print("Arg list of markers: ", arg_list_of_markers)

        if len(list_of_markers) == 0:
            cmd = [
                "python3",
                f"{current_dir}/get.py",
                "--analysis_csv", str(analysis_file),
                "--bb_info_path", str(bb_info_path),
                "--out_marker_file", str(out_marker_file),
                "--input_file_outdir", str(input_file_outdir),
                "--if_make_all_markers", str(if_make_all_markers).lower(),
                "--grace_perc", str(grace_perc),
                "--region_length", str(args.region_length),
                "--num_warmup_region", str(args.num_warmup_region)
            ]
        else:
            cmd = [
                "python3",
                f"{current_dir}/get.py",
                "--analysis_csv", str(analysis_file),
                "--bb_info_path", str(bb_info_path),
                "--out_marker_file", str(out_marker_file),
                "--input_file_outdir", str(input_file_outdir),
                "--list_of_markers", arg_list_of_markers,
                "--if_make_all_markers", str(if_make_all_markers).lower(),
                "--grace_perc", str(grace_perc),
                "--region_length", str(args.region_length),
                "--num_warmup_region", str(args.num_warmup_region)
            ]

        run_ball = {
            "cmd": cmd,
        }
        all_runs.append(run_ball)

    with Pool(20) as pool:
        results = pool.map(run_this, all_runs)

    print("All Processes Done")