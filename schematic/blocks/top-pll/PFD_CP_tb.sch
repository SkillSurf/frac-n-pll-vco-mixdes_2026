v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 670 -820 1470 -420 {flags=graph
y1=-0.097333465
y2=1.4626665
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 8"
node="f_ref
f_vco
"
hilight_wave=-1}
B 2 670 -1220 1470 -820 {flags=graph
y1=-1.035985
y2=2.1039727
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="9 10 12"
node="up
dn
CTRL"
hilight_wave=-1}
B 2 -130 -1220 670 -820 {flags=graph
y1=1.0513866
y2=1.2807101
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-12
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=11
node="vdd
"}
P 4 1 1420 -830 {}
P 4 1 720 -340 {}
C {vsource.sym} 170 -490 0 0 {name=Vdd value='VDD' savecurrent=false}
C {lab_pin.sym} 170 -520 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 170 -460 0 0 {name=l3 lab=GND}
C {vsource.sym} 250 -490 0 0 {name=Vfvco value="0 pulse(0 'VDD' 6n 1n 1n 5n 10n)" savecurrent=false}
C {lab_pin.sym} 250 -520 0 1 {name=p10 sig_type=std_logic lab=F_VCO}
C {gnd.sym} 250 -460 0 0 {name=l1 lab=GND}
C {vsource.sym} 250 -590 0 0 {name=Vfref value="0 pulse(0 'VDD' 0n 1n 1n 5n 10n)" savecurrent=false}
C {lab_pin.sym} 250 -620 0 1 {name=p11 sig_type=std_logic lab=F_REF}
C {gnd.sym} 250 -560 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 600 -380 0 0 {name=p5 lab=VDD}
C {lab_pin.sym} 700 -320 0 1 {name=p6 lab=CTRL}
C {lab_pin.sym} 600 -260 0 0 {name=p14 lab=GND}
C {launcher.sym} 490 -730 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/PFD_CP_tb.raw tran
"
}
C {launcher.sym} 490 -700 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
xschem netlist; 
xschem simulate; 
xschem raw_read $netlist_dir/tb_CP.raw tran; 
xschem redraw
"}
C {lab_pin.sym} 170 -620 0 1 {name=p1 sig_type=std_logic lab=Ibias}
C {gnd.sym} 170 -560 0 0 {name=l5 lab=GND}
C {isource.sym} 170 -590 0 0 {name=I0 value=10u}
C {lab_pin.sym} 530 -290 0 0 {name=p2 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 260 -380 0 0 {name=p4 lab=VDD}
C {lab_pin.sym} 410 -340 0 1 {name=p8 lab=UP}
C {lab_pin.sym} 230 -330 0 0 {name=p9 lab=F_REF}
C {lab_pin.sym} 230 -310 0 0 {name=p13 lab=F_VCO}
C {lab_pin.sym} 410 -300 0 1 {name=p15 lab=DN}
C {lab_pin.sym} 260 -260 0 0 {name=p16 lab=GND}
C {lab_pin.sym} 530 -330 0 0 {name=p17 lab=UP}
C {lab_pin.sym} 530 -310 0 0 {name=p7 lab=DN}
C {simulator_commands_shown.sym} -400 -820 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.global VDD GND


.param CP_N_L = 0.5u
.param CP_N_W = 3u
.param CP_P_M = 1
.param CP_P_L = 0.5u
.param CP_P_W = 10u
.param CP_N_M = 1
.param C_CP = 10f
"}
C {devices/code_shown.sym} -400 -380 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ_stat
"}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/phase-freq-detector/PFD_std.sym} 260 -320 0 0 {name=x1}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/charge-pump/CP.sym} 600 -320 0 0 {name=x2}
C {simulator_commands.sym} -150 -580 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param RAW_TEMP = agauss(40, 30, 1)
.param TEMPGAUSS = max(20, min(RAW_TEMP, 80))
.option temp = 'TEMPGAUSS'
.param VDDGAUSS = agauss(1.2, 0.05, 1)

.param VDD = 'VDDGAUSS'
* analysis

.control
save all
op
remzerovec
write tb_CP.raw
set appendwrite
let i = 0
dowhile i < 1

  
  tran 100p 100n uic
  write PFD_CP_tb.raw
  let i = i + 1
end
quit 0
.endc
"}
