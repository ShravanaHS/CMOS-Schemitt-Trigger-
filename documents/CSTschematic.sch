v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 20 -230 20 {lab=#net1}
N -320 -30 -230 -30 {lab=#net2}
N -320 30 -320 50 {lab=GND}
N -260 80 -260 100 {lab=GND}
N -470 30 -470 50 {lab=GND}
N -170 -30 -170 20 {lab=vin}
N 80 -120 80 -80 {lab=#net3}
N 80 -20 80 20 {lab=vout}
N 80 80 80 120 {lab=#net4}
N 80 100 180 100 {lab=#net4}
N 80 -100 180 -100 {lab=#net3}
N 260 80 260 100 {lab=vcc}
N 240 100 260 100 {lab=vcc}
N 240 -100 260 -100 {lab=GND}
N 260 -100 260 -80 {lab=GND}
N 210 -150 210 -100 {lab=vcc}
N 80 -150 130 -150 {lab=vcc}
N 80 -50 130 -50 {lab=vcc}
N 130 50 140 50 {lab=GND}
N 80 50 130 50 {lab=GND}
N 130 150 140 150 {lab=GND}
N 80 150 130 150 {lab=GND}
N 40 -150 40 -50 {lab=vin}
N 40 50 40 150 {lab=vin}
N 40 -50 40 50 {lab=vin}
N 210 -0 210 60 {lab=vout}
N 80 -0 210 -0 {lab=vout}
N 210 -60 210 -0 {lab=vout}
C {res.sym} -200 -30 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -200 20 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -320 0 0 0 {name=V1 value="SINE(0 0.1 1k)" savecurrent=false}
C {vsource.sym} -260 50 0 0 {name=V2 value="pulse(0 3 1ms 1ms 1ms 10ms 20ms)" savecurrent=false}
C {gnd.sym} -320 50 0 0 {name=l1 lab=GND}
C {gnd.sym} -260 100 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 60 -150 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 60 -50 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 210 -80 3 0 {name=M3
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 60 50 0 0 {name=M4
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 60 150 0 0 {name=M5
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 210 80 1 0 {name=M6
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 260 -80 0 0 {name=l4 lab=GND}
C {vsource.sym} -470 0 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -470 50 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -470 -30 0 0 {name=p3 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 260 80 2 0 {name=p4 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 210 -150 1 0 {name=p1 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 130 -150 2 0 {name=p2 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 130 -50 2 0 {name=p5 sig_type=std_logic lab=vcc}
C {gnd.sym} 130 50 3 0 {name=l3 lab=GND}
C {gnd.sym} 130 150 3 0 {name=l6 lab=GND}
C {lab_pin.sym} 80 -180 1 0 {name=p6 sig_type=std_logic lab=vcc}
C {gnd.sym} 80 180 0 0 {name=l7 lab=GND}
C {ipin.sym} 40 0 0 0 {name=p7 lab=vin
}
C {opin.sym} 210 0 0 0 {name=p8 lab=vout}
C {lab_pin.sym} -170 -10 2 0 {name=p9 sig_type=std_logic lab=vin}
C {code_shown.sym} -540 140 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.tran 0.1m 50m

.save all
.end"}
C {gnd.sym} 210 100 0 0 {name=l8 lab=GND}
