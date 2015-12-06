<?php
$user = 'root';
$pass = '';
try {
    $dbh = new PDO('mysql:host=localhost;dbname=oprpgv3', $user, $pass);   
    
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}
?>