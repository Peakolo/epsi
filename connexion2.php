<?php

try
{
    $con = new PDO('mysql:host=localhost;dbname=ticket;charset=utf8','root','Olympicode');

} catch (Exception $e) {
    die('Erreur :'. $e->getMessage());
}
finally{

    }
