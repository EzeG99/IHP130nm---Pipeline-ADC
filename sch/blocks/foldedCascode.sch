v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Av =70dB
UGBW = 200MHz
CL = 1.2pF
ViCM = 0.6
VoCM = 0.6
VoSwing_sigle = 400mVpp
} -1150 260 2 1 0.4 0.4 {}
T {0.5V} 540 -210 0 0 0.2 0.2 {}
T {0.96V} 280 -150 0 0 0.2 0.2 {}
T {0.95V} 680 -210 0 0 0.2 0.2 {}
T {50u} -560 -300 0 0 0.4 0.4 {}
T {50u/4 = 12.5} -420 20 0 0 0.4 0.4 {}
N -1030 -300 -940 -300 {lab=ViCmfb}
N -1030 -360 -940 -360 {lab=VDD}
N -1030 -330 -940 -330 {lab=VSS}
N -810 200 -570 200 {lab=VSS}
N 630 -220 630 -190 {
lab=#net1}
N 830 -220 830 -190 {
lab=#net2}
N 830 -320 830 -250 {
lab=VDD}
N 820 -320 830 -320 {
lab=VDD}
N 140 -130 140 -80 {lab=#net3}
N 320 -130 320 -80 {lab=#net3}
N 230 -130 320 -130 {lab=#net3}
N 230 -320 630 -320 {
lab=VDD}
N 230 -320 230 -210 {lab=VDD}
N 230 -180 230 -130 {lab=#net3}
N 140 -130 230 -130 {lab=#net3}
N 820 0 830 0 {lab=VSS}
N 820 200 830 200 {
lab=VSS}
N 830 -320 1030 -320 {lab=VDD}
N 630 130 630 200 {lab=VSS}
N 830 130 830 200 {lab=VSS}
N 820 0 820 200 {lab=VSS}
N 640 0 640 200 {lab=VSS}
N 630 0 640 0 {lab=VSS}
N 630 200 640 200 {
lab=VSS}
N 630 -320 630 -250 {
lab=VDD}
N 630 -160 640 -160 {lab=VDD}
N 640 -320 640 -160 {lab=VDD}
N 630 -320 640 -320 {
lab=VDD}
N 820 -160 830 -160 {lab=VDD}
N 820 -320 820 -160 {lab=VDD}
N 640 -320 820 -320 {
lab=VDD}
N 630 50 630 100 {
lab=Vx}
N 830 80 830 100 {
lab=Vy}
N -120 -320 230 -320 {lab=VDD}
N -610 -70 -610 -30 {lab=IbiasP}
N -610 -70 -570 -70 {lab=IbiasP}
N -570 -70 -570 -60 {lab=IbiasP}
N -570 -30 -570 200 {lab=VSS}
N -570 200 -280 200 {lab=VSS}
N -570 -320 -280 -320 {lab=VDD}
N -280 -320 -280 -210 {lab=VDD}
N -280 -30 -280 200 {lab=VSS}
N -120 -320 -120 -210 {lab=VDD}
N -120 -30 -120 200 {lab=VSS}
N -280 -320 -120 -320 {lab=VDD}
N -280 200 -120 200 {lab=VSS}
N 320 -50 320 50 {lab=Vx}
N 630 30 630 50 {
lab=Vx}
N 140 -50 140 80 {lab=Vy}
N 830 30 830 80 {
lab=Vy}
N 630 -130 630 -20 {lab=Vo+}
N 830 -130 830 -30 {lab=Vo-}
N -1030 -160 -570 -160 {lab=IbiasP}
N -570 -160 -570 -70 {lab=IbiasP}
N 830 200 1120 200 {lab=VSS}
N -280 -170 -280 -60 {lab=Vb3}
N -240 -210 -240 -170 {lab=Vb3}
N -280 -170 -240 -170 {lab=Vb3}
N -280 -180 -280 -170 {lab=Vb3}
N -120 -170 -120 -60 {lab=#net4}
N -80 -210 -80 -170 {lab=#net4}
N -120 -170 -80 -170 {lab=#net4}
N -120 -180 -120 -170 {lab=#net4}
N 640 200 820 200 {
lab=VSS}
N 320 50 630 50 {lab=Vx}
N -120 200 630 200 {lab=VSS}
N 140 80 830 80 {lab=Vy}
C {iopin.sym} -1030 -330 0 1 {name=p7 lab=VSS
}
C {iopin.sym} -1030 -360 0 1 {name=p4 lab=VDD}
C {ipin.sym} -1030 -300 0 0 {name=p6 lab=ViCmfb}
C {lab_wire.sym} -810 200 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {iopin.sym} -1030 -160 0 1 {name=p30 lab=IbiasP
}
C {lab_wire.sym} 590 -250 0 0 {name=p18 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 870 -250 0 1 {name=p19 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 590 0 0 0 {name=p21 sig_type=std_logic lab=Vb1_1}
C {lab_wire.sym} 870 0 0 1 {name=p22 sig_type=std_logic lab=Vb1_2}
C {lab_wire.sym} 870 130 0 1 {name=p23 sig_type=std_logic lab=ViCmfb}
C {lab_wire.sym} -570 -320 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {sg13g2_pr/annotate_fet_params.sym} 410 -90 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 997.5 -322.5 0 0 {name=annot2 ref=M9}
C {sg13g2_pr/annotate_fet_params.sym} 997.5 -52.5 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} 997.5 77.5 0 0 {name=annot4 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} 997.5 -192.5 0 0 {name=annot5 ref=M7}
C {sg13g2_pr/annotate_fet_params.sym} 350 -280 0 0 {name=annot6 ref=M0}
C {ngspice_probe.sym} 630 -190 0 0 {name=r1}
C {ngspice_probe.sym} 630 100 0 0 {name=r2}
C {ngspice_probe.sym} 230 -130 0 0 {name=r3}
C {ngspice_probe.sym} 830 100 0 1 {name=r4}
C {ngspice_probe.sym} 830 -190 0 1 {name=r5}
C {sg13g2_pr/sg13_lv_nmos.sym} -590 -30 0 0 {name=M11
l=0.3u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ngspice_probe.sym} -570 -80 0 0 {name=r14}
C {ipin.sym} 100 -80 0 0 {name=p1 lab=Vin+}
C {ipin.sym} 360 -80 0 1 {name=p2 lab=Vin-}
C {lab_wire.sym} 590 130 0 0 {name=p12 sig_type=std_logic lab=ViCmfb}
C {gmBoosting.sym} 600 320 0 0 {name=x1}
C {lab_wire.sym} 750 290 0 1 {name=p27 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 750 310 0 1 {name=p32 sig_type=std_logic lab=Vb1_1}
C {lab_wire.sym} 750 330 0 1 {name=p33 sig_type=std_logic lab=Vb1_2}
C {lab_wire.sym} 750 350 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 210 -210 0 0 {name=M0
l=0.3u
w=70u
ng=120
m=8
model=sg13_lv_pmos
spiceprefix=X

}
C {sg13g2_pr/sg13_lv_nmos.sym} -300 -30 0 0 {name=M14
l=0.3u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -320 -30 0 0 {name=p8 sig_type=std_logic lab=IbiasP}
C {sg13g2_pr/sg13_lv_pmos.sym} -260 -210 0 1 {name=M15
l=0.3u
w=4.4u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -140 -30 0 0 {name=M16
l=0.3u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -100 -210 0 1 {name=M17
l=0.3u
w=9.5u
ng=5
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} -160 -30 0 0 {name=p9 sig_type=std_logic lab=IbiasP}
C {lab_wire.sym} 590 -160 0 0 {name=p20 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} 870 -160 0 1 {name=p25 sig_type=std_logic lab=Vb2}
C {iopin.sym} 630 -90 0 1 {name=p42 lab=Vo+}
C {iopin.sym} 830 -90 0 0 {name=p3 lab=Vo-}
C {lab_wire.sym} -240 -170 0 1 {name=p14 sig_type=std_logic lab=Vb3}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -80 0 0 {name=M1
l=0.13u
w=70u
ng=100
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 340 -80 0 1 {name=M2
l=0.13u
w=70u
ng=100
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 610 -250 0 0 {name=M9
l=0.8u
w=62u
ng=120
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 850 -250 0 1 {name=M10
l=0.8u
w=62u
ng=120
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 610 -160 0 0 {name=M7
l=0.4u
w=63u
ng=120
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 610 0 0 0 {name=M3
l=0.3u
w=44u
ng=18
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 20 170 0 0 {name=V10 value=0.78 savecurrent=false}
C {lab_wire.sym} 20 140 0 0 {name=p10 sig_type=std_logic lab=Vb0}
C {vsource.sym} 30 290 0 0 {name=V3 value=0.56 savecurrent=false}
C {vsource.sym} 100 290 0 0 {name=V4 value=0.48 savecurrent=false}
C {vsource.sym} 160 290 0 0 {name=V5 value=0.71 savecurrent=false}
C {gnd.sym} 30 320 0 0 {name=l7 lab=GND}
C {gnd.sym} 100 320 0 0 {name=l8 lab=GND}
C {gnd.sym} 160 320 0 0 {name=l9 lab=GND}
C {lab_wire.sym} 100 260 0 0 {name=p11 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} 30 260 0 0 {name=p15 sig_type=std_logic lab=Vb1}
C {lab_wire.sym} 160 260 0 0 {name=p16 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 190 -210 0 0 {name=p17 sig_type=std_logic lab=Vb0}
C {lab_wire.sym} 450 290 0 0 {name=p29 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 450 310 0 0 {name=p34 sig_type=std_logic lab=Vy}
C {sg13g2_pr/sg13_lv_pmos.sym} 850 -160 0 1 {name=M8
l=0.4u
w=63u
ng=120
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 500 50 0 0 {name=p5 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 500 80 0 0 {name=p28 sig_type=std_logic lab=Vy}
C {sg13g2_pr/sg13_lv_nmos.sym} 610 130 0 0 {name=M12
l=0.8u
w=24.2u
ng=64
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 850 0 0 1 {name=M4
l=0.3u
w=44u
ng=18
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 850 130 0 1 {name=M5
l=0.8u
w=24.2u
ng=64
m=6
model=sg13_lv_nmos
spiceprefix=X
}
