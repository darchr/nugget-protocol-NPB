#!/usr/bin/env python3
import subprocess
import re
import os
from pathlib import Path
import json
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

    # Allow optional leading whitespace and both uppercase/lowercase hex digits
    pattern = re.compile(
        r"^\s*([0-9A-Fa-f]+)\s+<" + re.escape(marker) + r">:",
        re.MULTILINE
    )
    match = pattern.search(output)
    if match:
        return match.group(1)

    # If no match, return None
    return None

def process_executable(exe_path: Path, is_with_hook: bool) -> Tuple[str, Dict[str, Optional[str]]]:
    """
    Worker function to run get_marker_address on a single executable.
    - If is_with_hook is True, look for 'end_hook'.
    - If is_with_hook is False, look for 'End_Marker'.
    Returns: (exe_name, { "start_marker_addr": ..., "end_marker_addr": ... })
    """
    exe_name = exe_path.name

    if is_with_hook:
        end_marker_name = "end_hook"
    else:
        end_marker_name = "End_Marker"

    start_addr = get_marker_address(exe_path, "start_hook")
    end_addr = get_marker_address(exe_path, end_marker_name)

    return exe_name, {
        "end_marker_addr": end_addr,
        "start_marker_addr": start_addr
    }

def main():
    result_dict: Dict[str, Dict[str, Optional[str]]] = {}

    current_dir = Path().cwd()
    cbuild_dir = current_dir / "cbuild" / "llvm-exec"
    print(f"Scanning executables under: {cbuild_dir}")

    # Gather all (exe_path, is_with_hook) tasks
    tasks = []

    # "with_hook" pattern
    for subdir in cbuild_dir.glob("1_thread_with_hook_nugget_exe_*"):
        if not subdir.is_dir():
            continue
        for exe in subdir.glob("1_thread_with_hook_nugget_exe_*"):
            if exe.is_file() and os.access(exe, os.X_OK):
                tasks.append((exe, True))

    # "without_hook" pattern
    for subdir in cbuild_dir.glob("1_thread_without_hook_nugget_exe_*"):
        if not subdir.is_dir():
            continue
        for exe in subdir.glob("1_thread_without_hook_nugget_exe_*"):
            if exe.is_file() and os.access(exe, os.X_OK):
                tasks.append((exe, False))

    # Use ThreadPoolExecutor to process each executable in parallel
    max_workers = min(18, len(tasks))  # Limit to 32 threads or number of tasks
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

    # Write out the combined JSON
    output_file = Path("addr_map.json")
    with open(output_file, "w") as f:
        json.dump(result_dict, f, indent=4)

    print(f"Done. Wrote addresses for {len(result_dict)} binaries into {output_file}")

if __name__ == "__main__":
    main()
