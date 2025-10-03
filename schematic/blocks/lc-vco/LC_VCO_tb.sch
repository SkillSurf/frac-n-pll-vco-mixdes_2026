v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -640 130 160 530 {flags=graph
y1=0.12
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.99928e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/LC_VCO_tb.raw
autoload=1
sim_type=tran
color="5 12"
node="outp

outn"}
N -580 -40 -580 0 {lab=GND}
N -640 -180 -640 -100 {lab=VDD}
N -640 -40 -640 0 {lab=GND}
N -580 -180 -580 -110 {lab=VCTRL}
N -580 -110 -580 -100 {lab=VCTRL}
N -130 -60 -80 -60 {lab=OUTp}
N -130 -40 -80 -40 {lab=OUTn}
N -380 -60 -340 -60 {lab=VCTRL}
N -240 40 -240 70 {lab=GND}
N -520 -40 -520 -20 {lab=Ibias}
N -380 -40 -340 -40 {lab=Ibias}
N -240 -160 -240 -140 {lab=VDD}
C {vsource.sym} -640 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -580 -70 0 0 {name=V2 value=0.9 savecurrent=false}
C {gnd.sym} -640 0 0 0 {name=l1 lab=GND}
C {gnd.sym} -580 0 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -640 -180 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} -580 -180 0 0 {name=l8 lab=VCTRL}
C {launcher.sym} 430 450 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LC_VCO_tb.raw tran 0.0n 30n "
}
C {devices/code_shown.sym} 160 -180 0 0 {name=SPICE only_toplevel=false value="
.param temp=27
.options maxstep=10n reltol=1e-3 abstol=1e-6

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 0.01n 0.3u

* Save differential and single-ended outputs
.save v(OUTp) v(OUTn)

.control
  run
  * Save transient waveform to raw file
  write LC_VCO_tb.raw

  * Plot time-domain waveform
  plot v(OUTp) xlimit 0.0n 60n

  * Perform FFT on output
  fft v(OUTp)

  * Convert FFT magnitude to dB
  let vmag = db(mag(v(OUTp)))

  * Plot FFT result
  plot vmag xlabel 'Frequency (Hz)' xlimit 0 5G

  * Save FFT data to text file
  wrdata fft_output(VCTRL=0.9).txt vmag
.endc


"}
C {opin.sym} -80 -60 0 0 {name=p2 lab=OUTp
}
C {opin.sym} -80 -40 0 0 {name=p1 lab=OUTn
}
C {iopin.sym} -240 -160 3 0 {name=p4 lab=VDD
}
C {iopin.sym} -380 -60 2 0 {name=p6 lab=VCTRL
}
C {iopin.sym} -240 70 1 0 {name=p3 lab=GND
}
C {LC_VCO.sym} -240 -50 0 0 {name=x1}
C {devices/isource.sym} -520 -70 0 0 {name=I0 value=50u}
C {devices/vdd.sym} -520 -100 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} -520 -20 2 0 {name=l3 lab=Ibias}
C {iopin.sym} -380 -40 2 0 {name=p5 lab=Ibias
}
