import numpy as np
import matplotlib.pyplot as plt

# ======================
# Parameters
# ======================

fs = 100e6
Ts = 1/fs

N = 1024
t_start = 0.5e-6

# ======================
# Load data
# ======================

data = np.loadtxt("simulations/output.txt")

time = data[:,0]
voutp = data[:,1]
voutn = data[:,3]

vout = voutp - voutn

# ======================
# Sampling
# ======================

sample_times = t_start + np.arange(N)*Ts
samples = np.interp(sample_times, time, vout)

samples -= np.mean(samples)

# ======================
# Window (mejor para alta freq)
# ======================

window = np.blackman(N)   # <-- cambio importante
samples *= window

# ======================
# FFT
# ======================

fft = np.fft.fft(samples)
fft = fft[:N//2]

power = np.abs(fft)**2

freq = np.fft.fftfreq(N, Ts)
freq = freq[:N//2]

# ======================
# Fundamental detection (robusto)
# ======================

# evitar DC + primeros bins sucios
search_start = 5

fund_bin = np.argmax(power[search_start:]) + search_start

# bins del tono (más ancho para alta freq)
bw = 3
signal_bins = np.arange(fund_bin-bw, fund_bin+bw+1)
signal_bins = signal_bins[(signal_bins >= 0) & (signal_bins < len(power))]

signal_power = np.sum(power[signal_bins])

# ======================
# Harmonics (con aliasing)
# ======================

harmonics = []

for h in range(2, 6):

    f_h = h * freq[fund_bin]

    # aliasing folding
    while f_h > fs/2:
        f_h = abs(fs - f_h)

    b = int(np.round(f_h / (fs/N)))

    bins = np.arange(b-1, b+2)
    bins = bins[(bins >= 0) & (bins < len(power))]

    harmonics.extend(bins)

harmonic_power = np.sum(power[harmonics]) if len(harmonics) > 0 else 0

# ======================
# Noise
# ======================

noise_mask = np.ones_like(power, dtype=bool)

noise_mask[signal_bins] = False

for h in harmonics:
    noise_mask[h] = False

noise_power = np.sum(power[noise_mask])

# ======================
# Metrics (robustas)
# ======================

eps = 1e-20

SNR  = 10*np.log10((signal_power+eps)/(noise_power+eps))
SNDR = 10*np.log10((signal_power+eps)/(noise_power+harmonic_power+eps))
THD  = 10*np.log10((harmonic_power+eps)/(signal_power+eps))

if len(harmonics) > 0:
    SFDR = 10*np.log10(signal_power / np.max(power[harmonics]))
else:
    SFDR = np.nan

ENOB = (SNDR - 1.76)/6.02

# ======================
# Print
# ======================

print(f"Fundamental bin: {fund_bin} ({freq[fund_bin]/1e6:.2f} MHz)")
print(f"SNR  = {SNR:.2f} dB")
print(f"SNDR = {SNDR:.2f} dB")
print(f"THD  = {THD:.2f} dB")
print(f"SFDR = {SFDR:.2f} dB")
print(f"ENOB = {ENOB:.2f} bits")

# ======================
# Plot
# ======================

fft_db = 10*np.log10(power/np.max(power))

plt.figure(figsize=(10,6))
plt.plot(freq/1e6, fft_db)

plt.xlabel("Frequency (MHz)")
plt.ylabel("Magnitude (dBFS)")
plt.title("Output Spectrum")

plt.ylim(-180,0)
plt.xlim(0, fs/2/1e6)

plt.grid()

textstr = '\n'.join((
    f"fin  = {freq[fund_bin]/1e6:.2f} MHz",
    f"SNR  = {SNR:.2f} dB",
    f"SNDR = {SNDR:.2f} dB",
    f"THD  = {THD:.2f} dB",
    f"SFDR = {SFDR:.2f} dB",
    f"ENOB = {ENOB:.2f} bits"
))

plt.text(
    0.65, 0.95, textstr,
    transform=plt.gca().transAxes,
    fontsize=12,
    verticalalignment='top',
    bbox=dict(boxstyle="round", facecolor="white", alpha=0.8)
)

plt.show()
