## A 2.4GHz Type-II ∆Σ Fractional-N Phase Locked Loop (PLL) with a Type IV Cross-Coupled Differential LC Voltage-Controlled Oscillator (VCO) for Wifi/Bluetooth Applications - [Universalization of IC Design from CASS](https://github.com/unic-cass)

### 1. Team Members (Department of Electronic and Telecommunication Engineering, University of Moratuwa)

Avishka	Chamuditha	Herath
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

| Specification           | Min                 | Typ     | Max    | Unit   | Comments|
|-------------------------|---------------------|---------|--------|--------|---------|
| Supply voltage (Design Input)| 1.7 | 1.8 | 1.9 | V | - | 
| External clock frequency (Design Input)| - | 1 | - | MHz | - | 
| Resolution | - | 8 | - | bits | - | 
| Operational Temperature | 10 | 36 | 45 | C | - | 
| Reference voltage (Design Input)| - | 0.8 | - | V | - | 
| Temperature (Design Input) | 20 | - | 50 | C | - | 
| ENOB | 7.5 | - | - | bits | - | 
| INL | -0.5 | - |  0.5 | LSBs | - | 
| DNL | -0.5 | - | 0.5 | LSBs | - | 
| SFDR | 55 | - | - | dB | - | 
| Sampling rate | 100 | - |  - | ksps | - | 
| Current consumption during conversion | - |  - | 20 | uA | - | 
| Power down current consumption | - | - | 100 | pA | - | 
| Die area | - | - | 0.25 | mm² | 500 um x 500 um | 
| FoM | - | - | 200 | fJ/conversion-step | Walden figure-of-merit (FoM) | 

### 5. Circuit Design:

#### 5.1 PLL:

#### 5.2 Phase-frequency detector (PFD):

#### 5.3 Charge pump (CP):

#### 5.4 Loop filter:

#### 5.5 Voltage-controlled oscillator (VCO):

#### 5.6 Frequency divider (FD):
