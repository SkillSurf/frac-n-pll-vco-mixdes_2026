import os
import re
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import find_peaks

# Set the folder path to the current working directory
folder = r"C:\Users\MSI\Documents\open-source\iic-osic-tools\Analog_designs\LC-VCO-3Ghz\Design\design_data\xschem\simulations\plot"
frequency_resolution_hz = 1e8  

vcontrol_values = []
peak_frequencies_ghz = []

for filename in os.listdir(folder):
    match = re.match(r"fft_output\(VCTRL=([\d.]+)\)\.txt", filename)
    if match:
        vcon = float(match.group(1))
        filepath = os.path.join(folder, filename)

        # Load FFT data
        df = pd.read_csv(filepath, sep='\s+', header=None, names=["Freq (Hz)", "dB"])

        # Filter data for valid frequency range
        df = df[(df["Freq (Hz)"] > 0) & (df["Freq (Hz)"] >= 2e9) & (df["Freq (Hz)"] <= 3e9)]

        if df.empty:
            print(f"No data in valid range for Vcon = {vcon}")
            continue

        # Find peaks in dB values
        peaks, _ = find_peaks(df["dB"].values, height=None, distance=5)
        if len(peaks) == 0:
            print(f"No peak found for Vcon = {vcon}")
            continue

        # Choose the highest peak
        peak_idx = peaks[np.argmax(df["dB"].values[peaks])]
        peak_freq_ghz = df["Freq (Hz)"].iloc[peak_idx] / 1e9

        vcontrol_values.append(vcon)
        peak_frequencies_ghz.append(peak_freq_ghz)

# Create DataFrame and sort by control voltage
data = pd.DataFrame({
    "Vcon (V)": vcontrol_values,
    "Frequency (GHz)": peak_frequencies_ghz
}).sort_values("Vcon (V)")

# Plot the results
plt.figure(figsize=(8, 5))
plt.plot(data["Vcon (V)"], data["Frequency (GHz)"], marker='o', linewidth=2)
plt.title("VCO: Control Voltage vs Oscillation Frequency", fontsize=14)
plt.xlabel("Control Voltage (V)")
plt.ylabel("Frequency (GHz)")
plt.grid(True)
plt.tight_layout()

# Save plot in the same folder
save_path = os.path.join(folder, "VCO_Vcon_vs_Frequency.png")
plt.savefig(save_path, dpi=300)

plt.show()

print(f"Plot saved as: {save_path}")
