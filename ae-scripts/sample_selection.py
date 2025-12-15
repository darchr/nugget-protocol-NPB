#!/usr/bin/env python3
"""Run sample selection: k-means clustering, optional random selection, and marker generation."""

import argparse
import json
import os
import random
import sys
from multiprocessing import Pool
from pathlib import Path

import pandas as pd

# Ensure repository root (one level above nugget-protocol-NPB) is on sys.path
PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent
if PROJECT_ROOT.as_posix() not in sys.path:
	sys.path.insert(0, PROJECT_ROOT.as_posix())

RANDOM_SEED = 627

from nugget_util.python_processing.analysis_functions import (
	create_input_for_pass,
	form_a_list_markers,
	form_bb_id_map,
	get_all_bbv,
	form_dataframe_from_csv,
	get_static_info,
	k_means_select_regions,
)

# === functions for creating markers ===

def create_markers(
	analysis_df: pd.DataFrame,
	bb_id_map: dict[str, int],
	static_bb_info : dict[str, dict],
	list_of_selected_regions: list[int],
	input_file_outdir: Path,
	num_warmup_regions: int,
	grace_period_percentage: float,
	region_length: int
):
	# exclude regions that already have input files
	target_regions = set(list_of_selected_regions)
	if input_file_outdir.exists():
		for file in input_file_outdir.iterdir():
			rid = int(file.name.split("-")[0])
			# will not raise an error if rid not in target_regions
			target_regions.discard(rid)
	else:
		input_file_outdir.mkdir(parents=True, exist_ok=False)

	target_regions = sorted(list(target_regions))

	marker_df = form_a_list_markers(
		analysis_df,
		bb_id_map,
		num_warmup_regions,
		grace_period_percentage,
		region_length,
		target_regions
	)

	for rid in target_regions:
		marker_info = create_input_for_pass(
			marker_df,
			static_bb_info,
			rid
		)
		with open(Path(input_file_outdir/f"{rid}-marker.txt"), "w") as f:
			for line in marker_info:
				f.write(f"{line}\n")
	
	print(f"Created {len(target_regions)} marker files in {input_file_outdir}")

# === functions to get K-means selected regions ===

def create_kmeans_selected_regions(
	bb_id_map: dict[str, int],
	all_bbv: list[list[int]],
	static_bb_info : dict[str, dict],
	info_outdir: Path,
	num_projections: int,
	num_clusters: int,
	use_random_linear_projections: bool = False
) -> list[int]:
	target_projections = min(num_projections, len(all_bbv))

	target_clusters = min(num_clusters, len(all_bbv)-1)

	kmeans_result = k_means_select_regions(
		target_clusters,
		all_bbv,
		bb_id_map,
		static_bb_info,
		target_projections,
		if_use_pca=not use_random_linear_projections
	)

	info_outdir.mkdir(parents=True, exist_ok=True)
	
	with open(Path(info_outdir/"kmeans-result.json"), "w") as f:
		json.dump(kmeans_result, f, indent=4)

	selected_regions = list(kmeans_result["rep_rid"].values())

	with open(Path(info_outdir/"selected-regions.txt"), "w") as f:
		for rid in selected_regions:
			f.write(f"{rid}\n")

	print(f"K-means selected {len(selected_regions)} regions in {info_outdir}")

	return selected_regions

# === functions to get random selected regions ===

def create_random_selected_regions(
	total_num_regions: int,
	info_outdir: Path,
	num_random_regions: int,
	random_seed: int = RANDOM_SEED
) -> list[int]:
	random.seed(random_seed)
	target_num_regions = min(num_random_regions, total_num_regions)
	selected_regions = random.sample(range(total_num_regions), target_num_regions)

	info_outdir.mkdir(parents=True, exist_ok=True)

	with open(Path(info_outdir/"selected-regions.txt"), "w") as f:
		for rid in selected_regions:
			f.write(f"{rid}\n")

	print(f"Randomly selected {len(selected_regions)} regions in {info_outdir}")

	return selected_regions
	
# === main functions ===

def parse_args():
	parser = argparse.ArgumentParser(description="Run sample selection and marker creation.")
	parser.add_argument("--project_dir", "-d", required=True, help="Path to project root containing nugget-protocol-NPB")
	parser.add_argument("--size", "-s", default="A", help="Input class used for the analyses (e.g., A/B/C).")
	parser.add_argument("--threads", "-t", type=int, default=4, help="Thread count used in the analysis runs.")
	parser.add_argument("--num-regions", "-n", type=int, default=30, help="Number of k nuggets for clustering.")
	parser.add_argument("--random-seed", type=int, default=RANDOM_SEED, help="Seed for random region selection.")
	parser.add_argument("--grace-perc", type=float, default=0.98, help="Grace percentage for marker creation.")
	parser.add_argument("--region-length", type=int, default=400_000_000, help="Region length for marker creation.")
	parser.add_argument("--num-warmup-region", type=int, default=1, help="Number of warmup regions for marker creation.")
	parser.add_argument("--benchmarks", "-b", nargs="+", default=["bt", "cg", "ep", "ft", "is", "lu", "mg", "sp"], help="List of NPB benchmarks to process.")
	parser.add_argument("--num-projections", "-p", type=int, default=100, help="Number of projections for K-means clustering.")
	parser.add_argument("--use-random-linear-projections", action="store_true", help="Use random linear projections for K-means clustering.")
	parser.add_argument("--architecture", "-a", type=str, default=os.uname().machine, help="Target architecture for the analysis binaries. (Default: host architecture)")
	return parser.parse_args()

def main():
	args = parse_args()
	project_dir = Path(args.project_dir).expanduser().resolve()
	npb_root = project_dir / "nugget-protocol-NPB"

	if not npb_root.is_dir():
		raise FileNotFoundError(f"Expected nugget-protocol-NPB under {project_dir}")
		
	analysis_root = npb_root / "ae-experiments" / "analysis" / f"threads-{args.threads}" / f"{args.architecture}"
	sample_root = npb_root / "ae-experiments" / "sample-selection" / f"threads-{args.threads}" / f"{args.architecture}"
	markers_root = npb_root / "ae-experiments" / "create-markers" / f"threads-{args.threads}" / f"{args.grace_perc}" / f"{args.architecture}"

	for bench in args.benchmarks:
		bench_name = f"{bench}_{args.size}"

		bench_analysis_dir = analysis_root / f"{bench_name}"
		bench_markers_dir = markers_root / f"{bench_name}"

		bench_analysis_dir.mkdir(parents=True, exist_ok=True)
		bench_markers_dir.mkdir(parents=True, exist_ok=True)

		bench_analysis_df = form_dataframe_from_csv(bench_analysis_dir / "analysis-output.csv")
		bench_analysis_df.to_csv(Path(bench_analysis_dir/f"{bench_name}_df.csv"))

		bench_bb_id_map = form_bb_id_map(bench_analysis_df)
		bench_static_bb_info = get_static_info(Path(bench_analysis_dir/"basic-block-info.txt"))
		bench_all_bbv = get_all_bbv(bench_analysis_df, bench_bb_id_map)
		bench_total_regions = len(bench_all_bbv)
		
		# K-means selection
		bench_kmeans_selected_regions = create_kmeans_selected_regions(
			bench_bb_id_map,
			bench_all_bbv,
			bench_static_bb_info,
			sample_root / f"k-means/{bench_name}",
			args.num_projections,
			args.num_regions,
			args.use_random_linear_projections
		)
		# Random selection
		bench_random_selected_regions = create_random_selected_regions(
			bench_total_regions,
			sample_root / f"random/{bench_name}",
			args.num_regions,
			args.random_seed
		)

		bench_selected_regions = bench_kmeans_selected_regions + bench_random_selected_regions

		# Create markers
		create_markers(
			bench_analysis_df,
			bench_bb_id_map,
			bench_static_bb_info,
			bench_selected_regions,
			bench_markers_dir/"input-files",
			args.num_warmup_region,
			args.grace_perc,
			args.region_length
		)

		print(f"Finished processing benchmark {bench_name}\n")
		
	
if __name__ == "__main__":
	main()
