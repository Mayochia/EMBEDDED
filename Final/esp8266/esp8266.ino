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
  Serial.begin(19200);
  
  // Wait for serial connection to stabilize
  delay(1000);
  
  // Initialize wifi connection
  connectWiFi();
  
  // Initialize timestamps
  lastThingSpeakCheck = millis();
  lastThingSpeakUpdate = millis();
}

void loop() {
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