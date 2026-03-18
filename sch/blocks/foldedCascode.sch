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
T {0.5V} 1160 -210 0 0 0.2 0.2 {}
T {0.96V} 900 -150 0 0 0.2 0.2 {}
T {0.95V} 1300 -210 0 0 0.2 0.2 {}
T {50u} 710 -300 0 0 0.4 0.4 {}
T {50u} 70 -300 0 0 0.4 0.4 {}
T {1V} 110 -90 0 0 0.2 0.2 {}
T {0.78V} 150 -140 0 0 0.2 0.2 {}
T {} 340 -90 0 0 0.2 0.2 {}
T {0.99} 335 -85 0 0 0.2 0.2 {}
T {Vgs13=0.51V} 305 15 0 0 0.2 0.2 {}
T {0.48} 375 -135 0 0 0.2 0.2 {}
T {0.71} 615 -235 0 0 0.2 0.2 {}
T {0.99} 575 -165 0 0 0.2 0.2 {}
N -1030 -300 -940 -300 {lab=ViCmfb}
N -1030 -360 -940 -360 {lab=VDD}
N -1030 -330 -940 -330 {lab=VSS}
N 1250 -220 1250 -190 {
lab=#net1}
N 1450 -220 1450 -190 {
lab=#net2}
N 1450 -320 1450 -250 {
lab=VDD}
N 1440 -320 1450 -320 {
lab=VDD}
N 760 -130 760 -80 {lab=#net3}
N 940 -130 940 -80 {lab=#net3}
N 850 -130 940 -130 {lab=#net3}
N 850 -320 1250 -320 {
lab=VDD}
N 850 -320 850 -210 {lab=VDD}
N 850 -180 850 -130 {lab=#net3}
N 760 -130 850 -130 {lab=#net3}
N 1440 0 1450 0 {lab=VSS}
N 1440 200 1450 200 {
lab=VSS}
N 1450 -320 1650 -320 {lab=VDD}
N 1250 130 1250 200 {lab=VSS}
N 1450 130 1450 200 {lab=VSS}
N 1440 0 1440 200 {lab=VSS}
N 1260 0 1260 200 {lab=VSS}
N 1250 0 1260 0 {lab=VSS}
N 1250 200 1260 200 {
lab=VSS}
N 1250 -320 1250 -250 {
lab=VDD}
N 1250 -160 1260 -160 {lab=VDD}
N 1260 -320 1260 -160 {lab=VDD}
N 1250 -320 1260 -320 {
lab=VDD}
N 1440 -160 1450 -160 {lab=VDD}
N 1440 -320 1440 -160 {lab=VDD}
N 1260 -320 1440 -320 {
lab=VDD}
N 1250 50 1250 100 {
lab=Vx}
N 1450 80 1450 100 {
lab=Vy}
N 530 -320 850 -320 {lab=VDD}
N 940 -50 940 50 {lab=Vx}
N 1250 30 1250 50 {
lab=Vx}
N 760 -50 760 80 {lab=Vy}
N 1450 30 1450 80 {
lab=Vy}
N 1250 -130 1250 -20 {lab=Vo+}
N 1450 -130 1450 -30 {lab=Vo-}
N 1450 200 1740 200 {lab=VSS}
N 1260 200 1440 200 {
lab=VSS}
N 940 50 1250 50 {lab=Vx}
N 760 80 1450 80 {lab=Vy}
N 60 -320 60 -120 {lab=VDD}
N 50 -30 60 -30 {lab=VDD}
N 50 -320 50 -30 {lab=VDD}
N 290 -320 530 -320 {lab=VDD}
N 60 -90 60 -60 {lab=#net4}
N 100 -120 100 10 {lab=Vb0}
N 60 10 100 10 {lab=Vb0}
N 60 0 60 10 {lab=Vb0}
N 290 -320 290 -120 {lab=VDD}
N 280 -30 290 -30 {lab=VDD}
N 280 -320 280 -30 {lab=VDD}
N 290 -90 290 -60 {lab=#net5}
N 330 -120 330 10 {lab=Vb2}
N 290 10 330 10 {lab=Vb2}
N 290 0 290 10 {lab=Vb2}
N 530 -180 530 -150 {lab=#net6}
N 530 -320 530 -210 {lab=VDD}
N 530 -120 570 -120 {lab=VDD}
N 570 -210 610 -210 {lab=Vb3}
N 610 -210 610 -60 {lab=Vb3}
N 530 -60 610 -60 {lab=Vb3}
N 530 -90 530 -60 {lab=Vb3}
N 330 -120 490 -120 {lab=Vb2}
N 610 -210 640 -210 {lab=Vb3}
N 50 -320 60 -320 {lab=VDD}
N 280 -320 290 -320 {lab=VDD}
N 60 -320 280 -320 {lab=VDD}
N -80 -320 50 -320 {lab=VDD}
N -1030 -160 -100 -160 {lab=IbiasP}
N 530 200 1250 200 {lab=VSS}
N -100 110 -100 120 {lab=IbiasP}
N -100 150 -100 200 {lab=VSS}
N -60 110 -60 150 {lab=IbiasP}
N -100 110 -60 110 {lab=IbiasP}
N -100 -160 -100 110 {lab=IbiasP}
N 60 10 60 120 {lab=Vb0}
N 60 150 60 200 {lab=VSS}
N -100 200 60 200 {lab=VSS}
N 290 10 290 120 {lab=Vb2}
N 290 150 290 200 {lab=VSS}
N 60 200 290 200 {lab=VSS}
N 530 -60 530 120 {lab=Vb3}
N 530 150 530 200 {lab=VSS}
N 290 200 530 200 {lab=VSS}
N -60 150 20 150 {lab=IbiasP}
N -165 110 -100 110 {lab=IbiasP}
N -205 110 -205 200 {lab=VSS}
N -205 200 -100 200 {lab=VSS}
C {iopin.sym} -1030 -330 0 1 {name=p7 lab=VSS
}
C {iopin.sym} -1030 -360 0 1 {name=p4 lab=VDD}
C {ipin.sym} -1030 -300 0 0 {name=p6 lab=ViCmfb}
C {lab_wire.sym} -205 200 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {iopin.sym} -1030 -160 0 1 {name=p30 lab=IbiasP
}
C {lab_wire.sym} 1210 -250 0 0 {name=p18 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 1490 -250 0 1 {name=p19 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 1210 0 0 0 {name=p21 sig_type=std_logic lab=Vb1_1}
C {lab_wire.sym} 1490 0 0 1 {name=p22 sig_type=std_logic lab=Vb1_2}
C {lab_wire.sym} 1490 130 0 1 {name=p23 sig_type=std_logic lab=ViCmfb}
C {lab_wire.sym} -80 -320 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {sg13g2_pr/annotate_fet_params.sym} 1030 -90 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 1617.5 -322.5 0 0 {name=annot2 ref=M9}
C {sg13g2_pr/annotate_fet_params.sym} 1617.5 -52.5 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} 1617.5 77.5 0 0 {name=annot4 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} 1617.5 -192.5 0 0 {name=annot5 ref=M7}
C {sg13g2_pr/annotate_fet_params.sym} 970 -280 0 0 {name=annot6 ref=M0}
C {ngspice_probe.sym} 1250 -190 0 0 {name=r1}
C {ngspice_probe.sym} 1250 100 0 0 {name=r2}
C {ngspice_probe.sym} 850 -130 0 0 {name=r3}
C {ngspice_probe.sym} 1450 100 0 1 {name=r4}
C {ngspice_probe.sym} 1450 -190 0 1 {name=r5}
C {ipin.sym} 720 -80 0 0 {name=p1 lab=Vin+}
C {ipin.sym} 980 -80 0 1 {name=p2 lab=Vin-}
C {lab_wire.sym} 1210 130 0 0 {name=p12 sig_type=std_logic lab=ViCmfb}
C {gmBoosting.sym} 1220 320 0 0 {name=x1}
C {lab_wire.sym} 1370 290 0 1 {name=p27 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1370 310 0 1 {name=p32 sig_type=std_logic lab=Vb1_1}
C {lab_wire.sym} 1370 330 0 1 {name=p33 sig_type=std_logic lab=Vb1_2}
C {lab_wire.sym} 1370 350 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1210 -160 0 0 {name=p20 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} 1490 -160 0 1 {name=p25 sig_type=std_logic lab=Vb2}
C {iopin.sym} 1250 -90 0 1 {name=p42 lab=Vo+}
C {iopin.sym} 1450 -90 0 0 {name=p3 lab=Vo-}
C {sg13g2_pr/sg13_lv_pmos.sym} 740 -80 0 0 {name=M1
l=0.13u
w=115u
ng=100
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 960 -80 0 1 {name=M2
l=0.13u
w=115u
ng=100
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1230 0 0 0 {name=M3
l=0.3u
w=44.4u
ng=22
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 810 -210 0 0 {name=p17 sig_type=std_logic lab=Vb0}
C {lab_wire.sym} 1070 290 0 0 {name=p29 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 1070 310 0 0 {name=p34 sig_type=std_logic lab=Vy}
C {lab_wire.sym} 1120 50 0 0 {name=p5 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 1120 80 0 0 {name=p28 sig_type=std_logic lab=Vy}
C {sg13g2_pr/sg13_lv_nmos.sym} 1230 130 0 0 {name=M12
l=0.8u
w=24.3u
ng=62
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1470 0 0 1 {name=M4
l=0.3u
w=44.4u
ng=22
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1470 130 0 1 {name=M5
l=0.8u
w=24.3u
ng=62
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 60 -320 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -30 0 1 {name=M6
l=0.13u
w=65u
ng=65
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -120 0 1 {name=M13
l=0.3u
w=26u
ng=5
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ngspice_probe.sym} 60 -70 0 0 {name=r7}
C {ngspice_probe.sym} 100 -120 0 0 {name=r9}
C {ngspice_probe.sym} 290 -70 0 0 {name=r10}
C {ngspice_probe.sym} 330 -120 0 0 {name=r11}
C {sg13g2_pr/annotate_fet_params.sym} 380 -90 0 0 {name=q ref=M13}
C {sg13g2_pr/sg13_lv_pmos.sym} 510 -120 0 0 {name=M20
l=0.4u
w=5.6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 550 -210 0 1 {name=M21
l=0.8u
w=9.7u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 570 -120 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {ngspice_probe.sym} 530 -150 0 0 {name=r12}
C {lab_wire.sym} 640 -210 0 1 {name=p31 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 430 -120 0 1 {name=p35 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} 100 10 0 1 {name=p36 sig_type=std_logic lab=Vb0}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 150 0 1 {name=M14
l=1u
w=2u
ng=2
m=10
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 150 0 0 {name=M11
l=1u
w=2u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 510 150 0 0 {name=M15
l=1u
w=2u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 270 150 0 0 {name=M16
l=1u
w=2u
ng=2
m=5
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 250 150 0 0 {name=p10 sig_type=std_logic lab=IbiasP}
C {lab_wire.sym} 490 150 0 0 {name=p8 sig_type=std_logic lab=IbiasP}
C {lab_wire.sym} 20 150 0 0 {name=p9 sig_type=std_logic lab=IbiasP}
C {sg13g2_pr/sg13_lv_nmos.sym} -185 110 0 1 {name=M22
l=1u
w=1.8u
ng=2
m=10
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -205 80 0 0 {name=p15 sig_type=std_logic lab=IbiasN}
C {lab_wire.sym} 1070 330 0 0 {name=p14 sig_type=std_logic lab=IbiasN}
C {sg13g2_pr/sg13_lv_pmos.sym} 1230 -250 0 0 {name=M23
l=0.8u
w=63.2u
ng=103
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1470 -250 0 1 {name=M9
l=0.8u
w=63.2u
ng=103
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1230 -160 0 0 {name=M10
l=0.4u
w=100u
ng=150
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1470 -160 0 1 {name=M7
l=0.4u
w=100u
ng=150
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 310 -120 0 1 {name=M8
l=0.7u
w=5.8u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 310 -30 0 1 {name=M17
l=0.4u
w=27u
ng=9
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 830 -210 0 0 {name=M0
l=0.3u
w=113.5u
ng=210
m=8
model=sg13_lv_pmos
spiceprefix=X
}
