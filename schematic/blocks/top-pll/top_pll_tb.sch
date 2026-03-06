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
x1=-2.499685e-09
x2=4.7500015e-08
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
color="7 4"
node="*clk_out
*x2.dsm_out"}
B 2 0 -1200 800 -800 {flags=graph
y1=-0.38082238
y2=1.8658542
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.499685e-09
x2=4.7500015e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
autoload=1
color="4 5"
node="*clk_out
*clk_in"}
B 2 800 -1200 1600 -800 {flags=graph
y1=0.0308
y2=0.0648
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.499685e-09
x2=4.7500015e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=x2.vctrl
hilight_wave=-1
hcursor1_y=0.60890301
hcursor2_y=0.56723704}
B 2 1600 -1200 2400 -800 {flags=graph
y1=-0.017
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.499685e-09
x2=4.7500015e-08
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
node="x2.dn
UP;1.2 x2.up -"}
B 2 440 -400 1600 -190 {flags=graph
y1=0
y2=3
ypos1=0
ypos2=3
divy=5
subdivy=1
unity=1
x1=-2.499685e-09
x2=4.7500015e-08

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
color="12 11 15 10 7 9"
node="x1.rst
x1.en
x1.sdata
x1.sclk
clk_out
x1.dsm_out"}
B 2 2070 -710 2870 -310 {flags=graph
y1=-0.023
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.499685e-09
x2=4.7500015e-08
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
color="12 7"
node="clk_in
x1.dsm_out"
x1=2.5e-6}
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
C {launcher.sym} 1660 -790 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pll_top.raw tran
"
}
C {launcher.sym} 1660 -750 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
xschem netlist; 
xschem simulate; 
xschem raw_read $netlist_dir/tb_COMB.raw tran; 
xschem redraw
"}
C {gnd.sym} 470 -510 0 0 {name=l11 lab=GND}
C {isource.sym} 470 -550 0 0 {name=I1 value=1u}
C {gnd.sym} 620 -510 0 0 {name=l7 lab=GND}
C {vdd.sym} 620 -720 0 0 {name=l3 lab=VDD}
C {simulator_commands.sym} 1110 -660 0 0 {name=SimulatorNGSPICE
vhdl_ignore=1
spice_ignore="tcleval([regexp -nocase \{xyce\} $sim(spice,$sim(spice,default),name)])"
simulator=ngspice
only_toplevel=false 
value="
*****************************************************
* PLL + DSM Frequency Divider Testbench (Optimized)
*****************************************************

.option temp=27
.param VDD=1.2

* ==============================
* Include Models & Stimuli
* ==============================
.include ./IHP_4nH_Inductor.spice
.include stimuli_test.cir

* ==============================
* Simulation Options (Optimized for Speed & Stability)
* ==============================
* gear method improves stability for long oscillator runs
* reltol=1e-3 prevents the simulator from bogging down on microscopic errors
.options reltol=1e-3 abstol=1e-9 vntol=1e-6 method=gear

* ==============================
* Initial Conditions (Speed Hack)
* ==============================
* Uncomment the line below to pre-charge the loop filter to your expected 
* V_tune voltage (e.g., 0.6V). This skips the massive initial frequency jump.
.ic v(x2.vctrl)=0.606
.ic v(x2.x1.ctrl1)=0.606
.ic v(x2.x1.ctrl2)=0.606
.op
*.nodeset v(x2.vctrl)=0.606
*.nodeset v(x2.x1.ctrl1)=0.606
*.nodeset v(x2.x1.ctrl2)=0.606

.control
  * CRITICAL: Save ONLY essential low-frequency signals. 
  * Saving 2.4GHz nodes for 100us will crash your memory.
  save x2.vctrl x2.up x2.dn x2.dsm_out clk_out clk_in vbias1 vbias2
  *save all


  * 20p defines the step to resolve the 2.4 GHz edges without forcing a maxstep.
  tran 30p 50n uic
  
  remzerovec
  write pll_top.raw 
.endc
"}
C {simulator_commands.sym} 990 -660 0 0 {
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


.param CP_N_L = 5u
.param CP_N_W = 3u
.param CP_P_M = 1
.param CP_P_L = 5u
.param CP_P_W = 10u
.param CP_N_M = 1
.param C_CP = 400p
"}
C {simulator_commands.sym} 1660 -960 0 0 {name=SimulatorNGSPICE
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
  *save all
  save x1.up x1.en x1.sdata x1.rst x1.sclk x1.dn x1.vctrl x1.clk_in x1.clk_out x1.dsm_out clk_in clk_out outn
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
C {code.sym} 1860 -960 0 0 {name=MEASURE only_toplevel=false 
value="
.meas tran tperiod_in TRIG v(clk_in) VAL=0.6 FALL=1 TARG v(clk_in) VAL=0.6 FALL=2
.meas tran ref_freq PARAM = '1e-6/tperiod_in'

.meas tran tperiod_out TRIG v(clk_out) VAL=0.6 FALL=1 TARG v(clk_out) VAL=0.6 FALL=2
.meas tran pll_freq PARAM = '1e-6/tperiod_out'
"}
