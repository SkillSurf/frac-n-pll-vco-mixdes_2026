v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 930 500 930 540 {
lab=#net1}
N 1220 500 1220 530 {
lab=#net1}
N 930 400 930 410 {
lab=OUTn}
N 930 410 930 440 {
lab=OUTn}
N 900 470 930 470 {
lab=GND}
N 1220 470 1250 470 {
lab=GND}
N 930 540 1220 540 {
lab=#net1}
N 1220 530 1220 540 {
lab=#net1}
N 970 470 1010 470 {
lab=OUTp}
N 1010 470 1140 410 {
lab=OUTp}
N 1140 410 1220 410 {
lab=OUTp}
N 1140 470 1180 470 {
lab=OUTn}
N 990 410 1140 470 {
lab=OUTn}
N 930 410 990 410 {
lab=OUTn}
N 1220 400 1220 440 {
lab=OUTp}
N 1540 550 1540 580 {
lab=VCTRL}
N 590 550 590 580 {
lab=VCTRL}
N 850 640 1040 640 {
lab=Ibias}
N 810 610 880 610 {
lab=Ibias}
N 880 610 880 640 {
lab=Ibias}
N 1080 640 1080 670 {
lab=GND}
N 810 640 810 670 {
lab=GND}
N 1080 540 1080 610 {
lab=#net1}
N 780 400 930 400 {
lab=OUTn}
N 930 380 930 450 {
lab=OUTn}
N 1220 380 1220 450 {
lab=OUTp}
N 810 550 810 610 {lab=Ibias}
N 810 670 810 680 {lab=GND}
N 810 680 1080 680 {lab=GND}
N 1080 670 1080 680 {lab=GND}
N 590 580 590 760 {lab=VCTRL}
N 590 760 1540 760 {lab=VCTRL}
N 1540 580 1540 760 {lab=VCTRL}
N 930 30 930 70 {
lab=OUTn}
N 1220 30 1220 70 {
lab=OUTp}
N 970 0 1010 0 {
lab=OUTp}
N 1010 0 1150 70 {
lab=OUTp}
N 1150 70 1220 70 {
lab=OUTp}
N 1140 0 1180 0 {
lab=OUTn}
N 990 70 1140 0 {
lab=OUTn}
N 930 70 990 70 {
lab=OUTn}
N 930 -50 930 -30 {
lab=VDD}
N 930 -50 1220 -50 {
lab=VDD}
N 1220 -50 1220 -30 {
lab=VDD}
N 1220 0 1230 0 {
lab=VDD}
N 1230 -40 1230 0 {
lab=VDD}
N 1220 -40 1230 -40 {
lab=VDD}
N 920 0 930 0 {
lab=VDD}
N 920 -40 920 0 {
lab=VDD}
N 920 -40 930 -40 {
lab=VDD}
N 930 290 930 380 {
lab=OUTn}
N 930 70 930 120 {
lab=OUTn}
N 990 290 1040 290 {
lab=OUTn}
N 990 140 990 290 {
lab=OUTn}
N 990 140 1040 140 {
lab=OUTn}
N 1100 140 1160 140 {
lab=OUTp}
N 1160 140 1160 290 {
lab=OUTp}
N 1100 290 1160 290 {
lab=OUTp}
N 1140 220 1160 220 {
lab=OUTp}
N 1060 220 1080 220 {
lab=#net2}
N 990 220 1000 220 {
lab=OUTn}
N 930 120 930 290 {
lab=OUTn}
N 1220 70 1220 380 {
lab=OUTp}
N 930 220 990 220 {
lab=OUTn}
N 1160 220 1220 220 {
lab=OUTp}
N 1220 400 1330 400 {
lab=OUTp}
N 560 430 620 430 {
lab=OUTn}
N 590 400 780 400 {
lab=OUTn}
N 560 430 560 510 {
lab=OUTn}
N 620 430 620 510 {
lab=OUTn}
N 590 500 590 510 {
lab=VDD}
N 590 400 590 430 {
lab=OUTn}
N 730 400 730 430 {
lab=OUTn}
N 1510 430 1570 430 {
lab=OUTp}
N 1330 400 1540 400 {
lab=OUTp}
N 1510 430 1510 510 {
lab=OUTp}
N 1540 500 1540 510 {
lab=VDD}
N 1570 430 1570 510 {
lab=OUTp}
N 1540 400 1540 430 {
lab=OUTp}
N 1390 400 1390 440 {
lab=OUTp}
C {iopin.sym} 450 -10 2 0 {name=p4 lab=VDD
}
C {opin.sym} 1220 340 0 0 {name=p2 lab=OUTp
}
C {opin.sym} 930 340 2 0 {name=p3 lab=OUTn


}
C {iopin.sym} 940 680 1 0 {name=p5 lab=GND
}
C {iopin.sym} 590 760 2 0 {name=p6 lab=VCTRL
}
C {iopin.sym} 810 550 3 0 {name=p7 lab=Ibias
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 950 470 0 1 {name=M2
L=0.15
W=10
nf=1
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1200 470 0 0 {name=M3
L=0.15
W=10
nf=1
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 900 470 0 0 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1250 470 0 1 {name=l9 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 830 640 0 1 {name=M6
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1060 640 0 0 {name=M16
L=0.15
W=1
nf=1
mult=60
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/vdd.sym} 1080 -50 0 0 {name=l7 lab=VDD}
C {devices/ind.sym} 1030 220 1 0 {name=L3
m=1
value=2n
footprint=1206
device=inductor}
C {devices/res.sym} 1110 220 1 0 {name=R5
value=0.28
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1070 290 1 0 {name=R6
value=0.65k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1070 140 1 0 {name=C2 model=cap_mim_m3_2 W=4.5 L=4.5 MF=25 spiceprefix=X}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1200 0 0 0 {name=M4
L=0.74
W=6
nf=1
mult=21
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 950 0 0 1 {name=M1
L=0.74
W=6
nf=1
mult=21
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 590 530 3 0 {name=M5
L=3
W=3
nf=1
mult=42
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_2.sym} 730 460 0 0 {name=C6 model=cap_mim_m3_2 W=1 L=1 MF=170 spiceprefix=X}
C {devices/gnd.sym} 730 490 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 590 500 0 0 {name=l19 lab=VDD}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1540 530 3 0 {name=M7
L=3
W=3
nf=1
mult=42
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1390 470 0 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=170 spiceprefix=X}
C {devices/gnd.sym} 1390 500 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 1540 500 0 0 {name=l20 lab=VDD}
