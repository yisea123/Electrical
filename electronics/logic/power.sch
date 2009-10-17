EESchema Schematic File Version 2  date Fri Oct 16 18:32:14 2009
LIBS:power,../thunderbots-symbols,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,valves,./logic.cache
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 7 7
Title ""
Date "17 oct 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 78ST105 U3
U 1 1 4ABF13CA
P 4150 4900
F 0 "U3" H 4300 4704 60  0000 C CNN
F 1 "78ST105" H 4150 5100 60  0000 C CNN
	1    4150 4900
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 4ABF01A9
P 4800 5150
F 0 "C2" H 4850 5250 50  0000 L CNN
F 1 "100uF" H 4850 5050 50  0000 L CNN
	1    4800 5150
	1    0    0    -1  
$EndComp
$Comp
L CP C14
U 1 1 4ABF00CA
P 3800 3650
F 0 "C14" H 3850 3750 50  0000 L CNN
F 1 "100uF" H 3850 3550 50  0000 L CNN
	1    3800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3900 6600 3850
Wire Wire Line
	6250 3450 6250 3400
Wire Wire Line
	5550 3900 5550 3850
Wire Wire Line
	4850 3900 4850 3850
Wire Wire Line
	4500 3450 4500 3400
Wire Wire Line
	5200 3450 5200 3400
Wire Wire Line
	5900 3850 5900 3900
Wire Wire Line
	4150 3850 4150 3900
Wire Wire Line
	3800 3450 3800 3400
Wire Wire Line
	3450 3400 3450 3450
Wire Wire Line
	4150 5450 7200 5450
Wire Wire Line
	4150 5550 4150 5150
Wire Wire Line
	7900 4750 7900 4850
Wire Wire Line
	7200 5450 7200 5150
Connection ~ 6500 4850
Connection ~ 5850 5450
Wire Wire Line
	5250 5450 5250 5350
Wire Wire Line
	5450 4850 4550 4850
Connection ~ 4800 5450
Connection ~ 4800 4850
Wire Wire Line
	4800 5450 4800 5350
Wire Wire Line
	3750 4850 3500 4850
Wire Wire Line
	4800 4850 4800 4950
Connection ~ 4150 5450
Wire Wire Line
	5250 4950 5250 4850
Connection ~ 5250 4850
Wire Wire Line
	5850 5450 5850 5150
Connection ~ 5250 5450
Wire Wire Line
	6800 4850 6250 4850
Wire Wire Line
	7900 4850 7600 4850
Wire Wire Line
	6500 4850 6500 4750
Wire Wire Line
	3500 4850 3500 4750
Wire Wire Line
	3450 3850 3450 3900
Wire Wire Line
	3800 3850 3800 3900
Wire Wire Line
	4150 3400 4150 3450
Wire Wire Line
	5900 3400 5900 3450
Wire Wire Line
	5550 3400 5550 3450
Wire Wire Line
	4850 3400 4850 3450
Wire Wire Line
	4500 3850 4500 3900
Wire Wire Line
	5200 3850 5200 3900
Wire Wire Line
	6600 3400 6600 3450
Wire Wire Line
	6250 3850 6250 3900
$Comp
L GND #PWR039
U 1 1 4ABECE82
P 6600 3900
F 0 "#PWR039" H 6600 3900 30  0001 C CNN
F 1 "GND" H 6600 3830 30  0001 C CNN
	1    6600 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 4ABECE80
P 6250 3900
F 0 "#PWR040" H 6250 3900 30  0001 C CNN
F 1 "GND" H 6250 3830 30  0001 C CNN
	1    6250 3900
	1    0    0    -1  
$EndComp
$Comp
L +1.2V #PWR041
U 1 1 4ABECE7D
P 6600 3400
F 0 "#PWR041" H 6600 3540 20  0001 C CNN
F 1 "+1.2V" H 6600 3510 30  0000 C CNN
	1    6600 3400
	1    0    0    -1  
$EndComp
$Comp
L +1.2V #PWR042
U 1 1 4ABECE7A
P 6250 3400
F 0 "#PWR042" H 6250 3540 20  0001 C CNN
F 1 "+1.2V" H 6250 3510 30  0000 C CNN
	1    6250 3400
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 4ABECE74
P 6600 3650
F 0 "C13" H 6650 3750 50  0000 L CNN
F 1 "100nF" H 6650 3550 50  0000 L CNN
	1    6600 3650
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 4ABECE6E
P 6250 3650
F 0 "C12" H 6300 3750 50  0000 L CNN
F 1 "100nF" H 6300 3550 50  0000 L CNN
	1    6250 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 4ABECE4C
P 5550 3900
F 0 "#PWR043" H 5550 3900 30  0001 C CNN
F 1 "GND" H 5550 3830 30  0001 C CNN
	1    5550 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 4ABECE4A
P 5200 3900
F 0 "#PWR044" H 5200 3900 30  0001 C CNN
F 1 "GND" H 5200 3830 30  0001 C CNN
	1    5200 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 4ABECE48
P 4850 3900
F 0 "#PWR045" H 4850 3900 30  0001 C CNN
F 1 "GND" H 4850 3830 30  0001 C CNN
	1    4850 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 4ABECE47
P 4500 3900
F 0 "#PWR046" H 4500 3900 30  0001 C CNN
F 1 "GND" H 4500 3830 30  0001 C CNN
	1    4500 3900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR047
U 1 1 4ABECE40
P 5550 3400
F 0 "#PWR047" H 5550 3500 30  0001 C CNN
F 1 "VCC" H 5550 3500 30  0000 C CNN
	1    5550 3400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR048
U 1 1 4ABECE3F
P 5200 3400
F 0 "#PWR048" H 5200 3500 30  0001 C CNN
F 1 "VCC" H 5200 3500 30  0000 C CNN
	1    5200 3400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR049
U 1 1 4ABECE3D
P 4850 3400
F 0 "#PWR049" H 4850 3500 30  0001 C CNN
F 1 "VCC" H 4850 3500 30  0000 C CNN
	1    4850 3400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR050
U 1 1 4ABECE3B
P 4500 3400
F 0 "#PWR050" H 4500 3500 30  0001 C CNN
F 1 "VCC" H 4500 3500 30  0000 C CNN
	1    4500 3400
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 4ABECE2A
P 5550 3650
F 0 "C11" H 5600 3750 50  0000 L CNN
F 1 "100nF" H 5600 3550 50  0000 L CNN
	1    5550 3650
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 4ABECDDC
P 5200 3650
F 0 "C10" H 5250 3750 50  0000 L CNN
F 1 "100nF" H 5250 3550 50  0000 L CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 4ABECDD6
P 4850 3650
F 0 "C9" H 4900 3750 50  0000 L CNN
F 1 "100nF" H 4900 3550 50  0000 L CNN
	1    4850 3650
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 4ABECDC0
P 4500 3650
F 0 "C8" H 4550 3750 50  0000 L CNN
F 1 "100nF" H 4550 3550 50  0000 L CNN
	1    4500 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 4ABECD05
P 3800 3900
F 0 "#PWR051" H 3800 3900 30  0001 C CNN
F 1 "GND" H 3800 3830 30  0001 C CNN
	1    3800 3900
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR052
U 1 1 4ABECD02
P 3800 3400
F 0 "#PWR052" H 3800 3350 20  0001 C CNN
F 1 "+BATT" H 3800 3500 30  0000 C CNN
	1    3800 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 4ABECC7B
P 5900 3900
F 0 "#PWR053" H 5900 3900 30  0001 C CNN
F 1 "GND" H 5900 3830 30  0001 C CNN
	1    5900 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 4ABECC79
P 4150 3900
F 0 "#PWR054" H 4150 3900 30  0001 C CNN
F 1 "GND" H 4150 3830 30  0001 C CNN
	1    4150 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR055
U 1 1 4ABECC76
P 3450 3900
F 0 "#PWR055" H 3450 3900 30  0001 C CNN
F 1 "GND" H 3450 3830 30  0001 C CNN
	1    3450 3900
	1    0    0    -1  
$EndComp
$Comp
L +1.2V #PWR056
U 1 1 4ABECC6C
P 5900 3400
F 0 "#PWR056" H 5900 3540 20  0001 C CNN
F 1 "+1.2V" H 5900 3510 30  0000 C CNN
	1    5900 3400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR057
U 1 1 4ABECC68
P 4150 3400
F 0 "#PWR057" H 4150 3500 30  0001 C CNN
F 1 "VCC" H 4150 3500 30  0000 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR058
U 1 1 4ABECC63
P 3450 3400
F 0 "#PWR058" H 3450 3350 20  0001 C CNN
F 1 "+BATT" H 3450 3500 30  0000 C CNN
	1    3450 3400
	1    0    0    -1  
$EndComp
$Comp
L +1.2V #PWR059
U 1 1 4ABE8237
P 7900 4750
F 0 "#PWR059" H 7900 4890 20  0001 C CNN
F 1 "+1.2V" H 7900 4860 30  0000 C CNN
	1    7900 4750
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4ABE8225
P 5900 3650
F 0 "C5" H 5950 3750 50  0000 L CNN
F 1 "1uF" H 5950 3550 50  0000 L CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
$Comp
L MCP1827S-1202E/AB U5
U 1 1 4ABE820F
P 7200 4900
F 0 "U5" H 7350 4704 60  0000 C CNN
F 1 "MCP1827S-1202E/AB" H 7200 5100 60  0000 C CNN
	1    7200 4900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR060
U 1 1 4ABE8056
P 6500 4750
F 0 "#PWR060" H 6500 4850 30  0001 C CNN
F 1 "VCC" H 6500 4850 30  0000 C CNN
	1    6500 4750
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4ABE8044
P 4150 3650
F 0 "C3" H 4200 3750 50  0000 L CNN
F 1 "10uF" H 4200 3550 50  0000 L CNN
	1    4150 3650
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4ABE8019
P 5250 5150
F 0 "C1" H 5300 5250 50  0000 L CNN
F 1 "100nF" H 5300 5050 50  0000 L CNN
	1    5250 5150
	1    0    0    -1  
$EndComp
$Comp
L LD1117V33C U4
U 1 1 4ABE7FD2
P 5850 4900
F 0 "U4" H 6000 4704 60  0000 C CNN
F 1 "LD1117V33C" H 5850 5100 60  0000 C CNN
	1    5850 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 4ABE7E4F
P 4150 5550
F 0 "#PWR061" H 4150 5550 30  0001 C CNN
F 1 "GND" H 4150 5480 30  0001 C CNN
	1    4150 5550
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4ABE7E49
P 3450 3650
F 0 "C4" H 3500 3750 50  0000 L CNN
F 1 "1uF" H 3500 3550 50  0000 L CNN
	1    3450 3650
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR062
U 1 1 4ABE7E3F
P 3500 4750
F 0 "#PWR062" H 3500 4700 20  0001 C CNN
F 1 "+BATT" H 3500 4850 30  0000 C CNN
	1    3500 4750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
