<?php

include 'core.php';

$major_id = $_POST['major'];
$year = $_POST['year'];
$semester = $_POST['semester'];
$student = $_POST['student'];


if(insert($major_id, $year, $semester, $student)){
    echo 1;
}else{
    echo 0;
}



?>