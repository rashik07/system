<?php

include 'core.php';
$major = $_POST['major'];
$semester = $_POST['semester'];
$year_from = $_POST['year_from'];
$year_to = $_POST['year_to'];

getStudents($major,$semester,$year_from,$year_to);


?>