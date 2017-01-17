<?php
//eseguo la connessione al database sul server locale
//inserendo nome utente e password
$link = mysql_connect('localhost', 'termuser', 'L4M0rr4');
 
//gestione degli errori
if (!$link) {die('Impossibile connettersi: ' . mysql_error());}
 
//seleziono il databse di nome arduino
mysql_select_db("Termostato") or die( "Impossibile selezionare il database.");
 
//creo una stringa sql di inserimento con i valori
//recuperati dall'url
$sql = "SELECT substring(recorded,1,16), 
tempc from Termostato.t0_sensor ORDER BY num DESC LIMIT 1;";
 
//eseguo la query
$retval = mysql_query( $sql, $link );
 
//gestione degli errori
if(! $retval ){die('Impossibile eseguire la query: ' . mysql_error());}

if (mysql_num_rows($retval) > 0) {
    // scrivo l'output formattato
    while($row = mysql_fetch_row($retval)) {
        echo '<'.$row[0].' '.$row[1].'>' ;
//      echo '<'.$row[1].'>' ;
    }
}
else {
    // no
    // print status message
    echo "No rows found!";
}
//chiudo la connessione al db
mysql_close($link);
?>
