import random
from pathlib import Path
import sys

random_seed = 627
random.seed(random_seed)

root_path = Path(Path.cwd()).absolute()
sys.path.append(root_path.as_posix())

size = "A"

benchmarks = ["bt", "cg", "ep", "ft", "is", "lu", "mg", "sp"]

for i in range(len(benchmarks)):
    benchmarks[i] = f"{benchmarks[i]}_{size}"

workdir = Path(Path.cwd()).absolute()
info_dir = Path(workdir/"experiments/info")
output_dir = Path(workdir/"experiments/info/random-selections")

idea_num_nuggets = 20
num_threads = 1
grace_perc = 0.99

for benchmark in benchmarks:
    benchmark_output_dir = Path(output_dir/f"{num_threads}/{size}/{benchmark}")
    benchmark_output_dir.mkdir(parents=True, exist_ok=True)

    with open(info_dir/f"create-markers/{num_threads}/{size}/{grace_perc}/{benchmark}/all_regions.txt", "r") as f:
        total_regions = int(f.readlines()[0].strip())
    selected_regions = random.sample(range(total_regions), idea_num_nuggets)
    with open(benchmark_output_dir/"selected-regions.txt", "w") as f:
        for region in selected_regions:
            f.write(f"{region}\n")

    print(f"Selected {idea_num_nuggets} regions for input {benchmark} with {total_regions} total regions")
print("Done")

    