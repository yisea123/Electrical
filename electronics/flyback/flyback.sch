EESchema Schematic File Version 2  date Mon 19 Jul 2010 04:01:23 PM PDT
LIBS:power
LIBS:thunderbots-symbols
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
LIBS:special
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
LIBS:flyback-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 2
Title ""
Date "19 jul 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7800 4150 7650 4150
Wire Wire Line
	7650 4150 7650 4050
Connection ~ 5350 1500
Wire Wire Line
	5350 1700 5350 1500
Wire Wire Line
	5050 1100 5650 1100
Wire Wire Line
	8200 4400 8200 4550
Wire Wire Line
	9600 3850 9450 3850
Wire Wire Line
	9450 3850 9450 3900
Wire Wire Line
	7650 4050 6250 4050
Connection ~ 1850 1100
Wire Wire Line
	1850 1000 1850 1300
Wire Wire Line
	1850 1100 2000 1100
Wire Wire Line
	1850 1300 1650 1300
Wire Wire Line
	3500 2750 10550 2750
Wire Wire Line
	10550 2750 10550 4500
Wire Wire Line
	10550 4500 8600 4500
Connection ~ 8950 4500
Wire Wire Line
	8950 4350 8950 4650
Wire Wire Line
	8950 5050 8950 5200
Wire Wire Line
	8600 4600 8600 4400
Wire Wire Line
	5850 5250 5850 5600
Wire Wire Line
	5350 3700 5350 3150
Connection ~ 5350 4250
Wire Wire Line
	4650 3400 4650 4250
Wire Wire Line
	4650 3400 3500 3400
Connection ~ 5350 4850
Wire Wire Line
	5350 4850 3750 4850
Wire Wire Line
	3750 4850 3750 4050
Wire Wire Line
	3750 4050 3500 4050
Wire Wire Line
	5350 4950 5350 4750
Connection ~ 6850 4050
Wire Wire Line
	6850 4050 6850 4200
Wire Wire Line
	5350 3950 5350 4350
Wire Wire Line
	6250 3650 6700 3650
Wire Wire Line
	5350 5450 5350 5600
Wire Wire Line
	5050 4550 4200 4550
Wire Wire Line
	4200 4550 4200 3700
Wire Wire Line
	4200 3700 3500 3700
Wire Wire Line
	5850 4850 5850 4250
Wire Wire Line
	5850 4250 4650 4250
Wire Wire Line
	8600 3650 8600 3900
Wire Wire Line
	8600 5100 8600 5200
Connection ~ 8600 4500
Wire Wire Line
	8950 3650 8950 3950
Connection ~ 8600 3650
Wire Wire Line
	2100 1500 1650 1500
Wire Wire Line
	2000 1400 2000 1500
Connection ~ 2000 1500
Wire Wire Line
	9600 3650 7100 3650
Connection ~ 8950 3650
Wire Wire Line
	8200 3900 8200 3650
Connection ~ 8200 3650
Wire Wire Line
	8200 5250 8200 5150
Wire Wire Line
	5050 1500 5650 1500
Wire Wire Line
	5400 950  5400 1100
Connection ~ 5400 1100
Wire Wire Line
	7800 3750 7800 3650
Connection ~ 7800 3650
$Comp
L +BATT #PWR01
U 1 1 4C4235AD
P 5400 950
F 0 "#PWR01" H 5400 900 20  0001 C CNN
F 1 "+BATT" H 5400 1050 30  0000 C CNN
	1    5400 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4C4235A1
P 5350 1700
F 0 "#PWR02" H 5350 1700 30  0001 C CNN
F 1 "GND" H 5350 1630 30  0001 C CNN
	1    5350 1700
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4C423592
P 5650 1300
F 0 "C2" H 5700 1400 50  0000 L CNN
F 1 "100nF" H 5700 1200 50  0000 L CNN
	1    5650 1300
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 4C42357F
P 5050 1300
F 0 "C1" H 5100 1400 50  0000 L CNN
F 1 "1000uF" H 5100 1200 50  0000 L CNN
	1    5050 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4C423311
P 8200 5250
F 0 "#PWR03" H 8200 5250 30  0001 C CNN
F 1 "GND" H 8200 5180 30  0001 C CNN
	1    8200 5250
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 4C423300
P 8200 4850
F 0 "SW1" H 8350 4960 50  0000 C CNN
F 1 "SW_PUSH" H 8200 4770 50  0000 C CNN
	1    8200 4850
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 4C4232D5
P 8200 4150
F 0 "R2" V 8280 4150 50  0000 C CNN
F 1 "27R" V 8200 4150 50  0000 C CNN
	1    8200 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4C4232C1
P 9450 3900
F 0 "#PWR04" H 9450 3900 30  0001 C CNN
F 1 "GND" H 9450 3830 30  0001 C CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4C4232AE
P 9950 3750
F 0 "P2" V 9900 3750 40  0000 C CNN
F 1 "CONN_2" V 10000 3750 40  0000 C CNN
	1    9950 3750
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 4C423277
P 1850 1000
F 0 "#FLG05" H 1850 1270 30  0001 C CNN
F 1 "PWR_FLAG" H 1850 1230 30  0000 C CNN
	1    1850 1000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 4C423257
P 2000 1400
F 0 "#FLG06" H 2000 1670 30  0001 C CNN
F 1 "PWR_FLAG" H 2000 1630 30  0000 C CNN
	1    2000 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 4C423178
P 2000 1100
F 0 "#PWR07" H 2000 1100 30  0001 C CNN
F 1 "GND" H 2000 1030 30  0001 C CNN
	1    2000 1100
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR08
U 1 1 4C423150
P 2100 1500
F 0 "#PWR08" H 2100 1450 20  0001 C CNN
F 1 "+BATT" H 2100 1600 30  0000 C CNN
	1    2100 1500
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4C423144
P 1300 1400
F 0 "P1" V 1250 1400 40  0000 C CNN
F 1 "CONN_2" V 1350 1400 40  0000 C CNN
	1    1300 1400
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 4C421173
P 8950 4150
F 0 "C4" H 9000 4250 50  0000 L CNN
F 1 "10nF" H 9000 4050 50  0000 L CNN
	1    8950 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 4C4210B8
P 8950 5200
F 0 "#PWR09" H 8950 5200 30  0001 C CNN
F 1 "GND" H 8950 5130 30  0001 C CNN
	1    8950 5200
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4C4210A9
P 8950 4850
F 0 "C5" H 9000 4950 50  0000 L CNN
F 1 "100nF" H 9000 4750 50  0000 L CNN
	1    8950 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 4C421099
P 8600 5200
F 0 "#PWR010" H 8600 5200 30  0001 C CNN
F 1 "GND" H 8600 5130 30  0001 C CNN
	1    8600 5200
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4C42108A
P 8600 4150
F 0 "R3" V 8680 4150 50  0000 C CNN
F 1 "220kR" V 8600 4150 50  0000 C CNN
	1    8600 4150
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 4C421086
P 8600 4850
F 0 "R4" V 8680 4850 50  0000 C CNN
F 1 "2.2kR" V 8600 4850 50  0000 C CNN
	1    8600 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 4C420EDA
P 5850 5600
F 0 "#PWR011" H 5850 5600 30  0001 C CNN
F 1 "GND" H 5850 5530 30  0001 C CNN
	1    5850 5600
	1    0    0    -1  
$EndComp
$Comp
L ZENER D1
U 1 1 4C420EB9
P 5850 5050
F 0 "D1" H 5850 5150 50  0000 C CNN
F 1 "BZX84C51-FDICT-ND" H 5850 4950 40  0000 C CNN
	1    5850 5050
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR012
U 1 1 4C4209BF
P 5350 3150
F 0 "#PWR012" H 5350 3100 20  0001 C CNN
F 1 "+BATT" H 5350 3250 30  0000 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 4C420998
P 5350 5600
F 0 "#PWR013" H 5350 5600 30  0001 C CNN
F 1 "GND" H 5350 5530 30  0001 C CNN
	1    5350 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 4C420995
P 6850 4200
F 0 "#PWR014" H 6850 4200 30  0001 C CNN
F 1 "GND" H 6850 4130 30  0001 C CNN
	1    6850 4200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4C420984
P 5350 5200
F 0 "R1" V 5430 5200 50  0000 C CNN
F 1 "0.03R" V 5350 5200 50  0000 C CNN
	1    5350 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 4C4201A0
P 6850 4200
F 0 "#PWR015" H 6850 4200 30  0001 C CNN
F 1 "GND" H 6850 4130 30  0001 C CNN
	1    6850 4200
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4C4200B3
P 7800 3950
F 0 "C3" H 7850 4050 50  0000 L CNN
F 1 "100nF" H 7850 3850 50  0000 L CNN
	1    7800 3950
	1    0    0    -1  
$EndComp
$Comp
L DIODE D2
U 1 1 4C4200AD
P 6900 3650
F 0 "D2" H 6900 3750 40  0000 C CNN
F 1 "RURP860" H 6900 3550 40  0000 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q1
U 1 1 4C42009A
P 5250 4550
F 0 "Q1" H 5260 4720 60  0000 R CNN
F 1 "SUM33N20" H 5260 4400 60  0000 R CNN
	1    5250 4550
	1    0    0    -1  
$EndComp
$Comp
L GA3460-BL T1
U 1 1 4C41FFC2
P 5850 3850
F 0 "T1" H 5850 4100 70  0000 C CNN
F 1 "GA3460-BL" H 5850 3550 70  0000 C CNN
F 2 "GA3460-BL" H 5750 4000 60  0001 C CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
$Sheet
S 1150 2400 2350 1800
U 4C41FE7F
F0 "uC" 60
F1 "uC.sch" 60
F2 "Current Sense" O R 3500 4050 60 
F3 "Emitter Voltage" O R 3500 3400 60 
F4 "Gate Drive" O R 3500 3700 60 
F5 "High Voltage" O R 3500 2750 60 
$EndSheet
$EndSCHEMATC
