
// LDR pin connections
int ldrTR = A0;  // LDR top right
int ldrTL = A1;  // LDR top left
int ldrBR = A2;  // LDR bottom right
int ldrBL = A3;  // LDR bottom left

// Servo horizontal;
int servoh = 90;

int servohLimitHigh = 155;
int servohLimitLow = 40;

// Servo vertical;
int servov = 90;

int servovLimitHigh = 120;
int servovLimitLow = 15;

int mode = 0;
bool isPressed = false;

//            -------- Vertical  ----------- --------- Horizontal ------------  --------------  --------------
//            LSB                           MSB LSB                         MSB LSB         MSB LSB         MSB
int pin[24] = { 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 22, 24, 26, 28, 30, 32, 34, 36 };

void servo(int vertical, int horizontal) {

  for (int i = 0; i < 8; i++) {
    digitalWrite(pin[i], vertical % 2);
    vertical = (vertical - (vertical % 2)) / 2;
  }
  for (int i = 0; i < 8; i++) {
    digitalWrite(pin[i + 8], horizontal % 2);
    horizontal = (horizontal - (horizontal % 2)) / 2;
  }
  Serial.println();
}

void segment(int unit, int floating) {
  for (int i = 0; i < 4; i++) {
    digitalWrite(pin[i + 16], unit % 2);
    // Serial.print(unit % 2);
    unit = (unit - (unit % 2)) / 2;
  }
  for (int i = 0; i < 4; i++) {
    digitalWrite(pin[i + 20], floating % 2);
    // Serial.print(floating % 2);
    floating = (floating - (floating % 2)) / 2;
  }
  Serial.println();
}


void automaticSolarTracker() {
  //----------------------- Auto SolarCell Tracking --------------------------------//
  int tr = analogRead(ldrTR);  // top right
  int tl = analogRead(ldrTL);  // top left
  int br = analogRead(ldrBR);  // bottom right
  int bl = analogRead(ldrBL);  // bottom left

  int dtime = 20;  // change for debugging only
  int tol = 50;

  int avt = (tl + tr) / 2;  // average value top
  int avd = (bl + br) / 2;  // average value bottom
  int avl = (tl + bl) / 2;  // average value left
  int avr = (tr + br) / 2;  // average value right

  int dvert = avt - avd;   // check the difference of up and down
  int dhoriz = avl - avr;  // check the difference of left and right

  // check if the difference is in the tolerance else change vertical angle
  if (-1 * tol > dvert || dvert > tol) {
    if (avt > avd) {
      servov = ++servov;
      if (servov > servovLimitHigh) {
        servov = servovLimitHigh;
      }
    } else if (avt < avd) {
      servov = --servov;
      if (servov < servovLimitLow) {
        servov = servovLimitLow;
      }
    }
    // vertical.write(servov);
    servo(servov, servoh);
  }

  // check if the difference is in the tolerance else change horizontal angle
  if (-1 * tol > dhoriz || dhoriz > tol) {
    if (avl > avr) {
      servoh = --servoh;
      if (servoh < servohLimitLow) {
        servoh = servohLimitLow;
      }
    } else if (avl < avr) {
      servoh = ++servoh;
      if (servoh > servohLimitHigh) {
        servoh = servohLimitHigh;
      }
    } else if (avl = avr) {
      // nothing
    }
    // horizontal.write(servoh);
    servo(servov, servoh);
  }

  delay(dtime);
}

void controlHorizontal() {
  int controlLeft = digitalRead(2);
  int controlRight = digitalRead(4);
  if (controlLeft == LOW && servoh <= servohLimitHigh) {
    servoh += 1;
    servo(servov, servoh);
  }
  else if (controlRight == LOW && servoh >= servohLimitLow) {
    servoh -= 1;
    servo(servov, servoh);
  }
  delay(50);
}

void controlVertical() {
  int controlLeft = digitalRead(2);
  int controlRight = digitalRead(4);
  if (controlLeft == LOW && servov <= servovLimitHigh) {
    servov += 1;
    servo(servov, servoh);
  }
  else if (controlRight == LOW && servov >= servovLimitLow) {
    servov -= 1;
    servo(servov, servoh);
  }
  delay(50);
}

void calculateVoltage() {
  //----------------------- calculate Voltage --------------------------------//
  float sensorValue = analogRead(A4);  // Solar Panel Positive PIN connect
  int rawVoltage = round(sensorValue * (5.0 / 1023.0) * 100);
  int unitVoltage = rawVoltage / 100;
  int floating = (rawVoltage % 100) / 10;

  // Serial.print("voltage  ");
  // Serial.println(rawVoltage);
  // Serial.print("    ");
  // Serial.println();
  // Serial.print("unitVoltage  ");
  // Serial.println(unitVoltage);
  // Serial.println();
  // Serial.print("Float  ");
  // Serial.println(floating);
  segment(unitVoltage, floating);
  delay(100);
}



void setup() {
  Serial.begin(9600);
  for (int i = 0; i < 16; i++)
    pinMode(pin[i], OUTPUT);

  pinMode(ldrTR, INPUT);
  pinMode(ldrTL, INPUT);
  pinMode(ldrBR, INPUT);
  pinMode(ldrBL, INPUT);
  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  pinMode(4, INPUT_PULLUP);
}

void loop() {

  int stateMode = digitalRead(3);
  if (stateMode == 0 && !isPressed) {
    isPressed = true;
    mode = mode + 1;
    if (mode > 2) {
      mode = 0;
    }
  }
  else if (stateMode == 1) {
    isPressed = false;
  }
  Serial.println("stateMode ");
  Serial.println(stateMode);
  Serial.println("Mode ");
  Serial.println(mode);
  Serial.println("servoh ");
  Serial.println(servoh);
  Serial.println("servov ");
  Serial.println(servov);

  if (mode == 0) {
    automaticSolarTracker();
  }
  if (mode == 1) {
    controlHorizontal();
  }
  if (mode == 2) {
    controlVertical();
  }
  calculateVoltage();
}
