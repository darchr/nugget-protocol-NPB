# this script will fetch all the nugget data from experiments folder and save them into a csv file using dataframe

from pathlib import Path
import pandas as pd
import json

def read_data(dir: Path):
    json_file = None
    for file in dir.iterdir():
        json_file = file
    with open(json_file, "r") as opened_json_file:
        data = json.load(opened_json_file)
    return data["threads"]["0"]["regions"]["0"]
    

def get_all_runs(dir):
    results = {}
    failed_list = []
    for run in dir.iterdir():
        run_id_name = run.name
        run_id_name = int(str(run_id_name).split("-")[1])
        run_result_papi_dir = Path(run/"papi_hl_output")

        if not run_result_papi_dir.exists():
            failed_list.append(run_result_papi_dir.as_posix())
        else:
            run_result = read_data(run_result_papi_dir)
            results[run_id_name] = run_result
    return results, failed_list

def get_all_bench(dir):
    results = {}
    failed_list = []
    for bench in dir.iterdir():
        if bench.is_file():
            continue
        bench_name = bench.name
        bench_results, fetch_failed_list = get_all_runs(bench)
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

def get_all_machine(dir, machine_list):
    results = {}
    failed_list = []
    for machine in dir.iterdir():
        machine_name = str(machine.name).split("-")[0]
        if machine_name not in machine_list or machine.is_file():
            continue
        machine_results, fetch_failed_list = get_all_size(machine)
        failed_list.extend(fetch_failed_list)
        results[machine_name] = machine_results
    return results, failed_list

failed_list = []

machine_list = ["saphir"]

output_dir = Path("/home/studyztp/test_ground/experiments/nugget-gem5/nugget-protocol-NPB/experiments/analysis/papi-naive")
data_dir = Path("/home/studyztp/test_ground/experiments/nugget-gem5/nugget-protocol-NPB/experiments/gem5-papi-naive")
results, failed_list = get_all_machine(data_dir, machine_list)

# convert the results to a dataframe

df = pd.DataFrame(columns=["machine", "input_size", "benchmark", "rid", "run_id", "runtime(ns)"])

for machine, machine_results in results.items():
    for size, size_results in machine_results.items():
        for bench, bench_results in size_results.items():
            for run_id, run_result in bench_results.items():
                total_inst = run_result["PAPI_TOT_INS"]
                total_branch_inst = run_result["PAPI_BR_INS"]
                total_cycles = run_result["PAPI_TOT_CYC"]
                total_branch_mistpred = run_result["PAPI_BR_MSP"]
                runtime = run_result["real_time_nsec"]
                data = pd.DataFrame([{
                    "machine": machine,
                    "input_size": size,
                    "benchmark": bench,
                    "rid": -1,
                    "run_id": run_id,
                    "runtime(ns)": runtime,
                    "total_inst": total_inst,
                    "total_branch_inst": total_branch_inst,
                    "total_cycles": total_cycles,
                    "total_branch_mistpred": total_branch_mistpred,
                }])
                df = pd.concat([df, data], ignore_index=True)
# save the dataframe to a csv file
df.to_csv(Path(output_dir/"naive_data.csv"), index=False)
print("Data saved to naive_data.csv")

print("Failed list:")
for failed in failed_list:
    print(failed)
print("Total failed files: ", len(failed_list))
# print the total number of files
