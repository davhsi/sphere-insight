<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sphere_insight";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["emailid"];
    $password = $_POST["password"];
    
    $sql = "SELECT * FROM admin WHERE email = '$email' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $name = $result->fetch_assoc()["name"];
        header("Location: http://localhost/vlog/upload.html?username=$name");
        exit;
    } else { 
        header("Location: login.html");
    }

    $conn->close();
}
?>

