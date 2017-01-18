/*
 * lettura e scrittura dati sensore temperatura
 * su database mysql Raspberry
 * write2Mysql_t0= temperatura sensore zona 0
 * leggiDataLast_t0
 *
 * write2Mysql_t1= temperatura sensore zona 1
 * leggiDataLast_t1
 *
 * write2Mysql_t2= temperatura sensore zona 2
 * leggiDataLast_t2
 *
 * write2Mysql_t3= temperatura sensore zona 3
 * leggiDataLast_t3
 *
 * write2Mysql_t4= temperatura sensore zona 4
 * leggiDataLast_t4
 *
 */
#include <ESP8266WiFi.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x3f,16,2);

#define ONE_WIRE_BUS 2
//#define myPeriodic 15

const char* ssid     = "XXXXXXXX"; //ssid della vostra WiFi
const char* password = "XXXXXXXX"; //password ssid
const char* host = "XXX.XXX.XXX.XXX"; //Indirizzo server http raspberry
const int httpPort = 80;

OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature DS18B20(&oneWire);
float prevTemp = 0;
float temp ;

const char* MY_SSID = "XXXXXXXX"; //ssid della vostra WiFi
const char* MY_PWD = "XXXXXXXX"; //password ssid
int sent = 0;
WiFiClient client;


String url = "/Arduino/leggiDataLast_t0.php";
String readFrom = "GET /Arduino/leggiDataLast_t0.php HTTP/1.0";
String strURL = "GET /Arduino/write2Mysql_t0.php?tempC=";
/*
write2Mysql_t0= temperatura sensore zona 0
write2Mysql_t1= temperatura sensore zona 1
write2Mysql_t2= temperatura sensore zona 2
write2Mysql_t3= temperatura sensore zona 3
write2Mysql_t4= temperatura sensore zona 4 o esterna
*/

unsigned long timeout = millis();
String dataRead = "";
char inString[32]; // string for incoming serial data
int stringPos = 0; // string index counter
boolean startRead = false; // is reading?


void setup() {
  Serial.begin(115200);
  delay(10);
  lcd.init();

  // We start by connecting to a WiFi network
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  lcdBegin ();

}

// int value = 0;

void loop() {
  delay(19250);
  // ++value;
  String dataRead;
  Serial.print("connecting to ");
  Serial.println(host);
  // write temp data on db
  UpdateTemp();

  // read last data un db
  //Serial.println(readLastData());

  readLastData();
  Serial.println("");

}

