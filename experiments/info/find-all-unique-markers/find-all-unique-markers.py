from pathlib import Path
import pandas as pd
import argparse
import sys

parser = argparse.ArgumentParser(description="Find all unique markers from analysis info")
parser.add_argument("--size", type=str, default="A", help="Benchmark size")
parser.add_argument("--output_dir", type=str, required=True, help="Output directory for markers")
parser.add_argument("--marker_dir", type=str, required=True, help="Directory containing marker files")
parser.add_argument("--bb_info_dir", type=str, required=True, help="Directory containing analysis info CSV files")
parser.add_argument("--grace_perc", type=float, default=1, help="Grace percentage for marker selection")
parser.add_argument("--num_threads", type=int, default=1, help="Number of threads for the benchmarks")
args = parser.parse_args()

root_path = Path(Path.cwd()).absolute()
sys.path.append(root_path.as_posix())

from nugget_util.python_processing.analysis_functions import (
    get_static_info
)

size = args.size
grace_perc = args.grace_perc
num_threads = args.num_threads
bb_info_dir = Path(f"{args.bb_info_dir}")
output_dir = Path(f"{args.output_dir}/{num_threads}/{size}/{grace_perc}")
marker_dir = Path(f"{args.marker_dir}/{num_threads}/{size}/{grace_perc}")
if not output_dir.exists():
    output_dir.mkdir(parents=True, exist_ok=True)

for benchmark in marker_dir.iterdir():
    bench_marker_df = Path(benchmark/"markers.csv")
    bench_marker_df = pd.read_csv(bench_marker_df, header=0, dtype={'marker': int})

    benchmark_name = benchmark.name

    all_bids = pd.concat([bench_marker_df['warmup_bid'], bench_marker_df['start_bid'], bench_marker_df['end_bid']])

    unique_bids = sorted(all_bids.dropna().astype(int).unique())

    static_bb_info = get_static_info(Path(bb_info_dir/f"{benchmark_name}/basic-block-info.txt"))

    Path(output_dir/f"{benchmark_name}").mkdir(parents=True, exist_ok=True)

    with open(output_dir/f"{benchmark_name}/unique_markers.txt", "w") as f:
        for bid in unique_bids:
            f.write(f"{bid}\n")

    input_file_outdir = Path(output_dir/f"{benchmark_name}/input-files")
    input_file_outdir.mkdir(parents=True, exist_ok=True)

    for bid in unique_bids:
        input_file = input_file_outdir / f"{bid}-marker.txt"
        with open(input_file, "w") as f:
            for _ in range(0, 6):
                f.write("0\n")
            f.write(str(static_bb_info[int(bid)]["function_id"]) + "\n")
            f.write(f"{bid}\n")
            f.write(f"100\n")

    print(f"Unique markers for {benchmark_name} written to {output_dir/f'{benchmark_name}/unique_markers.txt'}")
