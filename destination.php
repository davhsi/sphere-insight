<?php
include 'db_config.php'; 
// Securely get the table name from the query string
$tableName = $conn->real_escape_string($_GET['table']);

// Fetch messages from the database
$sql = "SELECT * FROM " . $tableName;
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $link = $row['link'];
        $image = $row['image'];
        $title = $row['title'];
        $page = $row['page'];
        
        // Output the HTML content
        echo "
        <div class='image'>
            <a href='" . htmlspecialchars($link) . "'><img src='images/" . htmlspecialchars($image) . "'></a>
            <p>" . htmlspecialchars($title) . "</p>
            <a href='readmore/" . htmlspecialchars($page) . "'>READ MORE</a>
        </div>";
    }
} else {
    echo "<p>No videos found</p>";
}

// Close the connection
$conn->close();
?>
