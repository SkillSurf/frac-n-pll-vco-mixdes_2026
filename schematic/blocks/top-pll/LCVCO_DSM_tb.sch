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
x1=1e-11
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
N -50 -660 -50 -620 {lab=GND}
N -110 -800 -110 -720 {lab=VDD}
N -110 -660 -110 -620 {lab=GND}
N -50 -800 -50 -720 {lab=VCTRL}
N 400 -660 450 -660 {lab=OUTn}
N 150 -680 190 -680 {lab=VCTRL}
N 290 -580 290 -550 {lab=GND}
N 10 -660 10 -640 {lab=Ibias}
N 150 -660 190 -660 {lab=Ibias}
N 290 -780 290 -760 {lab=VDD}
N 1140 -640 1160 -640 {lab=outd}
N 520 -680 770 -680 {lab=OUTp}
N 480 -680 520 -680 {lab=OUTp}
N 830 -680 890 -680 {lab=#net1}
N 830 -660 890 -660 {lab=#net2}
N 830 -640 890 -640 {lab=#net3}
N 830 -620 890 -620 {lab=#net4}
N 830 -600 890 -600 {lab=#net5}
N 1050 -640 1080 -640 {lab=#net6}
N 720 -660 770 -660 {lab=rst}
N 720 -640 770 -640 {lab=sclk}
N 720 -620 770 -620 {lab=sdata}
N 720 -600 770 -600 {lab=en}
N 560 -600 600 -600 {lab=en}
N 560 -620 600 -620 {lab=sdata}
N 560 -640 600 -640 {lab=sclk}
N 560 -660 600 -660 {lab=rst}
N 520 -750 520 -680 {lab=OUTp}
C {vsource.sym} -110 -690 0 0 {name=V1 value=1.2 savecurrent=false}
C {vsource.sym} -50 -690 0 0 {name=V2 value="pulse(0.3 1.0 50n 100n 100n 200n)" savecurrent=false}
C {gnd.sym} -110 -620 0 0 {name=l1 lab=GND}
C {gnd.sym} -50 -620 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -110 -800 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} -50 -800 0 0 {name=l8 lab=VCTRL}
C {launcher.sym} 640 -530 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LCVCO_DSM.raw tran"
}
C {opin.sym} 450 -660 0 0 {name=p1 lab=OUTn
}
C {iopin.sym} 290 -780 3 0 {name=p4 lab=VDD
}
C {iopin.sym} 150 -680 2 0 {name=p6 lab=VCTRL
}
C {iopin.sym} 290 -550 1 0 {name=p3 lab=GND
}
C {devices/isource.sym} 10 -690 0 0 {name=I0 value=50u}
C {devices/vdd.sym} 10 -720 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} 10 -640 2 0 {name=l3 lab=Ibias}
C {iopin.sym} 150 -660 2 0 {name=p5 lab=Ibias
}
C {simulator_commands_shown.sym} 1140 -930 0 0 {
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
C {lab_pin.sym} 520 -750 0 1 {name=p23 lab=OUTp}
C {lab_pin.sym} 1160 -640 0 1 {name=p7 lab=outd}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 440 -680 0 0 {name=x5 VDD=VDD VSS=GND prefix=sg13g2_ }
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/lc-vco/LC_VCO.sym} 290 -670 0 0 {name=x1}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/dsm_and_freq_divider.sym} 970 -640 0 0 {name=adut
dut=dut
d_cosim_model= d_cosim
model=./../dsm_and_freq_divider.so}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 800 -680 0 0 {name=A1
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 800 -660 0 0 {name=A2
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 800 -640 0 0 {name=A3
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 800 -620 0 0 {name=A4
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 800 -600 0 0 {name=A5
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/dac_bridge1.sym} 1110 -640 0 0 {name=A6
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 720 -600 0 0 {name=p2 sig_type=std_logic lab=en}
C {lab_pin.sym} 720 -620 0 0 {name=p8 sig_type=std_logic lab=sdata}
C {lab_pin.sym} 720 -640 0 0 {name=p9 sig_type=std_logic lab=sclk}
C {lab_pin.sym} 720 -660 0 0 {name=p10 sig_type=std_logic lab=rst}
C {lab_pin.sym} 600 -600 0 1 {name=p11 sig_type=std_logic lab=en}
C {lab_pin.sym} 600 -620 0 1 {name=p12 sig_type=std_logic lab=sdata}
C {lab_pin.sym} 600 -640 0 1 {name=p14 sig_type=std_logic lab=sclk}
C {lab_pin.sym} 600 -660 0 1 {name=p15 sig_type=std_logic lab=rst}
C {noconn.sym} 560 -660 2 1 {name=l9}
C {noconn.sym} 560 -640 2 1 {name=l13}
C {noconn.sym} 560 -620 2 1 {name=l14}
C {noconn.sym} 560 -600 2 1 {name=l15}
C {simulator_commands.sym} 1270 -670 0 0 {name=SimulatorNGSPICE1
vhdl_ignore=1
spice_ignore="tcleval([regexp -nocase \{xyce\} $sim(spice,$sim(spice,default),name)])"
simulator=ngspice
only_toplevel=false 
value="
.include ./IHP_4nH_Inductor.spice
.param temp=27
.save v(OUTp) v(Vctrl)
.save v(dout) v(sdata) v(sclk) v(en) v(rst)
.save v(dsm_clk) v(outd)
.control
.options maxstep=50p reltol=1e-3 abstol=1e-6

*.ic v(OUTp)=0.6
tran 0.5n 1m
remzerovec
linearize v(OUTp) v(Vctrl) v(outd)

    let n_pts = length(time)
    let freq_vector = unitvec(n_pts) * 0
    
    * Advanced script to calculate instantaneous frequency
    let i = 1
    let last_cross = 0
    while i < length(time)
        if (v(OUTp)[i] >= 0.6) & (v(OUTp)[i-1] < 0.6)
            let current_cross = time[i]
            let period = current_cross - last_cross
            let inst_freq = 1 / period
            let freq_vector[i] = inst_freq
            let last_cross = current_cross
        else
            let freq_vector[i] = freq_vector[i-1]
        end
        let i = i + 1
    end

* Save transient waveform to raw file
write LCVCO_DSM.raw

*quit 0
.endc


* to generate following file copy stimuli.test
* to the simulation directory and run simulation -> Utile Stimuli Editor (GUI), 
* and press 'Translate'
.include stimuli_test.cir
"}
