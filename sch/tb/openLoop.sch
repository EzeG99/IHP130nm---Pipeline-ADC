v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 260 1170 300 1170 {lab=#net1}
N 660 1130 770 1130 {lab=Vo1}
N 710 1170 770 1170 {lab=Vo2}
N 420 1170 710 1170 {lab=Vo2}
N 420 1130 660 1130 {lab=Vo1}
N 200 1130 300 1130 {lab=#net2}
N 200 1190 260 1190 {lab=#net1}
N 260 1170 260 1190 {lab=#net1}
N 660 1130 660 1190 {lab=Vo1}
N 710 1170 710 1190 {lab=Vo2}
N 300 1230 340 1230 {lab=V5_}
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
C {code_shown.sym} -510 700 0 0 {name=s1 only_toplevel=false value="
.include openLoop.save
.nodeset v(Vo1)=0.6 v(Vo2)=0.6 
.temp 65
.control
save all
op
write openLoop.raw
dc V5 0.3 0.6 0.0001
plot Vo1
meas dc V5_at_Vo1 FIND V(V5_) WHEN V(Vo1)=0.75
let VcmIdeal = V5_at_Vo1

print VcmIdeal
alter @V5[dc] $&VcmIdeal $ vector

ac dec 1k 1 100G
let Vout_diff = v(Vo2)-v(Vo1)
let Av = db(Vout_diff)

meas ac Ao FIND Av WHEN frequency=10

meas ac UGBW WHEN Av=0 CROSS=1

let phase_vec = 180/pi*ph(Vout_diff)
let phase_vec_ = unwrap(phase_vec)

meas ac PHASE_UGBW FIND phase_vec WHEN frequency=UGBW

let PM = 180 + PHASE_UGBW

print Ao
print UGBW
print PM
plot Av
plot phase_vec_

.endc
"
}
C {foldedCascode.sym} 360 1150 0 0 {name=x1}
C {vsource.sym} -200 1270 0 0 {name=V1 value=1.5 savecurrent=false}
C {gnd.sym} -200 1300 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -200 1240 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 360 1080 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 360 1220 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 770 1130 0 1 {name=p5 sig_type=std_logic lab=Vo1}
C {lab_wire.sym} 770 1170 0 1 {name=p6 sig_type=std_logic lab=Vo2}
C {vsource.sym} 200 1220 0 0 {name=V3 value=0.75 savecurrent=false}
C {gnd.sym} 200 1250 0 0 {name=l3 lab=GND}
C {vsource.sym} 200 1160 0 0 {name=V4 value="0 AC 1" savecurrent=false}
C {ngspice_get_expr.sym} 770 1320 0 0 {name=r2 node="[format %.4g [expr 1 / [ngspice::get_node \{@n.x1.xm1.nsg13_lv_pmos[gds]\}] ] ]"
descr="ro1="}
C {ngspice_get_expr.sym} 770 1350 0 0 {name=r3 node="[format %.4g [expr 1 / [ngspice::get_node \{@n.x1.xm5.nsg13_lv_nmos[gds]\}] ] ]"
descr="ro5="}
C {ngspice_get_expr.sym} 770 1390 0 0 {name=r4 node="[format %.4g [expr 1 / [ngspice::get_node \{@n.x1.xm3.nsg13_lv_nmos[gds]\}] ] ]"
descr="ro3="}
C {ngspice_get_expr.sym} 770 1430 0 0 {name=r5 node="[format %.4g [expr 1 / [ngspice::get_node \{@n.x1.xm7.nsg13_lv_pmos[gds]\}] ] ]"
descr="ro7="}
C {ngspice_get_expr.sym} 770 1470 0 0 {name=r6 node="[format %.4g [expr 1 / [ngspice::get_node \{@n.x1.xm9.nsg13_lv_pmos[gds]\}] ] ]"
descr="ro9="}
C {ngspice_get_expr.sym} 840 1390 0 0 {name=r1 node="[format %.4g [expr [ngspice::get_node \{@n.x1.xm3.nsg13_lv_nmos[gm]\}] ] ]"
descr="gm3="}
C {capa-2.sym} 660 1220 0 0 {name=C1
m=1
value=1.25p
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 710 1220 0 0 {name=C2
m=1
value=1.25p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 660 1250 0 0 {name=l7 lab=GND}
C {gnd.sym} 710 1250 0 0 {name=l8 lab=GND}
C {ngspice_get_expr.sym} 840 1430 0 0 {name=r7 node="[format %.4g [expr [ngspice::get_node \{@n.x1.xm7.nsg13_lv_pmos[gm]\}] ] ]"
descr="gm7="}
C {simulator_commands_shown.sym} 0 730 0 0 {
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
C {vsource.sym} 340 1260 0 0 {name=V5 value=0.4026965 savecurrent=false}
C {gnd.sym} 340 1290 0 0 {name=l5 lab=GND}
C {isource.sym} 340 1040 0 0 {name=I0 value=50u}
C {lab_wire.sym} 340 1010 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 300 1230 0 0 {name=p4 sig_type=std_logic lab=V5_}
