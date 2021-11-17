/*Codigo del soporte de cabeza (electrodos EOG y modulo de bluetooth HC-05 maestro)*/
#include<SoftwareSerial.h>
SoftwareSerial BTSerial(10,11);
//Conectar HC-05 TX al pin 10 del Arduino Nano
//Conectar HC-05 RX al pin 11 del Arduino Nano


//Inicializacion de variables generales
unsigned long currentMillis;
long previousMillis=0;
long interval;
int valor_horizontal;
int pestaneos=0;

//Medición de pestañeo
#define umbral_mediano_v   660
//660 --> 3,2V
#define umbral_alto_v   900
//900 --> 4,4V

//Medición de mirada
#define umbral_horizontal_izquierda   100
//100*5V/1024=2.44V
#define umbral_horizontal_derecha   500
//500*5V/1024 = 0.5V

//Tiempo entre pestañeos
#define max_intervalo_entrepestaneo 500
//500ms


void setup(){
  BTSerial.begin(19200);
  Serial.begin(19200);
  pinMode(A0, INPUT);//Inicializamos el pin analógico 0 como entrada de datos de los EOG
}

void loop(){
  //Pestañeo débil: no cuenta como pestañeo
  do{
    valor_horizontal=analogRead(0);//Lectura de la señal de los electrodos en el pin 0
  }while(valor_horizontal<=umbral_mediano_v);

  currentMillis=millis();//Lectura del tiempo actual
  previousMillis=currentMillis;//Reemplaza el tiempo anterior

  //Pestañeo normal: cuenta como pestañeo
  do{
    interval=millis()-previousMillis;//Midiendo el tiempo transcurrido
    valor_horizontal=analogRead(0);//Lectura de la señal de los electrodos en el pin 0
  }while(umbral_mediano_v<valor_horizontal && valor_horizontal<umbral_alto_v);

  //Pestañeo fuerte: cuenta como la acción de freno
  if(umbral_alto_v<=valor_horizontal){
    valor_horizontal=analogRead(0);//Lectura de la señal de los electrodos en el pin 0
    //DETENER
    if(Serial.available()>0){  // Si llega un dato por el monitor serial se envía al puerto BT
      int senal_1= Serial.read();
      Serial.print(senal_1);//Se verifica el dato entrante
      if(umbral_alto_v<=senal_1){
        BTSerial.write('1');//Envío de comando
      }
    }
  }
  //Ejecución del primer pestañeo
  else if(umbral_mediano_v<valor_horizontal && valor_horizontal<umbral_alto_v){
    //Entonces se ejecuta un pestañeo normal
    pestaneos++;//1 PESTAÑEO
    currentMillis=millis();//Lectura del tiempo
    previousMillis=currentMillis;//Reemplaza el tiempo anterior
      
    //Detección de pestañeos involuntarios
    do{
     interval=millis()-previousMillis; //Medición del tiempo
     if(interval>max_intervalo_entrepestaneo){
     //Salir
     break;
    }
    valor_horizontal=analogRead(0);
    }while(umbral_mediano_v<valor_horizontal && valor_horizontal<umbral_alto_v);
      
    currentMillis=millis();//Lectura del tiempo 
    previousMillis=currentMillis;//Reemplaza el tiempo anterior
    //Detección de primera mirada
    if(valor_horizontal<=umbral_horizontal_izquierda){   
      do{
        interval=millis()-previousMillis;//Medicion del tiempo
        if(max_intervalo_entrepestaneo<interval){//Pestaneo involuntario
          //Salir
          break;
        }
        valor_horizontal=analogRead(0);
        //Si se detecta una mirada a la izquierda
      }while(valor_horizontal<=umbral_horizontal_izquierda);
      //RETROCEDER
      if(Serial.available()>0){  // Si llega un dato por el monitor serial se envía al puerto BT
        int senal_2= Serial.read();
        Serial.print(senal_2);//Se verifica el dato entrante
        if(senal_2<=umbral_horizontal_izquierda){
         BTSerial.write('2');//Envío de comando
        }
      }
                
      do{//Una vez ejecutado un pestaneo fuerte
        valor_horizontal=analogRead(0);
      }while(umbral_alto_v<=valor_horizontal);
      //DETENER
      if(Serial.available()>0){  // Si llega un dato por el monitor serial se envía al puerto BT
        int senal_1= Serial.read();
        Serial.print(senal_1);//Se verifica el dato entrante
        if(umbral_alto_v<=senal_1){
          BTSerial.write('1');//Envío de comando
        }
      }
    }
    else if(umbral_mediano_v<valor_horizontal && valor_horizontal<umbral_alto_v){
      //Reconocimiento de un segundo pestañeo normal
      pestaneos++;
      //Espera de las senales ejecutadas en horizonral para determinar los desplazamientos
      currentMillis=millis();
      previousMillis=currentMillis;
      do{
        //Pestañeos involuntarios
        interval=millis()-previousMillis;
        if(max_intervalo_entrepestaneo<interval){
          //Salir
          break;
        }
        valor_horizontal=analogRead(0);
      }while(umbral_mediano_v<valor_horizontal && valor_horizontal<umbral_alto_v);
  
      currentMillis=millis();
      previousMillis=currentMillis;
      /*Ejecución de un segundo pestañeo*/
      if(umbral_horizontal_derecha<=valor_horizontal && valor_horizontal<=umbral_horizontal_izquierda){
        //AVANZA
        valor_horizontal=analogRead(0);//Lectura de la señal de los electrodos en el pin 0
        if(Serial.available()>0){  // Si llega un dato por el monitor serial se envía al puerto BT
          int senal_3= Serial.read();
          Serial.print(senal_3);//Se verifica el dato entrante
          if(umbral_horizontal_derecha<=senal_3 && senal_3<=umbral_horizontal_izquierda){
           BTSerial.write('3');//Envío de comando
          }
        }
        //DETENER
        if(umbral_alto_v<=valor_horizontal){
          valor_horizontal=analogRead(0);//Lectura de la señal de los electrodos en el pin 0
          if(Serial.available()>0){  // Si llega un dato por el monitor serial se envía al puerto BT
            int senal_1= Serial.read();
            Serial.print(senal_1);//Se verifica el dato entrante
            if(umbral_alto_v<=senal_1){
             BTSerial.write('1');//Envío de comando
            }
          }
        }
      }
      else if(valor_horizontal<=umbral_horizontal_izquierda){
        //GIRA A LA IZQUIERDA
        valor_horizontal=analogRead(0);//Lectura de la señal de los electrodos en el pin 0
        if(Serial.available()>0){  // Si llega un dato por el monitor serial se envía al puerto BT
          int senal_4= Serial.read();
          Serial.print(senal_4);//Se verifica el dato entrante
          if(senal_4<=umbral_horizontal_izquierda){
           BTSerial.write('4');//Envío de comando
          }
        }
        //DETENER
        if(umbral_alto_v<=valor_horizontal){
          valor_horizontal=analogRead(0);//Lectura de la señal de los electrodos en el pin 0
          if(Serial.available()>0){  // Si llega un dato por el monitor serial se envía al puerto BT
            int senal_1= Serial.read();
            Serial.print(senal_1);//Se verifica el dato entrante
            if(umbral_alto_v<=senal_1){
             BTSerial.write('1');//Envío de comando
            }
          }
        }
      }
      else if(umbral_horizontal_derecha<=valor_horizontal){
        //GIRA A LA DERECHA
        valor_horizontal=analogRead(0);//Lectura de la señal de los electrodos en el pin 0
        if(Serial.available()>0){  // Si llega un dato por el monitor serial se envía al puerto BT
          int senal_5= Serial.read();
          Serial.print(senal_5);//Se verifica el dato entrante
          if(umbral_horizontal_derecha<=senal_5){
           BTSerial.write('5');//Envío de comando
          }
        }
        //DETENER
        if(umbral_alto_v<=valor_horizontal){
          valor_horizontal=analogRead(0);//Lectura de la señal de los electrodos en el pin 0
          if(Serial.available()>0){  // Si llega un dato por el monitor serial se envía al puerto BT
            int senal_1= Serial.read();
            Serial.print(senal_1);//Se verifica el dato entrante
            if(umbral_alto_v<=senal_1){
             BTSerial.write('1');//Envío de comando
            }
          }
        }
      }
    }
  }
}
  
