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
} -1000 270 2 1 0.4 0.4 {}
T {600uA} 200 -280 0 0 0.4 0.4 {}
T {350uA} 520 -310 0 0 0.4 0.4 {}
T {0.21V} 595 65 0 0 0.2 0.2 {}
T {0.96V} 240 -150 0 0 0.2 0.2 {}
T {50u} -600 -300 0 0 0.4 0.4 {}
T {50u/4 = 12.5} -460 20 0 0 0.4 0.4 {}
T {1V} 645 -215 0 0 0.2 0.2 {}
T {0.369V} 515 -155 0 0 0.2 0.2 {}
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
N 780 0 790 0 {lab=GND}
N 780 200 790 200 {
lab=GND}
N 790 -320 990 -320 {lab=VDD}
N 590 130 590 200 {lab=GND}
N 790 130 790 200 {lab=GND}
N 780 0 780 200 {lab=GND}
N 600 200 780 200 {
lab=GND}
N 600 0 600 200 {lab=GND}
N 590 0 600 0 {lab=GND}
N 590 200 600 200 {
lab=GND}
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
N -610 -320 -610 -270 {lab=VDD}
N -160 -320 190 -320 {lab=VDD}
N -650 -70 -650 -30 {lab=Vb}
N -650 -70 -610 -70 {lab=Vb}
N -610 -70 -610 -60 {lab=Vb}
N -610 -210 -610 -70 {lab=Vb}
N -610 -30 -610 200 {lab=GND}
N -610 200 -320 200 {lab=GND}
N -610 -320 -320 -320 {lab=VDD}
N -320 -170 -320 -60 {lab=#net4}
N -320 -320 -320 -210 {lab=VDD}
N -280 -210 -280 -170 {lab=#net4}
N -320 -170 -280 -170 {lab=#net4}
N -320 -180 -320 -170 {lab=#net4}
N -320 -30 -320 200 {lab=GND}
N -160 -170 -160 -60 {lab=Vb0_}
N -160 -320 -160 -210 {lab=VDD}
N -120 -210 -120 -170 {lab=Vb0_}
N -160 -170 -120 -170 {lab=Vb0_}
N -160 -180 -160 -170 {lab=Vb0_}
N -160 -30 -160 200 {lab=GND}
N -320 -320 -160 -320 {lab=VDD}
N -320 200 -160 200 {lab=GND}
N 280 -50 280 70 {lab=Vx}
N 100 -50 100 80 {lab=Vy}
N 590 70 590 100 {
lab=Vx}
N 790 80 790 100 {
lab=Vy}
N -160 200 590 200 {lab=GND}
N 280 70 590 70 {lab=Vx}
N 590 30 590 70 {
lab=Vx}
N 100 80 790 80 {lab=Vy}
N 790 30 790 80 {
lab=Vy}
N 790 200 1080 200 {lab=GND}
N 590 -130 590 -30 {lab=#net5}
N 790 -130 790 -30 {lab=#net6}
C {vsource.sym} -850 -510 0 0 {name=V1 value=1.2 savecurrent=false}
C {lab_wire.sym} -850 -540 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 60 -80 0 0 {name=p5 sig_type=std_logic lab=VinCM}
C {lab_wire.sym} 320 -80 0 1 {name=p6 sig_type=std_logic lab=VinCM}
C {lab_wire.sym} 550 -250 0 0 {name=p11 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 830 -250 0 1 {name=p12 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 830 130 0 1 {name=p16 sig_type=std_logic lab=Vb4}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 130 0 0 {name=M5
l=0.8u
w=24.2u
ng=64
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 810 130 0 1 {name=M6
l=0.8u
w=24.2u
ng=64
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -250 0 0 {name=M9
l=0.8u
w=62u
ng=120
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 550 130 0 0 {name=p22 sig_type=std_logic lab=Vb4}
C {vsource.sym} -760 -510 0 0 {name=V2 value=0.78 savecurrent=false}
C {vsource.sym} -680 -510 0 0 {name=V3 value=0.56 savecurrent=false}
C {vsource.sym} -610 -510 0 0 {name=V4 value=0.48 savecurrent=false}
C {vsource.sym} -550 -510 0 0 {name=V5 value=0.71 savecurrent=false}
C {lab_wire.sym} -610 -320 0 0 {name=p7 sig_type=std_logic lab=VDD}
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
C {gnd.sym} -500 200 0 0 {name=l2 lab=GND}
C {gnd.sym} -850 -480 0 0 {name=l5 lab=GND}
C {gnd.sym} -760 -480 0 0 {name=l6 lab=GND}
C {gnd.sym} -680 -480 0 0 {name=l7 lab=GND}
C {gnd.sym} -610 -480 0 0 {name=l8 lab=GND}
C {gnd.sym} -550 -480 0 0 {name=l9 lab=GND}
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
C {devices/launcher.sym} 330 180 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} -990 -210 0 0 {name=s2 only_toplevel=false value=".include foldedCascode.save"}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -80 0 0 {name=M1
l=0.13u
w=70u
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
C {sg13g2_pr/annotate_fet_params.sym} 957.5 -322.5 0 0 {name=annot2 ref=M9}
C {sg13g2_pr/annotate_fet_params.sym} 957.5 -52.5 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} 957.5 77.5 0 0 {name=annot4 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} 957.5 -192.5 0 0 {name=annot5 ref=M7}
C {sg13g2_pr/annotate_fet_params.sym} 310 -280 0 0 {name=annot6 ref=M0}
C {ngspice_probe.sym} 590 -190 0 0 {name=r1}
C {ngspice_probe.sym} 590 100 0 0 {name=r2}
C {ngspice_probe.sym} 190 -130 0 0 {name=r3}
C {ngspice_probe.sym} 790 100 0 1 {name=r4}
C {ngspice_probe.sym} 790 -190 0 1 {name=r5}
C {isource.sym} -610 -240 0 0 {name=I0 value=50u}
C {sg13g2_pr/sg13_lv_nmos.sym} -630 -30 0 0 {name=M11
l=0.3u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ngspice_probe.sym} -610 -90 0 0 {name=r7}
C {lab_wire.sym} -650 -70 0 0 {name=p3 sig_type=std_logic lab=Vb}
C {gnd.sym} -360 200 0 0 {name=l3 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} -340 -30 0 0 {name=M14
l=0.3u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -360 -30 0 0 {name=p17 sig_type=std_logic lab=Vb}
C {sg13g2_pr/sg13_lv_pmos.sym} -300 -210 0 1 {name=M15
l=0.3u
w=4.4u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} -200 200 0 0 {name=l13 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} -180 -30 0 0 {name=M16
l=0.3u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -200 -30 0 0 {name=p21 sig_type=std_logic lab=Vb}
C {sg13g2_pr/sg13_lv_pmos.sym} -140 -210 0 1 {name=M17
l=0.3u
w=9.5u
ng=5
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} -120 -210 0 1 {name=p8 sig_type=std_logic lab=Vb0_}
C {gmBoosting.sym} 590 350 0 0 {name=x1}
C {gnd.sym} 740 380 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 740 320 0 1 {name=p27 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -160 0 0 {name=M7
l=0.4u
w=63u
ng=120
m=4
model=sg13_lv_pmos
spiceprefix=X
}
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
C {lab_wire.sym} -610 -540 0 0 {name=p2 sig_type=std_logic lab=Vb2}
C {lab_wire.sym} -680 -540 0 0 {name=p4 sig_type=std_logic lab=Vb1}
C {lab_wire.sym} 150 -210 0 0 {name=p19 sig_type=std_logic lab=Vb0}
C {lab_wire.sym} -550 -540 0 0 {name=p20 sig_type=std_logic lab=Vb3}
C {lab_wire.sym} 830 0 0 1 {name=p15 sig_type=std_logic lab=Vb1_2}
C {lab_wire.sym} 830 -160 0 1 {name=p13 sig_type=std_logic lab=Vb2}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 -80 0 1 {name=M2
l=0.13u
w=70u
ng=100
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {vsource.sym} -50 170 0 0 {name=V10 value=0.78 savecurrent=false}
C {lab_wire.sym} -50 140 0 0 {name=p18 sig_type=std_logic lab=Vb0}
C {sg13g2_pr/sg13_lv_pmos.sym} 810 -250 0 1 {name=M4
l=0.8u
w=62u
ng=120
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 810 -160 0 1 {name=M10
l=0.4u
w=63u
ng=120
m=4
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
w=44u
ng=18
m=6
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 810 0 0 1 {name=M12
l=0.3u
w=44u
ng=18
m=6
model=sg13_lv_nmos
spiceprefix=X
}
