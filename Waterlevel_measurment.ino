#include "ThingSpeak.h"

#include <IoTtweet.h>

#include <ESP8266wifi.h>

#include <SimpleWiFiClient.h>

#include <ArduinoJson.h>

//----------- Enter you Wi-Fi Details---------//
char ssid[] = "Jay"; //SSID
char pass[] = "khambholaj"; // Password
//-------------------------------------------//

// --------------- Tank details --------------//
const int total_height = 30;// Tank height in CM
const int hold_height = 25;// Water hold height in CM
//-------------------------------------------//

//----- minutes -----//
int minute = 1; // Time after which data must be updated.
//------------------//

//----------- Channel Details -------------//
unsigned long Channel_ID = 1489124; // Channel ID
const int Field_number = 1; // To which field to write data
const char * WriteAPIKey = "8ORUNOIZ0BSS6OO0"; // API Key
// ----------------------------------------//

const int trigger = 16;
const int echo = 5;
long Time;
int x;
int i;
int distanceCM;
int resultCM;
int tnk_lvl = 0;
int sensr_to_wtr = 0;
WiFiClient  client;


void setup()
{
  Serial.begin(115200);
  pinMode(trigger, OUTPUT);
  pinMode(echo, INPUT);
  WiFi.mode(WIFI_STA);
  ThingSpeak.begin(client);
  sensr_to_wtr = total_height - hold_height;
}
void loop()
{
  internet();
  for (i = 0; i < minute; i++)
  {
    Serial.println("System Standby....");
    Serial.print(i++);
    Serial.println(" Minutes elapsed.");
    delay(20000);
    delay(20000);
    delay(20000);
  }
  measure();
  Serial.print("Tank Level:");
  Serial.print(tnk_lvl);
  Serial.println("%");
  upload();
}
void upload()
{
  internet();
  x = ThingSpeak.writeField(Channel_ID, Field_number, tnk_lvl, WriteAPIKey);
  if (x == 200)Serial.println("Data Updated.");
  if (x != 200)
  {
    Serial.println("Data upload failed, retrying....");
    delay(15000);
    upload();
  }
}

void measure()
{
  delay(100);
  digitalWrite(trigger, LOW);
  delay(2);
  digitalWrite(trigger, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigger, LOW);
  Time = pulseIn(echo, HIGH, 30000);
  distanceCM = Time * 0.034;
  resultCM = distanceCM / 2;
  
  tnk_lvl = map(resultCM, sensr_to_wtr, total_height, 100, 0);
  tnk_lvl = tnk_lvl - 40;
  if (tnk_lvl > 100) tnk_lvl = 100;
  if (tnk_lvl < 0) tnk_lvl = 0;
}

void internet()
{
  if (WiFi.status() != WL_CONNECTED)
  {
    Serial.print("Attempting to connect to SSID: ");
    Serial.println(ssid);
    while (WiFi.status() != WL_CONNECTED)
    {
      WiFi.begin(ssid, pass);
      Serial.print(".");
      delay(5000);
    }
    Serial.println("\nConnected.");
  }
}
