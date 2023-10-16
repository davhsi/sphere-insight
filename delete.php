<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sphere_insight";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    $image = $_POST["image"];
    $table = $_POST["table"];

    $sql = "DELETE FROM $table WHERE image = '$image'";
    
$result = $conn->query($sql);
    $conn->close();
    }

?>

