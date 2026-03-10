v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {170uA} -125 5 0 0 0.3 0.3 {}
T {0.9V} 110 -110 0 0 0.3 0.3 {}
T {85uA} 265 75 0 0 0.3 0.3 {}
T {170uA} 275 -215 0 0 0.3 0.3 {}
N 100 -50 260 -50 {lab=VDD}
N 100 50 100 100 {lab=VSS}
N 260 50 260 100 {lab=VSS}
N -170 100 100 100 {lab=VSS}
N -350 100 -170 100 {lab=VSS}
N -170 40 -170 100 {lab=VSS}
N 100 100 260 100 {lab=VSS}
N 260 -210 260 -160 {lab=VDD}
N 100 -210 260 -210 {lab=VDD}
N 100 -210 100 -160 {lab=VDD}
N -250 -210 100 -210 {lab=VDD}
N -250 -20 -250 -10 {lab=#net1}
N -170 -10 -90 -10 {lab=#net1}
N -90 -20 -90 -10 {lab=#net1}
N -170 -10 -170 10 {lab=#net1}
N -250 -10 -170 -10 {lab=#net1}
N -250 -50 -90 -50 {lab=VSS}
N -250 -120 -250 -80 {lab=#net2}
N -90 -100 -90 -80 {lab=#net3}
N -90 -100 100 -100 {lab=#net3}
N 100 -100 100 -80 {lab=#net3}
N 100 -130 100 -100 {lab=#net3}
N -250 -120 260 -120 {lab=#net2}
N 260 -130 260 -120 {lab=#net2}
N 100 0 100 20 {lab=Vo1}
N 260 0 260 20 {lab=Vo2}
N 100 0 110 0 {lab=Vo1}
N 180 0 190 0 {lab=#net4}
N 250 0 260 0 {lab=Vo2}
N 260 -20 260 0 {lab=Vo2}
N 100 -20 100 0 {lab=Vo1}
N 180 0 180 50 {lab=#net4}
N 170 0 180 0 {lab=#net4}
N 140 50 180 50 {lab=#net4}
N 180 50 220 50 {lab=#net4}
N 260 -120 260 -80 {lab=#net2}
N -820 20 -630 20 {lab=VSS}
C {vsource.sym} -780 -10 0 0 {name=V2 value=0.5 savecurrent=false}
C {lab_wire.sym} -780 -40 0 0 {name=p27 sig_type=std_logic lab=Vb0}
C {vsource.sym} -700 -10 0 0 {name=V3 value=0.35 savecurrent=false}
C {lab_wire.sym} -700 -40 0 0 {name=p29 sig_type=std_logic lab=Vb1}
C {vsource.sym} -630 -10 0 0 {name=V4 value=0.6 savecurrent=false}
C {lab_wire.sym} -630 -40 0 0 {name=p31 sig_type=std_logic lab=Vb2}
C {sg13g2_pr/annotate_fet_params.sym} -380 -10 0 0 {name=annot1 ref=M4}
C {sg13g2_pr/annotate_fet_params.sym} 380 -210 0 0 {name=annot2 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} 380 -80 0 0 {name=annot3 ref=M6}
C {sg13g2_pr/annotate_fet_params.sym} 390 60 0 0 {name=annot4 ref=M17}
C {sg13g2_pr/annotate_fet_params.sym} -390 -185 0 0 {name=annot5 ref=M2}
C {lab_wire.sym} 180 -50 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -130 40 0 1 {name=p7 sig_type=std_logic lab=Vb0}
C {lab_wire.sym} 60 -50 0 0 {name=p8 sig_type=std_logic lab=Vb1}
C {lab_wire.sym} 300 -50 0 1 {name=p9 sig_type=std_logic lab=Vb1}
C {lab_wire.sym} 60 -160 0 0 {name=p10 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} 300 -160 0 1 {name=p11 sig_type=std_logic lab=Vb2}
C {ngspice_probe.sym} -170 10 0 0 {name=r1}
C {ngspice_probe.sym} 100 -80 0 0 {name=r2}
C {iopin.sym} -250 -210 0 1 {name=p3 lab=VDD}
C {iopin.sym} -350 100 0 1 {name=p6 lab=VSS}
C {lab_wire.sym} -170 -50 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -820 20 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {ipin.sym} -290 -50 0 0 {name=p16 lab=Vi+}
C {ipin.sym} -50 -50 0 1 {name=p17 lab=Vi-}
C {opin.sym} 100 0 0 1 {name=p12 lab=Vo1}
C {opin.sym} 260 0 0 0 {name=p4 lab=Vo2}
C {sg13g2_pr/sg13_lv_nmos.sym} -270 -50 0 0 {name=M2
l=0.2u
w=8u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -70 -50 0 1 {name=M3
l=0.2u
w=8u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -150 40 0 1 {name=M4
l=0.3u
w=9u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -160 0 0 {name=M5
l=0.8u
w=22.4u
ng=5
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -50 0 0 {name=M6
l=0.7u
w=30u
ng=5
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -160 0 1 {name=M7
l=0.8u
w=22.4u
ng=5
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -50 0 1 {name=M8
l=0.7u
w=30u
ng=5
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 220 0 3 1 {name=R4
w=0.7e-6
l=20e-6
model=rhigh
body=VSS
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 50 0 0 {name=M17
l=0.7u
w=17u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 50 0 1 {name=M1
l=0.7u
w=17u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 140 0 1 0 {name=R3
w=0.7e-6
l=20e-6
model=rhigh
body=VSS
spiceprefix=X
b=0
m=1
}
