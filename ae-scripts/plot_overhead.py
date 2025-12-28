import argparse
import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path


def parse_args():
    parser = argparse.ArgumentParser(
        description="Plot analysis overhead by benchmark."
    )
    parser.add_argument(
        "--analysis_folder",
        "-a",
        type=str,
        help="Path to the folder containing analysis runs (e.g., analysis/threads-4/aarch64)"
    )
    parser.add_argument(
        "--measurements_csv",
        "-m",
        type=str,
        help="Path to the measurements.csv file"
    )
    parser.add_argument(
        "--output",
        "-o",
        type=str,
        default="overhead_plot.png",
        help="Output path for the plot (default: overhead_plot.png)"
    )
    return parser.parse_args()


def main():
    args = parse_args()
    
    analysis_folder = Path(args.analysis_folder)
    measurements_df = pd.read_csv(args.measurements_csv)
    
    # Extract naive baseline times for each benchmark
    naive_times = {}
    for _, row in measurements_df[measurements_df["type"] == "naive"].iterrows():
        benchmark = row["benchmark"]
        baseline_ns = row["baseline_naive_nseconds"]
        naive_times[benchmark] = baseline_ns
    
    # Extract analysis execution times
    overheads = {}
    benchmarks = []
    
    for bench_folder in sorted(analysis_folder.iterdir()):
        if not bench_folder.is_dir():
            continue
        
        # Extract benchmark name from folder (e.g., "bt_A" -> "bt")
        bench_name = bench_folder.name.split("_")[0]
        benchmarks.append(bench_name)
        
        execution_time_file = bench_folder / "execution_time.txt"
        if not execution_time_file.exists():
            print(f"Warning: {execution_time_file} not found")
            overheads[bench_name] = 0
            continue
        
        # Read execution time in seconds
        analysis_time_sec = float(execution_time_file.read_text().strip())
        
        # Get baseline naive time in nanoseconds, convert to seconds
        if bench_name not in naive_times:
            print(f"Warning: {bench_name} not found in measurements.csv")
            overheads[bench_name] = 0
            continue
        
        baseline_time_sec = naive_times[bench_name] / 1e9  # Convert nanoseconds to seconds
        
        # Calculate overhead ratio
        overhead = analysis_time_sec / baseline_time_sec
        overheads[bench_name] = overhead
    
    # Create bar plot
    fig, ax = plt.subplots(figsize=(12, 6))
    
    overhead_values = [overheads[b] for b in benchmarks]
    bars = ax.bar(benchmarks, overhead_values, color="#1f77b4", alpha=0.8)
    
    # Labels and title
    ax.set_xlabel("Benchmark", fontsize=12, fontweight="bold")
    ax.set_ylabel("Overhead (Analysis Time / Baseline Time)", fontsize=12, fontweight="bold")
    ax.set_title("Analysis Overhead by Benchmark", fontsize=14, fontweight="bold")
    ax.grid(axis="y", alpha=0.3)
    
    # Add value labels on bars
    for bar in bars:
        height = bar.get_height()
        ax.text(
            bar.get_x() + bar.get_width() / 2,
            height,
            f"{height:.2f}x",
            ha="center",
            va="bottom",
            fontsize=10
        )
    
    plt.tight_layout()
    
    plt.savefig(args.output, dpi=300, bbox_inches="tight")
    print(f"Plot saved to {args.output}")


if __name__ == "__main__":
    main()
