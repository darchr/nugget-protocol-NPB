#!/usr/bin/env python3
"""Automation for building and running NPB IR BB analysis binaries."""

import argparse
import os
import shutil
import subprocess
import time
from pathlib import Path


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


def run_command(cmd, cwd, env=None, stdout=None, stderr=None):
    print(f"Running: {' '.join(map(str, cmd))} (cwd={cwd})")
    subprocess.run(cmd, cwd=cwd, env=env, check=True, stdout=stdout, stderr=stderr)


def ensure_binaries(llvm_exe_dir: Path, input_class: str) -> dict[str, Path]:
    found = {}
    for name in BINARIES:
        binary_path = llvm_exe_dir / f"{name}{input_class}/{name}{input_class}"
        if not binary_path.is_file():
            raise FileNotFoundError(f"Missing binary at {binary_path}")
        found[name+input_class] = binary_path
    return found


def build_targets(npb_root: Path, input_class: str):
    ae_cbuild = npb_root / "ae-cbuild"
    ae_cbuild.mkdir(parents=True, exist_ok=True)

    ir_bb_bc_env = os.environ.copy()
    ir_bb_bc_env["NUGGET_PROCESS_TYPE"] = "npb-ir-bb-analysis-bc"
    ir_bb_bc_env["NUGGET_CONFIG_FILE"] = str(
        npb_root
        / "experiments"
        / "multi-threaded-ir-bbv-analysis"
        / "cmake"
        / "ir-bb-analysis-bc.cmake"
    )
    ir_bb_bc_env["TARGET_CLASSES"] = input_class

    run_command(["cmake", ".."], cwd=ae_cbuild, env=ir_bb_bc_env)
    run_command(["cmake", "--build", ".", "--target=ir_bb_analysis_bc"], cwd=ae_cbuild)

    ir_bb_exe_env = os.environ.copy()
    ir_bb_exe_env["NUGGET_PROCESS_TYPE"] = "npb-analysis-exe"
    ir_bb_exe_env["NUGGET_CONFIG_FILE"] = str(
        npb_root
        / "experiments"
        / "multi-threaded-ir-bbv-analysis"
        / "cmake"
        / "ir-bb-analysis-exe.cmake"
    )
    ir_bb_exe_env["TARGET_CLASSES"] = input_class

    run_command(["cmake", ".."], cwd=ae_cbuild, env=ir_bb_exe_env)
    run_command(["cmake", "--build", ".", "--target=ir_bb_analysis_exe"], cwd=ae_cbuild)

    return ae_cbuild


def run_analyses(npb_root: Path, llvm_exe_dir: Path, input_class: str, threads: int = 4):
    binaries = ensure_binaries(llvm_exe_dir, input_class)

    ae_experiments = npb_root / "ae-experiments"
    analysis_dir = ae_experiments / "analysis"
    analysis_dir.mkdir(parents=True, exist_ok=True)

    for name, binary in binaries.items():
        target_dir = analysis_dir / f"threads-{threads}/{name.split('_')[-2]}_{input_class}"
        target_dir.mkdir(parents=True, exist_ok=True)

        env = os.environ.copy()
        env["OMP_NUM_THREADS"] = str(threads)

        stdout_path = target_dir / "stdout.log"
        stderr_path = target_dir / "stderr.log"
        exec_time_path = target_dir / "execution_time.txt"

        with stdout_path.open("wb") as out, stderr_path.open("wb") as err:
            start = time.perf_counter()
            # Run from the per-binary output folder so any files the binary emits land there
            run_command([str(binary)], cwd=target_dir, env=env, stdout=out, stderr=err)
            duration = time.perf_counter() - start

        exec_time_path.write_text(f"{duration:.3f}\n")

        # copy the bb-info-output to the target_dir
        bench = name.split("_")[4]  # e.g., ir_bb_analysis_exe_bt_A -> bt
        src = (llvm_exe_dir / ".." / "bb-info-output" / f"{bench}_{input_class}" / "basic-block-info.txt").resolve()
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
    return parser.parse_args()

def main():
    args = parse_args()
    project_dir = Path(args.project_dir).expanduser().resolve()
    npb_root = project_dir / "nugget-protocol-NPB"
    input_class = args.size
    num_threads = args.num_threads

    if not npb_root.is_dir():
        raise FileNotFoundError(f"Expected nugget-protocol-NPB under {project_dir}")

    ae_cbuild = build_targets(npb_root, input_class)
    llvm_exec_dir = ae_cbuild / "llvm-exec"

    if not llvm_exec_dir.is_dir():
        raise FileNotFoundError(f"Expected llvm-exec directory at {llvm_exec_dir}")

    run_analyses(npb_root, llvm_exec_dir, input_class, threads=num_threads)

    print(f"Project directory: {project_dir.as_posix()}; Input Class: {input_class};"
          f"Number of threads: {num_threads}\n\n")
    
    print("Experiments Finished.\n")

if __name__ == "__main__":
    main()
