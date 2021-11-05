// Modulo de Bluetooth

#include <SoftwareSerial.h>
SoftwareSerial Bt serial(2,3);
//Conectar el HC-05 TX al pin 2 RX del arduino nano
//Conectar el HC-05 RX al pin 3 TX del arduino UNO, por medio de un divisor de tension
char c=' ';

void setup(){
  Serial.begin(9600); //Inicializamos el puerto de serie
  Serial.println("Arduino esta listo");
  Serial.println("Recuerde seleccionar NL & CR en el monitor serial del arduino");
  
  //HC-05 la velocidad serial predeterminada es de 38400
  BTserial.begin(38400);
}

void loop(){
  //Sigue leyendo desde HC-05, para luego enviarlo al monitor serial del arduino UNO
  //Es decir, si llega un dato por el puerto BT se envia al monitor serial
  if(BTserial.available()){
    c=BTserail.read();
    Serial.write(c);
  }
  
  //Sigue leyendo desde el monitor serial del arduino nano, para luego enviarlo al HC-05
  //Si llegar un dato por el monitor serial se envia al puerto BT
  if(Serial.available()){
    c=Serial.read();
    BTserial.write(c);
  }
}
