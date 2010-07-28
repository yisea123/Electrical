EESchema Schematic File Version 2  date Wed 28 Jul 2010 03:06:47 PM PDT
LIBS:power,/home/loktinlam/robocup/trunk/electronics/thunderbots-symbols,device,transistors,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,opto,atmel,contrib,valves,./boostconverter.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 2 2
Title ""
Date "28 jul 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7650 4450 7550 4450
Wire Wire Line
	7550 4350 7650 4350
Wire Wire Line
	7550 4550 7650 4550
Wire Wire Line
	7550 4250 7650 4250
Wire Wire Line
	7550 3950 7650 3950
Wire Wire Line
	3650 4250 3750 4250
Wire Wire Line
	3750 4450 3650 4450
Wire Wire Line
	3750 4550 3650 4550
Wire Wire Line
	3750 3550 3650 3550
Wire Wire Line
	3750 3650 3650 3650
Wire Wire Line
	3750 3750 3650 3750
Wire Wire Line
	3750 3850 3650 3850
Wire Wire Line
	3750 3950 3650 3950
Wire Wire Line
	5950 2050 5950 2150
Wire Wire Line
	7600 4050 7550 4050
Wire Wire Line
	5200 6600 5150 6600
Wire Wire Line
	5550 5950 5550 6150
Wire Wire Line
	5750 6800 5750 5950
Wire Wire Line
	5650 5950 5650 6150
Wire Wire Line
	5700 6600 5750 6600
Connection ~ 5750 6600
Wire Wire Line
	3750 4150 3700 4150
Wire Wire Line
	3750 4050 3650 4050
Wire Wire Line
	7550 4150 7650 4150
Wire Wire Line
	5450 5950 5450 6050
Wire Wire Line
	7700 3750 7550 3750
Wire Wire Line
	7700 3850 7550 3850
Wire Wire Line
	5950 5950 5950 6150
Wire Wire Line
	6150 2050 6150 2150
Wire Wire Line
	3600 4350 3750 4350
Kmarq B 6150 5950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6050 5950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5850 5950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5350 5950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5250 5950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5150 5950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 7550 3550 "Warning Pin input Unconnected" F=1
Kmarq B 7550 3650 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6050 2150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5850 2150 "Warning Pin power_in Unconnected" F=1
Kmarq B 5750 2150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5650 2150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5550 2150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5450 2150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5350 2150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5250 2150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 5150 2150 "Warning Pin BiDi Unconnected" F=1
$Comp
L VCC #PWR022
U 1 1 4C505EE1
P 6150 2050
F 0 "#PWR022" H 6150 2150 30  0001 C CNN
F 1 "VCC" H 6150 2150 30  0000 C CNN
	1    6150 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 4C4DFE38
P 7650 4350
F 0 "#PWR023" H 7650 4350 30  0001 C CNN
F 1 "GND" H 7650 4280 30  0001 C CNN
	1    7650 4350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR024
U 1 1 4C4DFE34
P 7650 4550
F 0 "#PWR024" H 7650 4550 30  0001 C CNN
F 1 "GND" H 7650 4480 30  0001 C CNN
	1    7650 4550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 4C4DFE2E
P 7650 4250
F 0 "#PWR025" H 7650 4250 30  0001 C CNN
F 1 "GND" H 7650 4180 30  0001 C CNN
	1    7650 4250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR026
U 1 1 4C4DFE2A
P 7650 3950
F 0 "#PWR026" H 7650 3950 30  0001 C CNN
F 1 "GND" H 7650 3880 30  0001 C CNN
	1    7650 3950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR027
U 1 1 4C4DFE1B
P 3650 4250
F 0 "#PWR027" H 3650 4250 30  0001 C CNN
F 1 "GND" H 3650 4180 30  0001 C CNN
	1    3650 4250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 4C4DFE1A
P 3650 4450
F 0 "#PWR028" H 3650 4450 30  0001 C CNN
F 1 "GND" H 3650 4380 30  0001 C CNN
	1    3650 4450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR029
U 1 1 4C4DFE19
P 3650 4550
F 0 "#PWR029" H 3650 4550 30  0001 C CNN
F 1 "GND" H 3650 4480 30  0001 C CNN
	1    3650 4550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR030
U 1 1 4C4DFE01
P 3650 3550
F 0 "#PWR030" H 3650 3550 30  0001 C CNN
F 1 "GND" H 3650 3480 30  0001 C CNN
	1    3650 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR031
U 1 1 4C4DFE00
P 3650 3650
F 0 "#PWR031" H 3650 3650 30  0001 C CNN
F 1 "GND" H 3650 3580 30  0001 C CNN
	1    3650 3650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR032
U 1 1 4C4DFDF5
P 3650 3750
F 0 "#PWR032" H 3650 3750 30  0001 C CNN
F 1 "GND" H 3650 3680 30  0001 C CNN
	1    3650 3750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR033
U 1 1 4C4DFDF4
P 3650 3850
F 0 "#PWR033" H 3650 3850 30  0001 C CNN
F 1 "GND" H 3650 3780 30  0001 C CNN
	1    3650 3850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR034
U 1 1 4C4DFDEA
P 3650 3950
F 0 "#PWR034" H 3650 3950 30  0001 C CNN
F 1 "GND" H 3650 3880 30  0001 C CNN
	1    3650 3950
	0    1    1    0   
$EndComp
Text HLabel 5950 6150 1    60   Input ~ 0
CHARGE
Text HLabel 7700 3850 2    60   Input ~ 0
OSC2
Text HLabel 7700 3750 2    60   Input ~ 0
OSC1
Text HLabel 7650 4450 2    60   Input ~ 0
VCHMON
$Comp
L GND #PWR035
U 1 1 4C478BA0
P 5450 6050
F 0 "#PWR035" H 5450 6050 30  0001 C CNN
F 1 "GND" H 5450 5980 30  0001 C CNN
	1    5450 6050
	1    0    0    -1  
$EndComp
Text HLabel 5950 2050 3    60   Output ~ 0
PWM
$Comp
L GND #PWR036
U 1 1 4C45DB7D
P 7650 4150
F 0 "#PWR036" H 7650 4150 30  0001 C CNN
F 1 "GND" H 7650 4080 30  0001 C CNN
	1    7650 4150
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR037
U 1 1 4C45DB75
P 7600 4050
F 0 "#PWR037" H 7600 4150 30  0001 C CNN
F 1 "VCC" H 7600 4150 30  0000 C CNN
	1    7600 4050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR038
U 1 1 4C45D9D0
P 3650 4050
F 0 "#PWR038" H 3650 4050 30  0001 C CNN
F 1 "GND" H 3650 3980 30  0001 C CNN
	1    3650 4050
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR039
U 1 1 4C45D96D
P 3700 4150
F 0 "#PWR039" H 3700 4250 30  0001 C CNN
F 1 "VCC" H 3700 4250 30  0000 C CNN
	1    3700 4150
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR040
U 1 1 4C44FA67
P 5150 6600
F 0 "#PWR040" H 5150 6700 30  0001 C CNN
F 1 "VCC" H 5150 6700 30  0000 C CNN
	1    5150 6600
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4C44FA38
P 5450 6600
F 0 "R1" V 5530 6600 50  0000 C CNN
F 1 "10kR" V 5450 6600 50  0000 C CNN
	1    5450 6600
	0    1    1    0   
$EndComp
Text HLabel 5750 6800 1    60   Input ~ 0
MCLR
Text HLabel 5650 6150 1    60   BiDi ~ 0
PGD
Text HLabel 5550 6150 1    60   Input ~ 0
PGC
$Comp
L PIC18F4550 U1
U 1 1 4C44C57A
P 5650 4050
F 0 "U1" H 5650 4000 60  0000 C CNN
F 1 "PIC18F4550" H 5650 4100 60  0000 C CNN
F 2 "TQFP44" H 5550 3900 60  0001 C CNN
	1    5650 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
