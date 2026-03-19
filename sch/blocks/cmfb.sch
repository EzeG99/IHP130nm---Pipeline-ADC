v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -740 -230 -690 -230 {lab=VDD}
N -740 -210 -690 -210 {lab=VSS}
N -740 -180 -690 -180 {lab=phi1}
N -740 -160 -690 -160 {lab=_phi1}
N -740 -140 -690 -140 {lab=phi2}
N -740 -120 -690 -120 {lab=_phi2}
N -740 -90 -690 -90 {lab=Vcm}
N -740 -70 -690 -70 {lab=Iref}
N -740 -40 -690 -40 {lab=Vcmfb}
N -740 0 -690 0 {lab=Vo1}
N -740 20 -690 20 {lab=Vo2}
N -5 -150 -5 -110 {lab=Vo2}
N -5 -150 45 -150 {lab=Vo2}
N -5 -50 -5 -10 {lab=Vcmfb}
N -5 -10 45 -10 {lab=Vcmfb}
N -95 -10 -5 -10 {lab=Vcmfb}
N -95 -10 -95 70 {lab=Vcmfb}
N -185 -10 -95 -10 {lab=Vcmfb}
N -185 -150 -185 -110 {lab=Vo1}
N -185 -50 -185 -10 {lab=Vcmfb}
N -275 -150 -185 -150 {lab=Vo1}
N 350 -10 355 -10 {lab=Iref}
N 390 -10 390 30 {lab=VSS}
N 350 -40 350 -10 {lab=Iref}
N 350 -40 390 -40 {lab=Iref}
N 390 -70 390 -40 {lab=Iref}
N -395 -150 -335 -150 {lab=#net1}
N -395 -40 -395 -10 {lab=#net2}
N -470 -10 -395 -10 {lab=#net2}
N 165 -40 165 -10 {lab=#net3}
N 165 -150 240 -150 {lab=#net4}
N 105 -10 165 -10 {lab=#net3}
N 165 -150 165 -100 {lab=#net4}
N 105 -150 165 -150 {lab=#net4}
N 300 -150 355 -150 {lab=Vcm}
N 165 -10 240 -10 {lab=#net3}
N 330 -10 350 -10 {lab=Iref}
N 330 -10 330 55 {lab=Iref}
N 300 -10 330 -10 {lab=Iref}
N -550 55 330 55 {lab=Iref}
N -550 -10 -550 55 {lab=Iref}
N -550 -10 -530 -10 {lab=Iref}
N -585 -150 -530 -150 {lab=Vcm}
N -395 -10 -330 -10 {lab=#net2}
N -270 -10 -185 -10 {lab=Vcmfb}
N -395 -150 -395 -100 {lab=#net1}
N -470 -150 -395 -150 {lab=#net1}
N -185 -320 -185 -150 {lab=Vo1}
N -5 -320 -5 -150 {lab=Vo2}
C {iopin.sym} -740 -230 2 0 {name=p1 lab=VDD}
C {iopin.sym} -740 -210 2 0 {name=p2 lab=VSS}
C {iopin.sym} -740 -180 2 0 {name=p3 lab=phi1}
C {iopin.sym} -740 -160 2 0 {name=p4 lab=_phi1}
C {iopin.sym} -740 -140 2 0 {name=p5 lab=phi2}
C {iopin.sym} -740 -120 2 0 {name=p6 lab=_phi2}
C {ipin.sym} -740 -90 0 0 {name=p30 lab=Vcm}
C {ipin.sym} -740 -70 0 0 {name=p31 lab=Iref}
C {opin.sym} -740 -40 0 1 {name=p32 lab=Vcmfb}
C {ipin.sym} -740 0 0 0 {name=p49 lab=Vo1}
C {ipin.sym} -740 20 0 0 {name=p50 lab=Vo2}
C {sw_custom.sym} 65 -30 0 1 {name=x15}
C {lab_wire.sym} 65 -30 0 0 {name=p62 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 65 10 2 1 {name=p63 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -95 70 2 0 {name=p65 sig_type=std_logic lab=Vcmfb}
C {lab_wire.sym} 355 -150 2 0 {name=p66 sig_type=std_logic lab=Vcm}
C {capa-2.sym} -5 -80 0 0 {name=C6
m=1
value=250f
footprint=1206
device=polarized_capacitor}
C {sw_custom.sym} 65 -170 0 1 {name=x16}
C {lab_wire.sym} 65 -170 0 0 {name=p68 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 65 -130 2 1 {name=p69 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 85 -170 0 1 {name=p70 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 85 -130 2 0 {name=p72 sig_type=std_logic lab=_phi1}
C {capa-2.sym} -185 -80 0 1 {name=C7
m=1
value=250f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 85 10 2 0 {name=p73 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} 85 -30 0 1 {name=p74 sig_type=std_logic lab=phi1}
C {lab_wire.sym} -585 -150 2 1 {name=p7 sig_type=std_logic lab=Vcm}
C {sw_custom.sym} -295 -170 0 0 {name=x1}
C {lab_wire.sym} -295 -170 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -295 -130 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -315 -170 0 0 {name=p10 sig_type=std_logic lab=phi1}
C {lab_wire.sym} -315 -130 2 1 {name=p12 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} -5 -320 0 1 {name=p64 sig_type=std_logic lab=Vo2}
C {lab_wire.sym} -185 -320 0 0 {name=p71 sig_type=std_logic lab=Vo1}
C {sg13g2_pr/sg13_lv_nmos.sym} 370 -10 0 0 {name=M9
l=0.8u
w=8.6u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 390 30 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 390 -70 3 1 {name=p21 sig_type=std_logic lab=Iref}
C {sw_custom.sym} -510 -130 2 0 {name=x4}
C {lab_wire.sym} -510 -130 2 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -510 -170 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -490 -130 2 0 {name=p24 sig_type=std_logic lab=phi2}
C {lab_wire.sym} -490 -170 0 1 {name=p25 sig_type=std_logic lab=_phi2}
C {sw_custom.sym} -510 10 2 0 {name=x5}
C {lab_wire.sym} -510 10 2 1 {name=p26 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -510 -30 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -490 10 2 0 {name=p28 sig_type=std_logic lab=phi2}
C {lab_wire.sym} -490 -30 0 1 {name=p29 sig_type=std_logic lab=_phi2}
C {capa-2.sym} -395 -70 0 1 {name=C1
m=1
value=30f
footprint=1206
device=polarized_capacitor}
C {sw_custom.sym} 280 -130 2 1 {name=x6}
C {lab_wire.sym} 280 -130 2 0 {name=p33 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 280 -170 0 1 {name=p34 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 260 -130 2 1 {name=p35 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 260 -170 0 0 {name=p36 sig_type=std_logic lab=_phi2}
C {sw_custom.sym} 280 10 2 1 {name=x7}
C {lab_wire.sym} 280 10 2 0 {name=p37 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 280 -30 0 1 {name=p38 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 260 10 2 1 {name=p39 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 260 -30 0 0 {name=p40 sig_type=std_logic lab=_phi2}
C {capa-2.sym} 165 -70 0 0 {name=C2
m=1
value=30f
footprint=1206
device=polarized_capacitor}
C {sw_custom.sym} -290 -30 0 0 {name=x8}
C {lab_wire.sym} -290 -30 0 1 {name=p41 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -290 10 2 0 {name=p42 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -310 -30 0 0 {name=p43 sig_type=std_logic lab=phi1}
C {lab_wire.sym} -310 10 2 1 {name=p44 sig_type=std_logic lab=_phi1}
