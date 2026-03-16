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
# Load ngspice data
# ======================

data = np.loadtxt("simulations/output.txt")

time = data[:,0]
voutp = data[:,1]
voutn = data[:,3]

vout = voutp - voutn

# ======================
# Sampling instants
# ======================

sample_times = t_start + np.arange(N)*Ts

samples = np.interp(sample_times, time, vout)

samples -= np.mean(samples)

# ======================
# Window
# ======================

window = np.hanning(N)
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
# Fundamental detection
# ======================

fund_bin = np.argmax(power[1:]) + 1

# integrar bins alrededor del tono
signal_bins = np.arange(fund_bin-2, fund_bin+3)

signal_power = np.sum(power[signal_bins])

# ======================
# Harmonics
# ======================

harmonics = []

for h in range(2,6):

    b = fund_bin*h

    if b < len(power):

        harmonics.extend(np.arange(b-1, b+2))

harmonic_power = np.sum(power[harmonics])

# ======================
# Noise
# ======================

noise_mask = np.ones_like(power, dtype=bool)

noise_mask[signal_bins] = False

for h in harmonics:
    if h < len(power):
        noise_mask[h] = False

noise_power = np.sum(power[noise_mask])

# ======================
# Metrics
# ======================

SNR = 10*np.log10(signal_power/noise_power)

SNDR = 10*np.log10(signal_power/(noise_power+harmonic_power))

THD = 10*np.log10(harmonic_power/signal_power)

SFDR = 10*np.log10(signal_power/np.max(power[harmonics]))

ENOB = (SNDR - 1.76)/6.02

# ======================
# Print
# ======================

print(f"SNR  = {SNR:.2f} dB")
print(f"SNDR = {SNDR:.2f} dB")
print(f"THD  = {THD:.2f} dB")
print(f"SFDR = {SFDR:.2f} dB")
print(f"ENOB = {ENOB:.2f} bits")

# ======================
# Plot FFT
# ======================

fft_db = 10*np.log10(power/np.max(power))

plt.figure(figsize=(10,6))

#LOG X
#freq_plot = freq.copy()        
#freq_plot[0] = freq_plot[1]    

plt.plot(freq/1e6, fft_db)

#LOG X
#plt.semilogx(freq_plot, fft_db, linewidth=1.5) 

plt.xlabel("Frequency (MHz)")
plt.ylabel("Magnitude (dBFS)")
plt.title("Output Spectrum")

plt.ylim(-180,0)
plt.xlim(0,50)

#LOG X
#plt.xlim([1e5, fs/2]) 

plt.grid()

textstr = '\n'.join((
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
