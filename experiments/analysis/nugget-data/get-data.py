# this script will fetch all the nugget data from experiments folder and save them into a csv file using dataframe

from pathlib import Path
import pandas as pd

def read_data(file):
    with open(file, 'r') as f:
        lines = f.readlines()
    lines = lines[0].split()
    time = int(lines[2])
    return time

def get_all_runs(dir):
    results = {}
    failed_list = []
    for run in dir.iterdir():
        run_id_name = run.name
        run_id_name = int(str(run_id_name).split("-")[1])
        run_result_file = Path(run/"result.txt")
        if not run_result_file.exists():
            failed_list.append(run_result_file.as_posix())
        else:
            run_result = read_data(run_result_file)
            results[run_id_name] = run_result
    return results, failed_list

def get_all_rid(dir):
    results = {}
    failed_list = []
    for rid in dir.iterdir():
        rid_name = int(rid.name)
        rid_results, fetch_failed_list = get_all_runs(rid)
        failed_list.extend(fetch_failed_list)
        results[rid_name] = rid_results
    return results, failed_list

def get_all_bench(dir):
    results = {}
    failed_list = []
    for bench in dir.iterdir():
        if bench.is_file():
            continue
        bench_name = bench.name
        bench_results, fetch_failed_list = get_all_rid(bench)
        failed_list.extend(fetch_failed_list)
        results[bench_name] = bench_results
    return results, failed_list

def get_all_size(dir):
    results = {}
    failed_list = []
    for size in dir.iterdir():
        if size.is_file():
            continue
        size_name = size.name
        size_results, fetch_failed_list = get_all_bench(size)
        failed_list.extend(fetch_failed_list)
        results[size_name] = size_results
    return results, failed_list

def get_all_machine(dir):
    results = {}
    failed_list = []
    for machine in dir.iterdir():
        machine_name = str(machine.name).split("-")[0]
        machine_results, fetch_failed_list = get_all_size(machine)
        failed_list.extend(fetch_failed_list)
        results[machine_name] = machine_results
    return results, failed_list

failed_list = []

output_dir = Path("/home/studyztp/test_ground/experiments/nugget-micro/nugget-protocol-NPB/experiments/analysis/nugget-data")
data_dir = Path("/home/studyztp/test_ground/experiments/nugget-micro/nugget-protocol-NPB/experiments/time-nuggets-experiments")
results, failed_list = get_all_machine(data_dir)

# convert the results to a dataframe

df = pd.DataFrame(columns=["machine", "input_size", "benchmark", "rid", "run_id", "runtime(ns)"])

for machine, machine_results in results.items():
    for size, size_results in machine_results.items():
        for bench, bench_results in size_results.items():
            for rid, rid_results in bench_results.items():
                for run_id, run_result in rid_results.items():
                    data = pd.DataFrame([{
                        "machine": machine,
                        "input_size": size,
                        "benchmark": bench,
                        "rid": rid,
                        "run_id": run_id,
                        "runtime(ns)": run_result
                    }])
                    df = pd.concat([df, data], ignore_index=True)
# save the dataframe to a csv file
df.to_csv(Path(output_dir/"nugget_data.csv"), index=False)
print("Data saved to nugget_data.csv")

print("Failed list:")
for failed in failed_list:
    print(failed)
print("Total failed files: ", len(failed_list))
# print the total number of files
