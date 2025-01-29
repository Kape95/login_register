<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "formulaire";

// Connexion à MySQL
$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Erreur de connexion : " . $conn->connect_error);
}
?>