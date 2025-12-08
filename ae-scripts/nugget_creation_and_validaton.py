#!/usr/bin/env python3
"""Build and run nugget/naive binaries for selected benchmarks and aggregate measurements."""

import argparse
import csv
import json
import os
import time
from pathlib import Path


def run_command(cmd, cwd: Path, env=None):
	import subprocess

	print(f"Running: {' '.join(cmd)} (cwd={cwd})")
	cwd.mkdir(parents=True, exist_ok=True)
	subprocess.run(cmd, cwd=cwd, env=env, check=True)


def run_subprocess(cmd, cwd: Path, env=None, stdout_path: Path | None = None, stderr_path: Path | None = None):
	import subprocess

	print(f"Running: {' '.join(cmd)} (cwd={cwd})")
	cwd.mkdir(parents=True, exist_ok=True)
	with (stdout_path.open("wb") if stdout_path else open(os.devnull, "wb")) as out, (
		stderr_path.open("wb") if stderr_path else open(os.devnull, "wb")
	) as err:
		subprocess.run(cmd, cwd=cwd, env=env, check=True, stdout=out, stderr=err)


def parse_benchmarks(text: str) -> list[str]:
	parts = [p.strip() for p in text.replace(";", " ").replace(",", " ").split() if p.strip()]
	return parts


def build_all(npb_root: Path, size: str, benches: list[str], threads: int, grace: float):
	build_dir = npb_root / "ae-cbuild"
	build_dir.mkdir(parents=True, exist_ok=True)

	k_means_sample_root = npb_root / "ae-experiments" / "sample-selection" / f"threads-{threads}" / "k-means"
	random_sample_root = npb_root / "ae-experiments" / "sample-selection" / f"threads-{threads}" / "random"
	markers_root = npb_root / "ae-experiments" / "create-markers" / f"threads-{threads}" / f"{grace}"
	bb_info_dir = npb_root / "ae-cbuild" / "bb-info-output"
	source_bc_dir = npb_root / "ae-cbuild" / "llvm-bc"

	bench_env_val = " ".join(benches)

	def cmake_env(extra: dict) -> dict:
		base = os.environ.copy()
		base.update(
			{
				"TARGET_CLASSES": size,
				"TARGET_BENCHMARKS": bench_env_val,
			}
		)
		base.update(extra)
		return base

	# k-means nugget bc
	run_command(
		["cmake", ".."],
		cwd=build_dir,
		env=cmake_env(
			{
				"NUGGET_PROCESS_TYPE": "npb-nugget-bc",
				"NUGGET_CONFIG_FILE": str(
					npb_root / "experiments" / "multi-threaded-time-nuggets" / "cmake" / "nugget-bc.cmake"
				),
				"ALL_NUGGET_RIDS_DIR": str(k_means_sample_root),
				"MARKER_DIR": str(markers_root),
				"BB_INFO_INPUT_DIR": str(bb_info_dir),
				"SOURCE_BC_FILE_PATH": str(source_bc_dir),
			}
		),
	)
	run_command(["cmake", "--build", ".", "--target=time_nugget_bc"], cwd=build_dir)

	# nugget exe
	run_command(
		["cmake", ".."],
		cwd=build_dir,
		env=cmake_env(
			{
				"NUGGET_PROCESS_TYPE": "npb-nugget-exe",
				"NUGGET_CONFIG_FILE": str(
					npb_root / "experiments" / "multi-threaded-time-nuggets" / "cmake" / "nugget-exe.cmake"
				),
				"ALL_NUGGET_RIDS_DIR": str(k_means_sample_root),
				"MARKER_DIR": str(markers_root),
				"BB_INFO_INPUT_DIR": str(bb_info_dir),
				"SOURCE_BC_FILE_PATH": str(source_bc_dir),
			}
		),
	)
	run_command(["cmake", "--build", ".", "--target=time_nugget_exe"], cwd=build_dir)

    # random nugget bc
	run_command(
		["cmake", ".."],
		cwd=build_dir,
		env=cmake_env(
			{
				"NUGGET_PROCESS_TYPE": "npb-nugget-bc",
				"NUGGET_CONFIG_FILE": str(
					npb_root / "experiments" / "multi-threaded-time-nuggets" / "cmake" / "nugget-bc.cmake"
				),
				"ALL_NUGGET_RIDS_DIR": str(random_sample_root),
				"MARKER_DIR": str(markers_root),
				"BB_INFO_INPUT_DIR": str(bb_info_dir),
				"SOURCE_BC_FILE_PATH": str(source_bc_dir),
			}
		),
	)
	run_command(["cmake", "--build", ".", "--target=time_nugget_bc"], cwd=build_dir)

	# nugget exe
	run_command(
		["cmake", ".."],
		cwd=build_dir,
		env=cmake_env(
			{
				"NUGGET_PROCESS_TYPE": "npb-nugget-exe",
				"NUGGET_CONFIG_FILE": str(
					npb_root / "experiments" / "multi-threaded-time-nuggets" / "cmake" / "nugget-exe.cmake"
				),
				"ALL_NUGGET_RIDS_DIR": str(random_sample_root),
				"MARKER_DIR": str(markers_root),
				"BB_INFO_INPUT_DIR": str(bb_info_dir),
				"SOURCE_BC_FILE_PATH": str(source_bc_dir),
			}
		),
	)
	run_command(["cmake", "--build", ".", "--target=time_nugget_exe"], cwd=build_dir)

	# naive bc
	run_command(
		["cmake", ".."],
		cwd=build_dir,
		env=cmake_env(
			{
				"NUGGET_PROCESS_TYPE": "npb-naive-bc",
				"NUGGET_CONFIG_FILE": str(
					npb_root / "experiments" / "multi-threaded-time-naive" / "cmake" / "naive-bc.cmake"
				),
				"SOURCE_BC_FILE_PATH": str(source_bc_dir),
			}
		),
	)
	run_command(["cmake", "--build", ".", "--target=time_naive_bc"], cwd=build_dir)

	# naive exe
	run_command(
		["cmake", ".."],
		cwd=build_dir,
		env=cmake_env(
			{
				"NUGGET_PROCESS_TYPE": "npb-naive-exe",
				"NUGGET_CONFIG_FILE": str(
					npb_root / "experiments" / "multi-threaded-time-naive" / "cmake" / "naive-exe.cmake"
				),
				"BC_FILE_PATH": str(source_bc_dir),
			}
		),
	)
	run_command(["cmake", "--build", ".", "--target=time_naive_exe"], cwd=build_dir)


def measure_binary(bin_path: Path, workdir: Path, threads: int):
	env = os.environ.copy()
	env["OMP_NUM_THREADS"] = str(threads)
	stdout_path = workdir / "stdout.log"
	stderr_path = workdir / "stderr.log"
	start = time.perf_counter()
	run_subprocess([str(bin_path)], cwd=workdir, env=env, stdout_path=stdout_path, stderr_path=stderr_path)
	duration = time.perf_counter() - start
	(workdir / "execution_time.txt").write_text(f"{duration:.6f}\n")
	return duration


def find_nugget_binaries(llvm_exec: Path, size: str):
	nuggets = []
	for p in llvm_exec.glob(f"time_nugget_exe_*_{size}_*"):
		parts = p.name.split("_")
		if len(parts) < 6:
			continue
		bench = parts[3]
		rid = parts[5]
		exe_path = p / p.name if p.is_dir() else p
		nuggets.append((bench, rid, exe_path))
	return nuggets


def find_naive_binaries(llvm_exec: Path, size: str):
	naives = []
	for p in llvm_exec.glob(f"time_naive_exe_*_{size}"):
		parts = p.name.split("_")
		if len(parts) < 5:
			continue
		bench = parts[3]
		exe_path = p / p.name if p.is_dir() else p
		naives.append((bench, exe_path))
	return naives


def load_kmeans_clusters(sample_root: Path, benches: list[str], size: str) -> dict[str, dict[str, dict[str, float]]]:
	"""Return per-benchmark cluster info: {bench: {cluster_id: {rid, weight}}}."""
	bench_clusters: dict[str, dict[str, dict[str, float]]] = {}
	for bench in benches:
		name = f"{bench.lower()}_{size}"
		kmeans_path = sample_root / name / "kmeans-result.json"
		if not kmeans_path.is_file():
			continue
		with kmeans_path.open("r") as f:
			data = json.load(f)
		rep = data.get("rep_rid", {})
		weights = data.get("clusters_weights", {})
		clusters: dict[str, dict[str, float]] = {}
		for cluster, rid in rep.items():
			cid = str(cluster)
			clusters[cid] = {"rid": str(rid), "weight": float(weights.get(cid, 0.0))}
		bench_clusters[bench.lower()] = clusters
	print(bench_clusters)
	return bench_clusters


def load_random_regions(random_root: Path, benches: list[str], size: str) -> dict[str, list[str]]:
	random_rids: dict[str, list[str]] = {}
	for bench in benches:
		name = f"ir_bb_analysis_exe_{bench.lower()}_{size}"
		txt_path = random_root / name / "selected-regions.txt"
		if not txt_path.is_file():
			RuntimeError(f"Unable to find selected-regions.txt for random {bench}")
			continue
		if bench not in random_rids:
			random_rids[bench] = []
		with txt_path.open("r") as f:
			for line in f:
				rid = line.strip()
				if rid:
					random_rids[bench].append(rid)
	return random_rids


def main():
	parser = argparse.ArgumentParser(description="Create and validate nuggets/naive binaries and measure runtime.")
	parser.add_argument("--project_dir", "-d", required=True, help="Path to project root containing nugget-protocol-NPB")
	parser.add_argument("--size", "-s", default="A", help="Input size/class (e.g., A/B/C)")
	parser.add_argument(
		"--benchmarks",
		"-b",
		required=True,
		help="Benchmarks to target, space/comma/semicolon separated (e.g., 'CG EP')",
	)
	parser.add_argument("--threads", "-t", type=int, default=4, help="Number of threads for runs")
	parser.add_argument("--grace-perc", type=float, default=0.98, help="Grace percentage used in markers")
	args = parser.parse_args()

	project_dir = Path(args.project_dir).expanduser().resolve()
	npb_root = project_dir / "nugget-protocol-NPB"
	if not npb_root.is_dir():
		raise FileNotFoundError(f"Expected nugget-protocol-NPB under {project_dir}")

	size = args.size
	benches = parse_benchmarks(args.benchmarks)
	threads = args.threads
	grace = args.grace_perc

	# build_all(npb_root, size, benches, threads, grace)

	llvm_exec = npb_root / "ae-cbuild" / "llvm-exec"
	if not llvm_exec.is_dir():
		raise FileNotFoundError(f"Expected llvm-exec at {llvm_exec}")

	nugget_out_root = npb_root / "ae-experiments" / "nugget-measurement" / f"threads-{threads}" / size
	naive_out_root = npb_root / "ae-experiments" / "naive-measurement" / f"threads-{threads}" / size
	nugget_out_root.mkdir(parents=True, exist_ok=True)
	naive_out_root.mkdir(parents=True, exist_ok=True)

	sample_root = npb_root / "ae-experiments" / "sample-selection" / f"threads-{threads}" / "k-means"
	random_root = npb_root / "ae-experiments" / "sample-selection" / f"threads-{threads}" / "random"
	bench_clusters = load_kmeans_clusters(sample_root, benches, size)
	random_rids = load_random_regions(random_root, benches, size)

	measurements = []

	# Run naive binaries first to provide baselines
	naive_times: dict[tuple[str, str], float] = {}
	for bench, bin_path in find_naive_binaries(llvm_exec, size):
		out_dir = naive_out_root / bench
		duration = measure_binary(bin_path, out_dir, threads)
		naive_times[(bench, size)] = duration
		measurements.append(
			{
				"benchmark": bench,
				"size": size,
				"threads": threads,
				"type": "naive",
				"region_id": "",
				"cluster_id": "",
				"runtime_seconds": duration,
				"baseline_naive_seconds": duration
			}
		)

	# Run nugget binaries and collect runtimes per rid
	runtime_by_rid: dict[tuple[str, str], float] = {}
	for bench, rid, bin_path in find_nugget_binaries(llvm_exec, size):
		out_dir = nugget_out_root / bench / rid
		duration = measure_binary(bin_path, out_dir, threads)
		runtime_by_rid[(bench, rid)] = duration
		baseline = naive_times.get((bench, size))
		cluster_id = ""
		if bench in bench_clusters:
			for cid, meta in bench_clusters[bench].items():
				if meta.get("rid") == rid:
					cluster_id = cid
					break
		elif bench in random_rids and rid in random_rids[bench]:
			cluster_id = "random"
		measurements.append(
			{
				"benchmark": bench,
				"size": size,
				"threads": threads,
				"type": "nugget",
				"region_id": rid,
				"cluster_id": cluster_id,
				"runtime_seconds": duration,
				"baseline_naive_seconds": baseline if baseline is not None else ""
			}
		)

	# Compute program-level predicted runtime using cluster weights * measured rep runtimes
	program_pred: dict[str, float] = {}
	total_regions: dict[str, float] = {}
	for bench, clusters in bench_clusters.items():
		required_rids = [meta.get("rid") for meta in clusters.values() if meta.get("rid") is not None]
		if not required_rids:
			continue
		if any(runtime_by_rid.get((bench, rid)) is None for rid in required_rids):
			# Cannot form a prediction until every representative nugget is measured
			program_pred[bench] = None
			continue
		pred_total = 0.0
		total_regions[bench] = 0.0
		for cid, meta in clusters.items():
			rid = meta.get("rid")
			if rid is None:
				continue
			weight = meta.get("weight", 0.0)
			total_regions[bench] += weight
			runtime = runtime_by_rid.get((bench, rid))
			pred_total += weight * runtime
		program_pred[bench] = pred_total if pred_total > 0 else None
	random_pred: dict[str, float | None] = {}
	for bench, rid_list in random_rids.items():
		if not rid_list:
			random_pred[bench] = None
			continue
		runtimes = []
		for rid in rid_list:
			runtime = runtime_by_rid.get((bench, rid))
			if runtime is None:
				continue
			runtimes.append(runtime)
		if len(runtimes) != len(rid_list):
			random_pred[bench] = None
			continue
		mean_runtime = sum(runtimes) / len(runtimes)
		scale = total_regions.get(bench)
		if scale is None or scale <= 0:
			# Fallback: scale by count if we lack k-means weights
			scale = float(len(rid_list))
		random_pred[bench] = mean_runtime * scale

	# Write CSV
	csv_path = npb_root / "ae-experiments" / "nugget-measurement" / "measurements.csv"
	csv_path.parent.mkdir(parents=True, exist_ok=True)
	fieldnames = [
		"benchmark",
		"size",
		"threads",
		"type",
		"region_id",
		"cluster_id",
		"runtime_seconds",
		"baseline_naive_seconds"
	]
	with csv_path.open("w", newline="") as f:
		writer = csv.DictWriter(f, fieldnames=fieldnames)
		writer.writeheader()
		for row in measurements:
			row_out = dict(row)
			writer.writerow(row_out)

	# Write prediction error CSV for k-means and random methods
	pred_csv_path = npb_root / "ae-experiments" / "nugget-measurement" / "prediction-error.csv"
	pred_fieldnames = [
		"benchmark",
		"size",
		"threads",
		"sample_selection_method",
		"predicted_time_seconds",
		"baseline_time_seconds",
		"prediction_error",
	]
	with pred_csv_path.open("w", newline="") as f:
		writer = csv.DictWriter(f, fieldnames=pred_fieldnames)
		writer.writeheader()
		for bench in benches:
			baseline = naive_times.get((bench, size))
			# k-means prediction
			km_pred = program_pred.get(bench)
			if km_pred is not None and baseline is not None and baseline > 0:
				km_err = (km_pred - baseline) / baseline
				writer.writerow(
					{
						"benchmark": bench,
						"size": size,
						"threads": threads,
						"sample_selection_method": "k-means",
						"predicted_time_seconds": km_pred,
						"baseline_time_seconds": baseline,
						"prediction_error": km_err,
					}
				)
			# random prediction
			r_pred = random_pred.get(bench)
			if r_pred is not None and baseline is not None and baseline > 0:
				r_err = (r_pred - baseline) / baseline
				writer.writerow(
					{
						"benchmark": bench,
						"size": size,
						"threads": threads,
						"sample_selection_method": "random",
						"predicted_time_seconds": r_pred,
						"baseline_time_seconds": baseline,
						"prediction_error": r_err,
					}
				)

	print(f"Wrote measurements to {csv_path}")
	print(f"Wrote prediction errors to {pred_csv_path}")


if __name__ == "__main__":
	main()
