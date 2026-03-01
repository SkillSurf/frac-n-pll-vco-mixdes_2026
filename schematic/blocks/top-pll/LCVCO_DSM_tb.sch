v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -120 -1320 680 -920 {flags=graph
y1=0.083494078
y2=0.94979809
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=tran
color="12 4 7"
node="vctrl
outd
outp"
x2=0.001
hcursor1_y=0.41963418
hcursor2_y=0.70549986}
B 2 710 -1230 1870 -1020 {flags=graph
y1=0
y2=3
ypos1=0
ypos2=3
divy=5
subdivy=1
unity=1
x1=1e-11
x2=0.001

subdivx=4
xlabmag=1.2
ylabmag=1.0

dataset=-1
unitx=1
logx=0
logy=0
digital=1
divx=4
legend=1
color="4 4 4 4 12 7"
node="sdata
sclk
en
rst

outd
outp"}
N 10 -660 10 -620 {lab=GND}
N -110 -800 -110 -720 {lab=VDD}
N -110 -660 -110 -620 {lab=GND}
N 10 -800 10 -720 {lab=VCTRL}
N 570 -660 620 -660 {lab=OUTn}
N 320 -680 360 -680 {lab=VCTRL}
N 460 -580 460 -550 {lab=GND}
N -50 -660 -50 -640 {lab=Ibias}
N 320 -660 360 -660 {lab=Ibias}
N 460 -780 460 -760 {lab=VDD}
N 1310 -640 1330 -640 {lab=outd}
N 690 -680 940 -680 {lab=OUTp}
N 650 -680 690 -680 {lab=OUTp}
N 1000 -680 1060 -680 {lab=#net1}
N 1000 -660 1060 -660 {lab=#net2}
N 1000 -640 1060 -640 {lab=#net3}
N 1000 -620 1060 -620 {lab=#net4}
N 1000 -600 1060 -600 {lab=#net5}
N 1220 -640 1250 -640 {lab=#net6}
N 890 -660 940 -660 {lab=rst}
N 890 -640 940 -640 {lab=sclk}
N 890 -620 940 -620 {lab=sdata}
N 890 -600 940 -600 {lab=en}
N 730 -600 770 -600 {lab=en}
N 730 -620 770 -620 {lab=sdata}
N 730 -640 770 -640 {lab=sclk}
N 730 -660 770 -660 {lab=rst}
N 690 -750 690 -680 {lab=OUTp}
C {vsource.sym} -110 -690 0 0 {name=V1 value=1.2 savecurrent=false}
C {vsource.sym} 10 -690 0 0 {name=V2 value="pulse(0.3 1.0 50n 100n 100n 200n)" savecurrent=false}
C {gnd.sym} -110 -620 0 0 {name=l1 lab=GND}
C {gnd.sym} 10 -620 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -110 -800 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 10 -800 0 0 {name=l8 lab=VCTRL}
C {launcher.sym} 810 -530 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LCVCO_DSM.raw tran"
}
C {opin.sym} 620 -660 0 0 {name=p1 lab=OUTn
}
C {iopin.sym} 460 -780 3 0 {name=p4 lab=VDD
}
C {iopin.sym} 320 -680 2 0 {name=p6 lab=VCTRL
}
C {iopin.sym} 460 -550 1 0 {name=p3 lab=GND
}
C {devices/isource.sym} -50 -690 0 0 {name=I0 value=50u}
C {devices/vdd.sym} -50 -720 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} -50 -640 2 0 {name=l3 lab=Ibias}
C {iopin.sym} 320 -660 2 0 {name=p5 lab=Ibias
}
C {simulator_commands_shown.sym} 860 -940 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ_stat
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.global VDD GND

"
      }
C {lab_pin.sym} 690 -750 0 1 {name=p23 lab=OUTp}
C {lab_pin.sym} 1330 -640 0 1 {name=p7 lab=outd}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 610 -680 0 0 {name=x5 VDD=VDD VSS=GND prefix=sg13g2_ }
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/lc-vco/LC_VCO.sym} 460 -670 0 0 {name=x1}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/dsm_and_freq_divider.sym} 1140 -640 0 0 {name=adut
dut=dut
d_cosim_model= d_cosim
model=./../dsm_and_freq_divider.so}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 970 -680 0 0 {name=A1
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 970 -660 0 0 {name=A2
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 970 -640 0 0 {name=A3
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 970 -620 0 0 {name=A4
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 970 -600 0 0 {name=A5
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/dac_bridge1.sym} 1280 -640 0 0 {name=A6
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 890 -600 0 0 {name=p2 sig_type=std_logic lab=en}
C {lab_pin.sym} 890 -620 0 0 {name=p8 sig_type=std_logic lab=sdata}
C {lab_pin.sym} 890 -640 0 0 {name=p9 sig_type=std_logic lab=sclk}
C {lab_pin.sym} 890 -660 0 0 {name=p10 sig_type=std_logic lab=rst}
C {lab_pin.sym} 770 -600 0 1 {name=p11 sig_type=std_logic lab=en}
C {lab_pin.sym} 770 -620 0 1 {name=p12 sig_type=std_logic lab=sdata}
C {lab_pin.sym} 770 -640 0 1 {name=p14 sig_type=std_logic lab=sclk}
C {lab_pin.sym} 770 -660 0 1 {name=p15 sig_type=std_logic lab=rst}
C {noconn.sym} 730 -660 2 1 {name=l9}
C {noconn.sym} 730 -640 2 1 {name=l13}
C {noconn.sym} 730 -620 2 1 {name=l14}
C {noconn.sym} 730 -600 2 1 {name=l15}
C {simulator_commands.sym} 1420 -710 0 0 {name=SimulatorNGSPICE1
vhdl_ignore=1
spice_ignore="tcleval([regexp -nocase \{xyce\} $sim(spice,$sim(spice,default),name)])"
simulator=ngspice
only_toplevel=false 
value="
.include ./IHP_4nH_Inductor.spice
.param temp=27
.control
save v(outd) v(OUTp) v(VCTRL) v(rst) v(sclk) v(sdata) v(en)
.options maxstep=50p reltol=1e-3 abstol=1e-6

*.ic v(OUTp)=0.6
tran 0.5n 1m
remzerovec

* Save transient waveform to raw file
write LCVCO_DSM.raw

*quit 0
.endc


* to generate following file copy stimuli.test
* to the simulation directory and run simulation -> Utile Stimuli Editor (GUI), 
* and press 'Translate'
.include stimuli_test.cir
"}
