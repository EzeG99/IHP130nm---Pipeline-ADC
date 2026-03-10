v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 660 1130 770 1130 {lab=Vo1}
N 710 1170 770 1170 {lab=Vo2}
N 430 1170 710 1170 {lab=Vo2}
N 430 1130 660 1130 {lab=Vo1}
N 660 1130 660 1190 {lab=Vo1}
N 710 1170 710 1190 {lab=Vo2}
N 340 1230 340 1240 {lab=#net1}
N 280 1130 300 1130 {lab=#net2}
N 280 920 320 920 {lab=#net2}
N 280 920 280 1130 {lab=#net2}
N 380 920 430 920 {lab=Vo1}
N 430 920 430 1130 {lab=Vo1}
N 420 1130 430 1130 {lab=Vo1}
N -250 1030 -100 1030 {lab=GND}
N 260 1130 280 1130 {lab=#net2}
N 280 1170 300 1170 {lab=#net3}
N 280 1380 320 1380 {lab=#net3}
N 280 1170 280 1380 {lab=#net3}
N 380 1380 430 1380 {lab=Vo2}
N 430 1170 430 1380 {lab=Vo2}
N 260 1170 280 1170 {lab=#net3}
N 420 1170 430 1170 {lab=Vo2}
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
C {code_shown.sym} -1100 1730 2 1 {name=s1 only_toplevel=false value="
.include settiling.save
.nodeset v(Vo1)=0.6 v(Vo2)=0.6
.options reltol=1e-5 abstol=1e-12 vntol=1e-7
.temp 65
.control
save all
op
write settiling.raw

tran 0.1n 1u

meas tran v_final FIND v(vo2) AT=990n
meas tran v_start FIND v(vo2) AT=490n

let delta_v = v_final - v_start

*4. Calcular los márgenes de error (0.5 LSB)
*Para 8 bits: 1/512 = 0.00195
*Para 10 bits: 1/2048 = 0.000488
let error_8b  = 0.00195 * delta_v
let error_10b = 0.000488 * delta_v

let target_8b  = v_final - error_8b
let target_10b = v_final - error_10b

meas tran ts_8bits  TRIG AT=500n TARG v(Vo2) VAL=target_8b  CROSS=LAST FROM=500n TO=990n
meas tran ts_10bits TRIG AT=500n TARG v(Vo2) VAL=target_10b CROSS=LAST FROM=500n TO=990n
  
  * Imprimir resultados
  print ts_8bits ts_10bits


*SLEW RATE
  let slope = deriv(v(Vo2))
  meas tran max_sr MAX slope FROM=505n TO=600n


plot v(Vin+) v(Vo2)



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
C {simulator_commands_shown.sym} -1100 900 0 0 {
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
C {vsource.sym} -100 1000 0 0 {name=Vin value="0.6 dc PULSE(0.8 0.4 0 0.1p 0.1p 0.5u 1u)" savecurrent=false}
C {gnd.sym} -100 1030 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -100 970 0 1 {name=p2 sig_type=std_logic lab=Vin+}
C {vsource.sym} -250 1000 0 0 {name=Vin1 value="0.6 dc PULSE(0.4 0.8 0 0.1p 0.1p 0.5u 1u)" savecurrent=false}
C {lab_wire.sym} 200 1130 0 0 {name=p8 sig_type=std_logic lab=Vin-}
C {lab_wire.sym} -250 970 0 1 {name=p7 sig_type=std_logic lab=Vin-}
C {lab_wire.sym} 200 1170 0 0 {name=p9 sig_type=std_logic lab=Vin+}
C {res.sym} 350 920 1 1 {name=R4
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 230 1130 1 1 {name=R1
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 230 1170 1 1 {name=R2
value=5
footprint=1206
device=resistor
m=1}
C {res.sym} 350 1380 1 1 {name=R3
value=5
footprint=1206
device=resistor
m=1}
