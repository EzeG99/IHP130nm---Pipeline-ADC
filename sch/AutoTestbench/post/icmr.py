import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path
import sys
import os

# ===============================
# Setup imports (runpy-safe)
# ===============================
PROJECT_ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(PROJECT_ROOT))

from post.utils.labels import label_classic, label_combined

# ===============================
# Mode: classic | combined
# ===============================
POST_MODE = os.getenv("POST_MODE", "classic")
print(f"▶ Post mode: {POST_MODE}")

if POST_MODE == "combined":
    format_label = label_combined
    legend_ncol = 2
else:
    format_label = label_classic
    legend_ncol = 1

# ===============================
# Paths
# ===============================
BASE_PATH = Path("./runs/icmr")
PLOT_DIR = Path("./post/plots")
PLOT_DIR.mkdir(parents=True, exist_ok=True)

SIM_TYPES = ["sch", "pex"]

# ===============================
# Vo1 vs Vcm
# ===============================
plt.figure(figsize=(7, 5))

for sim_type in SIM_TYPES:

    sim_path = BASE_PATH / sim_type
    if not sim_path.exists():
        print(f"⚠ Missing {sim_type} directory")
        continue

    linestyle = "-" if sim_type == "sch" else "--"

    for corner_dir in sorted(sim_path.iterdir()):

        if not corner_dir.is_dir():
            continue

        vo1_file = corner_dir / "vo1.txt"

        if not vo1_file.exists():
            print(f"⚠ Skipping {corner_dir.name} ({sim_type}): no vo1.txt")
            continue

        df = pd.read_csv(
            vo1_file,
            sep=r"\s+",
            header=None,
            names=["Vcm", "Vo1"]
        )

        label = f"{format_label(corner_dir.name)} ({sim_type})"

        plt.plot(
            df["Vcm"],
            df["Vo1"],
            linewidth=1.5,
            linestyle=linestyle,
            label=label
        )

plt.xlabel("Vcm [V]")
plt.ylabel("Vo1 [V]")
plt.title("ICMR - Output vs Input Common Mode")

plt.legend(fontsize=8, ncol=legend_ncol)
plt.grid(True)
plt.tight_layout()

plt.savefig(PLOT_DIR / "ICMR_Vo1.jpg", bbox_inches="tight")

if os.getenv("NO_SHOW", "0") != "1":
    plt.show()


# ===============================
# Gain vs Vcm
# ===============================
plt.figure(figsize=(7, 5))

for sim_type in SIM_TYPES:

    sim_path = BASE_PATH / sim_type
    if not sim_path.exists():
        continue

    linestyle = "-" if sim_type == "sch" else "--"

    for corner_dir in sorted(sim_path.iterdir()):

        if not corner_dir.is_dir():
            continue

        gain_file = corner_dir / "gain.txt"

        if not gain_file.exists():
            print(f"⚠ Skipping {corner_dir.name} ({sim_type}): no gain.txt")
            continue

        df = pd.read_csv(
            gain_file,
            sep=r"\s+",
            header=None,
            names=["Vcm", "Gain"]
        )

        label = f"{format_label(corner_dir.name)} ({sim_type})"

        plt.plot(
            df["Vcm"],
            df["Gain"],
            linewidth=1.5,
            linestyle=linestyle,
            label=label
        )

plt.xlabel("Vcm [V]")
plt.ylabel("Gain")
plt.title("ICMR - Gain vs Input Common Mode")

plt.legend(fontsize=8, ncol=legend_ncol)
plt.grid(True)
plt.tight_layout()

plt.savefig(PLOT_DIR / "ICMR_Gain.jpg", bbox_inches="tight")

if os.getenv("NO_SHOW", "0") != "1":
    plt.show()
