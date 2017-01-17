void lcdBegin (){
  for(int i = 0; i< 3; i++)
  {
    lcd.backlight();
    delay(250);
    lcd.noBacklight();
    delay(250);
  }
  lcd.backlight();
  lcd.begin(16, 2);
  lcd.print(F("Initializing"));
  delay(3000);
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(F("Done."));
  lcd.setCursor(0, 1);
  lcd.print(WiFi.localIP());
  delay(1000);
  lcd.setCursor(0,0); 
  lcd.print("   AlbaTechnoLab");
  delay(1000);
  lcd.setCursor(0,1);
  lcd.print("                ");
  delay(3000);
  lcd.setCursor(0,0); 
  lcd.print("                ");
  delay(100);
  lcd.setCursor(0,1);
  lcd.print("Running on      ");
}


void erroreConnessione (){
  Serial.println("Errore Connessione");
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(F("Errore di"));
  lcd.setCursor(0, 1);
  lcd.print("connessione");
  delay(1000);
}

