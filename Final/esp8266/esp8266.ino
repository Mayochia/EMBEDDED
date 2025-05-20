#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>

// WiFi credentials
const char *ssid = "mayang";
const char *pass = "mayang123";

WiFiClient wifiClient;
HTTPClient httpClient;

// ThingSpeak TalkBack settings
unsigned long myTalkBackID = 54798;
const char *myTalkBackKey = "BTWF6MEVVJD3MFCU";
String uartBuffer = "";

// State variables
String lockState = "B";       // Current LED state
int alert = 0;    // Current switch state
unsigned long lastThingSpeakCheck = 0;    // Timestamp for LED control check
unsigned long lastThingSpeakUpdate = 0;   // Timestamp for switch status update

void connectWiFi() {
  if (WiFi.status() != WL_CONNECTED) {
    Serial.print("Connecting to WiFi: ");
    Serial.println(ssid);

    WiFi.begin(ssid, pass);

    while (WiFi.status() != WL_CONNECTED) {
      Serial.print(".");
      delay(1000);
    }
    Serial.println("\nWiFi Connected.");
  }
}

void setup() {
  Serial.begin(9600);
  
  // Wait for serial connection to stabilize
  delay(1000);
  
  // Initialize wifi connection
  connectWiFi();
  
  // Initialize timestamps
  lastThingSpeakCheck = millis();
  lastThingSpeakUpdate = millis();
}

void loop() {
  int switchState = 0;
  int previousswitchState = 0;
  // Check if data available from PIC (Switch State)
  while (Serial.available()) {
    char c = Serial.read();
    uartBuffer += c;

    if (c == '\n') {
      uartBuffer.trim();
      
      // Process the received switch state
      if (uartBuffer == "1") {
        switchState = 1;
        Serial.println("Switch ON detected");
      } else if (uartBuffer == "0") {
        switchState = 0;
        Serial.println("Switch OFF detected");
      }
      
      // Update ThingSpeak if switch state changed
      if (switchState != previousswitchState) {
        addSwitchStatusToTalkBack(switchState);
        previousswitchState = switchState;
      }
      
      uartBuffer = "";  // Clear buffer
    }
  }

  // Check ThingSpeak every 15s for LED command
  if (millis() - lastThingSpeakCheck >= 1000) {
    checkThingSpeakLEDControl();
    lastThingSpeakCheck = millis();
  }
}

void checkThingSpeakLEDControl() {
    if (WiFi.status() == WL_CONNECTED) {
        WiFiClient client;
        HTTPClient http;
        
        String url = "http://api.thingspeak.com/talkbacks/" + String(myTalkBackID) + "/commands/execute";
        String postData = "api_key=" + String(myTalkBackKey);
        
        http.begin(client, url);
        http.addHeader("Content-Type", "application/x-www-form-urlencoded");
        int httpCode = http.POST(postData);
        
        if (httpCode == HTTP_CODE_OK) {
            String payload = http.getString();
            payload.trim();
            
            if (payload == "A" || payload == "B") {
                if (payload != lockState) {
                    lockState = payload;
                    Serial.print(lockState);  // Send to PIC
                    Serial.println();
                }
            }
        }
        
        http.end();
    }
}

void addSwitchStatusToTalkBack(int switchValue) {
  if (WiFi.status() == WL_CONNECTED) {
    WiFiClient client;
    HTTPClient http;

    // Add switch status as a TalkBack command
    String url = "http://api.thingspeak.com/talkbacks/" + String(myTalkBackID) + "/commands";
    String command = "SWITCH_" + String(switchValue);  // Creates "SWITCH_0" or "SWITCH_1"
    String postData = "api_key=" + String(myTalkBackKey) + "&command_string=" + command;

    http.begin(client, url);
    http.addHeader("Content-Type", "application/x-www-form-urlencoded");
    int httpCode = http.POST(postData);

    if (httpCode > 0) {
      if (httpCode == HTTP_CODE_OK) {
        String response = http.getString();
        Serial.println("Switch status added to TalkBack: " + command + " (ID: " + response + ")");
      } else {
        Serial.print("TalkBack switch update failed with HTTP code: ");
        Serial.println(httpCode);
      }
    } else {
      Serial.print("TalkBack switch update failed with error: ");
      Serial.println(http.errorToString(httpCode));
    }
   
    http.end();
  } else {
    Serial.println("WiFi not connected - cannot update switch status");
  }
}