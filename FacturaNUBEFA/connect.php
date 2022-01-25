<?php
$host = "localhost";
$user="root";
$pass="";
$db = "factura";

$con = new mysqli($host, $user, $pass, $db);

if($con->connect_errno){
    die("Ha ocurrido un error");
}
?>