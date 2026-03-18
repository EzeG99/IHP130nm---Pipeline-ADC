v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Av =70dB
UGBW = 200MHz
CL = 1pF
ViCM = 0.5
VoCM = 0.5
VoSwing_sigle = 200mVpp
} -970 440 2 1 0.4 0.4 {}
T {600uA} 200 -280 0 0 0.4 0.4 {}
T {350uA} 520 -310 0 0 0.4 0.4 {}
T {0.21V} 595 65 0 0 0.2 0.2 {}
T {0.96V} 240 -150 0 0 0.2 0.2 {}
T {1V} 645 -215 0 0 0.2 0.2 {}
T {0.369V} 515 -155 0 0 0.2 0.2 {}
T {50u} -620 -300 0 0 0.4 0.4 {}
T {1V} -580 -90 0 0 0.2 0.2 {}
T {0.78V} -540 -140 0 0 0.2 0.2 {}
T {} -350 -90 0 0 0.2 0.2 {}
T {0.99} -355 -85 0 0 0.2 0.2 {}
T {Vgs13=0.51V} -385 15 0 0 0.2 0.2 {}
T {0.48} -315 -135 0 0 0.2 0.2 {}
T {0.71} -75 -235 0 0 0.2 0.2 {}
T {0.99} -115 -165 0 0 0.2 0.2 {}
T {10u} -615 115 0 0 0.2 0.2 {}
T {25u} -385 115 0 0 0.2 0.2 {}
T {10u} -145 115 0 0 0.2 0.2 {}
N 590 -220 590 -190 {
lab=#net1}
N 790 -220 790 -190 {
lab=#net2}
N 790 -320 790 -250 {
lab=VDD}
N 780 -320 790 -320 {
lab=VDD}
N 100 -130 100 -80 {lab=#net3}
N 280 -130 280 -80 {lab=#net3}
N 190 -130 280 -130 {lab=#net3}
N 190 -320 590 -320 {
lab=VDD}
N 190 -320 190 -210 {lab=VDD}
N 190 -180 190 -130 {lab=#net3}
N 100 -130 190 -130 {lab=#net3}
N 780 0 790 0 {lab=0}
N 780 200 790 200 {
lab=0}
N 790 -320 990 -320 {lab=VDD}
N 590 130 590 200 {lab=0}
N 790 130 790 200 {lab=0}
N 780 0 780 200 {lab=0}
N 600 200 780 200 {
lab=0}
N 600 0 600 200 {lab=0}
N 590 0 600 0 {lab=0}
N 590 200 600 200 {
lab=0}
N 590 -320 590 -250 {
lab=VDD}
N 590 -160 600 -160 {lab=VDD}
N 600 -320 600 -160 {lab=VDD}
N 590 -320 600 -320 {
lab=VDD}
N 780 -160 790 -160 {lab=VDD}
N 780 -320 780 -160 {lab=VDD}
N 600 -320 780 -320 {
lab=VDD}
N -160 -320 190 -320 {lab=VDD}
N 280 -50 280 70 {lab=Vx}
N 100 -50 100 80 {lab=Vy}
N 590 70 590 100 {
lab=Vx}
N 790 80 790 100 {
lab=Vy}
N 280 70 590 70 {lab=Vx}
N 590 30 590 70 {
lab=Vx}
N 100 80 790 80 {lab=Vy}
N 790 30 790 80 {
lab=Vy}
N -630 -320 -630 -120 {lab=VDD}
N -630 10 -630 140 {lab=Vb0}
N -640 -30 -630 -30 {lab=VDD}
N -640 -320 -640 -30 {lab=VDD}
N -400 -320 -160 -320 {lab=VDD}
N -630 -90 -630 -60 {lab=#net4}
N -590 -120 -590 10 {lab=Vb0}
N -630 10 -590 10 {lab=Vb0}
N -630 0 -630 10 {lab=Vb0}
N -400 -320 -400 -120 {lab=VDD}
N -400 10 -400 140 {lab=Vb2}
N -410 -30 -400 -30 {lab=VDD}
N -410 -320 -410 -30 {lab=VDD}
N -400 -90 -400 -60 {lab=#net5}
N -360 -120 -360 10 {lab=Vb2}
N -400 10 -360 10 {lab=Vb2}
N -400 0 -400 10 {lab=Vb2}
N -160 -180 -160 -150 {lab=#net6}
N -160 -320 -160 -210 {lab=VDD}
N -160 -120 -120 -120 {lab=VDD}
N -120 -210 -80 -210 {lab=Vb3}
N -80 -210 -80 -60 {lab=Vb3}
N -160 -60 -80 -60 {lab=Vb3}
N -160 -90 -160 -60 {lab=Vb3}
N -160 -60 -160 140 {lab=Vb3}
N -360 -120 -200 -120 {lab=Vb2}
N -80 -210 -50 -210 {lab=Vb3}
N -640 -320 -630 -320 {lab=VDD}
N -410 -320 -400 -320 {lab=VDD}
N -630 -320 -410 -320 {lab=VDD}
N -160 200 590 200 {lab=0}
N -750 -320 -750 50 {lab=VDD}
N -750 -320 -640 -320 {lab=VDD}
N -790 110 -790 150 {lab=VbbN}
N -790 110 -750 110 {lab=VbbN}
N -750 110 -750 120 {lab=VbbN}
N -750 200 -630 200 {lab=0}
N -630 160 -630 200 {lab=0}
N -400 170 -400 200 {lab=0}
N -630 200 -400 200 {lab=0}
N -160 170 -160 200 {lab=0}
N -400 200 -160 200 {lab=0}
N -750 150 -750 200 {lab=0}
N -810 150 -790 150 {lab=VbbN}
N -850 200 -750 200 {lab=0}
N -850 150 -850 200 {lab=0}
N 140 280 290 280 {lab=#net7}
N 140 280 140 290 {lab=#net7}
N 100 380 100 410 {lab=#net8}
N 100 410 290 410 {lab=#net8}
N 290 340 290 410 {lab=#net8}
N 140 320 200 320 {lab=VDD}
N 790 200 1080 200 {lab=0}
N 590 -130 590 -30 {lab=#net9}
N 790 -130 790 -30 {lab=#net10}
C {vsource.sym} -510 -510 0 0 {name=V1 value=1.2 savecurrent=false}
C {lab_wire.sym} -510 -540 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 60 -80 0 0 {name=p5 sig_type=std_logic lab=VinCM}
C {lab_wire.sym} 320 -80 0 1 {name=p6 sig_type=std_logic lab=VinCM}
C {lab_wire.sym} 550 -250 0 0 {name=p11 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 830 -250 0 1 {name=p12 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 830 130 0 1 {name=p16 sig_type=std_logic lab=Vb4}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 130 0 0 {name=M5
l=0.8u
w=24.2u
ng=62
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 810 130 0 1 {name=M6
l=0.8u
w=24.2u
ng=62
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 550 130 0 0 {name=p22 sig_type=std_logic lab=Vb4}
C {code_shown.sym} -1010 -390 0 0 {name=s1 only_toplevel=false value="
.temp 65
.lib cornerMOSlv.lib mos_tt
.control
save all
op
write foldedCascode.raw
.endc
"}
C {vsource.sym} -430 -510 0 0 {name=V7 value=0.6 savecurrent=false}
C {lab_wire.sym} -430 -540 0 0 {name=p26 sig_type=std_logic lab=VinCM}
C {gnd.sym} -510 -480 0 0 {name=l5 lab=GND}
C {gnd.sym} -430 -480 0 0 {name=l11 lab=GND}
C {launcher.sym} 330 130 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {devices/launcher.sym} 330 190 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} -990 -210 0 0 {name=s2 only_toplevel=false value=".include foldedCascode.save"}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -80 0 0 {name=M1
l=0.13u
w=85u
ng=100
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 170 -210 0 0 {name=M0
l=0.3u
w=70u
ng=120
m=8
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/annotate_fet_params.sym} 370 -90 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 957.5 -322.5 0 0 {name=annot2 ref=M4}
C {sg13g2_pr/annotate_fet_params.sym} 957.5 -52.5 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} 957.5 77.5 0 0 {name=annot4 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} 957.5 -192.5 0 0 {name=annot5 ref=M7}
C {sg13g2_pr/annotate_fet_params.sym} 310 -280 0 0 {name=annot6 ref=M0}
C {ngspice_probe.sym} 590 -190 0 0 {name=r1}
C {ngspice_probe.sym} 590 100 0 0 {name=r2}
C {ngspice_probe.sym} 190 -130 0 0 {name=r3}
C {ngspice_probe.sym} 790 100 0 1 {name=r4}
C {ngspice_probe.sym} 790 -190 0 1 {name=r5}
C {gmBoosting.sym} 590 350 0 0 {name=x1}
C {gnd.sym} 740 380 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 740 320 0 1 {name=p27 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -160 0 0 {name=p29 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} 740 340 0 1 {name=p32 sig_type=std_logic lab=Vb1_1}
C {lab_wire.sym} 740 360 0 1 {name=p33 sig_type=std_logic lab=Vb1_2}
C {lab_wire.sym} 440 320 0 0 {name=p34 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 440 340 0 0 {name=p35 sig_type=std_logic lab=Vy}
C {simulator_commands_shown.sym} -1000 -140 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"
      }
C {lab_wire.sym} 550 0 0 0 {name=p14 sig_type=std_logic lab=Vb1_1}
C {lab_wire.sym} 150 -210 0 0 {name=p19 sig_type=std_logic lab=Vb0}
C {lab_wire.sym} 830 0 0 1 {name=p15 sig_type=std_logic lab=Vb1_2}
C {lab_wire.sym} 830 -160 0 1 {name=p13 sig_type=std_logic lab=Vb2}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 -80 0 1 {name=M2
l=0.13u
w=85u
ng=100
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 480 70 0 0 {name=p10 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 450 80 0 0 {name=p23 sig_type=std_logic lab=Vy}
C {vsource.sym} 30 170 0 0 {name=V6 value=0.4 savecurrent=false}
C {lab_wire.sym} 30 140 0 0 {name=p9 sig_type=std_logic lab=Vb4}
C {ngspice_probe.sym} 590 -70 0 0 {name=r6}
C {ngspice_probe.sym} 790 -70 0 1 {name=r8}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 0 0 0 {name=M3
l=0.3u
w=44.4u
ng=22
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 810 0 0 1 {name=M12
l=0.3u
w=44.4u
ng=22
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -630 -320 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} -610 -30 0 1 {name=M8
l=0.13u
w=60u
ng=60
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -610 -120 0 1 {name=M13
l=0.3u
w=14u
ng=5
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ngspice_probe.sym} -630 -70 0 0 {name=r9}
C {ngspice_probe.sym} -590 -120 0 0 {name=r10}
C {sg13g2_pr/sg13_lv_pmos.sym} -380 -30 0 1 {name=M18
l=0.4u
w=27u
ng=9
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -380 -120 0 1 {name=M19
l=0.7u
w=5.8u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ngspice_probe.sym} -400 -70 0 0 {name=r11}
C {ngspice_probe.sym} -360 -120 0 0 {name=r12}
C {sg13g2_pr/annotate_fet_params.sym} -310 -90 0 0 {name=q ref=M13}
C {sg13g2_pr/sg13_lv_pmos.sym} -180 -120 0 0 {name=M20
l=0.4u
w=5.6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -140 -210 0 1 {name=M21
l=0.8u
w=9.7u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} -120 -120 0 1 {name=p25 sig_type=std_logic lab=VDD}
C {ngspice_probe.sym} -160 -150 0 0 {name=r13}
C {lab_wire.sym} -50 -210 0 1 {name=p31 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} -260 -120 0 1 {name=p28 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} -590 10 0 1 {name=p36 sig_type=std_logic lab=Vb0}
C {gnd.sym} -630 200 0 0 {name=l2 lab=0}
C {sg13g2_pr/sg13_lv_nmos.sym} -770 150 0 0 {name=M11
l=1u
w=2u
ng=2
m=10
model=sg13_lv_nmos
spiceprefix=X
}
C {isource.sym} -750 80 0 0 {name=I4 value=50u}
C {sg13g2_pr/annotate_fet_params.sym} -685 240 0 0 {name=q1 ref=M22}
C {sg13g2_pr/sg13_lv_nmos.sym} -650 160 0 0 {name=M14
l=1u
w=2u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -790 110 0 0 {name=p2 sig_type=std_logic lab=VbbN}
C {lab_wire.sym} -670 160 0 0 {name=p3 sig_type=std_logic lab=VbbN}
C {sg13g2_pr/sg13_lv_nmos.sym} -180 170 0 0 {name=M15
l=1u
w=2u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -200 170 0 0 {name=p4 sig_type=std_logic lab=VbbN}
C {sg13g2_pr/sg13_lv_nmos.sym} -420 170 0 0 {name=M16
l=1u
w=2u
ng=2
m=5
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -440 170 0 0 {name=p7 sig_type=std_logic lab=VbbN}
C {sg13g2_pr/sg13_lv_nmos.sym} -830 150 0 1 {name=M22
l=1u
w=1.8u
ng=2
m=10
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -850 120 0 0 {name=p8 sig_type=std_logic lab=IbiasN}
C {lab_wire.sym} 440 360 0 0 {name=p17 sig_type=std_logic lab=IbiasN}
C {vsource.sym} 100 350 0 0 {name=V2 value=0.71 savecurrent=false}
C {vsource.sym} 290 310 0 0 {name=V3 value=1.2 savecurrent=false}
C {vsource.sym} 140 380 0 0 {name=V4 value=0.987 savecurrent=false}
C {lab_wire.sym} 200 320 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {sg13g2_pr/annotate_fet_params.sym} 152.5 437.5 0 0 {name=annot7 ref=M10}
C {sg13g2_pr/sg13_lv_pmos.sym} 810 -160 0 1 {name=M17
l=0.4u
w=100u
ng=150
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -160 0 0 {name=M7
l=0.4u
w=100u
ng=150
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 320 0 0 {name=M10
l=0.8u
w=54.5u
ng=100
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -250 0 0 {name=M23
l=0.8u
w=63.2u
ng=103
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 810 -250 0 1 {name=M4
l=0.8u
w=63.2u
ng=103
m=4
model=sg13_lv_pmos
spiceprefix=X
}
