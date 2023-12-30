#!/usr/bin/env python3

import subprocess

options = ["poweroff", "reboot", "zzz"]
choose = input("\n".join(options) + "\n")

if choose in options:
    if choose == "poweroff":
        # subprocess.run(["doas", "poweroff"])
        print("poweroff .........................")
    elif choose == "reboot":
        #subprocess.run(["doas", "reboot"])
        print("reboot .........................")
    elif choose == "zzz":
        #subprocess.run(["doas", "zzz"])
        print("\nzzz .........................")
else:
    print("Invalid choice. Please choose from POWEROFF, REBOOT, or ZZZ.")



