EESchema Schematic File Version 2  date 2012-04-06T18:46:56 PDT
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
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "noname.sch"
Date "7 apr 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6650 4000 0    60   ~ 0
To Lateral Position Sensor
Text Notes 4900 4350 2    60   ~ 0
To Mainboard
Wire Wire Line
	6150 3700 5650 3700
Wire Wire Line
	5650 3700 5650 3800
Wire Wire Line
	5650 3800 5400 3800
Wire Wire Line
	6150 3900 5850 3900
Wire Wire Line
	5850 3900 5850 4000
Wire Wire Line
	5850 4000 5400 4000
Wire Wire Line
	6150 4100 6050 4100
Wire Wire Line
	6050 4100 6050 4200
Wire Wire Line
	6050 4200 5400 4200
Wire Wire Line
	5400 4300 7350 4300
Wire Wire Line
	7350 4300 7350 4450
Wire Wire Line
	6750 5000 6850 5000
Wire Wire Line
	6850 5000 6850 4500
Wire Wire Line
	6850 4500 5400 4500
Wire Wire Line
	5450 4850 5400 4850
Wire Wire Line
	5400 4850 5400 4800
Wire Wire Line
	5400 4600 6750 4600
Wire Wire Line
	5950 4850 5950 4700
Wire Wire Line
	5950 4700 5400 4700
Wire Wire Line
	5400 4400 6950 4400
Wire Wire Line
	6950 4400 6950 4450
Wire Wire Line
	5400 4100 5950 4100
Wire Wire Line
	5950 4100 5950 4000
Wire Wire Line
	5950 4000 6150 4000
Wire Wire Line
	5400 3900 5750 3900
Wire Wire Line
	5750 3900 5750 3800
Wire Wire Line
	5750 3800 6150 3800
$Comp
L CONN_6 P?
U 1 1 4F7F9A98
P 6500 3950
F 0 "P?" V 6450 3950 60  0000 C CNN
F 1 "CONN_6" V 6550 3950 60  0000 C CNN
F 4 "WM1724-ND" H 6500 3950 60  0001 C CNN "Field1"
	1    6500 3950
	1    0    0    1   
$EndComp
$Comp
L CONN_11 P?
U 1 1 4F697E69
P 5050 4300
F 0 "P?" V 5000 4300 60  0000 C CNN
F 1 "CONN_11" V 5100 4300 60  0000 C CNN
F 4 "WM1729-ND" H 5050 4300 60  0001 C CNN "Field1"
	1    5050 4300
	-1   0    0    1   
$EndComp
$Comp
L THERMISTOR TH?
U 1 1 4E03DE1E
P 5700 4850
F 0 "TH?" V 5800 4900 50  0000 C CNN
F 1 "THERMISTOR" V 5600 4850 50  0000 C CNN
F 4 "568-3248-1-ND" H 5700 4850 60  0001 C CNN "Field1"
	1    5700 4850
	0    1    1    0   
$EndComp
$Comp
L NPN Q?
U 1 1 4E03DD91
P 6650 4800
F 0 "Q?" H 6650 4650 50  0000 R CNN
F 1 "PHOTOTRANSISTOR" H 6650 4950 50  0000 R CNN
F 4 "PNA2602M-ND" H 6650 4800 60  0001 C CNN "Field1"
	1    6650 4800
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 4E03DCF1
P 7150 4450
F 0 "D?" H 7150 4550 50  0000 C CNN
F 1 "LED" H 7150 4350 50  0000 C CNN
F 4 "365-1145-ND" H 7150 4450 60  0001 C CNN "Field1"
	1    7150 4450
	1    0    0    -1  
$EndComp
$EndSCHEMATC