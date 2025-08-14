## A 2.4GHz Type-II ∆Σ Fractional-N Phase Locked Loop (PLL) with a Type IV Cross-Coupled Differential LC Voltage-Controlled Oscillator (VCO) for Wifi/Bluetooth Applications - [Universalization of IC Design from CASS](https://github.com/unic-cass)

### 1. Team Members (Department of Electronic and Telecommunication Engineering, University of Moratuwa)

- Rajinthan	Rameshkumar.
- Anjana Viduranga Jasinthu
- Shenal Ranasinghe.
- Sajitha Madugalle.
- Lohan Atapattu.
- Manimohan	Thiriloganathan.
- Hansa Marasinghe.
- Avishka Herath.
- Kithmin Wickremasinghe (MASc).
- Dr. Chamira Edussooriya (PhD).

### 2. Overview of the Project:

The PLL is a charge-pump (CP) based (Type-II) PLL which uses a standard fractional-N architecture, where an output frequency divider (FD) is used to set the frequency multiplication with respect to the reference clock input; a 10 MHz crystal oscillator. In order to make the frequency of the VCO output signal equivalent to the frequency of a PFD reference input, the frequency divider (FD) divides the frequency by a fractional value using the delta sigma modulation (DSM) technique. The output frequency `f_out` is `N * f_ref`, where `N` is the division ratio of `XDIV_OUT` and `f_ref` is the input clock frequency. Documentation for the PLL subcells is included below.

### 3. Block Diagram of the Project:

TBD

### 4. Specifications of the Project:

| Category | Specification | Min | Typ | Max | Unit | Comments |
|----------|---------------|-----|-----|-----|------|----------|
| Top-level | Supply voltage (Design Input) | 1.7 | 1.8 | 1.9 | V | - |
| Top-level | Temperature (Design Input) | 20 | - | 50 | C | - |
| Top-level | Reference frequency (Design Input) | - | 10 | - | MHz | - |
| Top-level | Output center frequency range | 2.4 | 2.45 | 2.48 | GHz | - |
| Top-level | Output frequency range | 2.35 | - | 2.55 | GHz | - |
| Top-level | Expected PLL lock time | 26 | - | 40 | µs | - |
| Loop/Control | Loop bandwidth | 80 | 150 | 300 | kHz | - |
| Loop/Control | Phase margin | 50 | 55 | 60 | ° | - |
| Dividers/Buffers | MMD division range | 240 | 245 | 248 | - | - |
| Charge Pump | CP current range | 50 | 150 | 300 | µA | - |
| VCO | Oscillation frequency | 2.35 | 2.45 | 2.55 | GHz | - |
| VCO | Tuning range | 8 | 9 | 10 | % | - |
| VCO | K VCO sensitivity | - | - | - | MHz/V | - |
| VCO | Phase noise (@100 kHz offset) | - | -85 | - | dBc/Hz | - |
| VCO | Phase noise (@1 MHz offset) | - | -100 | - | dBc/Hz | - |
| Robustness/PVT | Process corners covered | - | TT/FF/SS/FS/SF | - | - | - |
| Robustness/PVT | Monte Carlo yield on key specs | 99 | - | - | % | - |
| Power/Area | Total DC power consumption | - | 12 | 25 | mW | - |
| Power/Area | Power down current consumption | - | 0.5 | 5 | µA | - |
| Power/Area | Die area | - | 0.22 | 0.25 | mm² | 500 µm x 500 µm |


### 5. Circuit Design:

#### 5.1 PLL:

#### 5.2 Phase-frequency detector (PFD):

#### 5.3 Charge pump (CP):

#### 5.4 Loop filter:

#### 5.5 Voltage-controlled oscillator (VCO):

#### 5.6 Frequency divider (FD):
