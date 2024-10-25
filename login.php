<?php
include 'db_config.php'; // This includes the db_config.php file, creating the $conn object

// Get the base URL from the environment variable
$baseUrl = getenv('BASE_URL');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize input to prevent SQL injection
    $email = $conn->real_escape_string($_POST["emailid"]);
    $password = $conn->real_escape_string($_POST["password"]);

    // Prepare and execute the SQL query
    $sql = "SELECT * FROM admin WHERE email = '$email' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $name = $result->fetch_assoc()["name"];
        // Redirect to the upload page with the username in the query string
        header("Location: " . $baseUrl . "/vlog/upload.html?username=" . urlencode($name));
        exit;
    } else {
        // If the credentials are wrong, redirect back to the login page
        header("Location: " . $baseUrl . "/login.html");
        exit;
    }

    // Close the connection
    $conn->close();
}
?>
