int incomingByte = 0; //incoming serial data
int ledPIN = 7;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(ledPIN, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available() > 0){
      incomingByte = Serial.read();
      
      //on                                   //its of integer type 
      if(incomingByte == 49){            //49 = hex equivalent of 1
          digitalWrite(ledPIN, HIGH);
          //Recieved data
          Serial.print("GOT THIS: ");
          Serial.println(incomingByte, DEC); //print incoming info
      }
      //off
      if(incomingByte == 48){            //49 = hex equivalent of 0
          digitalWrite(ledPIN, LOW);  
          //Recieved data
          Serial.print("GOT THIS: ");
          Serial.println(incomingByte, DEC); //print incoming info
      }
      else{
          //do nothing  
      }
    }
}
