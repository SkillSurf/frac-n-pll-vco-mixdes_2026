import numpy as np
import matplotlib.pyplot as plt

# =============================
# SETTINGS
# =============================
Tsim = 20e-6
filename = "fft_output.txt"
expected_carrier = 2.45e9     # Your expected VCO frequency
search_bw = 200e6             # ±200 MHz search window

# =============================
# LOAD DATA
# =============================
data = np.loadtxt(filename)
freq = data[:, 0]
mag_db = data[:, 1]

print("Data loaded. Points:", len(freq))

# =============================
# FIND CARRIER ONLY NEAR EXPECTED REGION
# =============================
search_mask = (freq > expected_carrier - search_bw) & \
              (freq < expected_carrier + search_bw)

if not np.any(search_mask):
    raise ValueError("Carrier not found in expected search window")

local_index = np.argmax(mag_db[search_mask])
carrier_index = np.where(search_mask)[0][local_index]

carrier_power = mag_db[carrier_index]
carrier_frequency = freq[carrier_index]

print("Detected carrier frequency: %.6f GHz" % (carrier_frequency / 1e9))

# =============================
# COMPUTE RBW
# =============================
rbw = 1 / Tsim
print("RBW = %.2f Hz" % rbw)

# =============================
# PHASE NOISE
# =============================
phase_noise = mag_db - carrier_power - 10 * np.log10(rbw)

offset = np.abs(freq - carrier_frequency)

mask = offset > 0
offset = offset[mask]
phase_noise = phase_noise[mask]

# Remove zeros (log safety)
valid = offset > 0
offset = offset[valid]
phase_noise = phase_noise[valid]

# =============================
# PLOT
# =============================
plt.figure(figsize=(8, 6))
plt.semilogx(offset, phase_noise)

plt.xlabel("Offset Frequency (Hz)")
plt.ylabel("Phase Noise (dBc/Hz)")
plt.title("Phase Noise – 2.45 GHz LC-VCO")
plt.grid(True, which="both")

plt.xlim(1e5, 1e8)
plt.ylim(-180, 0)

plt.tight_layout()
plt.savefig("Phase_Noise_2p45GHz.png", dpi=300)
plt.show()