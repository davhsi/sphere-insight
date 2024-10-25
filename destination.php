<?php
include 'db_config.php';

// Securely get the table name from the query string
$tableName = isset($_GET['table']) ? $conn->real_escape_string($_GET['table']) : '';

if (!$tableName) {
    echo "<p>No table specified</p>";
    exit;
}

// Debugging output
echo "<p>Fetching data from table: $tableName</p>";

// Prepare the SQL statement
$sql = "SELECT * FROM " . $tableName;

$result = $conn->query($sql);

if ($result === false) {
    // If there was an error with the query
    echo "<p>Error executing query: " . htmlspecialchars($conn->error) . "</p>";
    exit;
}

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $link = $row['link'];
        $image = $row['image'];
        $title = $row['title'];
        $page = $row['page'];
        
        // Output the HTML content
        echo "
        <div class='image'>
            <a href='" . htmlspecialchars($link) . "'><img src='../static/images/" . htmlspecialchars($image) . "'></a>
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
