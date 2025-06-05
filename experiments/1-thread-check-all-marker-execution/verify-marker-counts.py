from pathlib import Path
import json

def verify_marker_counts(left_log_file, right_log_file):
    if not Path(left_log_file).exists():
        raise FileNotFoundError(f"Left log file '{left_log_file}' does not exist.")
    if not Path(right_log_file).exists():
        raise FileNotFoundError(f"Right log file '{right_log_file}' does not exist.")
    with open(left_log_file, 'r') as left_file:
        with open(right_log_file, 'r') as right_file:
            left_lines = left_file.readlines()[0]
            right_lines = right_file.readlines()[0]
            left_count = left_lines.split()[4]
            right_count = right_lines.split()[4]
    
    if left_count != right_count:
        return f"Marker counts do not match: {left_lines.strip()} != {right_lines.strip()}"
    return None

experiment_dir = Path("/home/ztpc/experiments/nugget-eval/dynamoRIO/nugget-protocol-NPB/experiments/1-thread-check-all-marker-execution/summer-experiments")    
with open(Path("/home/ztpc/experiments/nugget-eval/dynamoRIO/nugget-protocol-NPB/addr_map.json"), 'r') as f:
    addr_map = json.load(f)

all_unmatched = {}

for binary_name in addr_map.keys():
    if "1_thread_with_hook_nugget_exe" in binary_name:
        benchmark_name = binary_name.split("_")[6]
        rid = binary_name.split("_")[-1]
        left_log_file = Path(experiment_dir, f"{binary_name}/run.err")
        right_log_file = Path(experiment_dir, f"1_thread_without_hook_nugget_exe_{benchmark_name}_A_{rid}/run.err")
        result = verify_marker_counts(left_log_file, right_log_file)
        if result:
            all_unmatched[binary_name] = result

with open(Path(experiment_dir, "unmatched_marker_counts.json"), 'w') as f:
    json.dump(all_unmatched, f, indent=4)
