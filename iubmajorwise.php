<?php 
header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rashik";

$conn = mysqli_connect($servername, $username, $password, $dbname);

//$sql = "SELECT playerId,score FROM ctable2";
$sql = "SELECT * FROM year";
//$sql2 = "SELECT university,semester FROM admissioninfo";




$result = $conn -> query($sql) or die();
//$result2 = $conn -> query($sql2) or die();


$data = array();
//$data2 = array();

foreach ($result as $row) {
	$data[] = $row;
}

//foreach ($result2 as $row) {
//	$data2[] = $row;
//}

$result->close();
$conn->close();



echo json_encode($data);
//echo json_encode($data2);

 ?>
