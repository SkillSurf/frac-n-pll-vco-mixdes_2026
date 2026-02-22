v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1530 -930 2330 -530 {flags=graph
y1=-0.099462236
y2=1.4605378
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6.0478683e-10
x2=1.9023527e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
color="5 4"
node="F_OUT
F_REF"
hilight_wave=0}
B 2 1530 -2130 2330 -1730 {flags=graph
y1=1.0513866
y2=1.2807101
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6.0478683e-10
x2=1.9023527e-08
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
B 2 1530 -400 2330 0 {flags=graph
y1=-152.9
y2=32.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.4792929e+08
x2=3.251731e+09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=sp
color="5 4"
node="Out;F_OUT db20()
F_REF;F_REF db20()"
hilight_wave=-1}
P 4 1 2140 -1610 {}
N 180 -280 180 -250 {lab=VDD}
N 180 -190 180 -150 {lab=GND}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 180 -220 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} 180 -150 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 180 -280 0 0 {name=l5 lab=VDD}
C {vsource.sym} 350 -290 0 0 {name=Vfref value="0 pulse(0 1.2 0p 100p 100p 200p 400p)" savecurrent=false}
C {lab_pin.sym} 350 -320 0 1 {name=p11 sig_type=std_logic lab=F_REF}
C {gnd.sym} 350 -260 0 0 {name=l10 lab=GND}
C {launcher.sym} 1600 -500 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_Frequency_Divisder.raw tran
"
}
C {simulator_commands_shown.sym} 940 -900 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.model freq_div freq_div
*.include tb_CP.save
.param RAW_TEMP = agauss(40, 30, 1)
.param TEMPGAUSS = max(20, min(RAW_TEMP, 80))
.option temp = 'TEMPGAUSS'
.param VDDGAUSS = agauss(1.2, 0.05, 1)

.param VDD = 'VDDGAUSS'
* analysis

.control
pre_osdi /foss/designs/PLL_IHP_PDK/src/freq_div.osdi
save all
write tb_Frequency_Divisder.raw
set appendwrite
let i = 0
dowhile i < 1

  
  tran 10p 200n uic
  write tb_Frequency_Divisder.raw
  linearize
  fft v(F_REF) v(F_OUT)
  write tb_Frequency_Divisder.raw
  let i = i + 1
end
*quit 0
.endc
"}
C {simulator_commands_shown.sym} 50 -840 0 0 {
name=Libs_Ngspice1
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


.param CP_N_L = 0.5u
.param CP_N_W = 60u
.param CP_P_M = 1
.param CP_P_L = 0.5u
.param CP_P_W = 200u
.param CP_N_M = 1
.param C_CP = 20p
"}
C {launcher.sym} 1600 -460 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
xschem netlist; 
xschem simulate; 
xschem raw_read $netlist_dir/tb_FreqDiv.raw tran; 
xschem redraw
"}
C {lab_pin.sym} 330 -170 0 0 {name=p1 sig_type=std_logic lab=F_REF}
C {lab_pin.sym} 510 -170 0 1 {name=p2 sig_type=std_logic lab=F_OUT}
C {/foss/designs/PLL_IHP_PDK/src/freq_div.sym} 360 -170 0 0 {name=n1}
