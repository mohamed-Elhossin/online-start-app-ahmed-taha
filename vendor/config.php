<?php

$host = "localhost";
$user = "root";
$password = "";
$dbName = "web";

try {
    $conn = mysqli_connect($host, $user, $password, $dbName);
} catch (Exception $e) {
    echo $e->getMessage();
}
