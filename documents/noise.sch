v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -140 -100 -50 -100 {lab=#net1}
N -140 -40 -140 -20 {lab=GND}
C {res.sym} -20 -100 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -140 -70 0 0 {name="V1" value="sin(0 5 100)" savecurrent=false}
C {gnd.sym} -140 -20 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 10 -100 0 0 {name=p1 sig_type=std_logic lab=vo
}
C {code_shown.sym} -10 50 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.tran 0.1n 100n
.save all
.end"
}
