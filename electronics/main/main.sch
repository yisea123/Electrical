EESchema Schematic File Version 2  date 11/25/2010 5:28:04 PM
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
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 18
Title ""
Date "26 nov 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5900 800  2400 5100
U 4AD9040D
F0 "fpga" 60
F1 "fpga.sch" 60
F2 "M_CTRL5+[1..3]" O R 8300 3400 60 
F3 "M_CTRL5-[1..3]" O R 8300 3300 60 
F4 "M_CTRL4+[1..3]" O R 8300 2800 60 
F5 "M_CTRL4-[1..3]" O R 8300 2700 60 
F6 "M_CTRL3+[1..3]" O R 8300 2200 60 
F7 "CHICKER_PRESENT" I R 8300 4100 60 
F8 "CHIP" O R 8300 4800 60 
F9 "KICK" O R 8300 4700 60 
F10 "CHICKER_CHARGE" O R 8300 4200 60 
F11 "CHICKER_MISO" I R 8300 4600 60 
F12 "CHICKER_CLK" O R 8300 4400 60 
F13 "/CHICKER_CS" O R 8300 4300 60 
F14 "M_HALL5[1..3]" I R 8300 3500 60 
F15 "M_HALL4[1..3]" I R 8300 2900 60 
F16 "M_HALL3[1..3]" I R 8300 2300 60 
F17 "M_HALL2[1..3]" I R 8300 1700 60 
F18 "M_HALL1[1..3]" I R 8300 1100 60 
F19 "M_CTRL3-[1..3]" O R 8300 2100 60 
F20 "M_CTRL2+[1..3]" O R 8300 1600 60 
F21 "M_CTRL2-[1..3]" O R 8300 1500 60 
F22 "M_CTRL1+[1..3]" O R 8300 1000 60 
F23 "M_CTRL1-[1..3]" O R 8300 900 60 
F24 "RESET" I L 5900 1300 60 
F25 "PARBUS_WR" I L 5900 1700 60 
F26 "PARBUS_RD" I L 5900 1600 60 
F27 "PARBUS_D[0..7]" B L 5900 1500 60 
F28 "OSC" I L 5900 1950 60 
F29 "/FLASH_SS" B L 5900 2450 60 
F30 "FLASH_MOSI" B L 5900 2650 60 
F31 "PROG_B" I L 5900 1000 60 
F32 "DONE" O L 5900 1100 60 
F33 "INIT_B" O L 5900 900 60 
F34 "FLASH_CLK" B L 5900 2550 60 
F35 "FLASH_MISO" I L 5900 2750 60 
F36 "DCM_Reset" I L 5900 3650 60 
F37 "DCM_Locked" O L 5900 3800 60 
$EndSheet
Wire Wire Line
	1500 2800 1650 2800
Wire Wire Line
	1500 2800 1500 2850
Wire Wire Line
	1500 2850 1350 2850
Wire Wire Line
	1350 2950 2150 2950
Wire Wire Line
	1550 2500 1550 2550
Wire Wire Line
	1550 2550 1350 2550
Wire Wire Line
	1850 2650 1850 2700
Wire Wire Line
	1850 2650 1350 2650
Wire Wire Line
	2150 2800 1800 2800
Wire Wire Line
	2150 3350 1800 3350
Wire Wire Line
	1800 3350 1800 3800
Wire Wire Line
	1800 3800 5900 3800
Wire Wire Line
	1950 2100 2150 2100
Wire Wire Line
	1950 2000 2150 2000
Wire Wire Line
	1950 1900 2150 1900
Wire Wire Line
	1950 1800 2150 1800
Wire Wire Line
	1950 1700 2150 1700
Wire Wire Line
	1950 1600 2150 1600
Connection ~ 5800 2750
Wire Wire Line
	5800 2750 5800 3300
Wire Wire Line
	5800 3300 5400 3300
Wire Wire Line
	5400 3200 5700 3200
Connection ~ 5500 2450
Wire Wire Line
	5500 2450 5500 3000
Wire Wire Line
	5500 3000 5400 3000
Wire Wire Line
	5400 2200 5650 2200
Wire Wire Line
	5650 2200 5650 1950
Wire Wire Line
	4500 1700 5900 1700
Wire Wire Line
	4500 1600 5900 1600
Wire Wire Line
	4500 1300 5900 1300
Wire Wire Line
	4500 1100 5900 1100
Wire Wire Line
	4500 1000 5900 1000
Wire Wire Line
	4500 900  5900 900 
Wire Bus Line
	10000 3400 9900 3400
Wire Bus Line
	9900 3400 9900 3650
Wire Bus Line
	9900 3650 8450 3650
Wire Bus Line
	8450 3650 8450 3500
Wire Bus Line
	8450 3500 8300 3500
Wire Bus Line
	10000 2200 9900 2200
Wire Bus Line
	9900 2200 9900 2450
Wire Bus Line
	9900 2450 8450 2450
Wire Bus Line
	8450 2450 8450 2300
Wire Bus Line
	8450 2300 8300 2300
Wire Bus Line
	10000 1000 9900 1000
Wire Bus Line
	9900 1000 9900 1250
Wire Bus Line
	9900 1250 8450 1250
Wire Bus Line
	8450 1250 8450 1100
Wire Bus Line
	8450 1100 8300 1100
Wire Bus Line
	8300 2800 8550 2800
Wire Bus Line
	8300 2700 8550 2700
Wire Bus Line
	8300 1600 8550 1600
Wire Bus Line
	8300 1500 8550 1500
Wire Bus Line
	9800 3300 10000 3300
Wire Bus Line
	9800 2100 10000 2100
Wire Bus Line
	9800 900  10000 900 
Wire Bus Line
	9800 1500 10000 1500
Wire Bus Line
	9800 2700 10000 2700
Wire Bus Line
	8300 900  8550 900 
Wire Bus Line
	8300 1000 8550 1000
Wire Bus Line
	8300 2100 8550 2100
Wire Bus Line
	8300 2200 8550 2200
Wire Bus Line
	8300 3300 8550 3300
Wire Bus Line
	8300 3400 8550 3400
Wire Bus Line
	8300 1700 8450 1700
Wire Bus Line
	8450 1700 8450 1850
Wire Bus Line
	8450 1850 9900 1850
Wire Bus Line
	9900 1850 9900 1600
Wire Bus Line
	9900 1600 10000 1600
Wire Bus Line
	8300 2900 8450 2900
Wire Bus Line
	8450 2900 8450 3050
Wire Bus Line
	8450 3050 9900 3050
Wire Bus Line
	9900 3050 9900 2800
Wire Bus Line
	9900 2800 10000 2800
Wire Wire Line
	8300 4100 8550 4100
Wire Wire Line
	8300 4200 8550 4200
Wire Wire Line
	8300 4300 8550 4300
Wire Wire Line
	8300 4400 8550 4400
Wire Wire Line
	8300 4600 8550 4600
Wire Wire Line
	8300 4700 8550 4700
Wire Wire Line
	8300 4800 8550 4800
Wire Bus Line
	4500 1500 5900 1500
Wire Wire Line
	4500 1950 5900 1950
Connection ~ 5650 1950
Wire Wire Line
	4500 2450 5900 2450
Wire Wire Line
	4500 2550 5900 2550
Wire Wire Line
	4500 2650 5900 2650
Wire Wire Line
	4500 2750 5900 2750
Wire Wire Line
	5400 3100 5600 3100
Wire Wire Line
	5600 3100 5600 2550
Connection ~ 5600 2550
Wire Wire Line
	5700 3200 5700 2650
Connection ~ 5700 2650
Wire Wire Line
	1950 900  2150 900 
Wire Wire Line
	1950 1000 2150 1000
Wire Wire Line
	1950 1100 2150 1100
Wire Wire Line
	1950 1200 2150 1200
Wire Wire Line
	1950 1300 2150 1300
Wire Wire Line
	1950 1400 2150 1400
Wire Wire Line
	5900 3650 1950 3650
Wire Wire Line
	2150 3450 1950 3450
Wire Wire Line
	1950 3450 1950 3650
Wire Wire Line
	1350 3050 2150 3050
Wire Wire Line
	1850 2700 2150 2700
Wire Wire Line
	1350 2750 1800 2750
Wire Wire Line
	1800 2750 1800 2800
Wire Wire Line
	1650 2800 1650 2850
$Comp
L GND #PWR01
U 1 1 4CE5E075
P 1650 2850
F 0 "#PWR01" H 1650 2850 30  0001 C CNN
F 1 "GND" H 1650 2780 30  0001 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 4CE5E05F
P 1550 2500
F 0 "#PWR02" H 1550 2460 30  0001 C CNN
F 1 "+3.3V" H 1550 2610 30  0000 C CNN
	1    1550 2500
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P15
U 1 1 4CE5DFE0
P 1000 2800
F 0 "P15" V 950 2800 60  0000 C CNN
F 1 "CONN_6" V 1050 2800 60  0000 C CNN
	1    1000 2800
	-1   0    0    1   
$EndComp
$Sheet
S 10000 3200 900  300 
U 4CD73194
F0 "dribblerconn" 60
F1 "dribblerconn.sch" 60
F2 "PHASE[1..3]" I L 10000 3300 60 
F3 "HALL[1..3]" O L 10000 3400 60 
$EndSheet
$Sheet
S 10000 2600 900  300 
U 4CD73188
F0 "wheelconn4" 60
F1 "wheelconn.sch" 60
F2 "HALL[1..3]" O L 10000 2800 60 
F3 "PHASE[1..3]" I L 10000 2700 60 
$EndSheet
$Sheet
S 10000 2000 900  300 
U 4CD7317F
F0 "wheelconn3" 60
F1 "wheelconn.sch" 60
F2 "HALL[1..3]" O L 10000 2200 60 
F3 "PHASE[1..3]" I L 10000 2100 60 
$EndSheet
$Sheet
S 10000 1400 900  300 
U 4CD73172
F0 "wheelconn2" 60
F1 "wheelconn.sch" 60
F2 "HALL[1..3]" O L 10000 1600 60 
F3 "PHASE[1..3]" I L 10000 1500 60 
$EndSheet
$Sheet
S 10000 800  900  300 
U 4CD73053
F0 "wheelconn1" 60
F1 "wheelconn.sch" 60
F2 "HALL[1..3]" O L 10000 1000 60 
F3 "PHASE[1..3]" I L 10000 900 60 
$EndSheet
$Sheet
S 8550 3200 1250 300 
U 4CD72EC7
F0 "motordriver5" 60
F1 "motordriver.sch" 60
F2 "PHASE[1..3]" O R 9800 3300 60 
F3 "CTRL-[1..3]" I L 8550 3300 60 
F4 "CTRL+[1..3]" I L 8550 3400 60 
$EndSheet
$Sheet
S 8550 2600 1250 300 
U 4CD72EC1
F0 "motordriver4" 60
F1 "motordriver.sch" 60
F2 "PHASE[1..3]" O R 9800 2700 60 
F3 "CTRL-[1..3]" I L 8550 2700 60 
F4 "CTRL+[1..3]" I L 8550 2800 60 
$EndSheet
$Sheet
S 8550 2000 1250 300 
U 4CD72EB9
F0 "motordriver3" 60
F1 "motordriver.sch" 60
F2 "PHASE[1..3]" O R 9800 2100 60 
F3 "CTRL-[1..3]" I L 8550 2100 60 
F4 "CTRL+[1..3]" I L 8550 2200 60 
$EndSheet
$Sheet
S 8550 1400 1250 300 
U 4CD72EB0
F0 "motordriver2" 60
F1 "motordriver.sch" 60
F2 "PHASE[1..3]" O R 9800 1500 60 
F3 "CTRL-[1..3]" I L 8550 1500 60 
F4 "CTRL+[1..3]" I L 8550 1600 60 
$EndSheet
$Sheet
S 8550 800  1250 300 
U 4CD72C2A
F0 "motordriver1" 60
F1 "motordriver.sch" 60
F2 "PHASE[1..3]" O R 9800 900 60 
F3 "CTRL-[1..3]" I L 8550 900 60 
F4 "CTRL+[1..3]" I L 8550 1000 60 
$EndSheet
$Sheet
S 4550 2100 850  200 
U 4CC4F481
F0 "oscillator" 60
F1 "oscillator.sch" 60
F2 "OSC" O R 5400 2200 60 
$EndSheet
$Sheet
S 4550 2900 850  550 
U 4AD90415
F0 "flash" 60
F1 "flash.sch" 60
F2 "MISO" O R 5400 3300 60 
F3 "/CS" I R 5400 3000 60 
F4 "MOSI" I R 5400 3200 60 
F5 "CLK" I R 5400 3100 60 
$EndSheet
$Sheet
S 8550 4050 1250 800 
U 4B4D69E7
F0 "chicker" 60
F1 "chicker.sch" 60
F2 "PRESENT" O L 8550 4100 60 
F3 "CHIP" I L 8550 4800 60 
F4 "KICK" I L 8550 4700 60 
F5 "CHARGE" I L 8550 4200 60 
F6 "MISO" O L 8550 4600 60 
F7 "/CS" I L 8550 4300 60 
F8 "CLK" I L 8550 4400 60 
$EndSheet
$Sheet
S 900  800  1050 1400
U 4AD90411
F0 "xbee" 60
F1 "xbee.sch" 60
F2 "SLEEP2" I R 1950 2000 60 
F3 "SLEEP1" I R 1950 1300 60 
F4 "/CTS2" O R 1950 1900 60 
F5 "/CTS1" O R 1950 1200 60 
F6 "DOUT2" O R 1950 1700 60 
F7 "DIN2" I R 1950 1600 60 
F8 "/RTS2" I R 1950 1800 60 
F9 "/RESET2" I R 1950 2100 60 
F10 "/RESET1" I R 1950 1400 60 
F11 "/RTS1" I R 1950 1100 60 
F12 "DIN1" I R 1950 900 60 
F13 "DOUT1" O R 1950 1000 60 
$EndSheet
$Sheet
S 2150 800  2350 2750
U 4AD90413
F0 "pic" 60
F1 "pic.sch" 60
F2 "XBEE2_SLEEP" O L 2150 2000 60 
F3 "XBEE1_SLEEP" O L 2150 1300 60 
F4 "FPGA_RESET" O R 4500 1300 60 
F5 "FPGA_PROG_B" O R 4500 1000 60 
F6 "FPGA_DONE" I R 4500 1100 60 
F7 "FPGA_INIT_B" I R 4500 900 60 
F8 "/FLASH_CS" B R 4500 2450 60 
F9 "/XBEE2_CTS" I L 2150 1900 60 
F10 "/XBEE2_RTS" O L 2150 1800 60 
F11 "/XBEE1_CTS" I L 2150 1200 60 
F12 "/XBEE1_RTS" O L 2150 1100 60 
F13 "OSC" I R 4500 1950 60 
F14 "PARBUS_WR" O R 4500 1700 60 
F15 "PARBUS_RD" O R 4500 1600 60 
F16 "PARBUS_D[0..7]" B R 4500 1500 60 
F17 "FLASH_MOSI" B R 4500 2650 60 
F18 "FLASH_MISO" I R 4500 2750 60 
F19 "FLASH_CLK" B R 4500 2550 60 
F20 "XBEE1_RX" I L 2150 1000 60 
F21 "XBEE1_TX" O L 2150 900 60 
F22 "XBEE2_TX" O L 2150 1600 60 
F23 "XBEE2_RX" I L 2150 1700 60 
F24 "/XBEE2_RESET" O L 2150 2100 60 
F25 "/XBEE1_RESET" O L 2150 1400 60 
F26 "DCM_Reset" O L 2150 3450 60 
F27 "DCM_Locked" I L 2150 3350 60 
F28 "Thermistor_In" I L 2150 3050 60 
F29 "Breakbeam_in" I L 2150 2800 60 
F30 "Breakbeam_drive" O L 2150 2700 60 
F31 "Misc_In" I L 2150 2950 60 
$EndSheet
$Sheet
S 2400 4900 950  600 
U 4AD90417
F0 "power" 60
F1 "power.sch" 60
$EndSheet
$EndSCHEMATC
