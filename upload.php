<?php
include 'db_config.php'; 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $link = $conn->real_escape_string($_POST["link"]);
    $image = $conn->real_escape_string($_POST["image"]);
    $title1 = $conn->real_escape_string($_POST["title1"]);
    $title2 = $conn->real_escape_string($_POST["title2"]);
    $page = $conn->real_escape_string($_POST["page"]);
    $table = $conn->real_escape_string($_POST["table"]);

    // Prepare the SQL query
    $sql = "INSERT INTO $table (link, image, title, page) VALUES ('$link','$image','$title1<br>$title2','$page')";

    // Execute the query
    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
