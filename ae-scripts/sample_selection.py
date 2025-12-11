#!/usr/bin/env python3
"""Run sample selection: k-means clustering, optional random selection, and marker generation."""

import argparse
import json
import random
import sys
from multiprocessing import Pool
from pathlib import Path

import pandas as pd

# Ensure repository root (one level above nugget-protocol-NPB) is on sys.path
PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent
if PROJECT_ROOT.as_posix() not in sys.path:
	sys.path.insert(0, PROJECT_ROOT.as_posix())

from nugget_util.python_processing.analysis_functions import (
	create_input_for_pass,
	form_a_list_markers,
	form_bb_id_map,
	get_all_bbv,
	form_dataframe_from_csv,
	get_static_info,
	get_total_regions,
	k_means_select_regions,
)


BINARIES = [
	"ir_bb_analysis_exe_bt_",
	"ir_bb_analysis_exe_cg_",
	"ir_bb_analysis_exe_ep_",
	"ir_bb_analysis_exe_ft_",
	"ir_bb_analysis_exe_is_",
	"ir_bb_analysis_exe_lu_",
	"ir_bb_analysis_exe_mg_",
	"ir_bb_analysis_exe_sp_",
]

DEFAULT_NUM_PROJECTION = 100
DEFAULT_RANDOM_SEED = 627


def generate_k_means(nugget_info_path: Path, analysis_df_path: Path, num_ideal_nuggets: int, output_dir: Path, dont_use_pca: bool):
	"""Execute k-means region selection and write results to output_dir."""
	num_projection = DEFAULT_NUM_PROJECTION

	with analysis_df_path.open("r") as f:
		df = pd.read_csv(f, header=0, dtype={"region": str, "thread": int})

	bb_id_map = form_bb_id_map(df)
	all_bbv = get_all_bbv(df, bb_id_map)

	for index, row in enumerate(all_bbv):
		if sum(row) == 0:
			print(f"row {index} has all zeros")

	static_info = get_static_info(nugget_info_path)

	print(f"shape of all_bbv: {len(all_bbv)} {len(all_bbv[0])}")

	while len(all_bbv) <= num_ideal_nuggets * 4 and num_ideal_nuggets > 1:
		num_ideal_nuggets //= 2

	if len(all_bbv[0]) <= num_projection:
		num_projection = int(len(all_bbv[0]))

	num_projection = min(num_projection, len(all_bbv))
	print(f"Number of projection: {num_projection}\n")

	kmeans_result = k_means_select_regions(
		num_ideal_nuggets,
		all_bbv,
		bb_id_map,
		static_info,
		num_projection,
		if_use_pca=not dont_use_pca
	)
	print(f"Finished Clustering; Now storing at {output_dir.as_posix()}\n")

	output_dir.mkdir(parents=True, exist_ok=True)

	with (output_dir / "kmeans-result.json").open("w") as f:
		json.dump(kmeans_result, f, indent=4)

	rep_rid = kmeans_result["rep_rid"]
	with (output_dir / "selected-regions.txt").open("w") as f:
		for val in rep_rid.values():
			f.write(f"{val}\n")

	return output_dir / "selected-regions.txt"


def select_random_regions(df_path: Path, num_regions: int, seed: int) -> list[int]:
	"""Select random regions based on the analysis dataframe."""
	with df_path.open("r") as f:
		df = pd.read_csv(f, header=0, dtype={"region": str, "thread": int})

	total_regions = int(get_total_regions(df))
	if total_regions <= 0:
		raise ValueError(f"No regions found in {df_path}")

	count = min(num_regions, total_regions)
	rng = random.Random(seed)
	return rng.sample(range(total_regions), count)


def write_random_selection(random_regions: list[int], output_dir: Path) -> Path:
	output_dir.mkdir(parents=True, exist_ok=True)
	out_path = output_dir / "selected-regions.txt"
	with out_path.open("w") as f:
		for region in sorted(random_regions):
			f.write(f"{region}\n")
	return out_path


def read_markers(marker_file: Path) -> list[int]:
	markers = []
	with marker_file.open("r") as f:
		for line in f:
			markers.append(int(line.strip()))
	return markers


def produce_df_and_marker(
	analysis_df_path: Path,
	bb_info_path: Path,
	output_dir: Path,
	list_of_markers: list[int],
	region_length: int,
	grace_perc: float,
	num_warmup_region: int,
):
	"""Create markers.csv and per-marker input files."""
	with analysis_df_path.open("r") as f:
		df = pd.read_csv(f, header=0, dtype={"region": str, "thread": int})

	bb_id_map = form_bb_id_map(df)

	marker_dir = output_dir
	input_file_outdir = marker_dir / "input-files"
	marker_dir.mkdir(parents=True, exist_ok=True)

	target_markers = list(list_of_markers)
	if input_file_outdir.exists():
		existing = {int(p.name.split("-")[0]) for p in input_file_outdir.iterdir() if p.is_file()}
		target_markers = [m for m in target_markers if m not in existing]
	else:
		input_file_outdir.mkdir(parents=True, exist_ok=True)

	marker_df = form_a_list_markers(
		df,
		bb_id_map,
		num_warmup_region,
		grace_perc,
		region_length,
		target_markers,
	)

	marker_df.to_csv(marker_dir / "markers.csv", index=False)

	static_bb_info = get_static_info(bb_info_path)

	for marker_id in target_markers:
		region_input_info = create_input_for_pass(marker_df, static_bb_info, marker_id)
		with (input_file_outdir / f"{marker_id}-marker.txt").open("w") as f:
			for item in region_input_info:
				f.write(f"{item}\n")


def find_analysis_inputs(run_dir: Path, name: str) -> tuple[Path, Path]:
	"""Locate bb info and dataframe; create df if only raw analysis CSV exists."""
	bb_info_path = run_dir / "basic-block-info.txt"
	if not bb_info_path.is_file():
		raise FileNotFoundError(f"Expected basic-block-info.txt in {run_dir}")

	csv_candidates = sorted(run_dir.glob("*_df.csv"))
	if csv_candidates:
		return bb_info_path, csv_candidates[0]

	# If no dataframe found, try to build one from analysis-output.csv
	analysis_output = run_dir / "analysis-output.csv"
	if analysis_output.is_file():
		df_path = run_dir / f"{name}_df.csv"
		df = form_dataframe_from_csv(analysis_output)
		df.to_csv(df_path, index=False)
		print(f"Generated dataframe {df_path} from {analysis_output}")
		return bb_info_path, df_path

	raise FileNotFoundError(f"Expected *_df.csv or analysis-output.csv in {run_dir}")


def build_runs(npb_root: Path, input_class: str, threads: int, grace_perc: float):
	analysis_root = npb_root / "ae-experiments" / "analysis" / f"threads-{threads}"
	sample_root = npb_root / "ae-experiments" / "sample-selection" / f"threads-{threads}"
	markers_root = npb_root / "ae-experiments" / "create-markers" / f"threads-{threads}" / f"{grace_perc}"

	runs = []
	for base in BINARIES:
		name = f"{base}{input_class}"
		run_dir = analysis_root / name 
		if not run_dir.is_dir():
			print(f"Skipping {name}: missing analysis directory {run_dir}")
			continue

		bb_info_path, df_path = find_analysis_inputs(run_dir, name)
		binary_name = name.split("_")[4] + "_" + input_class

		random_out_dir = sample_root / "random" / binary_name
		k_means_out_dir = sample_root / "k-means" / binary_name
		marker_dir = markers_root / binary_name 

		runs.append(
			{
				"bb_info_path": bb_info_path,
				"df_path": df_path,
				"random_out_dir" : random_out_dir,
				"k_means_out_dir" : k_means_out_dir,
				"marker_dir": marker_dir,
				"threads": threads,
				"name": name,
			}
		)

	if not runs:
		raise RuntimeError("No analysis runs found; run preparation_and_interval_analysis first.")

	return runs


def _worker(run_ball: dict):
	try:
		# K-means selection
		kmeans_file = generate_k_means(
			run_ball["bb_info_path"],
			run_ball["df_path"],
			run_ball["num_k_nuggets"],
			run_ball["k_means_out_dir"],
			dont_use_pca=run_ball["dont_use_pca"]
		)

		# Optional random selection
		random_file = None
		if run_ball.get("enable_random"):
			random_regions = select_random_regions(
				run_ball["df_path"],
				run_ball["random_num"],
				run_ball["random_seed"],
			)
			random_file = write_random_selection(random_regions, run_ball["random_out_dir"])

		# Collect markers
		markers = read_markers(kmeans_file)
		if random_file is not None:
			markers.extend(read_markers(random_file))
		markers = sorted(set(markers))

		produce_df_and_marker(
			run_ball["df_path"],
			run_ball["bb_info_path"],
			run_ball["marker_dir"],
			markers,
			run_ball["region_length"],
			run_ball["grace_perc"],
			run_ball["num_warmup_region"],
		)
		return 0
	except Exception as exc:  # pragma: no cover - simple diagnostic
		print(f"Failed run for {run_ball.get('name')}: {exc}")
		return 1

def parse_args():
	parser = argparse.ArgumentParser(description="Run sample selection and marker creation.")
	parser.add_argument("--project_dir", "-d", required=True, help="Path to project root containing nugget-protocol-NPB")
	parser.add_argument("--size", "-s", default="A", help="Input class used for the analyses (e.g., A/B/C).")
	parser.add_argument("--threads", "-t", type=int, default=4, help="Thread count used in the analysis runs.")
	parser.add_argument("--num-k-nuggets", "-n", type=int, default=30, help="Number of k nuggets for clustering.")
	parser.add_argument("--processes", "-p", type=int, default=1, help="Parallel processes for clustering jobs.")
	parser.add_argument("--disable-random", action="store_true", help="Also generate random region selections.")
	parser.add_argument("--random-num-nuggets", type=int, default=30, help="How many random regions to select when enabled.")
	parser.add_argument("--random-seed", type=int, default=DEFAULT_RANDOM_SEED, help="Seed for random region selection.")
	parser.add_argument("--grace-perc", type=float, default=0.98, help="Grace percentage for marker creation.")
	parser.add_argument("--region-length", type=int, default=400_000_000, help="Region length for marker creation.")
	parser.add_argument("--num-warmup-region", type=int, default=1, help="Number of warmup regions for marker creation.")
	parser.add_argument("--dont-use-pca", action="store_true", help="If use, then we use random linear projection instead of PCA.")
	return parser.parse_args()

def main():
	args = parse_args()
	project_dir = Path(args.project_dir).expanduser().resolve()
	npb_root = project_dir / "nugget-protocol-NPB"

	if not npb_root.is_dir():
		raise FileNotFoundError(f"Expected nugget-protocol-NPB under {project_dir}")

	runs = build_runs(npb_root, args.size, args.threads, args.grace_perc)

	# enrich run context
	for run in runs:
		run["enable_random"] = not args.disable_random
		run["random_num"] = args.random_num_nuggets
		run["random_seed"] = args.random_seed
		run["region_length"] = args.region_length
		run["grace_perc"] = args.grace_perc
		run["num_k_nuggets"] = args.num_k_nuggets
		run["num_warmup_region"] = args.num_warmup_region
		run["dont_use_pca"] = args.dont_use_pca

	processes = max(1, args.processes)
	with Pool(processes=processes) as pool:
		results = pool.map(_worker, runs)

	failures = sum(1 for r in results if r != 0)
	if failures:
		sys.exit(f"Sample selection completed with {failures} failures.")

	print("Sample selection finished for all analyses.")

if __name__ == "__main__":
	main()
