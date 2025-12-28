import argparse
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np


def parse_args():
    parser = argparse.ArgumentParser(
        description="Plot prediction error from a CSV file."
    )
    parser.add_argument(
        "--csv_path",
        "-c",
        type=str,
        help="Path to the prediction-error.csv file"
    )
    parser.add_argument(
        "--output",
        "-o",
        type=str,
        default="prediction_error_plot.png",
        help="Output path for the plot (default: prediction_error_plot.png)"
    )
    return parser.parse_args()


def main():
    args = parse_args()
    
    # Read CSV
    df = pd.read_csv(args.csv_path)
    
    # Get unique benchmarks in order of appearance
    benchmarks = df["benchmark"].unique()
    
    # Prepare data for grouped bar plot
    kmeans_errors = []
    random_errors = []
    
    for bench in benchmarks:
        bench_data = df[df["benchmark"] == bench]
        
        kmeans_row = bench_data[bench_data["sample_selection_method"] == "k-means"]
        random_row = bench_data[bench_data["sample_selection_method"] == "random"]
        
        kmeans_error = kmeans_row["prediction_error(%)"].values[0] if len(kmeans_row) > 0 else 0
        random_error = random_row["prediction_error(%)"].values[0] if len(random_row) > 0 else 0
        
        kmeans_errors.append(kmeans_error)
        random_errors.append(random_error)
    
    # Create grouped bar plot
    x = np.arange(len(benchmarks))
    width = 0.35
    
    fig, ax = plt.subplots(figsize=(12, 6))
    
    bars1 = ax.bar(x - width / 2, kmeans_errors, width, label="k-means", color="#1f77b4")
    bars2 = ax.bar(x + width / 2, random_errors, width, label="random", color="#ff7f0e")
    
    # Labels and title
    ax.set_xlabel("Benchmark", fontsize=12, fontweight="bold")
    ax.set_ylabel("Prediction Error (%)", fontsize=12, fontweight="bold")
    ax.set_title("Prediction Error by Benchmark and Sample Selection Method", fontsize=14, fontweight="bold")
    ax.set_xticks(x)
    ax.set_xticklabels(benchmarks)
    ax.legend(fontsize=11)
    ax.axhline(y=0, color="black", linestyle="-", linewidth=0.8, alpha=0.5)
    ax.grid(axis="y", alpha=0.3)
    
    # Add value labels on bars
    for bars in [bars1, bars2]:
        for bar in bars:
            height = bar.get_height()
            ax.text(
                bar.get_x() + bar.get_width() / 2,
                height,
                f"{height:.1f}%",
                ha="center",
                va="bottom" if height >= 0 else "top",
                fontsize=8
            )
    
    plt.tight_layout()
    
    plt.savefig(args.output, dpi=300, bbox_inches="tight")
    print(f"Plot saved to {args.output}")

if __name__ == "__main__":
    main()
