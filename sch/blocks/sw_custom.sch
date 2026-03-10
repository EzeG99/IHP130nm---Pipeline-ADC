v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 1110 350 1110 {lab=Vo}
N 190 1110 240 1110 {lab=Vi}
N 270 1110 270 1150 {lab=VSS}
N 190 1110 190 1260 {lab=Vi}
N 350 1110 350 1260 {lab=Vo}
N 190 1260 240 1260 {lab=Vi}
N 260 1220 270 1220 {lab=VDD}
N 270 1220 270 1260 {lab=VDD}
N 300 1260 350 1260 {lab=Vo}
N 270 1110 290 1070 {lab=VSS}
C {iopin.sym} 270 1150 0 1 {name=p1 lab=VSS}
C {ipin.sym} 270 1070 1 0 {name=p8 lab=CLK}
C {ipin.sym} 270 1300 3 0 {name=p9 lab=_CLK}
C {iopin.sym} 190 1180 0 1 {name=p3 lab=Vi}
C {iopin.sym} 350 1180 0 0 {name=p6 lab=Vo}
C {iopin.sym} 260 1220 0 1 {name=p2 lab=VDD}
C {switch_ngspice.sym} 270 1110 3 1 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
