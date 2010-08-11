EESchema Schematic File Version 2  date Wed 11 Aug 2010 12:03:07 PM PDT
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
LIBS:boostconverter-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 2
Title ""
Date "11 aug 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1750 4450 1650 4450
$Comp
L GND #PWR01
U 1 1 4C5AF52D
P 1650 4450
F 0 "#PWR01" H 1650 4450 30  0001 C CNN
F 1 "GND" H 1650 4380 30  0001 C CNN
	1    1650 4450
	0    1    -1   0   
$EndComp
Wire Wire Line
	6300 3350 6300 3050
Wire Wire Line
	2350 4450 4000 4450
Wire Wire Line
	8100 2950 7450 2950
Connection ~ 5550 5150
Wire Wire Line
	5550 5150 5650 5150
Wire Wire Line
	5650 4750 5550 4750
Wire Wire Line
	5550 4750 5550 5550
Wire Wire Line
	5500 5250 5650 5250
Wire Wire Line
	5500 5050 5650 5050
Wire Wire Line
	5500 4850 5650 4850
Wire Wire Line
	5500 4650 5650 4650
Wire Wire Line
	6250 4600 7600 4600
Wire Wire Line
	6250 4600 6250 4550
Wire Wire Line
	6250 4550 5500 4550
Wire Wire Line
	3750 5800 3750 5850
Wire Wire Line
	8950 3550 9050 3550
Wire Wire Line
	9050 3100 9150 3100
Wire Wire Line
	3750 3100 3750 3050
Wire Wire Line
	8150 4250 7600 4250
Wire Wire Line
	5600 3950 5600 4450
Wire Wire Line
	7000 3950 7150 3950
Wire Wire Line
	6000 3450 6000 3550
Wire Wire Line
	4650 3100 4650 3050
Wire Wire Line
	8600 4300 8600 4400
Wire Wire Line
	2550 4550 2450 4550
Wire Wire Line
	4000 4550 3150 4550
Wire Wire Line
	8150 4250 8150 4300
Wire Wire Line
	2900 5200 2900 5400
Wire Wire Line
	2900 5200 4000 5200
Wire Wire Line
	3650 5400 3750 5400
Wire Wire Line
	8150 4800 8150 4900
Wire Wire Line
	7450 3550 7450 3750
Wire Wire Line
	7450 4150 7450 4300
Wire Wire Line
	3800 2600 3750 2600
Wire Wire Line
	3750 4750 3700 4750
Wire Wire Line
	3700 5050 4000 5050
Wire Wire Line
	4000 4650 3700 4650
Wire Wire Line
	3700 4950 4000 4950
Wire Wire Line
	3800 4850 3700 4850
Wire Wire Line
	4600 2600 4650 2600
Wire Wire Line
	4200 2900 4200 2950
Wire Wire Line
	7450 3750 7550 3750
Wire Wire Line
	7450 2950 7450 2900
Wire Wire Line
	2900 5400 3050 5400
Wire Wire Line
	4000 5300 3750 5300
Wire Wire Line
	3750 5300 3750 5400
Connection ~ 6000 3050
Connection ~ 6000 3050
Wire Wire Line
	7950 3750 9050 3750
Connection ~ 8150 3750
Connection ~ 8150 4250
Wire Wire Line
	2900 5850 2900 5800
Wire Wire Line
	8600 3900 8600 3750
Connection ~ 8600 3750
Wire Wire Line
	4650 2600 4650 2650
Wire Wire Line
	9000 2900 9150 2900
Wire Wire Line
	7750 3350 7750 3400
Wire Wire Line
	6300 3050 5650 3050
Wire Wire Line
	5650 3450 5650 3550
Wire Wire Line
	6300 4550 6300 4650
Wire Wire Line
	6200 4450 6100 4450
Wire Wire Line
	3750 2600 3750 2650
Wire Wire Line
	7600 4250 7600 4600
Wire Wire Line
	5550 4950 5650 4950
Connection ~ 5550 4950
Wire Wire Line
	5650 5350 5550 5350
Connection ~ 5550 5350
Wire Wire Line
	8100 3350 8100 3400
Wire Wire Line
	5600 4450 5500 4450
Wire Wire Line
	7750 2950 7750 2950
Connection ~ 7750 2950
$Comp
L SW_PUSH SW_CHG1
U 1 1 4C54BAB7
P 2050 4450
F 0 "SW_CHG1" H 2200 4560 50  0000 C CNN
F 1 "SW_PUSH" H 2050 4370 50  0000 C CNN
	1    2050 4450
	1    0    0    1   
$EndComp
$Comp
L R R1
U 1 1 4C50BC9C
P 5850 4450
F 0 "R1" V 5930 4450 50  0000 C CNN
F 1 "1kR" V 5850 4450 50  0000 C CNN
	1    5850 4450
	0    -1   -1   0   
$EndComp
$Comp
L MCP1416 GD1
U 1 1 4C475811
P 6300 3950
F 0 "GD1" H 6200 3950 60  0000 C CNN
F 1 "MCP1416" H 6300 4050 60  0000 C CNN
	1    6300 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4C54B4D0
P 8100 3400
F 0 "#PWR02" H 8100 3400 30  0001 C CNN
F 1 "GND" H 8100 3330 30  0001 C CNN
	1    8100 3400
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 4C54B4BC
P 8100 3150
F 0 "C8" H 8150 3250 50  0000 L CNN
F 1 "10uF" H 8150 3050 50  0000 L CNN
	1    8100 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4C54B423
P 5550 5550
F 0 "#PWR03" H 5550 5550 30  0001 C CNN
F 1 "GND" H 5550 5480 30  0001 C CNN
	1    5550 5550
	1    0    0    -1  
$EndComp
$Sheet
S 4000 4350 1500 1050
U 4C44C547
F0 "PIC" 60
F1 "18FPIC.sch" 60
F2 "MCLR" I L 4000 4650 60 
F3 "PGD" I L 4000 4950 60 
F4 "PGC" I L 4000 5050 60 
F5 "PWM" O R 5500 4450 60 
F6 "VCHMON" I R 5500 4550 60 
F7 "OSC2" I L 4000 5300 60 
F8 "OSC1" I L 4000 5200 60 
F9 "CHARGE" I L 4000 4450 60 
F10 "EXTRA4" B R 5500 5250 60 
F11 "EXTRA3" B R 5500 5050 60 
F12 "EXTRA2" B R 5500 4850 60 
F13 "EXTRA1" B R 5500 4650 60 
F14 "PB2" B L 4000 4550 60 
$EndSheet
$Comp
L CONN_8 P1
U 1 1 4C54B386
P 6000 5000
F 0 "P1" V 5950 5000 60  0000 C CNN
F 1 "CONN_8" V 6050 5000 60  0000 C CNN
	1    6000 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4C54A0FE
P 3750 5850
F 0 "#PWR04" H 3750 5850 30  0001 C CNN
F 1 "GND" H 3750 5780 30  0001 C CNN
	1    3750 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4C549CA7
P 8950 3550
F 0 "#PWR05" H 8950 3550 30  0001 C CNN
F 1 "GND" H 8950 3480 30  0001 C CNN
	1    8950 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 4C549C7E
P 9050 3100
F 0 "#PWR06" H 9050 3100 30  0001 C CNN
F 1 "GND" H 9050 3030 30  0001 C CNN
	1    9050 3100
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P3
U 1 1 4C549C75
P 9400 3650
F 0 "P3" V 9350 3650 40  0000 C CNN
F 1 "CONN_2" V 9450 3650 40  0000 C CNN
	1    9400 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4C549C6F
P 9500 3000
F 0 "P2" V 9450 3000 40  0000 C CNN
F 1 "CONN_2" V 9550 3000 40  0000 C CNN
	1    9500 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 4C536525
P 3750 3100
F 0 "#PWR07" H 3750 3100 30  0001 C CNN
F 1 "GND" H 3750 3030 30  0001 C CNN
	1    3750 3100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4C536524
P 3750 2850
F 0 "C2" H 3800 2950 50  0000 L CNN
F 1 ".33uF" H 3800 2750 50  0000 L CNN
	1    3750 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 4C50BCA4
P 6200 4450
F 0 "#PWR08" H 6200 4450 30  0001 C CNN
F 1 "GND" H 6200 4380 30  0001 C CNN
	1    6200 4450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 4C50BC5D
P 6300 4650
F 0 "#PWR09" H 6300 4650 30  0001 C CNN
F 1 "GND" H 6300 4580 30  0001 C CNN
	1    6300 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 4C50BBA1
P 6000 3550
F 0 "#PWR010" H 6000 3550 30  0001 C CNN
F 1 "GND" H 6000 3480 30  0001 C CNN
	1    6000 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 4C50BB38
P 7750 3400
F 0 "#PWR011" H 7750 3400 30  0001 C CNN
F 1 "GND" H 7750 3330 30  0001 C CNN
	1    7750 3400
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 4C50BA7A
P 7750 3150
F 0 "C7" H 7800 3250 50  0000 L CNN
F 1 "1000uF" H 7800 3050 50  0000 L CNN
	1    7750 3150
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR012
U 1 1 4C506B15
P 9000 2900
F 0 "#PWR012" H 9000 2850 20  0001 C CNN
F 1 "+BATT" H 9000 3000 30  0000 C CNN
	1    9000 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 4C506806
P 4650 3100
F 0 "#PWR013" H 4650 3100 30  0001 C CNN
F 1 "GND" H 4650 3030 30  0001 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4C5067FB
P 4650 2850
F 0 "C4" H 4700 2950 50  0000 L CNN
F 1 "100nF" H 4700 2750 50  0000 L CNN
	1    4650 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 4C4DC900
P 8600 4400
F 0 "#PWR014" H 8600 4400 30  0001 C CNN
F 1 "GND" H 8600 4330 30  0001 C CNN
	1    8600 4400
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 4C4DC8F8
P 8600 4100
F 0 "C9" H 8650 4200 50  0000 L CNN
F 1 "22uF" H 8650 4000 50  0000 L CNN
	1    8600 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 4C4DC73E
P 2450 4550
F 0 "#PWR015" H 2450 4550 30  0001 C CNN
F 1 "GND" H 2450 4480 30  0001 C CNN
	1    2450 4550
	0    1    -1   0   
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 4C4DC711
P 2850 4550
F 0 "SW2" H 3000 4660 50  0000 C CNN
F 1 "SW_PUSH" H 2850 4470 50  0000 C CNN
	1    2850 4550
	1    0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 4C479383
P 2900 5850
F 0 "#PWR016" H 2900 5850 30  0001 C CNN
F 1 "GND" H 2900 5780 30  0001 C CNN
	1    2900 5850
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4C479379
P 3750 5600
F 0 "C3" H 3800 5700 50  0000 L CNN
F 1 "27pF" H 3800 5500 50  0000 L CNN
	1    3750 5600
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4C479377
P 2900 5600
F 0 "C1" H 2950 5700 50  0000 L CNN
F 1 "27pF" H 2950 5500 50  0000 L CNN
	1    2900 5600
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL XT1
U 1 1 4C479371
P 3350 5400
F 0 "XT1" H 3350 5550 60  0000 C CNN
F 1 "4MHz" H 3350 5250 60  0000 C CNN
	1    3350 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 4C478E17
P 8150 4900
F 0 "#PWR017" H 8150 4900 30  0001 C CNN
F 1 "GND" H 8150 4830 30  0001 C CNN
	1    8150 4900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4C478DFC
P 8150 4000
F 0 "R2" V 8230 4000 50  0000 C CNN
F 1 "220kR" V 8150 4000 50  0000 C CNN
	1    8150 4000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4C478DF8
P 8150 4550
F 0 "R3" V 8230 4550 50  0000 C CNN
F 1 "2.2kR" V 8150 4550 50  0000 C CNN
	1    8150 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 4C478AC5
P 5650 3550
F 0 "#PWR018" H 5650 3550 30  0001 C CNN
F 1 "GND" H 5650 3480 30  0001 C CNN
	1    5650 3550
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 4C478A9E
P 6000 3250
F 0 "C6" H 6050 3350 50  0000 L CNN
F 1 "1uF" H 6050 3150 50  0000 L CNN
	1    6000 3250
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4C4783EC
P 5650 3250
F 0 "C5" H 5700 3350 50  0000 L CNN
F 1 "100nF" H 5700 3150 50  0000 L CNN
	1    5650 3250
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR019
U 1 1 4C476DB2
P 7450 2900
F 0 "#PWR019" H 7450 2850 20  0001 C CNN
F 1 "+BATT" H 7450 3000 30  0000 C CNN
	1    7450 2900
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR020
U 1 1 4C476B73
P 6000 3050
F 0 "#PWR020" H 6000 3000 20  0001 C CNN
F 1 "+BATT" H 6000 3150 30  0000 C CNN
	1    6000 3050
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 4C476AE5
P 7450 3250
F 0 "L1" V 7400 3250 40  0000 C CNN
F 1 "22uH" V 7550 3250 40  0000 C CNN
	1    7450 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 4C475F65
P 7450 4300
F 0 "#PWR021" H 7450 4300 30  0001 C CNN
F 1 "GND" H 7450 4230 30  0001 C CNN
	1    7450 4300
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 4C463827
P 7750 3750
F 0 "D1" H 7750 3850 40  0000 C CNN
F 1 "DIODE" H 7750 3650 40  0000 C CNN
	1    7750 3750
	1    0    0    -1  
$EndComp
$Comp
L MOS_N Q1
U 1 1 4C46380B
P 7350 3950
F 0 "Q1" H 7360 4120 60  0000 R CNN
F 1 "MOS_N" H 7360 3800 60  0000 R CNN
	1    7350 3950
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR022
U 1 1 4C461F40
P 3750 2600
F 0 "#PWR022" H 3750 2550 20  0001 C CNN
F 1 "+BATT" H 3750 2700 30  0000 C CNN
	1    3750 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 4C461F33
P 4200 2950
F 0 "#PWR023" H 4200 2950 30  0001 C CNN
F 1 "GND" H 4200 2880 30  0001 C CNN
	1    4200 2950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR024
U 1 1 4C461F1A
P 4650 2600
F 0 "#PWR024" H 4650 2700 30  0001 C CNN
F 1 "VCC" H 4650 2700 30  0000 C CNN
	1    4650 2600
	1    0    0    -1  
$EndComp
NoConn ~ 3700 5150
$Comp
L VCC #PWR025
U 1 1 4C461ED1
P 3750 4750
F 0 "#PWR025" H 3750 4850 30  0001 C CNN
F 1 "VCC" H 3750 4850 30  0000 C CNN
	1    3750 4750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR026
U 1 1 4C461EC2
P 3800 4850
F 0 "#PWR026" H 3800 4850 30  0001 C CNN
F 1 "GND" H 3800 4780 30  0001 C CNN
	1    3800 4850
	0    -1   -1   0   
$EndComp
$Comp
L CONN_6 PGMR1
U 1 1 4C461E15
P 3350 4900
F 0 "PGMR1" V 3300 4900 60  0000 C CNN
F 1 "CONN_6" V 3400 4900 60  0000 C CNN
	1    3350 4900
	-1   0    0    -1  
$EndComp
$Comp
L 78L05 REG1
U 1 1 4C44B4BC
P 4200 2650
F 0 "REG1" H 4350 2410 60  0000 C CNN
F 1 "78L05" H 4205 2790 60  0000 C CNN
	1    4200 2650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
