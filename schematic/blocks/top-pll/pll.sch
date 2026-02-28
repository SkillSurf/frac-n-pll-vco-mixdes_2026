v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 1130 -970 {}
N 1530 -940 1580 -940 {lab=OUTn}
N 1420 -1060 1420 -1040 {lab=VDD}
N 860 -970 940 -970 {lab=UP}
N 860 -950 860 -930 {lab=DN}
N 860 -950 940 -950 {lab=DN}
N 1210 -960 1320 -960 {lab=vctrl}
N 1210 -1000 1210 -960 {lab=vctrl}
N 1110 -960 1210 -960 {lab=vctrl}
N 860 -1020 860 -970 {lab=UP}
N 820 -970 860 -970 {lab=UP}
N 820 -930 860 -930 {lab=DN}
N 670 -1060 670 -1010 {lab=VDD}
N 1010 -1060 1010 -1020 {lab=VDD}
N 500 -960 640 -960 {lab=F_REF}
N 920 -930 920 -870 {lab=Ibias}
N 920 -930 940 -930 {lab=Ibias}
N 670 -890 670 -850 {lab=#net1}
N 1010 -900 1010 -860 {lab=GND}
N 1420 -860 1420 -810 {lab=GND}
N 600 -940 600 -700 {lab=F_VCO}
N 600 -940 640 -940 {lab=F_VCO}
N 600 -700 1110 -700 {lab=F_VCO}
N 1360 -740 1420 -740 {lab=#net2}
N 1360 -720 1420 -720 {lab=#net3}
N 1360 -700 1420 -700 {lab=#net4}
N 1360 -680 1420 -680 {lab=#net5}
N 1360 -660 1420 -660 {lab=#net6}
N 1170 -700 1200 -700 {lab=#net7}
N 1480 -740 1660 -740 {lab=F_OUT}
N 1660 -960 1660 -740 {lab=F_OUT}
N 1480 -720 1530 -720 {lab=rst}
N 1480 -700 1530 -700 {lab=sclk}
N 1480 -680 1530 -680 {lab=sdata}
N 1480 -660 1530 -660 {lab=en}
N 1650 -660 1690 -660 {lab=en}
N 1650 -680 1690 -680 {lab=sdata}
N 1650 -700 1690 -700 {lab=sclk}
N 1650 -720 1690 -720 {lab=rst}
N 1630 -560 1710 -560 {lab=GND}
N 1630 -600 1710 -600 {lab=VDD}
N 1660 -960 1730 -960 {lab=F_OUT}
N 1610 -960 1660 -960 {lab=F_OUT}
N 1230 -940 1320 -940 {lab=IbiasVCO}
N 860 -930 860 -900 {lab=DN}
C {lab_pin.sym} 860 -1020 0 1 {name=p16 lab=UP}
C {lab_pin.sym} 600 -880 0 0 {name=p18 lab=F_VCO}
C {lab_pin.sym} 860 -900 0 0 {name=p19 lab=DN}
C {opin.sym} 1580 -940 0 0 {name=p24 lab=OUTn
}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1570 -960 0 0 {name=x5 VDD=VDD VSS=GND prefix=sg13g2_ }
C {lab_pin.sym} 1210 -1000 0 1 {name=p10 lab=vctrl}
C {vdd.sym} 670 -1060 0 0 {name=l6 lab=VDD}
C {vdd.sym} 1010 -1060 0 0 {name=l2 lab=VDD}
C {vdd.sym} 1420 -1060 0 0 {name=l4 lab=VDD}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/charge-pump/CP.sym} 1010 -960 0 0 {name=x1}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/phase-freq-detector/PFD_std.sym} 670 -950 0 0 {name=x2}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/lc-vco/LC_VCO.sym} 1420 -950 0 0 {name=x3}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/dsm_and_freq_divider.sym} 1280 -700 0 1 {name=adut
dut=dut
d_cosim_model= d_cosim
model=./../dsm_and_freq_divider.so}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 1450 -740 0 1 {name=A1
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 1450 -720 0 1 {name=A2
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 1450 -700 0 1 {name=A3
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 1450 -680 0 1 {name=A4
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/adc_bridge1.sym} 1450 -660 0 1 {name=A5
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.4
in_high=0.6
}
C {/foss/designs/iic_osic_tools/frac-n-pll-vco-unic_cass/schematic/blocks/dsm/xschem/dac_bridge1.sym} 1140 -700 0 1 {name=A6
dac=dac1
dac_bridge_model=dac_bridge
out_low=0
out_high=1.2
}
C {lab_pin.sym} 1530 -660 0 1 {name=p2 sig_type=std_logic lab=en}
C {lab_pin.sym} 1530 -680 0 1 {name=p3 sig_type=std_logic lab=sdata}
C {lab_pin.sym} 1530 -700 0 1 {name=p4 sig_type=std_logic lab=sclk}
C {lab_pin.sym} 1530 -720 0 1 {name=p5 sig_type=std_logic lab=rst}
C {lab_pin.sym} 1650 -660 0 0 {name=p8 sig_type=std_logic lab=en}
C {lab_pin.sym} 1650 -680 0 0 {name=p9 sig_type=std_logic lab=sdata}
C {lab_pin.sym} 1650 -700 0 0 {name=p14 sig_type=std_logic lab=sclk}
C {lab_pin.sym} 1650 -720 0 0 {name=p15 sig_type=std_logic lab=rst}
C {noconn.sym} 1690 -720 2 0 {name=l9}
C {noconn.sym} 1690 -700 2 0 {name=l13}
C {noconn.sym} 1690 -680 2 0 {name=l14}
C {noconn.sym} 1690 -660 2 0 {name=l15}
C {iopin.sym} 1710 -560 0 0 {name=p62 lab=GND}
C {iopin.sym} 1710 -600 0 0 {name=p66 lab=VDD
}
C {lab_pin.sym} 1630 -600 0 0 {name=p27 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 1630 -560 0 0 {name=p28 sig_type=std_logic lab=GND}
C {ipin.sym} 500 -960 0 0 {name=p29 lab=F_REF}
C {opin.sym} 1730 -960 0 0 {name=p6 lab=F_OUT}
C {ipin.sym} 1230 -940 0 0 {name=p7 lab=IbiasVCO}
C {ipin.sym} 920 -870 0 0 {name=p1 lab=Ibias}
C {lab_pin.sym} 670 -850 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1010 -860 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1420 -810 0 0 {name=p13 sig_type=std_logic lab=GND}
