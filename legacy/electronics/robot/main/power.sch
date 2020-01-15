EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
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
LIBS:valves
LIBS:thunderbots-symbols
LIBS:main-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 15
Title ""
Date "19 jun 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR0184
U 1 1 53390620
P 6100 6000
F 0 "#PWR0184" H 6100 6000 30  0001 C CNN
F 1 "GND" H 6100 5930 30  0001 C CNN
F 2 "" H 6100 6000 60  0001 C CNN
F 3 "" H 6100 6000 60  0001 C CNN
	1    6100 6000
	0    -1   -1   0   
$EndComp
Text Notes 5650 5850 0    60   ~ 0
Power
$Comp
L +3.3V #PWR0185
U 1 1 52433C72
P 5200 6000
F 0 "#PWR0185" H 5200 5960 30  0001 C CNN
F 1 "+3.3V" H 5200 6110 30  0000 C CNN
F 2 "" H 5200 6000 60  0001 C CNN
F 3 "" H 5200 6000 60  0001 C CNN
	1    5200 6000
	0    -1   -1   0   
$EndComp
$Comp
L R R39
U 1 1 52433C71
P 5400 6000
F 0 "R39" V 5480 6000 50  0000 C CNN
F 1 "100R" V 5400 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 5400 6000 60  0001 C CNN
F 3 "" H 5400 6000 60  0001 C CNN
F 4 "" H 5400 6000 60  0001 C CNN "Digikey Part"
	1    5400 6000
	0    1    -1   0   
$EndComp
$Comp
L LED D18
U 1 1 52433C70
P 5800 6000
F 0 "D18" H 5800 6100 50  0000 C CNN
F 1 "GRN" H 5800 5900 50  0000 C CNN
F 2 "LEDs:LED-1206" H 5800 6000 60  0001 C CNN
F 3 "" H 5800 6000 60  0001 C CNN
F 4 "160-1169-1-ND" H 5800 6000 60  0001 C CNN "Field1"
	1    5800 6000
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 524320CE
P 4800 2450
F 0 "R8" V 4880 2450 50  0000 C CNN
F 1 "1MR" V 4800 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 4800 2450 60  0001 C CNN
F 3 "" H 4800 2450 60  0001 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR0186
U 1 1 52425F32
P 6200 2250
F 0 "#PWR0186" H 6200 2200 20  0001 C CNN
F 1 "+BATT" H 6200 2350 30  0000 C CNN
F 2 "" H 6200 2250 60  0001 C CNN
F 3 "" H 6200 2250 60  0001 C CNN
	1    6200 2250
	1    0    0    -1  
$EndComp
$Comp
L C C75
U 1 1 52425F31
P 6200 2500
F 0 "C75" H 6250 2600 50  0000 L CNN
F 1 "1uF" H 6250 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6200 2500 60  0001 C CNN
F 3 "" H 6200 2500 60  0001 C CNN
	1    6200 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0187
U 1 1 52420F75
P 10700 1900
F 0 "#PWR0187" H 10700 1900 30  0001 C CNN
F 1 "GND" H 10700 1830 30  0001 C CNN
F 2 "" H 10700 1900 60  0001 C CNN
F 3 "" H 10700 1900 60  0001 C CNN
	1    10700 1900
	1    0    0    -1  
$EndComp
$Comp
L C C74
U 1 1 52420F74
P 10700 1650
F 0 "C74" H 10750 1750 50  0000 L CNN
F 1 "1uF" H 10750 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10700 1650 60  0001 C CNN
F 3 "" H 10700 1650 60  0001 C CNN
	1    10700 1650
	1    0    0    -1  
$EndComp
$Comp
L C C73
U 1 1 52420F73
P 8400 1450
F 0 "C73" H 8450 1550 50  0000 L CNN
F 1 "1uF" H 8450 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8400 1450 60  0001 C CNN
F 3 "" H 8400 1450 60  0001 C CNN
	1    8400 1450
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR0188
U 1 1 52420F72
P 10400 1300
F 0 "#PWR0188" H 10400 1270 20  0001 C CNN
F 1 "+9V" H 10400 1410 30  0000 C CNN
F 2 "" H 10400 1300 60  0001 C CNN
F 3 "" H 10400 1300 60  0001 C CNN
	1    10400 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0189
U 1 1 52420F77
P 10400 2300
F 0 "#PWR0189" H 10400 2300 30  0001 C CNN
F 1 "GND" H 10400 2230 30  0001 C CNN
F 2 "" H 10400 2300 60  0001 C CNN
F 3 "" H 10400 2300 60  0001 C CNN
	1    10400 2300
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 52420F71
P 10400 2050
F 0 "R7" V 10480 2050 50  0000 C CNN
F 1 "1kR" V 10400 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 10400 2050 60  0001 C CNN
F 3 "" H 10400 2050 60  0001 C CNN
	1    10400 2050
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 52420F70
P 10400 1650
F 0 "R6" V 10480 1650 50  0000 C CNN
F 1 "6kR" V 10400 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 10400 1650 60  0001 C CNN
F 3 "" H 10400 1650 60  0001 C CNN
	1    10400 1650
	1    0    0    -1  
$EndComp
NoConn ~ 8800 1600
$Comp
L GND #PWR0190
U 1 1 52420F6F
P 8700 1600
F 0 "#PWR0190" H 8700 1600 30  0001 C CNN
F 1 "GND" H 8700 1530 30  0001 C CNN
F 2 "" H 8700 1600 60  0001 C CNN
F 3 "" H 8700 1600 60  0001 C CNN
	1    8700 1600
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR0191
U 1 1 52420F81
P 9500 800
F 0 "#PWR0191" H 9500 750 20  0001 C CNN
F 1 "+BATT" H 9500 900 30  0000 C CNN
F 2 "" H 9500 800 60  0001 C CNN
F 3 "" H 9500 800 60  0001 C CNN
	1    9500 800 
	1    0    0    -1  
$EndComp
NoConn ~ 8800 1400
NoConn ~ 10200 1500
$Comp
L LP2951 U23
U 1 1 52420F83
P 9500 1500
F 0 "U23" H 9500 1450 60  0000 C CNN
F 1 "LP2951" H 9500 1550 60  0000 C CNN
F 2 "Thunderbots:SOIC-8_3.9x4.9mm_Pitch1.27mm_HandSoldering" H 9500 1500 60  0001 C CNN
F 3 "" H 9500 1500 60  0001 C CNN
	1    9500 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0192
U 1 1 52425F33
P 9500 2200
F 0 "#PWR0192" H 9500 2200 30  0001 C CNN
F 1 "GND" H 9500 2130 30  0001 C CNN
F 2 "" H 9500 2200 60  0001 C CNN
F 3 "" H 9500 2200 60  0001 C CNN
	1    9500 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0193
U 1 1 506E24C9
P 7850 4850
F 0 "#PWR0193" H 7850 4850 30  0001 C CNN
F 1 "GND" H 7850 4780 30  0001 C CNN
F 2 "" H 7850 4850 60  0001 C CNN
F 3 "" H 7850 4850 60  0001 C CNN
	1    7850 4850
	1    0    0    -1  
$EndComp
$Comp
L ZENER D3
U 1 1 506E24CD
P 7850 4600
F 0 "D3" H 7850 4700 50  0000 C CNN
F 1 "TVS" H 7850 4500 40  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 7850 4600 60  0001 C CNN
F 3 "" H 7850 4600 60  0001 C CNN
F 4 "SMAJ24CABCT-ND" H 7850 4600 60  0001 C CNN "Digi-Key Part"
	1    7850 4600
	0    1    1    0   
$EndComp
$Comp
L R R58
U 1 1 4FB9793E
P 4950 4750
F 0 "R58" V 5030 4750 50  0000 C CNN
F 1 "10kR" V 4950 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 4950 4750 60  0001 C CNN
F 3 "" H 4950 4750 60  0001 C CNN
	1    4950 4750
	0    1    1    0   
$EndComp
Text Label 3350 3500 0    60   ~ 0
FUSE_IN
Text Label 4550 3500 0    60   ~ 0
FUSE_OUT
$Comp
L IRF7404 Q27
U 1 1 4F6C23C6
P 6950 4200
F 0 "Q27" H 6950 4390 60  0000 R CNN
F 1 "IRF9310PbF" H 7200 3800 60  0000 R CNN
F 2 "Thunderbots:SOIC-8_3.9x4.9mm_Pitch1.27mm_HandSoldering" H 6950 4200 60  0001 C CNN
F 3 "" H 6950 4200 60  0001 C CNN
F 4 "IRF9310TRPBFCT-ND" H 6950 4200 60  0001 C CNN "Field1"
	1    6950 4200
	1    0    0    -1  
$EndComp
$Comp
L IRF7404 Q28
U 1 1 4F6C238C
P 7050 3050
F 0 "Q28" H 7050 3240 60  0000 R CNN
F 1 "IRF9310PbF" H 7300 3450 60  0000 R CNN
F 2 "Thunderbots:SOIC-8_3.9x4.9mm_Pitch1.27mm_HandSoldering" H 7050 3050 60  0001 C CNN
F 3 "" H 7050 3050 60  0001 C CNN
F 4 "IRF9310TRPBFCT-ND" H 7050 3050 60  0001 C CNN "Field1"
	1    7050 3050
	1    0    0    1   
$EndComp
$Comp
L Q_NMOS_GSD Q14
U 1 1 4F698F29
P 4500 2750
F 0 "Q14" H 4510 2920 60  0000 R CNN
F 1 "Q_NMOS_GSD" H 4510 2600 60  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4500 2750 60  0001 C CNN
F 3 "" H 4500 2750 60  0001 C CNN
F 4 "568-5818-1-ND" H 4500 2750 60  0001 C CNN "Field1"
	1    4500 2750
	1    0    0    1   
$EndComp
$Comp
L FUSE F1
U 1 1 4F6971B8
P 4000 3500
F 0 "F1" H 4100 3550 40  0000 C CNN
F 1 "15A" H 3900 3450 40  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_Reflow" H 4000 3500 60  0001 C CNN
F 3 "" H 4000 3500 60  0001 C CNN
F 4 "486-1688-1-ND" H 4000 3500 60  0001 C CNN "Digi-Key Part"
	1    4000 3500
	1    0    0    -1  
$EndComp
Text Notes 5300 3050 0    60   ~ 0
SP3T PCB Conn
Text Notes 5000 3400 0    60   ~ 0
Off
Text Notes 5000 3200 0    60   ~ 0
On
Text Notes 4950 2650 0    60   ~ 0
Start
Text Notes 6000 2850 0    60   ~ 0
Out
$Comp
L GND #PWR0194
U 1 1 4F6523FD
P 5250 4800
F 0 "#PWR0194" H 5250 4800 30  0001 C CNN
F 1 "GND" H 5250 4730 30  0001 C CNN
F 2 "" H 5250 4800 60  0001 C CNN
F 3 "" H 5250 4800 60  0001 C CNN
	1    5250 4800
	1    0    0    -1  
$EndComp
$Comp
L R R53
U 1 1 4F652290
P 5900 3900
F 0 "R53" V 5980 3900 50  0000 C CNN
F 1 "10kR" V 5900 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 5900 3900 60  0001 C CNN
F 3 "" H 5900 3900 60  0001 C CNN
	1    5900 3900
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D24
U 1 1 4F651F65
P 5900 3700
F 0 "D24" H 5900 3800 40  0000 C CNN
F 1 "D_Schottky" H 5900 3600 40  0000 C CNN
F 2 "Diodes_SMD:SOD-323" H 5900 3700 60  0001 C CNN
F 3 "" H 5900 3700 60  0001 C CNN
F 4 "NSR0240HT1GOSCT-ND" H 5900 3700 60  0001 C CNN "Digi-Key Part"
	1    5900 3700
	1    0    0    -1  
$EndComp
Text HLabel 4250 4450 0    60   Input ~ 0
HV_PWR
$Comp
L R R52
U 1 1 4F651EF6
P 5450 4200
F 0 "R52" V 5530 4200 50  0000 C CNN
F 1 "1kR" V 5450 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 5450 4200 60  0001 C CNN
F 3 "" H 5450 4200 60  0001 C CNN
	1    5450 4200
	0    1    1    0   
$EndComp
$Comp
L +HVBATT #PWR0195
U 1 1 4F651EAC
P 7700 4550
F 0 "#PWR0195" H 7700 4500 20  0001 C CNN
F 1 "+HVBATT" H 7700 4650 30  0000 C CNN
F 2 "" H 7700 4550 60  0001 C CNN
F 3 "" H 7700 4550 60  0001 C CNN
	1    7700 4550
	-1   0    0    1   
$EndComp
Text HLabel 3800 2750 0    60   Input ~ 0
LOGIC_PWR
$Comp
L GND #PWR0196
U 1 1 4F651E66
P 4000 2250
F 0 "#PWR0196" H 4000 2250 30  0001 C CNN
F 1 "GND" H 4000 2180 30  0001 C CNN
F 2 "" H 4000 2250 60  0001 C CNN
F 3 "" H 4000 2250 60  0001 C CNN
	1    4000 2250
	-1   0    0    1   
$EndComp
$Comp
L R R50
U 1 1 4F651E58
P 4000 2450
F 0 "R50" V 4080 2450 50  0000 C CNN
F 1 "10kR" V 4000 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 4000 2450 60  0001 C CNN
F 3 "" H 4000 2450 60  0001 C CNN
	1    4000 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0197
U 1 1 4F651E1D
P 4600 2500
F 0 "#PWR0197" H 4600 2500 30  0001 C CNN
F 1 "GND" H 4600 2430 30  0001 C CNN
F 2 "" H 4600 2500 60  0001 C CNN
F 3 "" H 4600 2500 60  0001 C CNN
	1    4600 2500
	-1   0    0    1   
$EndComp
$Comp
L R R51
U 1 1 4F651D80
P 4650 3200
F 0 "R51" V 4730 3200 50  0000 C CNN
F 1 "10kR" V 4650 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 4650 3200 60  0001 C CNN
F 3 "" H 4650 3200 60  0001 C CNN
	1    4650 3200
	0    1    1    0   
$EndComp
$Comp
L +BATT #PWR0198
U 1 1 4F651D02
P 7800 2750
F 0 "#PWR0198" H 7800 2700 20  0001 C CNN
F 1 "+BATT" H 7800 2850 30  0000 C CNN
F 2 "" H 7800 2750 60  0001 C CNN
F 3 "" H 7800 2750 60  0001 C CNN
	1    7800 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0199
U 1 1 4F6514C0
P 4800 2200
F 0 "#PWR0199" H 4800 2200 30  0001 C CNN
F 1 "GND" H 4800 2130 30  0001 C CNN
F 2 "" H 4800 2200 60  0001 C CNN
F 3 "" H 4800 2200 60  0001 C CNN
	1    4800 2200
	-1   0    0    1   
$EndComp
$Comp
L SP3T_6PIN SW1
U 1 1 4F651110
P 5500 2850
F 0 "SW1" H 5300 3000 50  0000 C CNN
F 1 "SP3T_6PIN" H 5350 2300 50  0000 C CNN
F 2 "Thunderbots:A27xP" H 5500 2850 60  0001 C CNN
F 3 "" H 5500 2850 60  0001 C CNN
F 4 "A27AW-ND" H 5500 2850 60  0001 C CNN "Field1"
	1    5500 2850
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q15
U 1 1 4F650793
P 5150 4450
F 0 "Q15" H 5160 4620 60  0000 R CNN
F 1 "Q_NMOS_GSD" H 5160 4300 60  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 5150 4450 60  0001 C CNN
F 3 "" H 5150 4450 60  0001 C CNN
F 4 "1727-4692-1-ND" H 5150 4450 60  0001 C CNN "Field1"
	1    5150 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0200
U 1 1 4F650264
P 3350 3650
F 0 "#PWR0200" H 3350 3650 30  0001 C CNN
F 1 "GND" H 3350 3580 30  0001 C CNN
F 2 "" H 3350 3650 60  0001 C CNN
F 3 "" H 3350 3650 60  0001 C CNN
	1    3350 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0201
U 1 1 4F644CB3
P 10550 6550
F 0 "#PWR0201" H 10550 6550 30  0001 C CNN
F 1 "GND" H 10550 6480 30  0001 C CNN
F 2 "" H 10550 6550 60  0001 C CNN
F 3 "" H 10550 6550 60  0001 C CNN
	1    10550 6550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0202
U 1 1 4F644CAC
P 8600 5950
F 0 "#PWR0202" H 8600 6040 20  0001 C CNN
F 1 "+5V" H 8600 6040 30  0000 C CNN
F 2 "" H 8600 5950 60  0001 C CNN
F 3 "" H 8600 5950 60  0001 C CNN
	1    8600 5950
	1    0    0    -1  
$EndComp
$Comp
L C C48
U 1 1 4F644C94
P 8450 6150
F 0 "C48" H 8500 6250 50  0000 L CNN
F 1 "1uF" H 8500 6050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8450 6150 60  0001 C CNN
F 3 "" H 8450 6150 60  0001 C CNN
	1    8450 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0203
U 1 1 4F644C87
P 8650 6350
F 0 "#PWR0203" H 8650 6350 30  0001 C CNN
F 1 "GND" H 8650 6280 30  0001 C CNN
F 2 "" H 8650 6350 60  0001 C CNN
F 3 "" H 8650 6350 60  0001 C CNN
	1    8650 6350
	1    0    0    -1  
$EndComp
NoConn ~ 10300 6300
NoConn ~ 10300 6200
$Comp
L MCP1726 U10
U 1 1 4F644C5E
P 9550 6150
F 0 "U10" H 9550 6100 60  0000 C CNN
F 1 "MCP1726" H 9550 6200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 9450 6000 60  0001 C CNN
F 3 "" H 9550 6150 60  0001 C CNN
F 4 "MCP1726-1202E/SN-ND" H 9550 6150 60  0001 C CNN "Field1"
	1    9550 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0204
U 1 1 4F644C3B
P 9400 5200
F 0 "#PWR0204" H 9400 5200 30  0001 C CNN
F 1 "GND" H 9400 5130 30  0001 C CNN
F 2 "" H 9400 5200 60  0001 C CNN
F 3 "" H 9400 5200 60  0001 C CNN
	1    9400 5200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0205
U 1 1 4F644C30
P 8950 4600
F 0 "#PWR0205" H 8950 4690 20  0001 C CNN
F 1 "+5V" H 8950 4690 30  0000 C CNN
F 2 "" H 8950 4600 60  0001 C CNN
F 3 "" H 8950 4600 60  0001 C CNN
	1    8950 4600
	1    0    0    -1  
$EndComp
$Comp
L LD1117D33 U9
U 1 1 4F643E3C
P 9400 4700
F 0 "U9" H 9550 4504 60  0000 C CNN
F 1 "LD1117D33" H 9400 4900 60  0000 C CNN
F 2 "Thunderbots:SO8E" H 9400 4400 60  0001 C CNN
F 3 "" H 9400 4700 60  0001 C CNN
F 4 "497-7306-1-ND" H 9400 4700 60  0001 C CNN "Field1"
	1    9400 4700
	1    0    0    -1  
$EndComp
$Comp
L 7805 U11
U 1 1 4F6438FB
P 9900 3350
F 0 "U11" H 10050 3154 60  0000 C CNN
F 1 "7805" H 9900 3550 60  0000 C CNN
F 2 "Thunderbots:LM78XX_VERT" H 9900 3350 60  0001 C CNN
F 3 "" H 9900 3350 60  0001 C CNN
F 4 "811-2196-5-ND" H 9900 3350 60  0001 C CNN "Field1"
	1    9900 3350
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 4CC4781A
P 9050 3550
F 0 "C21" H 9100 3650 50  0000 L CNN
F 1 "10uF" H 9100 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9050 3550 60  0001 C CNN
F 3 "" H 9050 3550 60  0001 C CNN
F 4 "" H 9050 3550 60  0001 C CNN "Digikey Part"
	1    9050 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P7
U 1 1 4CC474AD
P 3100 3550
F 0 "P7" V 3050 3550 40  0000 C CNN
F 1 "CONN_01X02" V 3150 3550 40  0000 C CNN
F 2 "Thunderbots:BATTERY_INLET" H 3100 3550 60  0001 C CNN
F 3 "" H 3100 3550 60  0001 C CNN
F 4 "none" H 3100 3550 60  0001 C CNN "Digi-Key Part"
	1    3100 3550
	-1   0    0    -1  
$EndComp
$Comp
L CP C14
U 1 1 4ABF00CA
P 9450 3550
F 0 "C14" H 9500 3650 50  0000 L CNN
F 1 "100uF" H 9500 3450 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D8_L11.5_P3.5" H 9450 3550 60  0001 C CNN
F 3 "" H 9450 3550 60  0001 C CNN
	1    9450 3550
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4ABE8225
P 10550 6300
F 0 "C5" H 10600 6400 50  0000 L CNN
F 1 "1uF" H 10600 6200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10550 6300 60  0001 C CNN
F 3 "" H 10550 6300 60  0001 C CNN
F 4 "" H 10550 6300 60  0001 C CNN "Digikey Part"
	1    10550 6300
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4ABE8044
P 10050 4900
F 0 "C3" H 10100 5000 50  0000 L CNN
F 1 "10uF" H 10100 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10050 4900 60  0001 C CNN
F 3 "" H 10050 4900 60  0001 C CNN
F 4 "" H 10050 4900 60  0001 C CNN "Digikey Part"
	1    10050 4900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0206
U 1 1 4CC361C8
P 10050 4600
F 0 "#PWR0206" H 10050 4560 30  0001 C CNN
F 1 "+3.3V" H 10050 4710 30  0000 C CNN
F 2 "" H 10050 4600 60  0001 C CNN
F 3 "" H 10050 4600 60  0001 C CNN
	1    10050 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0207
U 1 1 4ADACEE2
P 10350 3250
F 0 "#PWR0207" H 10350 3340 20  0001 C CNN
F 1 "+5V" H 10350 3340 30  0000 C CNN
F 2 "" H 10350 3250 60  0001 C CNN
F 3 "" H 10350 3250 60  0001 C CNN
	1    10350 3250
	1    0    0    -1  
$EndComp
$Comp
L +1V2 #PWR0208
U 1 1 4ABE8237
P 10550 5950
F 0 "#PWR0208" H 10550 6090 20  0001 C CNN
F 1 "+1V2" H 10550 6060 30  0000 C CNN
F 2 "" H 10550 5950 60  0001 C CNN
F 3 "" H 10550 5950 60  0001 C CNN
	1    10550 5950
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4ABE8019
P 8950 4850
F 0 "C1" H 9000 4950 50  0000 L CNN
F 1 "100nF" H 9000 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8950 4850 60  0001 C CNN
F 3 "" H 8950 4850 60  0001 C CNN
	1    8950 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0209
U 1 1 4ABE7E4F
P 9450 3850
F 0 "#PWR0209" H 9450 3850 30  0001 C CNN
F 1 "GND" H 9450 3780 30  0001 C CNN
F 2 "" H 9450 3850 60  0001 C CNN
F 3 "" H 9450 3850 60  0001 C CNN
	1    9450 3850
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR0210
U 1 1 4ABE7E3F
P 9450 3250
F 0 "#PWR0210" H 9450 3200 20  0001 C CNN
F 1 "+BATT" H 9450 3350 30  0000 C CNN
F 2 "" H 9450 3250 60  0001 C CNN
F 3 "" H 9450 3250 60  0001 C CNN
	1    9450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6000 6000 6000
Connection ~ 7700 4400
Wire Wire Line
	7650 4400 7850 4400
Wire Wire Line
	4500 3200 4500 3500
Wire Wire Line
	4800 2600 4800 2750
Wire Wire Line
	4800 2750 5000 2750
Connection ~ 6200 2850
Wire Wire Line
	10700 1900 10700 1800
Connection ~ 9500 2150
Wire Wire Line
	8400 1600 8400 2150
Wire Wire Line
	8400 2150 9500 2150
Connection ~ 10400 1400
Wire Wire Line
	10400 1300 10400 1500
Wire Wire Line
	10400 2300 10400 2200
Wire Wire Line
	9500 800  9500 900 
Wire Wire Line
	5100 4750 5250 4750
Wire Wire Line
	7800 2750 7800 3250
Wire Wire Line
	6350 2850 6000 2850
Wire Wire Line
	5700 3700 5700 4400
Connection ~ 5700 4200
Wire Wire Line
	5700 3700 5750 3700
Wire Wire Line
	5300 4200 5250 4200
Wire Wire Line
	5250 4200 5250 4250
Wire Wire Line
	3800 2750 4300 2750
Connection ~ 4850 3200
Wire Wire Line
	4600 2500 4600 2550
Connection ~ 4500 3400
Wire Wire Line
	3300 3600 3350 3600
Wire Wire Line
	3350 3600 3350 3650
Wire Wire Line
	9500 3300 9050 3300
Connection ~ 8750 6100
Wire Wire Line
	8800 6200 8750 6200
Wire Wire Line
	8750 6200 8750 6000
Wire Wire Line
	8450 6000 8800 6000
Connection ~ 10550 6100
Wire Wire Line
	10300 6100 10550 6100
Wire Wire Line
	9800 4650 10050 4650
Connection ~ 8950 4650
Wire Wire Line
	8950 4650 9000 4650
Wire Wire Line
	10350 3250 10350 3300
Wire Wire Line
	10350 3300 10300 3300
Connection ~ 9850 4700
Wire Wire Line
	9850 4750 9850 4600
Wire Wire Line
	9850 4750 9800 4750
Connection ~ 9850 4650
Wire Wire Line
	9850 4600 9800 4600
Connection ~ 9450 3300
Wire Wire Line
	9050 3700 9050 3800
Wire Wire Line
	10550 6450 10550 6550
Connection ~ 10050 4650
Connection ~ 9400 5150
Wire Wire Line
	10050 5050 10050 5150
Connection ~ 10050 5150
Wire Wire Line
	10550 6150 10550 5950
Connection ~ 9450 3800
Wire Wire Line
	9050 3300 9050 3400
Wire Wire Line
	9450 3400 9450 3250
Wire Wire Line
	9850 4700 9800 4700
Wire Wire Line
	8950 4600 8950 4700
Wire Wire Line
	10050 5150 8950 5150
Wire Wire Line
	8950 5150 8950 5000
Wire Wire Line
	10050 4600 10050 4750
Wire Wire Line
	10300 6000 10550 6000
Connection ~ 10550 6000
Wire Wire Line
	8750 6100 8800 6100
Connection ~ 8750 6000
Wire Wire Line
	8600 5950 8600 6000
Connection ~ 8600 6000
Wire Wire Line
	9450 3850 9450 3700
Wire Wire Line
	9050 3800 9900 3800
Wire Wire Line
	5000 2950 5000 3050
Wire Wire Line
	5000 3050 6000 3050
Wire Wire Line
	6000 3050 6000 3300
Wire Wire Line
	4800 3200 5000 3200
Wire Wire Line
	4000 2250 4000 2300
Wire Wire Line
	4000 2600 4000 2750
Connection ~ 4000 2750
Wire Wire Line
	6200 3500 6200 4200
Connection ~ 6200 3500
Wire Wire Line
	4250 4450 4950 4450
Wire Wire Line
	6050 2850 6050 3700
Connection ~ 6050 2850
Wire Wire Line
	5750 3900 5700 3900
Connection ~ 5700 3900
Wire Wire Line
	4850 3200 4850 2950
Wire Wire Line
	4850 2950 4600 2950
Connection ~ 6200 3900
Wire Wire Line
	3300 3500 3750 3500
Wire Wire Line
	5250 4800 5250 4650
Connection ~ 5250 4750
Wire Wire Line
	7850 4850 7850 4800
Wire Wire Line
	9500 2200 9500 2100
Wire Wire Line
	8700 1600 8700 1500
Wire Wire Line
	8700 1500 8800 1500
Wire Wire Line
	9500 850  8400 850 
Wire Wire Line
	8400 850  8400 1300
Connection ~ 9500 850 
Wire Wire Line
	10200 1400 10700 1400
Wire Wire Line
	10700 1400 10700 1500
Wire Wire Line
	6200 2250 6200 2350
Wire Wire Line
	6200 2850 6200 2650
Wire Wire Line
	4800 2300 4800 2200
Wire Wire Line
	5550 6000 5600 6000
Wire Wire Line
	5200 6000 5250 6000
Wire Wire Line
	7700 4000 7700 4550
Wire Wire Line
	4800 4750 4700 4750
Wire Wire Line
	4700 4750 4700 4450
Connection ~ 4700 4450
Connection ~ 4500 3500
Wire Wire Line
	4500 3400 5000 3400
Wire Wire Line
	6200 3900 6050 3900
Wire Wire Line
	6200 4000 6250 4000
Wire Wire Line
	6200 4200 6250 4200
Connection ~ 6200 4000
Wire Wire Line
	6250 4100 6200 4100
Connection ~ 6200 4100
Wire Wire Line
	5700 4400 6250 4400
Wire Wire Line
	5600 4200 5700 4200
Wire Wire Line
	7700 4000 7650 4000
Wire Wire Line
	7650 4100 7700 4100
Connection ~ 7700 4100
Wire Wire Line
	7650 4300 7700 4300
Connection ~ 7700 4300
Wire Wire Line
	4250 3500 6300 3500
Wire Wire Line
	6300 3500 6300 3050
Wire Wire Line
	6300 3050 6350 3050
Wire Wire Line
	6350 3150 6300 3150
Connection ~ 6300 3150
Wire Wire Line
	6300 3250 6350 3250
Connection ~ 6300 3250
Wire Wire Line
	7800 3250 7750 3250
Wire Wire Line
	7750 3150 7800 3150
Connection ~ 7800 3150
Wire Wire Line
	7800 2950 7750 2950
Connection ~ 7800 2950
Wire Wire Line
	7750 2850 7800 2850
Connection ~ 7800 2850
Wire Wire Line
	10400 1900 10400 1800
Wire Wire Line
	10400 1850 10200 1850
Wire Wire Line
	10200 1850 10200 1600
Connection ~ 10400 1850
Wire Wire Line
	9900 3800 9900 3600
Wire Wire Line
	9400 5200 9400 4950
Wire Wire Line
	8450 6300 8800 6300
Wire Wire Line
	8650 6350 8650 6300
Connection ~ 8650 6300
Text Notes 1350 5700 0    60   ~ 0
Off:\nQ28 open: gate pulled to battery\n	positive via SW1 pin 2, 3, 5, 6.\nQ27 open: gate pulled to battery\n	positive via D24 and SW1 pin 2, 3, 5, 6.\n\nOn:\nQ28 gate under firmware control via\n	SW1 pins 2, 3, 5, 4, R51 pull-up, Q14 to ground.\nQ27 gate under firmware control via\n	R53 pull-up, R52+Q15 to ground, D24 reverse biased.\n	(Note, only works when Q28 gate grounded)\n\nStart:\nQ28 closed: gate grounded via\n	SW1 pins 2, 1 and R8.\nQ27 gate under firmware control via\n	R53 pull-up, R52+Q15 to ground, D24 reverse biased.\n	Pre-boot, Q15 turned off via R58.
$EndSCHEMATC