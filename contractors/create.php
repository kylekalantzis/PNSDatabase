<?php
// Making connection to XAMP
$servername = "127.0.0.1";
$username = "root";
$password = "Kyle1996";
$database = "PNSDatabase";

$connection = new mysqli($servername, $username, $password, $database);
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


<div class ="form_create">
    <form_create>
    <h4>Creating new entry for Contractor </h4>
<form action = "" method="POST">
    Name: <input type="text" name="Name"><br>
    Phone Number: <input type="text" name="Name">(xxxxxxxxxx format)<br>
    Email: <input type="text" name="email"><br>
    Department: <input type="text" name="department"><br>
    Job Title: <input type="text" name="job_title"><br>
    Security Clearance <input type="text" name="security_clearance"><br>
    <input type="submit">

 
<?php
// Inputs Values into Contractor table
if ($_SERVER["REQUEST METHOD"] == "POST") {
    $Name = $_POST["Name"];
    $phone_number = $_POST["phone_number"];
    $email = $_POST["email"];
    $department = $_POST["department"];
    $job_title = $_POST["job_title"];
    $security_clearance = $_POST["security_clearance"];

    $sql = "INSERT INTO Contractors (Name, phone_number, email, department, job_title, security_clearance)
    VALUES ('{$Name}','{$phone_number}', '{$email}','{$department}', '{$job_title}', '{$security_clearance}')";
    if ($connection->query($sql) == TRUE) {
        echo "New Contractor added to PNS Database";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} ?>
</form>
</form_create>
</body>

