v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 110 240 110 {lab=#net1}
N 150 60 240 60 {lab=#net2}
N 150 120 150 140 {lab=GND}
N 210 170 210 190 {lab=GND}
N 0 120 0 140 {lab=GND}
N 300 60 300 110 {lab=vin}
N 550 -30 550 10 {lab=#net3}
N 550 70 550 110 {lab=vout}
N 550 170 550 210 {lab=#net4}
N 550 190 650 190 {lab=#net4}
N 550 -10 650 -10 {lab=#net3}
N 730 170 730 190 {lab=vcc}
N 710 190 730 190 {lab=vcc}
N 710 -10 730 -10 {lab=GND}
N 730 -10 730 10 {lab=GND}
N 680 -60 680 -10 {lab=vcc}
N 550 -60 600 -60 {lab=vcc}
N 550 40 600 40 {lab=vcc}
N 600 140 610 140 {lab=GND}
N 550 140 600 140 {lab=GND}
N 600 240 610 240 {lab=GND}
N 550 240 600 240 {lab=GND}
N 510 -60 510 40 {lab=vin}
N 510 140 510 240 {lab=vin}
N 510 40 510 140 {lab=vin}
N 680 90 680 150 {lab=vout}
N 550 90 680 90 {lab=vout}
N 680 30 680 90 {lab=vout}
N 680 190 680 250 {lab=GND}
C {res.sym} 270 60 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 270 110 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 150 90 0 0 {name=V1 value="SINE(0 0.1 1k)" savecurrent=false}
C {vsource.sym} 210 140 0 0 {name=V2 value="pulse(0 3 1ms 1ms 1ms 10ms 20ms)" savecurrent=false}
C {gnd.sym} 150 140 0 0 {name=l1 lab=GND}
C {gnd.sym} 210 190 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 530 -60 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 530 40 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 680 10 3 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 530 140 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} 530 240 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 680 170 1 0 {name=M6
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
C {gnd.sym} 730 10 0 0 {name=l4 lab=GND}
C {vsource.sym} 0 90 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 0 140 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 0 60 0 0 {name=p3 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 730 170 2 0 {name=p4 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 680 -60 1 0 {name=p1 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 600 -60 2 0 {name=p2 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 600 40 2 0 {name=p5 sig_type=std_logic lab=vcc}
C {gnd.sym} 600 140 3 0 {name=l3 lab=GND}
C {gnd.sym} 600 240 3 0 {name=l6 lab=GND}
C {lab_pin.sym} 550 -90 1 0 {name=p6 sig_type=std_logic lab=vcc}
C {gnd.sym} 550 270 0 0 {name=l7 lab=GND}
C {ipin.sym} 510 90 0 0 {name=p7 lab=vin
}
C {opin.sym} 680 90 0 0 {name=p8 lab=vout}
C {lab_pin.sym} 300 80 2 0 {name=p9 sig_type=std_logic lab=vin}
C {code_shown.sym} -70 230 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.tran 0.1m 50m

.save all
.end"}
C {gnd.sym} 680 250 0 0 {name=l8 lab=GND}
