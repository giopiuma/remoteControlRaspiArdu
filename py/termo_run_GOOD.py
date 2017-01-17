#!/usr/bin/python
#
#
# Tabelle DB mysql:
#    'NoICE'    Temperatura di funzionamento minimo No Ice (identico per tutti i termostati)
#
#    'cond_t0'      3 Livelli Temperatura minima per accensione Termostato 1 \ 
#    'cond_t1'      3 Livelli Temperatura minima per accensione Termostato 2  |  NUM (1-3) temperature disponibili
#    'cond_t2'      3 Livelli Temperatura minima per accensione Termostato 3   > TERM_Tx (valori temp Impostata) 
#    'cond_t3'      3 Livelli Temperatura minima per accensione Termostato 4  |
#    'cond_t4'      3 Livelli Temperatura minima per accensione Termostato 5 /
#
#    't0_sensor'    Registrazione temperarture termostato 1
#    't1_sensor'    Registrazione temperarture termostato 2
#    't2_sensor'    Registrazione temperarture termostato 3
#    't3_sensor'    Registrazione temperarture termostato 4
#    't4_sensor'    Registrazione temperarture termostato 5
#
#    'weekday_t0'   Temporizzazione accensione settimanale termostato 1
#    'weekday_t1'   Temporizzazione accensione settimanale termostato 2
#    'weekday_t2'   Temporizzazione accensione settimanale termostato 3
#    'weekday_t3'   Temporizzazione accensione settimanale termostato 4
#    'weekday_t4'   Temporizzazione accensione settimanale termostato 5
#
#
#
#

import os
os.system('/root/scripts/inizializza_gpio.sh'); 
import RPi.GPIO as GPIO
from time import sleep
import time
import MySQLdb
import smtplib
from smtplib import SMTP

# GPIO on/off Function definition
def gpioOnOff( gpioNum, Stat ):
        GPIO.output(gpioNum, Stat)
        return
#end gpioOnOff

def sendMail (msg, status):
    # connection to gmail smtp sender
    recipients = ['destination mail 1', 'destination mail 2', 'destination mail n']
    fromaddr = 'your mail address '
    username = 'your mail user  '
    password = 'xxxxxxxxxxxxxxxx'
    server = smtplib.SMTP('smtp.gmail.com:587')
    server.ehlo()
    server.starttls()
    server.login(username,password)
    server.sendmail(fromaddr, recipients, 'Subject: %s\r\n%s' % (status, msg))
    server.quit()
#end sendMail


def startGpio():
# Inizializzazione relay e caldaia
#
# uso BCM GPIO 00..nn 
   GPIO.setmode(GPIO.BCM)
   GPIO.setwarnings(False)
#  Set stato high per "accensione relay"
#  GPIO == > piedino N
#  17        11
#  18        12
#  27        13
#  22        15
#  23        16
   GPIO.setup(17, GPIO.OUT)
   GPIO.setup(18, GPIO.OUT)
   GPIO.setup(27, GPIO.OUT)
   GPIO.setup(22, GPIO.OUT)
   GPIO.setup(23, GPIO.OUT)
# Set relay pins as output termostati temp
# stato high per temperatura da termostato low
#  GPIO == > piedino N
#  13        33
#  19        35
#  16        36
#  26        37
#  20        38
   GPIO.setup(13, GPIO.OUT)
   GPIO.setup(19, GPIO.OUT)
   GPIO.setup(16, GPIO.OUT)
   GPIO.setup(26, GPIO.OUT)
   GPIO.setup(20, GPIO.OUT)
# Set relay pins come gestione di
# stato high per temperatura da termostato low
#  GPIO == > piedino N
#  11        23
#  08        24
#  07        26
   GPIO.setup(11, GPIO.OUT)
   GPIO.setup(8, GPIO.OUT)
   GPIO.setup(7, GPIO.OUT)

# Nella inizializzazione porto tutto a HIGH
# tutti i relay "spenti" marcia off termostati off
# verificare con http://raspberry http server:8000/app/gpio-header
# oppure http://localhost:8000/app/gpio-header

   GPIO.output(17, GPIO.HIGH)
   GPIO.output(18, GPIO.HIGH)
   GPIO.output(27, GPIO.HIGH)
   GPIO.output(22, GPIO.HIGH)
   GPIO.output(23, GPIO.HIGH)

   GPIO.output(13, GPIO.HIGH)
   GPIO.output(19, GPIO.HIGH)
   GPIO.output(16, GPIO.HIGH)
   GPIO.output(26, GPIO.HIGH)
   GPIO.output(20, GPIO.HIGH)

   GPIO.output(11, GPIO.HIGH)
   GPIO.output(8, GPIO.HIGH)
   GPIO.output(7, GPIO.HIGH)
#end startGpio


def mediaTemp():
   cur_last15 = db.cursor()
   select = "SELECT tempc from Termostato.t" + str(rel) + "_sensor ORDER BY num DESC LIMIT 15;"
   try:
      cur_last15.execute(select)
   except IOError:
      print "Error: can\'t read DB or read data"
      msg = "Error: can\'t read DB or read data"
      sendMail (msg, 0)

   else:
      sum = 0
      for row in cur_last15.fetchall():
         sum = sum + row[0]
      print 'media valori:',sum/15
   media[rel] = sum/15


def impostazioneOraria():
#     uso tabella weekday_t[rel]
   cur_tempImp = db.cursor()
   select1 = "SELECT H" + ora +" from Termostato.weekday_t" + str(rel) + " where day = '" + weekDay +"';"
#      print select1
   try:
      cur_tempImp.execute(select1)
   except IOError:
      print "Error: can\'t read DB or read data"
      msg = "Error: can\'t read DB or read data"
      sendMail (msg, 0)
   else:
      for row in cur_tempImp.fetchall():
         impOraria[rel] = row[0]


def impostazioneTemperatura():
#     uso tabella weekday_t[rel]
   cur_tterm = db.cursor()
   select2 = "SELECT term_t" + str(rel) + " from Termostato.cond_t" +str(rel) +" where num = '" + str(impOraria[rel]) + "';"
   try:
      cur_tterm.execute(select2)
   except IOError:
      print "Error: can\'t read DB or read data"
   else:
      for row in cur_tterm.fetchall():
         tempImpostata[rel] = row[0]
         tempImp1[rel] = tempImpostata[rel]-.5
#  print "temperature: ",tempImpostata[rel] , "  " , tempImp1[rel]






startGpio()
while 1:
   gpio_relay=[17,18,22,23,27]
   gpio_statu=[13,16,19,20,26]
   gpio_calda=[7,8,11]
   range1=[0,1,2,3,4]
   range2=[0,1,2]
#
   onoffCalVal=[0,0,0,0,0,0]
   onoffCalVal_OLD=[0,0,0,0,0,0]
   media=[0,0,0,0,0,0]
   impOraria=[0,0,0,0,0,0]
   tempImpostata=[0,0,0,0,0,0]
   tempImp1=[0,0,0,0,0,0]

#
#  leggo i dati da mysql e dal s.o.
#
   weekDay = time.strftime("%A", time.localtime())
   ora = time.strftime("%H", time.localtime())
   min = time.strftime("%M", time.localtime())
   print 'giorno==> ', weekDay
   print 'orario==> ', ora,':',min
   if min > 30:
      ora = ora + "_5"
      print 'min <30 ',ora
   else:
      print 'min >30 ',ora
   print ""
   print ""

#    dati per login su database
   db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                        user="Mysql User",         # your username
                        passwd="Mysql password",  # your password
                        db="Termostato")        # name of the data base

#  inserisco ciclo for per termostati[0-4]
   range1=[0,1,2,3,4]
   range2=[0,1,2]
   for rel in range1:
#      print 'la gpio_relay: ', gpio_relay[rel]
      mediaTemp()

      print 'leggo impostazione oraria per termostato ', rel
      impostazioneOraria()

      print 'leggo impostazione temperatura per termostato ', rel
      impostazioneTemperatura()

      print ""
      print ""
   print "Fine ciclo lettura dati termostato"
   print " Media temperature ", media
#  print " Impostazione Oraria ", impOraria
   print " Impostazione Temperarature ", tempImpostata
   print ""
   sleep (2)

#
#
# Le grandi decisioni partono da qua!!!!
      # Temperatura impostata maggiore di media  ----ACCENSIONE NECESSARIA----
   for rel in range1:
      if rel == 0:
         print "termostato piano terra"
         file_read = "/sys/class/gpio/gpio17/value"
         file_stat = "/sys/class/gpio/gpio13/value"
      elif rel == 1:
         print "termostato padronale"
         file_read = "/sys/class/gpio/gpio18/value"
         file_stat = "/sys/class/gpio/gpio16/value"
      elif rel == 2:
         print "termostato ospiti"
         file_read = "/sys/class/gpio/gpio22/value"
         file_stat = "/sys/class/gpio/gpio19/value"
      elif rel == 3:
         print "termostato garage"
         file_read = "/sys/class/gpio/gpio23/value"
         file_stat = "/sys/class/gpio/gpio20/value"
      elif rel == 4:
         print "termostato esterno"
         file_read = "/sys/class/gpio/gpio27/value"
         file_stat = "/sys/class/gpio/gpio26/value"


      if tempImp1[rel] > media[rel]: 
         print "# temperatura impostata maggiore di media registrata"
         print tempImp1[rel]," maggiore di ", media[rel]
#         print ""
#         print "file da leggere: ", file_read
         onoff = open(file_read, "r")
         ono = onoff.readline()
         # print ono
         # print ono.strip( '\n' )
         onoffReleValv = ono.strip( '\n' )
         onoffReleValv = onoffReleValv.strip ( )
#         print 'Stato GPIO:-',onoffReleValv,'--'
# se valvola corrispondente off (stato 1) porto ad on (stato 0)
         if onoffReleValv == '1' :
            print "valvola da aprire"
            GPIO.setup(gpio_relay[rel], GPIO.OUT)
            GPIO.setup(gpio_statu[rel], GPIO.OUT)
            GPIO.output(gpio_relay[rel], GPIO.LOW)
            GPIO.output(gpio_statu[rel], GPIO.LOW)
            onoffCalVal[rel]=1

            msg = "Richiesta apertura valvola GPIO" + str(gpio_relay[rel])
#            sendMail (msg, 1)
         else:
            print "valvola gia' aperta"
         onoff.close()
 
# verifico stato gpio relay caldaia
         for i in range2:
            file_read_caldaia = "/sys/class/gpio/gpio" + str(gpio_calda[i]) +"/value"
#            print "file da leggere: ", file_read_caldaia
            onoffCalda = open(file_read_caldaia, "r")
            onoCal = onoffCalda.readline()
            onoffCalVal[i] = onoCal.strip( '\n' )
#            print "stato relay", i, ": ",onoffCalVal[i]
            onoffCalda.close()
         print ""
         print ""
         
#        sleep (1)
         


      else:   # temperatura impostata minore di media registata
         # Temperatura impostata minore di media  ----SPEGNIMENTO NECESSARIO----
         print "# temperatura impostata minore di media registata"
         print tempImp1[rel]," minore di ", media[rel]
#        --------------------
         onoff = open(file_read, "r")
         ono = onoff.readline()
         # print ono
         # print ono.strip( '\n' )
         onoffReleValv = ono.strip( '\n' )
         onoffReleValv = onoffReleValv.strip ( )
#         print 'Stato GPIO:-',onoffReleValv,'--'
# se valvola corrispondente on (stato 0) porto ad off (stato 1)
         if onoffReleValv == '0' :
            print "valvola da chiudere"
            GPIO.setup(gpio_relay[rel], GPIO.OUT)
            GPIO.setup(gpio_statu[rel], GPIO.OUT)
            GPIO.output(gpio_relay[rel], GPIO.HIGH)
            GPIO.output(gpio_statu[rel], GPIO.HIGH)
            onoffCalVal[rel]=0

            msg = "Richiesta chiusura valvola GPIO" + str(gpio_relay[rel])
#            sendMail (msg, 2)
         else:
            print "valvola gia' chiusa"
         onoff.close()
#        --------------------
         print ""
         print ""

   if max(onoffCalVal) == '1':
      print "Accesione della caldaia"
      print "max tupla:", max(onoffCalVal)
      GPIO.setup(gpio_calda[0], GPIO.OUT)
      GPIO.output(gpio_calda[0], GPIO.LOW)

      msg = "Richiesta accensione caldaia GPIO" + str(gpio_calda[0])
#      sendMail (msg, 3)
   elif max(onoffCalVal) == '0':
      print "Spegnimento della caldaia"
      print "max tupla:", max(onoffCalVal)
      GPIO.setup(gpio_calda[1], GPIO.OUT)
      GPIO.output(gpio_calda[1], GPIO.HIGH)

      msg = "Richiesto spegnimento caldaia GPIO" + str(gpio_calda[0])
#      sendMail (msg, 3)

       
   sleep (25)
#  fine del ciclo for
#fine del ciclo while
