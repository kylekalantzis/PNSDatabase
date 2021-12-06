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
echo "Connected to the PNS Database";  
?>

<!DOCTYPE HTML>
<HEAD>
<meta charset = "UTF-8">
<meta http-equiv ="X-UA-Compatible" content="IE=edge">
<meta name = "viewport" content = "width=device-width, initial-scale = 1.0">
</head>
<body>
<a href="http://localhost/COMP780_Project/pns.php">Go Back</a>

<h4>Edit Entry for Contractor </h4>
<h4>All Fields must be filled </h4>
<h4> Use database below to grab relevant information </h4>
<form action="" method="POST">
        ID: <input type="text" name="id"><br>
        Name: <input type="text" name="Name"><br>
        Phone Number: <input type="text" name="phone_number">(xxxxxxxxxx format)<br>
        Email: <input type="text" name="email"><br>
        Department: <input type="text" name="department"><br>
        Job Title: <input type="text" name="job_title"><br>
        Security Clearance <input type="text" name="security_clearance"><br>
        <input type="submit">
</form>
</body>
</html>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST["id"];
    $Name = $_POST["Name"];
    $phone_number = $_POST["phone_number"];
    $email = $_POST["email"];
    $department = $_POST["department"];
    $job_title = $_POST["job_title"];
    $security_clearance = $_POST["security_clearance"];

    $sql = "UPDATE Contractors SET Name='{$Name}', phone_number='{$phone_number}', email='{$email}' 
        department='{$department}', job_title='{$job_title}', security_clearance='{$security_clearance}";
            if ($conn->query($sql) === TRUE) {
                echo "Contractor information has been updated";
              } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
              }
        }
        $sql = "SELECT id, Name, phone_number, email, department, job_title, security_clearance FROM Contractors";
        $result = $conn->query($sql);
        if ($result->num_rows > 0){
            while ($row = $result->fetch_assoc()) {
                echo "<br> ID: " . $row["id"]  . " - Name: " . $row["Name"] . "<br> Phone Number: " . $row["phone_number"] .
                "<br> Email: " . $row["email"] . "<br> Department: " . $row["department"] . "<br> Job Title: " . $row["job_title"] . 
                "<br> Security Clearance: " . $row["security_clearance"] . "<br>";
            }
        } else {
            echo "Database is Empty";
        }
        // $conn->close();
        ?>
</div>
      </body>
      </html>