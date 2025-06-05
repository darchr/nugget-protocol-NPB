from pathlib import Path
import pandas as pd
import shutil
import sys

import argparse

parser = argparse.ArgumentParser(description="Process some data.")

parser.add_argument("--analysis_csv", type=str, help="Path to the analysis dataframe")
parser.add_argument("--out_analysis_file", type=str, help="Path to the bb info file")
args = parser.parse_args()

analysis_csv = Path(args.analysis_csv)
out_analysis_file = Path(args.out_analysis_file)

root_path = Path(Path.cwd()).absolute()
sys.path.append(root_path.as_posix())

from nugget_util.python_processing.analysis_functions import (
    form_dataframe_from_csv,
)

def produce_df_and_marker(csv_path, out_analysis_file):
    df = form_dataframe_from_csv(csv_path)
    df.to_csv(out_analysis_file, index=False)

    print("finished getting df")

    print("Done")

if __name__ == "__main__":
    print("Running in main")

    print("Arguments:")
    print(f"analysis_csv: {analysis_csv}")
    print(f"out_analysis_file: {out_analysis_file}")

    produce_df_and_marker(
        analysis_csv,
        out_analysis_file
    )
