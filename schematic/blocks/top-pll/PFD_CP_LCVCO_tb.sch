v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -190 -1290 610 -890 {flags=graph
y1=0.083494078
y2=0.94979809
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.1814299e-08
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
color="5 4 12"
node="Outp
outd
Vctrl"
x2=1.718143e-07
hcursor1_y=0.41963418
hcursor2_y=0.70549986}
B 2 640 -1290 1440 -890 {flags=graph
y1=1.9952089e+09
y2=2.6767834e+09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.1814299e-08
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
color=21
node=freq_vector
x2=1.718143e-07
hcursor1_y=2.2597346e+09
hcursor2_y=2.5045169e+09}
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
N 750 -680 770 -680 {lab=OUTd}
N 520 -680 570 -680 {lab=OUTp}
N 520 -750 520 -680 {lab=OUTp}
N 480 -680 520 -680 {lab=OUTp}
C {vsource.sym} -110 -690 0 0 {name=V1 value=1.2 savecurrent=false}
C {vsource.sym} -50 -690 0 0 {name=V2 value="pulse(0.3 1.0 50n 100n 100n 200n)" savecurrent=false}
C {gnd.sym} -110 -620 0 0 {name=l1 lab=GND}
C {gnd.sym} -50 -620 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -110 -800 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} -50 -800 0 0 {name=l8 lab=VCTRL}
C {launcher.sym} 400 -450 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LCVCO_freqdiv.raw tran"
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
C {devices/code_shown.sym} 840 -860 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.model freq_div freq_div
.include ./IHP_4nH_Inductor.spice
.param temp=27
.control
pre_osdi ./freq_div.osdi
save all
*.ic v(OUTp)=0.6

tran 1p 200n UIC

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
write LCVCO_freqdiv.raw

*quit 0
.endc
"}
C {simulator_commands_shown.sym} -130 -420 0 0 {
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
C {lab_pin.sym} 770 -680 0 1 {name=p7 lab=OUTd}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 440 -680 0 0 {name=x5 VDD=VDD VSS=GND prefix=sg13g2_ }
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/lc-vco/LC_VCO.sym} 290 -670 0 0 {name=x1}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/top-pll/FD/Freq_Div_std.sym} 650 -680 0 0 {name=x2}
