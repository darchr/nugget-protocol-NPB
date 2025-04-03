import random
import json
from pathlib import Path
import pandas as pd
import sys

random_seed = 627
random.seed(random_seed)

root_path = Path(Path.cwd()).absolute()
sys.path.append(root_path.as_posix())

from nugget_util.python_processing.analysis_functions import (
    get_all_bbv,
    form_bb_id_map,
)


size = "C"
benchmarks = ["bt", "cg", "ep", "ft", "is", "lu", "mg", "sp"]

for i in range(len(benchmarks)):
    benchmarks[i] = f"{benchmarks[i]}_{size}"

workdir = Path(Path.cwd()).absolute()
info_dir = Path(workdir/"experiments/info/get-analysis-info")
output_dir = Path(workdir/"experiments/info/random-selections")

idea_num_nuggets = 50

for benchmark in benchmarks:
    benchmark_info_dir = Path(info_dir/benchmark)
    benchmark_output_dir = Path(output_dir/benchmark)
    benchmark_output_dir.mkdir(parents=True, exist_ok=True)
    df_path = Path(benchmark_info_dir/f"{benchmark}_df.csv")

    with open(df_path, "r") as f:
        df = pd.read_csv(f, header=0, dtype={'region': str, 'thread': int})

    bb_id_map = form_bb_id_map(df)

    all_bbv = get_all_bbv(df, bb_id_map)

    selected_regions = random.sample(range(0, len(all_bbv)), idea_num_nuggets)
    with open(benchmark_output_dir/"selected-regions.txt", "w") as f:
        for region in selected_regions:
            f.write(f"{region}\n")
    with open(benchmark_info_dir/"total_regions.txt", "w") as f:
        total_regions = int(len(all_bbv))
        f.write(f"{total_regions}\n")

    print(f"Selected {idea_num_nuggets} regions for input {benchmark} with {total_regions} total regions")
print("Done")

    
