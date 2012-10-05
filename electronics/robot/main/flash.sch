EESchema Schematic File Version 2  date 2012-10-04T17:07:23 PDT
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
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 6 15
Title ""
Date "5 oct 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7450 4000 7100 4000
Wire Wire Line
	7100 4000 7100 3650
Wire Wire Line
	7100 3650 7200 3650
Wire Wire Line
	7200 3450 6900 3450
Wire Wire Line
	7200 3250 7050 3250
Wire Wire Line
	7200 3050 4750 3050
Connection ~ 7000 4300
Wire Wire Line
	7000 4300 7000 3550
Connection ~ 4850 4100
Wire Wire Line
	4850 4100 4850 3350
Connection ~ 6650 4050
Wire Wire Line
	6650 4050 6700 4050
Wire Wire Line
	6600 4100 6650 4100
Wire Wire Line
	5050 4300 5100 4300
Wire Wire Line
	7050 4300 6600 4300
Wire Wire Line
	4450 4000 5100 4000
Wire Wire Line
	4450 4100 5100 4100
Wire Wire Line
	6600 4200 7050 4200
Wire Wire Line
	5100 4200 5050 4200
Wire Wire Line
	6600 4000 6650 4000
Wire Wire Line
	6650 4000 6650 4100
Wire Wire Line
	4750 3050 4750 4000
Connection ~ 4750 4000
Wire Wire Line
	6900 3450 6900 4200
Connection ~ 6900 4200
Wire Wire Line
	7000 3550 7200 3550
Wire Wire Line
	7200 3150 7050 3150
Wire Wire Line
	4850 3350 7200 3350
Wire Wire Line
	7200 3750 7200 3900
Wire Wire Line
	7200 3900 7450 3900
Text HLabel 7450 4000 2    60   Output ~ 0
POWER_ON
Text HLabel 7450 3900 2    60   Output ~ 0
PROG_B
$Comp
L CONN_8 P17
U 1 1 506E24B9
P 7550 3400
F 0 "P17" V 7500 3400 60  0000 C CNN
F 1 "CONN_8" V 7600 3400 60  0000 C CNN
	1    7550 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR082
U 1 1 4F6961FE
P 7050 3250
F 0 "#PWR082" H 7050 3250 30  0001 C CNN
F 1 "GND" H 7050 3180 30  0001 C CNN
	1    7050 3250
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR083
U 1 1 4F6961F9
P 7050 3150
F 0 "#PWR083" H 7050 3110 30  0001 C CNN
F 1 "+3.3V" H 7050 3260 30  0000 C CNN
	1    7050 3150
	0    -1   -1   0   
$EndComp
$Comp
L W25Q16BV U6
U 1 1 4CD66182
P 5850 4150
F 0 "U6" H 5850 4150 60  0000 C CNN
F 1 "W25Q16BV" H 5850 4450 60  0000 C CNN
F 2 "SO8S" H 5850 4150 60  0001 C CNN
F 4 "W25Q16BVSSIG-ND" H 5850 4150 60  0001 C CNN "Field1"
	1    5850 4150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR084
U 1 1 4CC3848B
P 6700 4050
F 0 "#PWR084" H 6700 4010 30  0001 C CNN
F 1 "+3.3V" H 6700 4160 30  0000 C CNN
	1    6700 4050
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR085
U 1 1 4CC3847F
P 5050 4200
F 0 "#PWR085" H 5050 4160 30  0001 C CNN
F 1 "+3.3V" H 5050 4310 30  0000 C CNN
	1    5050 4200
	0    -1   -1   0   
$EndComp
Text HLabel 4450 4100 0    60   Output ~ 0
MISO
Text HLabel 4450 4000 0    60   Input ~ 0
/CS
Text HLabel 7050 4300 2    60   Input ~ 0
MOSI
Text HLabel 7050 4200 2    60   Input ~ 0
CLK
$Comp
L GND #PWR086
U 1 1 4ABE8D7B
P 5050 4300
F 0 "#PWR086" H 5050 4300 30  0001 C CNN
F 1 "GND" H 5050 4230 30  0001 C CNN
	1    5050 4300
	0    1    1    0   
$EndComp
$EndSCHEMATC
