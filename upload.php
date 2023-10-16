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
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $link = $_POST["link"];
    $image = $_POST["image"];
    $title1 = $_POST["title1"];
    $title2 =$_POST["title2"];
    $page = $_POST["page"];
    $table = $_POST["table"];

    $sql = "INSERT INTO $table (link, image, title, page) VALUES ('$link','$image','$title1<br>$title2','$page')";

    
$result = $conn->query($sql);
    $conn->close();
}
?>

