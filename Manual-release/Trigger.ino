int Switchpin = 7;  // use pin 7 for push button switch
int val = 0;        // for sending either 1 or zero
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(Switchpin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  val = digitalRead(Switchpin);
  Serial.println(val);
}
