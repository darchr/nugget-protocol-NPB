#!/usr/bin/env python3
import subprocess
import re
import os
from pathlib import Path
import json
import psutil
import sys
from typing import Optional, Tuple, Dict
from concurrent.futures import ThreadPoolExecutor, as_completed

def get_marker_address(executable: Path, marker: str) -> Optional[str]:
    """
    Runs `objdump -S <executable>` and searches for lines like:
        0000000000415fbe <marker>:
    Returns the hexadecimal address as a string, or None if not found.
    """
    try:
        output = subprocess.check_output(
            ["objdump", "-S", str(executable)],
            universal_newlines=True
        )
    except subprocess.CalledProcessError as e:
        print(f"Error running objdump on {executable}: {e}", file=sys.stderr)
        return None

    pattern = re.compile(
        r"^\s*([0-9A-Fa-f]+)\s+<" + re.escape(marker) + r">:",
        re.MULTILINE
    )
    match = pattern.search(output)
    return match.group(1) if match else None

def process_executable(exe_path: Path, is_with_hook: bool) -> Tuple[str, Dict[str, Optional[str]]]:
    """
    Extracts addresses of start_hook, end_hook or End_Marker, and warmup_hook.
    """
    exe_name = exe_path.name
    end_marker_name = "end_hook" if is_with_hook else "End_Marker"

    start_addr = get_marker_address(exe_path, "start_hook")
    end_addr = get_marker_address(exe_path, end_marker_name)
    warmup_addr = get_marker_address(exe_path, "warmup_hook")

    return exe_name, {
        "start_marker_addr": start_addr,
        "end_marker_addr": end_addr,
        "warmup_marker_addr": warmup_addr,
    }

def main():
    result_dict: Dict[str, Dict[str, Optional[str]]] = {}

    current_dir = Path().cwd()
    cbuild_dir = current_dir / "cbuild" / "llvm-exec"
    print(f"Scanning executables under: {cbuild_dir}")

    tasks = []

    # Add patterns for all relevant executables
    patterns = [
        "m5_nugget_exe*",
    ]

    for pattern in patterns:
        for subdir in cbuild_dir.glob(pattern):
            if not subdir.is_dir():
                continue
            for exe in subdir.glob("*"):
                if exe.is_file() and os.access(exe, os.X_OK):
                    is_with_hook = True
                    tasks.append((exe, is_with_hook))

    print(f"{psutil.cpu_count(logical=False)} physical CPU cores detected.")
    print(f"Found {len(tasks)} executables to process.")
    max_workers = min(psutil.cpu_count(logical=False), len(tasks))
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        future_to_exe = {
            executor.submit(process_executable, exe_path, is_with_hook): exe_path
            for exe_path, is_with_hook in tasks
        }

        for future in as_completed(future_to_exe):
            exe_path = future_to_exe[future]
            try:
                exe_name, addr_map = future.result()
                result_dict[exe_name] = addr_map
            except Exception as exc:
                print(f"[!] {exe_path} generated an exception: {exc}", file=sys.stderr)

    output_file = Path("addr_map.json")
    with open(output_file, "w") as f:
        json.dump(result_dict, f, indent=4)

    print(f"Done. Wrote addresses for {len(result_dict)} binaries into {output_file}")

if __name__ == "__main__":
    main()
