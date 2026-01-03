v {xschem version=3.4.8RC file_version=1.3
*
* This file is part of XSCHEM,
* a schematic capture and Spice/Vhdl/Verilog netlisting tool for circuit
* simulation.
* Copyright (C) 1998-2024 Stefan Frederik Schippers
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 20 -660 1180 -450 {flags=graph
y1=0
y2=3
ypos1=0
ypos2=3
divy=5
subdivy=1
unity=1
x1=0
x2=0.000161702

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
color="4 4 4 4 4 4"
node="dout
sdata
sclk
en
rstn
dsm_clk"}
B 2 780 -320 1190 -100 {flags=graph
y1=0
y2=3
ypos1=0
ypos2=3
divy=5
subdivy=1
unity=1
x1=0
x2=0.000161702

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
color="4 4 4 4 4 4 4 4 4"
node="data_word8
data_word7
data_word6
data_word5
data_word4
data_word3
data_word2
data_word1
data_word0"}
N 230 -330 280 -330 {lab=rstn}
N 230 -310 280 -310 {lab=sclk}
N 230 -290 280 -290 {lab=sdata}
N 230 -270 280 -270 {lab=en}
N 150 -200 150 -190 {lab=GND}
N 150 -350 150 -260 {lab=dsm_clk}
N 150 -350 280 -350 {lab=dsm_clk}
N 540 -400 570 -400 {lab=#net1}
N 340 -270 380 -270 {lab=#net2}
N 340 -290 380 -290 {lab=#net3}
N 340 -310 380 -310 {lab=#net4}
N 340 -330 380 -330 {lab=#net5}
N 340 -350 380 -350 {lab=#net6}
N 630 -400 660 -400 {lab=dout}
N 540 -360 570 -360 {lab=#net7}
N 630 -360 660 -360 {lab=data_word7}
N 540 -340 570 -340 {lab=#net8}
N 630 -340 660 -340 {lab=data_word6}
N 540 -320 570 -320 {lab=#net9}
N 630 -320 660 -320 {lab=data_word5}
N 540 -300 570 -300 {lab=#net10}
N 630 -300 660 -300 {lab=data_word4}
N 540 -280 570 -280 {lab=#net11}
N 630 -280 660 -280 {lab=data_word3}
N 540 -260 570 -260 {lab=#net12}
N 630 -260 660 -260 {lab=data_word2}
N 540 -240 570 -240 {lab=#net13}
N 630 -240 660 -240 {lab=data_word1}
N 540 -220 570 -220 {lab=#net14}
N 630 -220 660 -220 {lab=data_word0}
N 400 -100 440 -100 {lab=en}
N 400 -120 440 -120 {lab=sdata}
N 400 -140 440 -140 {lab=sclk}
N 400 -160 440 -160 {lab=rstn}
N 630 -380 660 -380 {lab=data_word8}
N 540 -380 570 -380 {lab=#net15}
C {simulator_commands.sym} 10 -310 0 0 {name=COMMANDS
verilog_ignore=1
vhdl_ignore=1
spice_ignore="tcleval([regexp -nocase \{xyce\} $sim(spice,$sim(spice,default),name)])"
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.save v(dout) v(sdata) v(sclk) v(en) v(rstn) v(dsm_clk) v(data_word0) v(data_word1) v(data_word2) v(data_word3) v(data_word4) v(data_word5) v(data_word6) v(data_word7) v(data_word8)
.control  
  tran 0.5n 161702n
  remzerovec
  write test.raw
.endc

* to generate following file copy stimuli.test
* to the simulation directory and run simulation -> Utile Stimuli Editor (GUI), 
* and press 'Translate'
.include stimuli_test.cir
"}
C {launcher.sym} 70 -420 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/test.raw tran"
}
C {dsm_top.sym} 460 -310 0 0 {name=adut
dut=dut
d_cosim_model= d_cosim
model=/root/hansa/rfic_pll/dsm_with_shift_reg/xschem/dsm_top.so}
C {vsource.sym} 150 -230 0 0 {name=V1 value="PULSE(0 1.8 0 10ns 10ns 50ns 100ns)" savecurrent=false}
C {gnd.sym} 150 -190 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 660 -400 2 0 {name=p5 sig_type=std_logic lab=dout}
C {lab_wire.sym} 230 -350 0 0 {name=p10 sig_type=std_logic lab=dsm_clk}
C {dac_bridge1.sym} 600 -400 0 0 {name=A1
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {adc_bridge1.sym} 310 -270 0 0 {name=A2
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=1.2
}
C {adc_bridge1.sym} 310 -290 0 0 {name=A3
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=1.2
}
C {adc_bridge1.sym} 310 -310 0 0 {name=A4
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=1.2
}
C {adc_bridge1.sym} 310 -330 0 0 {name=A5
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=1.2
}
C {adc_bridge1.sym} 310 -350 0 0 {name=A6
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=1.2
}
C {lab_pin.sym} 660 -380 2 0 {name=p11 sig_type=std_logic lab=data_word8}
C {dac_bridge1.sym} 600 -380 0 0 {name=A7
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 660 -360 2 0 {name=p12 sig_type=std_logic lab=data_word7}
C {dac_bridge1.sym} 600 -360 0 0 {name=A8
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 660 -340 2 0 {name=p13 sig_type=std_logic lab=data_word6}
C {dac_bridge1.sym} 600 -340 0 0 {name=A9
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 660 -320 2 0 {name=p14 sig_type=std_logic lab=data_word5}
C {dac_bridge1.sym} 600 -320 0 0 {name=A10
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 660 -300 2 0 {name=p15 sig_type=std_logic lab=data_word4}
C {dac_bridge1.sym} 600 -300 0 0 {name=A11
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 660 -280 2 0 {name=p16 sig_type=std_logic lab=data_word3}
C {dac_bridge1.sym} 600 -280 0 0 {name=A12
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 660 -260 2 0 {name=p17 sig_type=std_logic lab=data_word2}
C {dac_bridge1.sym} 600 -260 0 0 {name=A13
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 660 -240 2 0 {name=p18 sig_type=std_logic lab=data_word1}
C {dac_bridge1.sym} 600 -240 0 0 {name=A14
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 660 -220 2 0 {name=p19 sig_type=std_logic lab=data_word0}
C {dac_bridge1.sym} 600 -220 0 0 {name=A15
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 400 -100 0 0 {name=p6 sig_type=std_logic lab=en}
C {lab_pin.sym} 400 -120 0 0 {name=p7 sig_type=std_logic lab=sdata}
C {lab_pin.sym} 400 -140 0 0 {name=p8 sig_type=std_logic lab=sclk}
C {lab_pin.sym} 400 -160 0 0 {name=p9 sig_type=std_logic lab=rstn}
C {noconn.sym} 440 -160 2 0 {name=l2}
C {noconn.sym} 440 -140 2 0 {name=l3}
C {noconn.sym} 440 -120 2 0 {name=l4}
C {noconn.sym} 440 -100 2 0 {name=l5}
C {lab_pin.sym} 230 -270 0 0 {name=p1 sig_type=std_logic lab=en}
C {lab_pin.sym} 230 -290 0 0 {name=p2 sig_type=std_logic lab=sdata}
C {lab_pin.sym} 230 -310 0 0 {name=p3 sig_type=std_logic lab=sclk}
C {lab_pin.sym} 230 -330 0 0 {name=p4 sig_type=std_logic lab=rstn}
