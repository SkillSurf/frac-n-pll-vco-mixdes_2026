v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 50 -1020 850 -620 {flags=graph
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
B 2 50 -1430 850 -1030 {flags=graph
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
N 180 -300 180 -260 {lab=GND}
N 120 -440 120 -360 {lab=VDD}
N 120 -300 120 -260 {lab=GND}
N 180 -440 180 -360 {lab=VCTRL}
N 630 -300 680 -300 {lab=OUTn}
N 380 -320 420 -320 {lab=VCTRL}
N 520 -220 520 -190 {lab=GND}
N 240 -300 240 -280 {lab=Ibias}
N 380 -300 420 -300 {lab=Ibias}
N 520 -420 520 -400 {lab=VDD}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 120 -330 0 0 {name=V1 value=1.2 savecurrent=false}
C {vsource.sym} 180 -330 0 0 {name=V2 value="pulse(0.3 1.0 50n 100n 100n 200n)" savecurrent=false}
C {gnd.sym} 120 -260 0 0 {name=l1 lab=GND}
C {gnd.sym} 180 -260 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 120 -440 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 180 -440 0 0 {name=l8 lab=VCTRL}
C {launcher.sym} 720 -590 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_VCO.raw tran"
}
C {opin.sym} 680 -300 0 0 {name=p1 lab=OUTn
}
C {iopin.sym} 520 -420 3 0 {name=p4 lab=VDD
}
C {iopin.sym} 380 -320 2 0 {name=p6 lab=VCTRL
}
C {iopin.sym} 520 -190 1 0 {name=p3 lab=GND
}
C {devices/isource.sym} 240 -330 0 0 {name=I0 value=50u}
C {devices/vdd.sym} 240 -360 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} 240 -280 2 0 {name=l3 lab=Ibias}
C {iopin.sym} 380 -300 2 0 {name=p5 lab=Ibias
}
C {devices/code_shown.sym} 920 -900 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.model freq_div freq_div
.include /foss/designs/frac-n-pll-vco-mixdes_2026/schematic/blocks/lc-vco/simulations/IHP_4nH_Inductor.spice
.param temp=27
.control
pre_osdi /foss/designs/PLL_IHP_PDK/src/freq_div.osdi
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
write tb_VCO.raw

*quit 0
.endc
"}
C {/foss/designs/frac-n-pll-vco-mixdes_2026/schematic/blocks/lc-vco/LC_VCO.sym} 520 -310 0 0 {name=x2}
C {simulator_commands_shown.sym} 960 -1100 0 0 {
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
C {lab_pin.sym} 710 -320 0 1 {name=p23 lab=OUTp}
C {/foss/designs/PLL_IHP_PDK/src/freq_div.sym} 680 -440 0 0 {name=n1}
C {lab_pin.sym} 830 -440 0 1 {name=p7 lab=OUTd}
C {lab_pin.sym} 650 -440 0 0 {name=p2 lab=OUTp}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 670 -320 0 0 {name=x5 VDD=VDD VSS=GND prefix=sg13g2_ }
