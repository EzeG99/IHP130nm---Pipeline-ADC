v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 720 -20 810 {lab=Vi}
N 90 720 100 720 {lab=Vi}
N 130 900 130 950 {lab=VDD}
N 160 950 170 950 {lab=Vo}
N 170 720 170 950 {lab=Vo}
N 160 720 170 720 {lab=Vo}
N 90 950 100 950 {lab=Vi}
N 90 720 90 950 {lab=Vi}
N -20 720 90 720 {lab=Vi}
N 170 720 330 720 {lab=Vo}
N 130 720 130 780 {lab=VSS}
C {iopin.sym} 130 780 3 1 {name=p1 lab=VSS}
C {ipin.sym} 130 680 0 0 {name=p8 lab=CLK}
C {iopin.sym} -20 810 0 1 {name=p3 lab=Vi}
C {iopin.sym} 330 720 0 0 {name=p6 lab=Vo}
C {iopin.sym} 130 900 3 0 {name=p2 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 130 700 1 0 {name=M1
l=0.13u
w=2.8u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 130 970 3 0 {name=M2
l=0.13u
w=4.5u
ng=5
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 130 990 3 0 {name=p4 lab=_CLK}
