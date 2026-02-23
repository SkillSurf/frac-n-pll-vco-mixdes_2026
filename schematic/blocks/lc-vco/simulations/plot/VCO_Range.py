import os
import re
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import find_peaks

# --------------------------------------------------
# Use current directory (recommended)
# --------------------------------------------------
folder = os.getcwd()

# If you really want fixed path, use this instead:
# folder = r"C:\Users\MSI\Documents\open-source\iic_osic_tools\Analog_designs\LC_VCO_3Ghz\Design\design_data\xschem\simulations\plot"

if not os.path.exists(folder):
    raise FileNotFoundError(f"Folder does not exist: {folder}")

vcontrol_values = []
peak_frequencies_ghz = []

# --------------------------------------------------
# Process each FFT file
# --------------------------------------------------
for filename in os.listdir(folder):
    match = re.match(r"fft_output\(VCTRL=([\d.]+)\)\.txt", filename)

    if match:
        vcon = float(match.group(1))
        filepath = os.path.join(folder, filename)

        try:
            # Use raw string to avoid escape warning
            df = pd.read_csv(
                filepath,
                sep=r'\s+',
                header=None,
                names=["Freq (Hz)", "dB"]
            )
        except Exception as e:
            print(f"Error reading {filename}: {e}")
            continue

        # Keep only 2–3 GHz range
        df = df[(df["Freq (Hz)"] >= 2e9) & (df["Freq (Hz)"] <= 3e9)]

        if df.empty:
            print(f"No valid data in 2–3 GHz for VCTRL = {vcon}")
            continue

        # Find peaks
        peaks, properties = find_peaks(
            df["dB"].values,
            distance=5
        )

        if len(peaks) == 0:
            print(f"No peak found for VCTRL = {vcon}")
            continue

        # Select highest peak
        peak_idx = peaks[np.argmax(df["dB"].values[peaks])]
        peak_freq_ghz = df["Freq (Hz)"].iloc[peak_idx] / 1e9

        vcontrol_values.append(vcon)
        peak_frequencies_ghz.append(peak_freq_ghz)

# --------------------------------------------------
# Create and sort DataFrame
# --------------------------------------------------
if len(vcontrol_values) == 0:
    raise ValueError("No valid FFT files processed.")

data = pd.DataFrame({
    "VCTRL (V)": vcontrol_values,
    "Frequency (GHz)": peak_frequencies_ghz
}).sort_values("VCTRL (V)")

# --------------------------------------------------
# Plot
# --------------------------------------------------
plt.figure(figsize=(8, 5))
plt.plot(
    data["VCTRL (V)"],
    data["Frequency (GHz)"],
    marker='o',
    linewidth=2
)

plt.title("LC-VCO: Control Voltage vs Oscillation Frequency", fontsize=14)
plt.xlabel("Control Voltage (V)")
plt.ylabel("Frequency (GHz)")
plt.grid(True)
plt.tight_layout()

# Save plot
save_path = os.path.join(folder, "VCO_VCTRL_vs_Frequency.png")
plt.savefig(save_path, dpi=300)
plt.show()

print(f"\nPlot saved as: {save_path}")