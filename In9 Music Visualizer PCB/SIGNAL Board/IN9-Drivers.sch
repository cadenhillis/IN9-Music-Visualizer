EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3500 3500 0    50   Input ~ 0
PWM_1
Text HLabel 5450 3500 0    50   Input ~ 0
PWM_2
Text HLabel 7350 3500 0    50   Input ~ 0
PWM_3
Text HLabel 9300 3500 0    50   Input ~ 0
PWM_4
Text HLabel 11200 3500 0    50   Input ~ 0
PWM_5
Text HLabel 1600 6000 0    50   Input ~ 0
PWM_6
Text HLabel 3500 6000 0    50   Input ~ 0
PWM_7
Text HLabel 5450 6000 0    50   Input ~ 0
PWM_8
Text HLabel 7350 6000 0    50   Input ~ 0
PWM_9
Text HLabel 9300 6000 0    50   Input ~ 0
PWM_10
Text HLabel 1600 3500 0    50   Input ~ 0
PWM_0
$Comp
L Connector_Generic:Conn_01x12 J4
U 1 1 612DA856
P 15200 2350
F 0 "J4" H 15280 2342 50  0000 L CNN
F 1 "IN9_MOUNTING_BOARD" H 15280 2251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 15200 2350 50  0001 C CNN
F 3 "BHR-12-VUA" H 15200 2350 50  0001 C CNN
	1    15200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 1850 14800 1850
$Comp
L Device:Q_NPN_BCE Q3
U 1 1 612E21AF
P 2550 3500
F 0 "Q3" H 2740 3546 50  0000 L CNN
F 1 "FZT857TA" H 2740 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2750 3600 50  0001 C CNN
F 3 "FZT857TA" H 2550 3500 50  0001 C CNN
	1    2550 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R23
U 1 1 612E384F
P 2650 3900
F 0 "R23" H 2718 3946 50  0000 L CNN
F 1 "180" H 2718 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2690 3890 50  0001 C CNN
F 3 "CRG0805F180R" H 2650 3900 50  0001 C CNN
	1    2650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R17
U 1 1 612E5136
P 1900 3500
F 0 "R17" V 1695 3500 50  0000 C CNN
F 1 "2.2k" V 1786 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1940 3490 50  0001 C CNN
F 3 "RR1220P-222-D" H 1900 3500 50  0001 C CNN
	1    1900 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C26
U 1 1 612E5A57
P 2200 3800
F 0 "C26" H 2315 3846 50  0000 L CNN
F 1 "4.7uF" H 2315 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2238 3650 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 2200 3800 50  0001 C CNN
	1    2200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3500 2200 3500
Connection ~ 2200 3500
Wire Wire Line
	2200 3500 2050 3500
$Comp
L power:GND #PWR021
U 1 1 612EA8EE
P 2200 4100
F 0 "#PWR021" H 2200 3850 50  0001 C CNN
F 1 "GND" H 2205 3927 50  0000 C CNN
F 2 "" H 2200 4100 50  0001 C CNN
F 3 "" H 2200 4100 50  0001 C CNN
	1    2200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4100 2200 4100
Connection ~ 2200 4100
Wire Wire Line
	2200 3500 2200 3650
Wire Wire Line
	2650 4050 2650 4100
Wire Wire Line
	2650 3750 2650 3700
Wire Wire Line
	2200 3950 2200 4100
Text Notes 750  1050 0    50   ~ 0
re value tbd\n180 gives extra headroom, max current can be changed in software
Text Notes 750  1150 0    50   ~ 0
10khz pwm w/ 2.2k, 4.7uF gives abt 25ms response from 0->50 duty
Wire Wire Line
	1750 3500 1600 3500
$Comp
L Device:Q_NPN_BCE Q4
U 1 1 612FE368
P 4450 3500
F 0 "Q4" H 4640 3546 50  0000 L CNN
F 1 "FZT857TA" H 4640 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4650 3600 50  0001 C CNN
F 3 "FZT857TA" H 4450 3500 50  0001 C CNN
	1    4450 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R24
U 1 1 612FE36E
P 4550 3900
F 0 "R24" H 4618 3946 50  0000 L CNN
F 1 "180" H 4618 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4590 3890 50  0001 C CNN
F 3 "CRG0805F180R" H 4550 3900 50  0001 C CNN
	1    4550 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R18
U 1 1 612FE374
P 3800 3500
F 0 "R18" V 3595 3500 50  0000 C CNN
F 1 "2.2k" V 3686 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3840 3490 50  0001 C CNN
F 3 "RR1220P-222-D" H 3800 3500 50  0001 C CNN
	1    3800 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C27
U 1 1 612FE37A
P 4100 3800
F 0 "C27" H 4215 3846 50  0000 L CNN
F 1 "4.7uF" H 4215 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4138 3650 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3500 4100 3500
Connection ~ 4100 3500
Wire Wire Line
	4100 3500 3950 3500
$Comp
L power:GND #PWR022
U 1 1 612FE384
P 4100 4100
F 0 "#PWR022" H 4100 3850 50  0001 C CNN
F 1 "GND" H 4105 3927 50  0000 C CNN
F 2 "" H 4100 4100 50  0001 C CNN
F 3 "" H 4100 4100 50  0001 C CNN
	1    4100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4100 4100 4100
Connection ~ 4100 4100
Wire Wire Line
	4100 3500 4100 3650
Wire Wire Line
	4550 4050 4550 4100
Wire Wire Line
	4550 3750 4550 3700
Wire Wire Line
	4100 3950 4100 4100
Wire Wire Line
	3650 3500 3500 3500
$Comp
L Device:Q_NPN_BCE Q5
U 1 1 614121E0
P 6400 3500
F 0 "Q5" H 6590 3546 50  0000 L CNN
F 1 "FZT857TA" H 6590 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6600 3600 50  0001 C CNN
F 3 "FZT857TA" H 6400 3500 50  0001 C CNN
	1    6400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R25
U 1 1 614121E6
P 6500 3900
F 0 "R25" H 6568 3946 50  0000 L CNN
F 1 "180" H 6568 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6540 3890 50  0001 C CNN
F 3 "CRG0805F180R" H 6500 3900 50  0001 C CNN
	1    6500 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R19
U 1 1 614121EC
P 5750 3500
F 0 "R19" V 5545 3500 50  0000 C CNN
F 1 "2.2k" V 5636 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5790 3490 50  0001 C CNN
F 3 "RR1220P-222-D" H 5750 3500 50  0001 C CNN
	1    5750 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C28
U 1 1 614121F2
P 6050 3800
F 0 "C28" H 6165 3846 50  0000 L CNN
F 1 "4.7uF" H 6165 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 3650 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 6050 3800 50  0001 C CNN
	1    6050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3500 6050 3500
Connection ~ 6050 3500
Wire Wire Line
	6050 3500 5900 3500
$Comp
L power:GND #PWR023
U 1 1 614121FC
P 6050 4100
F 0 "#PWR023" H 6050 3850 50  0001 C CNN
F 1 "GND" H 6055 3927 50  0000 C CNN
F 2 "" H 6050 4100 50  0001 C CNN
F 3 "" H 6050 4100 50  0001 C CNN
	1    6050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4100 6050 4100
Connection ~ 6050 4100
Wire Wire Line
	6050 3500 6050 3650
Wire Wire Line
	6500 4050 6500 4100
Wire Wire Line
	6500 3750 6500 3700
Wire Wire Line
	6050 3950 6050 4100
Wire Wire Line
	5600 3500 5450 3500
$Comp
L Device:Q_NPN_BCE Q6
U 1 1 61412209
P 8300 3500
F 0 "Q6" H 8490 3546 50  0000 L CNN
F 1 "FZT857TA" H 8490 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8500 3600 50  0001 C CNN
F 3 "FZT857TA" H 8300 3500 50  0001 C CNN
	1    8300 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R26
U 1 1 6141220F
P 8400 3900
F 0 "R26" H 8468 3946 50  0000 L CNN
F 1 "180" H 8468 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8440 3890 50  0001 C CNN
F 3 "CRG0805F180R" H 8400 3900 50  0001 C CNN
	1    8400 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 61412215
P 7650 3500
F 0 "R20" V 7445 3500 50  0000 C CNN
F 1 "2.2k" V 7536 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7690 3490 50  0001 C CNN
F 3 "RR1220P-222-D" H 7650 3500 50  0001 C CNN
	1    7650 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C29
U 1 1 6141221B
P 7950 3800
F 0 "C29" H 8065 3846 50  0000 L CNN
F 1 "4.7uF" H 8065 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7988 3650 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 7950 3800 50  0001 C CNN
	1    7950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3500 7950 3500
Connection ~ 7950 3500
Wire Wire Line
	7950 3500 7800 3500
$Comp
L power:GND #PWR024
U 1 1 61412225
P 7950 4100
F 0 "#PWR024" H 7950 3850 50  0001 C CNN
F 1 "GND" H 7955 3927 50  0000 C CNN
F 2 "" H 7950 4100 50  0001 C CNN
F 3 "" H 7950 4100 50  0001 C CNN
	1    7950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4100 7950 4100
Connection ~ 7950 4100
Wire Wire Line
	7950 3500 7950 3650
Wire Wire Line
	8400 4050 8400 4100
Wire Wire Line
	8400 3750 8400 3700
Wire Wire Line
	7950 3950 7950 4100
Wire Wire Line
	7500 3500 7350 3500
$Comp
L Device:Q_NPN_BCE Q7
U 1 1 61412816
P 10250 3500
F 0 "Q7" H 10440 3546 50  0000 L CNN
F 1 "FZT857TA" H 10440 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 10450 3600 50  0001 C CNN
F 3 "FZT857TA" H 10250 3500 50  0001 C CNN
	1    10250 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R27
U 1 1 61412820
P 10350 3900
F 0 "R27" H 10418 3946 50  0000 L CNN
F 1 "180" H 10418 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10390 3890 50  0001 C CNN
F 3 "CRG0805F180R" H 10350 3900 50  0001 C CNN
	1    10350 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R21
U 1 1 6141282A
P 9600 3500
F 0 "R21" V 9395 3500 50  0000 C CNN
F 1 "2.2k" V 9486 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9640 3490 50  0001 C CNN
F 3 "RR1220P-222-D" H 9600 3500 50  0001 C CNN
	1    9600 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C30
U 1 1 61412834
P 9900 3800
F 0 "C30" H 10015 3846 50  0000 L CNN
F 1 "4.7uF" H 10015 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9938 3650 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 9900 3800 50  0001 C CNN
	1    9900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3500 9900 3500
Connection ~ 9900 3500
Wire Wire Line
	9900 3500 9750 3500
$Comp
L power:GND #PWR025
U 1 1 61412842
P 9900 4100
F 0 "#PWR025" H 9900 3850 50  0001 C CNN
F 1 "GND" H 9905 3927 50  0000 C CNN
F 2 "" H 9900 4100 50  0001 C CNN
F 3 "" H 9900 4100 50  0001 C CNN
	1    9900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 4100 9900 4100
Connection ~ 9900 4100
Wire Wire Line
	9900 3500 9900 3650
Wire Wire Line
	10350 4050 10350 4100
Wire Wire Line
	10350 3750 10350 3700
Wire Wire Line
	9900 3950 9900 4100
$Comp
L Device:Q_NPN_BCE Q8
U 1 1 61412853
P 12150 3500
F 0 "Q8" H 12340 3546 50  0000 L CNN
F 1 "FZT857TA" H 12340 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 12350 3600 50  0001 C CNN
F 3 "FZT857TA" H 12150 3500 50  0001 C CNN
	1    12150 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R28
U 1 1 6141285D
P 12250 3900
F 0 "R28" H 12318 3946 50  0000 L CNN
F 1 "180" H 12318 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12290 3890 50  0001 C CNN
F 3 "CRG0805F180R" H 12250 3900 50  0001 C CNN
	1    12250 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R22
U 1 1 61412867
P 11500 3500
F 0 "R22" V 11295 3500 50  0000 C CNN
F 1 "2.2k" V 11386 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11540 3490 50  0001 C CNN
F 3 "RR1220P-222-D" H 11500 3500 50  0001 C CNN
	1    11500 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C31
U 1 1 61412871
P 11800 3800
F 0 "C31" H 11915 3846 50  0000 L CNN
F 1 "4.7uF" H 11915 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 11838 3650 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 11800 3800 50  0001 C CNN
	1    11800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 3500 11800 3500
Connection ~ 11800 3500
Wire Wire Line
	11800 3500 11650 3500
$Comp
L power:GND #PWR026
U 1 1 6141287F
P 11800 4100
F 0 "#PWR026" H 11800 3850 50  0001 C CNN
F 1 "GND" H 11805 3927 50  0000 C CNN
F 2 "" H 11800 4100 50  0001 C CNN
F 3 "" H 11800 4100 50  0001 C CNN
	1    11800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 4100 11800 4100
Connection ~ 11800 4100
Wire Wire Line
	11800 3500 11800 3650
Wire Wire Line
	12250 4050 12250 4100
Wire Wire Line
	12250 3750 12250 3700
Wire Wire Line
	11800 3950 11800 4100
Wire Wire Line
	11350 3500 11200 3500
Wire Wire Line
	9450 3500 9300 3500
$Comp
L Device:Q_NPN_BCE Q9
U 1 1 6146E16D
P 2550 6000
F 0 "Q9" H 2740 6046 50  0000 L CNN
F 1 "FZT857TA" H 2740 5955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2750 6100 50  0001 C CNN
F 3 "FZT857TA" H 2550 6000 50  0001 C CNN
	1    2550 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R34
U 1 1 6146E173
P 2650 6400
F 0 "R34" H 2718 6446 50  0000 L CNN
F 1 "180" H 2718 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2690 6390 50  0001 C CNN
F 3 "CRG0805F180R" H 2650 6400 50  0001 C CNN
	1    2650 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R29
U 1 1 6146E179
P 1900 6000
F 0 "R29" V 1695 6000 50  0000 C CNN
F 1 "2.2k" V 1786 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1940 5990 50  0001 C CNN
F 3 "RR1220P-222-D" H 1900 6000 50  0001 C CNN
	1    1900 6000
	0    1    1    0   
$EndComp
$Comp
L Device:C C32
U 1 1 6146E17F
P 2200 6300
F 0 "C32" H 2315 6346 50  0000 L CNN
F 1 "4.7uF" H 2315 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2238 6150 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 2200 6300 50  0001 C CNN
	1    2200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6000 2200 6000
Connection ~ 2200 6000
Wire Wire Line
	2200 6000 2050 6000
$Comp
L power:GND #PWR027
U 1 1 6146E189
P 2200 6600
F 0 "#PWR027" H 2200 6350 50  0001 C CNN
F 1 "GND" H 2205 6427 50  0000 C CNN
F 2 "" H 2200 6600 50  0001 C CNN
F 3 "" H 2200 6600 50  0001 C CNN
	1    2200 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6600 2200 6600
Connection ~ 2200 6600
Wire Wire Line
	2200 6000 2200 6150
Wire Wire Line
	2650 6550 2650 6600
Wire Wire Line
	2650 6250 2650 6200
Wire Wire Line
	2200 6450 2200 6600
Wire Wire Line
	1750 6000 1600 6000
$Comp
L Device:Q_NPN_BCE Q10
U 1 1 6146E196
P 4450 6000
F 0 "Q10" H 4640 6046 50  0000 L CNN
F 1 "FZT857TA" H 4640 5955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4650 6100 50  0001 C CNN
F 3 "FZT857TA" H 4450 6000 50  0001 C CNN
	1    4450 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R35
U 1 1 6146E19C
P 4550 6400
F 0 "R35" H 4618 6446 50  0000 L CNN
F 1 "180" H 4618 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4590 6390 50  0001 C CNN
F 3 "CRG0805F180R" H 4550 6400 50  0001 C CNN
	1    4550 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R30
U 1 1 6146E1A2
P 3800 6000
F 0 "R30" V 3595 6000 50  0000 C CNN
F 1 "2.2k" V 3686 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3840 5990 50  0001 C CNN
F 3 "RR1220P-222-D" H 3800 6000 50  0001 C CNN
	1    3800 6000
	0    1    1    0   
$EndComp
$Comp
L Device:C C33
U 1 1 6146E1A8
P 4100 6300
F 0 "C33" H 4215 6346 50  0000 L CNN
F 1 "4.7uF" H 4215 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4138 6150 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 4100 6300 50  0001 C CNN
	1    4100 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6000 4100 6000
Connection ~ 4100 6000
Wire Wire Line
	4100 6000 3950 6000
$Comp
L power:GND #PWR028
U 1 1 6146E1B2
P 4100 6600
F 0 "#PWR028" H 4100 6350 50  0001 C CNN
F 1 "GND" H 4105 6427 50  0000 C CNN
F 2 "" H 4100 6600 50  0001 C CNN
F 3 "" H 4100 6600 50  0001 C CNN
	1    4100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6600 4100 6600
Connection ~ 4100 6600
Wire Wire Line
	4100 6000 4100 6150
Wire Wire Line
	4550 6550 4550 6600
Wire Wire Line
	4550 6250 4550 6200
Wire Wire Line
	4100 6450 4100 6600
Wire Wire Line
	3650 6000 3500 6000
$Comp
L Device:Q_NPN_BCE Q11
U 1 1 6146E1BF
P 6400 6000
F 0 "Q11" H 6590 6046 50  0000 L CNN
F 1 "FZT857TA" H 6590 5955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6600 6100 50  0001 C CNN
F 3 "FZT857TA" H 6400 6000 50  0001 C CNN
	1    6400 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R36
U 1 1 6146E1C5
P 6500 6400
F 0 "R36" H 6568 6446 50  0000 L CNN
F 1 "180" H 6568 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6540 6390 50  0001 C CNN
F 3 "CRG0805F180R" H 6500 6400 50  0001 C CNN
	1    6500 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R31
U 1 1 6146E1CB
P 5750 6000
F 0 "R31" V 5545 6000 50  0000 C CNN
F 1 "2.2k" V 5636 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5790 5990 50  0001 C CNN
F 3 "RR1220P-222-D" H 5750 6000 50  0001 C CNN
	1    5750 6000
	0    1    1    0   
$EndComp
$Comp
L Device:C C34
U 1 1 6146E1D1
P 6050 6300
F 0 "C34" H 6165 6346 50  0000 L CNN
F 1 "4.7uF" H 6165 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 6150 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 6050 6300 50  0001 C CNN
	1    6050 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6000 6050 6000
Connection ~ 6050 6000
Wire Wire Line
	6050 6000 5900 6000
$Comp
L power:GND #PWR029
U 1 1 6146E1DB
P 6050 6600
F 0 "#PWR029" H 6050 6350 50  0001 C CNN
F 1 "GND" H 6055 6427 50  0000 C CNN
F 2 "" H 6050 6600 50  0001 C CNN
F 3 "" H 6050 6600 50  0001 C CNN
	1    6050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 6600 6050 6600
Connection ~ 6050 6600
Wire Wire Line
	6050 6000 6050 6150
Wire Wire Line
	6500 6550 6500 6600
Wire Wire Line
	6500 6250 6500 6200
Wire Wire Line
	6050 6450 6050 6600
Wire Wire Line
	5600 6000 5450 6000
$Comp
L Device:Q_NPN_BCE Q12
U 1 1 6146E1E8
P 8300 6000
F 0 "Q12" H 8490 6046 50  0000 L CNN
F 1 "FZT857TA" H 8490 5955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8500 6100 50  0001 C CNN
F 3 "FZT857TA" H 8300 6000 50  0001 C CNN
	1    8300 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R37
U 1 1 6146E1EE
P 8400 6400
F 0 "R37" H 8468 6446 50  0000 L CNN
F 1 "180" H 8468 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8440 6390 50  0001 C CNN
F 3 "CRG0805F180R" H 8400 6400 50  0001 C CNN
	1    8400 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R32
U 1 1 6146E1F4
P 7650 6000
F 0 "R32" V 7445 6000 50  0000 C CNN
F 1 "2.2k" V 7536 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7690 5990 50  0001 C CNN
F 3 "RR1220P-222-D" H 7650 6000 50  0001 C CNN
	1    7650 6000
	0    1    1    0   
$EndComp
$Comp
L Device:C C35
U 1 1 6146E1FA
P 7950 6300
F 0 "C35" H 8065 6346 50  0000 L CNN
F 1 "4.7uF" H 8065 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7988 6150 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 7950 6300 50  0001 C CNN
	1    7950 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 6000 7950 6000
Connection ~ 7950 6000
Wire Wire Line
	7950 6000 7800 6000
$Comp
L power:GND #PWR030
U 1 1 6146E204
P 7950 6600
F 0 "#PWR030" H 7950 6350 50  0001 C CNN
F 1 "GND" H 7955 6427 50  0000 C CNN
F 2 "" H 7950 6600 50  0001 C CNN
F 3 "" H 7950 6600 50  0001 C CNN
	1    7950 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 6600 7950 6600
Connection ~ 7950 6600
Wire Wire Line
	7950 6000 7950 6150
Wire Wire Line
	8400 6550 8400 6600
Wire Wire Line
	8400 6250 8400 6200
Wire Wire Line
	7950 6450 7950 6600
Wire Wire Line
	7500 6000 7350 6000
$Comp
L Device:Q_NPN_BCE Q13
U 1 1 6146E211
P 10250 6000
F 0 "Q13" H 10440 6046 50  0000 L CNN
F 1 "FZT857TA" H 10440 5955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 10450 6100 50  0001 C CNN
F 3 "FZT857TA" H 10250 6000 50  0001 C CNN
	1    10250 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R38
U 1 1 6146E217
P 10350 6400
F 0 "R38" H 10418 6446 50  0000 L CNN
F 1 "180" H 10418 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10390 6390 50  0001 C CNN
F 3 "CRG0805F180R" H 10350 6400 50  0001 C CNN
	1    10350 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R33
U 1 1 6146E21D
P 9600 6000
F 0 "R33" V 9395 6000 50  0000 C CNN
F 1 "2.2k" V 9486 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9640 5990 50  0001 C CNN
F 3 "RR1220P-222-D" H 9600 6000 50  0001 C CNN
	1    9600 6000
	0    1    1    0   
$EndComp
$Comp
L Device:C C36
U 1 1 6146E223
P 9900 6300
F 0 "C36" H 10015 6346 50  0000 L CNN
F 1 "4.7uF" H 10015 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9938 6150 50  0001 C CNN
F 3 "CL21A475KPFNNNE" H 9900 6300 50  0001 C CNN
	1    9900 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 6000 9900 6000
Connection ~ 9900 6000
Wire Wire Line
	9900 6000 9750 6000
$Comp
L power:GND #PWR031
U 1 1 6146E22D
P 9900 6600
F 0 "#PWR031" H 9900 6350 50  0001 C CNN
F 1 "GND" H 9905 6427 50  0000 C CNN
F 2 "" H 9900 6600 50  0001 C CNN
F 3 "" H 9900 6600 50  0001 C CNN
	1    9900 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 6600 9900 6600
Connection ~ 9900 6600
Wire Wire Line
	9900 6000 9900 6150
Wire Wire Line
	10350 6550 10350 6600
Wire Wire Line
	10350 6250 10350 6200
Wire Wire Line
	9900 6450 9900 6600
Wire Wire Line
	9450 6000 9300 6000
Wire Wire Line
	15000 1950 2650 1950
Wire Wire Line
	2650 1950 2650 3300
Wire Wire Line
	4550 2050 15000 2050
Wire Wire Line
	4550 2050 4550 3300
Wire Wire Line
	15000 2150 6500 2150
Wire Wire Line
	6500 2150 6500 3300
Wire Wire Line
	8400 2250 15000 2250
Wire Wire Line
	8400 2250 8400 3300
Wire Wire Line
	15000 2350 10350 2350
Wire Wire Line
	10350 2350 10350 3300
Wire Wire Line
	12250 2450 15000 2450
Wire Wire Line
	12250 2450 12250 3300
Wire Wire Line
	15000 2550 13100 2550
Wire Wire Line
	13100 2550 13100 4700
Wire Wire Line
	13100 4700 2650 4700
Wire Wire Line
	2650 4700 2650 5800
Wire Wire Line
	4550 4800 13200 4800
Wire Wire Line
	13200 4800 13200 2650
Wire Wire Line
	13200 2650 15000 2650
Wire Wire Line
	4550 4800 4550 5800
Wire Wire Line
	15000 2750 13300 2750
Wire Wire Line
	13300 2750 13300 4900
Wire Wire Line
	13300 4900 6500 4900
Wire Wire Line
	6500 4900 6500 5800
Wire Wire Line
	15000 2850 13400 2850
Wire Wire Line
	13400 2850 13400 5000
Wire Wire Line
	13400 5000 8400 5000
Wire Wire Line
	8400 5000 8400 5800
Wire Wire Line
	15000 2950 13500 2950
Wire Wire Line
	13500 2950 13500 5100
Wire Wire Line
	13500 5100 10350 5100
Wire Wire Line
	10350 5100 10350 5800
Text Notes 700  1500 0    50   ~ 0
use tlv6001 op amp for pwm conv if the 10mV simulated frop is too high\n
Text Notes 14550 3350 0    50   ~ 0
FCS-12-SG and BHR-12-VUA
Text Notes 14550 3550 0    50   ~ 0
63911215521CAB
Text GLabel 14800 1850 0    50   Input ~ 0
150V
$EndSCHEMATC
