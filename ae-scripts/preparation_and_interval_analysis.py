#!/usr/bin/env python3
"""Automation for building and running NPB IR BB analysis binaries."""

import argparse
import os
import shutil
import subprocess
import time
from pathlib import Path


def run_command(cmd, cwd, env=None, stdout=None, stderr=None):
    print(f"Running: {' '.join(map(str, cmd))} (cwd={cwd})")
    subprocess.run(cmd, cwd=cwd, env=env, check=True, stdout=stdout, stderr=stderr)


def build_targets(npb_root: Path, input_class: str, benchmarks: list[str], architecture: str) -> Path:
    ae_cbuild = npb_root / "ae-cbuild"
    ae_cbuild.mkdir(parents=True, exist_ok=True)

    bench_env_val = " ".join([b.upper() for b in benchmarks])

    ir_bb_bc_env = os.environ.copy()
    ir_bb_bc_env["NUGGET_PROCESS_TYPE"] = "npb-ir-bb-analysis-bc"
    ir_bb_bc_env["NUGGET_CONFIG_FILE"] = str(
        npb_root
        / "ae-cmake"
        / "multi-threaded-ir-bbv-analysis"
        / "cmake"
        / "ir-bb-analysis-bc.cmake"
    )
    ir_bb_bc_env["TARGET_CLASSES"] = input_class
    ir_bb_bc_env["TARGET_BENCHMARKS"] = bench_env_val

    run_command(["cmake", ".."], cwd=ae_cbuild, env=ir_bb_bc_env)
    run_command(["cmake", "--build", ".", "--target=ir_bb_analysis_bc"], cwd=ae_cbuild)

    ir_bb_exe_env = os.environ.copy()
    ir_bb_exe_env["NUGGET_PROCESS_TYPE"] = "npb-analysis-exe"
    ir_bb_exe_env["NUGGET_CONFIG_FILE"] = str(
        npb_root
        / "ae-cmake"
        / "multi-threaded-ir-bbv-analysis"
        / "cmake"
        / "ir-bb-analysis-exe.cmake"
    )
    ir_bb_exe_env["TARGET_CLASSES"] = input_class
    ir_bb_exe_env["TARGET_BENCHMARKS"] = bench_env_val

    run_command(["cmake", ".."], cwd=ae_cbuild, env=ir_bb_exe_env)
    run_command(["cmake", "--build", ".", f"--target=ir_bb_analysis_{architecture}_exe"], cwd=ae_cbuild)

    return ae_cbuild


def run_analyses(npb_root: Path, llvm_exe_dir: Path, input_class: str, benchmarks: list[str], architecture: str, threads: int = 4):
    ae_experiments = npb_root / "ae-experiments"
    analysis_dir = ae_experiments / "analysis"
    analysis_dir.mkdir(parents=True, exist_ok=True)

    for binary in benchmarks:
        target_dir = analysis_dir / f"threads-{threads}/{architecture}/{binary}_{input_class}"
        target_dir.mkdir(parents=True, exist_ok=True)

        env = os.environ.copy()
        env["OMP_NUM_THREADS"] = str(threads)

        stdout_path = target_dir / "stdout.log"
        stderr_path = target_dir / "stderr.log"
        exec_time_path = target_dir / "execution_time.txt"

        with stdout_path.open("wb") as out, stderr_path.open("wb") as err:
            start = time.perf_counter()
            # Run from the per-binary output folder so any files the binary emits land there
            run_command([Path(llvm_exe_dir/f"ir_bb_analysis_{architecture}_exe_{binary}_{input_class}/ir_bb_analysis_{architecture}_exe_{binary}_{input_class}")], cwd=target_dir, env=env, stdout=out, stderr=err)
            duration = time.perf_counter() - start

        exec_time_path.write_text(f"{duration:.3f}\n")

        # copy the bb-info-output to the target_dir
        src = (llvm_exe_dir / ".." / "bb-info-output" / f"{binary}_{input_class}" / "basic-block-info.txt").resolve()
        dst = target_dir / "basic-block-info.txt"
        if not src.is_file():
            raise FileNotFoundError(f"Expected basic-block-info.txt at {src}")
        shutil.copy2(src, dst)

def parse_args():
    parser = argparse.ArgumentParser(description="Build and run NPB IR BB analysis binaries.")
    parser.add_argument(
        "--project_dir",
        "-d",
        help="Path to project root containing nugget-protocol-NPB",
    )
    parser.add_argument(
        "--size",
        "-s",
        default="A",
        help="The input class of NPB"
    )
    parser.add_argument(
        "--num-threads",
        "-t",
        default=4,
        type=int,
        help="The number of threads used for the experiments."
    )
    parser.add_argument(
        "--benchmarks",
        "-b",
        nargs="+",
        default=["bt", "cg", "ep", "ft", "is", "lu", "mg", "sp"],
        help="List of benchmarks to run. Defaults to all NPB benchmarks."
    )
    parser.add_argument(
        "--architecture",
        "-a",
        default=os.uname().machine,
        help="Target architecture for building the binaries. (Default: host architecture)"
    )
    return parser.parse_args()

def main():
    args = parse_args()
    project_dir = Path(args.project_dir).expanduser().resolve()
    npb_root = project_dir / "nugget-protocol-NPB"
    input_class = args.size
    num_threads = args.num_threads
    benchmarks = args.benchmarks
    architecture = args.architecture

    if not npb_root.is_dir():
        raise FileNotFoundError(f"Expected nugget-protocol-NPB under {project_dir}")

    ae_cbuild = build_targets(npb_root, input_class, benchmarks, architecture)
    llvm_exec_dir = ae_cbuild / "llvm-exec"

    if not llvm_exec_dir.is_dir():
        raise FileNotFoundError(f"Expected llvm-exec directory at {llvm_exec_dir}")

    run_analyses(npb_root, llvm_exec_dir, input_class, benchmarks, architecture, threads=num_threads)

    print(f"Project directory: {project_dir.as_posix()}; Input Class: {input_class};"
          f"Number of threads: {num_threads}; Architecture: {architecture}; Benchmarks: {', '.join(benchmarks)}\n\n")
    
    print("Experiments Finished.\n")

if __name__ == "__main__":
    main()
