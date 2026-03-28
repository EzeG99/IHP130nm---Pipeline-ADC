v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {3.5u/12u} 215 -5 0 0 0.4 0.4 {}
N 90 -130 90 -70 {lab=VSS}
N -60 -130 -60 -40 {lab=Vi}
N 90 -250 110 -250 {lab=#net1}
N 170 -250 200 -250 {lab=VSS}
N 90 50 90 100 {lab=VDD}
N 120 -130 160 -130 {lab=Vo}
N -60 -130 60 -130 {lab=Vi}
N 60 -130 60 100 {lab=Vi}
N 120 -130 120 100 {lab=Vo}
N 90 -180 90 -170 {lab=#net1}
N 40 -250 90 -250 {lab=#net1}
N -320 60 -290 60 {lab=CLK}
N -320 80 -290 80 {lab=_CLK}
N -320 100 -290 100 {lab=VSS}
N -30 -250 -20 -250 {lab=#net2}
N 10 -250 10 -220 {lab=#net2}
N -30 -220 10 -220 {lab=#net2}
N -30 -250 -30 -220 {lab=#net2}
N 140 -250 140 -200 {lab=VSS}
N -120 -130 -60 -130 {lab=Vi}
N -150 -130 -150 -70 {lab=VSS}
N -150 -180 -150 -170 {lab=#net1}
N -150 -180 90 -180 {lab=#net1}
N 90 -250 90 -180 {lab=#net1}
N -240 -150 -240 -130 {lab=#net3}
N -240 -250 -240 -210 {lab=#net2}
N -240 -250 -30 -250 {lab=#net2}
N -330 40 -290 40 {lab=VDD}
N -390 -250 -370 -250 {lab=VDD}
N -340 -250 -340 -230 {lab=#net2}
N -340 -230 -300 -230 {lab=#net2}
N -300 -250 -300 -230 {lab=#net2}
N -310 -250 -300 -250 {lab=#net2}
N -300 -250 -240 -250 {lab=#net2}
N -340 -320 -340 -290 {lab=#net1}
N -340 -320 90 -320 {lab=#net1}
N 90 -320 90 -250 {lab=#net1}
N -240 -130 -180 -130 {lab=#net3}
N -320 -130 -240 -130 {lab=#net3}
N -350 -130 -350 -70 {lab=VSS}
N -400 -130 -380 -130 {lab=#net4}
C {ipin.sym} -320 60 0 0 {name=p8 lab=CLK}
C {ipin.sym} -320 80 0 0 {name=p9 lab=_CLK}
C {iopin.sym} -60 -40 3 1 {name=p3 lab=Vi}
C {iopin.sym} 160 -130 0 0 {name=p6 lab=Vo}
C {sg13g2_pr/sg13_lv_nmos.sym} 90 -150 1 0 {name=M1
l=0.13u
w=5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 120 3 0 {name=M2
l=0.13u
w=25u
ng=3
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 10 -290 0 0 {name=p5 sig_type=std_logic lab=_CLK}
C {iopin.sym} -320 100 0 1 {name=p1 lab=VSS}
C {lab_wire.sym} 90 -70 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 200 -250 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 10 -270 3 1 {name=M3
l=0.13u
w=0.18u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 -270 1 0 {name=M4
l=0.13u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 140 -200 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -290 0 0 {name=p4 sig_type=std_logic lab=_CLK}
C {lab_wire.sym} 90 140 1 1 {name=p10 sig_type=std_logic lab=_CLK}
C {sg13g2_pr/cap_cmim.sym} -240 -180 0 1 {name=C1
model=cap_cmim
w=10.0e-6
l=10.0e-6
m=1
spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} -150 -150 1 0 {name=M5
l=0.13u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -150 -70 1 1 {name=p7 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} -340 -270 3 1 {name=M6
l=0.13u
w=0.18u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} -330 40 2 0 {name=p2 lab=VDD}
C {lab_wire.sym} 90 50 3 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -390 -250 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} -350 -150 1 0 {name=M7
l=0.13u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -350 -70 1 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -350 -170 0 0 {name=p17 sig_type=std_logic lab=_CLK}
C {lab_wire.sym} -400 -130 0 0 {name=p18 sig_type=std_logic lab=VSS}
