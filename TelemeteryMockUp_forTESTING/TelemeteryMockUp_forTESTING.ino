
//Telemertery data, They are just random
unsigned int TeamID = 6400; //1
unsigned long timer = 0;//2
unsigned long packetID = 0; // 3
float altitude = 0;//4 
float pressure = 101325; //5
float temp;// = -10;//6
float voltage = 5;//7
float gTime = timer; //8
float glatitude = 0; //9
float glongitude = 0; //10
float gAlt = altitude;//11
float gSats = 3; //12
float airSpeed = 5; //13
float state = 1; //14
float PC = 8; //15
float deploy = 0;

float counter =0;
float altitudeStep = 0;



//Servo servo1;
void setup() {
  //servo1.attach(8);
  Serial.begin (19200);
  randomSeed(analogRead(0));
}



void loop() {
  packetID++;
  counter++;
  if(packetID % 5 == 0){
    state++;
  }
  
  temp = random(95,105);
  altitudeStep = random(25,45);
  altitudeStep = altitudeStep/10;
  temp = -1.0*temp/(10.0);
  if (counter <=20) {
    altitude = altitude+altitudeStep;
    airSpeed = random(10,18);
    PC = random(0,180);
  } else if (counter > 20 && counter <24) {
    altitude = altitude;
    airSpeed = random(20,25);
    PC = random(0,180);
  } else if (counter>=24 && counter <=30){
    altitude = altitude-altitudeStep*3;
    airSpeed = random(25,27);
    PC = random(0,180);
  }
  gAlt = altitude;
 if (counter < 40) {
   Transmit_data();
 }
  delay (1000);
}

void Transmit_data (){
    ++timer;
    ++gTime;
  String toradio = "";
  toradio += TeamID;
  toradio += ",";
  toradio += timer;
  toradio += ",";
  toradio += packetID;
  toradio += ",";
  toradio += altitude;
  toradio += ",";
  toradio += pressure;
  toradio += ",";
  toradio += temp;
  toradio += ",";
  toradio += voltage;
  toradio += ",";
  toradio += gTime;
  toradio += ",";
  toradio += glatitude;
  toradio += ",";
  toradio += glongitude;
  toradio += ",";
  toradio += altitude;
  toradio += ",";
  toradio += gSats;
  toradio += ",";
  toradio += airSpeed;
  toradio += ",";
  toradio += state;
  toradio += ",";
  toradio += PC;

  Serial.println (toradio);
  
}


  
