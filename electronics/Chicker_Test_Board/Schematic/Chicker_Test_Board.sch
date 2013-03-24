EESchema Schematic File Version 2  date Sat 09 Mar 2013 04:46:37 PM PST
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
LIBS:Chicker_Test_Board-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "10 mar 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7900 3650 6850 3650
Wire Wire Line
	6850 3650 6850 3300
Wire Wire Line
	6850 3300 6600 3300
Wire Wire Line
	7900 3350 7200 3350
Wire Wire Line
	7200 3350 7200 2450
Wire Wire Line
	7200 2450 6600 2450
Wire Wire Line
	6950 4350 6950 3050
Wire Wire Line
	6950 4350 6600 4350
Connection ~ 7300 3550
Wire Wire Line
	7900 3550 7300 3550
Connection ~ 7300 3250
Wire Wire Line
	7900 3250 7300 3250
Wire Wire Line
	7300 4150 7300 2850
Wire Wire Line
	7300 2850 7900 2850
Connection ~ 2400 2400
Wire Wire Line
	2400 2400 2400 2150
Wire Wire Line
	2400 2150 7350 2150
Wire Wire Line
	7350 2650 7900 2650
Connection ~ 2850 2750
Wire Wire Line
	3050 2750 2300 2750
Wire Wire Line
	3050 2750 3050 4650
Wire Wire Line
	3050 4650 4700 4650
Wire Wire Line
	2450 2450 2450 2400
Wire Wire Line
	2450 2400 1850 2400
Wire Wire Line
	4700 2450 3250 2450
Wire Wire Line
	2850 2750 2850 2850
Wire Wire Line
	1850 2600 2300 2600
Wire Wire Line
	2300 2600 2300 2750
Wire Wire Line
	4700 4750 2700 4750
Wire Wire Line
	2700 4750 2700 2750
Connection ~ 2700 2750
Wire Wire Line
	7900 2750 7350 2750
Wire Wire Line
	7350 2750 7350 2150
Connection ~ 7350 2650
Wire Wire Line
	7900 2950 7300 2950
Connection ~ 7300 2950
Wire Wire Line
	7900 3450 7300 3450
Connection ~ 7300 3450
Wire Wire Line
	6950 3050 7900 3050
Wire Wire Line
	6600 2550 7150 2550
Wire Wire Line
	7150 2550 7150 3150
Wire Wire Line
	7150 3150 7900 3150
Wire Wire Line
	7900 3750 7000 3750
Wire Wire Line
	7000 3750 7000 2300
Wire Wire Line
	7000 2300 4500 2300
Wire Wire Line
	4500 2300 4500 2450
Connection ~ 4500 2450
$Comp
L GND #PWR?
U 1 1 513BC679
P 7300 4150
F 0 "#PWR?" H 7300 4150 30  0001 C CNN
F 1 "GND" H 7300 4080 30  0001 C CNN
	1    7300 4150
	1    0    0    -1  
$EndComp
$Comp
L CONN_12 P?
U 1 1 513BA17E
P 8250 3200
F 0 "P?" V 8200 3200 60  0000 C CNN
F 1 "CONN_12" V 8300 3200 60  0000 C CNN
	1    8250 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 513BA08C
P 1500 2500
F 0 "P?" V 1450 2500 40  0000 C CNN
F 1 "CONN_2" V 1550 2500 40  0000 C CNN
	1    1500 2500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 513BA073
P 2850 2850
F 0 "#PWR?" H 2850 2850 30  0001 C CNN
F 1 "GND" H 2850 2780 30  0001 C CNN
	1    2850 2850
	1    0    0    -1  
$EndComp
$Comp
L 7805 U?
U 1 1 513BA04E
P 2850 2500
F 0 "U?" H 3000 2304 60  0000 C CNN
F 1 "7805" H 2850 2700 60  0000 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328-P IC?
U 1 1 513BA03A
P 5600 3550
F 0 "IC?" H 4900 4800 50  0000 L BNN
F 1 "ATMEGA328-P" H 5850 2150 50  0000 L BNN
F 2 "DIL28" H 5000 2200 50  0001 C CNN
	1    5600 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC