<?php
// Making connection to XAMP
$servername = "127.0.0.1";
$username = "root";
$password = "Kyle1996";
$database = "PNSDatabase";

$conn = new mysqli($servername, $username, $password, $database);
?>
<!DOCTYPE HTML>
<HEAD>
<meta charset = "UTF-8">
<meta http-equiv ="X-UA-Compatible" content="IE=edge">
<meta name = "viewport" content = "width=device-width, initial-scale = 1.0">
</head>
<body>
<a href="http://localhost/COMP780_Project/pns.php">Go Back</a>
<h3> Please Enter Badge Number to delete</h3>
<h3> *WARNING ALL INFORMATION WILL BE DELETED ASSOCIATED WITH BADGE NUMBER*</h3>

<form action="" method="POST">
    Military Badge: <input type="number" name="mil_id"><br>
    <input type="submit">
</form>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    $mil_id = $_POST["mil_id"];
    $sql = "DELETE FROM Military WHERE mil_id={$mil_id}";
    if ($conn->query($sql) === TRUE) {
        echo "{$conn->affected_rows} deleted.";
      } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
      }
}
?>
</div>
</body>
</html>