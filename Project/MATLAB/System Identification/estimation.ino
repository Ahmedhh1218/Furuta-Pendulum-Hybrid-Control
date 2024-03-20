#include <QuadratureEncoder.h>

const int encoderPinA = 2;
const int encoderPinB = 4;
Encoders leftEncoder(encoderPinA, encoderPinB);

volatile long lastEncoderPosition = 0;
unsigned long elapsedTimeSlice = 10; // Log every 5 ms

#define enA 6
#define in1 7
#define in2 8

const int pwmArraySize = 20; // Size of the array (make it even)
int pwmValues[pwmArraySize];
int currentPWMIndex = 0;
unsigned long lastChangeTime = 0;
const long changeInterval = 5000; // Change every 5 seconds

int const pulsesPerRevolution = 1600;

void setup() {
  Serial.begin(9600);
  pinMode(encoderPinA, INPUT);
  pinMode(encoderPinB, INPUT);
  pinMode(enA, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  digitalWrite(encoderPinA, HIGH);
  digitalWrite(encoderPinB, HIGH);

  randomSeed(analogRead(0)); // Initialize random number generator
  for (int i = 0; i < pwmArraySize; i += 2) {
    int pwm = random(42, 42); // Generate random PWM values between 70 and 255
    pwmValues[i] = pwm;
    pwmValues[i + 1] = -pwm; // Next value is the negative of the current
  }

  setupTimerInterrupt();
}

void loop() {
  unsigned long currentTime = millis();
  if (currentPWMIndex < pwmArraySize && currentTime - lastChangeTime > changeInterval) {
    setMotorPWM(pwmValues[currentPWMIndex]);
    currentPWMIndex++;
    lastChangeTime = currentTime;
  } else if (currentPWMIndex >= pwmArraySize) {
    setMotorPWM(0); // Stop the motor once all values have been used
  }

}

void setMotorPWM(int pwm) {
  if (pwm >= 0) {
    digitalWrite(in1, 1);
    digitalWrite(in2, 0);
  } else {
    digitalWrite(in1, 0);
    digitalWrite(in2, 1);
    pwm = -pwm; // Make PWM positive for analogWrite
  }
  analogWrite(enA, pwm);
}

ISR(TIMER2_COMPA_vect) {
  static unsigned long lastPrintTime = 0;
  unsigned long currentTime = millis();
  
  if (currentTime - lastPrintTime >= elapsedTimeSlice) {
    long encoderDiff = leftEncoder.getEncoderCount() - lastEncoderPosition;
    Serial.print(currentTime - lastPrintTime);
    Serial.print(",");
    Serial.print(encoderDiff);
    Serial.print(",");
    Serial.println(pwmValues[currentPWMIndex]);
    lastPrintTime = currentTime;
    lastEncoderPosition = leftEncoder.getEncoderCount();
  }
}

  

void setupTimerInterrupt() {
  noInterrupts(); // Disable all interrupts

  TCCR2A = 0; // Set entire TCCR2A register to 0
  TCCR2B = 0; // Same for TCCR2B
  TCNT2 = 0;  // Initialize counter value to 0

  OCR2A = 97; // Set compare match register for 5ms increments

  TCCR2A |= (1 << WGM21); // Turn on CTC mode

  TCCR2B |= (1 << CS22); // Set CS22 bit for 128 prescaler

  TIMSK2 |= (1 << OCIE2A); // Enable timer compare interrupt

  interrupts(); // Enable all interrupts
}
