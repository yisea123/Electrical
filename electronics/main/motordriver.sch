EESchema Schematic File Version 2  date 2012-03-29T00:10:52 PDT
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
Sheet 14 17
Title ""
Date "29 mar 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7200 3750 7150 3750
Wire Wire Line
	7150 3750 7150 4000
Wire Wire Line
	7150 4000 6450 4000
Wire Wire Line
	6450 3800 6950 3800
Wire Wire Line
	6950 3800 6950 5650
Wire Wire Line
	6950 5650 7200 5650
Wire Wire Line
	6450 4200 6750 4200
Wire Wire Line
	6750 4200 6750 2250
Wire Wire Line
	6750 2250 7200 2250
Wire Wire Line
	5600 3300 5600 3200
Wire Wire Line
	5800 4600 5800 4650
Wire Wire Line
	5800 4650 5600 4650
Wire Wire Line
	5600 4650 5600 4600
Wire Bus Line
	3650 4000 3650 3500
Wire Bus Line
	3650 3500 3550 3500
Wire Wire Line
	7500 6400 7500 6350
Wire Wire Line
	8300 5900 7500 5900
Connection ~ 7500 5900
Connection ~ 7650 5900
Wire Wire Line
	7500 5850 7500 5950
Wire Wire Line
	7650 5850 7650 5950
Wire Wire Line
	7500 5400 7500 5450
Wire Wire Line
	7500 3500 7500 3550
Wire Wire Line
	7650 3950 7650 4050
Wire Wire Line
	7500 3950 7500 4050
Connection ~ 7650 4000
Connection ~ 7500 4000
Wire Wire Line
	8300 4000 7500 4000
Wire Wire Line
	7500 4500 7500 4450
Wire Wire Line
	7500 2500 7500 2450
Wire Wire Line
	8300 2000 7500 2000
Connection ~ 7500 2000
Connection ~ 7650 2000
Wire Wire Line
	7500 1950 7500 2050
Wire Wire Line
	7650 1950 7650 2050
Wire Bus Line
	8550 6200 8400 6200
Wire Bus Line
	8400 6200 8400 2100
Wire Wire Line
	7500 1500 7500 1550
Wire Bus Line
	4100 3300 4200 3300
Wire Bus Line
	4200 3300 4200 4100
Wire Wire Line
	5700 4650 5700 4700
Connection ~ 5700 4650
Wire Wire Line
	5800 3200 5800 3300
Wire Wire Line
	4300 4200 4950 4200
Wire Wire Line
	3750 4100 4950 4100
Wire Wire Line
	4300 4000 4950 4000
Wire Wire Line
	3750 3900 4950 3900
Wire Wire Line
	4950 3700 3750 3700
Wire Wire Line
	4300 3800 4950 3800
Wire Wire Line
	7200 1750 6650 1750
Wire Wire Line
	6650 1750 6650 4100
Wire Wire Line
	6650 4100 6450 4100
Wire Wire Line
	7200 4250 6850 4250
Wire Wire Line
	6850 4250 6850 3700
Wire Wire Line
	6850 3700 6450 3700
Wire Wire Line
	7200 6150 7050 6150
Wire Wire Line
	7050 6150 7050 3900
Wire Wire Line
	7050 3900 6450 3900
$Comp
L GND #PWR0146
U 1 1 4F73FAA7
P 5700 4700
AR Path="/4CD72C2A/4F73FAA7" Ref="#PWR0146"  Part="1" 
AR Path="/4CD72EC7/4F73FAA7" Ref="#PWR0110"  Part="1" 
AR Path="/4CD72EC1/4F73FAA7" Ref="#PWR0119"  Part="1" 
AR Path="/4CD72EB9/4F73FAA7" Ref="#PWR0128"  Part="1" 
AR Path="/4CD72EB0/4F73FAA7" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0146" H 5700 4700 30  0001 C CNN
F 1 "GND" H 5700 4630 30  0001 C CNN
	1    5700 4700
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR0147
U 1 1 4F73FAA4
P 5800 3200
AR Path="/4CD72C2A/4F73FAA4" Ref="#PWR0147"  Part="1" 
AR Path="/4CD72EC7/4F73FAA4" Ref="#PWR0111"  Part="1" 
AR Path="/4CD72EC1/4F73FAA4" Ref="#PWR0120"  Part="1" 
AR Path="/4CD72EB9/4F73FAA4" Ref="#PWR0129"  Part="1" 
AR Path="/4CD72EB0/4F73FAA4" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0147" H 5800 3150 20  0001 C CNN
F 1 "+BATT" H 5800 3300 30  0000 C CNN
	1    5800 3200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0148
U 1 1 4F73FA9F
P 5600 3200
AR Path="/4CD72C2A/4F73FA9F" Ref="#PWR0148"  Part="1" 
AR Path="/4CD72EC7/4F73FA9F" Ref="#PWR0112"  Part="1" 
AR Path="/4CD72EC1/4F73FA9F" Ref="#PWR0121"  Part="1" 
AR Path="/4CD72EB9/4F73FA9F" Ref="#PWR0130"  Part="1" 
AR Path="/4CD72EB0/4F73FA9F" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0148" H 5600 3290 20  0001 C CNN
F 1 "+5V" H 5600 3290 30  0000 C CNN
	1    5600 3200
	1    0    0    -1  
$EndComp
$Comp
L CD4504BM U50
U 1 1 4F73FA08
P 5700 3950
AR Path="/4CD72C2A/4F73FA08" Ref="U50"  Part="1" 
AR Path="/4CD72EC7/4F73FA08" Ref="U54"  Part="1" 
AR Path="/4CD72EC1/4F73FA08" Ref="U53"  Part="1" 
AR Path="/4CD72EB9/4F73FA08" Ref="U52"  Part="1" 
AR Path="/4CD72EB0/4F73FA08" Ref="U51"  Part="1" 
F 0 "U54" H 5700 3900 60  0000 C CNN
F 1 "CD4504BM" H 5700 4000 60  0000 C CNN
F 2 "SO16E" H 6000 3350 60  0001 C CNN
F 3 "296-14150-1-ND" H 6250 3450 60  0001 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
$Comp
L +HVBATT #PWR0113
U 1 1 4F6501FB
P 7500 5400
AR Path="/4CD72EC7/4F6501FB" Ref="#PWR0113"  Part="1" 
AR Path="/4CD72EC1/4F6501FB" Ref="#PWR0122"  Part="1" 
AR Path="/4CD72EB9/4F6501FB" Ref="#PWR0131"  Part="1" 
AR Path="/4CD72EB0/4F6501FB" Ref="#PWR0140"  Part="1" 
AR Path="/4CD72C2A/4F6501FB" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 7500 5350 20  0001 C CNN
F 1 "+HVBATT" H 7500 5500 30  0000 C CNN
	1    7500 5400
	1    0    0    -1  
$EndComp
$Comp
L +HVBATT #PWR0114
U 1 1 4F6501F6
P 7500 3500
AR Path="/4CD72EC7/4F6501F6" Ref="#PWR0114"  Part="1" 
AR Path="/4CD72EC1/4F6501F6" Ref="#PWR0123"  Part="1" 
AR Path="/4CD72EB9/4F6501F6" Ref="#PWR0132"  Part="1" 
AR Path="/4CD72EB0/4F6501F6" Ref="#PWR0141"  Part="1" 
AR Path="/4CD72C2A/4F6501F6" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 7500 3450 20  0001 C CNN
F 1 "+HVBATT" H 7500 3600 30  0000 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
$Comp
L +HVBATT #PWR0115
U 1 1 4F6501E8
P 7500 1500
AR Path="/4CD72EC7/4F6501E8" Ref="#PWR0115"  Part="1" 
AR Path="/4CD72EC1/4F6501E8" Ref="#PWR0124"  Part="1" 
AR Path="/4CD72EB9/4F6501E8" Ref="#PWR0133"  Part="1" 
AR Path="/4CD72EB0/4F6501E8" Ref="#PWR0142"  Part="1" 
AR Path="/4CD72C2A/4F6501E8" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 7500 1450 20  0001 C CNN
F 1 "+HVBATT" H 7500 1600 30  0000 C CNN
	1    7500 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0116
U 1 1 4F645019
P 7500 6400
AR Path="/4CD72EC7/4F645019" Ref="#PWR0116"  Part="1" 
AR Path="/4CD72C2A/4F645019" Ref="#PWR0152"  Part="1" 
AR Path="/4CD72EC1/4F645019" Ref="#PWR0125"  Part="1" 
AR Path="/4CD72EB9/4F645019" Ref="#PWR0134"  Part="1" 
AR Path="/4CD72EB0/4F645019" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0152" H 7500 6400 30  0001 C CNN
F 1 "GND" H 7500 6330 30  0001 C CNN
	1    7500 6400
	1    0    0    -1  
$EndComp
$Comp
L AO4616 Q26
U 1 1 4F645018
P 7400 5650
AR Path="/4CD72EC7/4F645018" Ref="Q26"  Part="1" 
AR Path="/4CD72C2A/4F645018" Ref="Q18"  Part="1" 
AR Path="/4CD72EC1/4F645018" Ref="Q24"  Part="1" 
AR Path="/4CD72EB9/4F645018" Ref="Q22"  Part="1" 
AR Path="/4CD72EB0/4F645018" Ref="Q20"  Part="1" 
F 0 "Q26" H 7410 5820 60  0000 R CNN
F 1 "AO4616" H 7410 5500 60  0000 R CNN
	1    7400 5650
	1    0    0    1   
$EndComp
$Comp
L AO4616 Q26
U 2 1 4F645017
P 7400 6150
AR Path="/4CD72EC7/4F645017" Ref="Q26"  Part="2" 
AR Path="/4CD72C2A/4F645017" Ref="Q18"  Part="2" 
AR Path="/4CD72EC1/4F645017" Ref="Q24"  Part="2" 
AR Path="/4CD72EB9/4F645017" Ref="Q22"  Part="2" 
AR Path="/4CD72EB0/4F645017" Ref="Q20"  Part="2" 
F 0 "Q26" H 7410 6320 60  0000 R CNN
F 1 "AO4616" H 7410 6000 60  0000 R CNN
	2    7400 6150
	1    0    0    -1  
$EndComp
$Comp
L AO4616 Q25
U 2 1 4F645015
P 7400 4250
AR Path="/4CD72EC7/4F645015" Ref="Q25"  Part="2" 
AR Path="/4CD72C2A/4F645015" Ref="Q17"  Part="2" 
AR Path="/4CD72EC1/4F645015" Ref="Q23"  Part="2" 
AR Path="/4CD72EB9/4F645015" Ref="Q21"  Part="2" 
AR Path="/4CD72EB0/4F645015" Ref="Q19"  Part="2" 
F 0 "Q25" H 7410 4420 60  0000 R CNN
F 1 "AO4616" H 7410 4100 60  0000 R CNN
	2    7400 4250
	1    0    0    -1  
$EndComp
$Comp
L AO4616 Q25
U 1 1 4F645014
P 7400 3750
AR Path="/4CD72EC7/4F645014" Ref="Q25"  Part="1" 
AR Path="/4CD72C2A/4F645014" Ref="Q17"  Part="1" 
AR Path="/4CD72EC1/4F645014" Ref="Q23"  Part="1" 
AR Path="/4CD72EB9/4F645014" Ref="Q21"  Part="1" 
AR Path="/4CD72EB0/4F645014" Ref="Q19"  Part="1" 
F 0 "Q25" H 7410 3920 60  0000 R CNN
F 1 "AO4616" H 7410 3600 60  0000 R CNN
	1    7400 3750
	1    0    0    1   
$EndComp
$Comp
L GND #PWR0117
U 1 1 4F645013
P 7500 4500
AR Path="/4CD72EC7/4F645013" Ref="#PWR0117"  Part="1" 
AR Path="/4CD72C2A/4F645013" Ref="#PWR0153"  Part="1" 
AR Path="/4CD72EC1/4F645013" Ref="#PWR0126"  Part="1" 
AR Path="/4CD72EB9/4F645013" Ref="#PWR0135"  Part="1" 
AR Path="/4CD72EB0/4F645013" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0153" H 7500 4500 30  0001 C CNN
F 1 "GND" H 7500 4430 30  0001 C CNN
	1    7500 4500
	1    0    0    -1  
$EndComp
Entry Wire Line
	8300 5900 8400 6000
Entry Wire Line
	8300 4000 8400 4100
Entry Wire Line
	8300 2000 8400 2100
Text Label 7850 5900 0    60   ~ 0
PHASE2
Text Label 7850 4000 0    60   ~ 0
PHASE1
Text Label 7850 2000 0    60   ~ 0
PHASE0
Text Label 3750 4100 0    60   ~ 0
CTRL+2
Text Label 3750 3900 0    60   ~ 0
CTRL+1
Entry Wire Line
	3650 4000 3750 4100
Entry Wire Line
	3650 3800 3750 3900
Entry Wire Line
	3650 3600 3750 3700
Text Label 3750 3700 0    60   ~ 0
CTRL+0
Text Label 4300 3800 0    60   ~ 0
CTRL-0
Text Label 4300 4000 0    60   ~ 0
CTRL-1
Entry Wire Line
	4200 3700 4300 3800
Entry Wire Line
	4200 3900 4300 4000
Text Label 4300 4200 0    60   ~ 0
CTRL-2
Entry Wire Line
	4200 4100 4300 4200
Text HLabel 8550 6200 2    60   Output ~ 0
PHASE[0..2]
Text HLabel 3550 3500 0    60   Input ~ 0
CTRL+[0..2]
Text HLabel 4100 3300 0    60   Input ~ 0
CTRL-[0..2]
$Comp
L GND #PWR0154
U 1 1 4CD72CE1
P 7500 2500
AR Path="/4CD72C2A/4CD72CE1" Ref="#PWR0154"  Part="1" 
AR Path="/4CD72EC7/4CD72CE1" Ref="#PWR0118"  Part="1" 
AR Path="/4CD72EC1/4CD72CE1" Ref="#PWR0127"  Part="1" 
AR Path="/4CD72EB9/4CD72CE1" Ref="#PWR0136"  Part="1" 
AR Path="/4CD72EB0/4CD72CE1" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0154" H 7500 2500 30  0001 C CNN
F 1 "GND" H 7500 2430 30  0001 C CNN
	1    7500 2500
	1    0    0    -1  
$EndComp
$Comp
L AO4616 Q1
U 2 1 4CD72C5C
P 7400 1750
AR Path="/4CD72C2A/4CD72C5C" Ref="Q1"  Part="2" 
AR Path="/4CD72EC7/4CD72C5C" Ref="Q13"  Part="2" 
AR Path="/4CD72EC1/4CD72C5C" Ref="Q4"  Part="2" 
AR Path="/4CD72EB9/4CD72C5C" Ref="Q7"  Part="2" 
AR Path="/4CD72EB0/4CD72C5C" Ref="Q10"  Part="2" 
F 0 "Q13" H 7410 1920 60  0000 R CNN
F 1 "AO4616" H 7410 1600 60  0000 R CNN
	2    7400 1750
	1    0    0    1   
$EndComp
$Comp
L AO4616 Q1
U 1 1 4CD72C5A
P 7400 2250
AR Path="/4CD72C2A/4CD72C5A" Ref="Q1"  Part="1" 
AR Path="/4CD72EC7/4CD72C5A" Ref="Q13"  Part="1" 
AR Path="/4CD72EC1/4CD72C5A" Ref="Q4"  Part="1" 
AR Path="/4CD72EB9/4CD72C5A" Ref="Q7"  Part="1" 
AR Path="/4CD72EB0/4CD72C5A" Ref="Q10"  Part="1" 
F 0 "Q13" H 7410 2420 60  0000 R CNN
F 1 "AO4616" H 7410 2100 60  0000 R CNN
	1    7400 2250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
