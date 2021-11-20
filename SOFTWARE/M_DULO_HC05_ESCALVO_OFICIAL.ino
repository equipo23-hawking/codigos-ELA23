//Recepción de datos (HC-05 esclavo) + ejecución de movimientos de silla 
/*ARDUINO  <------------>  PIN DRIVER
 8                        8 DRIVER_1 izquierda --> MOTOR1
 4                        4 DRIVER_2 izquierda --> MOTOR2
 7                        7 DRIVER_1 derecha   --> MOTOR1
 5                        5 DRIVER_2 derecha   --> MOTOR2


SALIDAS DEL ARDUINO (PWN)
 ARDUINO  <------------>  PIN DRIVER
 6                        6 pwn_1 --> MOTOR2
 9                        9 pwn_2 --> MOTOR1
*/

#include <SoftwareSerial.h>

SoftwareSerial BTE_serial(11,10); 
// Conectar el HC-05 TX al pin 11 del Arduino UNO (TX es para transmitir datos) (recepcion)
// Conectar el HC-05 RX al pin 10 del Arduino UNO  (RX es el que recibe datos) (transmision)

//Declaración de varibles 
int lectura_EOG = 0;
int D1_izquierda= 8;
int D2_izquierda= 4;
int D1_derecha= 7;
int D2_derecha= 5;
int PWN_1= 6;
int PWN_2= 9;

//Definimos las constantes que va recibir el módulo esclavo
const int detener = 1;
const int retroceder = 2;
const int avanzar = 3;
const int girar_izquierda = 4;
const int girar_derecha = 5;

void setup() {
  Serial.begin(9600);
  Serial.println("Inicio de comandos AT:");
  Serial.println("Recuerde seleccionar NL & CR en el monitor serial del arduino");
  pinMode(D1_izquierda, OUTPUT);
  pinMode(D2_izquierda, OUTPUT);
  pinMode(D1_derecha, OUTPUT);
  pinMode(D2_derecha, OUTPUT);
  pinMode(PWN_1, OUTPUT);
  pinMode(PWN_2, OUTPUT);
}

//Casos a realizar según lo recibido por Módulo HC-05 maestro
void loop() {

  //Leer los datos del módulo HC-05 maestro
  if(Serial.available()){
    BTE_serial.write((Serial.read()));
  }
  if(BTE_serial.available()){
    Serial.write((BTE_serial.read()));
  }
  
  switch(lectura_EOG){
    
    //Detenerse
    case '1':
      analogWrite(D1_izquierda, 0);
      analogWrite(D2_izquierda, 0);
      analogWrite(D1_derecha, 0);
      analogWrite(D2_derecha, 0);
      digitalWrite(PWN_1, LOW);
      digitalWrite(PWN_2, LOW);
      
      delay(1);
      break;

    //Retroceder
    case '2':
      analogWrite(D1_izquierda, 255);
      analogWrite(D2_izquierda, 255);
      analogWrite(D1_derecha, 255);
      analogWrite(D2_derecha, 255);
      digitalWrite(PWN_1, HIGH);
      digitalWrite(PWN_2, HIGH);
      delay(2000);
      break;

    //Avanzar
    case '3':
      analogWrite(D1_izquierda, 255);
      analogWrite(D2_izquierda, 255);
      analogWrite(D1_derecha, 255);
      analogWrite(D2_derecha, 255);
      digitalWrite(PWN_1, HIGH);
      digitalWrite(PWN_2, HIGH);
      delay(200);
      break;

    //Girar a la izquierda
    case '4':
      analogWrite(D1_izquierda, 0);
      analogWrite(D2_izquierda, 0);
      analogWrite(D1_derecha, 255);
      analogWrite(D2_derecha, 0);
      digitalWrite(PWN_1, LOW);
      digitalWrite(PWN_2, HIGH);
      delay(200); 
      break;

    //Girar a la derecha
    case '5':
      analogWrite(D1_izquierda, 0);
      analogWrite(D2_izquierda, 255);
      analogWrite(D1_derecha, 0);
      analogWrite(D2_derecha, 0);
      digitalWrite(PWN_1, HIGH);
      digitalWrite(PWN_2, LOW);
      delay(200);
      break;
  }
}
