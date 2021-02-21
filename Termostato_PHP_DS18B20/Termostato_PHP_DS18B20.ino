/*
 * scrittura e lettura dati sensore temperatura
 * su database mysql Raspberry
 * write2Mysql_t0= temperatura sensore 0
 * leggiDataLast_t0
 *
 * write2Mysql_t1= temperatura sensore 1
 * leggiDataLast_t1
 *
 * write2Mysql_t2= temperatura sensore 2
 * leggiDataLast_t2
 *
 * write2Mysql_t3= temperatura sensore 3
 * leggiDataLast_t3
 *
 * write2Mysql_t4= temperatura sensore 4
 * leggiDataLast_t4
 *
 */
#include <SPI.h>
#include <Ethernet.h>
#include <LiquidCrystal_I2C.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#define ONE_WIRE_BUS 2
OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature DS18B20(&oneWire);

byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
//indirizzo server web raspberry (locale)
IPAddress server(192, 168, 245, 253);

//indirizzo ip dell'Arduino
IPAddress ip(192, 168, 245, 249);
IPAddress dnServer(8, 8, 8, 8);
IPAddress subnet(255, 255, 255, 0);
IPAddress gateway(192, 168, 245, 254);

EthernetClient client;

// LiquidCrystal_I2C lcd(0x3F, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);  // Setto indirizzo LCD I2C
LiquidCrystal_I2C lcd (63, 2, 1, 0, 4, 5, 6, 7, 3 );  // Setto indirizzo LCD I2C

char inString[32]; // string for incoming serial data
int stringPos = 0; // string index counter
boolean startRead = false; // is reading?

byte SensoreNum = 2; //0=48 1=49 2=50 etc etc

int DS18B20_Pin = 2;
OneWire ds(DS18B20_Pin);

String strURL = "";
//String readFrom = "GET /Arduino/leggiDataLast_t0.php HTTP/1.0";


void setup()
{
Serial.begin(115200);
lcd.begin(16,2);
Ethernet.begin(mac, ip, dnServer, gateway, subnet);
lcdBegin ();
}

void loop()
{

  UpdateTemp();

  //invio la richiesta per avere la data al server
  String dataLast = connectAndRead(); //connect to the server and read the output
  Serial.println(dataLast); //print out the findings.

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(dataLast.substring(0,16));
  lcd.setCursor(0, 1);
  lcd.print("Temp C:");
  lcd.print(dataLast.substring(16));
  //esegui la richiesta ogni 20 secondi
  delay(19700);

}
