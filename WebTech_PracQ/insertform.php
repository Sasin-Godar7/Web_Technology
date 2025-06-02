<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "studentdb"; // database name

// Connect to database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get data from form
$name = $_POST['name'];
$age = $_POST['age'];

// Insert query
$sql = "INSERT INTO students (name, age) VALUES ('$name', '$age')";

if ($conn->query($sql) === TRUE) {
    echo "Record inserted successfully!";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
