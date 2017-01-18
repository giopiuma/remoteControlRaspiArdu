void readLastData() 
{
  if (client.connect(host, httpPort)){
    String url = "/Arduino/leggiDataLast_t0.php";
    //                                   t1 or t2 or t3 or t4
    //Serial.print("Requesting URL: ");
    //Serial.println(url);
  
  // This will send the request to the server
    client.print(String("GET ") + url + " HTTP/1.1\r\n" +
                 "Host: " + host + "\r\n" + 
                 "Connection: close\r\n\r\n");
    unsigned long timeout = millis();
    while (client.available() == 0) {
      if (millis() - timeout > 5000) {
        Serial.println(">>> Client Timeout !");
        client.stop();
        break;
        }
    }
  
   // Read all the lines of the reply from server and print them to Serial
    while(client.available()){
      String line = client.readStringUntil('\r');
      // Serial.print(line);
      dataRead = line;
    }
    
    //Serial.println("");
    Serial.println(dataRead.substring(2,18));
    Serial.print("Temp C:");
    Serial.println(dataRead.substring(18,23));
  
    //Serial.println(dataRead);
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print(dataRead.substring(2,18));
    lcd.setCursor(0, 1);
    lcd.print("Temp C:");
    lcd.print(dataRead.substring(18,23));
    //return dataRead;
  }
  if (!client.connect(host, httpPort)) {
    Serial.println("connection failed");
    erroreConnessione();
    client.stop();
  }
}


float UpdateTemp()
{
  // Serial.println("Connessione...");
  if (client.connect(host, httpPort))
  {
    // Serial.println("Connesso");
    //acquisisco il valore digitale dal sensore DS18B20
    DS18B20.requestTemperatures(); 
    temp = DS18B20.getTempCByIndex(0);
    Serial.print("temp. sensore: ");
    Serial.println(temp);
    //Serial.println("");
    strURL = "GET /Arduino/write2Mysql_t0.php?tempC=";
    //                                 t1 or t2 or t3 or t4
    strURL += temp;
    strURL += " HTTP/1.0";

    //Serial.println(strURL);

    //invio la richiesta di registrazione dati al server 
    client.println(strURL);
    //client.println("Host: localhost");
    //client.println("Connection: close");
    client.println();
    // Serial.println("richiesta al server inviata");
  }
  else
  {
    erroreConnessione();
    client.stop();
  }

  
}

