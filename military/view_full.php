<?php
// Making connection to XAMP
$servername = "127.0.0.1";
$username = "root";
$password = "Kyle1996";
$database = "PNSDatabase";

$conn = new mysqli($servername, $username, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";  


?>
<!DOCTYPE HTML>
<HEAD>
<meta charset = "UTF-8">
<meta http-equiv ="X-UA-Compatible" content="IE=edge">
<meta name = "viewport" content = "width=device-width, initial-scale = 1.0">
</head>
<body>
<a href="http://localhost/COMP780_Project/pns.php">Go Back</a>

<?php
$sql = "SELECT mil_id, date_of_enlistment, date_of_expiration, term FROM ETS";
$result = $conn->query($sql);
if ($result->num_rows > 0){
    while ($row = $result->fetch_assoc()) {
        echo "<br> Mil ID: " . $row["mil_id"]  . "<br> - Date of Enlistment: " . $row["date_of_enlistment"] . 
        "<br> Date of Expiration: " . $row["date_of_expiration"]. "<br> Term #: " . $row["term"] . "<br>";
    }
} else {
    echo "Database is Empty";
}
// $conn->close();
?>
</body>
</html>