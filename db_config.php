<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require 'vendor/autoload.php'; // Include the Composer autoload file

// Load the .env file
try {
    $dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
    $dotenv->load();
} catch (Throwable $e) {
    die("Error loading .env file: " . $e->getMessage());
}

// Use $_SERVER for database credentials
$servername = $_SERVER['DB_HOST'];  
$username = $_SERVER['DB_USER'];
$password = $_SERVER['DB_PASSWORD'];
$dbname = $_SERVER['DB_NAME'];
$port = $_SERVER['DB_PORT'];

// Enable error reporting for mysqli
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

// Create connection
try {
    $conn = new mysqli($servername, $username, $password, $dbname, $port);
    // echo "Connected successfully"; // Connection success message
} catch (mysqli_sql_exception $e) {
    die("Connection failed: " . $e->getMessage()); // Detailed error message
}
