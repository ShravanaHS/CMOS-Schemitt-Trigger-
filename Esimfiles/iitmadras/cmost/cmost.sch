EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:cmost-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L sine v2
U 1 1 678B8260
P 2200 3650
F 0 "v2" H 2000 3750 60  0000 C CNN
F 1 "sine" H 2000 3600 60  0000 C CNN
F 2 "R1" H 1900 3650 60  0000 C CNN
F 3 "" H 2200 3650 60  0000 C CNN
	1    2200 3650
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR01
U 1 1 678B8374
P 2200 4300
F 0 "#PWR01" H 2200 4050 50  0001 C CNN
F 1 "eSim_GND" H 2200 4150 50  0000 C CNN
F 2 "" H 2200 4300 50  0001 C CNN
F 3 "" H 2200 4300 50  0001 C CNN
	1    2200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4100 2200 4300
Wire Wire Line
	2200 3200 4700 3200
$Comp
L eSim_GND #PWR02
U 1 1 678B884C
P 5200 5500
F 0 "#PWR02" H 5200 5250 50  0001 C CNN
F 1 "eSim_GND" H 5200 5350 50  0000 C CNN
F 2 "" H 5200 5500 50  0001 C CNN
F 3 "" H 5200 5500 50  0001 C CNN
	1    5200 5500
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR03
U 1 1 678B89CD
P 7100 2450
F 0 "#PWR03" H 7100 2200 50  0001 C CNN
F 1 "eSim_GND" H 7100 2300 50  0000 C CNN
F 2 "" H 7100 2450 50  0001 C CNN
F 3 "" H 7100 2450 50  0001 C CNN
	1    7100 2450
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR04
U 1 1 678B89EF
P 7600 5050
F 0 "#PWR04" H 7600 4800 50  0001 C CNN
F 1 "eSim_GND" H 7600 4900 50  0000 C CNN
F 2 "" H 7600 5050 50  0001 C CNN
F 3 "" H 7600 5050 50  0001 C CNN
	1    7600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1850 4700 5050
Connection ~ 4700 2850
Connection ~ 4700 3800
Connection ~ 4700 3050
Wire Wire Line
	5200 4000 5200 4850
Wire Wire Line
	5200 2050 5200 2650
Wire Wire Line
	5200 3050 5200 3600
Wire Wire Line
	6800 2600 6800 4200
Wire Wire Line
	6800 3400 5200 3400
Connection ~ 5200 3400
Connection ~ 6800 3400
Wire Wire Line
	5200 5250 5200 5500
Connection ~ 5200 5450
Wire Wire Line
	7100 2300 7100 2450
Wire Wire Line
	5200 4500 6600 4500
Connection ~ 5200 4500
Wire Wire Line
	5200 2300 6600 2300
Wire Wire Line
	5200 2300 5200 2350
Connection ~ 5200 2350
$Comp
L DC v3
U 1 1 678B97B3
P 7600 4450
F 0 "v3" H 7400 4550 60  0000 C CNN
F 1 "DC" H 7400 4400 60  0000 C CNN
F 2 "R1" H 7300 4450 60  0000 C CNN
F 3 "" H 7600 4450 60  0000 C CNN
	1    7600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4900 7600 5050
Connection ~ 7100 3900
Wire Wire Line
	7600 1850 7600 4000
Connection ~ 7600 3900
Wire Wire Line
	7100 3900 7600 3900
Wire Wire Line
	7600 3900 7600 3950
Connection ~ 7600 3950
Wire Wire Line
	5200 1400 5200 1650
Wire Wire Line
	5200 1400 5350 1400
Wire Wire Line
	5350 1400 5350 1850
Connection ~ 5350 1850
Connection ~ 4700 3200
Text GLabel 3300 3200 0    60   Input ~ 0
vin
Text GLabel 6800 3250 0    60   Output ~ 0
vout
Wire Wire Line
	5350 1850 7600 1850
Wire Wire Line
	7100 3900 7100 4500
$Comp
L mosfet_n M2
U 1 1 67CB48CF
P 5000 4850
F 0 "M2" H 5000 4700 50  0000 R CNN
F 1 "mosfet_n" H 5100 4800 50  0000 R CNN
F 2 "" H 5300 4550 29  0000 C CNN
F 3 "" H 5100 4650 60  0000 C CNN
	1    5000 4850
	1    0    0    -1  
$EndComp
$Comp
L mosfet_n M1
U 1 1 67CB492C
P 5000 3600
F 0 "M1" H 5000 3450 50  0000 R CNN
F 1 "mosfet_n" H 5100 3550 50  0000 R CNN
F 2 "" H 5300 3300 29  0000 C CNN
F 3 "" H 5100 3400 60  0000 C CNN
	1    5000 3600
	1    0    0    -1  
$EndComp
$Comp
L mosfet_n M6
U 1 1 67CB4975
P 7000 4300
F 0 "M6" H 7000 4150 50  0000 R CNN
F 1 "mosfet_n" H 7100 4250 50  0000 R CNN
F 2 "" H 7300 4000 29  0000 C CNN
F 3 "" H 7100 4100 60  0000 C CNN
	1    7000 4300
	0    1    1    0   
$EndComp
$Comp
L mosfet_p M3
U 1 1 67CB49BC
P 5050 1850
F 0 "M3" H 5000 1900 50  0000 R CNN
F 1 "mosfet_p" H 5100 2000 50  0000 R CNN
F 2 "" H 5300 1950 29  0000 C CNN
F 3 "" H 5100 1850 60  0000 C CNN
	1    5050 1850
	1    0    0    -1  
$EndComp
$Comp
L mosfet_p M4
U 1 1 67CB4A1D
P 5050 2850
F 0 "M4" H 5000 2900 50  0000 R CNN
F 1 "mosfet_p" H 5100 3000 50  0000 R CNN
F 2 "" H 5300 2950 29  0000 C CNN
F 3 "" H 5100 2850 60  0000 C CNN
	1    5050 2850
	1    0    0    -1  
$EndComp
$Comp
L mosfet_p M5
U 1 1 67CB4A6E
P 6800 2450
F 0 "M5" H 6750 2500 50  0000 R CNN
F 1 "mosfet_p" H 6850 2600 50  0000 R CNN
F 2 "" H 7050 2550 29  0000 C CNN
F 3 "" H 6850 2450 60  0000 C CNN
	1    6800 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 5050 4900 5050
Wire Wire Line
	5300 5200 5300 5300
Wire Wire Line
	5200 5300 5450 5300
Connection ~ 5200 5300
Wire Wire Line
	4900 3800 4700 3800
Connection ~ 5200 3450
Wire Wire Line
	5300 3950 5450 3950
Wire Wire Line
	5450 3950 5450 5300
Connection ~ 5300 5300
Wire Wire Line
	4900 2850 4700 2850
Wire Wire Line
	4900 1850 4700 1850
Wire Wire Line
	5300 2000 5450 2000
Wire Wire Line
	5450 2000 5450 1850
Connection ~ 5450 1850
Wire Wire Line
	5300 3000 5600 3000
Wire Wire Line
	5600 3000 5600 1850
Connection ~ 5600 1850
Wire Wire Line
	7000 2300 7100 2300
Wire Wire Line
	6950 2200 6950 1850
Connection ~ 6950 1850
Wire Wire Line
	7100 4500 7000 4500
Wire Wire Line
	6650 4600 6650 4750
Wire Wire Line
	6650 4750 7550 4750
Wire Wire Line
	7550 4750 7550 5000
Wire Wire Line
	7550 5000 7600 5000
Connection ~ 7600 5000
$EndSCHEMATC
