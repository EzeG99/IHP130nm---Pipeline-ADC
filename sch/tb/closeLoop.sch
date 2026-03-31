v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -10 1700 {}
T {tf = tr = 0.5%T = 50pS
tdead = 2%T = 0.2n
T = 10n
f = 1/T = 100MHz
} -450 1380 0 0 0.25 0.25 {}
N 660 1130 770 1130 {lab=Vo1_}
N 710 1170 770 1170 {lab=Vo2_}
N 660 1130 660 1190 {lab=Vo1_}
N 710 1170 710 1190 {lab=Vo2_}
N 380 920 480 920 {lab=Vo1}
N 480 1050 480 1130 {lab=Vo1}
N 420 1130 480 1130 {lab=Vo1}
N 240 920 320 920 {lab=Vi1}
N 380 790 480 790 {lab=Vo1}
N 480 790 480 920 {lab=Vo1}
N 70 790 320 790 {lab=#net1}
N 70 920 110 920 {lab=#net1}
N 70 1130 110 1130 {lab=#net2}
N -50 920 -20 920 {lab=Vi1_}
N -50 1080 -50 1130 {lab=Vi1_}
N 380 1380 480 1380 {lab=Vo2}
N 480 1250 480 1380 {lab=Vo2}
N 420 1170 480 1170 {lab=Vo2}
N 240 1170 240 1380 {lab=Vi2}
N 380 1510 480 1510 {lab=Vo2}
N 480 1380 480 1510 {lab=Vo2}
N 70 1510 320 1510 {lab=#net3}
N 70 1380 70 1510 {lab=#net3}
N 70 1380 110 1380 {lab=#net3}
N -50 1380 -20 1380 {lab=Vi2_}
N -50 1220 -50 1380 {lab=Vi2_}
N -290 1280 -190 1280 {lab=#net4}
N -290 1130 -50 1130 {lab=Vi1_}
N -190 1170 -50 1170 {lab=Vi2_}
N 70 1170 110 1170 {lab=#net5}
N 70 1170 70 1220 {lab=#net5}
N 30 1220 70 1220 {lab=#net5}
N -50 1220 -30 1220 {lab=Vi2_}
N -50 1170 -50 1220 {lab=Vi2_}
N 70 1220 70 1240 {lab=#net5}
N 70 1080 70 1130 {lab=#net2}
N 30 1080 70 1080 {lab=#net2}
N -50 1080 -30 1080 {lab=Vi1_}
N 70 1060 70 1080 {lab=#net2}
N 40 920 70 920 {lab=#net1}
N 480 1250 540 1250 {lab=Vo2}
N 480 1170 480 1250 {lab=Vo2}
N 600 1250 620 1250 {lab=Vo2_}
N 620 1170 620 1250 {lab=Vo2_}
N 620 1170 710 1170 {lab=Vo2_}
N 480 1050 540 1050 {lab=Vo1}
N 480 920 480 1050 {lab=Vo1}
N 600 1050 660 1050 {lab=Vo1_}
N 660 1050 660 1130 {lab=Vo1_}
N 40 1380 70 1380 {lab=#net3}
N 240 920 240 1130 {lab=Vi1}
N 170 920 240 920 {lab=Vi1}
N 240 1130 300 1130 {lab=Vi1}
N 170 1130 240 1130 {lab=Vi1}
N 240 1170 300 1170 {lab=Vi2}
N 170 1170 240 1170 {lab=Vi2}
N 240 1380 320 1380 {lab=Vi2}
N 170 1380 240 1380 {lab=Vi2}
N 70 790 70 920 {lab=#net1}
N -50 920 -50 1080 {lab=Vi1_}
N -290 1260 -290 1280 {lab=#net4}
N -290 1130 -290 1200 {lab=Vi1_}
N -190 1170 -190 1220 {lab=Vi2_}
C {foldedCascode.sym} 360 1150 0 0 {name=x1}
C {vsource.sym} -590 1410 0 0 {name=V1 value=1.5 savecurrent=false}
C {gnd.sym} -590 1440 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -590 1380 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 360 1080 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {isource.sym} 340 1040 0 0 {name=I0 value=50u}
C {lab_wire.sym} 340 1010 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 360 1220 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 770 1130 0 1 {name=p5 sig_type=std_logic lab=Vo1_}
C {lab_wire.sym} 480 1200 0 1 {name=p6 sig_type=std_logic lab=Vo2}
C {simulator_commands_shown.sym} -630 830 0 0 {
name=Libs_Ngspice1
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
"
      }
C {vsource.sym} -240 1310 0 0 {name=V2 value=0.7 savecurrent=false}
C {gnd.sym} -240 1340 0 0 {name=l17 lab=GND}
C {vsource.sym} -590 1520 0 0 {name=V5 value="PULSE(0 1.5 0n 20p 20p 5n 10n)" savecurrent=false}
C {gnd.sym} -590 1550 0 0 {name=l18 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {vsource.sym} -590 1620 0 0 {name=V6 value="PULSE(0 1.5 5.2n 20p 20p 4.6n 10n)" savecurrent=false}
C {gnd.sym} -590 1650 0 0 {name=l19 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {lab_wire.sym} -590 1490 0 0 {name=p2 sig_type=std_logic lab=phi1}
C {lab_wire.sym} -590 1590 0 0 {name=p7 sig_type=std_logic lab=phi2}
C {lab_wire.sym} -115 1130 0 1 {name=p21 sig_type=std_logic lab=Vi1_}
C {lab_wire.sym} 20 1360 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {gnd.sym} 20 1400 0 0 {name=l9 lab=GND}
C {lab_wire.sym} -380 1490 0 0 {name=p20 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} 90 1020 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {gnd.sym} 50 1020 1 1 {name=l10 lab=GND}
C {lab_wire.sym} 360 1360 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {gnd.sym} 360 1400 0 0 {name=l13 lab=GND}
C {lab_wire.sym} 360 770 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 360 810 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 360 900 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {gnd.sym} 360 940 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 20 900 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {gnd.sym} 20 940 0 0 {name=l15 lab=GND}
C {lab_wire.sym} 360 1490 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {gnd.sym} 360 1530 0 0 {name=l16 lab=GND}
C {cmfb.sym} 630 1410 0 0 {name=x12}
C {lab_wire.sym} 630 1350 0 1 {name=p24 sig_type=std_logic lab=VDD}
C {gnd.sym} 630 1500 0 0 {name=l22 lab=GND}
C {lab_wire.sym} 740 1500 1 1 {name=p25 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 720 1500 1 1 {name=p26 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} 700 1500 1 1 {name=p27 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 680 1500 1 1 {name=p28 sig_type=std_logic lab=_phi2}
C {lab_wire.sym} 0 900 0 0 {name=p35 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 0 1360 0 0 {name=p37 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 340 900 0 0 {name=p41 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 90 1040 0 1 {name=p45 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 340 770 3 1 {name=p47 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 340 1490 3 1 {name=p49 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 580 1030 0 1 {name=p51 sig_type=std_logic lab=VDD}
C {gnd.sym} 580 1070 0 0 {name=l25 lab=GND}
C {lab_wire.sym} 560 1030 3 1 {name=p52 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 580 1230 0 1 {name=p54 sig_type=std_logic lab=VDD}
C {gnd.sym} 580 1270 0 0 {name=l26 lab=GND}
C {lab_wire.sym} 560 1230 3 1 {name=p55 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 480 1120 0 1 {name=p57 sig_type=std_logic lab=Vo1}
C {lab_wire.sym} 770 1170 0 1 {name=p58 sig_type=std_logic lab=Vo2_}
C {lab_wire.sym} 255 1130 0 1 {name=p18 sig_type=std_logic lab=Vi1}
C {lab_wire.sym} 255 1170 0 1 {name=p19 sig_type=std_logic lab=Vi2}
C {vsource.sym} -520 1410 0 0 {name=V12 value=0.7 savecurrent=false}
C {lab_wire.sym} -520 1380 0 0 {name=p30 sig_type=std_logic lab=Vcm}
C {lab_wire.sym} 0 1400 2 1 {name=p34 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} 340 1530 2 1 {name=p36 sig_type=std_logic lab=_phi2}
C {gnd.sym} -520 1440 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 340 1400 2 1 {name=p38 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} 50 1040 0 0 {name=p40 sig_type=std_logic lab=_phi2}
C {lab_wire.sym} 0 940 2 1 {name=p44 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} 340 940 2 1 {name=p46 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} 340 810 2 1 {name=p48 sig_type=std_logic lab=_phi2}
C {lab_wire.sym} 560 1270 2 1 {name=p50 sig_type=std_logic lab=_phi2}
C {lab_wire.sym} 560 1070 2 1 {name=p53 sig_type=std_logic lab=_phi2}
C {lab_wire.sym} 340 1360 0 0 {name=p39 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 780 1400 0 1 {name=p59 sig_type=std_logic lab=Vo2}
C {lab_wire.sym} 780 1380 0 1 {name=p29 sig_type=std_logic lab=Vo1}
C {vsource.sym} -290 1230 2 0 {name=V3 value="sin(0 125m 4.98046875mega 0)" savecurrent=false}
C {lab_wire.sym} -115 1170 0 1 {name=p22 sig_type=std_logic lab=Vi2_}
C {vsource.sym} -190 1250 0 1 {name=V4 value="sin(0 125m 4.98046875mega 0)" savecurrent=false}
C {capa-2.sym} 660 1220 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 710 1220 0 0 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 660 1250 0 0 {name=l3 lab=GND}
C {gnd.sym} 710 1250 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 50 1280 3 0 {name=p9 sig_type=std_logic lab=VDD}
C {gnd.sym} 90 1280 3 1 {name=l8 lab=GND}
C {lab_wire.sym} 50 1260 2 1 {name=p43 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 90 1260 2 0 {name=p56 sig_type=std_logic lab=_phi2}
C {lab_wire.sym} 70 1000 0 0 {name=p60 sig_type=std_logic lab=Vcm}
C {lab_wire.sym} 70 1300 2 0 {name=p61 sig_type=std_logic lab=Vcm}
C {lab_wire.sym} 340 1230 2 1 {name=p74 sig_type=std_logic lab=Vcmfb}
C {lab_wire.sym} 580 1420 2 1 {name=p75 sig_type=std_logic lab=Vcmfb}
C {lab_wire.sym} 780 1440 2 0 {name=p73 sig_type=std_logic lab=Vcm}
C {code.sym} -630 910 0 0 {name=TRAN only_toplevel=false value="
.temp 65
.options method=gear
.model SW1 SW(Ron=50 Roff=10G Vt=0.4 Vh=0.1)
.nodeset v(Vo1)=0.6 v(Vo2)=0.6 v(Vi1)=0.6 v(Vi2)=0.6
.control
tran 100p 4u 
let vcm = (v(Vo1) + v(Vo2)) / 2
meas tran vcm_avg AVG vcm FROM=3u TO=4u
let Vinn = v(Vi1_)-v(Vi2_)
let Voutt = v(Vo1_)-v(Vo2_)
meas tran vin_pp  PP Vinn from=3u to=4u
meas tran vout_pp PP Voutt from=3u to=4u

let gain = vout_pp/vin_pp
print gain

plot v(Vo1_)-v(Vo2_) v(phi2)

plot gain

write closeLoop.raw
*plot v(Vo1_) v(phi1)
plot v(Vo1_) v(Vi1_)
plot V(Vcmfb)
*plot v(Vo1)
plot v(vo1)
plot v(Vo1_)-v(Vo2_)
plot v(Vo1_) v(phi1) v(phi2)
*plot phi1 phi2
wrdata output.txt v(Vo1_) v(Vo2_)

.endc
"}
C {isource.sym} 810 1420 1 0 {name=I1 value=50u}
C {lab_wire.sym} 840 1420 0 1 {name=p65 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -10 1060 0 0 {name=p8 sig_type=std_logic lab=phi1}
C {lab_wire.sym} -10 1100 2 1 {name=p10 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} -10 1200 0 0 {name=p31 sig_type=std_logic lab=phi1}
C {lab_wire.sym} -10 1240 2 1 {name=p32 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} 10 1060 0 1 {name=p33 sig_type=std_logic lab=VDD}
C {gnd.sym} 10 1100 0 0 {name=l2 lab=GND}
C {gnd.sym} 10 1240 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 10 1200 0 1 {name=p42 sig_type=std_logic lab=VDD}
C {vsource.sym} -380 1520 0 0 {name=V7 value="PULSE(1.5 0 0n 20p 20p 5n 10n)" savecurrent=false}
C {gnd.sym} -380 1550 0 0 {name=l5 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {sw_boost.sym} 360 1360 0 0 {name=x9}
C {vsource.sym} -360 1630 0 0 {name=V8 value="PULSE(1.5 0 5.2n 20p 20p 4.6n 10n)" savecurrent=false}
C {gnd.sym} -360 1660 0 0 {name=l21 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {lab_wire.sym} -360 1600 0 0 {name=p23 sig_type=std_logic lab=_phi2}
C {sw_tg.sym} 90 1020 1 1 {name=x4}
C {sw_tg.sym} 50 1280 3 1 {name=x6}
C {sg13g2_pr/cap_cmim.sym} 140 1170 1 1 {name=C3
model=cap_cmim
w=18e-6
l=18e-6
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 140 1130 1 1 {name=C8
model=cap_cmim
w=18e-6
l=18e-6
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 140 920 1 1 {name=C9
model=cap_cmim
w=17.8e-6
l=17.8e-6
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 140 1380 1 1 {name=C4
model=cap_cmim
w=17.8e-6
l=17.8e-6
m=1
spiceprefix=X}
C {sw_boost.sym} 360 900 0 0 {name=x3}
C {sw_boost.sym} 580 1030 0 0 {name=x5}
C {sw_boost.sym} 580 1230 0 0 {name=x7}
C {sw_boost.sym} 20 900 0 0 {name=x10}
C {sw_boost.sym} 10 1060 0 0 {name=x11}
C {sw_boost.sym} 10 1200 0 0 {name=x13}
C {sw_boost.sym} 20 1360 0 0 {name=x14}
C {sw_boost.sym} 360 770 0 0 {name=x2}
C {sw_boost.sym} 360 1490 0 0 {name=x8}
