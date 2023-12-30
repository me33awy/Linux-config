import os
import subprocess

HOME = os.environ.get("HOME")
SYNC = os.path.isdir(f"{HOME}/.sync")

if not SYNC:
    os.mkdir(f"{HOME}/.sync")

os.chdir(f"{HOME}/.sync")
subprocess.run("pwd")
