EESchema Schematic File Version 2  date 2012-05-20T23:12:57 PDT
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
Sheet 9 17
Title ""
Date "21 may 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6900 3000 6450 3000
Wire Wire Line
	6450 3000 6450 3750
Wire Wire Line
	6450 3750 6050 3750
Wire Wire Line
	6050 3550 6250 3550
Wire Wire Line
	6250 3550 6250 3950
Wire Wire Line
	7500 2600 7450 2600
Wire Wire Line
	6800 2900 6900 2900
Wire Wire Line
	7500 3550 7450 3550
Connection ~ 6850 3850
Wire Bus Line
	3950 3850 3950 3550
Wire Wire Line
	5300 4400 5300 4350
Wire Wire Line
	4050 3850 4550 3850
Wire Wire Line
	4550 3550 4050 3550
Wire Wire Line
	6100 3650 6050 3650
Wire Wire Line
	6850 3100 6900 3100
Wire Wire Line
	6250 4600 6900 4600
Wire Wire Line
	6250 3950 6900 3950
Wire Bus Line
	6150 4500 6150 5100
Wire Bus Line
	6150 5100 5900 5100
Connection ~ 6900 4600
Wire Wire Line
	6900 4850 6900 4750
Wire Wire Line
	6900 4450 6900 4350
Wire Wire Line
	6850 4250 6900 4250
Wire Wire Line
	6900 4650 6900 4550
Connection ~ 6900 4800
Connection ~ 6900 4400
Wire Wire Line
	6250 4400 6900 4400
Wire Wire Line
	6250 4800 6900 4800
Wire Wire Line
	6900 4150 6050 4150
Wire Wire Line
	4550 3450 4050 3450
Wire Wire Line
	4550 3750 4050 3750
Wire Wire Line
	4550 3950 4050 3950
Wire Bus Line
	3800 3650 3950 3650
Wire Wire Line
	6050 4150 6050 3950
Wire Wire Line
	5300 3000 5300 3050
Wire Wire Line
	6900 3850 6800 3850
Wire Wire Line
	6850 3850 6850 3550
Wire Wire Line
	6850 3550 7050 3550
Wire Wire Line
	6850 2900 6850 2600
Wire Wire Line
	6850 2600 7050 2600
Connection ~ 6850 2900
Wire Wire Line
	6900 4050 6350 4050
Wire Wire Line
	6350 4050 6350 3450
Wire Wire Line
	6350 3450 6050 3450
Wire Wire Line
	6050 3850 6550 3850
Wire Wire Line
	6550 3850 6550 3200
Wire Wire Line
	6550 3200 6900 3200
$Comp
L GND #PWR229
U 1 1 4F698265
P 7500 2600
AR Path="/4CD73188/4F698265" Ref="#PWR229"  Part="1" 
AR Path="/4CD7317F/4F698265" Ref="#PWR220"  Part="1" 
AR Path="/4CD73172/4F698265" Ref="#PWR211"  Part="1" 
AR Path="/4CD73053/4F698265" Ref="#PWR202"  Part="1" 
F 0 "#PWR202" H 7500 2600 30  0001 C CNN
F 1 "GND" H 7500 2530 30  0001 C CNN
	1    7500 2600
	0    -1   -1   0   
$EndComp
$Comp
L C C55
U 1 1 4F69825D
P 7250 2600
AR Path="/4CD73188/4F69825D" Ref="C55"  Part="1" 
AR Path="/4CD7317F/4F69825D" Ref="C53"  Part="1" 
AR Path="/4CD73172/4F69825D" Ref="C51"  Part="1" 
AR Path="/4CD73053/4F69825D" Ref="C49"  Part="1" 
F 0 "C49" H 7300 2700 50  0000 L CNN
F 1 "10uF" H 7300 2500 50  0000 L CNN
	1    7250 2600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR230
U 1 1 4F69823B
P 7500 3550
AR Path="/4CD73188/4F69823B" Ref="#PWR230"  Part="1" 
AR Path="/4CD7317F/4F69823B" Ref="#PWR221"  Part="1" 
AR Path="/4CD73172/4F69823B" Ref="#PWR212"  Part="1" 
AR Path="/4CD73053/4F69823B" Ref="#PWR203"  Part="1" 
F 0 "#PWR203" H 7500 3550 30  0001 C CNN
F 1 "GND" H 7500 3480 30  0001 C CNN
	1    7500 3550
	0    -1   -1   0   
$EndComp
$Comp
L C C56
U 1 1 4F698233
P 7250 3550
AR Path="/4CD73188/4F698233" Ref="C56"  Part="1" 
AR Path="/4CD7317F/4F698233" Ref="C54"  Part="1" 
AR Path="/4CD73172/4F698233" Ref="C52"  Part="1" 
AR Path="/4CD73053/4F698233" Ref="C50"  Part="1" 
F 0 "C50" H 7300 3650 50  0000 L CNN
F 1 "10uF" H 7300 3450 50  0000 L CNN
	1    7250 3550
	0    1    1    0   
$EndComp
NoConn ~ 4550 3650
$Comp
L +3.3V #PWR195
U 1 1 4F64543E
P 5300 3000
AR Path="/4CD73053/4F64543E" Ref="#PWR195"  Part="1" 
AR Path="/4CD73188/4F64543E" Ref="#PWR222"  Part="1" 
AR Path="/4CD7317F/4F64543E" Ref="#PWR213"  Part="1" 
AR Path="/4CD73172/4F64543E" Ref="#PWR204"  Part="1" 
F 0 "#PWR195" H 5300 2960 30  0001 C CNN
F 1 "+3.3V" H 5300 3110 30  0000 C CNN
	1    5300 3000
	1    0    0    -1  
$EndComp
$Comp
L 74HC4050 U43
U 1 1 4F64540F
P 5300 3700
AR Path="/4CD73053/4F64540F" Ref="U43"  Part="1" 
AR Path="/4CD73188/4F64540F" Ref="U46"  Part="1" 
AR Path="/4CD7317F/4F64540F" Ref="U45"  Part="1" 
AR Path="/4CD73172/4F64540F" Ref="U44"  Part="1" 
F 0 "U43" H 5300 3650 60  0000 C CNN
F 1 "74HC4050" H 5300 3750 60  0000 C CNN
F 2 "SO16N" H 5200 3550 60  0001 C CNN
F 4 "568-8150-1-ND" H 5300 3700 60  0001 C CNN "Field1"
	1    5300 3700
	-1   0    0    -1  
$EndComp
Entry Wire Line
	3950 3650 4050 3550
Entry Wire Line
	3950 3550 4050 3450
Entry Wire Line
	3950 3850 4050 3950
Entry Wire Line
	3950 3750 4050 3850
Entry Wire Line
	3950 3650 4050 3750
$Comp
L GND #PWR197
U 1 1 4F62AFE9
P 6100 3650
AR Path="/4CD73053/4F62AFE9" Ref="#PWR197"  Part="1" 
AR Path="/4CD73188/4F62AFE9" Ref="#PWR224"  Part="1" 
AR Path="/4CD7317F/4F62AFE9" Ref="#PWR215"  Part="1" 
AR Path="/4CD73172/4F62AFE9" Ref="#PWR206"  Part="1" 
F 0 "#PWR197" H 6100 3650 30  0001 C CNN
F 1 "GND" H 6100 3580 30  0001 C CNN
	1    6100 3650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR196
U 1 1 4F62AF30
P 5300 4400
AR Path="/4CD73053/4F62AF30" Ref="#PWR196"  Part="1" 
AR Path="/4CD73188/4F62AF30" Ref="#PWR223"  Part="1" 
AR Path="/4CD7317F/4F62AF30" Ref="#PWR214"  Part="1" 
AR Path="/4CD73172/4F62AF30" Ref="#PWR205"  Part="1" 
F 0 "#PWR196" H 5300 4400 30  0001 C CNN
F 1 "GND" H 5300 4330 30  0001 C CNN
	1    5300 4400
	1    0    0    -1  
$EndComp
Text Label 4100 3850 0    60   ~ 0
SENSOR4
Text Label 4100 3750 0    60   ~ 0
SENSOR3
$Comp
L GND #PWR227
U 1 1 4F6292C5
P 6850 3100
AR Path="/4CD73188/4F6292C5" Ref="#PWR227"  Part="1" 
AR Path="/4CD7317F/4F6292C5" Ref="#PWR218"  Part="1" 
AR Path="/4CD73053/4F6292C5" Ref="#PWR200"  Part="1" 
AR Path="/4CD73172/4F6292C5" Ref="#PWR209"  Part="1" 
F 0 "#PWR200" H 6850 3100 30  0001 C CNN
F 1 "GND" H 6850 3030 30  0001 C CNN
	1    6850 3100
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR225
U 1 1 4F6292C2
P 6800 2900
AR Path="/4CD73188/4F6292C2" Ref="#PWR225"  Part="1" 
AR Path="/4CD7317F/4F6292C2" Ref="#PWR216"  Part="1" 
AR Path="/4CD73053/4F6292C2" Ref="#PWR198"  Part="1" 
AR Path="/4CD73172/4F6292C2" Ref="#PWR207"  Part="1" 
F 0 "#PWR198" H 6800 2990 20  0001 C CNN
F 1 "+5V" H 6800 2990 30  0000 C CNN
	1    6800 2900
	0    -1   -1   0   
$EndComp
$Comp
L CONN_4 P23
U 1 1 4F6292AE
P 7250 3050
AR Path="/4CD73188/4F6292AE" Ref="P23"  Part="1" 
AR Path="/4CD7317F/4F6292AE" Ref="P22"  Part="1" 
AR Path="/4CD73053/4F6292AE" Ref="P20"  Part="1" 
AR Path="/4CD73172/4F6292AE" Ref="P21"  Part="1" 
F 0 "P20" V 7200 3050 50  0000 C CNN
F 1 "CONN_4" V 7300 3050 50  0000 C CNN
F 2 "53048-0410" H 7250 3050 60  0001 C CNN
F 4 "WM1744-ND" H 7250 3050 60  0001 C CNN "Field1"
	1    7250 3050
	1    0    0    -1  
$EndComp
Entry Wire Line
	6150 4900 6250 4800
Entry Wire Line
	6150 4700 6250 4600
Entry Wire Line
	6150 4500 6250 4400
Text Label 4100 3550 0    60   ~ 0
SENSOR2
Text Label 4100 3950 0    60   ~ 0
SENSOR1
Text Label 4100 3450 0    60   ~ 0
SENSOR0
Text HLabel 3800 3650 0    60   Output ~ 0
SENSOR[0..4]
Text Label 6300 4400 0    60   ~ 0
PHASE2
Text Label 6300 4600 0    60   ~ 0
PHASE1
Text Label 6300 4800 0    60   ~ 0
PHASE0
Text HLabel 5900 5100 0    60   Input ~ 0
PHASE[0..2]
$Comp
L GND #PWR201
U 1 1 4CD730A5
P 6850 4250
AR Path="/4CD73053/4CD730A5" Ref="#PWR201"  Part="1" 
AR Path="/4CD73188/4CD730A5" Ref="#PWR228"  Part="1" 
AR Path="/4CD7317F/4CD730A5" Ref="#PWR219"  Part="1" 
AR Path="/4CD73172/4CD730A5" Ref="#PWR210"  Part="1" 
F 0 "#PWR201" H 6850 4250 30  0001 C CNN
F 1 "GND" H 6850 4180 30  0001 C CNN
	1    6850 4250
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR199
U 1 1 4CD73087
P 6800 3850
AR Path="/4CD73053/4CD73087" Ref="#PWR199"  Part="1" 
AR Path="/4CD73188/4CD73087" Ref="#PWR226"  Part="1" 
AR Path="/4CD7317F/4CD73087" Ref="#PWR217"  Part="1" 
AR Path="/4CD73172/4CD73087" Ref="#PWR208"  Part="1" 
F 0 "#PWR199" H 6800 3940 20  0001 C CNN
F 1 "+5V" H 6800 3940 30  0000 C CNN
	1    6800 3850
	0    -1   -1   0   
$EndComp
$Comp
L CONN_11 P10
U 1 1 4CD73060
P 7250 4350
AR Path="/4CD73053/4CD73060" Ref="P10"  Part="1" 
AR Path="/4CD73188/4CD73060" Ref="P11"  Part="1" 
AR Path="/4CD7317F/4CD73060" Ref="P12"  Part="1" 
AR Path="/4CD73172/4CD73060" Ref="P13"  Part="1" 
F 0 "P10" V 7200 4350 60  0000 C CNN
F 1 "CONN_11" V 7300 4350 60  0000 C CNN
F 2 "FH12-11S-1SH" H 7250 4350 60  0001 C CNN
F 4 "HFB111CT-ND" H 7250 4350 60  0001 C CNN "Field1"
	1    7250 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
