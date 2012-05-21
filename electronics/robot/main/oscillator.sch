EESchema Schematic File Version 2  date 2012-05-21T00:58:22 PDT
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
Sheet 15 17
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
	5150 3900 5200 3900
Wire Wire Line
	4150 4300 4150 4250
Wire Wire Line
	5150 4100 5200 4100
Wire Wire Line
	5150 4200 5200 4200
Wire Wire Line
	5200 4000 5150 4000
Wire Wire Line
	4150 3850 4150 3800
$Comp
L ECS-3953M U12
U 1 1 4FB9D6EE
P 6100 4050
F 0 "U12" H 6100 4000 60  0000 C CNN
F 1 "ECS-3953M" H 6100 4100 60  0000 C CNN
F 2 "ECS-3953M" H 6000 3950 60  0001 C CNN
	1    6100 4050
	1    0    0    -1  
$EndComp
Text HLabel 5150 3900 0    60   Input ~ 0
ENABLE
$Comp
L GND #PWR0216
U 1 1 4CC50E98
P 4150 4300
F 0 "#PWR0216" H 4150 4300 30  0001 C CNN
F 1 "GND" H 4150 4230 30  0001 C CNN
	1    4150 4300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0217
U 1 1 4CC50E96
P 4150 3800
F 0 "#PWR0217" H 4150 3760 30  0001 C CNN
F 1 "+3.3V" H 4150 3910 30  0000 C CNN
	1    4150 3800
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 4CC50E90
P 4150 4050
F 0 "C23" H 4200 4150 50  0000 L CNN
F 1 "100nF" H 4200 3950 50  0000 L CNN
F 4 "" H 4150 4050 60  0001 C CNN "Digikey Part"
	1    4150 4050
	1    0    0    -1  
$EndComp
Text HLabel 5150 4100 0    60   Output ~ 0
OSC
$Comp
L +3.3V #PWR0218
U 1 1 4CC50DEA
P 5150 4200
F 0 "#PWR0218" H 5150 4160 30  0001 C CNN
F 1 "+3.3V" H 5150 4310 30  0000 C CNN
	1    5150 4200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0219
U 1 1 4CC50DE7
P 5150 4000
F 0 "#PWR0219" H 5150 4000 30  0001 C CNN
F 1 "GND" H 5150 3930 30  0001 C CNN
	1    5150 4000
	0    1    1    0   
$EndComp
$EndSCHEMATC
