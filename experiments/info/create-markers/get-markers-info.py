from pathlib import Path
import pandas as pd
from multiprocessing import Pool
import subprocess

root_path = Path(Path.cwd()).absolute()
current_dir = Path(__file__).parent
print(current_dir)

# Note that for all parameters used in creating and selecting the nuggets
# the following values were used:
region_length = 400_000_000
grace_perc = 0.98
num_warmup_region = 0

size = "C"

output_dir = Path(root_path/"experiments/info/create-markers")
df_dir = Path(root_path/"experiments/info/get-analysis-info")
bb_info_dir = Path(f"{root_path}/experiments/info/bb-info-output")

k_means_clustering_dir = Path(f"{root_path}/experiments/info/k-means-selections")
random_selections_dir = Path(f"{root_path}/experiments/info/random-selections")

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
        bb_info_path = Path(bb_info_dir/f"{benchmark}/basic-block-info.txt")

        benchmark_output_dir = Path(output_dir/benchmark)
        benchmark_output_dir.mkdir(parents=True, exist_ok=True)
        input_file_outdir = Path(benchmark_output_dir/"input-files")
        out_marker_file = Path(benchmark_output_dir/"markers.csv")

        analysis_file = Path(dir/f"{benchmark}_df.csv")
        k_means_selected_file = Path(k_means_clustering_dir/benchmark/"selected-regions.txt")
        random_selected_file = Path(random_selections_dir/benchmark/"selected-regions.txt")

        list_of_markers = []

        with open(k_means_selected_file, "r") as f:
            for line in f:
                list_of_markers.append(int(line.strip()))
        with open(random_selected_file, "r") as f:
            for line in f:
                list_of_markers.append(int(line.strip()))
        list_of_markers = list(set(list_of_markers))
        list_of_markers.sort()
        print("List of markers: ", list_of_markers)

        arg_list_of_markers = " ".join(map(str, list_of_markers))
        print("Arg list of markers: ", arg_list_of_markers)

        cmd = [
            "python3",
            f"{current_dir}/get.py",
            "--analysis_csv", str(analysis_file),
            "--bb_info_path", str(bb_info_path),
            "--out_marker_file", str(out_marker_file),
            "--input_file_outdir", str(input_file_outdir),
            "--list_of_markers", arg_list_of_markers
        ]

        run_ball = {
            "cmd": cmd,
        }
        all_runs.append(run_ball)

    with Pool(20) as pool:
        results = pool.map(run_this, all_runs)

    print("All Processes Done")
