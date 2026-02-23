v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -740 140 60 540 {flags=graph
y1=1.9952089e+09
y2=2.6767834e+09
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
color=4
node=freq_vector
x2=2.9999e-08
hcursor1_y=2.2597346e+09
hcursor2_y=2.5045169e+09}
N -580 -40 -580 0 {lab=GND}
N -640 -180 -640 -100 {lab=VDD}
N -640 -40 -640 0 {lab=GND}
N -580 -180 -580 -100 {lab=VCTRL}
N -130 -60 -80 -60 {lab=OUTp}
N -130 -40 -80 -40 {lab=OUTn}
N -380 -60 -340 -60 {lab=VCTRL}
N -240 40 -240 70 {lab=GND}
N -520 -40 -520 -20 {lab=Ibias}
N -380 -40 -340 -40 {lab=Ibias}
N -240 -160 -240 -140 {lab=VDD}
C {vsource.sym} -640 -70 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -640 0 0 0 {name=l1 lab=GND}
C {gnd.sym} -580 0 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -640 -180 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} -580 -180 0 0 {name=l8 lab=VCTRL}
C {launcher.sym} 70 570 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_VCO.raw tran 0.0n 30n "
}
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
C {devices/code_shown.sym} 180 -90 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ_stat"}
C {devices/code_shown.sym} 230 0 0 0 {name=NGSPICE only_toplevel=true 
value="
.include ./IHP_4nH_Inductor.spice
.param temp=27
.control
save all
*.ic v(OUTp)=0.6

tran 1p 200n UIC

linearize v(OUTp) v(Vctrl)

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
C {vsource.sym} -580 -70 0 0 {name=V2 value="pulse(0.3 1.0 50n 100n 100n 200n)" savecurrent=false}
