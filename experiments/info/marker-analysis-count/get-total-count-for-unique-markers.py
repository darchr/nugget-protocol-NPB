from pathlib import Path
import pandas as pd
import argparse
import sys
import json

parser = argparse.ArgumentParser(description="Find all unique markers from analysis info")
parser.add_argument("--size", type=str, default="A", help="Benchmark size")
parser.add_argument("--output_dir", type=str, required=True, help="Output directory for markers")
parser.add_argument("--unique_marker_dir", type=str, required=True, help="Directory containing unique marker files")
parser.add_argument("--analysis_info_dir", type=str, required=True, help="Directory containing analysis info files")
parser.add_argument("--grace_perc", type=float, default=1, help="Grace percentage for marker selection")
parser.add_argument("--num_threads", type=int, default=1, help="Number of threads for the benchmarks")
args = parser.parse_args()

root_path = Path(Path.cwd()).absolute()
sys.path.append(root_path.as_posix())

from nugget_util.python_processing.analysis_functions import (
    form_bb_id_map,
    get_total_count_of_list_of_markers
)

size = args.size
grace_perc = args.grace_perc
if grace_perc.is_integer():
    grace_perc = int(grace_perc)
num_threads = args.num_threads
analysis_info_dir = Path(f"{args.analysis_info_dir}/{num_threads}/{size}")
output_dir = Path(f"{args.output_dir}/{num_threads}/{size}/{grace_perc}")
unique_marker_dir = Path(f"{args.unique_marker_dir}/{num_threads}/{size}/{grace_perc}")
if not output_dir.exists():
    output_dir.mkdir(parents=True, exist_ok=True)

for benchmark in unique_marker_dir.iterdir():
    benchmark_name = benchmark.name
    benchmark_df_file = Path(analysis_info_dir/f"{benchmark_name}/{benchmark_name}_df.csv")
    with open(benchmark_df_file, "r") as f:
        benchmark_df = pd.read_csv(f, header=0, dtype={'region': str, 'thread': int})
    bb_id_map = form_bb_id_map(benchmark_df)
    unique_marker_file = Path(unique_marker_dir/f"{benchmark_name}/unique_markers.txt")
    unique_markers = []
    with open(unique_marker_file, "r") as f:
        for line in f.readlines():
            unique_markers.append(int(line.strip()))
    total_count = get_total_count_of_list_of_markers(
        benchmark_df, unique_markers, bb_id_map
    )

    if not (output_dir/f"{benchmark_name}").exists():
        (output_dir/f"{benchmark_name}").mkdir(parents=True, exist_ok=True)

    with open(output_dir/f"{benchmark_name}/total_count.json", "w") as f:
        json.dump(total_count, f, indent=4)

    print(f"Total count for {benchmark_name} saved in {output_dir/f'{benchmark_name}/total_count.json'}")

print(f"Total count for unique markers saved in {output_dir}")


