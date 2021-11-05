
unsigned long currentMillis;
long previousMillis=0;
long interval;
int valor_horizontal;
int valor_vertical;
int pestaneos=0;

#define umbral_mediano_v   660
//660 --> 3,2V
#define umbral_alto_v   900
//900 --> 4,4V
#define umbral_horizontal_izquierda   100
//100*5V/1024=2.44V
#define umbral_horizontal_derecha   500
//500*5V/1024 = 0.5V
#define max_intervalo_vertical    20
//20ms
#define max_intervalo_horatizontal    100
//100ms
#define max_intercalo_entrepestaneo 500
//500ms


void setup(){
  Serial.begin(19200);
  //Se establece la velocidad de datos en bits por segundo para la transmision de datos en serie
}

void loop(){
  do{
    valor_vertical=analogRead(0);//Lectura analógica en el pin 0
  }while(valor_vertical<umbral_mediano_v);
  //Cuando el valor vertical es menor 
  //Se espera un pestaneo para proceder con su lectura
  currentMillis=millis();//Lectura del tiempo actual
  previousMillis= currentMillis;//Reemplaza el tiempo anterior
  
  do{
    interval=millis()-previousMillis;//Midiendo el tiempo transcurrido
    valor_vertical=analogRead(0);
  }while(umbral_mediano_v<valor_vertical && valor_vertical<umbral_alto_v);
  //Cuando el valor es mayor al umbral mediano, pero menor al alto
  //Se da la ejecución de un pestaneo
  
  if(umbral_alto_v<=valor_vertical){
    //Pero cuando el valor sobrepasa el umbral alto
    //Se detiene la funcion
  }
  else if{
    //Entonces se ejecuta un pestaneo normal
    pestaneos++;
    currentMillis=millis();//Lectura del tiempo
    previousMillis= currentMillis;//Reemplaza el tiempo anterior
    
      do{//Analizamos qué movimiento desea realizar el usuario
        interval=millis()-previousMillis; //Medicion del tiempo
        
        //Verificamos que no hayan pestaneos involuntarios
        if(interval>max_intercalo_entrepestaneo){
          //Salir
        }
        valor_vertical=analogRead(0);
        valor_horizontal=analogRead(1);
      }while(umbral_horizontal_izquierda<valor_horizontal && valor_vertical<umbral_mediano_v);
      //Con ello es que se espera un pestaneo horizontal o vertical
      
    currentMillis=millis();//Lectura del tiempo 
    previousMillis= currentMillis;//Reemplaza el tiempo anterior
      if(valor_horizontal<=umbral_horizontal_izquierda)
      {   do{//Se trata de retroceder
            interval=millis()-previousMillis;//Medicion del tiempo
            if(max_intervalo_horatizontal<interval){
              //Si vemos que los pestaneos son rapidos: Salir
            }
            valor_horizontal=analogRead(1);
          }while(valor_horizontal<max_intervalo_horatizontal);
            //Ejecucion de la mirada a la izquierda
            //RETROCEDE
            
          do{//Una vez ejecutado un pestaneo fuerte
            valor_vertical=analogRead(0);
          }while(valor_vertical<umbral_alto_v)
          //SE DETIENE
      }
      else if(umbral_mediano_v<=valor_vertical)
      { 
        currentMillis = millis();
        previousMillis= currentMillis;
        
        do{
          interval=milli()-previousMillis;
          if(max_intervalo_vertical<interval){
            //Pestaneos no involuntarios
            //Salir
          }
          valor_vertical=analogRead(0);
        }while(umbral_mediano_v<valor_vertical && valor_vertical<umbral_alto_v);
        
        if(umbral_alto_v<=valor_vertical){
          //Pero cuando el valor sobrepasa el umbral alto
          //Se detiene la funcion
        }
        else if{
          //Reconocimiento de un segundo pestaneo normal
          pestaneo++;
          //Desde este punto se esperara a las senales ejecutadas tanto en verical
          //como en horizonral para determinar las rotaciones o detenerse
              currentMillis = millis();
              previousMillis= currentMillis;
              
              do{
                //Evaluamos hacia donde se desea desplazar
                interval=milli()-previousMillis;
                
                if(max_intercalo_entrepestaneo<interval){
                  //Salir
                }
                valor_vertical=analogRead(0);
                valor_horizontal=analogRead(1);
              }while(umbral_mediano_v<valor_vertical && valor_horizontal<umbral_horizontal_derecha);
              //Lectura de un tercer pestaneo o mirada a la izquierda/derecha
          currentMillis = millis();
          previousMillis= currentMillis;
          
          if(umbral_mediano_v<=valor_vertical){
            //Ejecucion del tercer pestaneo: AVANZA
          }
          else if(valor_horizontal<=umbral_horizontal_izquierda){
            //GIRA A LA IZQUIERDA
            
            do{
              //A la espera de la ejecucion de un pestaneo fuerte
              valor_vertical=analogRead(0);
            }while(valor_vertical<umbral_alto_v);
            //SE DETIENE
          }
          else if(umbral_horizontal_derecha<=valor_horizontal){
            //GIRA A LA DERECHA
            do{
              //A la espera de la ejecucion de un pestaneo fuerte
              valor_vertical=analogRead(0);
            }while(valor_vertical<umbral_alto_v);
            //SE DETIENE
          }
        }
      }
  }
}
