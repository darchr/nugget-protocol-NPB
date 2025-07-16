from pathlib import Path
import pandas as pd
import argparse
import json
import sys
from concurrent.futures import ThreadPoolExecutor

root_path = Path(Path.cwd()).absolute()
sys.path.append(root_path.as_posix())

from nugget_util.python_processing.analysis_functions import (
    get_all_bbv,
    form_bb_id_map,
    get_static_info,
    k_means_select_regions
)


parser = argparse.ArgumentParser(description="Generate k-means selections for nugget protocol")

parser.add_argument("--nugget_info_dir", type=str, required=True, help="Path to nugget info directory")
parser.add_argument("--analysis_df_dir", type=str, required=True, help="Path to analysis DataFrame directory")
parser.add_argument("--num_ideal_nuggets", type=int, required=True, help="Number of ideal nuggets to select")
parser.add_argument("--output_dir", type=str, required=True, help="Output directory for k-means selections")
parser.add_argument("--num_projection", type=int, default=50, help="Number of projections for k-means")

args = parser.parse_args()

def generate_k_means(nugget_info_path, analysis_df_path, num_ideal_nuggets, output_dir):
    global num_projection
    with open(analysis_df_path, "r") as f:
        df = pd.read_csv(f, header=0, dtype={'region': str, 'thread': int})

    bb_id_map = form_bb_id_map(df)

    all_bbv = get_all_bbv(df, bb_id_map)

    for index, row in enumerate(all_bbv):
        if sum(row) == 0:
            print(f"row {index} has all zeros")

    static_info = get_static_info(nugget_info_path)

    print(f"shape of all_bbv: {len(all_bbv)} {len(all_bbv[0])}")

    while len(all_bbv) <= num_ideal_nuggets * 4:
        num_ideal_nuggets /= 2
        num_ideal_nuggets = int(num_ideal_nuggets)

    if len(all_bbv[0]) <= num_projection:
        num_projection = len(all_bbv[0])
        num_projection = int(num_projection)

    num_projection = min(num_projection, len(all_bbv))

    kmeans_result = k_means_select_regions(
        num_ideal_nuggets,
        all_bbv,
        bb_id_map,
        static_info,
        num_projection
    )

    with open(Path(output_dir/"kmeans-result.json"), "w") as f:
        json.dump(kmeans_result, f, indent=4)

    rep_rid = kmeans_result["rep_rid"]

    with open(Path(output_dir/"selected-regions.txt"), "w") as f:
        for val in rep_rid.values():
            f.write(f"{val}\n")

    print("finished selecting regions")

nugget_info_dir = Path(args.nugget_info_dir)
analysis_df_dir = Path(args.analysis_df_dir)
output_dir = Path(args.output_dir)
output_dir.mkdir(parents=True, exist_ok=True)
num_projection = args.num_projection
num_ideal_nuggets = args.num_ideal_nuggets

run_inputs = []

for thread_dir in analysis_df_dir.iterdir():
    if not thread_dir.is_dir():
        continue
    thread_dir_name = thread_dir.name
    num_thread = int(thread_dir_name)
    for workload_size_dir in thread_dir.iterdir():
        if not workload_size_dir.is_dir():
            continue
        workload_size = workload_size_dir.name
        for benchmark_dir in workload_size_dir.iterdir():
            if not benchmark_dir.is_dir():
                continue
            benchmark = benchmark_dir.name.split("_")[0]
            benchmark_output_dir = Path(output_dir/f"{num_thread}/{workload_size}/{benchmark}_{workload_size}/")
            benchmark_output_dir.mkdir(parents=True, exist_ok=True)
            
            benchmark_nugget_info_path = Path(nugget_info_dir/f"{benchmark}_{workload_size}/basic-block-info.txt")
            if not benchmark_nugget_info_path.exists():
                raise FileNotFoundError(f"Benchmark nugget info file not found: {benchmark_nugget_info_path}")
            benchmark_analysis_df_path = Path(benchmark_dir/f"{benchmark}_{workload_size}_df.csv")
            if not benchmark_analysis_df_path.exists():
                raise FileNotFoundError(f"Benchmark analysis DataFrame file not found: {benchmark_analysis_df_path}")

            run_inputs.append((benchmark_nugget_info_path, benchmark_analysis_df_path, num_ideal_nuggets, benchmark_output_dir))

with ThreadPoolExecutor() as executor:
    futures = [executor.submit(generate_k_means, *inputs) for inputs in run_inputs]
    for future in futures:
        future.result()  # Wait for all futures to complete

print("All k-means selections completed successfully.")

