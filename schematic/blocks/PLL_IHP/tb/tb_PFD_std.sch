v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 810 -550 1610 -150 {flags=graph
y1=0
y2=2
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
B 2 810 -950 1610 -550 {flags=graph
y1=0
y2=2
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
color="9 10"
node="up
dn"
hilight_wave=-1}
B 2 810 -1350 1610 -950 {flags=graph
y1=1.1265932
y2=1.2993932
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
P 4 1 410 -210 {}
C {title.sym} 160 -30 0 0 {name=l4 author="Rajinthan R"}
C {vsource.sym} 180 -360 0 0 {name=Vdd value='VDD' savecurrent=false}
C {lab_pin.sym} 180 -390 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 180 -330 0 0 {name=l3 lab=GND}
C {vsource.sym} 260 -360 0 0 {name=Vfvco value="0 pulse(0 'VDD' 2n 1n 1n 5n 10n)" savecurrent=false}
C {lab_pin.sym} 260 -390 0 1 {name=p10 sig_type=std_logic lab=F_VCO}
C {gnd.sym} 260 -330 0 0 {name=l1 lab=GND}
C {vsource.sym} 260 -460 0 0 {name=Vfref value="0 pulse(0 'VDD' 0n 1n 1n 5n 10n)" savecurrent=false}
C {lab_pin.sym} 260 -490 0 1 {name=p11 sig_type=std_logic lab=F_REF}
C {gnd.sym} 260 -430 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 250 -250 0 0 {name=p5 lab=VDD}
C {lab_pin.sym} 400 -210 0 1 {name=p6 lab=UP}
C {lab_pin.sym} 220 -200 0 0 {name=p7 lab=F_REF}
C {lab_pin.sym} 220 -180 0 0 {name=p12 lab=F_VCO}
C {lab_pin.sym} 400 -170 0 1 {name=p13 lab=DN}
C {lab_pin.sym} 250 -130 0 0 {name=p14 lab=GND}
C {launcher.sym} 880 -120 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_PFD_std.raw tran"
}
C {simulator_commands_shown.sym} 50 -940 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param RAW_TEMP = agauss(40, 30, 1)
.param TEMPGAUSS = max(20, min(RAW_TEMP, 80))
.option temp = 'TEMPGAUSS'
.param VDDGAUSS = agauss(1.2, 0.05, 1)

.param VDD = 'VDDGAUSS'
* analysis

.tran 100p 100n uic

.control
let i = 0
dowhile i < 10
  reset
  run
  write tb_PFD_std.raw
  set appendwrite
  reset
  let i = i + 1
end
quit
.endc
"}
C {simulator_commands_shown.sym} 40 -1160 0 0 {
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

"
      }
C {launcher.sym} 880 -80 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {/foss/designs/PLL_IHP_PDK/src/PFD_std.sym} 250 -190 0 0 {name=x1}
