#include <Servo.h>

Servo myservo;

void setup() {
  myservo.attach(9); // Attach the servo to digital pin 9
}

void loop() {
  for (int pos = 0; pos <= 180; pos += 1) { // Rotate from 0 to 180 degrees
    myservo.write(pos);
    delay(15);
  }
  for (int pos = 180; pos >= 0; pos -= 1) { // Rotate back to 0 degrees
    myservo.write(pos);
    delay(15);
  }
}