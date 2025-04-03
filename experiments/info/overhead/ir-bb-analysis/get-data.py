from pathlib import Path
import pandas as pd
import numpy as np
from datetime import datetime

def parse_time_file(file_path):
    with open(file_path, 'r') as f:
        lines = f.readlines()
        
    # Parse each line
    start_time = datetime.strptime(lines[0].split(': ')[1].strip(), '%Y-%m-%d %H:%M:%S.%f')
    end_time = datetime.strptime(lines[1].split(': ')[1].strip(), '%Y-%m-%d %H:%M:%S.%f')
    duration = float(lines[2].split(': ')[1].split()[0])  # Get just the number
    
    return {
        'start_time': start_time,
        'end_time': end_time,
        'duration': duration
    }

workdir = Path().cwd()
naive_dir = Path(workdir/"experiments/single-threaded-papi-naive/saphir-experiments/train")
experiment_dir = Path(workdir/"experiments/single-threaded-ir-bbv-analysis/experiments/train")
size = "train"

all_data = []

for benchmark_dir in experiment_dir.iterdir():
    if not benchmark_dir.is_dir():
        continue
    benchmark = benchmark_dir.name
    print(f"Processing {benchmark}")
    for command_key in benchmark_dir.iterdir():
        command = command_key.name
        if command == "input":
            continue
        for run in command_key.iterdir():
            if Path(run/"python-time.log").exists():
                time_info = parse_time_file(run/"python-time.log")
                time_info["benchmark"] = benchmark
                time_info["type"] = "profiling"
                time_info["command"] = command
                time_info["run"] = run.name
                time_info["size"] = size
                all_data.append(time_info)
            else:
                print(f"No time file for {benchmark}/{command}/{run}")
        naive_input_path=Path(naive_dir/f"{benchmark}/{command}/run-0/")
        if Path(naive_input_path/"python-time.log").exists():
            time_info = parse_time_file(naive_input_path/"python-time.log")
            time_info["benchmark"] = benchmark
            time_info["type"] = "naive"
            time_info["command"] = command
            time_info["run"] = run.name
            time_info["size"] = size
            all_data.append(time_info)
        else:
            print(f"No time file for {benchmark}/{command}/{run}")
            

df = pd.DataFrame(all_data)
df.to_csv("single-threaded-ir-bbv-analysis-time.csv", index=False)
print("Done!")
