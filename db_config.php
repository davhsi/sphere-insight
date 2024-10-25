<?php
// db_config.php

// Use environment variables for database credentials
$servername = getenv('DB_HOST');  
$username = getenv('DB_USER');
$password = getenv('DB_PASSWORD');
$dbname = getenv('DB_NAME');
$port = 3306;  // MySQL port

// Enable error reporting for mysqli
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

// Create connection
try {
    $conn = new mysqli($servername, $username, $password, $dbname, $port);
    echo "Connected successfully"; // Connection success message
} catch (mysqli_sql_exception $e) {
    die("Connection failed: " . $e->getMessage()); // Detailed error message
}
?>
