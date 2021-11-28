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
<link rel="stylesheet" href="http://localhost/COMP780_Project/contractors/create.css?v=<?php echo time(); ?>">
<meta charset = "UTF-8">
<meta http-equiv ="X-UA-Compatible" content="IE=edge">
<meta name = "viewport" content = "width=device-width, initial-scale = 1.0">
</head>
<body>
<a href="http://localhost/COMP780_Project/pns.php">Go Back</a>
<h1>Contractors</h1>


<h4>Creating new entry for Contractor </h4>
<form action="" method="POST">
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
    $Name = $_POST["Name"];
    $phone_number = $_POST["phone_number"];
    $email = $_POST["email"];
    $department = $_POST["department"];
    $job_title = $_POST["job_title"];
    $security_clearance = $_POST["security_clearance"];

    $sql = "INSERT INTO Contractors (Name, phone_number, email, department, job_title, security_clearance) VALUES ('{$Name}','{$phone_number}', 
    '{$email}','{$department}', '{$job_title}', '{$security_clearance}')";
    if ($conn->query($sql) === TRUE) {
        echo "New contractor has been added";
    }   else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} 
?>


