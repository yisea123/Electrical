EESchema Schematic File Version 2  date Sat Aug  3 19:09:02 2013
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
LIBS:thunderbots-symbols
LIBS:SingleMotorDriver
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "4 aug 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4900 4550 0    60   ~ 0
CHARGE2
Text Label 4900 3650 0    60   ~ 0
CHARGE1
Text Label 4900 2750 0    60   ~ 0
CHARGE0
Text Label 6700 4900 0    60   ~ 0
PHASE2
Text Label 6700 4000 0    60   ~ 0
PHASE1
Text Label 6700 3100 0    60   ~ 0
PHASE0
Text Label 5050 5000 0    60   ~ 0
LG2
Text Label 5050 4700 0    60   ~ 0
HG2
Text Label 5050 4100 0    60   ~ 0
LG1
Text Label 5050 3800 0    60   ~ 0
HG1
Text Label 5050 3200 0    60   ~ 0
LG0
Text Label 5050 2900 0    60   ~ 0
HG0
Wire Wire Line
	3450 3150 3450 3200
Wire Wire Line
	3450 2700 3450 2750
$Comp
L +12V #PWR01
U 1 1 51FDA0C3
P 3450 2700
F 0 "#PWR01" H 3450 2650 20  0001 C CNN
F 1 "+12V" H 3450 2800 30  0000 C CNN
	1    3450 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 51FDA0C2
P 3450 3200
F 0 "#PWR02" H 3450 3200 30  0001 C CNN
F 1 "GND" H 3450 3130 30  0001 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 51FDA0C1
P 3450 2950
F 0 "C2" H 3500 3050 50  0000 L CNN
F 1 "100nF" H 3500 2850 50  0000 L CNN
	1    3450 2950
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 51FDA0B5
P 3900 4350
F 0 "C4" H 3950 4450 50  0000 L CNN
F 1 "100nF" H 3950 4250 50  0000 L CNN
	1    3900 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 51FDA0B4
P 3900 4600
F 0 "#PWR03" H 3900 4600 30  0001 C CNN
F 1 "GND" H 3900 4530 30  0001 C CNN
	1    3900 4600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR04
U 1 1 51FDA0B3
P 3900 4100
F 0 "#PWR04" H 3900 4050 20  0001 C CNN
F 1 "+12V" H 3900 4200 30  0000 C CNN
	1    3900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4100 3900 4150
Wire Wire Line
	3900 4550 3900 4600
Wire Wire Line
	3900 3600 3900 3650
Connection ~ 6650 4900
Wire Wire Line
	7000 5400 6700 5400
Wire Wire Line
	6700 5400 6700 4900
Wire Wire Line
	6700 4900 6400 4900
Connection ~ 6650 3100
Wire Wire Line
	7000 5200 6900 5200
Wire Wire Line
	6900 5200 6900 3100
Wire Wire Line
	6900 3100 6400 3100
Wire Wire Line
	3300 5800 7000 5800
Wire Wire Line
	3300 5600 7000 5600
Wire Wire Line
	3300 4100 3600 4100
Wire Wire Line
	3600 4100 3600 4800
Wire Wire Line
	3600 4800 4150 4800
Wire Wire Line
	4150 3900 3300 3900
Wire Wire Line
	3300 3700 3700 3700
Wire Wire Line
	3700 3700 3700 3000
Wire Wire Line
	3700 3000 4150 3000
Wire Wire Line
	4100 5000 4100 4900
Wire Wire Line
	4100 4900 4150 4900
Connection ~ 5600 4600
Wire Wire Line
	4800 4800 5400 4800
Wire Wire Line
	5400 4800 5400 4600
Wire Wire Line
	5400 4600 5700 4600
Connection ~ 5600 4500
Wire Wire Line
	5450 4500 5600 4500
Wire Wire Line
	4800 4900 4900 4900
Wire Wire Line
	4900 4900 4900 5000
Wire Wire Line
	4900 5000 5700 5000
Wire Wire Line
	5700 5000 5700 4900
Connection ~ 6650 4800
Wire Wire Line
	6400 4800 6650 4800
Connection ~ 6500 4600
Wire Wire Line
	6400 4600 6500 4600
Wire Wire Line
	6400 4700 6500 4700
Wire Wire Line
	6500 4700 6500 4500
Wire Wire Line
	5600 4600 5600 4300
Wire Wire Line
	5600 4300 6650 4300
Wire Wire Line
	6650 4300 6650 4900
Wire Wire Line
	5700 4800 5500 4800
Wire Wire Line
	5500 4800 5500 4900
Wire Wire Line
	5700 4700 4800 4700
Wire Wire Line
	5050 4500 4900 4500
Wire Wire Line
	4900 4500 4900 4600
Wire Wire Line
	4900 4600 4800 4600
Wire Wire Line
	4150 4600 4100 4600
Wire Wire Line
	4100 4600 4100 4550
Wire Wire Line
	4100 3650 4100 3700
Wire Wire Line
	4100 3700 4150 3700
Wire Wire Line
	4800 3700 4900 3700
Wire Wire Line
	4900 3700 4900 3600
Wire Wire Line
	4900 3600 5050 3600
Wire Wire Line
	5700 3800 4800 3800
Wire Wire Line
	5500 4000 5500 3900
Wire Wire Line
	5500 3900 5700 3900
Wire Wire Line
	6650 4000 6650 3400
Wire Wire Line
	6650 3400 5600 3400
Wire Wire Line
	5600 3400 5600 3700
Wire Wire Line
	6500 3600 6500 3800
Wire Wire Line
	6500 3800 6400 3800
Wire Wire Line
	6400 3700 6500 3700
Connection ~ 6500 3700
Wire Wire Line
	6400 3900 6650 3900
Connection ~ 6650 3900
Wire Wire Line
	5700 4000 5700 4100
Wire Wire Line
	5700 4100 4900 4100
Wire Wire Line
	4900 4100 4900 4000
Wire Wire Line
	4900 4000 4800 4000
Wire Wire Line
	5450 3600 5600 3600
Connection ~ 5600 3600
Wire Wire Line
	5700 3700 5400 3700
Wire Wire Line
	5400 3700 5400 3900
Wire Wire Line
	5400 3900 4800 3900
Connection ~ 5600 3700
Wire Wire Line
	4150 4000 4100 4000
Wire Wire Line
	4100 4000 4100 4100
Wire Wire Line
	4200 2250 4200 2350
Connection ~ 3300 2350
Wire Wire Line
	3300 2400 3300 2300
Connection ~ 3300 1800
Wire Wire Line
	3300 1900 3300 1800
Wire Wire Line
	4200 1800 4100 1800
Wire Wire Line
	3700 2200 3800 2200
Connection ~ 3150 1800
Wire Wire Line
	3150 1700 3150 1800
Wire Wire Line
	4100 3200 4100 3100
Wire Wire Line
	4100 3100 4150 3100
Connection ~ 5600 2800
Wire Wire Line
	4800 3000 5400 3000
Wire Wire Line
	5400 3000 5400 2800
Wire Wire Line
	5400 2800 5700 2800
Connection ~ 5600 2700
Wire Wire Line
	5450 2700 5600 2700
Wire Wire Line
	4800 3100 4900 3100
Wire Wire Line
	4900 3100 4900 3200
Wire Wire Line
	4900 3200 5700 3200
Wire Wire Line
	5700 3200 5700 3100
Connection ~ 6650 3000
Wire Wire Line
	6400 3000 6650 3000
Connection ~ 6500 2800
Wire Wire Line
	6400 2800 6500 2800
Wire Wire Line
	6400 2900 6500 2900
Wire Wire Line
	6500 2900 6500 2700
Wire Wire Line
	5600 2800 5600 2500
Wire Wire Line
	5600 2500 6650 2500
Wire Wire Line
	6650 2500 6650 3100
Wire Wire Line
	5700 3000 5500 3000
Wire Wire Line
	5500 3000 5500 3100
Wire Wire Line
	5700 2900 4800 2900
Wire Wire Line
	5050 2700 4900 2700
Wire Wire Line
	4900 2700 4900 2800
Wire Wire Line
	4900 2800 4800 2800
Wire Wire Line
	4150 2800 4100 2800
Wire Wire Line
	4100 2800 4100 2750
Wire Wire Line
	3050 2000 3150 2000
Wire Wire Line
	3750 2200 3750 2300
Connection ~ 3750 2200
Wire Wire Line
	3400 1800 3050 1800
Wire Wire Line
	3150 2000 3150 2350
Wire Wire Line
	3150 2350 3300 2350
Wire Wire Line
	4200 1850 4200 1700
Connection ~ 4200 1800
Wire Wire Line
	4150 2900 3600 2900
Wire Wire Line
	3600 2900 3600 3600
Wire Wire Line
	3600 3600 3300 3600
Wire Wire Line
	4150 3800 3300 3800
Wire Wire Line
	4150 4700 3700 4700
Wire Wire Line
	3700 4700 3700 4000
Wire Wire Line
	3700 4000 3300 4000
Wire Wire Line
	3300 5500 7000 5500
Wire Wire Line
	7000 5700 3300 5700
Wire Wire Line
	7000 5900 3300 5900
Wire Wire Line
	6400 4000 6800 4000
Wire Wire Line
	6800 4000 6800 5300
Wire Wire Line
	6800 5300 7000 5300
Connection ~ 6650 4000
Wire Wire Line
	3900 3150 3900 3200
$Comp
L +12V #PWR05
U 1 1 51FDA08F
P 3900 3150
F 0 "#PWR05" H 3900 3100 20  0001 C CNN
F 1 "+12V" H 3900 3250 30  0000 C CNN
	1    3900 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 51FDA087
P 3900 3650
F 0 "#PWR06" H 3900 3650 30  0001 C CNN
F 1 "GND" H 3900 3580 30  0001 C CNN
	1    3900 3650
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 51FDA048
P 3900 3400
F 0 "C3" H 3950 3500 50  0000 L CNN
F 1 "100nF" H 3950 3300 50  0000 L CNN
	1    3900 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 51FD9FC1
P 4100 5000
F 0 "#PWR07" H 4100 5000 30  0001 C CNN
F 1 "GND" H 4100 4930 30  0001 C CNN
	1    4100 5000
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR08
U 1 1 51FD9FC0
P 6500 4500
F 0 "#PWR08" H 6500 4450 20  0001 C CNN
F 1 "+24V" H 6500 4600 30  0000 C CNN
	1    6500 4500
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 51FD9FBF
P 5250 4500
F 0 "C8" H 5300 4600 50  0000 L CNN
F 1 "100nF" H 5300 4400 50  0000 L CNN
	1    5250 4500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 51FD9FBE
P 5500 4900
F 0 "#PWR09" H 5500 4900 30  0001 C CNN
F 1 "GND" H 5500 4830 30  0001 C CNN
	1    5500 4900
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR010
U 1 1 51FD9FBD
P 4100 4550
F 0 "#PWR010" H 4100 4500 20  0001 C CNN
F 1 "+12V" H 4100 4650 30  0000 C CNN
	1    4100 4550
	1    0    0    -1  
$EndComp
$Comp
L AO4882 U7
U 1 1 51FD9FBC
P 6050 4750
F 0 "U7" H 5850 5000 60  0000 C CNN
F 1 "AO4882" H 6250 5000 60  0000 C CNN
	1    6050 4750
	1    0    0    -1  
$EndComp
$Comp
L LM5107 U4
U 1 1 51FD9FBB
P 4450 4750
F 0 "U4" H 4250 5050 60  0000 C CNN
F 1 "LM5107" H 4600 5050 60  0000 C CNN
	1    4450 4750
	1    0    0    -1  
$EndComp
$Comp
L LM5107 U3
U 1 1 51FD9F92
P 4450 3850
F 0 "U3" H 4250 4150 60  0000 C CNN
F 1 "LM5107" H 4600 4150 60  0000 C CNN
	1    4450 3850
	1    0    0    -1  
$EndComp
$Comp
L AO4882 U6
U 1 1 51FD9F91
P 6050 3850
F 0 "U6" H 5850 4100 60  0000 C CNN
F 1 "AO4882" H 6250 4100 60  0000 C CNN
	1    6050 3850
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR011
U 1 1 51FD9F90
P 4100 3650
F 0 "#PWR011" H 4100 3600 20  0001 C CNN
F 1 "+12V" H 4100 3750 30  0000 C CNN
	1    4100 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 51FD9F8F
P 5500 4000
F 0 "#PWR012" H 5500 4000 30  0001 C CNN
F 1 "GND" H 5500 3930 30  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 51FD9F8E
P 5250 3600
F 0 "C7" H 5300 3700 50  0000 L CNN
F 1 "100nF" H 5300 3500 50  0000 L CNN
	1    5250 3600
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR013
U 1 1 51FD9F8D
P 6500 3600
F 0 "#PWR013" H 6500 3550 20  0001 C CNN
F 1 "+24V" H 6500 3700 30  0000 C CNN
	1    6500 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 51FD9F8C
P 4100 4100
F 0 "#PWR014" H 4100 4100 30  0001 C CNN
F 1 "GND" H 4100 4030 30  0001 C CNN
	1    4100 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 51FD9D99
P 2950 3850
F 0 "P2" V 2900 3850 60  0000 C CNN
F 1 "CONN_6" V 3000 3850 60  0000 C CNN
	1    2950 3850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 51FD9C02
P 4200 2350
F 0 "#PWR015" H 4200 2350 30  0001 C CNN
F 1 "GND" H 4200 2280 30  0001 C CNN
	1    4200 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 51FD9BF8
P 3300 2400
F 0 "#PWR016" H 3300 2400 30  0001 C CNN
F 1 "GND" H 3300 2330 30  0001 C CNN
	1    3300 2400
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 51FD9BD1
P 4200 2050
F 0 "C5" H 4250 2150 50  0000 L CNN
F 1 "100nF" H 4250 1950 50  0000 L CNN
	1    4200 2050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 51FD9BCA
P 3300 2100
F 0 "C1" H 3350 2200 50  0000 L CNN
F 1 "10uF" H 3350 2000 50  0000 L CNN
	1    3300 2100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR017
U 1 1 51FD9BBC
P 4200 1700
F 0 "#PWR017" H 4200 1650 20  0001 C CNN
F 1 "+12V" H 4200 1800 30  0000 C CNN
	1    4200 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 51FD9BAD
P 3750 2300
F 0 "#PWR018" H 3750 2300 30  0001 C CNN
F 1 "GND" H 3750 2230 30  0001 C CNN
	1    3750 2300
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR019
U 1 1 51FD9BA0
P 3150 1700
F 0 "#PWR019" H 3150 1650 20  0001 C CNN
F 1 "+24V" H 3150 1800 30  0000 C CNN
	1    3150 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 51FD9B85
P 2700 1900
F 0 "P1" V 2650 1900 40  0000 C CNN
F 1 "CONN_2" V 2750 1900 40  0000 C CNN
	1    2700 1900
	-1   0    0    -1  
$EndComp
$Comp
L LM2940 U1
U 1 1 51FD9B10
P 3750 1900
F 0 "U1" H 3550 2150 60  0000 C CNN
F 1 "LM2940" H 3900 2150 60  0000 C CNN
	1    3750 1900
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P4
U 1 1 51FD97B3
P 7350 5550
F 0 "P4" V 7300 5550 60  0000 C CNN
F 1 "CONN_8" V 7400 5550 60  0000 C CNN
	1    7350 5550
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P3
U 1 1 51FD97A9
P 2950 5550
F 0 "P3" V 2900 5550 60  0000 C CNN
F 1 "CONN_8" V 3000 5550 60  0000 C CNN
	1    2950 5550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 51FD9729
P 4100 3200
F 0 "#PWR020" H 4100 3200 30  0001 C CNN
F 1 "GND" H 4100 3130 30  0001 C CNN
	1    4100 3200
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR021
U 1 1 51FD971C
P 6500 2700
F 0 "#PWR021" H 6500 2650 20  0001 C CNN
F 1 "+24V" H 6500 2800 30  0000 C CNN
	1    6500 2700
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 51FD968C
P 5250 2700
F 0 "C6" H 5300 2800 50  0000 L CNN
F 1 "100nF" H 5300 2600 50  0000 L CNN
	1    5250 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR022
U 1 1 51FD9656
P 5500 3100
F 0 "#PWR022" H 5500 3100 30  0001 C CNN
F 1 "GND" H 5500 3030 30  0001 C CNN
	1    5500 3100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR023
U 1 1 51FD9608
P 4100 2750
F 0 "#PWR023" H 4100 2700 20  0001 C CNN
F 1 "+12V" H 4100 2850 30  0000 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
$Comp
L AO4882 U5
U 1 1 51FD93A4
P 6050 2950
F 0 "U5" H 5850 3200 60  0000 C CNN
F 1 "AO4882" H 6250 3200 60  0000 C CNN
	1    6050 2950
	1    0    0    -1  
$EndComp
$Comp
L LM5107 U2
U 1 1 51FD9395
P 4450 2950
F 0 "U2" H 4250 3250 60  0000 C CNN
F 1 "LM5107" H 4600 3250 60  0000 C CNN
	1    4450 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC