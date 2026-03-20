import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
import sys
import os

# ===============================
# Setup imports (igual que openLoop)
# ===============================
PROJECT_ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(PROJECT_ROOT))

from post.utils.labels import label_classic, label_combined

POST_MODE = os.getenv("POST_MODE", "classic")

if POST_MODE == "combined":
    format_label = label_combined
else:
    format_label = label_classic

# ===============================
# Paths
# ===============================
BASE_PATH = Path("./runs/closeLoop")
PLOT_DIR = Path("./post/plots")
PLOT_DIR.mkdir(parents=True, exist_ok=True)

SIM_TYPES = ["sch", "pex"]

# ===============================
# Parameters FFT
# ===============================
fs = 100e6
Ts = 1 / fs
N = 1024
t_start = 1e-6

# ===============================
# Loop corners
# ===============================
for sim_type in SIM_TYPES:

    sim_path = BASE_PATH / sim_type
    if not sim_path.exists():
        continue

    for corner_dir in sorted(sim_path.iterdir()):

        if not corner_dir.is_dir():
            continue

        data_file = corner_dir / "output.txt"
        if not data_file.exists():
            print(f"⚠ Missing {data_file}")
            continue

        print(f"▶ Processing {corner_dir.name} ({sim_type})")

        data = np.loadtxt(data_file)

        time = data[:, 0]   # tomamos UN solo eje de tiempo

        phi1 = data[:, 1]
        phi2 = data[:, 3]
        vi1  = data[:, 5]
        vi2  = data[:, 7]
        vo1_  = data[:, 9]
        vo2  = data[:, 11]
        vo1  = data[:, 13]

        vout = vo1_ - vo2

        # ======================
        # FFT
        # ======================
        sample_times = t_start + np.arange(N) * Ts
        samples = np.interp(sample_times, time, vout)

        samples -= np.mean(samples)

        window = np.hanning(N)
        samples *= window

        fft = np.fft.fft(samples)[:N//2]
        power = np.abs(fft) ** 2

        freq = np.fft.fftfreq(N, Ts)[:N//2]

        # Fundamental
        fund_bin = np.argmax(power[1:]) + 1
        signal_bins = np.arange(fund_bin-2, fund_bin+3)

        signal_power = np.sum(power[signal_bins])

        # Harmonics
        harmonics = []
        for h in range(2, 6):
            b = fund_bin * h
            if b < len(power):
                harmonics.extend(np.arange(b-1, b+2))

        harmonic_power = np.sum(power[harmonics]) if harmonics else 0

        # Noise
        noise_mask = np.ones_like(power, dtype=bool)
        noise_mask[signal_bins] = False

        for h in harmonics:
            if h < len(power):
                noise_mask[h] = False

        noise_power = np.sum(power[noise_mask])

        # Metrics
        SNR  = 10*np.log10(signal_power / noise_power)
        SNDR = 10*np.log10(signal_power / (noise_power + harmonic_power))
        THD  = 10*np.log10(harmonic_power / signal_power) if harmonic_power > 0 else -np.inf
        SFDR = 10*np.log10(signal_power / np.max(power[harmonics])) if harmonics else np.nan
        ENOB = (SNDR - 1.76) / 6.02

        # ======================
        # FFT Plot
        # ======================
        fft_db = 10*np.log10(power / np.max(power))

        plt.figure(figsize=(8, 5))

        plt.plot(freq/1e6, fft_db, linewidth=1.2)

        plt.xlabel("Frequency [MHz]")
        plt.ylabel("Magnitude [dBFS]")
        plt.title(f"FFT - {format_label(corner_dir.name)} ({sim_type})")

        plt.ylim(-180, 0)
        plt.xlim(0, fs/2/1e6)

        plt.grid(True)

        textstr = "\n".join((
            f"SNR  = {SNR:.2f} dB",
            f"SNDR = {SNDR:.2f} dB",
            f"THD  = {THD:.2f} dB",
            f"SFDR = {SFDR:.2f} dB",
            f"ENOB = {ENOB:.2f} bits"
        ))

        plt.text(
            0.65, 0.95, textstr,
            transform=plt.gca().transAxes,
            fontsize=10,
            verticalalignment='top',
            bbox=dict(boxstyle="round", facecolor="white", alpha=0.8)
        )

        plt.tight_layout()
        plt.savefig(PLOT_DIR / f"FFT_{corner_dir.name}_{sim_type}.jpg")

        if os.getenv("NO_SHOW", "0") != "1":
            plt.show()
        else:
            plt.close()

# ======================
# Time-domain stacked plot
# ======================
        mask = (time >= 1e-6) & (time <= 1.6e-6)

        t_plot = time[mask]

        vo_diff = vo1_ - vo2  # <-- nueva señal
        vi_diff = vi1 - vi2  # <-- nueva señal

        fig, axs = plt.subplots(4, 1, figsize=(8, 7), sharex=True)

        axs[0].plot(t_plot*1e6, phi1[mask])
        axs[0].set_ylabel("phi1")

        axs[2].plot(t_plot*1e6, vi_diff[mask])
        axs[2].set_ylabel("Vi (diff)")

        axs[1].plot(t_plot*1e6, vo1[mask])
        axs[1].set_ylabel("Vo1 (OPAMP)")

        axs[3].plot(t_plot*1e6, vo_diff[mask])
        axs[3].set_ylabel("Vo (diff)")

        axs[3].set_xlabel("Time [us]")

        fig.suptitle(f"Waveforms - {format_label(corner_dir.name)} ({sim_type})")

        for ax in axs:
            ax.grid(True)

        plt.tight_layout()
        plt.savefig(PLOT_DIR / f"WAVE_{corner_dir.name}_{sim_type}.jpg")

        if os.getenv("NO_SHOW", "0") != "1":
            plt.show()
        else:
            plt.close()
