
void UpdateTemp()
{
  // Serial.println("Connessione...");
  if (client.connect(server, 80))
  {
    // Serial.println("Connesso");
    //acquisisco il valore digitale dal sensore DS18B20
   
    //float tempC = getTemp()-3;
    DS18B20.requestTemperatures(); 
    float tempC = DS18B20.getTempCByIndex(0);
    Serial.println(tempC);
    strURL = "GET /Arduino/write2Mysql_t0.php?tempC=";
    strURL += tempC;
    strURL += " HTTP/1.1";

    Serial.println(strURL);

    //invio la richiesta di registrazione dati al server 
    client.println(strURL);
    client.println("Host: localhost");
    client.println("Connection: close");
    client.println();
    // Serial.println("richiesta al server inviata");

    //chiudo la connessione
    client.stop();
  }
  else
  {
    erroreConnessione();
  }
}



String connectAndRead(){
  //connect to the server

  // Serial.println("connecting...");
  String readFrom = "GET /Arduino/leggiDataLast_t0.php HTTP/1.0";
  //port 80 is typical of a www page
  if (client.connect(server, 80)) {
    // Serial.println("connected");
    client.println(readFrom);
    client.println();

    //Serial.println(readPage());
    return readPage(); //go and read the output

  }else{
    erroreConnessione();
  }

}



String readPage(){
  //read the page, and capture & return everything between '<' and '>'

  stringPos = 0;
  memset( &inString, 0, 32 ); //clear inString memory

  while(true){

    if (client.available()) {
      char c = client.read();

      if (c == '<' ) { //'<' is our begining character
        startRead = true; //Ready to start reading the part 
      }else if(startRead){

        if(c != '>'){ //'>' is our ending character
          inString[stringPos] = c;
          stringPos ++;
        }else{
          //got what we need here! We can disconnect now
          startRead = false;
          client.stop();
          client.flush();

          return inString;

        }

      }
    }

  }

}





