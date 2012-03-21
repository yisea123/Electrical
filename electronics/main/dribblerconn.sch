EESchema Schematic File Version 2  date 2012-03-20T22:21:50 PDT
LIBS:power
LIBS:device
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
LIBS:contrib
LIBS:valves
LIBS:thunderbots-symbols
LIBS:main-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 5 17
Title ""
Date "21 mar 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5350 4150 5350 4200
Wire Wire Line
	6150 5150 6150 4900
Connection ~ 6150 5100
Wire Wire Line
	6150 5100 6100 5100
Wire Wire Line
	6150 4900 6100 4900
Wire Wire Line
	7100 4000 6300 4000
Wire Wire Line
	6300 4000 6300 4700
Wire Wire Line
	6300 4700 6100 4700
Wire Wire Line
	4600 4800 4100 4800
Wire Wire Line
	4100 4700 4600 4700
Wire Wire Line
	4600 4600 4100 4600
Wire Bus Line
	3850 4950 4000 4950
Wire Wire Line
	7100 3700 7050 3700
Wire Wire Line
	7050 3800 7100 3800
Wire Wire Line
	6600 3400 7100 3400
Wire Wire Line
	6600 3500 7100 3500
Wire Wire Line
	6600 3600 7100 3600
Wire Bus Line
	6400 3200 6500 3200
Wire Bus Line
	6500 3200 6500 3500
Wire Bus Line
	4000 4950 4000 4700
Wire Wire Line
	7100 3900 6200 3900
Wire Wire Line
	6200 3900 6200 4600
Wire Wire Line
	6200 4600 6100 4600
Wire Wire Line
	6100 4800 6400 4800
Wire Wire Line
	6400 4800 6400 4100
Wire Wire Line
	6400 4100 7100 4100
Wire Wire Line
	6100 5000 6150 5000
Connection ~ 6150 5000
Wire Wire Line
	5350 5550 5350 5500
$Comp
L +3.3V #PWR?
U 1 1 4F6454AF
P 5350 4150
F 0 "#PWR?" H 5350 4110 30  0001 C CNN
F 1 "+3.3V" H 5350 4260 30  0000 C CNN
	1    5350 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4F6454AB
P 5350 5550
F 0 "#PWR?" H 5350 5550 30  0001 C CNN
F 1 "GND" H 5350 5480 30  0001 C CNN
	1    5350 5550
	1    0    0    -1  
$EndComp
NoConn ~ 4600 5100
NoConn ~ 4600 5000
NoConn ~ 4600 4900
$Comp
L 74HC4050 U?
U 1 1 4F64547F
P 5350 4850
F 0 "U?" H 5350 4800 60  0000 C CNN
F 1 "74HC4050" H 5350 4900 60  0000 C CNN
F 2 "SO16L" H 5250 4700 60  0001 C CNN
F 3 "568-8150-1-ND" H 5450 4900 60  0001 C CNN
	1    5350 4850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4F62EEF7
P 6150 5150
F 0 "#PWR?" H 6150 5150 30  0001 C CNN
F 1 "GND" H 6150 5080 30  0001 C CNN
	1    6150 5150
	1    0    0    -1  
$EndComp
Entry Wire Line
	4000 4900 4100 4800
Text Label 4150 4800 0    60   ~ 0
SENSOR2
Text HLabel 3850 4950 0    60   Output ~ 0
SENSOR[0..2]
Text Label 4150 4600 0    60   ~ 0
SENSOR0
Text Label 4150 4700 0    60   ~ 0
SENSOR1
Entry Wire Line
	4000 4700 4100 4600
Entry Wire Line
	4000 4800 4100 4700
Text HLabel 6400 3200 0    60   Input ~ 0
PHASE[0..2]
Entry Wire Line
	6500 3500 6600 3600
Entry Wire Line
	6500 3400 6600 3500
Entry Wire Line
	6500 3300 6600 3400
$Comp
L GND #PWR032
U 1 1 4CD7321A
P 7050 3800
F 0 "#PWR032" H 7050 3800 30  0001 C CNN
F 1 "GND" H 7050 3730 30  0001 C CNN
	1    7050 3800
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR033
U 1 1 4CD73217
P 7050 3700
F 0 "#PWR033" H 7050 3790 20  0001 C CNN
F 1 "+5V" H 7050 3790 30  0000 C CNN
	1    7050 3700
	0    -1   -1   0   
$EndComp
Text Label 6600 3600 0    60   ~ 0
PHASE2
Text Label 6600 3500 0    60   ~ 0
PHASE1
Text Label 6600 3400 0    60   ~ 0
PHASE0
$Comp
L CONN_8 P14
U 1 1 4CD731E0
P 7450 3750
F 0 "P14" V 7400 3750 60  0000 C CNN
F 1 "CONN_8" V 7500 3750 60  0000 C CNN
F 2 "DRIBBLERCONN" H 7450 3750 60  0001 C CNN
F 4 "dribbler-header" H 7450 3750 60  0001 C CNN "Field1"
	1    7450 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
