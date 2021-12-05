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


<!-- Website Interface -->
<!DOCTYPE HTML>
<HEAD>
<link rel="stylesheet" href="http://localhost/COMP780_Project/pns.css?v=<?php echo time(); ?>">
<meta charset = "UTF-8">
<meta http-equiv ="X-UA-Compatible" content="IE=edge">
<meta name = "viewport" content = "width=device-width, initial-scale = 1.0">
</head>
<body>
    <h1> Portsmouth Naval Shipyard Database </h1>
    <h2> Interface for Editing the PNS Database </h2>
    <br>
<div class = "list">
<h3> Choose the Action For Contractors: <h3>
    <div>
        <list>

</div>
    <ul>
        <li> <a href="http://localhost/COMP780_Project/contractors/create.php/">Create</a></li>
        <li> <a href="http://localhost/COMP780_Project/contractors/delete.php/">Delete</a></li>
        <li> <a href="http://localhost/COMP780_Project/contractors/edit.php/">Edit</a></li>
        <li> <a href="http://localhost/COMP780_Project/contractors/view.php/">View Entire Database</a></li>
        </div>
</list>

<div class = "list">
    <div>
        <list>
    <h3> Choose the Action For Military Personnel: <h3>
    <ul>
        <li> <a href="http://localhost/COMP780_Project/military/create.php/">Create</a></li>
        <li> <a href="http://localhost/COMP780_Project/military/delete.php/">Delete</a></li>
        <li> <a href="http://localhost/COMP780_Project/military/edit.php/">Edit</a></li>
        <li> <a href="http://localhost/COMP780_Project/military/view.php/">View Entire Database</a></li>
        <h4> View ETS dates for Military Personnel: </h4>
        <li> <a href="http://localhost/COMP780_Project/military/view_full.php/">View All ETS Dates</a></li>
        </div>
</list>


