<?php
//controllo se sono presenti i parametri valore e localita
if(isset($_GET['tempC']))
{
//Recupero il valore del parametro "temperatura c°"
$tempc = $_GET['tempC'];
 
//eseguo la connessione al database sul server locale
//inserendo nome utente e password
$link = mysql_connect('localhost', 'user', 'password');
 
//gestione degli errori
if (!$link) {die('Impossibile connettersi: ' . mysql_error());}
 
//seleziono il databse di nome arduino
mysql_select_db("Termostato") or die( "Impossibile selezionare il database.");
 
//creo una stringa sql di inserimento con i valori
//recuperati dall'url
$sql = "INSERT INTO `Termostato`.`t4_sensor`
(  `tempc` )
VALUES
( '" .$tempc."' );";
 
//eseguo la query
$retval = mysql_query( $sql, $link );
 
//gestione degli errori
if(! $retval ){die('Impossibile eseguire la query: ' . mysql_error());}
 
//chiudo la connessione al db
mysql_close($link);
}
?>
