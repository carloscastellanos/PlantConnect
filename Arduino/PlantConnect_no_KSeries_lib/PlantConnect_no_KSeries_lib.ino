/*************************************************************************************************************
 * PlantConnect
 * 
 * http://ccastellanos.com/projects/plantconnect
 * 
 * This sketch does the following:
 * 
 * Retrieve and post data from SenseAir K30 FR CO2 sensors
 * Retrieve and post voltages from plant-mfcs
 * Trigger relays to turn an array of lights on/off
 * 
 * This sketch is meant to run on an Arduino Mega 2560
 * 
 * created March 7, 2019
 * by Carlos Castellanos
*************************************************************************************************************/

#include <SoftwareSerial.h>
#include <RunningMedian.h>


/*******************
SERIAL COMMUNICATION
********************/
// baud rates for serial communication
const uint16_t BAUD_RATE = 19200;      // main baud rate for sending data out to computer (Max/MSP)
const uint16_t CO2_BAUD_RATE = 9600;   // for communication between Arduino and the K30 CO2 sensors
//----- Protocol for serial communication between Arduino and computer (Max/MSP) -----//
// receive: 'r'
// send: [breath median] [breath raw] [MFC co2 1...16] [MFC group A] [MFC group B] [MFC group C] [MFC group D]
// 22 values total

/**********
CO2 SENSORS
***********/
// SoftwareSerial objects for the CO2 sensors
/* Note: The first 3 CO2 sensors will be using the 3 extra hardware serial ports
 * on the Arduino Mega (Serial1, Serial2, Serial3). Serial1 is for the breath interface
 * while Serial2 and Serial3 (along with the software serial ports will be for
 * measuring photosynthesis activity in the P-MFCs
 * 
 * The K30's communication protcol is based on the Modbus protocol:
 * https://en.wikipedia.org/wiki/Modbus
 */
SoftwareSerial K30Sensor4(10, 2);      // software serial for CO2 sensor 4: RX=digital pin 10, TX=digital pin 2
SoftwareSerial K30Sensor5(11, 3);      // software serial for CO2 sensor 5: RX=digital pin 11, TX=digital pin 3
SoftwareSerial K30Sensor6(12, 4);      // software serial for CO2 sensor 6: RX=digital pin 12, TX=digital pin 4
SoftwareSerial K30Sensor7(13, 5);      // software serial for CO2 sensor 7: RX=digital pin 13, TX=digital pin 5
SoftwareSerial K30Sensor8(50, 6);      // software serial for CO2 sensor 8: RX=digital pin 50, TX=digital pin 6
SoftwareSerial K30Sensor9(51, 38);     // software serial for CO2 sensor 9: RX=digital pin 51, TX=digital pin 38
SoftwareSerial K30Sensor10(52, 39);    // software serial for CO2 sensor 10: RX=digital pin 52, TX=digital pin 39
SoftwareSerial K30Sensor11(53, 40);    // software serial for CO2 sensor 11: RX=digital pin 53, TX=digital pin 40
SoftwareSerial K30Sensor12(A8, 41);    // software serial for CO2 sensor 12: RX=digital pin A8, TX=digital pin 41
SoftwareSerial K30Sensor13(A9, 42);    // software serial for CO2 sensor 13: RX=digital pin A9, TX=digital pin 42
SoftwareSerial K30Sensor14(A10, 43);   // software serial for CO2 sensor 14: RX=digital pin A10, TX=digital pin 43
SoftwareSerial K30Sensor15(A11, 44);   // software serial for CO2 sensor 15: RX=digital pin A11, TX=digital pin 44
SoftwareSerial K30Sensor16(A12, 45);   // software serial for CO2 sensor 16: RX=digital pin A12, TX=digital pin 45
SoftwareSerial K30Sensor17(A13, 46);   // software serial for CO2 sensor 17: RX=digital pin A13, TX=digital pin 46

// command packet to read CO2
const byte COMMAND[] = {0xFE, 0x44, 0x00, 0x08, 0x02, 0x9F, 0x25};
// array to store the response
byte response[] = {0,0,0,0,0,0,0};
// multiplier for value. default is 1. set to 3 for K-30 3% and 10 for K-33 ICB
const uint8_t valMultiplier = 1;
// timing variables  and constants for checking serial
const long INTERVAL = 500;
const long ERROR_CHECK_INTERVAL = 10;
unsigned long prevMillis = 0;
// array to hold all CO2 sensor values (in PPM)
uint32_t co2Vals[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
// take a running median or average of the MFC values using 9 most recent readings
RunningMedian breathCO2Samples = RunningMedian(9);
//byte breathCO2Count = 0;
//bool startup = false; // startup flag - after initial breathCO2 readings, this becomes true
// difference between previous and current breath CO2 levels needed to turn on the relays/lights
const uint8_t triggerDiff = 20;

/*****
RELAYS
******/
// constants for the relays/light panels
// these names reflect the fact that we are using 2 8-channel relay boards
//--- relay board 1 ---//
const uint8_t Relay_1_1 = 22;
const uint8_t Relay_1_2 = 23;
const uint8_t Relay_1_3 = 24;
const uint8_t Relay_1_4 = 25;
const uint8_t Relay_1_5 = 26;
const uint8_t Relay_1_6 = 27;
const uint8_t Relay_1_7 = 28;
const uint8_t Relay_1_8 = 29;
//--- relay board 2 ---//
const uint8_t Relay_2_1 = 30;
const uint8_t Relay_2_2 = 31;
const uint8_t Relay_2_3 = 32;
const uint8_t Relay_2_4 = 33;
const uint8_t Relay_2_5 = 34;
const uint8_t Relay_2_6 = 35;
const uint8_t Relay_2_7 = 36;
const uint8_t Relay_2_8 = 37;
// the relay board's input controls are Active LOW, meaning that setting a pin LOW (0) turns them ON.
// To assure that no relays activate at Reset or Power-up we want to set the pins to HIGH (1)
const bool RELAY_ON = 0;
const bool RELAY_OFF = 1;
// flag to determine whether to trigger the relays/lights
bool triggerLights = false;
bool prevTriggerState = false; // state of the trigger last time we checked

/***
MFCS
****/
// constants for the MFCs/analog inputs
/* Note: The MFCs are set up so that groups of 4 MFCs are wired in series and thus efectively function as
 * one MFC gong into one analog input. There are 4 groups of 4 MFCs wired in series for a otal of
 * 4 analog inputs and 16 MFCs */
const uint8_t MFCA = 0;
const uint8_t MFCB = 1;
const uint8_t MFCC = 2;
const uint8_t MFCD = 3;
// array to hold all MFC values (in millivolts)
uint16_t mfcVals[] = {0,0,0,0};
// peak MFC levels (in millivolts)
uint16_t mfcValsPeak[] = {0,0,0,0};
// trough MFC levels (in millivolts)
uint16_t mfcValsTrough[] = {0,0,0,0};
// 2-dimensional array to hold thresholds (default values: 100,300,500,700) (in millivolts)
uint16_t mfcThresholds[4][4] = { {100,300,500,700}, {100,300,500,700}, {100,300,500,700}, {100,300,500,700} };
// absolute minimum and maximum thresholds (in millivolts)
const uint16_t MFC_MIN = 10;
const uint16_t MFC_MAX = 5000;
// for MFC remappings and adaptive/dynamic thresholds
bool cnt = false;

void setup() {
  //----- initialize pins so relays are inactive at power-up/reset ----- //
  digitalWrite(Relay_1_1, RELAY_OFF);
  digitalWrite(Relay_1_2, RELAY_OFF);
  digitalWrite(Relay_1_3, RELAY_OFF);
  digitalWrite(Relay_1_4, RELAY_OFF);
  digitalWrite(Relay_1_5, RELAY_OFF);
  digitalWrite(Relay_1_6, RELAY_OFF);
  digitalWrite(Relay_1_7, RELAY_OFF);
  digitalWrite(Relay_1_8, RELAY_OFF);
  digitalWrite(Relay_2_1, RELAY_OFF);
  digitalWrite(Relay_2_2, RELAY_OFF);
  digitalWrite(Relay_2_3, RELAY_OFF);
  digitalWrite(Relay_2_4, RELAY_OFF);
  digitalWrite(Relay_2_5, RELAY_OFF);
  digitalWrite(Relay_2_6, RELAY_OFF);
  digitalWrite(Relay_2_7, RELAY_OFF);
  digitalWrite(Relay_2_8, RELAY_OFF);

  //----- now set pins as outputs ----- //
  pinMode(Relay_1_1, OUTPUT);   
  pinMode(Relay_1_2, OUTPUT);  
  pinMode(Relay_1_3, OUTPUT);  
  pinMode(Relay_1_4, OUTPUT);
  pinMode(Relay_1_5, OUTPUT);  
  pinMode(Relay_1_6, OUTPUT);  
  pinMode(Relay_1_7, OUTPUT);  
  pinMode(Relay_1_8, OUTPUT);
  pinMode(Relay_2_1, OUTPUT);   
  pinMode(Relay_2_2, OUTPUT);  
  pinMode(Relay_2_3, OUTPUT);  
  pinMode(Relay_2_4, OUTPUT);
  pinMode(Relay_2_5, OUTPUT);  
  pinMode(Relay_2_6, OUTPUT);  
  pinMode(Relay_2_7, OUTPUT);  
  pinMode(Relay_2_8, OUTPUT);

  //----- check that all relays are inactive at power-up/reset -----//
  delay(3000);

  //----- initialize the hardware/UART serial ports -----//
  // main serial port
  Serial.begin(BAUD_RATE);
  // human breath          
  Serial1.begin(CO2_BAUD_RATE);
  // P-MFCs
  Serial2.begin(CO2_BAUD_RATE);
  Serial3.begin(CO2_BAUD_RATE);
}

void loop() {
  //----- check to see if its time to ask the CO2 sensors for a reading -----//
  unsigned long currMillis = millis();
  
  if(currMillis - prevMillis >= INTERVAL) { // read from sensor every INTERVAL (e.g. 500ms)
    prevMillis = currMillis; // save the last time you read from the sensors
    
    //----- read from hardware serial/UART ports -----//
    // read from Serial1 (human breath CO2) and store the value
    sendRequest(1);
    co2Vals[0] = getValue(response);
    // add the current breathCO2 reading to the running median
    breathCO2Samples.add(co2Vals[0]);
    
    // read from Serial2 and store the value:
    sendRequest(2);
    co2Vals[1] = getValue(response);
    
    // read from Serial3 and store the value:
    sendRequest(3);
    co2Vals[2] = getValue(response);
    
    //----- read from software serial ports -----//
    // get co2 value from K30Sensor4 to K30Sensor17 in ppm (parts per million) and store it
    sendRequest(4);                                        // K30Sensor4
    co2Vals[3] = getValue(response);
    
    sendRequest(5);                                        // K30Sensor5
    co2Vals[4] = getValue(response);
    
    sendRequest(6);                                        // K30Sensor6
    co2Vals[5] = getValue(response);
    
    sendRequest(7);                                        // K30Sensor7
    co2Vals[6] = getValue(response);
    
    sendRequest(8);                                        // K30Sensor8
    co2Vals[7] = getValue(response);
    
    sendRequest(9);                                        // K30Sensor9
    co2Vals[8] = getValue(response);
    
    sendRequest(10);                                       // K30Sensor10
    co2Vals[9] = getValue(response);

    sendRequest(11);                                       // K30Sensor11
    co2Vals[10] = getValue(response);
    
    sendRequest(12);                                       // K30Sensor12
    co2Vals[11] = getValue(response);
    
    sendRequest(13);                                       // K30Sensor13
    co2Vals[12] = getValue(response);
    
    sendRequest(14);                                       // K30Sensor14
    co2Vals[13] = getValue(response);
    
    sendRequest(15);                                       // K30Sensor15
    co2Vals[14] = getValue(response);
    
    sendRequest(16);                                       // K30Sensor16
    co2Vals[15] = getValue(response);
    
    sendRequest(17);                                       // K30Sensor17
    co2Vals[16] = getValue(response);
  } // end if

  // get the running median of the breathCO2 readings
  float breathCO2Median = breathCO2Samples.getMedian();

  //----- send the CO2 values -----//
  if(Serial.available() > 0) {
    if(Serial.read() == 'r') {
      sendValue(breathCO2Median);
      // send the rest of the co2 values
      for(int i=0; i<(sizeof(co2Vals)/sizeof(co2Vals[0])); i++) {
        sendValue(co2Vals[i]);
      }
      
      //----- read from analog in ports to get MFC voltages, convert to millivolts and send the values -----//
      mfcVals[0] = round(convertToMilliVolts(analogRead(MFCA)));
      mfcVals[1] = round(convertToMilliVolts(analogRead(MFCB)));
      mfcVals[2] = round(convertToMilliVolts(analogRead(MFCC)));
      mfcVals[3] = round(convertToMilliVolts(analogRead(MFCD)));
      sendValue(mfcVals[0]);
      sendValue(mfcVals[1]);
      sendValue(mfcVals[2]);
      sendValue(mfcVals[3], 1); // end of data
    }
  } // end send Serial

  //----- Generate a set of adaptive/dynamic thresholds for controlling the relays/lights -----//
  adaptiveThresholds();

  //----- triggering the relays/lights -----//
  // if the current breath co2 level is greater that the median by a certian amount (e.g. 20)
  // then trigger the relays/lights on
  if(co2Vals[0] - breathCO2Median >= triggerDiff) {
    triggerLights = true;
    turnLightsOn();
  } else {
    triggerLights = false;
  }
//  // if it's changed and it's true, turn on the relays/lights
//  if(triggerLights != prevTriggerState) {
//    if(triggerLights) {
//      // turn on the relays/lights
//      turnLightsOn();
//    } else {
//      // turn off all the relays/lights
//      turnLightsOff();
//    }
//  }
  // if it's changed and it's false, turn off the relays/lights
  if(triggerLights != prevTriggerState) {
    if(!triggerLights) {
      // turn on the relays/lights
      turnLightsOff();
    }
  }
  // save trigger state for next comparison
  prevTriggerState = triggerLights;

  //----- add a small delay to prevent crashing/overloading of the serial buffer -----//
  delay(5);
} // end loop

void sendRequest(uint8_t whichPort) {
  unsigned long previousMillis = 0;
  unsigned long currentMillis = millis();

  switch (whichPort) {
    
    case 1: { // Serial1 (breath co2)
      while(!Serial1.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          Serial1.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(Serial1.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(Serial1.available()) { // flush whatever we have
            Serial1.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = Serial1.read();
      }
      break;
    } // end case
    case 2: { // Serial2
      while(!Serial2.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          Serial2.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(Serial2.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(Serial2.available()) { // flush whatever we have
            Serial2.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = Serial2.read();
      }
      break;
    } // end case
    case 3: { // Serial3
      while(!Serial3.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          Serial3.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(Serial3.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(Serial3.available()) { // flush whatever we have
            Serial3.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = Serial3.read();
      }
      break;
    } // end case

    //----- read from software serial ports -----//
    // by default, when using software serial, the last intialized port is listening,
    // so we need to explicitly select the port we want to listen to
    case 4: { // K30Sensor4 (SoftwareSerial)
      K30Sensor4.listen();
      while(!K30Sensor4.isListening()) {;}
      while(!K30Sensor4.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor4.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor4.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor4.available()) { // flush whatever we have
            K30Sensor4.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor4.read();
      }
      break;
    } // end case
    case 5: { // K30Sensor5 (SoftwareSerial)
      K30Sensor5.listen();
      while(!K30Sensor5.isListening()) {;}
      while(!K30Sensor5.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor5.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor5.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor5.available()) { // flush whatever we have
            K30Sensor5.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor5.read();
      }
      break;
    } // end case
    case 6: { // K30Sensor6 (SoftwareSerial)
      K30Sensor6.listen();
      while(!K30Sensor6.isListening()) {;}
      while(!K30Sensor6.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor6.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor6.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor6.available()) { // flush whatever we have
            K30Sensor6.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor6.read();
      }
      break;
    } // end case
    case 7: { // K30Sensor7 (SoftwareSerial)
      K30Sensor7.listen();
      while(!K30Sensor7.isListening()) {;}
      while(!K30Sensor7.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor7.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor7.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor7.available()) { // flush whatever we have
            K30Sensor7.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor7.read();
      }
      break;
    } // end case
    case 8: { // K30Sensor8 (SoftwareSerial)
      K30Sensor8.listen();
      while(!K30Sensor8.isListening()) {;}
      while(!K30Sensor8.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor8.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor8.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor8.available()) { // flush whatever we have
            K30Sensor8.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor8.read();
      }
      break;
    } // end case
    case 9: { // K30Sensor9 (SoftwareSerial)
      K30Sensor9.listen();
      while(!K30Sensor9.isListening()) {;}
      while(!K30Sensor9.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor9.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor9.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor9.available()) { // flush whatever we have
            K30Sensor9.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor9.read();
      }
      break;
    } // end case
    case 10: { // K30Sensor10 (SoftwareSerial)
      K30Sensor10.listen();
      while(!K30Sensor10.isListening()) {;}
      while(!K30Sensor10.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor10.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor10.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor10.available()) { // flush whatever we have
            K30Sensor10.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor10.read();
      }
      break;
    } // end case
    case 11: { // K30Sensor11 (SoftwareSerial)
      K30Sensor11.listen();
      while(!K30Sensor11.isListening()) {;}
      while(!K30Sensor11.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor11.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor11.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor11.available()) { // flush whatever we have
            K30Sensor11.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor11.read();
      }
      break;
    } // end case
    case 12: { // K30Sensor12 (SoftwareSerial)
      K30Sensor12.listen();
      while(!K30Sensor12.isListening()) {;}
      while(!K30Sensor12.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor12.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor12.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor12.available()) { // flush whatever we have
            K30Sensor12.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor12.read();
      }
      break;
    } // end case
    case 13: { // K30Sensor13 (SoftwareSerial)
      K30Sensor13.listen();
      while(!K30Sensor13.isListening()) {;}
      while(!K30Sensor13.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor13.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor13.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor13.available()) { // flush whatever we have
            K30Sensor13.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor13.read();
      }
      break;
    } // end case
    case 14: { // K30Sensor14 (SoftwareSerial)
      K30Sensor14.listen();
      while(!K30Sensor14.isListening()) {;}
      while(!K30Sensor14.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor14.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor7.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor7.available()) { // flush whatever we have
            K30Sensor7.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor7.read();
      }
      break;
    } // end case
    case 15: { // K30Sensor15 (SoftwareSerial)
      K30Sensor15.listen();
      while(!K30Sensor15.isListening()) {;}
      while(!K30Sensor15.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor15.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor15.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor15.available()) { // flush whatever we have
            K30Sensor15.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor15.read();
      }
      break;
    } // end case
    case 16: { // K30Sensor16 (SoftwareSerial)
      K30Sensor16.listen();
      while(!K30Sensor16.isListening()) {;}
      while(!K30Sensor16.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor16.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor16.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor16.available()) { // flush whatever we have
            K30Sensor16.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor16.read();
      }
      break;
    } // end case
    case 17: { // K30Sensor17 (SoftwareSerial)
      K30Sensor17.listen();
      while(!K30Sensor17.isListening()) {;}
      while(!K30Sensor17.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          K30Sensor17.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(K30Sensor17.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(K30Sensor17.available()) { // flush whatever we have
            K30Sensor17.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = K30Sensor17.read();
      }
      break;
    } // end case
    default: { // call Serial1 if whichPort is < 1 or > 17
      while(!Serial1.available()) { // keep sending request until we start to get a response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          Serial1.write(COMMAND, 7);
        }
      }
      
      int timeout = 0; // set a timeoute counter
      previousMillis = 0;
      while(Serial1.available() < 7 ) { // Wait to get a 7 byte response
        currentMillis = millis();
        if(currentMillis - previousMillis >= ERROR_CHECK_INTERVAL) {
          previousMillis = currentMillis;
          timeout++;
        }
        if(timeout > 50) { // if it takes too long there was probably an error
          while(Serial1.available()) { // flush whatever we have
            Serial1.read();
            break;                       // exit and try again
          }
        }
      }
      
      for(int i=0; i<7; i++) {
        response[i] = Serial1.read();
      }
      break;
    } // end default
      
  } // end switch
} // end sendRequest

uint32_t getValue(byte packet[]) {
  int high = packet[3]; // high byte for value is 4th byte in packet in the packet
  int low = packet[4];  // low byte for value is 5th byte in the packet
  uint32_t val = high*256 + low; // combine high byte and low byte with this formula to get value
  return val * valMultiplier;
}

void adaptiveThresholds() {
  //===== Generate a set of adaptive/dynamic thresholds for the relays/lights =====//
  
  //----- Check the thresholds and turn on/off relays/lights -----//
  // find the peak and trough values from the MFCs and keep them within bounds (MFC_MIN & MFC_MAX)
  // the difference between the peak and trough will influence the distance between each threshold (and thus the overall range)
        
  // --- Peak & Trough for all MFC groups ---//
  for(uint8_t i=0; i<(sizeof(mfcVals)/sizeof(mfcVals[0])); i++) {
    if(!cnt) {
      mfcValsTrough[i] = mfcVals[i];  // trough
      mfcValsPeak[i] = mfcVals[i];    // peak
    } else if(mfcVals[i] < mfcValsTrough[i]) {
      mfcValsTrough[i] = mfcVals[i];  //trough
    } else if(mfcVals[i] > mfcValsPeak[i]) {
      mfcValsPeak[i] = mfcVals[i];    //peak
    }
    if(mfcValsPeak[i] > MFC_MAX) {
      mfcValsPeak[i] = MFC_MAX; // keep it bounded
    }
    if(mfcValsTrough[i] < MFC_MIN) {
      mfcValsTrough[i] = MFC_MIN; // keep it bounded
    }
    if(mfcValsTrough[i] >= mfcValsPeak[i]) {
      mfcValsPeak[i] = mfcValsTrough[i] + 1;
    }
    // This section remaps the values and determines new thresholds that will be used for triggering the lights
    // first do a logarithmic remaping of the min/max range of the MFC levels
    float range = max(mfcValsPeak[i] - mfcValsTrough[i], 1.05);   // make sure value is > 1 (best to be at least 1.05)
    float newRange = (log(range) / log(MFC_MAX-MFC_MIN)) * 1000;
    // now use that to calculate a new range for the thresholds 
    float mean = (mfcValsPeak[i] + mfcValsTrough[i]) / 2;         // mean of mfcValsTrough[0] & mfcValsPeak[0]
    uint16_t low = round(mean - (newRange / 2));                  // new low
    uint16_t high = round(mean + (newRange / 2));                 // new high
    // now determine the new thresholds
    float incr = newRange / 3;
    mfcThresholds[i][0] = low;
    mfcThresholds[i][1] = round(low + incr);
    mfcThresholds[i][2] = round(mfcThresholds[i][1] + incr);
    if(high <= mfcThresholds[i][2]) { high = mfcThresholds[i][2] + 1; } // make sure high stays high!
    mfcThresholds[i][3] = high;
  }
  
  cnt = true;
}

void turnLightsOn() {
  // turn on the relays/lights - which lights depends on threshold values
  
  //-- MFCA group --//
  if(mfcVals[0] > mfcThresholds[0][0]) {
    digitalWrite(Relay_1_1, RELAY_ON);
  } else {
    digitalWrite(Relay_1_1, RELAY_OFF);
  }
  if(mfcVals[0] > mfcThresholds[0][1]) {
    digitalWrite(Relay_1_2, RELAY_ON);
  } else {
    digitalWrite(Relay_1_2, RELAY_OFF);
  }
  if(mfcVals[0] > mfcThresholds[0][2]) {
    digitalWrite(Relay_1_3, RELAY_ON);
  } else {
    digitalWrite(Relay_1_3, RELAY_OFF);
  }
  if(mfcVals[0] > mfcThresholds[0][3]) {
    digitalWrite(Relay_1_4, RELAY_ON);
  } else {
    digitalWrite(Relay_1_4, RELAY_OFF);
  }

   //-- MFCB group --//
  if(mfcVals[1] > mfcThresholds[1][0]) {
    digitalWrite(Relay_1_5, RELAY_ON);
  } else {
    digitalWrite(Relay_1_5, RELAY_OFF);
  }
  if(mfcVals[1] > mfcThresholds[1][1]) {
    digitalWrite(Relay_1_6, RELAY_ON);
  } else {
    digitalWrite(Relay_1_6, RELAY_OFF);
  }
  if(mfcVals[1] > mfcThresholds[1][2]) {
    digitalWrite(Relay_1_7, RELAY_ON);
  } else {
    digitalWrite(Relay_1_7, RELAY_OFF);
  }
  if(mfcVals[1] > mfcThresholds[1][3]) {
    digitalWrite(Relay_1_8, RELAY_ON);
  } else {
    digitalWrite(Relay_1_8, RELAY_OFF);
  }

   //-- MFCC group --//
  if(mfcVals[2] > mfcThresholds[2][0]) {
    digitalWrite(Relay_2_1, RELAY_ON);
  } else {
    digitalWrite(Relay_2_1, RELAY_OFF);
  }
  if(mfcVals[2] > mfcThresholds[2][1]) {
    digitalWrite(Relay_2_2, RELAY_ON);
  } else {
    digitalWrite(Relay_2_2, RELAY_OFF);
  }
  if(mfcVals[2] > mfcThresholds[2][2]) {
    digitalWrite(Relay_2_3, RELAY_ON);
  } else {
    digitalWrite(Relay_2_3, RELAY_OFF);
  }
  if(mfcVals[2] > mfcThresholds[2][3]) {
    digitalWrite(Relay_2_4, RELAY_ON);
  } else {
    digitalWrite(Relay_2_4, RELAY_OFF);
  }

   //-- MFCD group --//
  if(mfcVals[3] > mfcThresholds[3][0]) {
    digitalWrite(Relay_2_5, RELAY_ON);
  } else {
    digitalWrite(Relay_2_5, RELAY_OFF);
  }
  if(mfcVals[3] > mfcThresholds[3][1]) {
    digitalWrite(Relay_2_6, RELAY_ON);
  } else {
    digitalWrite(Relay_2_6, RELAY_OFF);
  }
  if(mfcVals[3] > mfcThresholds[3][2]) {
    digitalWrite(Relay_2_7, RELAY_ON);
  } else {
    digitalWrite(Relay_2_7, RELAY_OFF);
  }
  if(mfcVals[3] > mfcThresholds[3][3]) {
    digitalWrite(Relay_2_8, RELAY_ON);
  } else {
    digitalWrite(Relay_2_8, RELAY_OFF);
  }
   
}

void turnLightsOff() {
  // turn off all the relays/lights
  digitalWrite(Relay_1_1, RELAY_OFF);
  digitalWrite(Relay_1_2, RELAY_OFF);
  digitalWrite(Relay_1_3, RELAY_OFF);
  digitalWrite(Relay_1_4, RELAY_OFF);
  digitalWrite(Relay_1_5, RELAY_OFF);
  digitalWrite(Relay_1_6, RELAY_OFF);
  digitalWrite(Relay_1_7, RELAY_OFF);
  digitalWrite(Relay_1_8, RELAY_OFF);
  digitalWrite(Relay_2_1, RELAY_OFF);
  digitalWrite(Relay_2_2, RELAY_OFF);
  digitalWrite(Relay_2_3, RELAY_OFF);
  digitalWrite(Relay_2_4, RELAY_OFF);
  digitalWrite(Relay_2_5, RELAY_OFF);
  digitalWrite(Relay_2_6, RELAY_OFF);
  digitalWrite(Relay_2_7, RELAY_OFF);
  digitalWrite(Relay_2_8, RELAY_OFF);
}

float convertToMilliVolts(float x) {
  return x * (5000.0 / 1023.0);
  
}

void sendValue(uint32_t x) {
  sendValue(x, false);
}

void sendValue(uint32_t x, bool cr) {
  // send the value followed by a "space".
  Serial.print(x);
  Serial.write(32);
  if(cr) {
    Serial.println(); // send a carriage return to mark end of data
  }
}
