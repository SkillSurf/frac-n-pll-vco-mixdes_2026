v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 2070 -1110 2870 -710 {flags=graph
y1=-0.023
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.8319344e-08
x2=5.0583191e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
hilight_wave=-1
color=4
node=clk_out}
B 2 470 -1510 1270 -1110 {flags=graph
y1=-0.38082238
y2=1.8658542
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-13
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
autoload=0
sim_type=tran
color=4
node=clk_in}
B 2 1270 -1510 2070 -1110 {flags=graph
y1=-0.025
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.8319344e-08
x2=5.0583191e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2070 -1510 2870 -1110 {flags=graph
y1=-0.016
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-13
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
hcursor1_y=0.68567067
hcursor2_y=0.47137288
color="4 7"
node="x1.dn
x1.up"}
B 2 910 -710 2070 -500 {flags=graph
y1=0
y2=3
ypos1=0
ypos2=3
divy=5
subdivy=1
unity=1
x1=2e-13
x2=5e-06

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
color="7 12 11 10 4"
node="rst
sclk
sdata
f_vco
vco_out"}
B 2 2070 -710 2870 -310 {flags=graph
y1=-0.023
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.8319344e-08
x2=5.0583191e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
hilight_wave=-1
color="5 12"
node="vco_out
f_vco"}
P 4 1 2810 -1370 {}
N 610 -990 610 -930 {lab=VDD}
N 610 -870 610 -830 {lab=GND}
N 1200 -920 1250 -920 {lab=OUTn}
N 1090 -860 1090 -820 {lab=GND}
N 1090 -1030 1090 -1000 {lab=VDD}
N 880 -960 880 -950 {lab=#net1}
N 880 -950 980 -950 {lab=#net1}
N 880 -930 880 -920 {lab=CLK_IN}
N 880 -930 980 -930 {lab=CLK_IN}
N 880 -860 880 -830 {lab=GND}
N 940 -910 940 -890 {lab=#net2}
N 940 -910 980 -910 {lab=#net2}
N 1200 -940 1270 -940 {lab=CLK_OUT}
C {vsource.sym} 610 -900 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} 610 -830 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 610 -990 0 0 {name=l5 lab=VDD}
C {devices/isource.sym} 880 -990 0 0 {name=I0 value=50u}
C {devices/vdd.sym} 880 -1020 0 0 {name=l12 lab=VDD}
C {vsource.sym} 880 -890 0 1 {name=Vfref value="0 pulse(0 1.2 0n 0.1n 0.1n 5n 10n)" savecurrent=false}
C {lab_pin.sym} 880 -930 0 0 {name=p11 sig_type=std_logic lab=CLK_IN}
C {gnd.sym} 880 -830 0 0 {name=l10 lab=GND}
C {launcher.sym} 1830 -970 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pll_top.raw tran
"
}
C {launcher.sym} 1830 -930 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
xschem netlist; 
xschem simulate; 
xschem raw_read $netlist_dir/tb_COMB.raw tran; 
xschem redraw
"}
C {gnd.sym} 940 -830 0 0 {name=l11 lab=GND}
C {isource.sym} 940 -860 0 0 {name=I1 value=10m}
C {opin.sym} 1250 -920 0 0 {name=p24 lab=OUTn
}
C {gnd.sym} 1090 -820 0 0 {name=l7 lab=GND}
C {vdd.sym} 1090 -1030 0 0 {name=l3 lab=VDD}
C {pll.sym} 1130 -920 0 0 {name=x1}
C {opin.sym} 1270 -940 0 0 {name=p6 lab=CLK_OUT}
C {simulator_commands.sym} 1580 -970 0 0 {name=SimulatorNGSPICE
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

.control
  save all
  *save v(sdata) v(sclk) v(rst) v(en) v(UP) v(DN) v(VCTRL) v(CLK_IN) v(DSM_OUT) v(CLK_OUT) 
  * Simulation accuracy options
  .options maxstep=10p reltol=1e-4 abstol=1e-9

 * Run long enough for PLL lock
  tran 20p 5u uic
  remzerovec
  write pll_top.raw 
.endc
* to generate following file copy stimuli.test
* to the simulation directory and run simulation -> Utile Stimuli Editor (GUI), 
* and press 'Translate'
.include stimuli_test.cir
"}
C {simulator_commands.sym} 1460 -970 0 0 {
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
.param CP_N_W = 10u
.param CP_P_M = 1
.param CP_P_L = 0.5u
.param CP_P_W = 30u
.param CP_N_M = 1
.param C_CP = 400p
"}
