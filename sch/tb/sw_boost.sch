v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -10 240 -0 {lab=GND}
N 90 -60 90 30 {lab=Vi}
N 190 -60 210 -60 {lab=Vi}
N 120 -140 130 -140 {lab=#net1}
N 100 -140 100 -120 {lab=#net1}
N 190 -140 240 -140 {lab=#net2}
N 240 -140 240 -100 {lab=#net2}
N 240 -140 260 -140 {lab=#net2}
N 350 -140 350 -130 {lab=GND}
N 290 -60 480 -60 {lab=Vo}
N 240 40 240 90 {lab=VDD}
N 190 90 210 90 {lab=Vi}
N 190 -60 190 90 {lab=Vi}
N 90 -60 190 -60 {lab=Vi}
N 270 90 290 90 {lab=Vo}
N 290 -60 290 90 {lab=Vo}
N 270 -60 290 -60 {lab=Vo}
N 310 -140 350 -140 {lab=GND}
N 280 -140 280 -10 {lab=GND}
N 240 -10 280 -10 {lab=GND}
N 240 -60 240 -10 {lab=GND}
N 160 -140 160 -130 {lab=#net1}
N 120 -130 160 -130 {lab=#net1}
N 120 -140 120 -130 {lab=#net1}
N 100 -140 120 -140 {lab=#net1}
C {simulator_commands_shown.sym} -420 -340 0 0 {
name=Libs_Ngspice1
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_ss
.lib cornerCAP.lib cap_typ
"
      }
C {sg13g2_pr/cap_cmim.sym} 480 -30 0 1 {name=C3
model=cap_cmim
w=18e-6
l=18e-6
m=1
spiceprefix=X}
C {code_shown.sym} -410 120 0 0 {name=s2 only_toplevel=false value="
.temp 65
.model SW1 SW(Ron=150 Roff=10G Vt=0.4 Vh=0.1)
.control
tran 100p 5u 
plot v(Vo) v(Vi)

.endc

"}
C {vsource.sym} 90 60 2 0 {name=V3 value="sin(0 100m 4.98046875mega 0)" savecurrent=false}
C {vsource.sym} 90 120 0 0 {name=V1 value=0.75 savecurrent=false}
C {vsource.sym} 480 30 0 0 {name=V2 value=0.75 savecurrent=false}
C {gnd.sym} 90 150 0 0 {name=l1 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {gnd.sym} 480 60 0 0 {name=l2 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 -80 1 0 {name=M1
l=0.13u
w=3.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 240 0 0 0 {name=l3 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {vsource.sym} 100 -90 0 0 {name=V4 value=1.5 savecurrent=false}
C {gnd.sym} 350 -130 0 0 {name=l4 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {lab_wire.sym} 160 -180 0 0 {name=p1 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} 480 -60 0 1 {name=p4 sig_type=std_logic lab=Vo}
C {lab_wire.sym} 90 -60 0 0 {name=p5 sig_type=std_logic lab=Vi}
C {sg13g2_pr/sg13_lv_pmos.sym} 240 110 3 0 {name=M2
l=0.13u
w=12u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {vsource.sym} 0 -60 0 0 {name=V7 value=1.5 savecurrent=false}
C {gnd.sym} 0 -30 0 0 {name=l7 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {lab_wire.sym} 0 -90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 240 40 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 240 130 1 1 {name=p9 sig_type=std_logic lab=_phi1}
C {sg13g2_pr/sg13_lv_pmos.sym} 160 -160 3 1 {name=M3
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 280 -180 0 0 {name=p3 sig_type=std_logic lab=_phi1}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 -160 1 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} -810 -140 0 0 {name=V8 value="PULSE(0 1.5 0n 50p 50p 5n 10n)" savecurrent=false}
C {gnd.sym} -810 -110 0 0 {name=l5 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {vsource.sym} -810 -40 0 0 {name=V9 value="PULSE(0 1.5 5.2n 50p 50p 4.6n 10n)" savecurrent=false}
C {gnd.sym} -810 -10 0 0 {name=l6 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {lab_wire.sym} -810 -170 0 0 {name=p10 sig_type=std_logic lab=phi1}
C {lab_wire.sym} -810 -70 0 0 {name=p11 sig_type=std_logic lab=phi2}
C {lab_wire.sym} -600 -170 0 0 {name=p20 sig_type=std_logic lab=_phi1}
C {lab_wire.sym} -600 -70 0 0 {name=p23 sig_type=std_logic lab=_phi2}
C {vsource.sym} -600 -140 0 0 {name=V10 value="PULSE(1.5 0 0n 50p 50p 5n 10n)" savecurrent=false}
C {gnd.sym} -600 -110 0 0 {name=l8 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
C {vsource.sym} -600 -40 0 0 {name=V11 value="PULSE(1.5 0 5.2n 50p 50p 4.6n 10n)" savecurrent=false}
C {gnd.sym} -600 -10 0 0 {name=l17 lab=GND
value="PULSE(0 1.2 0n 100p 100p 8n 20n)"}
