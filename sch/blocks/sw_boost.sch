v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {5u/15u} 215 -5 0 0 0.4 0.4 {}
N 90 -130 90 -70 {lab=VSS}
N -60 -130 -60 -40 {lab=Vi}
N 90 -250 110 -250 {lab=#net1}
N 170 -250 200 -250 {lab=GND}
N 200 -250 200 -240 {lab=GND}
N 90 50 90 100 {lab=VDD}
N 120 -130 160 -130 {lab=Vo}
N -60 -130 60 -130 {lab=Vi}
N 60 -130 60 100 {lab=Vi}
N 120 -130 120 100 {lab=Vo}
N 90 -250 90 -170 {lab=#net1}
N 40 -250 90 -250 {lab=#net1}
N -50 -250 -50 -190 {lab=#net2}
N -50 -250 -20 -250 {lab=#net2}
N 160 -290 170 -290 {lab=GND}
N 30 -290 40 -290 {lab=GND}
N -180 -290 -150 -290 {lab=CLK}
N -180 -270 -150 -270 {lab=_CLK}
C {iopin.sym} 90 -70 3 1 {name=p1 lab=VSS}
C {ipin.sym} -180 -290 0 0 {name=p8 lab=CLK}
C {ipin.sym} -180 -270 0 0 {name=p9 lab=_CLK}
C {iopin.sym} -60 -50 0 1 {name=p3 lab=Vi}
C {iopin.sym} 160 -130 0 0 {name=p6 lab=Vo}
C {iopin.sym} 90 50 3 0 {name=p2 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 90 -150 1 0 {name=M1
l=0.13u
w=3.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} -50 -160 0 0 {name=V4 value=1.5 savecurrent=false}
C {gnd.sym} 200 -240 0 0 {name=l4 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {lab_wire.sym} -60 -130 0 0 {name=p7 sig_type=std_logic lab=Vi}
C {lab_wire.sym} 90 140 1 1 {name=p4 sig_type=std_logic lab=_CLK}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 120 3 0 {name=M2
l=0.13u
w=12u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 10 -290 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 140 -290 0 0 {name=p10 sig_type=std_logic lab=_CLK}
C {switch_ngspice.sym} 10 -250 3 1 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
C {switch_ngspice.sym} 140 -250 3 1 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
C {gnd.sym} 170 -290 0 0 {name=l1 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {gnd.sym} 40 -290 0 0 {name=l2 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
