v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 260 1170 300 1170 {lab=Vi1}
N 660 1130 770 1130 {lab=Vo1}
N 710 1170 770 1170 {lab=Vo2}
N 420 1170 710 1170 {lab=Vo2}
N 420 1130 660 1130 {lab=Vo1}
N 660 1130 660 1190 {lab=Vo1}
N 710 1170 710 1190 {lab=Vo2}
N 340 1230 340 1240 {lab=#net1}
N 110 1230 260 1230 {lab=GND}
N 110 1130 110 1170 {lab=Vi2}
N 110 1130 300 1130 {lab=Vi2}
C {launcher.sym} 70 1380 0 0 {name=h4
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
C {devices/launcher.sym} 70 1410 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} -700 1030 0 0 {name=s1 only_toplevel=false value="
.include icmr.save
.nodeset v(Vo1)=0.6 v(Vo2)=0.6
.temp 65
.control
save all
op
write icmr.raw

dc Vcm 0.4 0.8 0.5m
let gain = (v(Vo1)-v(Vo2))/(v(Vi1)-v(Vi2))
plot gain
plot v(Vo1) gain/3k


.endc
"
}
C {foldedCascode.sym} 360 1150 0 0 {name=x1}
C {vsource.sym} -200 1270 0 0 {name=V1 value=1.2 savecurrent=false}
C {gnd.sym} -200 1300 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -200 1240 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 360 1080 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {isource.sym} 340 1040 0 0 {name=I0 value=50u}
C {lab_wire.sym} 340 1010 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 360 1220 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 770 1130 0 1 {name=p5 sig_type=std_logic lab=Vo1}
C {lab_wire.sym} 770 1170 0 1 {name=p6 sig_type=std_logic lab=Vo2}
C {gnd.sym} 260 1230 0 0 {name=l3 lab=GND}
C {capa-2.sym} 660 1220 0 0 {name=C1
m=1
value=1.2p
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 710 1220 0 0 {name=C2
m=1
value=1.2p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 660 1250 0 0 {name=l7 lab=GND}
C {gnd.sym} 710 1250 0 0 {name=l8 lab=GND}
C {simulator_commands_shown.sym} -720 890 0 0 {
name=Libs_Ngspice1
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
C {vsource.sym} 340 1270 0 0 {name=V5 value=0.4 savecurrent=false}
C {gnd.sym} 340 1300 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 260 1170 0 1 {name=p2 sig_type=std_logic lab=Vi1}
C {lab_wire.sym} 170 1130 0 1 {name=p7 sig_type=std_logic lab=Vi2}
C {vsource.sym} 0 1200 0 0 {name=Vcm value=0.6 savecurrent=false}
C {gnd.sym} 0 1230 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 0 1170 0 1 {name=p8 sig_type=std_logic lab=Vcm}
C {vsource_arith.sym} 110 1200 0 0 {name=E2 VOL=(v(Vcm)+1n)}
C {vsource_arith.sym} 260 1200 0 0 {name=E3 VOL=(v(Vcm)-1n)}
