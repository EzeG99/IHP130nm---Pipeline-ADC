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
# Combined Plot: Vo1 + Gain vs Vcm
# ===============================
fig, ax1 = plt.subplots(figsize=(7, 5))

# Eje extra (Gain) a la izquierda
ax_gain = ax1.twinx()

# mover eje de gain a la izquierda (externo)
ax_gain.spines["left"].set_position(("outward", 60))
ax_gain.spines["left"].set_visible(True)
ax_gain.spines["right"].set_visible(False)
ax_gain.yaxis.set_label_position("left")
ax_gain.yaxis.set_ticks_position("left")

for sim_type in SIM_TYPES:

    sim_path = BASE_PATH / sim_type
    if not sim_path.exists():
        print(f"⚠ Missing {sim_type} directory")
        continue

    # sólido para Vo1 (como antes)
    linestyle_vo = "-" if sim_type == "sch" else "--"

    for corner_dir in sorted(sim_path.iterdir()):

        if not corner_dir.is_dir():
            continue

        label = f"{format_label(corner_dir.name)} ({sim_type})"

        # -------- Vo1 --------
        vo1_file = corner_dir / "vo1.txt"
        if vo1_file.exists():
            df_vo = pd.read_csv(
                vo1_file,
                sep=r"\s+",
                header=None,
                names=["Vcm", "Vo1"]
            )

            ax1.plot(
                df_vo["Vcm"],
                df_vo["Vo1"],
                linewidth=1.5,
                linestyle=linestyle_vo,
                label=f"{label} - Vo1"
            )
        else:
            print(f"⚠ Skipping {corner_dir.name} ({sim_type}): no vo1.txt")

        # -------- Gain (siempre punteada) --------
        gain_file = corner_dir / "gain.txt"
        if gain_file.exists():
            df_gain = pd.read_csv(
                gain_file,
                sep=r"\s+",
                header=None,
                names=["Vcm", "Gain"]
            )

            ax_gain.plot(
                df_gain["Vcm"],
                df_gain["Gain"],
                linewidth=1.5,
                linestyle="--",   # ← punteada
                label=f"{label} - Gain"
            )
        else:
            print(f"⚠ Skipping {corner_dir.name} ({sim_type}): no gain.txt")

# ===============================
# Labels & layout
# ===============================
ax1.set_xlabel("Vcm [V]")
ax1.set_ylabel("Vo1 [V]")
ax_gain.set_ylabel("Gain")

ax1.grid(True)

# Combinar leyendas
lines_1, labels_1 = ax1.get_legend_handles_labels()
lines_2, labels_2 = ax_gain.get_legend_handles_labels()

ax1.legend(
    lines_1 + lines_2,
    labels_1 + labels_2,
    fontsize=8,
    ncol=legend_ncol
)

plt.title("ICMR - Vo1 & Gain vs Vcm")
plt.tight_layout()

plt.savefig(PLOT_DIR / "ICMR_combined.jpg", bbox_inches="tight")
plt.savefig(PLOT_DIR / "ICMR_combined.pdf", bbox_inches="tight")

if os.getenv("NO_SHOW", "0") != "1":
    plt.show()
