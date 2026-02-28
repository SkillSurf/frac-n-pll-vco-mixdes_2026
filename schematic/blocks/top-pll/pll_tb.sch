v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 2100 -730 2900 -330 {flags=graph
y1=-0.64649061
y2=1.4429022
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3397046e-06
x2=5.3397035e-06
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
node="Out;outp
F_DIV"
hilight_wave=-1}
B 2 500 -1520 1300 -1120 {flags=graph
y1=-0.38082238
y2=1.8658542
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5709007e-06
x2=5.5708996e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="f_ref
f_vco"
hilight_wave=-1
autoload=0
sim_type=tran
rawfile=$netlist_dir/tb_pll_freq_div.raw}
B 2 2100 -1120 2900 -720 {flags=graph
y1=1.0513866
y2=1.2807101
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3397046e-06
x2=5.3397035e-06
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
B 2 1300 -1520 2100 -1120 {flags=graph
y1=-212.99966
y2=30.440979
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.6061339e+09
x2=8.1388971e+08
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
node="Out;outp db20()
F_DIV;F_DIV db20()"
hilight_wave=-1}
B 2 2100 -1520 2900 -1120 {flags=graph
y1=-0.016
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3397046e-06
x2=5.3397035e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="9 10 12"
node="UP;VDD up -
dn
CTRL"
hilight_wave=-1
hcursor1_y=0.68567067
hcursor2_y=0.47137288}
P 4 1 2810 -1370 {}
N 510 -970 510 -910 {lab=VDD}
N 510 -850 510 -810 {lab=GND}
N 1100 -900 1150 -900 {lab=OUTn}
N 980 -840 980 -800 {lab=GND}
N 990 -1010 990 -980 {lab=VDD}
N 780 -950 780 -940 {lab=#net1}
N 780 -940 880 -940 {lab=#net1}
N 780 -910 780 -900 {lab=F_REF}
N 780 -910 880 -910 {lab=F_REF}
N 780 -840 780 -810 {lab=GND}
N 840 -880 840 -860 {lab=#net2}
N 840 -880 880 -880 {lab=#net2}
N 1100 -920 1170 -920 {lab=F_OUT}
C {vsource.sym} 510 -880 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} 510 -810 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 510 -970 0 0 {name=l5 lab=VDD}
C {devices/isource.sym} 780 -980 0 0 {name=I0 value=50u}
C {devices/vdd.sym} 780 -1010 0 0 {name=l12 lab=VDD}
C {vsource.sym} 780 -870 0 1 {name=Vfref value="0 pulse(0 1.2 0n 0.1n 0.1n 5n 10n)" savecurrent=false}
C {lab_pin.sym} 780 -910 0 0 {name=p11 sig_type=std_logic lab=F_REF}
C {gnd.sym} 780 -810 0 0 {name=l10 lab=GND}
C {launcher.sym} 1660 -740 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pll_dsm_freq_div.raw tran
"
}
C {launcher.sym} 1660 -700 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
xschem netlist; 
xschem simulate; 
xschem raw_read $netlist_dir/tb_COMB.raw tran; 
xschem redraw
"}
C {gnd.sym} 840 -800 0 0 {name=l11 lab=GND}
C {isource.sym} 840 -830 0 0 {name=I1 value=10m}
C {opin.sym} 1150 -900 0 0 {name=p24 lab=OUTn
}
C {gnd.sym} 980 -800 0 0 {name=l7 lab=GND}
C {simulator_commands_shown.sym} 1250 -1070 0 0 {
name=Libs_Ngspice1
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
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
.param C_CP = 700p
"}
C {simulator_commands.sym} 1900 -800 0 0 {name=SimulatorNGSPICE
vhdl_ignore=1
spice_ignore="tcleval([regexp -nocase \{xyce\} $sim(spice,$sim(spice,default),name)])"
simulator=ngspice
only_toplevel=false 
value="
*****************************************************
* PLL + DSM Frequency Divider Testbench
*****************************************************

.option temp = 27
.param VDD = 1.2

* ==============================
* Include Models
* ==============================

* Inductor / analog models
.include ./IHP_4nH_Inductor.spice

* to generate following file copy stimuli.test
* to the simulation directory and run simulation -> Utile Stimuli Editor (GUI), 
* and press 'Translate'
.include stimuli_test.cir

.control

  * Simulation accuracy options
  .options maxstep=10p reltol=1e-4 abstol=1e-9

  * Save important PLL + DSM nodes
  save v(sdata) v(sclk) v(rst) v(dsm_clk) v(F_REF) v(F_OUT) v(vctrl) v(vco_out) v(UP) v(DN)
  set appendwrite

 * Run long enough for PLL lock
  tran 20p 5u uic

  remzerovec

  write pll_dsm_freq_div.raw
.endc
"}
C {vdd.sym} 990 -1010 0 0 {name=l3 lab=VDD}
C {pll.sym} 980 -860 0 0 {name=x1}
C {opin.sym} 1170 -920 0 0 {name=p6 lab=F_OUT}
