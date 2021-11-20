EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Instrumentation:AD620 U?
U 1 1 61908389
P 4250 2000
F 0 "U?" H 4400 2300 50  0000 L CNN
F 1 "AD620" H 4350 2200 50  0000 L CNN
F 2 "" H 4250 2000 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 4250 2000 50  0001 C CNN
	1    4250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1700 4150 1500
Wire Wire Line
	4150 2300 4150 2500
Text Label 4100 1450 0    50   ~ 0
+3.7V
Text Label 4050 2600 0    50   ~ 0
-3.7V
$Comp
L Device:R RG
U 1 1 61908745
P 3550 2000
F 0 "RG" H 3300 2000 50  0000 L CNN
F 1 "100 ohm" H 3150 1950 50  0000 L CNN
F 2 "" V 3480 2000 50  0001 C CNN
F 3 "~" H 3550 2000 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2150 3650 2150
Wire Wire Line
	3650 2150 3650 2100
Wire Wire Line
	3650 2100 3850 2100
Wire Wire Line
	3550 1850 3650 1850
Wire Wire Line
	3650 1850 3650 1900
Wire Wire Line
	3650 1900 3850 1900
Text Notes 4300 2500 0    50   ~ 0
3.3 V\nvirtual ground
$Comp
L Device:C C1
U 1 1 619094C2
P 5100 2000
F 0 "C1" V 4848 2000 50  0000 C CNN
F 1 "47 uF" V 4939 2000 50  0000 C CNN
F 2 "" H 5138 1850 50  0001 C CNN
F 3 "~" H 5100 2000 50  0001 C CNN
	1    5100 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 61909E9A
P 5500 2350
F 0 "R1" H 5570 2396 50  0000 L CNN
F 1 "100 K" H 5570 2305 50  0000 L CNN
F 2 "" V 5430 2350 50  0001 C CNN
F 3 "~" H 5500 2350 50  0001 C CNN
	1    5500 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6190A4B9
P 6050 2950
F 0 "R2" V 6150 2950 50  0000 C CNN
F 1 "2K" V 5900 2950 50  0000 C CNN
F 2 "" V 5980 2950 50  0001 C CNN
F 3 "~" H 6050 2950 50  0001 C CNN
	1    6050 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 6190B903
P 6800 2950
F 0 "R3" V 6900 2950 50  0000 C CNN
F 1 "10K" V 6650 2950 50  0000 C CNN
F 2 "" V 6730 2950 50  0001 C CNN
F 3 "~" H 6800 2950 50  0001 C CNN
	1    6800 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2000 4950 2000
Wire Wire Line
	5250 2000 5500 2000
Wire Wire Line
	5500 2000 5500 2200
Wire Wire Line
	5500 2950 5900 2950
Wire Wire Line
	6200 2950 6650 2950
Wire Wire Line
	5500 2000 6500 2000
Connection ~ 5500 2000
Wire Wire Line
	6700 1800 6700 1700
Text Label 6650 1650 0    50   ~ 0
+3.7V
Wire Wire Line
	5500 2500 5500 2950
Wire Wire Line
	6700 2400 6700 2550
Text Label 6650 2650 0    50   ~ 0
-3.7V
$Comp
L Device:R R4
U 1 1 6190EA7C
P 7700 2100
F 0 "R4" V 7800 2100 50  0000 C CNN
F 1 "2K" V 7550 2100 50  0000 C CNN
F 2 "" V 7630 2100 50  0001 C CNN
F 3 "~" H 7700 2100 50  0001 C CNN
	1    7700 2100
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Operational:LM741 U?
U 1 1 6190F210
P 8550 2200
F 0 "U?" H 8650 2500 50  0000 L CNN
F 1 "LM741" H 8600 2400 50  0000 L CNN
F 2 "" H 8600 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 8700 2350 50  0001 C CNN
	1    8550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2950 7350 2950
Wire Wire Line
	7350 2950 7350 2100
Connection ~ 7350 2100
Wire Wire Line
	7350 2100 7550 2100
Wire Wire Line
	7850 2100 8050 2100
Wire Wire Line
	8450 1900 8450 1800
Wire Wire Line
	8450 2500 8450 2650
Text Label 8400 1750 0    50   ~ 0
+3.7V
Text Label 8400 2750 0    50   ~ 0
-3.7V
$Comp
L Device:R R5
U 1 1 61911C2F
P 8600 1350
F 0 "R5" V 8700 1350 50  0000 C CNN
F 1 "10K" V 8450 1350 50  0000 C CNN
F 2 "" V 8530 1350 50  0001 C CNN
F 3 "~" H 8600 1350 50  0001 C CNN
	1    8600 1350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 619123E0
P 8600 850
F 0 "C2" V 8450 850 50  0000 C CNN
F 1 "10 uF" V 8750 850 50  0000 C CNN
F 2 "" H 8638 700 50  0001 C CNN
F 3 "~" H 8600 850 50  0001 C CNN
	1    8600 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 2100 8050 1350
Wire Wire Line
	8050 850  8450 850 
Connection ~ 8050 2100
Wire Wire Line
	8050 2100 8250 2100
Wire Wire Line
	8050 1350 8450 1350
Connection ~ 8050 1350
Wire Wire Line
	8050 1350 8050 850 
Wire Wire Line
	8750 850  9150 850 
Wire Wire Line
	9150 850  9150 1350
Wire Wire Line
	9150 2200 8850 2200
Wire Wire Line
	8750 1350 9150 1350
Connection ~ 9150 1350
Wire Wire Line
	9150 1350 9150 2200
Wire Wire Line
	7100 2100 7350 2100
Wire Wire Line
	6350 2200 6500 2200
Wire Wire Line
	6350 2400 6350 2200
$Comp
L power:GND #PWR?
U 1 1 61915223
P 6350 2400
F 0 "#PWR?" H 6350 2150 50  0001 C CNN
F 1 "GND" H 6355 2227 50  0000 C CNN
F 2 "" H 6350 2400 50  0001 C CNN
F 3 "" H 6350 2400 50  0001 C CNN
	1    6350 2400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM741 U?
U 1 1 6190BD66
P 6800 2100
F 0 "U?" H 7000 2350 50  0000 L CNN
F 1 "LM741" H 6950 2250 50  0000 L CNN
F 2 "" H 6850 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 6950 2250 50  0001 C CNN
	1    6800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2500 8050 2300
$Comp
L power:GND #PWR?
U 1 1 61918327
P 8050 2500
F 0 "#PWR?" H 8050 2250 50  0001 C CNN
F 1 "GND" H 8055 2327 50  0000 C CNN
F 2 "" H 8050 2500 50  0001 C CNN
F 3 "" H 8050 2500 50  0001 C CNN
	1    8050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2300 8050 2300
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 61920F26
P 10850 2800
F 0 "A?" V 10250 3050 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" V 10150 3300 50  0000 R CNN
F 2 "Module:Arduino_Nano" H 10850 2800 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 10850 2800 50  0001 C CNN
	1    10850 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 2200 10850 2200
Wire Wire Line
	10850 2200 10850 2300
Connection ~ 9150 2200
$Comp
L HC-05:HC-05 U?
U 1 1 619265F8
P 10900 4700
F 0 "U?" V 10946 3570 50  0000 R CNN
F 1 "HC-05" V 10855 3570 50  0000 R CNN
F 2 "XCVR_HC-05" H 10900 4700 50  0001 L BNN
F 3 "" H 10900 4700 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 10900 4700 50  0001 L BNN "STANDARD"
F 5 "v1.0" H 10900 4700 50  0001 L BNN "PARTREV"
F 6 "HuiCheng" H 10900 4700 50  0001 L BNN "MF"
	1    10900 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6192B898
P 12250 2750
F 0 "#PWR?" H 12250 2500 50  0001 C CNN
F 1 "GND" V 12255 2622 50  0000 R CNN
F 2 "" H 12250 2750 50  0001 C CNN
F 3 "" H 12250 2750 50  0001 C CNN
	1    12250 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11850 2700 12050 2700
Wire Wire Line
	11850 2800 12050 2800
Wire Wire Line
	9850 2600 9800 2600
Wire Wire Line
	10400 5500 10400 5650
Text Label 10400 5750 0    50   ~ 0
D10
Wire Wire Line
	10200 5500 10200 5650
Text Label 10200 5750 0    50   ~ 0
D11
Wire Wire Line
	11250 3300 11250 3450
Wire Wire Line
	11350 3300 11350 3450
Text Label 11350 3700 1    50   ~ 0
UART-RX
Text Label 11250 3700 1    50   ~ 0
UART-TX
Wire Wire Line
	9800 2600 9800 3900
$Comp
L power:GND #PWR?
U 1 1 61919CA3
P 12200 4000
F 0 "#PWR?" H 12200 3750 50  0001 C CNN
F 1 "GND" H 12205 3827 50  0000 C CNN
F 2 "" H 12200 4000 50  0001 C CNN
F 3 "" H 12200 4000 50  0001 C CNN
	1    12200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11900 3900 12200 3900
Wire Wire Line
	12200 3900 12200 4000
Wire Wire Line
	9850 2700 9600 2700
Wire Wire Line
	9600 2700 9600 2850
Text Notes 9500 3100 0    50   ~ 0
3.3 V\nvirtual \nground
Wire Wire Line
	9800 2600 9500 2600
Connection ~ 9800 2600
Text Label 9300 2650 0    50   ~ 0
3.7V
Wire Wire Line
	3850 1800 3850 1550
Wire Wire Line
	3850 1550 3550 1550
Wire Wire Line
	3850 2200 3850 2400
Wire Wire Line
	3850 2400 3550 2400
Text Label 3050 1600 0    50   ~ 0
ELECTRODO1
Text Label 3050 2400 0    50   ~ 0
ELECTRODO2
Wire Wire Line
	12050 2700 12050 2750
Wire Wire Line
	12250 2750 12200 2750
Connection ~ 12050 2750
Wire Wire Line
	12050 2750 12050 2800
Wire Wire Line
	12200 2750 12200 2000
Connection ~ 12200 2750
Wire Wire Line
	12200 2750 12050 2750
Text Label 11950 2000 0    50   ~ 0
ELECTRODO3
$Comp
L HC-05:HC-05 U?
U 1 1 619297D8
P 8300 7200
F 0 "U?" H 8300 6000 50  0000 C CNN
F 1 "HC-05" H 8300 5900 50  0000 C CNN
F 2 "XCVR_HC-05" H 8300 7200 50  0001 L BNN
F 3 "" H 8300 7200 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 8300 7200 50  0001 L BNN "STANDARD"
F 5 "v1.0" H 8300 7200 50  0001 L BNN "PARTREV"
F 6 "HuiCheng" H 8300 7200 50  0001 L BNN "MF"
	1    8300 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6192C739
P 9200 8400
F 0 "#PWR?" H 9200 8150 50  0001 C CNN
F 1 "GND" H 9205 8227 50  0000 C CNN
F 2 "" H 9200 8400 50  0001 C CNN
F 3 "" H 9200 8400 50  0001 C CNN
	1    9200 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 8200 9200 8200
Wire Wire Line
	9200 8200 9200 8400
$Comp
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 6192E2F4
P 6300 6950
F 0 "A?" H 6700 5750 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 6800 5850 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 6300 6950 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 6300 6950 50  0001 C CNN
	1    6300 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 6700 7350 6700
Wire Wire Line
	7500 6500 7350 6500
Text Label 7250 6700 0    50   ~ 0
D11
Text Label 7250 6500 0    50   ~ 0
D10
Wire Wire Line
	5800 7350 5650 7350
Wire Wire Line
	5800 7450 5650 7450
Text Label 5350 7350 0    50   ~ 0
UART-RX
Text Label 5350 7450 0    50   ~ 0
UART-TX
$Comp
L power:GND #PWR?
U 1 1 61937092
P 6300 8300
F 0 "#PWR?" H 6300 8050 50  0001 C CNN
F 1 "GND" H 6305 8127 50  0000 C CNN
F 2 "" H 6300 8300 50  0001 C CNN
F 3 "" H 6300 8300 50  0001 C CNN
	1    6300 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 8050 6200 8150
Wire Wire Line
	6200 8150 6300 8150
Wire Wire Line
	6400 8150 6400 8050
Wire Wire Line
	6300 8050 6300 8150
Connection ~ 6300 8150
Wire Wire Line
	6300 8150 6400 8150
Wire Wire Line
	6300 8150 6300 8300
$Comp
L Driver_Motor:VNH2SP30 U?
U 1 1 6194027C
P 4350 9300
F 0 "U?" H 4000 10400 50  0000 C CNN
F 1 "VNH2SP30" H 4000 10300 50  0000 C CNN
F 2 "Package_SO:ST_MultiPowerSO-30" H 4350 10225 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group2/66/b8/f5/2c/9a/66/41/c7/CD00043711/files/CD00043711.pdf/jcr:content/translations/en.CD00043711.pdf" H 3850 10300 50  0001 C CNN
	1    4350 9300
	-1   0    0    -1  
$EndComp
$Comp
L Driver_Motor:VNH2SP30 U?
U 1 1 619477A2
P 4350 6100
F 0 "U?" H 4100 7200 50  0000 C CNN
F 1 "VNH2SP30" H 4050 7100 50  0000 C CNN
F 2 "Package_SO:ST_MultiPowerSO-30" H 4350 7025 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group2/66/b8/f5/2c/9a/66/41/c7/CD00043711/files/CD00043711.pdf/jcr:content/translations/en.CD00043711.pdf" H 3850 7100 50  0001 C CNN
	1    4350 6100
	-1   0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 61957057
P 3000 9250
F 0 "M?" H 3158 9246 50  0000 L CNN
F 1 "Motor_DC" H 3158 9155 50  0000 L CNN
F 2 "" H 3000 9160 50  0001 C CNN
F 3 "~" H 3000 9160 50  0001 C CNN
	1    3000 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5850 3650 6000
Wire Wire Line
	3050 6350 3650 6350
Wire Wire Line
	3650 6350 3650 6200
Wire Wire Line
	3000 9050 3650 9050
Wire Wire Line
	3650 9050 3650 9200
Wire Wire Line
	3000 9550 3650 9550
Wire Wire Line
	3650 9550 3650 9400
Text Label 4800 5550 0    50   ~ 0
1
Text Label 4800 5750 0    50   ~ 0
1
Text Label 4800 5950 0    50   ~ 0
1
Text Label 4800 8750 0    50   ~ 0
2
Text Label 4800 8950 0    50   ~ 0
2
Text Label 4800 9150 0    50   ~ 0
2
Wire Wire Line
	5050 5500 5250 5500
Wire Wire Line
	5050 5700 5250 5700
Wire Wire Line
	5050 5900 5250 5900
Text Label 5250 5500 0    50   ~ 0
D4
Text Label 5250 5700 0    50   ~ 0
D5
Text Label 5250 5900 0    50   ~ 0
D6
Wire Wire Line
	5050 8700 5200 8700
Wire Wire Line
	5050 8900 5200 8900
Wire Wire Line
	5050 9100 5200 9100
Text Label 5200 8700 0    50   ~ 0
D7
Text Label 5200 8900 0    50   ~ 0
D8
Text Label 5200 9100 0    50   ~ 0
D9
Wire Wire Line
	5800 6750 5650 6750
Wire Wire Line
	5800 6850 5650 6850
Wire Wire Line
	5800 6950 5650 6950
Wire Wire Line
	5800 7050 5650 7050
Wire Wire Line
	5800 7150 5650 7150
Wire Wire Line
	5800 7250 5650 7250
Text Label 5500 6750 0    50   ~ 0
INA1
Text Label 5500 6850 0    50   ~ 0
INB1
Text Label 5500 6950 0    50   ~ 0
PWM1
Text Label 5500 7050 0    50   ~ 0
INA2
Text Label 5500 7150 0    50   ~ 0
INB2
Text Label 5500 7250 0    50   ~ 0
PWM2
$Comp
L power:+24V #PWR?
U 1 1 6199B284
P 4350 8100
F 0 "#PWR?" H 4350 7950 50  0001 C CNN
F 1 "+24V" H 4365 8273 50  0000 C CNN
F 2 "" H 4350 8100 50  0001 C CNN
F 3 "" H 4350 8100 50  0001 C CNN
	1    4350 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 8100 4350 8200
$Comp
L power:+24V #PWR?
U 1 1 6199EBA1
P 4350 4900
F 0 "#PWR?" H 4350 4750 50  0001 C CNN
F 1 "+24V" H 4365 5073 50  0000 C CNN
F 2 "" H 4350 4900 50  0001 C CNN
F 3 "" H 4350 4900 50  0001 C CNN
	1    4350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4900 4350 5000
$Comp
L power:+12V #PWR?
U 1 1 619A2003
P 6200 5800
F 0 "#PWR?" H 6200 5650 50  0001 C CNN
F 1 "+12V" H 6215 5973 50  0000 C CNN
F 2 "" H 6200 5800 50  0001 C CNN
F 3 "" H 6200 5800 50  0001 C CNN
	1    6200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5800 6200 5850
Wire Wire Line
	3050 5850 3650 5850
$Comp
L Motor:Motor_DC M?
U 1 1 6195675B
P 3050 6050
F 0 "M?" H 3208 6046 50  0000 L CNN
F 1 "Motor_DC" H 3208 5955 50  0000 L CNN
F 2 "" H 3050 5960 50  0001 C CNN
F 3 "~" H 3050 5960 50  0001 C CNN
	1    3050 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A214DF
P 4350 7400
F 0 "#PWR?" H 4350 7150 50  0001 C CNN
F 1 "GND" H 4355 7227 50  0000 C CNN
F 2 "" H 4350 7400 50  0001 C CNN
F 3 "" H 4350 7400 50  0001 C CNN
	1    4350 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A21CB7
P 4350 10650
F 0 "#PWR?" H 4350 10400 50  0001 C CNN
F 1 "GND" H 4355 10477 50  0000 C CNN
F 2 "" H 4350 10650 50  0001 C CNN
F 3 "" H 4350 10650 50  0001 C CNN
	1    4350 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 7200 4250 7400
Wire Wire Line
	4250 7400 4350 7400
Wire Wire Line
	4450 7200 4450 7400
Wire Wire Line
	4450 7400 4350 7400
Connection ~ 4350 7400
Wire Wire Line
	4250 10400 4250 10650
Wire Wire Line
	4250 10650 4350 10650
Wire Wire Line
	4450 10400 4450 10650
Wire Wire Line
	4450 10650 4350 10650
Connection ~ 4350 10650
Wire Wire Line
	6200 5850 9200 5850
Wire Wire Line
	9200 5850 9200 6100
Wire Wire Line
	9200 6100 9100 6100
Connection ~ 6200 5850
Wire Wire Line
	6200 5850 6200 5950
$EndSCHEMATC
