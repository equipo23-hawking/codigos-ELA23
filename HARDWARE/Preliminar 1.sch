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
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 6182C84D
P 4100 5750
F 0 "A?" H 4100 6931 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 4100 6840 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 4100 5750 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4100 5750 50  0001 C CNN
	1    4100 5750
	1    0    0    -1  
$EndComp
$Comp
L HC-05:HC-05 U?
U 1 1 61839923
P 9900 4100
F 0 "U?" H 9900 5467 50  0000 C CNN
F 1 "HC-05" H 9900 5376 50  0000 C CNN
F 2 "XCVR_HC-05" H 9900 4100 50  0001 L BNN
F 3 "" H 9900 4100 50  0001 L BNN
F 4 "ITead Studio" H 9900 4100 50  0001 L BNN "MF"
F 5 "Module ITead Studio" H 9900 4100 50  0001 L BNN "Package"
F 6 "Not in stock" H 9900 4100 50  0001 L BNN "Availability"
F 7 "HC-05" H 9900 4100 50  0001 L BNN "MP"
F 8 "Bluetooth to Serial Port Module" H 9900 4100 50  0001 L BNN "Description"
F 9 "None" H 9900 4100 50  0001 L BNN "Price"
	1    9900 4100
	0    -1   -1   0   
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 6185F855
P 1650 6100
F 0 "M?" H 1808 6096 50  0000 L CNN
F 1 "Motor_DC" H 1808 6005 50  0000 L CNN
F 2 "" H 1650 6010 50  0001 C CNN
F 3 "~" H 1650 6010 50  0001 C CNN
	1    1650 6100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 5650 3350 5650
$Comp
L Driver_Motor:TB6612FNG U?
U 1 1 61883712
P 2750 5750
F 0 "U?" H 2750 4661 50  0000 C CNN
F 1 "TB6612FNG" H 2750 4570 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 4050 4850 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/us/product/linear/motordriver/detail.TB6612FNG.html" H 3200 6350 50  0001 C CNN
	1    2750 5750
	-1   0    0    1   
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 6185C73B
P 1650 5450
F 0 "M?" H 1808 5446 50  0000 L CNN
F 1 "Motor_DC" H 1808 5355 50  0000 L CNN
F 2 "" H 1650 5360 50  0001 C CNN
F 3 "~" H 1650 5360 50  0001 C CNN
	1    1650 5450
	-1   0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 618664B6
P 2950 4400
F 0 "BT?" H 3068 4496 50  0000 L CNN
F 1 "Battery_Cell" H 3068 4405 50  0000 L CNN
F 2 "" V 2950 4460 50  0001 C CNN
F 3 "~" V 2950 4460 50  0001 C CNN
	1    2950 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 5450 3600 5450
Wire Wire Line
	3350 5350 3600 5350
Wire Wire Line
	3350 5550 3600 5550
Wire Wire Line
	2150 5450 2150 5250
Wire Wire Line
	2150 5250 1650 5250
Wire Wire Line
	2150 5650 2150 5750
Wire Wire Line
	2150 5750 1650 5750
Wire Wire Line
	2150 5950 2150 5900
Wire Wire Line
	2150 5900 1650 5900
Wire Wire Line
	1650 6400 2150 6400
Wire Wire Line
	2150 6400 2150 6150
Wire Wire Line
	3050 4400 3050 4750
Wire Wire Line
	2450 6750 1050 6750
Wire Wire Line
	1050 6750 1050 4400
Wire Wire Line
	1050 4400 2750 4400
$Comp
L Amplifier_Instrumentation:AD623 U?
U 1 1 618B032C
P 1850 1200
F 0 "U?" H 2294 1246 50  0000 L CNN
F 1 "AD623" H 2294 1155 50  0000 L CNN
F 2 "" H 1850 1200 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD623.pdf" H 1850 1200 50  0001 C CNN
	1    1850 1200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Instrumentation:AD623 U?
U 1 1 618CE7FD
P 3450 1200
F 0 "U?" H 3894 1246 50  0000 L CNN
F 1 "AD623" H 3894 1155 50  0000 L CNN
F 2 "" H 3450 1200 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD623.pdf" H 3450 1200 50  0001 C CNN
	1    3450 1200
	1    0    0    1   
$EndComp
Wire Wire Line
	1150 1000 1450 1000
Wire Wire Line
	1150 1400 1450 1400
Wire Wire Line
	2250 1200 2300 1200
Wire Wire Line
	2300 1200 2300 1000
Wire Wire Line
	2300 1000 3050 1000
Wire Wire Line
	2300 1200 2300 1700
Connection ~ 2300 1200
Wire Wire Line
	3000 1700 3000 1400
Wire Wire Line
	3000 1400 3050 1400
Wire Wire Line
	4800 1200 4850 1200
Wire Wire Line
	4850 1200 4850 1650
Wire Wire Line
	4850 1650 4900 1650
Wire Wire Line
	5500 1650 5500 1450
Wire Wire Line
	4850 1200 4850 1050
Connection ~ 4850 1200
$Comp
L Amplifier_Instrumentation:AD623 U?
U 1 1 618EFA01
P 8750 1300
F 0 "U?" H 9194 1346 50  0000 L CNN
F 1 "AD623" H 9194 1255 50  0000 L CNN
F 2 "" H 8750 1300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD623.pdf" H 8750 1300 50  0001 C CNN
	1    8750 1300
	1    0    0    1   
$EndComp
Wire Wire Line
	7450 1250 7500 1250
Wire Wire Line
	7500 1250 7500 1700
Wire Wire Line
	7500 1700 7550 1700
Wire Wire Line
	8150 1700 8150 1500
Wire Wire Line
	8150 1500 8350 1500
Wire Wire Line
	7500 1250 7500 1100
Wire Wire Line
	7500 1100 8350 1100
Connection ~ 7500 1250
$Comp
L Amplifier_Instrumentation:AD623 U?
U 1 1 618F8CF8
P 1850 2250
F 0 "U?" H 2294 2296 50  0000 L CNN
F 1 "AD623" H 2294 2205 50  0000 L CNN
F 2 "" H 1850 2250 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD623.pdf" H 1850 2250 50  0001 C CNN
	1    1850 2250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Instrumentation:AD623 U?
U 1 1 618F8D10
P 3450 2250
F 0 "U?" H 3894 2296 50  0000 L CNN
F 1 "AD623" H 3894 2205 50  0000 L CNN
F 2 "" H 3450 2250 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD623.pdf" H 3450 2250 50  0001 C CNN
	1    3450 2250
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Instrumentation:AD623 U?
U 1 1 618F8D22
P 6100 2300
F 0 "U?" H 6544 2346 50  0000 L CNN
F 1 "AD623" H 6544 2255 50  0000 L CNN
F 2 "" H 6100 2300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD623.pdf" H 6100 2300 50  0001 C CNN
	1    6100 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	1150 2050 1450 2050
Wire Wire Line
	1150 2450 1450 2450
Wire Wire Line
	2250 2250 2300 2250
Wire Wire Line
	2300 2250 2300 2050
Wire Wire Line
	2300 2050 3050 2050
Wire Wire Line
	2300 2250 2300 2750
Wire Wire Line
	2300 2750 2400 2750
Connection ~ 2300 2250
Wire Wire Line
	3000 2750 3000 2450
Wire Wire Line
	3000 2450 3050 2450
Wire Wire Line
	4800 2250 4850 2250
Wire Wire Line
	4850 2250 4850 2700
Wire Wire Line
	4850 2700 4900 2700
Wire Wire Line
	5500 2700 5500 2500
Wire Wire Line
	5500 2500 5700 2500
Wire Wire Line
	4850 2250 4850 2100
Wire Wire Line
	4850 2100 5700 2100
Connection ~ 4850 2250
$Comp
L Amplifier_Instrumentation:AD623 U?
U 1 1 618F8D47
P 8750 2350
F 0 "U?" H 9194 2396 50  0000 L CNN
F 1 "AD623" H 9194 2305 50  0000 L CNN
F 2 "" H 8750 2350 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD623.pdf" H 8750 2350 50  0001 C CNN
	1    8750 2350
	1    0    0    1   
$EndComp
Wire Wire Line
	7450 2300 7500 2300
Wire Wire Line
	7500 2300 7500 2750
Wire Wire Line
	7500 2750 7550 2750
Wire Wire Line
	8150 2750 8150 2550
Wire Wire Line
	8150 2550 8350 2550
Wire Wire Line
	7500 2300 7500 2150
Wire Wire Line
	7500 2150 8350 2150
Connection ~ 7500 2300
Wire Wire Line
	9150 1300 9200 1300
Wire Wire Line
	9200 1300 9200 1800
Wire Wire Line
	9200 1800 9500 1800
Wire Wire Line
	9150 2350 9200 2350
Wire Wire Line
	9200 2350 9200 1800
Connection ~ 9200 1800
$Comp
L amplificacion:EOG U?
U 1 1 61913E2D
P 1000 1000
F 0 "U?" H 1058 1225 50  0000 C CNN
F 1 "EOG" H 1058 1134 50  0000 C CNN
F 2 "" H 750 1000 50  0001 C CNN
F 3 "" H 750 1000 50  0001 C CNN
	1    1000 1000
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:EOG U?
U 1 1 6191496C
P 1000 1400
F 0 "U?" H 1058 1625 50  0000 C CNN
F 1 "EOG" H 1058 1534 50  0000 C CNN
F 2 "" H 750 1400 50  0001 C CNN
F 3 "" H 750 1400 50  0001 C CNN
	1    1000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1700 2400 1700
$Comp
L amplificacion:remover U?
U 1 1 61919635
P 2700 1700
F 0 "U?" H 2700 2015 50  0000 C CNN
F 1 "remover" H 2700 1924 50  0000 C CNN
F 2 "" H 2700 1700 50  0001 C CNN
F 3 "" H 2700 1700 50  0001 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U?
U 1 1 619203D3
P 5200 1650
F 0 "U?" H 5200 1965 50  0000 C CNN
F 1 "remover" H 5200 1874 50  0000 C CNN
F 2 "" H 5200 1650 50  0001 C CNN
F 3 "" H 5200 1650 50  0001 C CNN
	1    5200 1650
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U?
U 1 1 61921D3F
P 7850 1700
F 0 "U?" H 7850 2015 50  0000 C CNN
F 1 "remover" H 7850 1924 50  0000 C CNN
F 2 "" H 7850 1700 50  0001 C CNN
F 3 "" H 7850 1700 50  0001 C CNN
	1    7850 1700
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:EOG U?
U 1 1 61927AC0
P 1000 2050
F 0 "U?" H 1058 2275 50  0000 C CNN
F 1 "EOG" H 1058 2184 50  0000 C CNN
F 2 "" H 750 2050 50  0001 C CNN
F 3 "" H 750 2050 50  0001 C CNN
	1    1000 2050
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:EOG U?
U 1 1 61927AC6
P 1000 2450
F 0 "U?" H 1058 2675 50  0000 C CNN
F 1 "EOG" H 1058 2584 50  0000 C CNN
F 2 "" H 750 2450 50  0001 C CNN
F 3 "" H 750 2450 50  0001 C CNN
	1    1000 2450
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U?
U 1 1 61929213
P 2700 2750
F 0 "U?" H 2700 3065 50  0000 C CNN
F 1 "remover" H 2700 2974 50  0000 C CNN
F 2 "" H 2700 2750 50  0001 C CNN
F 3 "" H 2700 2750 50  0001 C CNN
	1    2700 2750
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U?
U 1 1 6192BF62
P 5200 2700
F 0 "U?" H 5200 3015 50  0000 C CNN
F 1 "remover" H 5200 2924 50  0000 C CNN
F 2 "" H 5200 2700 50  0001 C CNN
F 3 "" H 5200 2700 50  0001 C CNN
	1    5200 2700
	1    0    0    -1  
$EndComp
$Comp
L amplificacion:remover U?
U 1 1 6192F475
P 7850 2750
F 0 "U?" H 7850 3065 50  0000 C CNN
F 1 "remover" H 7850 2974 50  0000 C CNN
F 2 "" H 7850 2750 50  0001 C CNN
F 3 "" H 7850 2750 50  0001 C CNN
	1    7850 2750
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 61938E3C
P 10000 1900
F 0 "A?" H 10000 811 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 10000 720 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 10000 1900 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 10000 1900 50  0001 C CNN
	1    10000 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 900  10900 900 
Wire Wire Line
	10900 900  10900 3300
Wire Wire Line
	8800 3300 8800 3200
Wire Wire Line
	8800 2900 9800 2900
Wire Wire Line
	9200 4900 9200 5000
Wire Wire Line
	9200 5000 8500 5000
Wire Wire Line
	8500 5000 8500 3100
Wire Wire Line
	8500 3100 10600 3100
Wire Wire Line
	10600 3100 10600 2200
Wire Wire Line
	10600 2200 10500 2200
Wire Wire Line
	9400 4900 9400 5100
Wire Wire Line
	9400 5100 8400 5100
Wire Wire Line
	8400 5100 8400 3000
Wire Wire Line
	8400 3000 10700 3000
Wire Wire Line
	10700 3000 10700 2100
Wire Wire Line
	10700 2100 10500 2100
$Comp
L HC-05:HC-05 U?
U 1 1 61954133
P 5750 6000
F 0 "U?" H 5750 7367 50  0000 C CNN
F 1 "HC-05" H 5750 7276 50  0000 C CNN
F 2 "XCVR_HC-05" H 5750 6000 50  0001 L BNN
F 3 "" H 5750 6000 50  0001 L BNN
F 4 "ITead Studio" H 5750 6000 50  0001 L BNN "MF"
F 5 "Module ITead Studio" H 5750 6000 50  0001 L BNN "Package"
F 6 "Not in stock" H 5750 6000 50  0001 L BNN "Availability"
F 7 "HC-05" H 5750 6000 50  0001 L BNN "MP"
F 8 "Bluetooth to Serial Port Module" H 5750 6000 50  0001 L BNN "Description"
F 9 "None" H 5750 6000 50  0001 L BNN "Price"
	1    5750 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6850 4200 7200
Wire Wire Line
	4200 7200 6600 7200
Wire Wire Line
	6600 7200 6600 7000
Wire Wire Line
	6600 7000 6550 7000
Wire Wire Line
	4300 4750 6550 4750
Wire Wire Line
	6550 4750 6550 4900
Wire Wire Line
	4600 5750 4750 5750
Wire Wire Line
	4750 5750 4750 5300
Wire Wire Line
	4750 5300 4950 5300
Wire Wire Line
	4600 5850 4850 5850
Wire Wire Line
	4850 5850 4850 5400
Wire Wire Line
	4850 5400 4950 5400
$Comp
L Device:Battery_Cell BT?
U 1 1 61961A56
P 10850 1450
F 0 "BT?" H 10968 1546 50  0000 L CNN
F 1 "Battery_Cell" H 10968 1455 50  0000 L CNN
F 2 "" V 10850 1510 50  0001 C CNN
F 3 "~" V 10850 1510 50  0001 C CNN
	1    10850 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 900  9900 850 
Wire Wire Line
	9900 850  10750 850 
Wire Wire Line
	10750 850  10750 1450
Wire Wire Line
	11050 1450 11050 3200
Wire Wire Line
	11050 3200 8800 3200
Connection ~ 8800 3200
Wire Wire Line
	8800 3200 8800 2900
Text Notes 2500 1950 0    50   ~ 0
f= 0.05Hz\n
Text Notes 2550 3000 0    50   ~ 0
f=0.05Hz\n
$Comp
L RF_Filter:LFCN-80 FL?
U 1 1 619D6A9E
P 4400 1200
F 0 "FL?" H 4400 1667 50  0000 C CNN
F 1 "LFCN-35Hz" H 4400 1576 50  0000 C CNN
F 2 "Filter:Filter_Mini-Circuits_FV1206" H 4400 1700 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/LFCN-80+.pdf" H 4400 1200 50  0001 C CNN
	1    4400 1200
	1    0    0    -1  
$EndComp
$Comp
L RF_Filter:LFCN-80 FL?
U 1 1 619FDFE0
P 4400 2250
F 0 "FL?" H 4400 2717 50  0000 C CNN
F 1 "LFCN-35Hz" H 4400 2626 50  0000 C CNN
F 2 "Filter:Filter_Mini-Circuits_FV1206" H 4400 2750 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/LFCN-80+.pdf" H 4400 2250 50  0001 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1450 5700 1450
Wire Wire Line
	4850 1050 5700 1050
$Comp
L Amplifier_Instrumentation:AD623 U?
U 1 1 618D2ACA
P 6100 1250
F 0 "U?" H 6544 1296 50  0000 L CNN
F 1 "AD623" H 6544 1205 50  0000 L CNN
F 2 "" H 6100 1250 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD623.pdf" H 6100 1250 50  0001 C CNN
	1    6100 1250
	1    0    0    1   
$EndComp
Wire Wire Line
	6500 1250 6650 1250
Wire Wire Line
	6500 2300 6650 2300
Wire Wire Line
	4000 1200 3850 1200
Wire Wire Line
	4000 2250 3850 2250
$Comp
L RF_Filter:LFCN-80 FL?
U 1 1 61A62AB1
P 7050 1250
F 0 "FL?" H 7050 1717 50  0000 C CNN
F 1 "LFCN-35Hz" H 7050 1626 50  0000 C CNN
F 2 "Filter:Filter_Mini-Circuits_FV1206" H 7050 1750 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/LFCN-80+.pdf" H 7050 1250 50  0001 C CNN
	1    7050 1250
	1    0    0    -1  
$EndComp
$Comp
L RF_Filter:LFCN-80 FL?
U 1 1 61A62AB7
P 7050 2300
F 0 "FL?" H 7050 2767 50  0000 C CNN
F 1 "LFCN-35Hz" H 7050 2676 50  0000 C CNN
F 2 "Filter:Filter_Mini-Circuits_FV1206" H 7050 2800 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/LFCN-80+.pdf" H 7050 2300 50  0001 C CNN
	1    7050 2300
	1    0    0    -1  
$EndComp
Text Notes 5000 1900 0    50   ~ 0
f= 0.05Hz\n
Text Notes 5000 2950 0    50   ~ 0
f= 0.05Hz\n
Text Notes 7650 1950 0    50   ~ 0
f= 0.05Hz\n
Text Notes 7650 3000 0    50   ~ 0
f= 0.05Hz\n
$EndSCHEMATC
