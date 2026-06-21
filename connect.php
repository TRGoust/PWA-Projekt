<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "projekt";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Greška: " . mysqli_connect_error());
}

mysqli_set_charset($conn, "utf8");
?>