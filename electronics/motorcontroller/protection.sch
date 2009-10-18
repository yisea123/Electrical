EESchema Schematic File Version 2  date 2009-10-18T00:38:25 PDT
LIBS:power,../thunderbots-symbols,device,transistors,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,opto,atmel,contrib,valves
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 4 9
Title ""
Date "18 oct 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 5600 6900
Wire Wire Line
	4150 6900 5600 6900
Wire Wire Line
	5600 7550 5600 7650
Wire Wire Line
	6200 5350 4400 5350
Wire Wire Line
	5900 5250 4400 5250
Wire Wire Line
	5600 5150 4400 5150
Wire Wire Line
	5300 5050 4400 5050
Wire Wire Line
	5000 4950 4400 4950
Wire Wire Line
	5900 5850 5900 5800
Connection ~ 5600 5850
Wire Wire Line
	5300 5850 5300 5800
Connection ~ 5900 4450
Wire Wire Line
	6200 4450 5000 4450
Wire Wire Line
	6200 4450 6200 4500
Connection ~ 5300 4450
Wire Wire Line
	5000 4450 5000 4500
Wire Wire Line
	5600 4500 5600 4400
Wire Wire Line
	5300 4500 5300 4450
Connection ~ 5600 4450
Wire Wire Line
	5900 4450 5900 4500
Wire Wire Line
	5600 5900 5600 5800
Wire Wire Line
	5000 5800 5000 5850
Connection ~ 5300 5850
Wire Wire Line
	5000 5850 6200 5850
Wire Wire Line
	6200 5850 6200 5800
Connection ~ 5900 5850
Wire Wire Line
	5000 4900 5000 5400
Connection ~ 5000 4950
Wire Wire Line
	5300 4900 5300 5400
Connection ~ 5300 5050
Wire Wire Line
	5600 4900 5600 5400
Connection ~ 5600 5150
Wire Wire Line
	5900 4900 5900 5400
Connection ~ 5900 5250
Wire Wire Line
	6200 4900 6200 5400
Connection ~ 6200 5350
Wire Bus Line
	4300 5250 4300 4700
Wire Bus Line
	4300 4700 4150 4700
Wire Wire Line
	6200 3600 4400 3600
Wire Wire Line
	5900 3500 4400 3500
Wire Wire Line
	5600 3400 4400 3400
Wire Wire Line
	5300 3300 4400 3300
Wire Wire Line
	5000 3200 4400 3200
Wire Wire Line
	5900 4100 5900 4050
Connection ~ 5600 4100
Wire Wire Line
	5300 4100 5300 4050
Connection ~ 5900 2700
Wire Wire Line
	6200 2700 5000 2700
Wire Wire Line
	6200 2700 6200 2750
Connection ~ 5300 2700
Wire Wire Line
	5000 2700 5000 2750
Wire Wire Line
	5600 2750 5600 2650
Wire Wire Line
	5300 2750 5300 2700
Connection ~ 5600 2700
Wire Wire Line
	5900 2700 5900 2750
Wire Wire Line
	5600 4150 5600 4050
Wire Wire Line
	5000 4050 5000 4100
Connection ~ 5300 4100
Wire Wire Line
	5000 4100 6200 4100
Wire Wire Line
	6200 4100 6200 4050
Connection ~ 5900 4100
Wire Wire Line
	5000 3150 5000 3650
Connection ~ 5000 3200
Wire Wire Line
	5300 3150 5300 3650
Connection ~ 5300 3300
Wire Wire Line
	5600 3150 5600 3650
Connection ~ 5600 3400
Wire Wire Line
	5900 3150 5900 3650
Connection ~ 5900 3500
Wire Wire Line
	6200 3150 6200 3650
Connection ~ 6200 3600
Wire Bus Line
	4300 3500 4300 2950
Wire Bus Line
	4300 2950 4150 2950
Wire Wire Line
	6200 1850 4400 1850
Wire Wire Line
	5900 1750 4400 1750
Wire Wire Line
	5600 1650 4400 1650
Wire Wire Line
	5300 1550 4400 1550
Wire Wire Line
	5000 1450 4400 1450
Wire Wire Line
	5900 2350 5900 2300
Connection ~ 5600 2350
Wire Wire Line
	5300 2350 5300 2300
Connection ~ 5900 950 
Wire Wire Line
	6200 950  5000 950 
Wire Wire Line
	6200 950  6200 1000
Connection ~ 5300 950 
Wire Wire Line
	5000 950  5000 1000
Wire Wire Line
	5600 1000 5600 900 
Wire Bus Line
	4150 1200 4300 1200
Wire Bus Line
	4300 1200 4300 1750
Wire Wire Line
	5300 1000 5300 950 
Connection ~ 5600 950 
Wire Wire Line
	5900 950  5900 1000
Wire Wire Line
	5600 2400 5600 2300
Wire Wire Line
	5000 2300 5000 2350
Connection ~ 5300 2350
Wire Wire Line
	5000 2350 6200 2350
Wire Wire Line
	6200 2350 6200 2300
Connection ~ 5900 2350
Wire Wire Line
	5000 1400 5000 1900
Connection ~ 5000 1450
Wire Wire Line
	5300 1400 5300 1900
Connection ~ 5300 1550
Wire Wire Line
	5600 1400 5600 1900
Connection ~ 5600 1650
Wire Wire Line
	5900 1400 5900 1900
Connection ~ 5900 1750
Wire Wire Line
	6200 1400 6200 1900
Connection ~ 6200 1850
Wire Wire Line
	5600 6150 5600 6250
Wire Wire Line
	5600 6650 5600 7150
$Comp
L GND #PWR25
U 1 1 4ADA5B2E
P 5600 7650
F 0 "#PWR25" H 5600 7650 30  0001 C CNN
F 1 "GND" H 5600 7580 30  0001 C CNN
	1    5600 7650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR24
U 1 1 4ADA5B1F
P 5600 6150
F 0 "#PWR24" H 5600 6110 30  0001 C CNN
F 1 "+3.3V" H 5600 6260 30  0000 C CNN
	1    5600 6150
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D21
U 1 1 4ADA5B12
P 5600 7350
F 0 "D21" H 5600 7450 40  0000 C CNN
F 1 "BAT85" H 5600 7250 40  0000 C CNN
	1    5600 7350
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D20
U 1 1 4ADA5B11
P 5600 6450
F 0 "D20" H 5600 6550 40  0000 C CNN
F 1 "BAT85" H 5600 6350 40  0000 C CNN
	1    5600 6450
	0    -1   -1   0   
$EndComp
Text Label 4450 5350 0    60   ~ 0
PWM5
Text Label 4450 5250 0    60   ~ 0
PWM4
Text Label 4450 5150 0    60   ~ 0
PWM3
Text Label 4450 5050 0    60   ~ 0
PWM2
Text Label 4450 4950 0    60   ~ 0
PWM1
$Comp
L DIODESCH D33
U 1 1 4ADA5ADE
P 6200 5600
F 0 "D33" H 6200 5700 40  0000 C CNN
F 1 "BAT85" H 6200 5500 40  0000 C CNN
	1    6200 5600
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D27
U 1 1 4ADA5ADD
P 5900 5600
F 0 "D27" H 5900 5700 40  0000 C CNN
F 1 "BAT85" H 5900 5500 40  0000 C CNN
	1    5900 5600
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D19
U 1 1 4ADA5ADC
P 5600 5600
F 0 "D19" H 5600 5700 40  0000 C CNN
F 1 "BAT85" H 5600 5500 40  0000 C CNN
	1    5600 5600
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D13
U 1 1 4ADA5ADB
P 5300 5600
F 0 "D13" H 5300 5700 40  0000 C CNN
F 1 "BAT85" H 5300 5500 40  0000 C CNN
	1    5300 5600
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D7
U 1 1 4ADA5ADA
P 5000 5600
F 0 "D7" H 5000 5700 40  0000 C CNN
F 1 "BAT85" H 5000 5500 40  0000 C CNN
	1    5000 5600
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D32
U 1 1 4ADA5AD9
P 6200 4700
F 0 "D32" H 6200 4800 40  0000 C CNN
F 1 "BAT85" H 6200 4600 40  0000 C CNN
	1    6200 4700
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D26
U 1 1 4ADA5AD8
P 5900 4700
F 0 "D26" H 5900 4800 40  0000 C CNN
F 1 "BAT85" H 5900 4600 40  0000 C CNN
	1    5900 4700
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D18
U 1 1 4ADA5AD7
P 5600 4700
F 0 "D18" H 5600 4800 40  0000 C CNN
F 1 "BAT85" H 5600 4600 40  0000 C CNN
	1    5600 4700
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D12
U 1 1 4ADA5AD6
P 5300 4700
F 0 "D12" H 5300 4800 40  0000 C CNN
F 1 "BAT85" H 5300 4600 40  0000 C CNN
	1    5300 4700
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D6
U 1 1 4ADA5AD5
P 5000 4700
F 0 "D6" H 5000 4800 40  0000 C CNN
F 1 "BAT85" H 5000 4600 40  0000 C CNN
	1    5000 4700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR23
U 1 1 4ADA5AD4
P 5600 5900
F 0 "#PWR23" H 5600 5900 30  0001 C CNN
F 1 "GND" H 5600 5830 30  0001 C CNN
	1    5600 5900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR22
U 1 1 4ADA5AD3
P 5600 4400
F 0 "#PWR22" H 5600 4360 30  0001 C CNN
F 1 "+3.3V" H 5600 4510 30  0000 C CNN
	1    5600 4400
	1    0    0    -1  
$EndComp
Entry Wire Line
	4300 5250 4400 5350
Entry Wire Line
	4300 5150 4400 5250
Entry Wire Line
	4300 5050 4400 5150
Entry Wire Line
	4300 4950 4400 5050
Entry Wire Line
	4300 4850 4400 4950
$Comp
L DIODESCH D31
U 1 1 4ADA5AC7
P 6200 3850
F 0 "D31" H 6200 3950 40  0000 C CNN
F 1 "BAT85" H 6200 3750 40  0000 C CNN
	1    6200 3850
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D25
U 1 1 4ADA5AC6
P 5900 3850
F 0 "D25" H 5900 3950 40  0000 C CNN
F 1 "BAT85" H 5900 3750 40  0000 C CNN
	1    5900 3850
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D17
U 1 1 4ADA5AC5
P 5600 3850
F 0 "D17" H 5600 3950 40  0000 C CNN
F 1 "BAT85" H 5600 3750 40  0000 C CNN
	1    5600 3850
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D11
U 1 1 4ADA5AC4
P 5300 3850
F 0 "D11" H 5300 3950 40  0000 C CNN
F 1 "BAT85" H 5300 3750 40  0000 C CNN
	1    5300 3850
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D5
U 1 1 4ADA5AC3
P 5000 3850
F 0 "D5" H 5000 3950 40  0000 C CNN
F 1 "BAT85" H 5000 3750 40  0000 C CNN
	1    5000 3850
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D30
U 1 1 4ADA5AC2
P 6200 2950
F 0 "D30" H 6200 3050 40  0000 C CNN
F 1 "BAT85" H 6200 2850 40  0000 C CNN
	1    6200 2950
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D24
U 1 1 4ADA5AC1
P 5900 2950
F 0 "D24" H 5900 3050 40  0000 C CNN
F 1 "BAT85" H 5900 2850 40  0000 C CNN
	1    5900 2950
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D16
U 1 1 4ADA5AC0
P 5600 2950
F 0 "D16" H 5600 3050 40  0000 C CNN
F 1 "BAT85" H 5600 2850 40  0000 C CNN
	1    5600 2950
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D10
U 1 1 4ADA5ABF
P 5300 2950
F 0 "D10" H 5300 3050 40  0000 C CNN
F 1 "BAT85" H 5300 2850 40  0000 C CNN
	1    5300 2950
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D4
U 1 1 4ADA5ABE
P 5000 2950
F 0 "D4" H 5000 3050 40  0000 C CNN
F 1 "BAT85" H 5000 2850 40  0000 C CNN
	1    5000 2950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR21
U 1 1 4ADA5ABD
P 5600 4150
F 0 "#PWR21" H 5600 4150 30  0001 C CNN
F 1 "GND" H 5600 4080 30  0001 C CNN
	1    5600 4150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR20
U 1 1 4ADA5ABC
P 5600 2650
F 0 "#PWR20" H 5600 2610 30  0001 C CNN
F 1 "+3.3V" H 5600 2760 30  0000 C CNN
	1    5600 2650
	1    0    0    -1  
$EndComp
Text Label 4450 3600 0    60   ~ 0
DIR5
Text Label 4450 3500 0    60   ~ 0
DIR4
Text Label 4450 3400 0    60   ~ 0
DIR3
Text Label 4450 3300 0    60   ~ 0
DIR2
Text Label 4450 3200 0    60   ~ 0
DIR1
Entry Wire Line
	4300 3500 4400 3600
Entry Wire Line
	4300 3400 4400 3500
Entry Wire Line
	4300 3300 4400 3400
Entry Wire Line
	4300 3200 4400 3300
Entry Wire Line
	4300 3100 4400 3200
$Comp
L DIODESCH D29
U 1 1 4ADA59CF
P 6200 2100
F 0 "D29" H 6200 2200 40  0000 C CNN
F 1 "BAT85" H 6200 2000 40  0000 C CNN
	1    6200 2100
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D23
U 1 1 4ADA59CE
P 5900 2100
F 0 "D23" H 5900 2200 40  0000 C CNN
F 1 "BAT85" H 5900 2000 40  0000 C CNN
	1    5900 2100
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D15
U 1 1 4ADA59CD
P 5600 2100
F 0 "D15" H 5600 2200 40  0000 C CNN
F 1 "BAT85" H 5600 2000 40  0000 C CNN
	1    5600 2100
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D9
U 1 1 4ADA59CC
P 5300 2100
F 0 "D9" H 5300 2200 40  0000 C CNN
F 1 "BAT85" H 5300 2000 40  0000 C CNN
	1    5300 2100
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D3
U 1 1 4ADA59CB
P 5000 2100
F 0 "D3" H 5000 2200 40  0000 C CNN
F 1 "BAT85" H 5000 2000 40  0000 C CNN
	1    5000 2100
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D28
U 1 1 4ADA59BD
P 6200 1200
F 0 "D28" H 6200 1300 40  0000 C CNN
F 1 "BAT85" H 6200 1100 40  0000 C CNN
	1    6200 1200
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D22
U 1 1 4ADA59B8
P 5900 1200
F 0 "D22" H 5900 1300 40  0000 C CNN
F 1 "BAT85" H 5900 1100 40  0000 C CNN
	1    5900 1200
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D14
U 1 1 4ADA59B7
P 5600 1200
F 0 "D14" H 5600 1300 40  0000 C CNN
F 1 "BAT85" H 5600 1100 40  0000 C CNN
	1    5600 1200
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D8
U 1 1 4ADA59A8
P 5300 1200
F 0 "D8" H 5300 1300 40  0000 C CNN
F 1 "BAT85" H 5300 1100 40  0000 C CNN
	1    5300 1200
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D2
U 1 1 4ADA597E
P 5000 1200
F 0 "D2" H 5000 1300 40  0000 C CNN
F 1 "BAT85" H 5000 1100 40  0000 C CNN
	1    5000 1200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR19
U 1 1 4ADA596A
P 5600 2400
F 0 "#PWR19" H 5600 2400 30  0001 C CNN
F 1 "GND" H 5600 2330 30  0001 C CNN
	1    5600 2400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR18
U 1 1 4ADA5967
P 5600 900
F 0 "#PWR18" H 5600 860 30  0001 C CNN
F 1 "+3.3V" H 5600 1010 30  0000 C CNN
	1    5600 900 
	1    0    0    -1  
$EndComp
Text Label 4450 1850 0    60   ~ 0
FAULT5
Text Label 4450 1750 0    60   ~ 0
FAULT4
Text Label 4450 1650 0    60   ~ 0
FAULT3
Text Label 4450 1550 0    60   ~ 0
FAULT2
Text Label 4450 1450 0    60   ~ 0
FAULT1
Entry Wire Line
	4300 1750 4400 1850
Entry Wire Line
	4300 1650 4400 1750
Entry Wire Line
	4300 1550 4400 1650
Entry Wire Line
	4300 1450 4400 1550
Entry Wire Line
	4300 1350 4400 1450
Text HLabel 4150 6900 0    60   Input ~ 0
BRAKE
Text HLabel 4150 2950 0    60   Input ~ 0
DIR[1..5]
Text HLabel 4150 4700 0    60   Input ~ 0
PWM[1..5]
Text HLabel 4150 1200 0    60   Input ~ 0
FAULT[1..5]
$EndSCHEMATC
