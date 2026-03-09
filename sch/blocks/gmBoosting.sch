v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {100uA} 415 510 0 0 0.3 0.3 {}
T {0.209} 100 405 0 0 0.3 0.3 {}
T {0.56} 430 385 0 0 0.3 0.3 {}
T {0.22} 140 475 0 0 0.3 0.3 {}
T {0.95} 150 285 0 0 0.3 0.3 {}
T {0.35} -340 505 0 0 0.3 0.3 {}
T {323.66uA} -30 200 0 0 0.3 0.3 {}
T {0.72V} 40 380 0 0 0.3 0.3 {}
N 385 610 395 610 {lab=VSS}
N 385 220 395 220 {lab=VDD}
N 225 560 225 610 {lab=VSS}
N 225 220 225 270 {lab=VDD}
N 65 400 65 450 {lab=#net1}
N 65 220 225 220 {lab=VDD}
N 395 560 395 610 {lab=VSS}
N 395 220 395 270 {lab=VDD}
N -95 400 -95 450 {lab=#net1}
N -15 400 65 400 {lab=#net1}
N 225 300 225 310 {lab=#net2}
N 225 340 235 340 {lab=VDD}
N 235 220 235 340 {lab=VDD}
N 225 220 235 220 {lab=VDD}
N 385 340 395 340 {lab=VDD}
N 385 220 385 340 {lab=VDD}
N 235 220 385 220 {lab=VDD}
N 395 300 395 310 {lab=#net3}
N -95 400 -15 400 {lab=#net1}
N -15 380 -15 400 {lab=#net1}
N 65 480 65 500 {lab=#net4}
N 225 500 225 530 {lab=#net4}
N 225 450 235 450 {lab=VSS}
N 235 450 235 610 {lab=VSS}
N 225 610 235 610 {lab=VSS}
N 385 450 395 450 {lab=VSS}
N 385 450 385 610 {lab=VSS}
N 235 610 385 610 {lab=VSS}
N -15 350 -5 350 {lab=VDD}
N -5 220 -5 350 {lab=VDD}
N 65 220 65 270 {lab=VDD}
N -5 220 65 220 {lab=VDD}
N 65 300 65 310 {lab=#net5}
N -15 310 65 310 {lab=#net5}
N -15 310 -15 320 {lab=#net5}
N -95 300 -95 310 {lab=#net5}
N -95 310 -15 310 {lab=#net5}
N -95 220 -95 270 {lab=VDD}
N -295 350 -245 350 {lab=VDD}
N -245 220 -95 220 {lab=VDD}
N -245 300 -245 320 {lab=#net6}
N -245 220 -245 270 {lab=VDD}
N -485 435 -485 550 {lab=#net7}
N -245 520 -245 530 {lab=Vb3}
N -245 560 -245 610 {lab=VSS}
N -445 610 -245 610 {lab=VSS}
N -205 520 -205 560 {lab=Vb3}
N -245 520 -205 520 {lab=Vb3}
N -245 380 -245 520 {lab=Vb3}
N -445 435 -445 440 {lab=#net7}
N -445 220 -445 350 {lab=VDD}
N -445 220 -245 220 {lab=VDD}
N -445 550 -445 610 {lab=VSS}
N -445 500 -445 520 {lab=Vb0}
N -485 435 -445 435 {lab=#net7}
N -445 410 -445 435 {lab=#net7}
N -445 520 -375 520 {lab=Vb0}
N -245 610 225 610 {lab=VSS}
N -95 220 -5 220 {lab=VDD}
N 65 500 225 500 {lab=#net4}
N 225 480 225 500 {lab=#net4}
N 395 510 395 530 {lab=#net8}
N 395 370 395 420 {lab=Vo2}
N 225 370 225 420 {lab=Vo1}
N -205 350 -55 350 {lab=Vb0}
N -205 560 185 560 {lab=Vb3}
N -95 510 395 510 {lab=#net8}
N -95 480 -95 510 {lab=#net8}
N 395 480 395 510 {lab=#net8}
N -815 610 -445 610 {lab=VSS}
N -530 220 -445 220 {lab=VDD}
C {iopin.sym} -530 220 0 1 {name=p14 lab=VDD}
C {iopin.sym} -815 610 0 1 {name=p1 lab=VSS}
C {vsource.sym} -725 580 0 0 {name=V3 value=0.62 savecurrent=false}
C {vsource.sym} -655 580 0 0 {name=V2 value=0.33 savecurrent=false}
C {vsource.sym} -600 580 0 0 {name=V5 value=0.61 savecurrent=false}
C {lab_wire.sym} -725 550 0 0 {name=p25 sig_type=std_logic lab=Vb1}
C {lab_wire.sym} -655 550 0 0 {name=p26 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} -600 550 0 0 {name=p33 sig_type=std_logic lab=Vb4}
C {vsource.sym} -795 580 0 0 {name=V1 value=0.55 savecurrent=false}
C {lab_wire.sym} -795 550 0 0 {name=p4 sig_type=std_logic lab=Vref}
C {sg13g2_pr/sg13_lv_pmos.sym} 205 270 0 0 {name=M7
l=0.7u
w=25u
ng=12
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -115 450 0 0 {name=M1
l=0.15u
w=40u
ng=80
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 85 450 0 1 {name=M2
l=0.15u
w=40u
ng=80
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -35 350 0 0 {name=M0
l=0.3u
w=16u
ng=20
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 415 560 0 1 {name=M6
l=0.7u
w=20u
ng=5
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 185 450 0 0 {name=p9 sig_type=std_logic lab=Vb1}
C {lab_wire.sym} 435 450 0 1 {name=p10 sig_type=std_logic lab=Vb1}
C {lab_wire.sym} -55 350 0 0 {name=p17 sig_type=std_logic lab=Vb0}
C {ngspice_probe.sym} 225 515 0 0 {name=r1}
C {sg13g2_pr/sg13_lv_pmos.sym} 205 340 0 0 {name=M9
l=0.3u
w=33u
ng=10
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 415 340 0 1 {name=M10
l=0.3u
w=33u
ng=10
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ngspice_probe.sym} -10 400 0 0 {name=r2}
C {lab_wire.sym} 185 340 0 0 {name=p8 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} 435 340 0 1 {name=p11 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} 185 270 0 0 {name=p12 sig_type=std_logic lab=Vb4}
C {lab_wire.sym} 435 270 0 1 {name=p18 sig_type=std_logic lab=Vb4}
C {ngspice_probe.sym} 395 310 0 0 {name=r3}
C {sg13g2_pr/sg13_lv_pmos.sym} 415 270 0 1 {name=M8
l=0.7u
w=25u
ng=12
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {ngspice_probe.sym} 225 310 0 1 {name=r4}
C {sg13g2_pr/sg13_lv_pmos.sym} -115 270 0 0 {name=M3
l=0.13u
w=20u
ng=5
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 105 270 0 1 {name=p13 sig_type=std_logic lab=Vo1}
C {lab_wire.sym} -135 270 0 0 {name=p31 sig_type=std_logic lab=Vo2}
C {sg13g2_pr/sg13_lv_pmos.sym} 85 270 0 1 {name=M4
l=0.13u
w=20u
ng=5
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -265 270 0 0 {name=M5
l=0.13u
w=20u
ng=5
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} -295 350 0 0 {name=p34 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -285 270 0 0 {name=p40 sig_type=std_logic lab=Vref}
C {ngspice_probe.sym} -180 350 0 0 {name=r5}
C {sg13g2_pr/sg13_lv_nmos.sym} -465 550 0 0 {name=M28
l=0.2u
w=10u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -225 560 0 1 {name=M29
l=0.2u
w=30u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ngspice_probe.sym} -210 520 0 0 {name=r14}
C {isource.sym} -445 380 0 0 {name=I1 value=50u}
C {ngspice_probe.sym} -445 520 0 1 {name=r15}
C {sg13g2_pr/rppd.sym} -445 470 0 0 {name=R16
w=0.8e-6
l=2.5e-6
model=rppd
body=sub!
spiceprefix=X
b=0
m=1
}
C {lab_wire.sym} 125 560 0 1 {name=p41 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 435 560 0 1 {name=p42 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} -375 520 0 1 {name=p43 sig_type=std_logic lab=Vb0}
C {sg13g2_pr/sg13_lv_pmos.sym} -225 350 0 1 {name=M30
l=0.3u
w=16u
ng=20
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 205 560 0 0 {name=M31
l=0.7u
w=20u
ng=5
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 205 450 0 0 {name=M32
l=0.7u
w=38u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 415 450 0 1 {name=M33
l=0.7u
w=38u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {opin.sym} 225 395 0 1 {name=p2 lab=Vo1}
C {opin.sym} 395 395 0 0 {name=p5 lab=Vo2}
C {ipin.sym} -135 450 0 0 {name=p3 lab=Vi+}
C {ipin.sym} 105 450 0 1 {name=p15 lab=Vi-}
