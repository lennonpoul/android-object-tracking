#include <AFMotor.h>

AF_DCMotor motor1(2, MOTOR12_64KHZ); // create motor #2, 64KHz pwm
AF_DCMotor motor2(1, MOTOR12_64KHZ);


/*
Android Object Tracking Soccer Robot
Authors: 	Jesse Griffis
		Joshua Wilson
Miami University - 2011 Senior Design 449
SoccerRodbot.pde

Requires Adafruit MotorShield library
 */

void setup() {
  Serial.begin(9600);
  int dir = 0;
  
  motor1.setSpeed(200);  
  motor2.setSpeed(200);  // set the speed to 200/255
  
}

void loop() {
  int left = 0;
  int right =0;
  int forward=0;
  int stopped=0;
  for(int i =0; i<10; i++){
  double total = 0;
  int count = 0;
  for (int i=0; i<30; i++){
    int a = analogRead(A0);
    
    if(a>20){
      total += a;
    }
    else{i--;}
    if(a==0){
      count++;
    }
    if(count >30){
      break;
    }
    
  }
  double b = total / 30;
  Serial.println(b, DEC);
  if(b>28&&b<35){
    right++;
  }else if(b>70&&b<85){
    forward++;
  }else if(b>40&&b<48){
    left++;
  }else if(b==0){
    stopped++;
  }
  }
  
  if(right>=3){
    Serial.println("Right");
    motor1.run(FORWARD);
    motor2.run(BACKWARD);  // right
    delay(200);
    motor1.run(RELEASE);
    motor2.run(RELEASE);  // stopped
    delay(1000);
    right = 0;
    left = 0;
    forward = 0;
    stopped = 0;
  } else if(left>=3){
    Serial.println("Left");
    motor1.run(BACKWARD);
    motor2.run(FORWARD);  // left
    delay(200);
    motor1.run(RELEASE);
    motor2.run(RELEASE);  // stopped
    delay(1000);
    right = 0;
    left = 0;
    forward = 0;
    stopped = 0;
  } else if(forward>=3){
    Serial.println("Forward");
    motor1.run(BACKWARD);      // forward
    motor2.run(BACKWARD);
    delay(200);
    motor1.run(RELEASE);
    motor2.run(RELEASE);  // stopped
    delay(1000);
    right = 0;
    left = 0;
    forward = 0;
    stopped = 0;
  } else if(stopped>=10){
    Serial.println("Stop");
    motor1.run(RELEASE);
    motor2.run(RELEASE);  // stopped
    delay(500);
    right = 0;
    left = 0;
    forward = 0;
    stopped = 0;
  }
  
}
