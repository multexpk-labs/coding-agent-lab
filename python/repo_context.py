#!/usr/bin/env python3
import json
import os
import platform
import sys

root = os.path.abspath(sys.argv[1] if len(sys.argv) > 1 else ".")
data = {
    "path": root,
    "platform": platform.platform(),
    "python": platform.python_version(),
    "python_executable": sys.executable,
    "top_level_entries": sorted(os.listdir(root))[:100],
}
print(json.dumps(data, indent=2))