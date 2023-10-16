<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sphere_insight";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$tableName = $_GET['table'];
// Fetch messages from the database
$sql = "SELECT * FROM " . $tableName ;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $link = $row['link'];
        $image = $row['image'];
        $title = $row['title'];
        $page = $row['page'];
        
        
        echo "
        <div class='image'>
            <a href='" . $link . "'><img src='images/" . $image . "'></a>
            <p>" . $title . "</p>
            <a href='readmore/" . $page . "'>READ MORE</a></div>";

}
} else {
    echo "<p>No videos found</p>";
}

$conn->close();
?>
