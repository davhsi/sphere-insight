<?php
// Include the database configuration
include 'db_config.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $image = $_POST["image"];
    $table = $_POST["table"];

    // Prepare the SQL query
    $sql = "DELETE FROM " . $conn->real_escape_string($table) . " WHERE image = '" . $conn->real_escape_string($image) . "'";
    
    $result = $conn->query($sql);
    $conn->close();
}
?>
