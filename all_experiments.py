import subprocess
from multiprocessing import Pool
from pathlib import Path
import os
import argparse
import shutil
import random
import json

parser = argparse.ArgumentParser()

parser.add_argument("--region_size_list", nargs="+", type=int, default=[1000_000_000])
parser.add_argument("--arch", type=str, default="aarch64")
parser.add_argument("--machine_name", type=str, default="saphir")
parser.add_argument("--thread_list", nargs="+", type=int, default=[1, 8])
parser.add_argument("--size_list", nargs="+", type=str, default=["D"])
parser.add_argument("--if_make_source", type=bool, default=False)
parser.add_argument("--if_make_base", type=bool, default=False)
parser.add_argument("--if_make_final", type=bool, default=False)
parser.add_argument("--if_run", type=bool, default=False)
parser.add_argument("--num_run", type=int, default=10)
parser.add_argument("--benchmarks", nargs="+", type=str, default=["bt", "cg", "ep", "ft", "is", "lu", "mg", "sp"])

parser.add_argument("--papi_naive", type=bool, default=False)
parser.add_argument("--time_naive", type=bool, default=False)
parser.add_argument("--profiling", type=bool, default=False)
parser.add_argument("--papi_profiling", type=bool, default=False)
parser.add_argument("--marker_overhead", type=bool, default=False)
parser.add_argument("--papi_measuring", type=bool, default=False)
parser.add_argument("--region_info", type=str, default="")
parser.add_argument("--num_pool", type=int, default=1)

parser.add_argument("--with-llc", type=bool, default=False)

args = parser.parse_args()

def process_this(run_ball):
    command = run_ball["cmd"]
    env = run_ball["env"]
    dir = run_ball["dir"]
    if not Path(dir).exists():
        Path(dir).mkdir(exist_ok=False)
    if "stdout" in run_ball:
        stdout_path = run_ball["stdout"]
    else:
        stdout_path = None
    if "stderr" in run_ball:
        stderr_path = run_ball["stderr"]
    else:
        stderr_path = None
    if "OMP_NUM_THREADS" in env:
        num_threads = env["OMP_NUM_THREADS"]
    else: 
        num_threads = 0
    if stdout_path is not None:
        with open(stdout_path, "w") as stdout, open(stderr_path, "w") as stderr:
            process_code = subprocess.run(command, cwd=dir, env=env, stdout=stdout, stderr=stderr)
        print("finished", dir, command, f"{num_threads} threads", process_code)
    else:
        process_code = subprocess.run(command, cwd=dir, env=env)
        print("finished", dir, command, process_code)
    return process_code

benchmarks = args.benchmarks
thread_list = args.thread_list
region_size_list = args.region_size_list
arch = args.arch
size_list = args.size_list
num_runs = args.num_run

random.seed(627)

print("all input arguments are", args)

if args.region_info != "":
    with open(args.region_info, "r") as f:
        region_info = json.load(f)
else:
    region_info = {}

workdir = Path().cwd()

default_cmd = ["cset", "proc", "-s", "measurement", "-e"]

must_env = os.environ
must_env["LD_LIBRARY_PATH"] = f"{workdir.as_posix()}/common/{arch}-unknown-linux-gnu"
must_env["LD_LIBRARY_PATH"] += f":{workdir.as_posix()}/common/all_papi/{arch}/lib"

if args.if_make_source:
    for bench in benchmarks:
        bench_env = must_env.copy()
        bench_env["PROGRAM"] = bench
        subprocess.run(["make", "clean_all"], cwd=workdir.as_posix(), env=bench_env)
        stdout = Path(workdir/f"{bench.upper()}/make_source.log")
        stderr = Path(workdir/f"{bench.upper()}/make_source.err")
        process_this({
            "cmd": ["make", "-B", "all"],
            "env": bench_env,
            "dir": workdir.as_posix(),
            "stdout": stdout.as_posix(),
            "stderr": stderr.as_posix()
        })

if args.if_make_base:
    for bench in benchmarks:
        bench_env = must_env.copy()
        bench_env["PROGRAM"] = bench
        for region_length in region_size_list:
            for size in size_list:
                for thread in thread_list:
                    make_ball_env = bench_env.copy()
                    make_ball_env["SIZE"] = size
                    make_ball_env["REGION_LENGTH"] = str(region_length)
                    make_ball_env["TARGET_ARCH"] = arch
                    make_ball_env["THREAD_SIZE"] = str(thread)

                    if args.papi_naive:
                        process_this({
                            "cmd": ["make", "c_papi_naive"],
                            "env": make_ball_env,
                            "dir": workdir.as_posix(),
                            "stdout": Path(workdir/f"{bench.upper()}/c_papi_naive.log").as_posix(),
                            "stderr": Path(workdir/f"{bench.upper()}/c_papi_naive.err").as_posix()
                        })
                    if args.time_naive:
                        process_this({
                            "cmd": ["make", "c_time_naive"],
                            "env": make_ball_env,
                            "dir": workdir.as_posix(),
                            "stdout": Path(workdir/f"{bench.upper()}/c_time_naive.log").as_posix(),
                            "stderr": Path(workdir/f"{bench.upper()}/c_time_naive.err").as_posix()
                        })
                    if args.profiling:
                        if thread == 1:
                            process_this({
                                "cmd": ["make", "single_thread_c_profiling"],
                                "env": make_ball_env,
                                "dir": workdir.as_posix(),
                                "stdout": Path(workdir/f"{bench.upper()}/single_thread_c_profiling.log").as_posix(),
                                "stderr": Path(workdir/f"{bench.upper()}/single_thread_c_profiling.err").as_posix()
                            })
                        else:
                            process_this({
                                "cmd": ["make", "c_profiling"],
                                "env": make_ball_env,
                                "dir": workdir.as_posix(),
                                "stdout": Path(workdir/f"{bench.upper()}/c_profiling.log").as_posix(),
                                "stderr": Path(workdir/f"{bench.upper()}/c_profiling.err").as_posix()
                            })
                    if args.papi_profiling:
                        if thread == 1:
                            process_this({
                                "cmd": ["make", "single_thread_c_papi_profiling"],
                                "env": make_ball_env,
                                "dir": workdir.as_posix(),
                                "stdout": Path(workdir/f"{bench.upper()}/single_thread_c_papi_profiling.log").as_posix(),
                                "stderr": Path(workdir/f"{bench.upper()}/single_thread_c_papi_profiling.err").as_posix()
                            })
                        else:
                            process_this({
                                "cmd": ["make", "c_papi_profiling"],
                                "env": make_ball_env,
                                "dir": workdir.as_posix(),
                                "stdout": Path(workdir/f"{bench.upper()}/c_papi_profiling.log").as_posix(),
                                "stderr": Path(workdir/f"{bench.upper()}/c_papi_profiling.err").as_posix()
                            })
                    if args.marker_overhead:
                        for rid in region_info[bench]:
                            region_env = make_ball_env.copy()
                            region_env["REGION_ID"] = str(rid)
                            if thread == 1:
                                process_this({
                                    "cmd": ["make", "single_thread_c_marker_overhead_measuring"],
                                    "env": region_env,
                                    "dir": workdir.as_posix(),
                                    "stdout": Path(workdir/f"{bench.upper()}/single_thread_c_marker_overhead_measuring.log").as_posix(),
                                    "stderr": Path(workdir/f"{bench.upper()}/single_thread_c_marker_overhead_measuring.err").as_posix()
                                })
                            else:
                                process_this({
                                    "cmd": ["make", "c_marker_overhead_measuring"],
                                    "env": region_env,
                                    "dir": workdir.as_posix(),
                                    "stdout": Path(workdir/f"{bench.upper()}/c_marker_overhead_measuring.log").as_posix(),
                                    "stderr": Path(workdir/f"{bench.upper()}/c_marker_overhead_measuring.err").as_posix()
                                })
                    if args.papi_measuring:
                        for rid in region_info[bench]:
                            region_env = make_ball_env.copy()
                            region_env["REGION_ID"] = str(rid)
                            if thread == 1:
                                process_this({
                                    "cmd": ["make", "single_thread_c_papi_measuring"],
                                    "env": region_env,
                                    "dir": workdir.as_posix(),
                                    "stdout": Path(workdir/f"{bench.upper()}/single_thread_c_papi_measuring.log").as_posix(),
                                    "stderr": Path(workdir/f"{bench.upper()}/single_thread_c_papi_measuring.err").as_posix()
                                })
                            else:
                                process_this({
                                    "cmd": ["make", "c_papi_measuring"],
                                    "env": region_env,
                                    "dir": workdir.as_posix(),
                                    "stdout": Path(workdir/f"{bench.upper()}/c_papi_measuring.log").as_posix(),
                                    "stderr": Path(workdir/f"{bench.upper()}/c_papi_measuring.err").as_posix()
                                })

if args.if_make_final:
    for bench in benchmarks:
        bench_env = must_env.copy()
        bench_env["PROGRAM"] = bench
        for region_length in region_size_list:
            for size in size_list:
                for thread in thread_list:
                    make_ball_env = bench_env.copy()
                    make_ball_env["SIZE"] = size
                    make_ball_env["REGION_LENGTH"] = str(region_length)
                    make_ball_env["TARGET_ARCH"] = arch
                    make_ball_env["THREAD_SIZE"] = str(thread)

                    if args.papi_naive:
                        process_this({
                            "cmd": ["make", "final_compile_c_papi_naive"],
                            "env": make_ball_env,
                            "dir": workdir.as_posix(),
                            "stdout": Path(workdir/f"{bench.upper()}/final_compile_c_papi_naive.log").as_posix(),
                            "stderr": Path(workdir/f"{bench.upper()}/final_compile_c_papi_naive.err").as_posix()
                        })
                    if args.time_naive:
                        process_this({
                            "cmd": ["make", "final_compile_c_time_naive"],
                            "env": make_ball_env,
                            "dir": workdir.as_posix(),
                            "stdout": Path(workdir/f"{bench.upper()}/final_compile_c_time_naive.log").as_posix(),
                            "stderr": Path(workdir/f"{bench.upper()}/final_compile_c_time_naive.err").as_posix()
                        })
                    if args.profiling:
                        if thread == 1:
                            if args.with_llc:
                                exp_name = "final_compile_single_thread_with_llc_c_profiling"
                            else:
                                exp_name = "final_compile_single_thread_c_profiling"
                            process_this({
                                "cmd": ["make", exp_name],
                                "env": make_ball_env,
                                "dir": workdir.as_posix(),
                                "stdout": Path(workdir/f"{bench.upper()}/{exp_name}.log").as_posix(),
                                "stderr": Path(workdir/f"{bench.upper()}/{exp_name}.err").as_posix()
                            })
                        else:
                            if args.with_llc:
                                exp_name = "final_compile_with_llc_c_profiling"
                            else:
                                exp_name = "final_compile_c_profiling"
                            process_this({
                                "cmd": ["make", exp_name],
                                "env": make_ball_env,
                                "dir": workdir.as_posix(),
                                "stdout": Path(workdir/f"{bench.upper()}/{exp_name}.log").as_posix(),
                                "stderr": Path(workdir/f"{bench.upper()}/{exp_name}.err").as_posix()
                            })
                    if args.papi_profiling:
                        if thread == 1:
                            if args.with_llc:
                                exp_name = "final_compile_single_thread_with_llc_c_papi_profiling"
                            else:
                                exp_name = "final_compile_single_thread_c_papi_profiling"
                            process_this({
                                "cmd": ["make", exp_name],
                                "env": make_ball_env,
                                "dir": workdir.as_posix(),
                                "stdout": Path(workdir/f"{bench.upper()}/{exp_name}.log").as_posix(),
                                "stderr": Path(workdir/f"{bench.upper()}/{exp_name}.err").as_posix()
                            })
                        else:
                            if args.with_llc:
                                exp_name = "final_compile_with_llc_c_papi_profiling"
                            else:
                                exp_name = "final_compile_c_papi_profiling"
                            process_this({
                                "cmd": ["make", exp_name],
                                "env": make_ball_env,
                                "dir": workdir.as_posix(),
                                "stdout": Path(workdir/f"{bench.upper()}/{exp_name}.log").as_posix(),
                                "stderr": Path(workdir/f"{bench.upper()}/{exp_name}.err").as_posix()
                            })
                    if args.marker_overhead:
                        for rid in region_info[bench]:
                            region_env = make_ball_env.copy()
                            region_env["REGION_ID"] = str(rid)
                            if thread == 1:
                                process_this({
                                    "cmd": ["make", "final_compile_single_thread_c_marker_overhead_measuring"],
                                    "env": region_env,
                                    "dir": workdir.as_posix(),
                                    "stdout": Path(workdir/f"{bench.upper()}/final_compile_single_thread_c_marker_overhead_measuring.log").as_posix(),
                                    "stderr": Path(workdir/f"{bench.upper()}/final_compile_single_thread_c_marker_overhead_measuring.err").as_posix()
                                })
                            else:
                                process_this({
                                    "cmd": ["make", "final_compile_c_marker_overhead_measuring"],
                                    "env": region_env,
                                    "dir": workdir.as_posix(),
                                    "stdout": Path(workdir/f"{bench.upper()}/final_compile_c_marker_overhead_measuring.log").as_posix(),
                                    "stderr": Path(workdir/f"{bench.upper()}/final_compile_c_marker_overhead_measuring.err").as_posix()
                                })
                    if args.papi_measuring:
                        for rid in region_info[bench]:
                            region_env = make_ball_env.copy()
                            region_env["REGION_ID"] = str(rid)
                            if thread == 1:
                                if args.with_llc:
                                    exp_name = "final_compile_with_llc_single_thread_c_papi_measuring"
                                else:
                                    exp_name = "final_compile_single_thread_c_papi_measuring"
                            else:
                                if args.with_llc:
                                    exp_name = "final_compile_with_llc_c_papi_measuring"
                                else:
                                    exp_name = "final_compile_c_papi_measuring"
                            process_this({
                                "cmd": ["make", exp_name],
                                "env": region_env,
                                "dir": workdir.as_posix(),
                                "stdout": Path(workdir/f"{bench.upper()}/{exp_name}.log").as_posix(),
                                "stderr": Path(workdir/f"{bench.upper()}/{exp_name}.err").as_posix()
                            })

if args.if_run:

    runs = []

    papi_event = ['PAPI_TOT_CYC', 'PAPI_TOT_INS', 'PAPI_BR_MSP', 'PAPI_L1_DCA', 'PAPI_L2_DCR']

    for bench in benchmarks:
        bench_env = must_env.copy()
        bench_env["PROGRAM"] = bench
        for region_length in region_size_list:
            for size in size_list:
                for thread in thread_list:
                    run_ball_env = bench_env.copy()
                    run_ball_env["OMP_NUM_THREADS"] = str(thread)
                    run_ball_env["PAPI_EVENTS"] = ",".join(papi_event)
                    for i in range(num_runs):
                        if args.papi_naive:
                            run_dir = Path(workdir/f"{bench.upper()}/{size}/c_papi_naive/{arch}")
                            run_ball_env["PAPI_OUTPUT_DIRECTORY"] = Path(run_dir/f"run_{thread}_{i}").as_posix()
                            for file in run_dir.glob("*.c_papi_naive"):
                                run_filename = Path(file).as_posix()
                            runs.append(
                            {
                                "cmd": default_cmd + [f"{run_filename}"],
                                "env": run_ball_env.copy(),
                                "dir": run_dir.as_posix(),
                                "stdout": Path(run_dir/f"run_{thread}_{i}.stdout").as_posix(),
                                "stderr": Path(run_dir/f"run_{thread}_{i}.stderr").as_posix()
                            }
                            )
                        if args.time_naive:
                            run_dir = Path(workdir/f"{bench.upper()}/{size}/c_time_naive/{arch}")
                            run_ball_env["PAPI_OUTPUT_DIRECTORY"] = Path(run_dir/f"run_{thread}_{i}").as_posix()
                            for file in run_dir.glob("*.c_time_naive"):
                                run_filename = Path(file).as_posix()
                            runs.append(
                                {
                                    "cmd": default_cmd + [f"{run_filename}"],
                                    "env": run_ball_env.copy(),
                                    "dir": run_dir.as_posix(),
                                    "stdout": Path(run_dir/f"run_{thread}_{i}.stdout").as_posix(),
                                    "stderr": Path(run_dir/f"run_{thread}_{i}.stderr").as_posix()
                                }
                            )
                        if args.profiling:
                            if thread == 1:
                                run_base_dir = Path(workdir/f"{bench.upper()}/{size}/single_thread_c_profiling/{region_length}/{arch}")
                                run_dir = Path(run_base_dir/f"run_{thread}_{i}")
                                if run_dir.exists():
                                    shutil.rmtree(run_dir)
                                run_dir.mkdir(exist_ok=False)
                                run_ball_env["PAPI_OUTPUT_DIRECTORY"] = run_dir.as_posix()
                                for file in run_base_dir.glob("*.single_thread_c_profiling"):
                                    run_filename = Path(file).as_posix()
                            else:
                                run_base_dir = Path(workdir/f"{bench.upper()}/{size}/c_profiling/{region_length}/{arch}")
                                run_dir = Path(run_base_dir/f"run_{thread}_{i}")
                                run_ball_env["PAPI_OUTPUT_DIRECTORY"] = run_dir.as_posix()
                                for file in run_base_dir.glob("*.c_profiling"):
                                    run_filename = Path(file).as_posix()
                            runs.append(
                                {
                                    "cmd": default_cmd + [f"{run_filename}"],
                                    "env": run_ball_env.copy(),
                                    "dir": run_dir.as_posix(),
                                    "stdout": Path(run_dir/f"run_{thread}_{i}.stdout").as_posix(),
                                    "stderr": Path(run_dir/f"run_{thread}_{i}.stderr").as_posix()
                                }
                            )
                        if args.papi_profiling:
                            if thread == 1:
                                run_base_dir = Path(workdir/f"{bench.upper()}/{size}/single_thread_c_papi_profiling/{region_length}/{arch}")
                                run_dir = Path(run_base_dir/f"run_{thread}_{i}")
                                run_ball_env["PAPI_OUTPUT_DIRECTORY"] = run_dir.as_posix()
                                for file in run_base_dir.glob("*.single_thread_c_papi_profiling"):
                                    run_filename = Path(file).as_posix()
                            else:
                                run_base_dir = Path(workdir/f"{bench.upper()}/{size}/c_papi_profiling/{region_length}/{arch}")
                                run_dir = Path(run_base_dir/f"run_{thread}_{i}")
                                run_ball_env["PAPI_OUTPUT_DIRECTORY"] = run_dir.as_posix()
                                for file in run_base_dir.glob("*.c_papi_profiling"):
                                    run_filename = Path(file).as_posix()
                            runs.append(
                                {
                                    "cmd": default_cmd + [f"{run_filename}"],
                                    "env": run_ball_env.copy(),
                                    "dir": run_dir.as_posix(),
                                    "stdout": Path(run_dir/f"run_{thread}_{i}.stdout").as_posix(),
                                    "stderr": Path(run_dir/f"run_{thread}_{i}.stderr").as_posix()
                                }
                            )
                        if args.marker_overhead:
                            for rid in region_info[bench]:
                                if thread == 1:
                                    run_dir = Path(workdir/f"{bench.upper()}/{size}/single_thread_c_marker_overhead_measuring/{thread}/{region_length}/{rid}/{arch}")
                                    run_ball_env["PAPI_OUTPUT_DIRECTORY"] = Path(run_dir/f"run_{thread}_{i}").as_posix()
                                    for file in run_dir.glob("*.single_thread_c_marker_overhead_measuring_start"):
                                        start_filename = Path(file).as_posix()
                                    for file in run_dir.glob("*.single_thread_c_marker_overhead_measuring_end"):
                                        end_filename = Path(file).as_posix()
                                else:
                                    run_dir = Path(workdir/f"{bench.upper()}/{size}/c_marker_overhead_measuring/{thread}/{region_length}/{rid}/{arch}")
                                    run_ball_env["PAPI_OUTPUT_DIRECTORY"] = Path(run_dir/f"run_{thread}_{i}").as_posix()
                                    for file in run_dir.glob("*.c_marker_overhead_measuring_start"):
                                        start_filename = Path(file).as_posix()
                                    for file in run_dir.glob("*.c_marker_overhead_measuring_end"):
                                        end_filename = Path(file).as_posix()
                                start_run_ball = run_ball_env.copy()
                                start_run_ball["PAPI_OUTPUT_DIRECTORY"] += "_start"
                                end_run_ball = run_ball_env.copy()
                                end_run_ball["PAPI_OUTPUT_DIRECTORY"] += "_end"
                                runs.append(
                                    {
                                        "cmd": default_cmd + [f"{start_filename}"],
                                        "env": start_run_ball.copy(),
                                        "dir": run_dir.as_posix(),
                                        "stdout": Path(run_dir/f"run_{thread}_{i}_start.stdout").as_posix(),
                                        "stderr": Path(run_dir/f"run_{thread}_{i}_start.stderr").as_posix()
                                    }
                                )
                                runs.append(
                                    {
                                        "cmd": default_cmd + [f"{end_filename}"],
                                        "env": end_run_ball.copy(),
                                        "dir": run_dir.as_posix(),
                                        "stdout": Path(run_dir/f"run_{thread}_{i}_end.stdout").as_posix(),
                                        "stderr": Path(run_dir/f"run_{thread}_{i}_end.stderr").as_posix()
                                    }
                                )
                        if args.papi_measuring:
                            for rid in region_info[bench]:
                                if thread == 1:
                                    run_dir = Path(workdir/f"{bench.upper()}/{size}/single_thread_c_papi_measuring/{thread}/{region_length}/{rid}/{arch}")
                                    run_ball_env["PAPI_OUTPUT_DIRECTORY"] = Path(run_dir/f"run_{thread}_{i}").as_posix()
                                    for file in run_dir.glob("*.single_thread_c_papi_measuring"):
                                        run_filename = Path(file).as_posix()
                                else:
                                    run_dir = Path(workdir/f"{bench.upper()}/{size}/c_papi_measuring/{thread}/{region_length}/{rid}/{arch}")
                                    run_ball_env["PAPI_OUTPUT_DIRECTORY"] = Path(run_dir/f"run_{thread}_{i}").as_posix()
                                    for file in run_dir.glob("*.c_papi_measuring"):
                                        run_filename = Path(file).as_posix()
                                runs.append(
                                    {
                                        "cmd": default_cmd + [f"{run_filename}"],
                                        "env": run_ball_env.copy(),
                                        "dir": run_dir.as_posix(),
                                        "stdout": Path(run_dir/f"run_{thread}_{i}.stdout").as_posix(),
                                        "stderr": Path(run_dir/f"run_{thread}_{i}.stderr").as_posix()
                                    }
                                )
    random.shuffle(runs)
    if args.num_pool > 1:
        with Pool(args.num_pool) as p:
            p.map(process_this, runs)
    else:
        for run in runs:
            process_this(run)

print("All done!")
