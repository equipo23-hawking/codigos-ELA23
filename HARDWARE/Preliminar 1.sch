EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Diseño esquemático del circuito electrónico (Preliminar)"
Date "2021-11-04"
Rev ""
Comp "Equipo 23"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 6182C84D
P 3950 5900
F 0 "A1" H 3950 7081 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 3950 6990 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 3950 5900 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 3950 5900 50  0001 C CNN
	1    3950 5900
	1    0    0    -1  
$EndComp
$Comp
L HC-05:HC-05 U21
U 1 1 61839923
P 9750 4250
F 0 "U21" H 9750 5617 50  0000 C CNN
F 1 "HC-05" H 9750 5526 50  0000 C CNN
F 2 "XCVR_HC-05" H 9750 4250 50  0001 L BNN
F 3 "" H 9750 4250 50  0001 L BNN
F 4 "ITead Studio" H 9750 4250 50  0001 L BNN "MF"
F 5 "Module ITead Studio" H 9750 4250 50  0001 L BNN "Package"
F 6 "Not in stock" H 9750 4250 50  0001 L BNN "Availability"
F 7 "HC-05" H 9750 4250 50  0001 L BNN "MP"
F 8 "Bluetooth to Serial Port Module" H 9750 4250 50  0001 L BNN "Description"
F 9 "None" H 9750 4250 50  0001 L BNN "Price"
	1    9750 4250
	0    -1   -1   0   
$EndComp
$Comp
L Motor:Motor_DC M2
U 1 1 6185F855
P 1500 6250
F 0 "M2" H 1658 6246 50  0000 L CNN
F 1 "Motor_DC" H 1658 6155 50  0000 L CNN
F 2 "" H 1500 6160 50  0001 C CNN
F 3 "~" H 1500 6160 50  0001 C CNN
	1    1500 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 5800 3200 5800
$Comp
L Driver_Motor:TB6612FNG U9
U 1 1 61883712
P 2600 5900
F 0 "U9" H 2600 4811 50  0000 C CNN
F 1 "TB6612FNG" H 2600 4720 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 3900 5000 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/us/product/linear/motordriver/detail.TB6612FNG.html" H 3050 6500 50  0001 C CNN
	1    2600 5900
	-1   0    0    1   
$EndComp
$Comp
L Motor:Motor_DC M1
U 1 1 6185C73B
P 1500 5600
F 0 "M1" H 1658 5596 50  0000 L CNN
F 1 "Motor_DC" H 1658 5505 50  0000 L CNN
F 2 "" H 1500 5510 50  0001 C CNN
F 3 "~" H 1500 5510 50  0001 C CNN
	1    1500 5600
	-1   0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 618664B6
P 2800 4550
F 0 "BT1" H 2918 4646 50  0000 L CNN
F 1 "Battery_Cell" H 2918 4555 50  0000 L CNN
F 2 "" V 2800 4610 50  0001 C CNN
F 3 "~" V 2800 4610 50  0001 C CNN
	1    2800 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 5600 3450 5600
Wire Wire Line
	3200 5500 3450 5500
Wire Wire Line
	3200 5700 3450 5700
Wire Wire Line
	2000 5600 2000 5400
Wire Wire Line
	2000 5400 1500 5400
Wire Wire Line
	2000 5800 2000 5900
Wire Wire Line
	2000 5900 1500 5900
Wire Wire Line
	2000 6100 2000 6050
Wire Wire Line
	2000 6050 1500 6050
Wire Wire Line
	1500 6550 2000 6550
Wire Wire Line
	2000 6550 2000 6300
Wire Wire Line
	2900 4550 2900 4900
Wire Wire Line
	2300 6900 900  6900
Wire Wire Line
	900  6900 900  4550
Wire Wire Line
	900  4550 2600 4550
Wire Wire Line
	1000 1150 1300 1150
Wire Wire Line
	1000 1550 1300 1550
Wire Wire Line
	2100 1350 2150 1350
Wire Wire Line
	2150 1350 2150 1150
Wire Wire Line
	2150 1150 2900 1150
Wire Wire Line
	2150 1350 2150 1850
Connection ~ 2150 1350
Wire Wire Line
	2850 1850 2850 1550
Wire Wire Line
	2850 1550 2900 1550
Wire Wire Line
	4650 1350 4700 1350
Wire Wire Line
	4700 1350 4700 1800
Wire Wire Line
	4700 1800 4750 1800
Wire Wire Line
	5350 1800 5350 1600
Wire Wire Line
	4700 1350 4700 1200
Connection ~ 4700 1350
Wire Wire Line
	7300 1400 7350 1400
Wire Wire Line
	7350 1400 7350 1850
Wire Wire Line
	7350 1850 7400 1850
Wire Wire Line
	8000 1850 8000 1650
Wire Wire Line
	8000 1650 8200 1650
Wire Wire Line
	7350 1400 7350 1250
Wire Wire Line
	7350 1250 8200 1250
Connection ~ 7350 1400
Wire Wire Line
	1000 2200 1300 2200
Wire Wire Line
	1000 2600 1300 2600
Wire Wire Line
	2100 2400 2150 2400
Wire Wire Line
	2150 2400 2150 2200
Wire Wire Line
	2150 2200 2900 2200
Wire Wire Line
	2150 2400 2150 2900
Wire Wire Line
	2150 2900 2250 2900
Connection ~ 2150 2400
Wire Wire Line
	2850 2900 2850 2600
Wire Wire Line
	2850 2600 2900 2600
Wire Wire Line
	4650 2400 4700 2400
Wire Wire Line
	4700 2400 4700 2850
Wire Wire Line
	4700 2850 4750 2850
Wire Wire Line
	5350 2850 5350 2650
Wire Wire Line
	5350 2650 5550 2650
Wire Wire Line
	4700 2400 4700 2250
Wire Wire Line
	4700 2250 5550 2250
Connection ~ 4700 2400
Wire Wire Line
	7300 2450 7350 2450
Wire Wire Line
	7350 2450 7350 2900
Wire Wire Line
	7350 2900 7400 2900
Wire Wire Line
	8000 2900 8000 2700
Wire Wire Line
	8000 2700 8200 2700
Wire Wire Line
	7350 2450 7350 2300
Wire Wire Line
	7350 2300 8200 2300
Connection ~ 7350 2450
Wire Wire Line
	9000 1450 9050 1450
Wire Wire Line
	9050 1450 9050 1950
Wire Wire Line
	9050 1950 9350 1950
Wire Wire Line
	9000 2500 9050 2500
Wire Wire Line
	9050 2500 9050 1950
Connection ~ 9050 1950
$Comp
L amplificacion:EOG U1
U 1 1 61913E2D
P 850 1150
F 0 "U1" H 908 1375 50  0000 C CNN
F 1 "EOG" H 908 1284 50  0000 C CNN
F 2 "" H 600 1150 50  0001 C CNN
F 3 "" H 600 1150 50  0001 C CNN
	1    850  1150
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:EOG U2
U 1 1 6191496C
P 850 1550
F 0 "U2" H 908 1775 50  0000 C CNN
F 1 "EOG" H 908 1684 50  0000 C CNN
F 2 "" H 600 1550 50  0001 C CNN
F 3 "" H 600 1550 50  0001 C CNN
	1    850  1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1850 2250 1850
$Comp
L amplificacion:remover U7
U 1 1 61919635
P 2550 1850
F 0 "U7" H 2550 2165 50  0000 C CNN
F 1 "remover" H 2550 2074 50  0000 C CNN
F 2 "" H 2550 1850 50  0001 C CNN
F 3 "" H 2550 1850 50  0001 C CNN
	1    2550 1850
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U12
U 1 1 619203D3
P 5050 1800
F 0 "U12" H 5050 2115 50  0000 C CNN
F 1 "remover" H 5050 2024 50  0000 C CNN
F 2 "" H 5050 1800 50  0001 C CNN
F 3 "" H 5050 1800 50  0001 C CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U17
U 1 1 61921D3F
P 7700 1850
F 0 "U17" H 7700 2165 50  0000 C CNN
F 1 "remover" H 7700 2074 50  0000 C CNN
F 2 "" H 7700 1850 50  0001 C CNN
F 3 "" H 7700 1850 50  0001 C CNN
	1    7700 1850
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:EOG U3
U 1 1 61927AC0
P 850 2200
F 0 "U3" H 908 2425 50  0000 C CNN
F 1 "EOG" H 908 2334 50  0000 C CNN
F 2 "" H 600 2200 50  0001 C CNN
F 3 "" H 600 2200 50  0001 C CNN
	1    850  2200
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:EOG U4
U 1 1 61927AC6
P 850 2600
F 0 "U4" H 908 2825 50  0000 C CNN
F 1 "EOG" H 908 2734 50  0000 C CNN
F 2 "" H 600 2600 50  0001 C CNN
F 3 "" H 600 2600 50  0001 C CNN
	1    850  2600
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U8
U 1 1 61929213
P 2550 2900
F 0 "U8" H 2550 3215 50  0000 C CNN
F 1 "remover" H 2550 3124 50  0000 C CNN
F 2 "" H 2550 2900 50  0001 C CNN
F 3 "" H 2550 2900 50  0001 C CNN
	1    2550 2900
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U13
U 1 1 6192BF62
P 5050 2850
F 0 "U13" H 5050 3165 50  0000 C CNN
F 1 "remover" H 5050 3074 50  0000 C CNN
F 2 "" H 5050 2850 50  0001 C CNN
F 3 "" H 5050 2850 50  0001 C CNN
	1    5050 2850
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U18
U 1 1 6192F475
P 7700 2900
F 0 "U18" H 7700 3215 50  0000 C CNN
F 1 "remover" H 7700 3124 50  0000 C CNN
F 2 "" H 7700 2900 50  0001 C CNN
F 3 "" H 7700 2900 50  0001 C CNN
	1    7700 2900
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A2
U 1 1 61938E3C
P 9850 2050
F 0 "A2" H 9850 961 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 9850 870 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 9850 2050 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 9850 2050 50  0001 C CNN
	1    9850 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9850 1050 10750 1050
Wire Wire Line
	10750 1050 10750 3450
Wire Wire Line
	8650 3050 9650 3050
Wire Wire Line
	9050 5050 9050 5150
Wire Wire Line
	9050 5150 8350 5150
Wire Wire Line
	8350 5150 8350 3250
Wire Wire Line
	8350 3250 10450 3250
Wire Wire Line
	10450 3250 10450 2350
Wire Wire Line
	10450 2350 10350 2350
Wire Wire Line
	9250 5050 9250 5250
Wire Wire Line
	9250 5250 8250 5250
Wire Wire Line
	8250 5250 8250 3150
Wire Wire Line
	8250 3150 10550 3150
Wire Wire Line
	10550 3150 10550 2250
Wire Wire Line
	10550 2250 10350 2250
$Comp
L HC-05:HC-05 U14
U 1 1 61954133
P 5600 6150
F 0 "U14" H 5600 7517 50  0000 C CNN
F 1 "HC-05" H 5600 7426 50  0000 C CNN
F 2 "XCVR_HC-05" H 5600 6150 50  0001 L BNN
F 3 "" H 5600 6150 50  0001 L BNN
F 4 "ITead Studio" H 5600 6150 50  0001 L BNN "MF"
F 5 "Module ITead Studio" H 5600 6150 50  0001 L BNN "Package"
F 6 "Not in stock" H 5600 6150 50  0001 L BNN "Availability"
F 7 "HC-05" H 5600 6150 50  0001 L BNN "MP"
F 8 "Bluetooth to Serial Port Module" H 5600 6150 50  0001 L BNN "Description"
F 9 "None" H 5600 6150 50  0001 L BNN "Price"
	1    5600 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 7000 4050 7350
Wire Wire Line
	4050 7350 6450 7350
Wire Wire Line
	6450 7350 6450 7150
Wire Wire Line
	6450 7150 6400 7150
Wire Wire Line
	4150 4900 6400 4900
Wire Wire Line
	6400 4900 6400 5050
Wire Wire Line
	4450 5900 4600 5900
Wire Wire Line
	4600 5900 4600 5450
Wire Wire Line
	4600 5450 4800 5450
Wire Wire Line
	4450 6000 4700 6000
Wire Wire Line
	4700 6000 4700 5550
Wire Wire Line
	4700 5550 4800 5550
$Comp
L Device:Battery_Cell BT2
U 1 1 61961A56
P 10700 1600
F 0 "BT2" H 10818 1696 50  0000 L CNN
F 1 "Battery_Cell" H 10818 1605 50  0000 L CNN
F 2 "" V 10700 1660 50  0001 C CNN
F 3 "~" V 10700 1660 50  0001 C CNN
	1    10700 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 1050 9750 1000
Wire Wire Line
	9750 1000 10600 1000
Wire Wire Line
	10600 1000 10600 1600
Wire Wire Line
	10900 1600 10900 3350
Text Notes 2350 2100 0    50   ~ 0
f= 0.05Hz\n
Text Notes 2400 3150 0    50   ~ 0
f=0.05Hz\n
$Comp
L RF_Filter:LFCN-80 FL1
U 1 1 619D6A9E
P 4250 1350
F 0 "FL1" H 4250 1817 50  0000 C CNN
F 1 "LFCN-35Hz" H 4250 1726 50  0000 C CNN
F 2 "Filter:Filter_Mini-Circuits_FV1206" H 4250 1850 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/LFCN-80+.pdf" H 4250 1350 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
$Comp
L RF_Filter:LFCN-80 FL2
U 1 1 619FDFE0
P 4250 2400
F 0 "FL2" H 4250 2867 50  0000 C CNN
F 1 "LFCN-35Hz" H 4250 2776 50  0000 C CNN
F 2 "Filter:Filter_Mini-Circuits_FV1206" H 4250 2900 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/LFCN-80+.pdf" H 4250 2400 50  0001 C CNN
	1    4250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1600 5550 1600
Wire Wire Line
	4700 1200 5550 1200
Wire Wire Line
	6350 1400 6500 1400
Wire Wire Line
	6350 2450 6500 2450
Wire Wire Line
	3850 1350 3700 1350
Wire Wire Line
	3850 2400 3700 2400
$Comp
L RF_Filter:LFCN-80 FL3
U 1 1 61A62AB1
P 6900 1400
F 0 "FL3" H 6900 1867 50  0000 C CNN
F 1 "LFCN-35Hz" H 6900 1776 50  0000 C CNN
F 2 "Filter:Filter_Mini-Circuits_FV1206" H 6900 1900 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/LFCN-80+.pdf" H 6900 1400 50  0001 C CNN
	1    6900 1400
	1    0    0    -1  
$EndComp
$Comp
L RF_Filter:LFCN-80 FL4
U 1 1 61A62AB7
P 6900 2450
F 0 "FL4" H 6900 2917 50  0000 C CNN
F 1 "LFCN-35Hz" H 6900 2826 50  0000 C CNN
F 2 "Filter:Filter_Mini-Circuits_FV1206" H 6900 2950 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/LFCN-80+.pdf" H 6900 2450 50  0001 C CNN
	1    6900 2450
	1    0    0    -1  
$EndComp
Text Notes 4850 2050 0    50   ~ 0
f= 0.05Hz\n
Text Notes 4850 3100 0    50   ~ 0
f= 0.05Hz\n
Text Notes 7500 2100 0    50   ~ 0
f= 0.05Hz\n
Text Notes 7500 3150 0    50   ~ 0
f= 0.05Hz\n
Wire Wire Line
	8650 3050 8650 3450
Wire Wire Line
	9650 3050 9650 3350
Wire Wire Line
	9650 3350 10900 3350
Connection ~ 9650 3050
$Comp
L Amplifier_Instrumentation:AD620 U?
U 1 1 618609FC
P 1700 1350
F 0 "U?" H 2144 1396 50  0000 L CNN
F 1 "AD620" H 2144 1305 50  0000 L CNN
F 2 "" H 1700 1350 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 1700 1350 50  0001 C CNN
	1    1700 1350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Instrumentation:AD620 U?
U 1 1 618713E1
P 1700 2400
F 0 "U?" H 2144 2446 50  0000 L CNN
F 1 "AD620" H 2144 2355 50  0000 L CNN
F 2 "" H 1700 2400 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 1700 2400 50  0001 C CNN
	1    1700 2400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Instrumentation:AD620 U?
U 1 1 618741FC
P 3300 1350
F 0 "U?" H 3744 1396 50  0000 L CNN
F 1 "AD620" H 3744 1305 50  0000 L CNN
F 2 "" H 3300 1350 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 3300 1350 50  0001 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Instrumentation:AD620 U?
U 1 1 618777BF
P 3300 2400
F 0 "U?" H 3744 2446 50  0000 L CNN
F 1 "AD620" H 3744 2355 50  0000 L CNN
F 2 "" H 3300 2400 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 3300 2400 50  0001 C CNN
	1    3300 2400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Instrumentation:AD620 U?
U 1 1 6187A8F5
P 5950 1400
F 0 "U?" H 6394 1446 50  0000 L CNN
F 1 "AD620" H 6394 1355 50  0000 L CNN
F 2 "" H 5950 1400 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 5950 1400 50  0001 C CNN
	1    5950 1400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Instrumentation:AD620 U?
U 1 1 6187D871
P 5950 2450
F 0 "U?" H 6394 2496 50  0000 L CNN
F 1 "AD620" H 6394 2405 50  0000 L CNN
F 2 "" H 5950 2450 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 5950 2450 50  0001 C CNN
	1    5950 2450
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Instrumentation:AD620 U?
U 1 1 618807D6
P 8600 1450
F 0 "U?" H 9044 1496 50  0000 L CNN
F 1 "AD620" H 9044 1405 50  0000 L CNN
F 2 "" H 8600 1450 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 8600 1450 50  0001 C CNN
	1    8600 1450
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Instrumentation:AD620 U?
U 1 1 618835C4
P 8600 2500
F 0 "U?" H 9044 2546 50  0000 L CNN
F 1 "AD620" H 9044 2455 50  0000 L CNN
F 2 "" H 8600 2500 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 8600 2500 50  0001 C CNN
	1    8600 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
